@interface CUPairingManager
+ (id)copySystemPairingIdentifierWithFlags:(unsigned int)a3 error:(id *)a4;
- (CUPairingManager)init;
- (int)_ensureXPCStarted;
- (void)_deletePairingIdentityWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)_findPairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)_getPairedPeersWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)_getPairingIdentityWithOptions:(unint64_t)a3 tryCount:(unsigned int)a4 completion:(id)a5;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_removePairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)_savePairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)_showWithCompletion:(id)a3;
- (void)_startMonitoringWithOptions:(unint64_t)a3;
- (void)dealloc;
- (void)deletePairingIdentityWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)findPairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)getPairedPeersWithGroupID:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)getPairedPeersWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)getPairingIdentityWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)invalidate;
- (void)pairedPeerAdded:(id)a3 options:(unint64_t)a4;
- (void)pairedPeerChanged:(id)a3 options:(unint64_t)a4;
- (void)pairedPeerRemoved:(id)a3 options:(unint64_t)a4;
- (void)pairingIdentityCreated:(id)a3 options:(unint64_t)a4;
- (void)pairingIdentityDeletedWithOptions:(unint64_t)a3;
- (void)removePairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)savePairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)showWithCompletion:(id)a3;
- (void)startMonitoringWithOptions:(unint64_t)a3;
- (void)updatePairedPeersWithGroupID:(id)a3 groupInfo:(id)a4 options:(unint64_t)a5 completion:(id)a6;
@end

@implementation CUPairingManager

- (CUPairingManager)init
{
  v4.receiver = self;
  v4.super_class = CUPairingManager;
  v2 = [(CUPairingManager *)&v4 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
  }

  return v2;
}

- (void)dealloc
{
  if (self->_xpcCnx)
  {
    FatalErrorF("XPC connection still active during dealloc", a2, v2, v3, v4, v5, v6, v7, v16.receiver);
  }

  identityCreatedHandler = self->_identityCreatedHandler;
  self->_identityCreatedHandler = 0;

  identityDeletedHandler = self->_identityDeletedHandler;
  self->_identityDeletedHandler = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  pairedPeerAddedHandler = self->_pairedPeerAddedHandler;
  self->_pairedPeerAddedHandler = 0;

  pairedPeerRemovedHandler = self->_pairedPeerRemovedHandler;
  self->_pairedPeerRemovedHandler = 0;

  pairedPeerChangedHandler = self->_pairedPeerChangedHandler;
  self->_pairedPeerChangedHandler = 0;

  v16.receiver = self;
  v16.super_class = CUPairingManager;
  [(CUPairingManager *)&v16 dealloc];
}

- (void)pairedPeerChanged:(id)a3 options:(unint64_t)a4
{
  v13 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
  {
    v6 = [v13 identifier];
    LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager pairedPeerChanged:options:]", 0x1Eu, "PairedPeerChanged %@, %#{flags}\n", v7, v8, v9, v10, v6);
  }

  pairedPeerChangedHandler = self->_pairedPeerChangedHandler;
  v12 = v13;
  if (pairedPeerChangedHandler)
  {
    pairedPeerChangedHandler = pairedPeerChangedHandler[2](pairedPeerChangedHandler, v13, a4);
    v12 = v13;
  }

  MEMORY[0x1EEE66BB8](pairedPeerChangedHandler, v12);
}

- (void)pairedPeerRemoved:(id)a3 options:(unint64_t)a4
{
  v13 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
  {
    v6 = [v13 identifier];
    LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager pairedPeerRemoved:options:]", 0x1Eu, "PairedPeerRemoved %@, %#{flags}\n", v7, v8, v9, v10, v6);
  }

  pairedPeerRemovedHandler = self->_pairedPeerRemovedHandler;
  v12 = v13;
  if (pairedPeerRemovedHandler)
  {
    pairedPeerRemovedHandler = pairedPeerRemovedHandler[2](pairedPeerRemovedHandler, v13, a4);
    v12 = v13;
  }

  MEMORY[0x1EEE66BB8](pairedPeerRemovedHandler, v12);
}

- (void)pairedPeerAdded:(id)a3 options:(unint64_t)a4
{
  v13 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
  {
    v6 = [v13 identifier];
    LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager pairedPeerAdded:options:]", 0x1Eu, "PairedPeerAdded %@, %#{flags}\n", v7, v8, v9, v10, v6);
  }

  pairedPeerAddedHandler = self->_pairedPeerAddedHandler;
  v12 = v13;
  if (pairedPeerAddedHandler)
  {
    pairedPeerAddedHandler = pairedPeerAddedHandler[2](pairedPeerAddedHandler, v13, a4);
    v12 = v13;
  }

  MEMORY[0x1EEE66BB8](pairedPeerAddedHandler, v12);
}

- (void)pairingIdentityDeletedWithOptions:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager pairingIdentityDeletedWithOptions:]", 0x1Eu, "PairingIdentityDeleted %#{flags}\n", v5, v6, v7, v8, a3);
  }

  identityDeletedHandler = self->_identityDeletedHandler;
  if (identityDeletedHandler)
  {
    v10 = *(identityDeletedHandler + 2);

    v10();
  }
}

- (void)pairingIdentityCreated:(id)a3 options:(unint64_t)a4
{
  v13 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
  {
    v6 = [v13 identifier];
    LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager pairingIdentityCreated:options:]", 0x1Eu, "PairingIdentityCreated %@, %#{flags}\n", v7, v8, v9, v10, v6);
  }

  identityCreatedHandler = self->_identityCreatedHandler;
  v12 = v13;
  if (identityCreatedHandler)
  {
    identityCreatedHandler = identityCreatedHandler[2](identityCreatedHandler, v13, a4);
    v12 = v13;
  }

  MEMORY[0x1EEE66BB8](identityCreatedHandler, v12);
}

- (void)_startMonitoringWithOptions:(unint64_t)a3
{
  if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _startMonitoringWithOptions:]", 0x1Eu, "StartMonitoring %#{flags}\n", v3, v4, v5, v6, a3);
  }

  if ([(CUPairingManager *)self _ensureXPCStarted])
  {
    if (gLogCategory_CUPairingManager <= 60 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _startMonitoringWithOptions:]", 0x3Cu, "### StartMonitoring %#{flags} failed: %#m\n", v9, v10, v11, v12, a3);
    }
  }

  else
  {
    v13 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [v13 startMonitoringWithOptions:a3];

    self->_monitoring = 1;
    self->_monitorOptions = a3;
  }
}

- (void)startMonitoringWithOptions:(unint64_t)a3
{
  v5 = _os_activity_create(&dword_191EAF000, "CoreUtils/CUPairingManager/startMonitoringWithOptions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__CUPairingManager_startMonitoringWithOptions___block_invoke;
  v7[3] = &unk_1E73A4340;
  v7[4] = self;
  v7[5] = a3;
  dispatch_async(dispatchQueue, v7);
  os_activity_scope_leave(&state);
}

- (void)updatePairedPeersWithGroupID:(id)a3 groupInfo:(id)a4 options:(unint64_t)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a6;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __78__CUPairingManager_updatePairedPeersWithGroupID_groupInfo_options_completion___block_invoke;
  v14[3] = &unk_1E73A3988;
  v15 = v10;
  v16 = self;
  v17 = v11;
  v18 = a5;
  v12 = v10;
  v13 = v11;
  [(CUPairingManager *)self getPairedPeersWithGroupID:a3 options:a5 completion:v14];
}

void __78__CUPairingManager_updatePairedPeersWithGroupID_groupInfo_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v20 = v5;
  if (v6)
  {
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x3032000000;
    v32[3] = __Block_byref_object_copy__6094;
    v32[4] = __Block_byref_object_dispose__6095;
    v33 = 0;
    v7 = dispatch_group_create();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = v5;
    v8 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v8)
    {
      v9 = *v29;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v28 + 1) + 8 * i);
          v12 = [v11 info];
          v13 = [v12 mutableCopy];
          v14 = v13;
          if (v13)
          {
            v15 = v13;
          }

          else
          {
            v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
          }

          v16 = v15;

          [v16 setObject:*(a1 + 32) forKeyedSubscript:@"groupInfo"];
          [v11 setInfo:v16];
          dispatch_group_enter(v7);
          v17 = *(a1 + 40);
          v18 = *(a1 + 56);
          v25[0] = MEMORY[0x1E69E9820];
          v25[1] = 3221225472;
          v25[2] = __78__CUPairingManager_updatePairedPeersWithGroupID_groupInfo_options_completion___block_invoke_80;
          v25[3] = &unk_1E73A4C80;
          v27 = v32;
          v26 = v7;
          [v17 savePairedPeer:v11 options:v18 completion:v25];
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v8);
    }

    v19 = *(*(a1 + 40) + 40);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __78__CUPairingManager_updatePairedPeersWithGroupID_groupInfo_options_completion___block_invoke_2;
    block[3] = &unk_1E73A3960;
    v23 = *(a1 + 48);
    v24 = v32;
    dispatch_group_notify(v7, v19, block);

    _Block_object_dispose(v32, 8);
    v6 = 0;
  }
}

void __78__CUPairingManager_updatePairedPeersWithGroupID_groupInfo_options_completion___block_invoke_80(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = *(*(a1 + 40) + 8);
  v6 = *(v4 + 40);
  v5 = (v4 + 40);
  if (!v6)
  {
    objc_storeStrong(v5, a2);
  }

  dispatch_group_leave(*(a1 + 32));
}

- (void)_showWithCompletion:(id)a3
{
  v30[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _showWithCompletion:]", 0x1Eu, "Show\n", v4, v5, v6, v7, v26);
  }

  v9 = [(CUPairingManager *)self _ensureXPCStarted];
  if (v9)
  {
    v18 = v9;
    if (gLogCategory_CUPairingManager <= 60 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _showWithCompletion:]", 0x3Cu, "### Show failed: %#m\n", v10, v11, v12, v13, v18);
    }

    v19 = MEMORY[0x1E696ABC0];
    v20 = *MEMORY[0x1E696A768];
    v21 = v18;
    v29 = *MEMORY[0x1E696A578];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v18, 0, 0)}];
    v17 = v22;
    v23 = @"?";
    if (v22)
    {
      v23 = v22;
    }

    v30[0] = v23;
    v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    v25 = [v19 errorWithDomain:v20 code:v21 userInfo:v24];
    v8[2](v8, 0, v25);
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __40__CUPairingManager__showWithCompletion___block_invoke;
    v27[3] = &unk_1E73A38E8;
    v15 = v8;
    v28 = v15;
    v16 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v27];
    [v16 showWithCompletion:v15];

    v17 = v28;
  }
}

- (void)showWithCompletion:(id)a3
{
  v4 = a3;
  v5 = _os_activity_create(&dword_191EAF000, "CoreUtils/CUPairingManager/showWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __39__CUPairingManager_showWithCompletion___block_invoke;
  v8[3] = &unk_1E73A49A0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

- (void)_removePairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v36[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
  {
    v10 = [v8 identifier];
    LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _removePairedPeer:options:completion:]", 0x1Eu, "RemovePairedPeer %@, %#{flags}\n", v11, v12, v13, v14, v10);
  }

  v15 = [(CUPairingManager *)self _ensureXPCStarted];
  if (v15)
  {
    v20 = v15;
    if (gLogCategory_CUPairingManager <= 60 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x3Cu)))
    {
      v21 = [v8 identifier];
      LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _removePairedPeer:options:completion:]", 0x3Cu, "### RemovePairedPeer %@, %#{flags} failed: %#m\n", v22, v23, v24, v25, v21);
    }

    v26 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A768];
    v28 = v20;
    v35 = *MEMORY[0x1E696A578];
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v20, 0, 0)}];
    v19 = v29;
    v30 = @"?";
    if (v29)
    {
      v30 = v29;
    }

    v36[0] = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v32 = [v26 errorWithDomain:v27 code:v28 userInfo:v31];
    v9[2](v9, v32);
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __57__CUPairingManager__removePairedPeer_options_completion___block_invoke;
    v33[3] = &unk_1E73A38E8;
    v17 = v9;
    v34 = v17;
    v18 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v33];
    [v18 removePairedPeer:v8 options:a4 completion:v17];

    v19 = v34;
  }
}

- (void)removePairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = _os_activity_create(&dword_191EAF000, "CoreUtils/CUPairingManager/removePairedPeer", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  dispatchQueue = self->_dispatchQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__CUPairingManager_removePairedPeer_options_completion___block_invoke;
  v14[3] = &unk_1E73A3938;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a4;
  v12 = v9;
  v13 = v8;
  dispatch_async(dispatchQueue, v14);

  os_activity_scope_leave(&state);
}

- (void)_savePairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v36[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
  {
    v10 = [v8 identifier];
    LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _savePairedPeer:options:completion:]", 0x1Eu, "SavePairedPeer %@, %#{flags}\n", v11, v12, v13, v14, v10);
  }

  v15 = [(CUPairingManager *)self _ensureXPCStarted];
  if (v15)
  {
    v20 = v15;
    if (gLogCategory_CUPairingManager <= 60 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x3Cu)))
    {
      v21 = [v8 identifier];
      LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _savePairedPeer:options:completion:]", 0x3Cu, "### SavePairedPeer %@, %#{flags} failed: %#m\n", v22, v23, v24, v25, v21);
    }

    v26 = MEMORY[0x1E696ABC0];
    v27 = *MEMORY[0x1E696A768];
    v28 = v20;
    v35 = *MEMORY[0x1E696A578];
    v29 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v20, 0, 0)}];
    v19 = v29;
    v30 = @"?";
    if (v29)
    {
      v30 = v29;
    }

    v36[0] = v30;
    v31 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
    v32 = [v26 errorWithDomain:v27 code:v28 userInfo:v31];
    v9[2](v9, v32);
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __55__CUPairingManager__savePairedPeer_options_completion___block_invoke;
    v33[3] = &unk_1E73A38E8;
    v17 = v9;
    v34 = v17;
    v18 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v33];
    [v18 savePairedPeer:v8 options:a4 completion:v17];

    v19 = v34;
  }
}

- (void)savePairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = _os_activity_create(&dword_191EAF000, "CoreUtils/CUPairingManager/savePairedPeer", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  dispatchQueue = self->_dispatchQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__CUPairingManager_savePairedPeer_options_completion___block_invoke;
  v14[3] = &unk_1E73A3938;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a4;
  v12 = v9;
  v13 = v8;
  dispatch_async(dispatchQueue, v14);

  os_activity_scope_leave(&state);
}

- (void)_findPairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v35[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
  {
    v10 = [v8 identifier];
    LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _findPairedPeer:options:completion:]", 0x1Eu, "FindPairedPeer %@, %#{flags}\n", v11, v12, v13, v14, v10);
  }

  v15 = [(CUPairingManager *)self _ensureXPCStarted];
  if (v15)
  {
    v24 = v15;
    if (gLogCategory_CUPairingManager <= 60 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _findPairedPeer:options:completion:]", 0x3Cu, "### FindPairedPeer %#{flags} failed: %#m\n", v16, v17, v18, v19, a4);
    }

    v25 = MEMORY[0x1E696ABC0];
    v26 = *MEMORY[0x1E696A768];
    v27 = v24;
    v34 = *MEMORY[0x1E696A578];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v24, 0, 0)}];
    v23 = v28;
    v29 = @"?";
    if (v28)
    {
      v29 = v28;
    }

    v35[0] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v31 = [v25 errorWithDomain:v26 code:v27 userInfo:v30];
    v9[2](v9, 0, v31);
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __55__CUPairingManager__findPairedPeer_options_completion___block_invoke;
    v32[3] = &unk_1E73A38E8;
    v21 = v9;
    v33 = v21;
    v22 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v32];
    [v22 findPairedPeer:v8 options:a4 completion:v21];

    v23 = v33;
  }
}

- (void)findPairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = _os_activity_create(&dword_191EAF000, "CoreUtils/CUPairingManager/findPairedPeer", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v10, &state);
  dispatchQueue = self->_dispatchQueue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __54__CUPairingManager_findPairedPeer_options_completion___block_invoke;
  v14[3] = &unk_1E73A3938;
  v14[4] = self;
  v15 = v8;
  v16 = v9;
  v17 = a4;
  v12 = v9;
  v13 = v8;
  dispatch_async(dispatchQueue, v14);

  os_activity_scope_leave(&state);
}

- (void)_getPairedPeersWithOptions:(unint64_t)a3 completion:(id)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _getPairedPeersWithOptions:completion:]", 0x1Eu, "GetPairedPeers %#{flags}\n", v6, v7, v8, v9, a3);
  }

  v11 = [(CUPairingManager *)self _ensureXPCStarted];
  if (v11)
  {
    v20 = v11;
    if (gLogCategory_CUPairingManager <= 60 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _getPairedPeersWithOptions:completion:]", 0x3Cu, "### GetPairedPeers %#{flags} failed: %#m\n", v12, v13, v14, v15, a3);
    }

    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A768];
    v23 = v20;
    v30 = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v20, 0, 0)}];
    v19 = v24;
    v25 = @"?";
    if (v24)
    {
      v25 = v24;
    }

    v31[0] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v27 = [v21 errorWithDomain:v22 code:v23 userInfo:v26];
    v10[2](v10, 0, v27);
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __58__CUPairingManager__getPairedPeersWithOptions_completion___block_invoke;
    v28[3] = &unk_1E73A38E8;
    v17 = v10;
    v29 = v17;
    v18 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v28];
    [v18 getPairedPeersWithOptions:a3 completion:v17];

    v19 = v29;
  }
}

- (void)getPairedPeersWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = _os_activity_create(&dword_191EAF000, "CoreUtils/CUPairingManager/getPairedPeersWithOptions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CUPairingManager_getPairedPeersWithOptions_completion___block_invoke;
  block[3] = &unk_1E73A4BB0;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v9 = v6;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

- (void)getPairedPeersWithGroupID:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65__CUPairingManager_getPairedPeersWithGroupID_options_completion___block_invoke;
  v12[3] = &unk_1E73A3910;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [(CUPairingManager *)self getPairedPeersWithOptions:a4 completion:v12];
}

void __65__CUPairingManager_getPairedPeersWithGroupID_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v22 = 0;
    goto LABEL_18;
  }

  v23 = v6;
  v24 = v5;
  v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = *v27;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v27 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v26 + 1) + 8 * i);
      v14 = [v13 groupInfo];
      TypeID = CFStringGetTypeID();
      v16 = CFDictionaryGetTypedValue(v14, @"groupID", TypeID, 0);

      v17 = *(a1 + 32);
      v18 = v16;
      v19 = v17;
      v20 = v19;
      if (v18 == v19)
      {

LABEL_12:
        [v25 addObject:v13];
        goto LABEL_14;
      }

      if ((v18 != 0) != (v19 == 0))
      {
        v21 = [v18 isEqual:v19];

        if (v21)
        {
          goto LABEL_12;
        }
      }

      else
      {
      }

LABEL_14:
    }

    v10 = [v8 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v10);
LABEL_16:

  v7 = v23;
  v5 = v24;
  v22 = v25;
LABEL_18:
  (*(*(a1 + 40) + 16))();
}

- (void)_deletePairingIdentityWithOptions:(unint64_t)a3 completion:(id)a4
{
  v31[1] = *MEMORY[0x1E69E9840];
  v10 = a4;
  if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _deletePairingIdentityWithOptions:completion:]", 0x1Eu, "DeletePairingIdentity %#{flags}\n", v6, v7, v8, v9, a3);
  }

  v11 = [(CUPairingManager *)self _ensureXPCStarted];
  if (v11)
  {
    v20 = v11;
    if (gLogCategory_CUPairingManager <= 60 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _deletePairingIdentityWithOptions:completion:]", 0x3Cu, "### DeletePairingIdentity %#{flags} failed: %#m\n", v12, v13, v14, v15, a3);
    }

    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E696A768];
    v23 = v20;
    v30 = *MEMORY[0x1E696A578];
    v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v20, 0, 0)}];
    v19 = v24;
    v25 = @"?";
    if (v24)
    {
      v25 = v24;
    }

    v31[0] = v25;
    v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    v27 = [v21 errorWithDomain:v22 code:v23 userInfo:v26];
    v10[2](v10, v27);
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __65__CUPairingManager__deletePairingIdentityWithOptions_completion___block_invoke;
    v28[3] = &unk_1E73A38E8;
    v17 = v10;
    v29 = v17;
    v18 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v28];
    [v18 deletePairingIdentityWithOptions:a3 completion:v17];

    v19 = v29;
  }
}

- (void)deletePairingIdentityWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = _os_activity_create(&dword_191EAF000, "CoreUtils/CUPairingManager/deletePairingIdentityWithOptions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __64__CUPairingManager_deletePairingIdentityWithOptions_completion___block_invoke;
  block[3] = &unk_1E73A4BB0;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v9 = v6;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

- (void)_getPairingIdentityWithOptions:(unint64_t)a3 tryCount:(unsigned int)a4 completion:(id)a5
{
  v35[1] = *MEMORY[0x1E69E9840];
  v12 = a5;
  if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _getPairingIdentityWithOptions:tryCount:completion:]", 0x1Eu, "GetPairingIdentity %#{flags}\n", v8, v9, v10, v11, a3);
  }

  v13 = [(CUPairingManager *)self _ensureXPCStarted];
  if (v13)
  {
    v21 = v13;
    if (gLogCategory_CUPairingManager <= 60 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _getPairingIdentityWithOptions:tryCount:completion:]", 0x3Cu, "### GetPairingIdentity %#{flags} failed: %#m\n", v14, v15, v16, v17, a3);
    }

    v22 = MEMORY[0x1E696ABC0];
    v23 = *MEMORY[0x1E696A768];
    v24 = v21;
    v34 = *MEMORY[0x1E696A578];
    v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v21, 0, 0)}];
    v26 = v25;
    v27 = @"?";
    if (v25)
    {
      v27 = v25;
    }

    v35[0] = v27;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
    v29 = [v22 errorWithDomain:v23 code:v24 userInfo:v28];
    v12[2](v12, 0, v29);
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __71__CUPairingManager__getPairingIdentityWithOptions_tryCount_completion___block_invoke;
    v30[3] = &unk_1E73A38C0;
    v33 = a4;
    v30[4] = self;
    v32 = a3;
    v19 = v12;
    v31 = v19;
    v20 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v30];
    [v20 getPairingIdentityWithOptions:a3 completion:v19];
  }
}

void __71__CUPairingManager__getPairingIdentityWithOptions_tryCount_completion___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 code] == 4097 && (v7 = *(a1 + 56), v7 <= 9))
  {
    if (gLogCategory_CUPairingManager <= 60)
    {
      if (gLogCategory_CUPairingManager != -1 || (v8 = _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x3Cu), v7 = *(a1 + 56), v8))
      {
        LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _getPairingIdentityWithOptions:tryCount:completion:]_block_invoke", 0x3Cu, "### GetPairingIdentity daemon restart...retrying %u of 10\n", v3, v4, v5, v6, v7);
        LODWORD(v7) = *(a1 + 56);
      }
    }

    [*(a1 + 32) _getPairingIdentityWithOptions:*(a1 + 48) tryCount:(v7 + 1) completion:*(a1 + 40)];
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)getPairingIdentityWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v7 = _os_activity_create(&dword_191EAF000, "CoreUtils/CUPairingManager/getPairingIdentityWithOptions", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v7, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CUPairingManager_getPairingIdentityWithOptions_completion___block_invoke;
  block[3] = &unk_1E73A4BB0;
  v11 = v6;
  v12 = a3;
  block[4] = self;
  v9 = v6;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_CUPairingManager <= 50 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x32u)))
    {
      LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _invalidated]", 0x32u, "### Unexpectedly invalidated\n", v3, v4, v5, v6, v20);
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    identityCreatedHandler = self->_identityCreatedHandler;
    self->_identityCreatedHandler = 0;

    identityDeletedHandler = self->_identityDeletedHandler;
    self->_identityDeletedHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v11 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    pairedPeerAddedHandler = self->_pairedPeerAddedHandler;
    self->_pairedPeerAddedHandler = 0;

    pairedPeerRemovedHandler = self->_pairedPeerRemovedHandler;
    self->_pairedPeerRemovedHandler = 0;

    pairedPeerChangedHandler = self->_pairedPeerChangedHandler;
    self->_pairedPeerChangedHandler = 0;

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
    {

      LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _invalidated]", 0x1Eu, "Invalidated\n", v16, v17, v18, v19, v22);
    }
  }
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (!self->_invalidateDone && gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _invalidate]", 0x1Eu, "Invalidating\n", v3, v4, v5, v6, v9);
    }

    xpcCnx = self->_xpcCnx;
    if (xpcCnx)
    {
      [(NSXPCConnection *)xpcCnx invalidate];
      v8 = self->_xpcCnx;
      self->_xpcCnx = 0;
    }

    else
    {

      [(CUPairingManager *)self _invalidated];
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CUPairingManager_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUPairingManager <= 50 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x32u)))
  {
    LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _interrupted]", 0x32u, "### Interrupted\n", v3, v4, v5, v6, v14);
  }

  if (self->_monitoring && ![(CUPairingManager *)self _ensureXPCStarted])
  {
    if (gLogCategory_CUPairingManager <= 50 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x32u)))
    {
      LogPrintF(&gLogCategory_CUPairingManager, "[CUPairingManager _interrupted]", 0x32u, "Restarting monitor after interruption\n", v7, v8, v9, v10, v14);
    }

    v11 = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [v11 startMonitoringWithOptions:self->_monitorOptions];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v13 = *(interruptionHandler + 2);

    v13();
  }
}

- (int)_ensureXPCStarted
{
  if (self->_xpcCnx)
  {
    return 0;
  }

  if (self->_invalidateCalled || self->_invalidateDone)
  {
    return -6724;
  }

  testListenerEndpoint = self->_testListenerEndpoint;
  v4 = objc_alloc(MEMORY[0x1E696B0B8]);
  if (testListenerEndpoint)
  {
    v5 = [v4 initWithListenerEndpoint:self->_testListenerEndpoint];
  }

  else
  {
    v5 = [v4 initWithMachServiceName:@"com.apple.PairingManager" options:0];
  }

  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = v5;

  [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __37__CUPairingManager__ensureXPCStarted__block_invoke;
  v14[3] = &unk_1E73A4F68;
  v14[4] = self;
  [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v14];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __37__CUPairingManager__ensureXPCStarted__block_invoke_2;
  v13[3] = &unk_1E73A4F68;
  v13[4] = self;
  [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v13];
  v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06AFC28];
  [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v7];

  [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
  v8 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06AFA68];
  v9 = MEMORY[0x1E695DFD8];
  v10 = objc_opt_class();
  v11 = [v9 setWithObjects:{v10, objc_opt_class(), 0}];
  [v8 setClasses:v11 forSelector:sel_getPairedPeersWithOptions_completion_ argumentIndex:0 ofReply:1];
  [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v8];
  [(NSXPCConnection *)self->_xpcCnx resume];

  return 0;
}

+ (id)copySystemPairingIdentifierWithFlags:(unsigned int)a3 error:(id *)a4
{
  if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingManager, "+[CUPairingManager copySystemPairingIdentifierWithFlags:error:]", 0x1Eu, "CopySystemPairingIdentifier: trying direct", v4, v5, v6, v7, v45);
  }

  v10 = [[CUPairingDaemon alloc] initStandalone];
  v48 = -6700;
  v11 = [v10 copyIdentityWithOptions:4 error:&v48];
  v12 = [v11 identifier];
  v13 = [v12 UUIDString];

  if (v13)
  {
    if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
    {
      LogPrintF(&gLogCategory_CUPairingManager, "+[CUPairingManager copySystemPairingIdentifierWithFlags:error:]", 0x1Eu, "CopySystemPairingIdentifier: direct: %@", v17, v18, v19, v20, v13);
    }

    v26 = v13;
LABEL_14:
    v27 = v26;
    goto LABEL_15;
  }

  if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
  {
    v21 = NSPrintF("%#m", v14, v15, v16, v17, v18, v19, v20, v48);
    LogPrintF(&gLogCategory_CUPairingManager, "+[CUPairingManager copySystemPairingIdentifierWithFlags:error:]", 0x1Eu, "CopySystemPairingIdentifier: direct failed (error=%@), trying XPC", v22, v23, v24, v25, v21);
  }

  v47 = 0;
  PairingSessionCreate(&v47, 0, 0);
  v36 = v47;
  if (v47)
  {
    v47[25] = a3 | 0xC;
    v46 = 0;
    v48 = PairingSessionCopyIdentity(v36, 1, &v46, 0, 0);
    if (v46)
    {
      v37 = objc_alloc(MEMORY[0x1E696AEC0]);
      v38 = [v37 initWithUTF8String:v46];
      free(v46);
      CFRelease(v36);
      if (v38)
      {
        if (gLogCategory_CUPairingManager <= 30 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x1Eu)))
        {
          LogPrintF(&gLogCategory_CUPairingManager, "+[CUPairingManager copySystemPairingIdentifierWithFlags:error:]", 0x1Eu, "CopySystemPairingIdentifier: XPC: %@", v32, v33, v34, v35, v38);
        }

        v26 = v38;
        goto LABEL_14;
      }
    }

    else
    {
      CFRelease(v36);
    }
  }

  if (gLogCategory_CUPairingManager <= 90 && (gLogCategory_CUPairingManager != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingManager, 0x5Au)))
  {
    v39 = NSPrintF("%#m", v29, v30, v31, v32, v33, v34, v35, v48);
    LogPrintF(&gLogCategory_CUPairingManager, "+[CUPairingManager copySystemPairingIdentifierWithFlags:error:]", 0x5Au, "### CopySystemPairingIdentifier failed: error=%@", v40, v41, v42, v43, v39);
  }

  if (a4)
  {
    if (v48)
    {
      v44 = v48;
    }

    else
    {
      v44 = 4294960596;
    }

    NSErrorF_safe(*MEMORY[0x1E696A768], v44, "CopySystemPairingIdentifier failed", v31, v32, v33, v34, v35, v45);
    *a4 = v27 = 0;
  }

  else
  {
    v27 = 0;
  }

LABEL_15:

  return v27;
}

@end