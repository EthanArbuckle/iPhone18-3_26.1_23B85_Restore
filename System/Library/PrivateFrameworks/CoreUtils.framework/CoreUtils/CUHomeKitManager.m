@interface CUHomeKitManager
- (BOOL)_isOwnerOfHome:(id)a3;
- (CUHomeKitManager)init;
- (id)_bestUserAndLabel:(id *)a3;
- (id)_cuPairingIdentityWithHMFPairingIdentity:(id)a3 options:(unint64_t)a4 error:(id *)a5;
- (id)_selfAccessoryMediaSystemUncached:(id *)a3;
- (void)_activateIfNeeded;
- (void)_clearHomeKitState;
- (void)_findPairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)_findPairedPeerWithContext:(id)a3;
- (void)_findPairedPeerWithContext:(id)a3 label:(id)a4 pairingIdentity:(id)a5 error:(id)a6;
- (void)_getPairingIdentityCompleted:(id)a3 options:(unint64_t)a4 error:(id)a5 label:(id)a6 completion:(id)a7;
- (void)_getPairingIdentityForAccessoryWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)_getPairingIdentityForLegacyWithOptions:(unint64_t)a3 user:(id)a4 nonLegacyIdentity:(id)a5 label:(id)a6 completion:(id)a7;
- (void)_getPairingIdentityForUserWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)_interrupted;
- (void)_invalidated;
- (void)_updateAccessories;
- (void)_updateHomes;
- (void)_updateSelfAccessoryIfNeeded;
- (void)_updateSelfAccessoryMediaAccess;
- (void)_updateSelfAccessoryMediaSystem;
- (void)_updateSelfAccessorySiriAccess;
- (void)_updateState;
- (void)_updateUsers;
- (void)accessory:(id)a3 didUpdateDevice:(id)a4;
- (void)accessoryDidUpdateApplicationData:(id)a3;
- (void)accessoryDidUpdatePairingIdentity:(id)a3;
- (void)activate;
- (void)dealloc;
- (void)findPairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5;
- (void)getHomeKitLocalPairingIdentityWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)getPairingIdentityWithOptions:(unint64_t)a3 completion:(id)a4;
- (void)home:(id)a3 didAddAccessory:(id)a4;
- (void)home:(id)a3 didAddMediaSystem:(id)a4;
- (void)home:(id)a3 didAddUser:(id)a4;
- (void)home:(id)a3 didRemoveAccessory:(id)a4;
- (void)home:(id)a3 didRemoveMediaSystem:(id)a4;
- (void)home:(id)a3 didRemoveUser:(id)a4;
- (void)home:(id)a3 didUpdateMediaPassword:(id)a4;
- (void)home:(id)a3 didUpdateMediaPeerToPeerEnabled:(BOOL)a4;
- (void)home:(id)a3 didUpdateMinimumMediaUserPrivilege:(int64_t)a4;
- (void)home:(id)a3 didUpdateRoom:(id)a4 forAccessory:(id)a5;
- (void)homeManager:(id)a3 didAddHome:(id)a4;
- (void)homeManager:(id)a3 didRemoveHome:(id)a4;
- (void)homeManager:(id)a3 didUpdateStatus:(unint64_t)a4;
- (void)homeManagerDidUpdateDataSyncState:(id)a3;
- (void)homeManagerDidUpdateHomes:(id)a3;
- (void)invalidate;
- (void)mediaSystem:(id)a3 didUpdateComponents:(id)a4;
- (void)mediaSystem:(id)a3 didUpdateName:(id)a4;
- (void)setLabel:(id)a3;
- (void)user:(id)a3 didUpdateAssistantAccessControl:(id)a4 forHome:(id)a5;
- (void)user:(id)a3 didUpdatePairingIdentity:(id)a4;
@end

@implementation CUHomeKitManager

- (void)user:(id)a3 didUpdatePairingIdentity:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__CUHomeKitManager_user_didUpdatePairingIdentity___block_invoke;
  block[3] = &unk_1E73A37D8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void __50__CUHomeKitManager_user_didUpdatePairingIdentity___block_invoke(id *a1)
{
  v2 = a1[4];
  if (!v2[2])
  {
    return;
  }

  v3 = v2[12];
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v9 = _LogCategory_Initialize(v2[12], 0x1Eu);
      v2 = a1[4];
      if (!v9)
      {
        goto LABEL_7;
      }

      v3 = v2[12];
    }

    v4 = [a1[5] userID];
    v11 = [a1[6] identifier];
    LogPrintF(v3, "[CUHomeKitManager user:didUpdatePairingIdentity:]_block_invoke", 0x1Eu, "DidUpdatePairingIdentity: user %{mask}, PairingIdentity %@", v5, v6, v7, v8, v4);

    v2 = a1[4];
  }

LABEL_7:
  [v2 _updateState];
  [a1[4] _updateHomes];
  v10 = _Block_copy(*(a1[4] + 19));
  if (v10)
  {
    v12 = v10;
    (*(v10 + 2))(v10, *(a1[4] + 28));
    v10 = v12;
  }
}

- (void)user:(id)a3 didUpdateAssistantAccessControl:(id)a4 forHome:(id)a5
{
  v7 = a3;
  v8 = a5;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__CUHomeKitManager_user_didUpdateAssistantAccessControl_forHome___block_invoke;
  block[3] = &unk_1E73A37D8;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  dispatch_async(dispatchQueue, block);
}

void *__65__CUHomeKitManager_user_didUpdateAssistantAccessControl_forHome___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v3 = result[12];
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v9 = _LogCategory_Initialize(result[12], 0x1Eu);
      result = *(a1 + 32);
      if (!v9)
      {
        goto LABEL_7;
      }

      v3 = result[12];
    }

    v4 = [*(a1 + 40) userID];
    v10 = [*(a1 + 48) name];
    LogPrintF(v3, "[CUHomeKitManager user:didUpdateAssistantAccessControl:forHome:]_block_invoke", 0x1Eu, "DidUpdateAssistantAccessControl: user %{mask}, home '%@'", v5, v6, v7, v8, v4);

    result = *(a1 + 32);
  }

LABEL_7:

  return [result _updateHomes];
}

- (void)accessory:(id)a3 didUpdateDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CUHomeKitManager_accessory_didUpdateDevice___block_invoke;
  block[3] = &unk_1E73A37D8;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

void *__46__CUHomeKitManager_accessory_didUpdateDevice___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v3 = result[12];
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v9 = _LogCategory_Initialize(result[12], 0x1Eu);
      result = *(a1 + 32);
      if (!v9)
      {
        goto LABEL_7;
      }

      v3 = result[12];
    }

    v4 = [*(a1 + 40) name];
    v10 = [*(a1 + 48) uniqueIdentifier];
    LogPrintF(v3, "[CUHomeKitManager accessory:didUpdateDevice:]_block_invoke", 0x1Eu, "DidUpdateDevice: accessory '%@', device %@\n", v5, v6, v7, v8, v4);

    result = *(a1 + 32);
  }

LABEL_7:

  return [result _updateHomes];
}

- (void)accessoryDidUpdatePairingIdentity:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__CUHomeKitManager_accessoryDidUpdatePairingIdentity___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __54__CUHomeKitManager_accessoryDidUpdatePairingIdentity___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[2])
  {
    return;
  }

  v3 = v2[12];
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v9 = _LogCategory_Initialize(v2[12], 0x1Eu);
      v2 = *(a1 + 32);
      if (!v9)
      {
        goto LABEL_7;
      }

      v3 = v2[12];
    }

    v4 = [*(a1 + 40) name];
    LogPrintF(v3, "[CUHomeKitManager accessoryDidUpdatePairingIdentity:]_block_invoke", 0x1Eu, "DidUpdatePairingIdentity: accessory '%@'", v5, v6, v7, v8, v4);

    v2 = *(a1 + 32);
  }

LABEL_7:
  [v2 _updateState];
  [*(a1 + 32) _updateHomes];
  v10 = _Block_copy(*(*(a1 + 32) + 152));
  if (v10)
  {
    v11 = v10;
    (*(v10 + 2))(v10, *(*(a1 + 32) + 112));
    v10 = v11;
  }
}

- (void)accessoryDidUpdateApplicationData:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__CUHomeKitManager_accessoryDidUpdateApplicationData___block_invoke;
  v7[3] = &unk_1E73A49F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void *__54__CUHomeKitManager_accessoryDidUpdateApplicationData___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v3 = result[12];
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v9 = _LogCategory_Initialize(result[12], 0x1Eu);
      result = *(a1 + 32);
      if (!v9)
      {
        goto LABEL_7;
      }

      v3 = result[12];
    }

    v4 = [*(a1 + 40) name];
    LogPrintF(v3, "[CUHomeKitManager accessoryDidUpdateApplicationData:]_block_invoke", 0x1Eu, "DidUpdateApplicationData: accessory '%@'\n", v5, v6, v7, v8, v4);

    result = *(a1 + 32);
  }

LABEL_7:

  return [result _updateHomes];
}

- (void)mediaSystem:(id)a3 didUpdateName:(id)a4
{
  v5 = a4;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__CUHomeKitManager_mediaSystem_didUpdateName___block_invoke;
  v8[3] = &unk_1E73A49F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(dispatchQueue, v8);
}

uint64_t __46__CUHomeKitManager_mediaSystem_didUpdateName___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 32);
  if (!v8[2])
  {
    return result;
  }

  v9 = result;
  v10 = v8[12];
  if (*v10 <= 30)
  {
    if (*v10 == -1)
    {
      v11 = _LogCategory_Initialize(v10, 0x1Eu);
      v8 = *(v9 + 32);
      if (!v11)
      {
        goto LABEL_7;
      }

      v10 = v8[12];
    }

    LogPrintF(v10, "[CUHomeKitManager mediaSystem:didUpdateName:]_block_invoke", 0x1Eu, "MediaSystemDidUpdateName: '%@'\n", a5, a6, a7, a8, *(v9 + 40));
    v8 = *(v9 + 32);
  }

LABEL_7:

  return [v8 _updateHomes];
}

- (void)mediaSystem:(id)a3 didUpdateComponents:(id)a4
{
  v5 = a3;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__CUHomeKitManager_mediaSystem_didUpdateComponents___block_invoke;
  v8[3] = &unk_1E73A49F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(dispatchQueue, v8);
}

void *__52__CUHomeKitManager_mediaSystem_didUpdateComponents___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v3 = result[12];
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v9 = _LogCategory_Initialize(result[12], 0x1Eu);
      result = *(a1 + 32);
      if (!v9)
      {
        goto LABEL_7;
      }

      v3 = result[12];
    }

    v4 = [*(a1 + 40) name];
    LogPrintF(v3, "[CUHomeKitManager mediaSystem:didUpdateComponents:]_block_invoke", 0x1Eu, "MediaSystemDidUpdateComponents: '%@'\n", v5, v6, v7, v8, v4);

    result = *(a1 + 32);
  }

LABEL_7:

  return [result _updateHomes];
}

- (void)home:(id)a3 didRemoveMediaSystem:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CUHomeKitManager_home_didRemoveMediaSystem___block_invoke;
  block[3] = &unk_1E73A37D8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

void *__46__CUHomeKitManager_home_didRemoveMediaSystem___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v3 = result[12];
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v9 = _LogCategory_Initialize(result[12], 0x1Eu);
      result = *(a1 + 32);
      if (!v9)
      {
        goto LABEL_7;
      }

      v3 = result[12];
    }

    v4 = [*(a1 + 40) name];
    v10 = [*(a1 + 48) name];
    LogPrintF(v3, "[CUHomeKitManager home:didRemoveMediaSystem:]_block_invoke", 0x1Eu, "DidRemoveMediaSystem: '%@', home '%@'\n", v5, v6, v7, v8, v4);

    result = *(a1 + 32);
  }

LABEL_7:

  return [result _updateHomes];
}

- (void)home:(id)a3 didAddMediaSystem:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CUHomeKitManager_home_didAddMediaSystem___block_invoke;
  block[3] = &unk_1E73A37D8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

void *__43__CUHomeKitManager_home_didAddMediaSystem___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v3 = result[12];
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v9 = _LogCategory_Initialize(result[12], 0x1Eu);
      result = *(a1 + 32);
      if (!v9)
      {
        goto LABEL_7;
      }

      v3 = result[12];
    }

    v4 = [*(a1 + 40) name];
    v10 = [*(a1 + 48) name];
    LogPrintF(v3, "[CUHomeKitManager home:didAddMediaSystem:]_block_invoke", 0x1Eu, "DidAddMediaSystem: '%@', home '%@'\n", v5, v6, v7, v8, v4);

    result = *(a1 + 32);
  }

LABEL_7:

  return [result _updateHomes];
}

- (void)home:(id)a3 didUpdateMediaPassword:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__CUHomeKitManager_home_didUpdateMediaPassword___block_invoke;
  block[3] = &unk_1E73A37D8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

void *__48__CUHomeKitManager_home_didUpdateMediaPassword___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v3 = result[12];
  if (*v3 <= 30)
  {
    if (*v3 != -1)
    {
LABEL_4:
      if ([*(a1 + 40) length])
      {
        v4 = "set";
      }

      else
      {
        v4 = "not set";
      }

      v10 = [*(a1 + 48) name];
      LogPrintF(v3, "[CUHomeKitManager home:didUpdateMediaPassword:]_block_invoke", 0x1Eu, "DidAddMediaPassword: %s, home '%@'\n", v5, v6, v7, v8, v4);

      result = *(a1 + 32);
      goto LABEL_10;
    }

    v9 = _LogCategory_Initialize(result[12], 0x1Eu);
    result = *(a1 + 32);
    if (v9)
    {
      v3 = result[12];
      goto LABEL_4;
    }
  }

LABEL_10:

  return [result _updateHomes];
}

- (void)home:(id)a3 didUpdateMediaPeerToPeerEnabled:(BOOL)a4
{
  v6 = a3;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __57__CUHomeKitManager_home_didUpdateMediaPeerToPeerEnabled___block_invoke;
  block[3] = &unk_1E73A3CE8;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

void *__57__CUHomeKitManager_home_didUpdateMediaPeerToPeerEnabled___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v3 = result[12];
  if (*v3 <= 30)
  {
    if (*v3 != -1)
    {
LABEL_4:
      if (*(a1 + 48))
      {
        v4 = "yes";
      }

      else
      {
        v4 = "no";
      }

      v10 = [*(a1 + 40) name];
      LogPrintF(v3, "[CUHomeKitManager home:didUpdateMediaPeerToPeerEnabled:]_block_invoke", 0x1Eu, "DidAddMediaPeerToPeerEnabled: %s, home '%@'\n", v5, v6, v7, v8, v4);

      result = *(a1 + 32);
      goto LABEL_10;
    }

    v9 = _LogCategory_Initialize(result[12], 0x1Eu);
    result = *(a1 + 32);
    if (v9)
    {
      v3 = result[12];
      goto LABEL_4;
    }
  }

LABEL_10:

  return [result _updateHomes];
}

- (void)home:(id)a3 didUpdateMinimumMediaUserPrivilege:(int64_t)a4
{
  v6 = a3;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __60__CUHomeKitManager_home_didUpdateMinimumMediaUserPrivilege___block_invoke;
  block[3] = &unk_1E73A4040;
  v10 = v6;
  v11 = a4;
  block[4] = self;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

void *__60__CUHomeKitManager_home_didUpdateMinimumMediaUserPrivilege___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v3 = result[12];
  if (*v3 <= 30)
  {
    if (*v3 != -1)
    {
LABEL_4:
      v4 = *(a1 + 48);
      if (v4 > 2)
      {
        v5 = "?";
      }

      else
      {
        v5 = off_1E73A3598[v4];
      }

      v11 = [*(a1 + 40) name];
      LogPrintF(v3, "[CUHomeKitManager home:didUpdateMinimumMediaUserPrivilege:]_block_invoke", 0x1Eu, "DidAddMediaUserLevel: %s, home '%@'\n", v7, v8, v9, v10, v5);

      result = *(a1 + 32);
      goto LABEL_11;
    }

    v6 = _LogCategory_Initialize(result[12], 0x1Eu);
    result = *(a1 + 32);
    if (v6)
    {
      v3 = result[12];
      goto LABEL_4;
    }
  }

LABEL_11:

  return [result _updateHomes];
}

- (void)home:(id)a3 didRemoveUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__CUHomeKitManager_home_didRemoveUser___block_invoke;
  block[3] = &unk_1E73A37D8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

void *__39__CUHomeKitManager_home_didRemoveUser___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v3 = result[12];
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v10 = _LogCategory_Initialize(result[12], 0x1Eu);
      result = *(a1 + 32);
      if (!v10)
      {
        goto LABEL_7;
      }

      v3 = result[12];
    }

    v4 = [*(a1 + 40) uniqueIdentifier];
    v5 = [*(a1 + 40) userID];
    v11 = [*(a1 + 48) name];
    LogPrintF(v3, "[CUHomeKitManager home:didRemoveUser:]_block_invoke", 0x1Eu, "DidRemoveUser: %@, %{mask}, home '%@'", v6, v7, v8, v9, v4);

    result = *(a1 + 32);
  }

LABEL_7:

  return [result _updateHomes];
}

- (void)home:(id)a3 didAddUser:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__CUHomeKitManager_home_didAddUser___block_invoke;
  block[3] = &unk_1E73A37D8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

void *__36__CUHomeKitManager_home_didAddUser___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v3 = result[12];
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v10 = _LogCategory_Initialize(result[12], 0x1Eu);
      result = *(a1 + 32);
      if (!v10)
      {
        goto LABEL_7;
      }

      v3 = result[12];
    }

    v4 = [*(a1 + 40) uniqueIdentifier];
    v5 = [*(a1 + 40) userID];
    v11 = [*(a1 + 48) name];
    LogPrintF(v3, "[CUHomeKitManager home:didAddUser:]_block_invoke", 0x1Eu, "DidAddUser: %@, %{mask}, home '%@'", v6, v7, v8, v9, v4);

    result = *(a1 + 32);
  }

LABEL_7:

  return [result _updateHomes];
}

- (void)home:(id)a3 didUpdateRoom:(id)a4 forAccessory:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __52__CUHomeKitManager_home_didUpdateRoom_forAccessory___block_invoke;
  v15[3] = &unk_1E73A40E0;
  v15[4] = self;
  v16 = v9;
  v17 = v10;
  v18 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_async(dispatchQueue, v15);
}

void *__52__CUHomeKitManager_home_didUpdateRoom_forAccessory___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v3 = result[12];
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v10 = _LogCategory_Initialize(result[12], 0x1Eu);
      result = *(a1 + 32);
      if (!v10)
      {
        goto LABEL_7;
      }

      v3 = result[12];
    }

    v4 = [*(a1 + 40) name];
    v5 = [*(a1 + 48) name];
    v11 = [*(a1 + 56) name];
    LogPrintF(v3, "[CUHomeKitManager home:didUpdateRoom:forAccessory:]_block_invoke", 0x1Eu, "DidUpdateRoom: '%@', accessory '%@', home '%@'\n", v6, v7, v8, v9, v4);

    result = *(a1 + 32);
  }

LABEL_7:

  return [result _updateHomes];
}

- (void)home:(id)a3 didRemoveAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__CUHomeKitManager_home_didRemoveAccessory___block_invoke;
  block[3] = &unk_1E73A37D8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

void *__44__CUHomeKitManager_home_didRemoveAccessory___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v3 = result[12];
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v9 = _LogCategory_Initialize(result[12], 0x1Eu);
      result = *(a1 + 32);
      if (!v9)
      {
        goto LABEL_7;
      }

      v3 = result[12];
    }

    v4 = [*(a1 + 40) name];
    v10 = [*(a1 + 48) name];
    LogPrintF(v3, "[CUHomeKitManager home:didRemoveAccessory:]_block_invoke", 0x1Eu, "DidRemoveAccessory: '%@', home '%@'\n", v5, v6, v7, v8, v4);

    result = *(a1 + 32);
  }

LABEL_7:

  return [result _updateHomes];
}

- (void)home:(id)a3 didAddAccessory:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CUHomeKitManager_home_didAddAccessory___block_invoke;
  block[3] = &unk_1E73A37D8;
  block[4] = self;
  v12 = v7;
  v13 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(dispatchQueue, block);
}

void *__41__CUHomeKitManager_home_didAddAccessory___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v3 = result[12];
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v9 = _LogCategory_Initialize(result[12], 0x1Eu);
      result = *(a1 + 32);
      if (!v9)
      {
        goto LABEL_7;
      }

      v3 = result[12];
    }

    v4 = [*(a1 + 40) name];
    v10 = [*(a1 + 48) name];
    LogPrintF(v3, "[CUHomeKitManager home:didAddAccessory:]_block_invoke", 0x1Eu, "DidAddAccessory: '%@', home '%@'\n", v5, v6, v7, v8, v4);

    result = *(a1 + 32);
  }

LABEL_7:

  return [result _updateHomes];
}

- (void)homeManager:(id)a3 didRemoveHome:(id)a4
{
  v5 = a4;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __46__CUHomeKitManager_homeManager_didRemoveHome___block_invoke;
  v8[3] = &unk_1E73A49F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(dispatchQueue, v8);
}

void *__46__CUHomeKitManager_homeManager_didRemoveHome___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v3 = result[12];
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v9 = _LogCategory_Initialize(result[12], 0x1Eu);
      result = *(a1 + 32);
      if (!v9)
      {
        goto LABEL_7;
      }

      v3 = result[12];
    }

    v4 = [*(a1 + 40) name];
    LogPrintF(v3, "[CUHomeKitManager homeManager:didRemoveHome:]_block_invoke", 0x1Eu, "DidRemoveHome: '%@'\n", v5, v6, v7, v8, v4);

    result = *(a1 + 32);
  }

LABEL_7:

  return [result _updateHomes];
}

- (void)homeManager:(id)a3 didAddHome:(id)a4
{
  v5 = a4;
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__CUHomeKitManager_homeManager_didAddHome___block_invoke;
  v8[3] = &unk_1E73A49F0;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(dispatchQueue, v8);
}

void *__43__CUHomeKitManager_homeManager_didAddHome___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v3 = result[12];
  if (*v3 <= 30)
  {
    if (*v3 == -1)
    {
      v9 = _LogCategory_Initialize(result[12], 0x1Eu);
      result = *(a1 + 32);
      if (!v9)
      {
        goto LABEL_7;
      }

      v3 = result[12];
    }

    v4 = [*(a1 + 40) name];
    LogPrintF(v3, "[CUHomeKitManager homeManager:didAddHome:]_block_invoke", 0x1Eu, "DidAddHome: '%@'\n", v5, v6, v7, v8, v4);

    result = *(a1 + 32);
  }

LABEL_7:

  return [result _updateHomes];
}

- (void)homeManager:(id)a3 didUpdateStatus:(unint64_t)a4
{
  dispatchQueue = self->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__CUHomeKitManager_homeManager_didUpdateStatus___block_invoke;
  v5[3] = &unk_1E73A4340;
  v5[4] = self;
  v5[5] = a4;
  dispatch_async(dispatchQueue, v5);
}

uint64_t __48__CUHomeKitManager_homeManager_didUpdateStatus___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 32);
  if (!v8[2])
  {
    return result;
  }

  v9 = result;
  v10 = v8[12];
  if (*v10 <= 30)
  {
    if (*v10 == -1)
    {
      v11 = _LogCategory_Initialize(v10, 0x1Eu);
      v8 = *(v9 + 32);
      if (!v11)
      {
        goto LABEL_7;
      }

      v10 = v8[12];
    }

    LogPrintF(v10, "[CUHomeKitManager homeManager:didUpdateStatus:]_block_invoke", 0x1Eu, "HomeManagerDidUpdateStatus: %d", a5, a6, a7, a8, *(v9 + 40));
    v8 = *(v9 + 32);
  }

LABEL_7:
  [v8 _updateState];
  v12 = *(v9 + 32);

  return [v12 _updateHomes];
}

- (void)homeManagerDidUpdateHomes:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__CUHomeKitManager_homeManagerDidUpdateHomes___block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __46__CUHomeKitManager_homeManagerDidUpdateHomes___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(result + 32);
  if (!*(v8 + 16))
  {
    return result;
  }

  v9 = result;
  v10 = *(v8 + 96);
  if (*v10 <= 30)
  {
    if (*v10 == -1)
    {
      v11 = _LogCategory_Initialize(v10, 0x1Eu);
      v8 = *(v9 + 32);
      if (!v11)
      {
        goto LABEL_7;
      }

      v10 = *(v8 + 96);
    }

    LogPrintF(v10, "[CUHomeKitManager homeManagerDidUpdateHomes:]_block_invoke", 0x1Eu, "HomeManagerDidUpdateHomes\n", a5, a6, a7, a8, v13);
    v8 = *(v9 + 32);
  }

LABEL_7:
  *(v8 + 24) = 1;
  [*(v9 + 32) _clearHomeKitState];
  [*(v9 + 32) _updateState];
  v12 = *(v9 + 32);

  return [v12 _updateHomes];
}

- (void)homeManagerDidUpdateDataSyncState:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__CUHomeKitManager_homeManagerDidUpdateDataSyncState___block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void *__54__CUHomeKitManager_homeManagerDidUpdateDataSyncState___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(a1 + 32);
  if (!result[2])
  {
    return result;
  }

  v10 = result[12];
  if (*v10 <= 30)
  {
    if (*v10 == -1)
    {
      v11 = _LogCategory_Initialize(result[12], 0x1Eu);
      result = *(a1 + 32);
      if (!v11)
      {
        goto LABEL_7;
      }

      v10 = result[12];
    }

    LogPrintF(v10, "[CUHomeKitManager homeManagerDidUpdateDataSyncState:]_block_invoke", 0x1Eu, "HomeKit DataSync changed\n", a5, a6, a7, a8, v13);
    result = *(a1 + 32);
  }

LABEL_7:
  [result _updateState];
  v12 = *(a1 + 32);

  return [v12 _updateHomes];
}

- (id)_selfAccessoryMediaSystemUncached:(id *)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = [(HMAccessory *)self->_selfAccessory uniqueIdentifier];
  v6 = [(HMAccessory *)self->_selfAccessory home];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = [v6 mediaSystems];
  v26 = [v7 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v26)
  {
    v24 = a3;
    v25 = v6;
    v8 = *v34;
    v28 = v7;
    v23 = *v34;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v7);
        }

        v10 = *(*(&v33 + 1) + 8 * i);
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v27 = v10;
        v11 = [v10 components];
        v12 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v30;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v30 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v29 + 1) + 8 * j);
              v17 = [v16 mediaProfile];
              v18 = [v17 accessory];
              v19 = [v18 uniqueIdentifier];

              if ([v19 isEqual:v5])
              {
                if (v24)
                {
                  v21 = v16;
                  *v24 = v16;
                }

                v20 = v27;

                v6 = v25;
                v7 = v28;
                goto LABEL_21;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v29 objects:v37 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }

        v7 = v28;
        v8 = v23;
      }

      v20 = 0;
      v6 = v25;
      v26 = [v28 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v26);
  }

  else
  {
    v20 = 0;
  }

LABEL_21:

  return v20;
}

- (BOOL)_isOwnerOfHome:(id)a3
{
  v3 = a3;
  v4 = [v3 currentUser];
  if (v4)
  {
    v5 = [v3 homeAccessControlForUser:v4];
    v6 = [v5 isOwner];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_cuPairingIdentityWithHMFPairingIdentity:(id)a3 options:(unint64_t)a4 error:(id *)a5
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(CUPairingIdentity);
  v15 = [v7 identifier];
  if (v15)
  {
    v22 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v15];
    if (!v22)
    {
      if (a5)
      {
        NSErrorWithOSStatusF(4294960579, "Bad HomeKit pairing identifier: '%@'", v16, v17, v18, v19, v20, v21, v15);
        *a5 = v33 = 0;
      }

      else
      {
        v33 = 0;
      }

      goto LABEL_21;
    }

    [(CUPairingIdentity *)v8 setIdentifier:v22];
    v23 = [v7 publicKey];
    v24 = [v23 data];

    if (v24)
    {
      [(CUPairingIdentity *)v8 setPublicKey:v24];
      if ((v6 & 2) == 0)
      {
LABEL_7:
        v33 = v8;
LABEL_20:

LABEL_21:
        goto LABEL_22;
      }

      v31 = [v7 privateKey];
      v32 = [v31 data];

      if (v32)
      {
        [(CUPairingIdentity *)v8 setSecretKey:v32];

        goto LABEL_7;
      }

      if (a5)
      {
        v34 = "No HomeKit pairing private key";
        v35 = 4294896142;
        goto LABEL_18;
      }
    }

    else if (a5)
    {
      v34 = "No HomeKit pairing public key";
      v35 = 4294896141;
LABEL_18:
      NSErrorWithOSStatusF(v35, v34, v25, v26, v27, v28, v29, v30, v37);
      *a5 = v33 = 0;
      goto LABEL_20;
    }

    v33 = 0;
    goto LABEL_20;
  }

  if (a5)
  {
    NSErrorWithOSStatusF(4294960588, "No HomeKit pairing identifier", v9, v10, v11, v12, v13, v14, v37);
    *a5 = v33 = 0;
  }

  else
  {
    v33 = 0;
  }

LABEL_22:

  return v33;
}

- (id)_bestUserAndLabel:(id *)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = [(HMHomeManager *)self->_homeManager currentHome];
  v6 = [v5 currentUser];
  if (v6)
  {
    v7 = v6;
    if (a3)
    {
      v8 = objc_alloc(MEMORY[0x1E696AEC0]);
      v9 = [v5 name];
      *a3 = [v8 initWithFormat:@"CurrentHome '%@'", v9];
    }
  }

  else
  {
    v10 = [(HMHomeManager *)self->_homeManager primaryHome];

    v11 = [v10 currentUser];
    if (v11)
    {
      v7 = v11;
      if (a3)
      {
        v12 = objc_alloc(MEMORY[0x1E696AEC0]);
        v13 = [v10 name];
        *a3 = [v12 initWithFormat:@"PrimaryHome '%@'", v13];
      }

      v5 = v10;
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v14 = [(HMHomeManager *)self->_homeManager homes];
      v15 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v26;
        v5 = v10;
        while (2)
        {
          v18 = 0;
          v19 = v5;
          do
          {
            if (*v26 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v5 = *(*(&v25 + 1) + 8 * v18);

            v20 = [v5 currentUser];
            if (v20)
            {
              v21 = v20;
              if (a3)
              {
                v22 = objc_alloc(MEMORY[0x1E696AEC0]);
                v23 = [v5 name];
                *a3 = [v22 initWithFormat:@"Home '%@'", v23];
              }

              v7 = v21;

              goto LABEL_22;
            }

            ++v18;
            v19 = v5;
          }

          while (v16 != v18);
          v16 = [v14 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v5 = v10;
      }

      v7 = 0;
      v5 = v14;
    }
  }

LABEL_22:

  return v7;
}

- (void)_findPairedPeerWithContext:(id)a3 label:(id)a4 pairingIdentity:(id)a5 error:(id)a6
{
  v60 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (!v11)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 50)
    {
      v24 = v60;
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(self->_ucat, 0x32u))
        {
          goto LABEL_18;
        }

        ucat = self->_ucat;
        v24 = v60;
      }

      v25 = [v24 identifier];
      LogPrintF(ucat, "[CUHomeKitManager _findPairedPeerWithContext:label:pairingIdentity:error:]", 0x32u, "FindPairedPeer: '%@', %@, no identity, %{error}\n", v26, v27, v28, v29, v25);
    }

LABEL_18:
    [(CUHomeKitManager *)self _findPairedPeerWithContext:v60];
    goto LABEL_33;
  }

  v13 = [v11 identifier];
  if (!v13)
  {
    v30 = self->_ucat;
    v31 = v60;
    if (v30->var0 <= 90)
    {
      if (v30->var0 == -1)
      {
        v56 = _LogCategory_Initialize(self->_ucat, 0x5Au);
        v31 = v60;
        if (!v56)
        {
          goto LABEL_25;
        }

        v30 = self->_ucat;
      }

      v32 = [v31 identifier];
      LogPrintF(v30, "[CUHomeKitManager _findPairedPeerWithContext:label:pairingIdentity:error:]", 0x5Au, "### FindPairedPeer: '%@', %@, no identifier for identity\n", v33, v34, v35, v36, v32);

      v31 = v60;
    }

LABEL_25:
    v54 = self;
    v55 = v31;
    goto LABEL_26;
  }

  v14 = [v60 identifier];
  v15 = [v13 caseInsensitiveCompare:v14];

  if (!v15)
  {
    v37 = [v11 publicKey];
    v38 = [v37 data];

    if (v38)
    {
      v39 = mach_absolute_time();
      UpTicksToMilliseconds(v39 - [v60 startTicks]);
      v40 = self->_ucat;
      if (v40->var0 <= 30)
      {
        v41 = v60;
        if (v40->var0 == -1)
        {
          if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
          {
            goto LABEL_28;
          }

          v40 = self->_ucat;
          v41 = v60;
        }

        v42 = [v41 identifier];
        LogPrintF(v40, "[CUHomeKitManager _findPairedPeerWithContext:label:pairingIdentity:error:]", 0x1Eu, "FindPairedPeer found: '%@', %@, %llu ms\n", v43, v44, v45, v46, v42);
      }

LABEL_28:
      v57 = [v60 pairedPeer];
      [v57 setPublicKey:v38];

      v58 = [v60 completion];
      v59 = [v60 pairedPeer];
      (v58)[2](v58, v59, 0);

LABEL_31:
      goto LABEL_32;
    }

    v47 = self->_ucat;
    if (v47->var0 <= 90)
    {
      v48 = v60;
      if (v47->var0 == -1)
      {
        if (!_LogCategory_Initialize(self->_ucat, 0x5Au))
        {
          goto LABEL_30;
        }

        v47 = self->_ucat;
        v48 = v60;
      }

      v49 = [v48 identifier];
      LogPrintF(v47, "[CUHomeKitManager _findPairedPeerWithContext:label:pairingIdentity:error:]", 0x5Au, "### FindPairedPeer: '%@', %@, no PK\n", v50, v51, v52, v53, v49);
    }

LABEL_30:
    [(CUHomeKitManager *)self _findPairedPeerWithContext:v60];
    goto LABEL_31;
  }

  v16 = self->_ucat;
  if (v16->var0 <= 50)
  {
    v17 = v60;
    if (v16->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x32u))
      {
        goto LABEL_23;
      }

      v16 = self->_ucat;
      v17 = v60;
    }

    v18 = [v17 identifier];
    LogPrintF(v16, "[CUHomeKitManager _findPairedPeerWithContext:label:pairingIdentity:error:]", 0x32u, "FindPairedPeer: '%@', %@, mismatch '%@'\n", v19, v20, v21, v22, v18);
  }

LABEL_23:
  v54 = self;
  v55 = v60;
LABEL_26:
  [(CUHomeKitManager *)v54 _findPairedPeerWithContext:v55];
LABEL_32:

LABEL_33:
}

- (void)_findPairedPeerWithContext:(id)a3
{
  v100 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 triedHomeRepairFlow] & 1) == 0)
  {
    [v4 setTriedHomeRepairFlow:1];
    homeManager = self->_homeManager;
    v98 = 0;
    v7 = [(HMHomeManager *)homeManager allPairingIdentitiesInRankOrderWithError:&v98];
    v25 = v98;
    v26 = [v7 firstObject];
    v27 = [v4 identifier];
    if (v27)
    {
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v28 = v7;
      v29 = [v28 countByEnumeratingWithState:&v94 objects:v99 count:16];
      if (v29)
      {
        v30 = v29;
        v83 = v25;
        v84 = v7;
        v31 = *v95;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v95 != v31)
            {
              objc_enumerationMutation(v28);
            }

            v33 = *(*(&v94 + 1) + 8 * i);
            v34 = [v33 identifier];
            v35 = v34;
            if (v34 && ![v34 caseInsensitiveCompare:v27])
            {
              v36 = v33;

              v26 = v36;
              goto LABEL_22;
            }
          }

          v30 = [v28 countByEnumeratingWithState:&v94 objects:v99 count:16];
        }

        while (v30);
LABEL_22:
        v25 = v83;
        v7 = v84;
      }
    }

    dispatchQueue = self->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__CUHomeKitManager__findPairedPeerWithContext___block_invoke;
    block[3] = &unk_1E73A40E0;
    block[4] = self;
    v91 = v4;
    v92 = v26;
    v93 = v25;
    v38 = v25;
    v39 = v26;
    dispatch_async(dispatchQueue, block);

    goto LABEL_51;
  }

  if (([v4 triedHAP] & 1) == 0)
  {
    [v4 setTriedHAP:1];
    v5 = [getHAPSystemKeychainStoreClass[0]() systemStore];
    v89 = 0;
    v6 = [v5 getLocalPairingIdentity:&v89];
    v7 = v89;

    if (v6)
    {
      v8 = [v6 identifier];
      if (!v8)
      {
        goto LABEL_28;
      }

      v9 = [v4 identifier];
      v10 = [v8 caseInsensitiveCompare:v9];

      if (v10)
      {
        goto LABEL_28;
      }

      v11 = [v6 publicKey];
      v12 = [v11 data];

      if (v12)
      {
        v17 = mach_absolute_time();
        UpTicksToMilliseconds(v17 - [v4 startTicks]);
        ucat = self->_ucat;
        if (ucat->var0 <= 30)
        {
          if (ucat->var0 == -1)
          {
            if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
            {
              goto LABEL_62;
            }

            ucat = self->_ucat;
          }

          v19 = [v4 identifier];
          LogPrintF(ucat, "[CUHomeKitManager _findPairedPeerWithContext:]", 0x1Eu, "FindPairedPeer found: '%@', HAP, %llu ms\n", v20, v21, v22, v23, v19);
        }

LABEL_62:
        v78 = [v4 pairedPeer];
        [v78 setPublicKey:v12];

        v79 = [v4 completion];
        v80 = [v4 pairedPeer];
        (v79)[2](v79, v80, 0);

        goto LABEL_52;
      }

      v77 = self->_ucat;
      if (v77->var0 > 90)
      {
        goto LABEL_28;
      }

      if (v77->var0 == -1)
      {
        if (!_LogCategory_Initialize(v77, 0x5Au))
        {
          goto LABEL_28;
        }

        v77 = self->_ucat;
      }

      LogPrintF(v77, "[CUHomeKitManager _findPairedPeerWithContext:]", 0x5Au, "### FindPairedPeer: '%@', no HAP public key\n", v13, v14, v15, v16, v8);
    }

    else
    {
      v40 = self->_ucat;
      if (v40->var0 > 90)
      {
LABEL_29:

        goto LABEL_30;
      }

      if (v40->var0 == -1)
      {
        if (!_LogCategory_Initialize(self->_ucat, 0x5Au))
        {
          goto LABEL_29;
        }

        v40 = self->_ucat;
      }

      v8 = [v4 identifier];
      LogPrintF(v40, "[CUHomeKitManager _findPairedPeerWithContext:]", 0x5Au, "### FindPairedPeer: '%@', no HAP identity, %{error}\n", v41, v42, v43, v44, v8);
    }

LABEL_28:

    goto LABEL_29;
  }

LABEL_30:
  if ([v4 triedAccessory])
  {
    goto LABEL_31;
  }

  [v4 setTriedAccessory:1];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v71 = self->_ucat;
    if (v71->var0 > 90)
    {
      goto LABEL_31;
    }

    if (v71->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x5Au))
      {
LABEL_31:
        v45 = [v4 userIndex];
        if (v45 < [v4 userCount])
        {
          do
          {
            v46 = [v4 users];
            v47 = [v4 userIndex];
            [v4 setUserIndex:v47 + 1];
            v48 = [v46 objectAtIndexedSubscript:v47];

            if (objc_opt_respondsToSelector())
            {
              v85[0] = MEMORY[0x1E69E9820];
              v85[1] = 3221225472;
              v85[2] = __47__CUHomeKitManager__findPairedPeerWithContext___block_invoke_4;
              v85[3] = &unk_1E73A3530;
              v85[4] = self;
              v85[5] = v48;
              v86 = v4;
              [v48 pairingIdentityWithCompletionHandler:v85];

              goto LABEL_53;
            }

            v49 = self->_ucat;
            if (v49->var0 <= 90)
            {
              if (v49->var0 == -1)
              {
                if (!_LogCategory_Initialize(self->_ucat, 0x5Au))
                {
                  goto LABEL_37;
                }

                v49 = self->_ucat;
              }

              v50 = [v4 identifier];
              v82 = [v48 name];
              LogPrintF(v49, "[CUHomeKitManager _findPairedPeerWithContext:]", 0x5Au, "### FindPairedPeer: '%@', no user identity SPI '%@'\n", v51, v52, v53, v54, v50);
            }

LABEL_37:

            v55 = [v4 userIndex];
          }

          while (v55 < [v4 userCount]);
        }

        v56 = mach_absolute_time();
        UpTicksToMilliseconds(v56 - [v4 startTicks]);
        v7 = NSErrorWithOSStatusF(4294960569, "Not found via HAP, accessory, or user", v57, v58, v59, v60, v61, v62, v81);
        v63 = self->_ucat;
        if (v63->var0 > 90)
        {
          goto LABEL_50;
        }

        if (v63->var0 == -1)
        {
          if (!_LogCategory_Initialize(self->_ucat, 0x5Au))
          {
            goto LABEL_50;
          }

          v63 = self->_ucat;
        }

        v64 = [v4 identifier];
        LogPrintF(v63, "[CUHomeKitManager _findPairedPeerWithContext:]", 0x5Au, "### FindPairedPeer failed: '%@', %{error}, %llu ms\n", v65, v66, v67, v68, v64);

LABEL_50:
        v38 = [v4 completion];
        v38[2](v38, 0, v7);
LABEL_51:

LABEL_52:
        goto LABEL_53;
      }

      v71 = self->_ucat;
    }

    v72 = [v4 identifier];
    LogPrintF(v71, "[CUHomeKitManager _findPairedPeerWithContext:]", 0x5Au, "### FindPairedPeer: '%@', no accessory identity SPI\n", v73, v74, v75, v76, v72);

    goto LABEL_31;
  }

  v69 = self->_homeManager;
  v70 = [v4 identifier];
  v87[0] = MEMORY[0x1E69E9820];
  v87[1] = 3221225472;
  v87[2] = __47__CUHomeKitManager__findPairedPeerWithContext___block_invoke_2;
  v87[3] = &unk_1E73A34E0;
  v87[4] = self;
  v88 = v4;
  [(HMHomeManager *)v69 pairingIdentityForAccessoryWithIdentifier:v70 completionHandler:v87];

LABEL_53:
}

void __47__CUHomeKitManager__findPairedPeerWithContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 120);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __47__CUHomeKitManager__findPairedPeerWithContext___block_invoke_3;
  v12[3] = &unk_1E73A40E0;
  v12[4] = v8;
  v13 = v7;
  v14 = v5;
  v15 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, v12);
}

void __47__CUHomeKitManager__findPairedPeerWithContext___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  v7 = vextq_s8(*(a1 + 32), *(a1 + 32), 8uLL);
  v8 = *(a1 + 32);
  block[2] = __47__CUHomeKitManager__findPairedPeerWithContext___block_invoke_5;
  block[3] = &unk_1E73A3508;
  v9 = *(v8 + 120);
  v13 = v7;
  v14 = *(a1 + 48);
  v15 = v5;
  v16 = v6;
  v10 = v6;
  v11 = v5;
  dispatch_async(v9, block);
}

void __47__CUHomeKitManager__findPairedPeerWithContext___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v10 = NSPrintF("user '%{mask}'", v3, v4, v5, v6, v7, v8, v9, v2);

  [*(a1 + 40) _findPairedPeerWithContext:*(a1 + 48) label:v10 pairingIdentity:*(a1 + 56) error:*(a1 + 64)];
}

- (void)_findPairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v55 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [v8 identifierStr];
  if (v10)
  {
    v15 = v10;
    goto LABEL_4;
  }

  v16 = [v8 identifier];
  v15 = [v16 UUIDString];

  if (!v15)
  {
    v38 = NSErrorWithOSStatusF(4294960591, "Bad peer identifier: '%@'", v17, v18, v11, v12, v13, v14, v8);
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x5Au))
        {
          goto LABEL_30;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUHomeKitManager _findPairedPeer:options:completion:]", 0x5Au, "### FindPairedPeer failed: %{error}\n", v34, v35, v36, v37, v38);
    }

LABEL_30:
    v9[2](v9, 0, v38);

    goto LABEL_25;
  }

LABEL_4:
  v19 = self->_ucat;
  if (v19->var0 <= 30)
  {
    if (v19->var0 == -1)
    {
      if (!_LogCategory_Initialize(v19, 0x1Eu))
      {
        goto LABEL_8;
      }

      v19 = self->_ucat;
    }

    LogPrintF(v19, "[CUHomeKitManager _findPairedPeer:options:completion:]", 0x1Eu, "FindPairedPeer start: '%@', %#{flags}\n", v11, v12, v13, v14, v15);
  }

LABEL_8:
  v20 = objc_alloc_init(CUHomeKitFindPairedPeerContext);
  v43 = v9;
  [(CUHomeKitFindPairedPeerContext *)v20 setCompletion:v9];
  v41 = v15;
  [(CUHomeKitFindPairedPeerContext *)v20 setIdentifier:v15];
  [(CUHomeKitFindPairedPeerContext *)v20 setOptions:a4];
  v44 = v8;
  [(CUHomeKitFindPairedPeerContext *)v20 setPairedPeer:v8];
  v40 = v20;
  [(CUHomeKitFindPairedPeerContext *)v20 setStartTicks:mach_absolute_time()];
  v21 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v42 = self;
  v22 = [(HMHomeManager *)self->_homeManager homes];
  v23 = [v22 countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v50;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v50 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v49 + 1) + 8 * i);
        v28 = [v27 currentUser];
        if (v28)
        {
          [v21 addObject:v28];
        }

        v47 = 0u;
        v48 = 0u;
        v45 = 0u;
        v46 = 0u;
        v29 = [v27 users];
        v30 = [v29 countByEnumeratingWithState:&v45 objects:v53 count:16];
        if (v30)
        {
          v31 = v30;
          v32 = *v46;
          do
          {
            for (j = 0; j != v31; ++j)
            {
              if (*v46 != v32)
              {
                objc_enumerationMutation(v29);
              }

              [v21 addObject:*(*(&v45 + 1) + 8 * j)];
            }

            v31 = [v29 countByEnumeratingWithState:&v45 objects:v53 count:16];
          }

          while (v31);
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v24);
  }

  [(CUHomeKitFindPairedPeerContext *)v40 setUsers:v21];
  [(CUHomeKitFindPairedPeerContext *)v40 setUserIndex:0];
  -[CUHomeKitFindPairedPeerContext setUserCount:](v40, "setUserCount:", [v21 count]);
  [(CUHomeKitManager *)v42 _findPairedPeerWithContext:v40];

  v9 = v43;
  v8 = v44;
LABEL_25:
}

- (void)findPairedPeer:(id)a3 options:(unint64_t)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  dispatchQueue = self->_dispatchQueue;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __54__CUHomeKitManager_findPairedPeer_options_completion___block_invoke;
  v13[3] = &unk_1E73A3938;
  v13[4] = self;
  v14 = v8;
  v15 = v9;
  v16 = a4;
  v11 = v9;
  v12 = v8;
  dispatch_async(dispatchQueue, v13);
}

- (void)_getPairingIdentityCompleted:(id)a3 options:(unint64_t)a4 error:(id)a5 label:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v22 = v12;
  if (v22 && !v13)
  {
    v42 = 0;
    v23 = [(CUHomeKitManager *)self _cuPairingIdentityWithHMFPairingIdentity:v22 options:a4 error:&v42];
    v30 = v42;
    ucat = self->_ucat;
    var0 = ucat->var0;
    if (v23)
    {
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
          {
            goto LABEL_18;
          }

          ucat = self->_ucat;
        }

        v41 = [v23 identifier];
        LogPrintF(ucat, "[CUHomeKitManager _getPairingIdentityCompleted:options:error:label:completion:]", 0x1Eu, "GetPairingIdentity finish: %#{flags}, %@ (%@)\n", v33, v34, v35, v36, a4);
      }

LABEL_18:
      v15[2](v15, v23, 0);
LABEL_21:

      goto LABEL_22;
    }

    if (var0 <= 90)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize(self->_ucat, 0x5Au))
        {
          goto LABEL_20;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUHomeKitManager _getPairingIdentityCompleted:options:error:label:completion:]", 0x5Au, "### GetPairingIdentity convert failed: %{error}\n", v26, v27, v28, v29, v30);
    }

LABEL_20:
    v39 = NSErrorWithOSStatusF(4294960596, "No converted identity, no error", v24, v25, v26, v27, v28, v29, v40);
    (v15)[2](v15, 0, v39);

    goto LABEL_21;
  }

  v37 = self->_ucat;
  if (v37->var0 <= 90)
  {
    if (v37->var0 != -1)
    {
LABEL_9:
      LogPrintF(v37, "[CUHomeKitManager _getPairingIdentityCompleted:options:error:label:completion:]", 0x5Au, "### GetPairingIdentity failed: %{error}\n", v18, v19, v20, v21, v13);
      goto LABEL_14;
    }

    if (_LogCategory_Initialize(v37, 0x5Au))
    {
      v37 = self->_ucat;
      goto LABEL_9;
    }
  }

LABEL_14:
  if (v13)
  {
    (v15)[2](v15, 0, v13);
  }

  else
  {
    v38 = NSErrorWithOSStatusF(4294960596, "No identity, no error", v16, v17, v18, v19, v20, v21, v40);
    (v15)[2](v15, 0, v38);
  }

LABEL_22:
}

- (void)_getPairingIdentityForLegacyWithOptions:(unint64_t)a3 user:(id)a4 nonLegacyIdentity:(id)a5 label:(id)a6 completion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (objc_opt_respondsToSelector())
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      v29 = [v12 name];
      LogPrintF(ucat, "[CUHomeKitManager _getPairingIdentityForLegacyWithOptions:user:nonLegacyIdentity:label:completion:]", 0x1Eu, "GetPairingIdentity %#{flags} via fetch all SPI '%{mask}", v17, v18, v19, v20, a3);
    }

LABEL_7:
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __100__CUHomeKitManager__getPairingIdentityForLegacyWithOptions_user_nonLegacyIdentity_label_completion___block_invoke;
    v30[3] = &unk_1E73A34B8;
    v30[4] = self;
    v31 = v13;
    v32 = v12;
    v35 = a3;
    v33 = v14;
    v34 = v15;
    [v32 fetchAllPairingIdentitiesWithCompletionHandler:v30];

    goto LABEL_8;
  }

  v21 = [v12 name];
  v28 = NSErrorWithOSStatusF(4294960569, "No HomeKit pairing identity, no fetch all SPI, '%{mask}'", v22, v23, v24, v25, v26, v27, v21);

  [(CUHomeKitManager *)self _getPairingIdentityCompleted:0 options:a3 error:v28 label:v14 completion:v15];
LABEL_8:
}

void __100__CUHomeKitManager__getPairingIdentityForLegacyWithOptions_user_nonLegacyIdentity_label_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 120);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __100__CUHomeKitManager__getPairingIdentityForLegacyWithOptions_user_nonLegacyIdentity_label_completion___block_invoke_2;
  v11[3] = &unk_1E73A3490;
  v12 = v5;
  v13 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = v6;
  v8 = *(a1 + 72);
  v16 = *(a1 + 32);
  v19 = v8;
  v17 = *(a1 + 56);
  v18 = *(a1 + 64);
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, v11);
}

void __100__CUHomeKitManager__getPairingIdentityForLegacyWithOptions_user_nonLegacyIdentity_label_completion___block_invoke_2(uint64_t a1)
{
  v34 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v30 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = *(*(&v29 + 1) + 8 * v7);
      v9 = [v8 identifier];
      v10 = v9;
      v11 = v9 ? v9 : @"?";
      [v2 addObject:v11];

      v12 = [v8 identifier];
      v13 = [*(a1 + 40) identifier];
      v14 = [v12 isEqual:v13];

      if (!v14)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v29 objects:v33 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v15 = v8;

    if (!v15)
    {
      goto LABEL_15;
    }

    v17 = *(a1 + 80);
    v16 = *(a1 + 88);
    v19 = *(a1 + 56);
    v18 = *(a1 + 64);
    v20 = *(a1 + 72);
    v21 = v15;
  }

  else
  {
LABEL_12:

LABEL_15:
    v22 = [*(a1 + 48) name];
    v15 = NSErrorWithOSStatusF(4294960569, "No HomeKit legacy pairing identity, user '%{mask}', all %##@, error %{error}", v23, v24, v25, v26, v27, v28, v22);

    v18 = *(a1 + 64);
    v20 = *(a1 + 72);
    v17 = *(a1 + 80);
    v16 = *(a1 + 88);
    v21 = 0;
    v19 = v15;
  }

  [v18 _getPairingIdentityCompleted:v21 options:v16 error:v19 label:v20 completion:v17];
}

- (void)_getPairingIdentityForUserWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v35 = 0;
  v7 = [(CUHomeKitManager *)self _bestUserAndLabel:&v35];
  v14 = v35;
  if (v7)
  {
    if (objc_opt_respondsToSelector())
    {
      ucat = self->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 == -1)
        {
          if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
          {
            goto LABEL_9;
          }

          ucat = self->_ucat;
        }

        v30 = [v7 name];
        LogPrintF(ucat, "[CUHomeKitManager _getPairingIdentityForUserWithOptions:completion:]", 0x1Eu, "GetPairingIdentity %#{flags} via SPI '%{mask}", v16, v17, v18, v19, a3);
      }

LABEL_9:
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __69__CUHomeKitManager__getPairingIdentityForUserWithOptions_completion___block_invoke;
      v31[3] = &unk_1E73A3468;
      v34 = a3;
      v31[4] = self;
      v31[5] = v7;
      v32 = v14;
      v33 = v6;
      [v7 pairingIdentityWithCompletionHandler:v31];

      goto LABEL_10;
    }

    v21 = [v7 name];
    v28 = NSErrorWithOSStatusF(4294960569, "No HomeKit user pairing identity, no SPI, '%@'", v22, v23, v24, v25, v26, v27, v21);

    [(CUHomeKitManager *)self _getPairingIdentityCompleted:0 options:a3 error:v28 label:v14 completion:v6];
  }

  else
  {
    v20 = NSErrorWithOSStatusF(4294896143, "No HomeKit user for pairing identity", v8, v9, v10, v11, v12, v13, v29);
    [(CUHomeKitManager *)self _getPairingIdentityCompleted:0 options:a3 error:v20 label:v14 completion:v6];
  }

LABEL_10:
}

void __69__CUHomeKitManager__getPairingIdentityForUserWithOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 120);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __69__CUHomeKitManager__getPairingIdentityForUserWithOptions_completion___block_invoke_2;
  block[3] = &unk_1E73A3440;
  v12 = v5;
  v17 = *(a1 + 64);
  v13 = *(a1 + 32);
  v14 = *(a1 + 48);
  v8 = *(a1 + 56);
  v15 = v6;
  v16 = v8;
  v9 = v6;
  v10 = v5;
  dispatch_async(v7, block);
}

void __69__CUHomeKitManager__getPairingIdentityForUserWithOptions_completion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 80);
  v4 = *(a1 + 40);
  if (v2)
  {
    v5 = (*(a1 + 80) & 0x100) == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v2;
  if (v5)
  {
    [v4 _getPairingIdentityCompleted:*(a1 + 32) options:v3 error:*(a1 + 64) label:*(a1 + 56) completion:*(a1 + 72)];
  }

  else
  {
    [v4 _getPairingIdentityForLegacyWithOptions:v3 user:*(a1 + 48) nonLegacyIdentity:v2 label:*(a1 + 56) completion:*(a1 + 72)];
  }
}

- (void)_getPairingIdentityForAccessoryWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  v13 = [(HMHomeManager *)self->_homeManager currentAccessory];
  if (v13)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __74__CUHomeKitManager__getPairingIdentityForAccessoryWithOptions_completion___block_invoke;
    v16[3] = &unk_1E73A3418;
    v16[4] = self;
    v18 = a3;
    v17 = v6;
    [v13 pairingIdentityWithPrivateKey:(a3 >> 1) & 1 attemptToReadFromKeychain:1 completionHandler:v16];
  }

  else
  {
    v14 = NSErrorWithOSStatusF(4294960569, "No HomeKit Self Accessory", v7, v8, v9, v10, v11, v12, v15);
    [(CUHomeKitManager *)self _getPairingIdentityCompleted:0 options:a3 error:v14 label:@"SelfAccessory" completion:v6];
  }
}

void __74__CUHomeKitManager__getPairingIdentityForAccessoryWithOptions_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[4];
  v8 = *(v7 + 120);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__CUHomeKitManager__getPairingIdentityForAccessoryWithOptions_completion___block_invoke_2;
  block[3] = &unk_1E73A33F0;
  block[4] = v7;
  v13 = v5;
  v9 = a1[5];
  v16 = a1[6];
  v14 = v6;
  v15 = v9;
  v10 = v6;
  v11 = v5;
  dispatch_async(v8, block);
}

- (void)getHomeKitLocalPairingIdentityWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 90)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x5Au))
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUHomeKitManager getHomeKitLocalPairingIdentityWithOptions:completion:]", 0x5Au, "### getHomeKitLocalPairingIdentityWithOptions: no identities for repair flow SPI\n", v9, v10, v11, v12, v20[0]);
    }

LABEL_7:
    v17 = NSErrorWithOSStatusF(4294960561, "HomeKit does not support this SPI on this platform", v7, v8, v9, v10, v11, v12, v20[0]);
    v6[2](v6, 0, v17);
    goto LABEL_8;
  }

  homeManager = self->_homeManager;
  v25 = 0;
  v14 = [(HMHomeManager *)homeManager allPairingIdentitiesInRankOrderWithError:&v25];
  v15 = v25;
  dispatchQueue = self->_dispatchQueue;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __73__CUHomeKitManager_getHomeKitLocalPairingIdentityWithOptions_completion___block_invoke;
  v20[3] = &unk_1E73A33F0;
  v20[4] = self;
  v21 = v14;
  v24 = a3;
  v22 = v15;
  v23 = v6;
  v17 = v15;
  v18 = v14;
  dispatch_async(dispatchQueue, v20);

LABEL_8:
}

void __73__CUHomeKitManager_getHomeKitLocalPairingIdentityWithOptions_completion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) firstObject];
  [v2 _getPairingIdentityCompleted:v3 options:*(a1 + 64) error:*(a1 + 48) label:@"HomeKitLocalKey" completion:*(a1 + 56)];
}

- (void)getPairingIdentityWithOptions:(unint64_t)a3 completion:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__CUHomeKitManager_getPairingIdentityWithOptions_completion___block_invoke;
  block[3] = &unk_1E73A4BB0;
  v10 = v6;
  v11 = a3;
  block[4] = self;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

uint64_t __61__CUHomeKitManager_getPairingIdentityWithOptions_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = v9[12];
  if (*v10 <= 30)
  {
    if (*v10 != -1)
    {
LABEL_3:
      LogPrintF(v10, "[CUHomeKitManager getPairingIdentityWithOptions:completion:]_block_invoke", 0x1Eu, "GetPairingIdentity start: %#{flags}\n", a5, a6, a7, a8, *(a1 + 48));
      v9 = *(a1 + 32);
      goto LABEL_5;
    }

    v11 = _LogCategory_Initialize(v9[12], 0x1Eu);
    v9 = *(a1 + 32);
    if (v11)
    {
      v10 = v9[12];
      goto LABEL_3;
    }
  }

LABEL_5:
  if ((*(a1 + 48) & 0x10) != 0)
  {

    return [v9 _getPairingIdentityForAccessoryWithOptions:? completion:?];
  }

  else
  {

    return [v9 _getPairingIdentityForUserWithOptions:? completion:?];
  }
}

- (void)_updateUsers
{
  v71 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v4 = [(HMHomeManager *)self->_homeManager homes];
  v5 = [v4 countByEnumeratingWithState:&v63 objects:v70 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v64;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v64 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v63 + 1) + 8 * i) currentUser];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v63 objects:v70 count:16];
    }

    while (v6);
  }

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  obj = v3;
  v10 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
  if (!v10)
  {
    v48 = 0;
    goto LABEL_31;
  }

  v11 = v10;
  v48 = 0;
  v12 = *v60;
  do
  {
    v13 = 0;
    do
    {
      if (*v60 != v12)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v59 + 1) + 8 * v13);
      v15 = [v14 uniqueIdentifier];
      if (v15)
      {
        v16 = [(NSMutableDictionary *)self->_users objectForKeyedSubscript:v15];
        if (!v16)
        {
          ucat = self->_ucat;
          if (ucat->var0 <= 30)
          {
            if (ucat->var0 != -1)
            {
              goto LABEL_19;
            }

            if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
            {
              ucat = self->_ucat;
LABEL_19:
              v45 = [v14 userID];
              LogPrintF(ucat, "[CUHomeKitManager _updateUsers]", 0x1Eu, "FoundCurrentUser: %@, %{mask}", v18, v19, v20, v21, v15);
            }
          }

          [v14 setDelegate:self];
          users = self->_users;
          if (!users)
          {
            v23 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v24 = self->_users;
            self->_users = v23;

            users = self->_users;
          }

          [(NSMutableDictionary *)users setObject:v14 forKeyedSubscript:v15];
          v48 = 1;
        }
      }

      ++v13;
    }

    while (v11 != v13);
    v25 = [obj countByEnumeratingWithState:&v59 objects:v69 count:16];
    v11 = v25;
  }

  while (v25);
LABEL_31:

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v47 = [(NSMutableDictionary *)self->_users allKeys];
  v26 = [v47 countByEnumeratingWithState:&v55 objects:v68 count:16];
  if (!v26)
  {
    goto LABEL_53;
  }

  v27 = v26;
  v49 = *v56;
  while (2)
  {
    v28 = 0;
    while (2)
    {
      if (*v56 != v49)
      {
        objc_enumerationMutation(v47);
      }

      v29 = *(*(&v55 + 1) + 8 * v28);
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v54 = 0u;
      v30 = obj;
      v31 = [v30 countByEnumeratingWithState:&v51 objects:v67 count:16];
      if (!v31)
      {
LABEL_44:

        v30 = [(NSMutableDictionary *)self->_users objectForKeyedSubscript:v29];
        v37 = self->_ucat;
        if (v37->var0 <= 30)
        {
          if (v37->var0 == -1)
          {
            if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
            {
              goto LABEL_48;
            }

            v37 = self->_ucat;
          }

          v38 = [v30 uniqueIdentifier];
          v46 = [v30 userID];
          LogPrintF(v37, "[CUHomeKitManager _updateUsers]", 0x1Eu, "LostCurrentUser: %@, %{mask}", v39, v40, v41, v42, v38);
        }

LABEL_48:
        [v30 setDelegate:0];
        [(NSMutableDictionary *)self->_users setObject:0 forKeyedSubscript:v29];
        v48 = 1;
        goto LABEL_49;
      }

      v32 = v31;
      v33 = *v52;
LABEL_38:
      v34 = 0;
      while (1)
      {
        if (*v52 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = [*(*(&v51 + 1) + 8 * v34) uniqueIdentifier];
        v36 = [v35 isEqual:v29];

        if (v36)
        {
          break;
        }

        if (v32 == ++v34)
        {
          v32 = [v30 countByEnumeratingWithState:&v51 objects:v67 count:16];
          if (v32)
          {
            goto LABEL_38;
          }

          goto LABEL_44;
        }
      }

LABEL_49:

      if (++v28 != v27)
      {
        continue;
      }

      break;
    }

    v43 = [v47 countByEnumeratingWithState:&v55 objects:v68 count:16];
    v27 = v43;
    if (v43)
    {
      continue;
    }

    break;
  }

LABEL_53:

  if ((v48 & 1) != 0 && self->_state == 1)
  {
    stateChangedHandler = self->_stateChangedHandler;
    if (stateChangedHandler)
    {
      stateChangedHandler[2](stateChangedHandler, 1);
    }
  }
}

- (void)_updateState
{
  if (self->_homeManagerDidUpdateHomes && (v7 = [(HMHomeManager *)self->_homeManager dataSyncState], v7 <= 5))
  {
    v8 = dword_191FF9D30[v7];
  }

  else
  {
    v8 = 0;
  }

  state = self->_state;
  if (v8 != state)
  {
    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_14;
    }

    if (ucat->var0 == -1)
    {
      if (!_LogCategory_Initialize(ucat, 0x1Eu))
      {
        goto LABEL_14;
      }

      ucat = self->_ucat;
      state = self->_state;
    }

    if (state > 5)
    {
      v11 = "?";
    }

    else
    {
      v11 = off_1E73A3568[state];
    }

    LogPrintF(ucat, "[CUHomeKitManager _updateState]", 0x1Eu, "HomeKit state updated: %s -> %s\n", v2, v3, v4, v5, v11);
LABEL_14:
    self->_state = v8;
    stateChangedHandler = self->_stateChangedHandler;
    if (stateChangedHandler)
    {
      v13 = *(stateChangedHandler + 2);

      v13();
    }
  }
}

- (void)_updateSelfAccessorySiriAccess
{
  v30 = *MEMORY[0x1E69E9840];
  if (self->_selfAccessorySiriAccessEnabled)
  {
    v3 = [(HMAccessory *)self->_selfAccessory home];
    v4 = v3;
    if (!v3)
    {
LABEL_30:

      return;
    }

    v5 = [v3 currentUser];
    v6 = v5;
    if (!v5)
    {
LABEL_29:

      goto LABEL_30;
    }

    v7 = [v5 assistantAccessControlForHome:v4];
    selfAccessorySiriEnabled = self->_selfAccessorySiriEnabled;
    if ([v7 isEnabled])
    {
      v9 = [(HMAccessory *)self->_selfAccessory uniqueIdentifier];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v10 = [v7 accessories];
      v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v11)
      {
        v23 = selfAccessorySiriEnabled;
        v24 = v7;
        v12 = *v26;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = [*(*(&v25 + 1) + 8 * i) uniqueIdentifier];
            v15 = [v14 isEqual:v9];

            if (v15)
            {
              LODWORD(v11) = 1;
              goto LABEL_16;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }

LABEL_16:
        v7 = v24;
        selfAccessorySiriEnabled = v23;
      }
    }

    else
    {
      LODWORD(v11) = 0;
    }

    if (selfAccessorySiriEnabled == v11)
    {
LABEL_28:

      goto LABEL_29;
    }

    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_21:
        if (selfAccessorySiriEnabled)
        {
          v17 = "yes";
        }

        else
        {
          v17 = "no";
        }

        [v7 isEnabled];
        LogPrintF(ucat, "[CUHomeKitManager _updateSelfAccessorySiriAccess]", 0x1Eu, "SelfAccessory SiriAccess per-accessory updated: %s -> %s (global %s)\n", v18, v19, v20, v21, v17);
        goto LABEL_26;
      }

      if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
        ucat = self->_ucat;
        goto LABEL_21;
      }
    }

LABEL_26:
    self->_selfAccessorySiriEnabled = v11;
    selfAccessorySiriAccessUpdatedHandler = self->_selfAccessorySiriAccessUpdatedHandler;
    if (selfAccessorySiriAccessUpdatedHandler)
    {
      selfAccessorySiriAccessUpdatedHandler[2]();
    }

    goto LABEL_28;
  }
}

- (void)_updateSelfAccessoryMediaSystem
{
  v95 = *MEMORY[0x1E69E9840];
  if (self->_selfAccessoryMediaSystemEnabled)
  {
    v93 = 0;
    v3 = [(CUHomeKitManager *)self _selfAccessoryMediaSystemUncached:&v93];
    v4 = v93;
    v5 = v4;
    if (v3 && v4)
    {
      v6 = [v3 uniqueIdentifier];
      v7 = [(HMMediaSystem *)self->_selfAccessoryMediaSystem uniqueIdentifier];
      v8 = v6;
      v9 = v7;
      selfAccessoryMediaSystem = v9;
      v11 = v8 != v9;
      if (v8 == v9)
      {

LABEL_22:
LABEL_23:
        v30 = self->_selfAccessoryMediaSystemName;
        v31 = [v3 name];
        v32 = v30;
        v33 = v31;
        v34 = v33;
        if (v32 == v33)
        {

          selfAccessoryMediaSystemName = v32;
LABEL_34:

          goto LABEL_35;
        }

        if ((v32 != 0) != (v33 == 0))
        {
          v35 = [(NSString *)v32 isEqual:v33];

          if (v35)
          {
LABEL_35:
            v85 = v34;
            v86 = v32;
            v87 = v8;
            v88 = v5;
            v43 = [v5 role];
            v44 = [v43 type];
            selfAccessoryMediaSystemRole = self->_selfAccessoryMediaSystemRole;
            v46 = v43;
            v47 = selfAccessoryMediaSystemRole;
            v48 = v47;
            if (v46 == v47)
            {

              v54 = v46;
LABEL_50:

              goto LABEL_51;
            }

            if ((v46 != 0) != (v47 == 0))
            {
              v49 = [(HMMediaSystemRole *)v46 isEqual:v47];

              if (v49)
              {
LABEL_51:
                v84 = v11;
                if (v44 == 1)
                {
                  v58 = 2;
                }

                else
                {
                  v58 = v44 == 2;
                }

                if (v58)
                {
                  v91 = 0u;
                  v92 = 0u;
                  v89 = 0u;
                  v90 = 0u;
                  v59 = [v3 components];
                  v60 = [v59 countByEnumeratingWithState:&v89 objects:v94 count:16];
                  if (v60)
                  {
                    v61 = v60;
                    v83 = v3;
                    v62 = *v90;
                    while (2)
                    {
                      for (i = 0; i != v61; ++i)
                      {
                        if (*v90 != v62)
                        {
                          objc_enumerationMutation(v59);
                        }

                        v64 = *(*(&v89 + 1) + 8 * i);
                        v65 = [v64 role];
                        v66 = [v65 type];

                        if (v66 == v58)
                        {
                          v68 = [v64 mediaProfile];
                          v67 = [v68 accessory];

                          goto LABEL_65;
                        }
                      }

                      v61 = [v59 countByEnumeratingWithState:&v89 objects:v94 count:16];
                      if (v61)
                      {
                        continue;
                      }

                      break;
                    }

                    v67 = 0;
LABEL_65:
                    v3 = v83;
                  }

                  else
                  {
                    v67 = 0;
                  }
                }

                else
                {
                  v67 = 0;
                }

                v69 = [(HMAccessory *)self->_selfAccessoryMediaSystemCounterpart uniqueIdentifier];
                v70 = [v67 uniqueIdentifier];
                v71 = v69;
                v72 = v71;
                if (v70 == v71)
                {
                }

                else
                {
                  if ((v71 == 0) == (v70 != 0))
                  {

                    goto LABEL_77;
                  }

                  v73 = [v70 isEqual:v71];

                  if ((v73 & 1) == 0)
                  {
LABEL_77:
                    ucat = self->_ucat;
                    if (ucat->var0 <= 30)
                    {
                      if (ucat->var0 == -1)
                      {
                        if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
                        {
                          goto LABEL_81;
                        }

                        ucat = self->_ucat;
                      }

                      v82 = [v67 name];
                      LogPrintF(ucat, "[CUHomeKitManager _updateSelfAccessoryMediaSystem]", 0x1Eu, "SelfAccessoryMediaSystemCounterpart updated: %@ '%@'\n", v75, v76, v77, v78, v70);
                    }

LABEL_81:
                    objc_storeStrong(&self->_selfAccessoryMediaSystemCounterpart, v67);
                    goto LABEL_82;
                  }
                }

                if (!v84)
                {
LABEL_84:

                  v5 = v88;
                  goto LABEL_85;
                }

LABEL_82:
                selfAccessoryMediaSystemUpdatedHandler = self->_selfAccessoryMediaSystemUpdatedHandler;
                if (selfAccessoryMediaSystemUpdatedHandler)
                {
                  selfAccessoryMediaSystemUpdatedHandler[2]();
                }

                goto LABEL_84;
              }
            }

            else
            {
            }

            v55 = self->_ucat;
            if (v55->var0 <= 30)
            {
              if (v55->var0 != -1)
              {
LABEL_43:
                if (v44 > 2)
                {
                  v56 = "?";
                }

                else
                {
                  v56 = off_1E73A3550[v44];
                }

                LogPrintF(v55, "[CUHomeKitManager _updateSelfAccessoryMediaSystem]", 0x1Eu, "SelfAccessoryMediaSystemRole updated: %s\n", v50, v51, v52, v53, v56);
                goto LABEL_49;
              }

              if (_LogCategory_Initialize(v55, 0x1Eu))
              {
                v55 = self->_ucat;
                goto LABEL_43;
              }
            }

LABEL_49:
            v57 = v46;
            v54 = self->_selfAccessoryMediaSystemRole;
            self->_selfAccessoryMediaSystemRole = v57;
            v11 = 1;
            goto LABEL_50;
          }
        }

        else
        {
        }

        v41 = self->_ucat;
        if (v41->var0 <= 30)
        {
          if (v41->var0 == -1)
          {
            if (!_LogCategory_Initialize(v41, 0x1Eu))
            {
              goto LABEL_33;
            }

            v41 = self->_ucat;
          }

          LogPrintF(v41, "[CUHomeKitManager _updateSelfAccessoryMediaSystem]", 0x1Eu, "SelfAccessoryMediaSystem name updated: '%@' -> '%@'\n", v36, v37, v38, v39, v32);
        }

LABEL_33:
        v42 = v34;
        selfAccessoryMediaSystemName = self->_selfAccessoryMediaSystemName;
        self->_selfAccessoryMediaSystemName = v42;
        v11 = 1;
        goto LABEL_34;
      }

      if ((v8 != 0) != (v9 == 0))
      {
        v12 = [(HMMediaSystem *)v8 isEqual:v9];

        if (v12)
        {
          v11 = 0;
          goto LABEL_23;
        }
      }

      else
      {
      }

      v23 = self->_ucat;
      if (v23->var0 <= 30)
      {
        if (v23->var0 == -1)
        {
          if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
          {
            goto LABEL_21;
          }

          v23 = self->_ucat;
        }

        v81 = [v3 name];
        LogPrintF(v23, "[CUHomeKitManager _updateSelfAccessoryMediaSystem]", 0x1Eu, "SelfAccessoryMediaSystem ID updated: %@ '%@'\n", v24, v25, v26, v27, v8);
      }

LABEL_21:
      [v3 setDelegate:self];
      v29 = v3;
      selfAccessoryMediaSystem = self->_selfAccessoryMediaSystem;
      self->_selfAccessoryMediaSystem = v29;
      goto LABEL_22;
    }

    v13 = self->_selfAccessoryMediaSystem;
    [(HMMediaSystem *)v13 setDelegate:0];
    v14 = self->_selfAccessoryMediaSystem;
    self->_selfAccessoryMediaSystem = 0;

    selfAccessoryMediaSystemCounterpart = self->_selfAccessoryMediaSystemCounterpart;
    self->_selfAccessoryMediaSystemCounterpart = 0;

    v16 = self->_selfAccessoryMediaSystemName;
    self->_selfAccessoryMediaSystemName = 0;

    v17 = self->_selfAccessoryMediaSystemRole;
    self->_selfAccessoryMediaSystemRole = 0;

    if (!v13)
    {
LABEL_85:

      return;
    }

    v22 = self->_ucat;
    if (v22->var0 <= 30)
    {
      if (v22->var0 != -1)
      {
LABEL_11:
        LogPrintF(v22, "[CUHomeKitManager _updateSelfAccessoryMediaSystem]", 0x1Eu, "SelfAccessoryMediaSystem removed\n", v18, v19, v20, v21, v80);
        goto LABEL_18;
      }

      if (_LogCategory_Initialize(v22, 0x1Eu))
      {
        v22 = self->_ucat;
        goto LABEL_11;
      }
    }

LABEL_18:
    v28 = self->_selfAccessoryMediaSystemUpdatedHandler;
    if (v28)
    {
      v28[2]();
    }

    goto LABEL_85;
  }
}

- (void)_updateSelfAccessoryMediaAccess
{
  if (!self->_selfAccessoryMediaAccessEnabled)
  {
    return;
  }

  v4 = [(HMAccessory *)self->_selfAccessory home];
  if (v4)
  {
    selfAccessoryMediaAccessFlags = self->_selfAccessoryMediaAccessFlags;
    v42 = v4;
    v6 = [v4 isMediaPeerToPeerEnabled];
    v11 = (selfAccessoryMediaAccessFlags >> 1) & 1;
    v12 = v11 != v6;
    if (v11 == v6)
    {
      v16 = self->_selfAccessoryMediaAccessFlags;
      goto LABEL_17;
    }

    v13 = v6;
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 != -1)
      {
LABEL_6:
        if ((selfAccessoryMediaAccessFlags & 2) != 0)
        {
          v15 = "yes";
        }

        else
        {
          v15 = "no";
        }

        LogPrintF(ucat, "[CUHomeKitManager _updateSelfAccessoryMediaAccess]", 0x1Eu, "SelfAccessory MediaAccess P2PAllowed updated: %s -> %s\n", v7, v8, v9, v10, v15);
        goto LABEL_13;
      }

      if (_LogCategory_Initialize(ucat, 0x1Eu))
      {
        ucat = self->_ucat;
        goto LABEL_6;
      }
    }

LABEL_13:
    v17 = self->_selfAccessoryMediaAccessFlags & 0xFFFFFFFD;
    if (v13)
    {
      v18 = 2;
    }

    else
    {
      v18 = 0;
    }

    LOBYTE(v16) = v17 | v18;
    self->_selfAccessoryMediaAccessFlags = v17 | v18;
LABEL_17:
    v19 = [v42 minimumMediaUserPrivilege];
    if ((v19 != 0) == (v16 & 1))
    {
      goto LABEL_28;
    }

    v24 = v19;
    v25 = self->_ucat;
    if (v25->var0 <= 30)
    {
      if (v25->var0 != -1)
      {
LABEL_20:
        if (v16)
        {
          v26 = "yes";
        }

        else
        {
          v26 = "no";
        }

        LogPrintF(v25, "[CUHomeKitManager _updateSelfAccessoryMediaAccess]", 0x1Eu, "SelfAccessory MediaAccess HomeOnly updated: %s -> %s\n", v20, v21, v22, v23, v26);
        goto LABEL_25;
      }

      if (_LogCategory_Initialize(v25, 0x1Eu))
      {
        v25 = self->_ucat;
        goto LABEL_20;
      }
    }

LABEL_25:
    v27 = self->_selfAccessoryMediaAccessFlags & 0xFFFFFFFE;
    if (v24)
    {
      ++v27;
    }

    self->_selfAccessoryMediaAccessFlags = v27;
    v12 = 1;
LABEL_28:
    v28 = [v42 mediaPassword];
    selfAccessoryMediaAccessPassword = self->_selfAccessoryMediaAccessPassword;
    v30 = v28;
    v31 = selfAccessoryMediaAccessPassword;
    v32 = v31;
    if (v30 == v31)
    {
    }

    else
    {
      if ((v30 != 0) == (v31 == 0))
      {

        goto LABEL_36;
      }

      v33 = [(NSString *)v30 isEqual:v31];

      if ((v33 & 1) == 0)
      {
LABEL_36:
        v34 = self->_ucat;
        if (v34->var0 <= 30)
        {
          if (v34->var0 != -1)
          {
LABEL_38:
            v35 = [(NSString *)v30 length];
            v40 = "set";
            if (!v35)
            {
              v40 = "not set";
            }

            LogPrintF(v34, "[CUHomeKitManager _updateSelfAccessoryMediaAccess]", 0x1Eu, "SelfAccessory MediaAccess password updated: %s\n", v36, v37, v38, v39, v40);
            goto LABEL_42;
          }

          if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
          {
            v34 = self->_ucat;
            goto LABEL_38;
          }
        }

LABEL_42:
        objc_storeStrong(&self->_selfAccessoryMediaAccessPassword, v28);
        goto LABEL_43;
      }
    }

    if (!v12)
    {
LABEL_45:

      v4 = v42;
      goto LABEL_46;
    }

LABEL_43:
    selfAccessoryMediaAccessUpdatedHandler = self->_selfAccessoryMediaAccessUpdatedHandler;
    if (selfAccessoryMediaAccessUpdatedHandler)
    {
      selfAccessoryMediaAccessUpdatedHandler[2]();
    }

    goto LABEL_45;
  }

LABEL_46:
}

- (void)_updateSelfAccessoryIfNeeded
{
  if (!self->_selfAccessoryEnabled)
  {
    return;
  }

  v4 = [(HMHomeManager *)self->_homeManager currentAccessory];
  obj = v4;
  if (!v4)
  {
    v7 = [(HMAccessory *)self->_selfAccessory uniqueIdentifier];
    selfAccessory = self->_selfAccessory;
    if (!selfAccessory)
    {
      v23 = 0;
      goto LABEL_32;
    }

    ucat = self->_ucat;
    if (ucat->var0 > 30)
    {
      goto LABEL_30;
    }

    if (ucat->var0 == -1)
    {
      v32 = _LogCategory_Initialize(self->_ucat, 0x1Eu);
      selfAccessory = self->_selfAccessory;
      if (!v32)
      {
        goto LABEL_30;
      }

      ucat = self->_ucat;
    }

    v64 = [(HMAccessory *)selfAccessory name];
    LogPrintF(ucat, "[CUHomeKitManager _updateSelfAccessoryIfNeeded]", 0x1Eu, "LostSelfAccessory: %@ (%@)\n", v13, v14, v15, v16, v7);

    selfAccessory = self->_selfAccessory;
LABEL_30:
    [(HMAccessory *)selfAccessory setDelegate:self];
    v33 = self->_selfAccessory;
    self->_selfAccessory = 0;

    goto LABEL_31;
  }

  v5 = [v4 uniqueIdentifier];
  v6 = [(HMAccessory *)self->_selfAccessory uniqueIdentifier];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {

    goto LABEL_13;
  }

  if ((v7 != 0) == (v8 == 0))
  {

    goto LABEL_18;
  }

  v10 = [v7 isEqual:v8];

  if (v10)
  {
LABEL_13:
    v17 = [obj room];
    v18 = [v17 uniqueIdentifier];

    selfAccessoryRoomID = self->_selfAccessoryRoomID;
    v20 = v18;
    v21 = selfAccessoryRoomID;
    v22 = v21;
    v23 = v20 != v21;
    if (v20 == v21)
    {

      v30 = v20;
    }

    else
    {
      if ((v20 != 0) != (v21 == 0))
      {
        v24 = [(NSUUID *)v20 isEqual:v21];

        if (v24)
        {
          v23 = 0;
LABEL_26:

          goto LABEL_32;
        }
      }

      else
      {
      }

      v31 = v20;
      v30 = self->_selfAccessoryRoomID;
      self->_selfAccessoryRoomID = v31;
    }

    goto LABEL_26;
  }

LABEL_18:
  v25 = self->_ucat;
  if (v25->var0 <= 30)
  {
    if (v25->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
        goto LABEL_28;
      }

      v25 = self->_ucat;
    }

    v65 = [obj name];
    LogPrintF(v25, "[CUHomeKitManager _updateSelfAccessoryIfNeeded]", 0x1Eu, "FoundSelfAccessory: %@ (%@)\n", v26, v27, v28, v29, v7);
  }

LABEL_28:
  objc_storeStrong(&self->_selfAccessory, obj);
  [(HMAccessory *)self->_selfAccessory setDelegate:self];
LABEL_31:
  v23 = 1;
LABEL_32:

  v34 = [obj home];
  v35 = [v34 currentUser];

  v36 = [(HMUser *)v35 uniqueIdentifier];
  v37 = [(HMUser *)self->_selfAccessoryUser uniqueIdentifier];
  v38 = v36;
  v39 = v37;
  v40 = v39;
  if (v38 == v39)
  {

    if (!v23)
    {
      goto LABEL_50;
    }

    goto LABEL_48;
  }

  if ((v38 != 0) == (v39 == 0))
  {
  }

  else
  {
    v41 = [v38 isEqual:v39];

    if (v41)
    {
      if (!v23)
      {
        goto LABEL_50;
      }

      goto LABEL_48;
    }
  }

  v42 = self->_ucat;
  if (v42->var0 <= 30)
  {
    if (v42->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
        goto LABEL_44;
      }

      v42 = self->_ucat;
    }

    v43 = [(HMUser *)v35 userID];
    LogPrintF(v42, "[CUHomeKitManager _updateSelfAccessoryIfNeeded]", 0x1Eu, "SelfAccessory user updated: %{mask}", v44, v45, v46, v47, v43);
  }

LABEL_44:
  if (v35)
  {
    selfAccessoryUser = v35;
    v49 = self;
  }

  else
  {
    selfAccessoryUser = self->_selfAccessoryUser;
    v49 = 0;
  }

  [(HMUser *)selfAccessoryUser setDelegate:v49];
  objc_storeStrong(&self->_selfAccessoryUser, v35);
LABEL_48:
  selfAccessoryUpdatedHandler = self->_selfAccessoryUpdatedHandler;
  if (selfAccessoryUpdatedHandler)
  {
    selfAccessoryUpdatedHandler[2]();
  }

LABEL_50:
  v51 = [(HMAccessory *)self->_selfAccessory applicationData];
  v52 = [v51 dictionary];

  selfAccessoryAppData = self->_selfAccessoryAppData;
  v54 = v52;
  v55 = selfAccessoryAppData;
  v56 = v55;
  if (v54 != v55)
  {
    if ((v54 != 0) != (v55 == 0))
    {
      v57 = [(NSDictionary *)v54 isEqual:v55];

      if (v57)
      {
        goto LABEL_62;
      }
    }

    else
    {
    }

    v62 = self->_ucat;
    if (v62->var0 <= 30)
    {
      if (v62->var0 != -1)
      {
LABEL_58:
        LogPrintF(v62, "[CUHomeKitManager _updateSelfAccessoryIfNeeded]", 0x1Eu, "SelfAccessory AppData changed: %##@", v58, v59, v60, v61, v54);
        goto LABEL_60;
      }

      if (_LogCategory_Initialize(v62, 0x1Eu))
      {
        v62 = self->_ucat;
        goto LABEL_58;
      }
    }

LABEL_60:
    objc_storeStrong(&self->_selfAccessoryAppData, v52);
    selfAccessoryAppDataChangedHandler = self->_selfAccessoryAppDataChangedHandler;
    if (selfAccessoryAppDataChangedHandler)
    {
      selfAccessoryAppDataChangedHandler[2](selfAccessoryAppDataChangedHandler, v54);
    }

    goto LABEL_62;
  }

LABEL_62:
  [(CUHomeKitManager *)self _updateSelfAccessoryMediaAccess];
  [(CUHomeKitManager *)self _updateSelfAccessoryMediaSystem];
  [(CUHomeKitManager *)self _updateSelfAccessorySiriAccess];
}

- (void)_updateHomes
{
  v61 = *MEMORY[0x1E69E9840];
  if (self->_homeManagerDidUpdateHomes)
  {
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v7 = [(HMHomeManager *)self->_homeManager homes];
    v8 = [v7 countByEnumeratingWithState:&v54 objects:v60 count:16];
    if (!v8)
    {
      goto LABEL_19;
    }

    v9 = v8;
    v10 = *v55;
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v55 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v54 + 1) + 8 * v11);
        v13 = [v12 uniqueIdentifier];
        v14 = [(NSMutableDictionary *)self->_homes objectForKeyedSubscript:v13];

        if (!v14)
        {
          ucat = self->_ucat;
          if (ucat->var0 <= 30)
          {
            if (ucat->var0 != -1)
            {
              goto LABEL_10;
            }

            if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
            {
              ucat = self->_ucat;
LABEL_10:
              v42 = [v12 name];
              LogPrintF(ucat, "[CUHomeKitManager _updateHomes]", 0x1Eu, "FoundHome: %@ (%@)\n", v16, v17, v18, v19, v13);
            }
          }

          [v12 setDelegate:self];
          homes = self->_homes;
          if (!homes)
          {
            v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v22 = self->_homes;
            self->_homes = v21;

            homes = self->_homes;
          }

          [(NSMutableDictionary *)homes setObject:v12 forKeyedSubscript:v13];
        }

        ++v11;
      }

      while (v9 != v11);
      v23 = [v7 countByEnumeratingWithState:&v54 objects:v60 count:16];
      v9 = v23;
      if (!v23)
      {
LABEL_19:

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        obj = [(NSMutableDictionary *)self->_homes allKeys];
        v24 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
        if (!v24)
        {
          goto LABEL_41;
        }

        v25 = v24;
        v45 = *v51;
        while (1)
        {
          v26 = 0;
          do
          {
            if (*v51 != v45)
            {
              objc_enumerationMutation(obj);
            }

            v27 = *(*(&v50 + 1) + 8 * v26);
            v46 = 0u;
            v47 = 0u;
            v48 = 0u;
            v49 = 0u;
            v28 = [(HMHomeManager *)self->_homeManager homes];
            v29 = [v28 countByEnumeratingWithState:&v46 objects:v58 count:16];
            if (!v29)
            {
LABEL_32:

              v28 = [(NSMutableDictionary *)self->_homes objectForKeyedSubscript:v27];
              v35 = self->_ucat;
              if (v35->var0 <= 30)
              {
                if (v35->var0 != -1)
                {
                  goto LABEL_34;
                }

                if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
                {
                  v35 = self->_ucat;
LABEL_34:
                  v43 = [v28 name];
                  LogPrintF(v35, "[CUHomeKitManager _updateHomes]", 0x1Eu, "LostHome: %@ (%@)\n", v36, v37, v38, v39, v27);
                }
              }

              [v28 setDelegate:0];
              [(NSMutableDictionary *)self->_homes setObject:0 forKeyedSubscript:v27];
              goto LABEL_37;
            }

            v30 = v29;
            v31 = *v47;
LABEL_26:
            v32 = 0;
            while (1)
            {
              if (*v47 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = [*(*(&v46 + 1) + 8 * v32) uniqueIdentifier];
              v34 = [v33 isEqual:v27];

              if (v34)
              {
                break;
              }

              if (v30 == ++v32)
              {
                v30 = [v28 countByEnumeratingWithState:&v46 objects:v58 count:16];
                if (v30)
                {
                  goto LABEL_26;
                }

                goto LABEL_32;
              }
            }

LABEL_37:

            ++v26;
          }

          while (v26 != v25);
          v40 = [obj countByEnumeratingWithState:&v50 objects:v59 count:16];
          v25 = v40;
          if (!v40)
          {
LABEL_41:

            [(CUHomeKitManager *)self _updateUsers];
            [(CUHomeKitManager *)self _updateSelfAccessoryIfNeeded];
            [(CUHomeKitManager *)self _updateAccessories];
            return;
          }
        }
      }
    }
  }

  v41 = self->_ucat;
  if (v41->var0 <= 30)
  {
    if (v41->var0 == -1)
    {
      if (!_LogCategory_Initialize(v41, 0x1Eu))
      {
        return;
      }

      v41 = self->_ucat;
    }

    LogPrintF(v41, "[CUHomeKitManager _updateHomes]", 0x1Eu, "Ignoring update homes before homeManagerDidUpdateHomes", v2, v3, v4, v5, v63);
  }
}

- (void)_updateAccessories
{
  v2 = self;
  v111 = *MEMORY[0x1E69E9840];
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  v105 = 0u;
  obj = [(NSMutableDictionary *)self->_resolvableAccessoriesMap allKeys];
  v82 = v2;
  v77 = [obj countByEnumeratingWithState:&v102 objects:v110 count:16];
  if (!v77)
  {
    v76 = 0;
    goto LABEL_38;
  }

  v76 = 0;
  v74 = *v103;
  do
  {
    v3 = 0;
    do
    {
      if (*v103 != v74)
      {
        objc_enumerationMutation(obj);
      }

      v79 = v3;
      v4 = *(*(&v102 + 1) + 8 * v3);
      v98 = 0u;
      v99 = 0u;
      v100 = 0u;
      v101 = 0u;
      v81 = [(HMHomeManager *)v2->_homeManager homes];
      v5 = [v81 countByEnumeratingWithState:&v98 objects:v109 count:16];
      if (v5)
      {
        v6 = v5;
        v83 = *v99;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v99 != v83)
            {
              objc_enumerationMutation(v81);
            }

            v8 = *(*(&v98 + 1) + 8 * i);
            v94 = 0u;
            v95 = 0u;
            v96 = 0u;
            v97 = 0u;
            v9 = [v8 accessories];
            v10 = [v9 countByEnumeratingWithState:&v94 objects:v108 count:16];
            if (v10)
            {
              v11 = v10;
              v12 = *v95;
LABEL_13:
              v13 = 0;
              while (1)
              {
                if (*v95 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v94 + 1) + 8 * v13);
                v15 = [v14 uniqueIdentifier];
                v16 = [v15 isEqual:v4];

                if (v16)
                {
                  break;
                }

                if (v11 == ++v13)
                {
                  v11 = [v9 countByEnumeratingWithState:&v94 objects:v108 count:16];
                  if (v11)
                  {
                    goto LABEL_13;
                  }

                  goto LABEL_19;
                }
              }

              v17 = v14;

              if (!v17)
              {
                goto LABEL_21;
              }

              v2 = v82;
              goto LABEL_29;
            }

LABEL_19:

LABEL_21:
            v2 = v82;
          }

          v6 = [v81 countByEnumeratingWithState:&v98 objects:v109 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      v17 = [(NSMutableDictionary *)v2->_resolvableAccessoriesMap objectForKeyedSubscript:v4];
      [(NSMutableDictionary *)v2->_resolvableAccessoriesMap setObject:0 forKeyedSubscript:v4];
      v81 = [v17 accessory];
      [v81 setDelegate:0];
      ucat = v2->_ucat;
      if (ucat->var0 <= 30)
      {
        if (ucat->var0 != -1)
        {
          v19 = v79;
          goto LABEL_26;
        }

        v19 = v79;
        if (_LogCategory_Initialize(v2->_ucat, 0x1Eu))
        {
          ucat = v2->_ucat;
LABEL_26:
          v20 = [v17 irkData];
          v68 = [v81 name];
          LogPrintF(ucat, "[CUHomeKitManager _updateAccessories]", 0x1Eu, "ResolvableAccessory removed: %@, %{mask}, '%@'\n", v21, v22, v23, v24, v4);
        }

        v76 = 1;
        goto LABEL_32;
      }

      v76 = 1;
LABEL_29:
      v19 = v79;
LABEL_32:

      v3 = v19 + 1;
    }

    while (v3 != v77);
    v25 = [obj countByEnumeratingWithState:&v102 objects:v110 count:16];
    v77 = v25;
  }

  while (v25);
LABEL_38:

  v26 = [(HMHomeManager *)v2->_homeManager currentAccessory];
  v27 = [v26 uniqueIdentifier];

  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v70 = [(HMHomeManager *)v2->_homeManager homes];
  obja = [v70 countByEnumeratingWithState:&v90 objects:v107 count:16];
  if (!obja)
  {
    goto LABEL_82;
  }

  v71 = *v91;
  v78 = v27;
  while (2)
  {
    v28 = 0;
    while (2)
    {
      if (*v91 != v71)
      {
        objc_enumerationMutation(v70);
      }

      v75 = v28;
      v29 = *(*(&v90 + 1) + 8 * v28);
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v30 = [v29 accessories];
      v31 = [v30 countByEnumeratingWithState:&v86 objects:v106 count:16];
      if (v31)
      {
        v32 = v31;
        v33 = *v87;
        v80 = v30;
        do
        {
          v34 = 0;
          do
          {
            if (*v87 != v33)
            {
              objc_enumerationMutation(v30);
            }

            v35 = *(*(&v86 + 1) + 8 * v34);
            v36 = [v35 uniqueIdentifier];
            v37 = v36;
            if (v36 && ([v36 isEqual:v27] & 1) == 0)
            {
              v38 = [v35 device];
              if (v38)
              {
                if (objc_opt_respondsToSelector())
                {
                  v39 = [v38 rapportIRK];
                  v40 = [v39 data];

                  v41 = [(NSMutableDictionary *)v2->_resolvableAccessoriesMap objectForKeyedSubscript:v37];
                  v42 = v41;
                  v84 = v40;
                  if (v41)
                  {
                    v43 = [v41 irkData];
                    v44 = v40;
                    v45 = v43;
                    v46 = v45;
                    if (v44 != v45)
                    {
                      if ((v44 != 0) != (v45 == 0))
                      {
                        v47 = [(CUHomeKitResolvableAccessory *)v44 isEqual:v45];

                        if (v47)
                        {
LABEL_73:

                          v2 = v82;
                          v27 = v78;
                          v30 = v80;
                          goto LABEL_74;
                        }
                      }

                      else
                      {
                      }

                      [v42 setIrkData:v44];
                      p_var0 = &v82->_ucat->var0;
                      if (*p_var0 > 30)
                      {
                        goto LABEL_72;
                      }

                      if (*p_var0 != -1)
                      {
                        goto LABEL_67;
                      }

                      if (!_LogCategory_Initialize(v82->_ucat, 0x1Eu))
                      {
LABEL_72:
                        v76 = 1;
                        goto LABEL_73;
                      }

                      p_var0 = &v82->_ucat->var0;
LABEL_67:
                      v46 = [v35 name];
                      LogPrintF(p_var0, "[CUHomeKitManager _updateAccessories]", 0x1Eu, "ResolvableAccessory updated: %@, %{mask}, '%@'\n", v57, v58, v59, v60, v37);
                      goto LABEL_69;
                    }
                  }

                  else
                  {
                    v46 = objc_alloc_init(CUHomeKitResolvableAccessory);
                    [(CUHomeKitResolvableAccessory *)v46 setAccessory:v35];
                    [(CUHomeKitResolvableAccessory *)v46 setIrkData:v40];
                    resolvableAccessoriesMap = v2->_resolvableAccessoriesMap;
                    if (!resolvableAccessoriesMap)
                    {
                      v49 = objc_alloc_init(MEMORY[0x1E695DF90]);
                      v50 = v2->_resolvableAccessoriesMap;
                      v2->_resolvableAccessoriesMap = v49;

                      resolvableAccessoriesMap = v2->_resolvableAccessoriesMap;
                    }

                    [(NSMutableDictionary *)resolvableAccessoriesMap setObject:v46 forKeyedSubscript:v37];
                    [v35 setDelegate:v2];
                    v51 = v2->_ucat;
                    if (v51->var0 <= 30)
                    {
                      if (v51->var0 == -1)
                      {
                        if (!_LogCategory_Initialize(v2->_ucat, 0x1Eu))
                        {
                          goto LABEL_69;
                        }

                        v51 = v2->_ucat;
                      }

                      v69 = [v35 name];
                      LogPrintF(v51, "[CUHomeKitManager _updateAccessories]", 0x1Eu, "ResolvableAccessory added: %@, %{mask}, '%@'\n", v52, v53, v54, v55, v37);
                    }

LABEL_69:
                    v76 = 1;
                  }

                  goto LABEL_73;
                }
              }

              else
              {
                [v35 setDelegate:v2];
              }

LABEL_74:
            }

            ++v34;
          }

          while (v32 != v34);
          v61 = [v30 countByEnumeratingWithState:&v86 objects:v106 count:16];
          v32 = v61;
        }

        while (v61);
      }

      v28 = v75 + 1;
      if ((v75 + 1) != obja)
      {
        continue;
      }

      break;
    }

    obja = [v70 countByEnumeratingWithState:&v90 objects:v107 count:16];
    if (obja)
    {
      continue;
    }

    break;
  }

LABEL_82:

  if (v76)
  {
    v62 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v63 = v2->_resolvableAccessoriesMap;
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 3221225472;
    v85[2] = __38__CUHomeKitManager__updateAccessories__block_invoke;
    v85[3] = &unk_1E73A33C8;
    v85[4] = v62;
    [(NSMutableDictionary *)v63 enumerateKeysAndObjectsUsingBlock:v85];
    v64 = [v62 copy];
    resolvableAccessories = v2->_resolvableAccessories;
    v2->_resolvableAccessories = v64;

    v66 = _Block_copy(v2->_resolvableAccessoriesChangedHandler);
    v67 = v66;
    if (v66)
    {
      (*(v66 + 2))(v66);
    }
  }
}

void __38__CUHomeKitManager__updateAccessories__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v4 = [v8 irkData];
  v5 = [v4 length];

  if (v5)
  {
    v6 = *(a1 + 32);
    v7 = [v8 accessory];
    [v6 addObject:v7];
  }
}

- (void)_clearHomeKitState
{
  homes = self->_homes;
  v99[0] = MEMORY[0x1E69E9820];
  v99[1] = 3221225472;
  v99[2] = __38__CUHomeKitManager__clearHomeKitState__block_invoke;
  v99[3] = &unk_1E73A33A0;
  v99[4] = self;
  [(NSMutableDictionary *)homes enumerateKeysAndObjectsUsingBlock:v99];
  [(NSMutableDictionary *)self->_homes removeAllObjects];
  v4 = self->_homes;
  self->_homes = 0;

  [(NSMutableDictionary *)self->_users removeAllObjects];
  users = self->_users;
  self->_users = 0;

  v6 = self->_selfAccessory;
  v7 = v6 != 0;
  if (v6)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
        {
          goto LABEL_6;
        }

        ucat = self->_ucat;
      }

      v9 = [(HMAccessory *)v6 uniqueIdentifier];
      v96 = [(HMAccessory *)v6 name];
      LogPrintF(ucat, "[CUHomeKitManager _clearHomeKitState]", 0x1Eu, "LostSelfAccessory: %@ (%@), HK clear", v10, v11, v12, v13, v9);
    }

LABEL_6:
    selfAccessory = self->_selfAccessory;
    self->_selfAccessory = 0;
  }

  selfAccessoryRoomID = self->_selfAccessoryRoomID;
  if (selfAccessoryRoomID)
  {
    self->_selfAccessoryRoomID = 0;

    v7 = 1;
  }

  v16 = self->_selfAccessoryUser;
  if (v16)
  {
    v17 = self->_ucat;
    if (v17->var0 <= 30)
    {
      if (v17->var0 == -1)
      {
        if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
        {
          goto LABEL_14;
        }

        v17 = self->_ucat;
      }

      v18 = [(HMUser *)v16 userID];
      LogPrintF(v17, "[CUHomeKitManager _clearHomeKitState]", 0x1Eu, "SelfAccessory user updated: %{mask}, HK clear", v19, v20, v21, v22, v18);
    }

LABEL_14:
    selfAccessoryUser = self->_selfAccessoryUser;
    self->_selfAccessoryUser = 0;

    v7 = 1;
  }

  v28 = self->_selfAccessoryAppData;
  if (!v28)
  {
    goto LABEL_21;
  }

  v29 = self->_ucat;
  if (v29->var0 <= 30)
  {
    if (v29->var0 == -1)
    {
      if (!_LogCategory_Initialize(v29, 0x1Eu))
      {
        goto LABEL_20;
      }

      v29 = self->_ucat;
    }

    LogPrintF(v29, "[CUHomeKitManager _clearHomeKitState]", 0x1Eu, "SelfAccessory AppData changed: %##@, HK clear", v24, v25, v26, v27, v28);
  }

LABEL_20:
  selfAccessoryAppData = self->_selfAccessoryAppData;
  self->_selfAccessoryAppData = 0;

LABEL_21:
  selfAccessoryMediaAccessFlags = self->_selfAccessoryMediaAccessFlags;
  v36 = selfAccessoryMediaAccessFlags != 0;
  if (!selfAccessoryMediaAccessFlags)
  {
    goto LABEL_27;
  }

  v37 = self->_ucat;
  if (v37->var0 <= 30)
  {
    if (v37->var0 == -1)
    {
      if (!_LogCategory_Initialize(v37, 0x1Eu))
      {
        goto LABEL_26;
      }

      v37 = self->_ucat;
    }

    LogPrintF(v37, "[CUHomeKitManager _clearHomeKitState]", 0x1Eu, "SelfAccessory MediaAccess changed: HK clear", v31, v32, v33, v34, v95);
  }

LABEL_26:
  self->_selfAccessoryMediaAccessFlags = 0;
LABEL_27:
  if (!self->_selfAccessoryMediaAccessPassword)
  {
    goto LABEL_33;
  }

  v38 = self->_ucat;
  if (v38->var0 <= 30)
  {
    if (v38->var0 == -1)
    {
      if (!_LogCategory_Initialize(v38, 0x1Eu))
      {
        goto LABEL_32;
      }

      v38 = self->_ucat;
    }

    LogPrintF(v38, "[CUHomeKitManager _clearHomeKitState]", 0x1Eu, "SelfAccessory MediaAccess password updated: HK clear", v31, v32, v33, v34, v95);
  }

LABEL_32:
  selfAccessoryMediaAccessPassword = self->_selfAccessoryMediaAccessPassword;
  self->_selfAccessoryMediaAccessPassword = 0;

  v36 = 1;
LABEL_33:
  v40 = self->_selfAccessoryMediaSystem;
  v41 = v40 != 0;
  if (!v40)
  {
    goto LABEL_39;
  }

  v42 = self->_ucat;
  if (v42->var0 <= 30)
  {
    if (v42->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
        goto LABEL_38;
      }

      v42 = self->_ucat;
    }

    v43 = [(HMMediaSystem *)v40 uniqueIdentifier];
    v97 = [(HMMediaSystem *)v40 name];
    LogPrintF(v42, "[CUHomeKitManager _clearHomeKitState]", 0x1Eu, "SelfAccessoryMediaSystem ID updated: %@ '%@', HK clear", v44, v45, v46, v47, v43);
  }

LABEL_38:
  selfAccessoryMediaSystem = self->_selfAccessoryMediaSystem;
  self->_selfAccessoryMediaSystem = 0;

LABEL_39:
  v49 = self->_selfAccessoryMediaSystemCounterpart;
  if (!v49)
  {
    goto LABEL_45;
  }

  v50 = self->_ucat;
  if (v50->var0 <= 30)
  {
    if (v50->var0 == -1)
    {
      if (!_LogCategory_Initialize(self->_ucat, 0x1Eu))
      {
        goto LABEL_44;
      }

      v50 = self->_ucat;
    }

    v51 = [(HMAccessory *)v49 uniqueIdentifier];
    v98 = [(HMAccessory *)v49 name];
    LogPrintF(v50, "[CUHomeKitManager _clearHomeKitState]", 0x1Eu, "SelfAccessoryMediaSystemCounterpart updated: %@ '%@', HK clear\n", v52, v53, v54, v55, v51);
  }

LABEL_44:
  selfAccessoryMediaSystemCounterpart = self->_selfAccessoryMediaSystemCounterpart;
  self->_selfAccessoryMediaSystemCounterpart = 0;

  v41 = 1;
LABEL_45:

  v61 = self->_selfAccessoryMediaSystemName;
  if (!v61)
  {
    goto LABEL_51;
  }

  v62 = self->_ucat;
  if (v62->var0 <= 30)
  {
    if (v62->var0 == -1)
    {
      if (!_LogCategory_Initialize(v62, 0x1Eu))
      {
        goto LABEL_50;
      }

      v62 = self->_ucat;
    }

    LogPrintF(v62, "[CUHomeKitManager _clearHomeKitState]", 0x1Eu, "SelfAccessoryMediaSystem name updated: '%@', HK clear", v57, v58, v59, v60, v61);
  }

LABEL_50:
  selfAccessoryMediaSystemName = self->_selfAccessoryMediaSystemName;
  self->_selfAccessoryMediaSystemName = 0;

  v41 = 1;
LABEL_51:

  v64 = self->_selfAccessoryMediaSystemRole;
  if (!v64)
  {
    goto LABEL_61;
  }

  v65 = self->_ucat;
  if (v65->var0 <= 30)
  {
    if (v65->var0 != -1)
    {
LABEL_54:
      v66 = [(HMMediaSystemRole *)v64 type];
      if (v66 > 2)
      {
        v71 = "?";
      }

      else
      {
        v71 = off_1E73A3550[v66];
      }

      LogPrintF(v65, "[CUHomeKitManager _clearHomeKitState]", 0x1Eu, "SelfAccessoryMediaSystemRole updated: %s, HK clear", v67, v68, v69, v70, v71);
      goto LABEL_60;
    }

    if (_LogCategory_Initialize(self->_ucat, 0x1Eu))
    {
      v65 = self->_ucat;
      goto LABEL_54;
    }
  }

LABEL_60:
  selfAccessoryMediaSystemRole = self->_selfAccessoryMediaSystemRole;
  self->_selfAccessoryMediaSystemRole = 0;

  v41 = 1;
LABEL_61:

  selfAccessorySiriEnabled = self->_selfAccessorySiriEnabled;
  if (!selfAccessorySiriEnabled)
  {
    goto LABEL_67;
  }

  v78 = self->_ucat;
  if (v78->var0 <= 30)
  {
    if (v78->var0 == -1)
    {
      if (!_LogCategory_Initialize(v78, 0x1Eu))
      {
        goto LABEL_66;
      }

      v78 = self->_ucat;
    }

    LogPrintF(v78, "[CUHomeKitManager _clearHomeKitState]", 0x1Eu, "SelfAccessory SiriAccess per-accessory updated: HK clear", v73, v74, v75, v76, v95);
  }

LABEL_66:
  self->_selfAccessorySiriEnabled = 0;
LABEL_67:
  resolvableAccessories = self->_resolvableAccessories;
  if (!resolvableAccessories)
  {
    goto LABEL_73;
  }

  v80 = self->_ucat;
  if (v80->var0 <= 30)
  {
    if (v80->var0 == -1)
    {
      if (!_LogCategory_Initialize(v80, 0x1Eu))
      {
        goto LABEL_72;
      }

      v80 = self->_ucat;
    }

    LogPrintF(v80, "[CUHomeKitManager _clearHomeKitState]", 0x1Eu, "ResolvableAccessory updated: HK clear", v73, v74, v75, v76, v95);
  }

LABEL_72:
  v81 = self->_resolvableAccessories;
  self->_resolvableAccessories = 0;

LABEL_73:
  resolvableAccessoriesMap = self->_resolvableAccessoriesMap;
  self->_resolvableAccessoriesMap = 0;

  if (v7)
  {
    v83 = _Block_copy(self->_selfAccessoryUpdatedHandler);
    v84 = v83;
    if (v83)
    {
      (*(v83 + 2))(v83);
    }
  }

  if (v28)
  {
    v85 = _Block_copy(self->_selfAccessoryAppDataChangedHandler);
    v86 = v85;
    if (v85)
    {
      (*(v85 + 2))(v85, 0);
    }
  }

  if (v36)
  {
    v87 = _Block_copy(self->_selfAccessoryMediaAccessUpdatedHandler);
    v88 = v87;
    if (v87)
    {
      (*(v87 + 2))(v87);
    }

    if (!v41)
    {
LABEL_83:
      if (!selfAccessorySiriEnabled)
      {
        goto LABEL_84;
      }

      goto LABEL_92;
    }
  }

  else if (!v41)
  {
    goto LABEL_83;
  }

  v89 = _Block_copy(self->_selfAccessoryMediaSystemUpdatedHandler);
  v90 = v89;
  if (v89)
  {
    (*(v89 + 2))(v89);
  }

  if (!selfAccessorySiriEnabled)
  {
LABEL_84:
    if (!resolvableAccessories)
    {
      return;
    }

    goto LABEL_95;
  }

LABEL_92:
  v91 = _Block_copy(self->_selfAccessorySiriAccessUpdatedHandler);
  v92 = v91;
  if (v91)
  {
    (*(v91 + 2))(v91);
  }

  if (resolvableAccessories)
  {
LABEL_95:
    v93 = _Block_copy(self->_resolvableAccessoriesChangedHandler);
    v94 = v93;
    if (v93)
    {
      (*(v93 + 2))(v93);
    }
  }
}

void __38__CUHomeKitManager__clearHomeKitState__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = *(*(a1 + 32) + 96);
  if (*v6 <= 30)
  {
    if (*v6 != -1)
    {
LABEL_3:
      v11 = [v5 name];
      LogPrintF(v6, "[CUHomeKitManager _clearHomeKitState]_block_invoke", 0x1Eu, "LostHome: %@ (%@), HK clear", v7, v8, v9, v10, v12);

      goto LABEL_5;
    }

    if (_LogCategory_Initialize(*(*(a1 + 32) + 96), 0x1Eu))
    {
      v6 = *(*(a1 + 32) + 96);
      goto LABEL_3;
    }
  }

LABEL_5:
  [v5 setDelegate:0];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateDone)
  {
    return;
  }

  if (!self->_invalidateCalled)
  {
    ucat = self->_ucat;
    if (ucat->var0 <= 50)
    {
      if (ucat->var0 != -1)
      {
LABEL_5:
        LogPrintF(ucat, "[CUHomeKitManager _invalidated]", 0x32u, "### Unexpectedly invalidated\n", v3, v4, v5, v6, v22);
        goto LABEL_7;
      }

      if (_LogCategory_Initialize(ucat, 0x32u))
      {
        ucat = self->_ucat;
        goto LABEL_5;
      }
    }
  }

LABEL_7:
  invalidationHandler = self->_invalidationHandler;
  if (invalidationHandler)
  {
    invalidationHandler[2]();
  }

  selfAccessoryAppDataChangedHandler = self->_selfAccessoryAppDataChangedHandler;
  self->_selfAccessoryAppDataChangedHandler = 0;

  selfAccessoryMediaAccessUpdatedHandler = self->_selfAccessoryMediaAccessUpdatedHandler;
  self->_selfAccessoryMediaAccessUpdatedHandler = 0;

  selfAccessoryMediaSystemUpdatedHandler = self->_selfAccessoryMediaSystemUpdatedHandler;
  self->_selfAccessoryMediaSystemUpdatedHandler = 0;

  selfAccessorySiriAccessUpdatedHandler = self->_selfAccessorySiriAccessUpdatedHandler;
  self->_selfAccessorySiriAccessUpdatedHandler = 0;

  selfAccessoryUpdatedHandler = self->_selfAccessoryUpdatedHandler;
  self->_selfAccessoryUpdatedHandler = 0;

  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  v15 = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  stateChangedHandler = self->_stateChangedHandler;
  self->_stateChangedHandler = 0;

  self->_invalidateDone = 1;
  v21 = self->_ucat;
  if (v21->var0 <= 10)
  {
    if (v21->var0 == -1)
    {
      if (!_LogCategory_Initialize(v21, 0xAu))
      {
        return;
      }

      v21 = self->_ucat;
    }

    LogPrintF(v21, "[CUHomeKitManager _invalidated]", 0xAu, "Invalidated\n", v17, v18, v19, v20, v24);
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__CUHomeKitManager_invalidate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __30__CUHomeKitManager_invalidate__block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(result + 32);
  if (*(v10 + 88))
  {
    return result;
  }

  v35 = v8;
  v11 = result;
  *(v10 + 88) = 1;
  v12 = *(result + 32);
  v13 = *(v12 + 96);
  if (*v13 <= 30)
  {
    if (*v13 == -1)
    {
      v14 = _LogCategory_Initialize(v13, 0x1Eu);
      v12 = *(v11 + 32);
      if (!v14)
      {
        goto LABEL_6;
      }

      v13 = *(v12 + 96);
    }

    LogPrintF(v13, "[CUHomeKitManager invalidate]_block_invoke", 0x1Eu, "Invalidating\n", a5, a6, a7, a8, v8);
    v12 = *(v11 + 32);
  }

LABEL_6:
  v15 = *(v12 + 8);
  if (v15 != -1)
  {
    notify_cancel(v15);
    *(*(v11 + 32) + 8) = -1;
    v12 = *(v11 + 32);
  }

  [*(v12 + 16) setDelegate:{0, v35}];
  v16 = *(v11 + 32);
  v17 = *(v16 + 16);
  *(v16 + 16) = 0;

  [*(*(v11 + 32) + 32) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_3388];
  [*(*(v11 + 32) + 32) removeAllObjects];
  v18 = *(v11 + 32);
  v19 = *(v18 + 32);
  *(v18 + 32) = 0;

  [*(*(v11 + 32) + 40) removeAllObjects];
  [*(*(v11 + 32) + 176) setDelegate:0];
  v20 = *(v11 + 32);
  v21 = *(v20 + 176);
  *(v20 + 176) = 0;

  [*(*(v11 + 32) + 224) setDelegate:0];
  v22 = *(v11 + 32);
  v23 = *(v22 + 224);
  *(v22 + 224) = 0;

  v24 = *(v11 + 32);
  v25 = *(v24 + 232);
  *(v24 + 232) = 0;

  v26 = *(v11 + 32);
  v27 = *(v26 + 240);
  *(v26 + 240) = 0;

  v28 = *(v11 + 32);
  v29 = *(v28 + 248);
  *(v28 + 248) = 0;

  [*(*(v11 + 32) + 72) setDelegate:0];
  v30 = *(v11 + 32);
  v31 = *(v30 + 72);
  *(v30 + 72) = 0;

  [*(*(v11 + 32) + 80) enumerateKeysAndObjectsUsingBlock:&__block_literal_global_112];
  [*(*(v11 + 32) + 80) removeAllObjects];
  v32 = *(v11 + 32);
  v33 = *(v32 + 80);
  *(v32 + 80) = 0;

  v34 = *(v11 + 32);

  return [v34 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v4 = *(interruptionHandler + 2);

    v4();
  }
}

- (void)_activateIfNeeded
{
  if ([getHMClientConnectionClass[0]() areHomesConfigured])
  {
    homeKitPrefsNotifyToken = self->_homeKitPrefsNotifyToken;
    if (homeKitPrefsNotifyToken != -1)
    {
      notify_cancel(homeKitPrefsNotifyToken);
      self->_homeKitPrefsNotifyToken = -1;
    }

    flags = self->_flags;
    if ((flags & 2) != 0 || self->_selfAccessoryAppDataChangedHandler || self->_selfAccessoryUpdatedHandler)
    {
      self->_selfAccessoryEnabled = 1;
    }

    if (self->_selfAccessoryMediaAccessUpdatedHandler)
    {
      self->_selfAccessoryMediaAccessEnabled = 1;
    }

    if (self->_selfAccessoryMediaSystemUpdatedHandler)
    {
      self->_selfAccessoryMediaSystemEnabled = 1;
    }

    if ((flags & 0x10) != 0 || self->_selfAccessorySiriAccessUpdatedHandler)
    {
      self->_selfAccessorySiriAccessEnabled = 1;
    }

    if (self->_homeManager)
    {
      goto LABEL_45;
    }

    if ((flags & 0x21) != 0)
    {
      v9 = -1;
    }

    else
    {
      if (self->_selfAccessoryEnabled)
      {
        v11 = ((self->_resolvableAccessoriesChangedHandler != 0) << 6) | 0x10;
      }

      else
      {
        v11 = (self->_resolvableAccessoriesChangedHandler != 0) << 6;
      }

      if (self->_selfAccessoryMediaAccessEnabled)
      {
        v11 |= 0x80uLL;
      }

      if (self->_selfAccessoryMediaSystemEnabled)
      {
        v11 |= 0x80uLL;
      }

      if (self->_selfAccessorySiriAccessEnabled)
      {
        v11 |= 8uLL;
      }

      v12 = vdupq_n_s32(flags);
      if ((flags & 4) != 0)
      {
        v11 |= 0xAuLL;
      }

      v13 = vshlq_u32(v12, xmmword_191FF9510);
      v13.i32[3] = vshlq_u32(v12, xmmword_191FF9520).i32[3];
      v14 = vandq_s8(v13, xmmword_191FF9530);
      *v14.i8 = vorr_s8(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
      v9 = v11 | (v14.i32[0] | v14.i32[1]);
    }

    ucat = self->_ucat;
    if (ucat->var0 <= 30)
    {
      if (ucat->var0 == -1)
      {
        if (!_LogCategory_Initialize(ucat, 0x1Eu))
        {
          goto LABEL_41;
        }

        ucat = self->_ucat;
      }

      LogPrintF(ucat, "[CUHomeKitManager _activateIfNeeded]", 0x1Eu, "Create HMHomeManager %#ll{flags} %s\n", v3, v4, v5, v6, v9);
    }

LABEL_41:
    if ((flags & 0x200) != 0)
    {
      v17 = [objc_alloc(getHMHomeManagerConfigurationClass[0]()) initWithOptions:v9 cachePolicy:2];
      v18 = [objc_alloc(getHMHomeManagerClass[0]()) initWithConfiguration:v17];
      homeManager = self->_homeManager;
      self->_homeManager = v18;
    }

    else
    {
      v16 = [objc_alloc(getHMHomeManagerClass[0]()) initWithOptions:v9];
      v17 = self->_homeManager;
      self->_homeManager = v16;
    }

    [(HMHomeManager *)self->_homeManager setDelegate:self];
LABEL_45:

    [(CUHomeKitManager *)self _updateState];
    return;
  }

  v10 = self->_ucat;
  if (v10->var0 > 30)
  {
    return;
  }

  if (v10->var0 == -1)
  {
    if (!_LogCategory_Initialize(v10, 0x1Eu))
    {
      return;
    }

    v10 = self->_ucat;
  }

  LogPrintF(v10, "[CUHomeKitManager _activateIfNeeded]", 0x1Eu, "Deferring HomeKit init until prefs indicate it's configured\n", v3, v4, v5, v6, v21);
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __28__CUHomeKitManager_activate__block_invoke;
  block[3] = &unk_1E73A4F68;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __28__CUHomeKitManager_activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *(a1 + 32);
  v10 = *(v9 + 96);
  if (*v10 <= 30)
  {
    if (*v10 == -1)
    {
      v11 = _LogCategory_Initialize(v10, 0x1Eu);
      v9 = *(a1 + 32);
      if (!v11)
      {
        goto LABEL_5;
      }

      v10 = *(v9 + 96);
    }

    LogPrintF(v10, "[CUHomeKitManager activate]_block_invoke", 0x1Eu, "Activate %#{flags}\n", a5, a6, a7, a8, *(v9 + 108));
    v9 = *(a1 + 32);
  }

LABEL_5:
  if (*(v9 + 8) == -1 && getHMHomeManagerPreferencesChangedNotification[0]())
  {
    v12 = getHMHomeManagerPreferencesChangedNotification[0]();
    v13 = *(a1 + 32);
    v14 = *(v13 + 120);
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __28__CUHomeKitManager_activate__block_invoke_2;
    handler[3] = &unk_1E73A4228;
    handler[4] = v13;
    notify_register_dispatch(v12, (v13 + 8), v14, handler);
  }

  return [*(a1 + 32) _activateIfNeeded];
}

uint64_t __28__CUHomeKitManager_activate__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = *(a1 + 32);
  if (*(result + 8) == -1)
  {
    return result;
  }

  v10 = *(result + 96);
  if (*v10 <= 30)
  {
    if (*v10 == -1)
    {
      v11 = _LogCategory_Initialize(*(result + 96), 0x1Eu);
      result = *(a1 + 32);
      if (!v11)
      {
        goto LABEL_7;
      }

      v10 = *(result + 96);
    }

    LogPrintF(v10, "[CUHomeKitManager activate]_block_invoke_2", 0x1Eu, "HomeKit prefs changed\n", a5, a6, a7, a8, v12);
    result = *(a1 + 32);
  }

LABEL_7:

  return [result _activateIfNeeded];
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v13 = a3;
  v5 = qword_1EADE89D0;
  v6 = v13;
  [v13 UTF8String];
  LogCategoryReplaceF(&self->_ucat, "%s-%s", v7, v8, v9, v10, v11, v12, v5);
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove(ucat);
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = CUHomeKitManager;
  [(CUHomeKitManager *)&v4 dealloc];
}

- (CUHomeKitManager)init
{
  v4.receiver = self;
  v4.super_class = CUHomeKitManager;
  v2 = [(CUHomeKitManager *)&v4 init];
  if (v2)
  {
    if (CUMainQueue_sOnce != -1)
    {
      dispatch_once(&CUMainQueue_sOnce, &__block_literal_global_23);
    }

    objc_storeStrong(&v2->_dispatchQueue, CUMainQueue_sQueue);
    v2->_homeKitPrefsNotifyToken = -1;
    v2->_ucat = &gLogCategory_CUHomeKitManager;
  }

  return v2;
}

@end