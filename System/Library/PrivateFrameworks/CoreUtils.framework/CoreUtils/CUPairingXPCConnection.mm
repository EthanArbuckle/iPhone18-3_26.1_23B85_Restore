@interface CUPairingXPCConnection
- (int)_entitled:(id)a3 state:(BOOL *)a4 label:(id)a5;
- (void)connectionInvalidated;
- (void)deletePairingIdentityWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)findPairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)getPairedPeersWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)getPairingIdentityWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)removePairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)savePairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)showWithCompletion:(id)a3;
- (void)startMonitoringWithOptions:(unint64_t)a3;
@end

@implementation CUPairingXPCConnection

- (void)startMonitoringWithOptions:(unint64_t)a3
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection startMonitoringWithOptions:]", 0x1Eu, "%@ %#{flags}\n", v4, v5, v6, v7, @"StartMonitoring");
  }

  if ([(CUPairingXPCConnection *)self _entitled:@"com.apple.PairingManager.Read" state:&self->_pmEntitledRead label:@"StartMonitoring"])
  {
    if (gLogCategory_CUPairingDaemon <= 60 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection startMonitoringWithOptions:]", 0x3Cu, "### %@ %#{flags} failed: %#m\n", v8, v9, v10, v11, @"StartMonitoring");
    }
  }

  else
  {
    self->_monitoring = 1;
  }
}

- (void)showWithCompletion:(id)a3
{
  v26[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection showWithCompletion:]", 0x1Eu, "%@\n", v5, v6, v7, v8, @"Show");
  }

  v9 = [(CUPairingXPCConnection *)self _entitled:@"com.apple.PairingManager.Read" state:&self->_pmEntitledRead label:@"Show"];
  if (v9)
  {
    v16 = v9;
  }

  else
  {
    v14 = [(CUPairingDaemon *)self->_daemon detailedDescription];
    if (v14)
    {
      v15 = v14;
      if (v4)
      {
        v4[2](v4, v14, 0);
      }

      goto LABEL_9;
    }

    v16 = -6762;
  }

  if (gLogCategory_CUPairingDaemon <= 60 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x3Cu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection showWithCompletion:]", 0x3Cu, "### %@ failed: %#m\n", v10, v11, v12, v13, @"Show");
  }

  if (v4)
  {
    v17 = MEMORY[0x1E696ABC0];
    v18 = *MEMORY[0x1E696A768];
    v19 = v16;
    v25 = *MEMORY[0x1E696A578];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v16, 0, 0)}];
    v21 = v20;
    v22 = @"?";
    if (v20)
    {
      v22 = v20;
    }

    v26[0] = v22;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v24 = [v17 errorWithDomain:v18 code:v19 userInfo:v23];
    (v4)[2](v4, 0, v24);
  }

  v15 = 0;
LABEL_9:
}

- (void)removePairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v34[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    v31 = [v8 identifier];
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection removePairedPeer:options:completion:]", 0x1Eu, "%@ %@ %#{flags}\n", v10, v11, v12, v13, @"RemovePairedPeer");
  }

  if ((a4 & 0x138) != 0)
  {
    v17 = -6735;
    v18 = 1;
LABEL_13:
    if (gLogCategory_CUPairingDaemon <= 60 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x3Cu)))
    {
      v32 = [v8 identifier];
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection removePairedPeer:options:completion:]", 0x3Cu, "### %@ %@ %#{flags} failed: %#m\n", v19, v20, v21, v22, @"RemovePairedPeer");
    }

    goto LABEL_17;
  }

  v14 = [(CUPairingXPCConnection *)self _entitled:@"com.apple.PairingManager.RemovePeer" state:&self->_pmEntitledRemovePeer label:@"RemovePairedPeer"];
  if (!v14)
  {
    if (self->_pmEntitledRemoveAdmin)
    {
      pmEntitledRemoveAdmin = 1;
    }

    else
    {
      v16 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.PairingManager.RemoveAdmin"];
      self->_pmEntitledRemoveAdmin = [v16 isEqual:MEMORY[0x1E695E118]];

      pmEntitledRemoveAdmin = self->_pmEntitledRemoveAdmin;
    }

    v14 = [(CUPairingDaemon *)self->_daemon removePairedPeer:v8 options:a4 removeAdminAllowed:pmEntitledRemoveAdmin];
  }

  v17 = v14;
  v18 = v14 != 0;
  if (v14 != -25300 && v14)
  {
    goto LABEL_13;
  }

LABEL_17:
  if (v9)
  {
    if (v18)
    {
      v23 = MEMORY[0x1E696ABC0];
      v24 = *MEMORY[0x1E696A768];
      v25 = v17;
      v33 = *MEMORY[0x1E696A578];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v17, 0, 0)}];
      v27 = v26;
      v28 = @"?";
      if (v26)
      {
        v28 = v26;
      }

      v34[0] = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
      v30 = [v23 errorWithDomain:v24 code:v25 userInfo:v29];
      v9[2](v9, v30);
    }

    else
    {
      v9[2](v9, 0);
    }
  }
}

- (void)savePairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v33[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    v30 = [v8 identifier];
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection savePairedPeer:options:completion:]", 0x1Eu, "%@ %@ %#{flags}\n", v10, v11, v12, v13, @"SavePairedPeer");
  }

  if ((a4 & 0x138) != 0)
  {
    v17 = -6735;
LABEL_12:
    if (gLogCategory_CUPairingDaemon <= 60 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x3Cu)))
    {
      v31 = [v8 identifier];
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection savePairedPeer:options:completion:]", 0x3Cu, "### %@ %@ %#{flags} failed: %#m\n", v18, v19, v20, v21, @"SavePairedPeer");
    }

    if (v9)
    {
      v22 = MEMORY[0x1E696ABC0];
      v23 = *MEMORY[0x1E696A768];
      v24 = v17;
      v32 = *MEMORY[0x1E696A578];
      v25 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v17, 0, 0)}];
      v26 = v25;
      v27 = @"?";
      if (v25)
      {
        v27 = v25;
      }

      v33[0] = v27;
      v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      v29 = [v22 errorWithDomain:v23 code:v24 userInfo:v28];
      v9[2](v9, v29);
    }

    goto LABEL_22;
  }

  v14 = [(CUPairingXPCConnection *)self _entitled:@"com.apple.PairingManager.Write" state:&self->_pmEntitledWrite label:@"SavePairedPeer"];
  if (v14 || (!self->_pmEntitledRemoveAdmin ? (-[NSXPCConnection cuValueForEntitlementNoCache:](self->_xpcCnx, "cuValueForEntitlementNoCache:", @"com.apple.PairingManager.RemoveAdmin"), v16 = objc_claimAutoreleasedReturnValue(), self->_pmEntitledRemoveAdmin = [v16 isEqual:MEMORY[0x1E695E118]], v16, pmEntitledRemoveAdmin = self->_pmEntitledRemoveAdmin) : (pmEntitledRemoveAdmin = 1), (v14 = -[CUPairingDaemon savePairedPeer:options:removeAdminAllowed:](self->_daemon, "savePairedPeer:options:removeAdminAllowed:", v8, a4, pmEntitledRemoveAdmin)) != 0))
  {
    v17 = v14;
    goto LABEL_12;
  }

  if (v9)
  {
    v9[2](v9, 0);
  }

LABEL_22:
}

- (void)findPairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v38[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    v31 = [v8 identifier];
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection findPairedPeer:options:completion:]", 0x1Eu, "%@ %@ %#{flags}\n", v10, v11, v12, v13, @"FindPairedPeer");
  }

  v14 = [(CUPairingXPCConnection *)self _entitled:@"com.apple.PairingManager.Read" state:&self->_pmEntitledRead label:@"FindPairedPeer"];
  v36 = v14;
  if (v14)
  {
LABEL_24:
    v17 = 0;
    goto LABEL_12;
  }

  if ((a4 & 0x138) != 0)
  {
    v14 = [(CUPairingXPCConnection *)self _entitled:@"com.apple.PairingManager.HomeKit" state:&self->_pmEntitledHomeKit label:@"FindPairedPeer"];
    v36 = v14;
    if (!v14)
    {
      v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v16 = dispatch_queue_create("CUPairingDaemonHomeKit", v15);

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __60__CUPairingXPCConnection_findPairedPeer_options_completion___block_invoke;
      block[3] = &unk_1E73A3938;
      block[4] = self;
      v33 = v8;
      v35 = a4;
      v34 = v9;
      dispatch_async(v16, block);

      v17 = 0;
      goto LABEL_9;
    }

    goto LABEL_24;
  }

  v17 = [(CUPairingDaemon *)self->_daemon findPairedPeer:v8 options:a4 error:&v36];
  v14 = v36;
  if (!v36 && !v17)
  {
    v36 = -6762;
    goto LABEL_14;
  }

LABEL_12:
  if (v14 != -25300 && v14)
  {
LABEL_14:
    if (gLogCategory_CUPairingDaemon <= 60 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x3Cu)))
    {
      v18 = [v8 identifier];
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection findPairedPeer:options:completion:]", 0x3Cu, "### %@ %@ %#{flags} failed: %#m\n", v19, v20, v21, v22, @"FindPairedPeer");
    }
  }

  if (v9)
  {
    v23 = v36;
    if (v36)
    {
      v24 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A768];
      v37 = *MEMORY[0x1E696A578];
      v26 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v36, 0, 0)}];
      v27 = v26;
      v28 = @"?";
      if (v26)
      {
        v28 = v26;
      }

      v38[0] = v28;
      v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:&v37 count:1];
      v30 = [v24 errorWithDomain:v25 code:v23 userInfo:v29];
      (*(v9 + 2))(v9, v17, v30);
    }

    else
    {
      (*(v9 + 2))(v9, v17, 0);
    }
  }

LABEL_9:
}

void __60__CUPairingXPCConnection_findPairedPeer_options_completion___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x1E69E9840];
  v19 = 0;
  v2 = [*(*(a1 + 32) + 8) findPairedPeer:*(a1 + 40) options:*(a1 + 56) error:&v19];
  v3 = v2;
  if (v19)
  {
    v4 = 0;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (v4)
  {
    v19 = -6762;
  }

  else if (!v19)
  {
    goto LABEL_12;
  }

  if (gLogCategory_CUPairingDaemon <= 60 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x3Cu)))
  {
    v5 = [*(a1 + 40) identifier];
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection findPairedPeer:options:completion:]_block_invoke", 0x3Cu, "### %@ %@ %#{flags} failed: %#m", v6, v7, v8, v9, @"FindPairedPeer");
  }

LABEL_12:
  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = v19;
    if (v19)
    {
      v12 = MEMORY[0x1E696ABC0];
      v13 = *MEMORY[0x1E696A768];
      v20 = *MEMORY[0x1E696A578];
      v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v19, 0, 0)}];
      v15 = v14;
      v16 = @"?";
      if (v14)
      {
        v16 = v14;
      }

      v21[0] = v16;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v18 = [v12 errorWithDomain:v13 code:v11 userInfo:v17];
      (*(v10 + 16))(v10, v3, v18);
    }

    else
    {
      (*(v10 + 16))(v10, v3, 0);
    }
  }
}

- (void)getPairedPeersWithOptions:(unint64_t)a3 completion:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection getPairedPeersWithOptions:completion:]", 0x1Eu, "%@ %#{flags}\n", v7, v8, v9, v10, @"GetPairedPeers");
  }

  if ((a3 & 0x138) != 0)
  {
    v11 = 0;
    v20 = -6735;
LABEL_24:
    v21 = v20;
    goto LABEL_10;
  }

  v21 = [(CUPairingXPCConnection *)self _entitled:@"com.apple.PairingManager.Read" state:&self->_pmEntitledRead label:@"GetPairedPeers"];
  if (!v21)
  {
    v11 = [(CUPairingDaemon *)self->_daemon copyPairedPeersWithOptions:a3 error:&v21];
    if (v21 || v11)
    {
      if (!v21)
      {
        goto LABEL_14;
      }

      goto LABEL_10;
    }

    v20 = -6762;
    goto LABEL_24;
  }

  v11 = 0;
LABEL_10:
  if (gLogCategory_CUPairingDaemon <= 60 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x3Cu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection getPairedPeersWithOptions:completion:]", 0x3Cu, "### %@ %#{flags} failed: %#m\n", v7, v8, v9, v10, @"GetPairedPeers");
  }

LABEL_14:
  if (v6)
  {
    v12 = v21;
    if (v21)
    {
      v13 = MEMORY[0x1E696ABC0];
      v14 = *MEMORY[0x1E696A768];
      v22 = *MEMORY[0x1E696A578];
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v21, 0, 0)}];
      v16 = v15;
      v17 = @"?";
      if (v15)
      {
        v17 = v15;
      }

      v23[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v19 = [v13 errorWithDomain:v14 code:v12 userInfo:v18];
      v6[2](v6, v11, v19);
    }

    else
    {
      v6[2](v6, v11, 0);
    }
  }
}

- (void)deletePairingIdentityWithOptions:(unint64_t)a3 completion:(id)a4
{
  v23[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection deletePairingIdentityWithOptions:completion:]", 0x1Eu, "%@ %#{flags}\n", v7, v8, v9, v10, @"DeletePairingIdentity");
  }

  if ((a3 & 0x138) != 0)
  {
    v12 = -6735;
    v13 = 1;
LABEL_10:
    if (gLogCategory_CUPairingDaemon <= 60 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection deletePairingIdentityWithOptions:completion:]", 0x3Cu, "### %@ %#{flags} failed: %#m\n", v7, v8, v9, v10, @"DeletePairingIdentity");
    }

    goto LABEL_14;
  }

  v11 = [(CUPairingXPCConnection *)self _entitled:@"com.apple.PairingManager.DeleteIdentity" state:&self->_pmEntitledDeleteIdentity label:@"DeletePairingIdentity"];
  if (!v11)
  {
    v11 = [(CUPairingDaemon *)self->_daemon deleteIdentityWithOptions:a3];
  }

  v12 = v11;
  v13 = v11 != 0;
  if (v11 != -25300 && v11)
  {
    goto LABEL_10;
  }

LABEL_14:
  if (v6)
  {
    if (v13)
    {
      v14 = MEMORY[0x1E696ABC0];
      v15 = *MEMORY[0x1E696A768];
      v16 = v12;
      v22 = *MEMORY[0x1E696A578];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v12, 0, 0)}];
      v18 = v17;
      v19 = @"?";
      if (v17)
      {
        v19 = v17;
      }

      v23[0] = v19;
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      v21 = [v14 errorWithDomain:v15 code:v16 userInfo:v20];
      v6[2](v6, v21);
    }

    else
    {
      v6[2](v6, 0);
    }
  }
}

- (void)getPairingIdentityWithOptions:(unint64_t)a3 completion:(id)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUPairingDaemon <= 30 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x1Eu)))
  {
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection getPairingIdentityWithOptions:completion:]", 0x1Eu, "%@ %#{flags}\n", v7, v8, v9, v10, @"GetPairingIdentity");
  }

  v11 = [(CUPairingXPCConnection *)self _entitled:@"com.apple.PairingManager.Read" state:&self->_pmEntitledRead label:@"GetPairingIdentity"];
  if (v11 || (a3 & 0x138) != 0 && (v11 = [(CUPairingXPCConnection *)self _entitled:@"com.apple.PairingManager.HomeKit" state:&self->_pmEntitledHomeKit label:@"GetPairingIdentity"]) != 0)
  {
    v16 = v11;
    if (v11 != -25300 && gLogCategory_CUPairingDaemon <= 60 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x3Cu)))
    {
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection getPairingIdentityWithOptions:completion:]", 0x3Cu, "### %@ failed: %#m\n", v12, v13, v14, v15, @"GetPairingIdentity");
    }

    if (v6)
    {
      v17 = MEMORY[0x1E696ABC0];
      v18 = *MEMORY[0x1E696A768];
      v19 = v16;
      v25 = *MEMORY[0x1E696A578];
      v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{DebugGetErrorStringEx(0, v16, 0, 0)}];
      v21 = v20;
      v22 = @"?";
      if (v20)
      {
        v22 = v20;
      }

      v26[0] = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      v24 = [v17 errorWithDomain:v18 code:v19 userInfo:v23];
      v6[2](v6, 0, v24);
    }
  }

  else
  {
    [(CUPairingDaemon *)self->_daemon getIdentityWithOptions:a3 completionHandler:v6];
  }
}

- (int)_entitled:(id)a3 state:(BOOL *)a4 label:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (*a4 || (-[NSXPCConnection cuValueForEntitlementNoCache:](self->_xpcCnx, "cuValueForEntitlementNoCache:", v8), v10 = objc_claimAutoreleasedReturnValue(), *a4 = [v10 isEqual:MEMORY[0x1E695E118]], v10, *a4) || -[CUPairingDaemon testMode](self->_daemon, "testMode"))
  {
    v11 = 0;
  }

  else
  {
    v11 = -71168;
    if (gLogCategory_CUPairingDaemon <= 60 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x3Cu)))
    {
      v13 = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
      LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection _entitled:state:label:]", 0x3Cu, "### %#{pid} lacks '%@' entitlement to use %@\n", v14, v15, v16, v17, v13);
    }
  }

  return v11;
}

- (void)connectionInvalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_CUPairingDaemon <= 20 && (gLogCategory_CUPairingDaemon != -1 || _LogCategory_Initialize(&gLogCategory_CUPairingDaemon, 0x14u)))
  {
    v3 = [(NSXPCConnection *)self->_xpcCnx processIdentifier];
    LogPrintF(&gLogCategory_CUPairingDaemon, "[CUPairingXPCConnection connectionInvalidated]", 0x14u, "XPC connection invalidated from %#{pid}\n", v4, v5, v6, v7, v3);
  }
}

@end