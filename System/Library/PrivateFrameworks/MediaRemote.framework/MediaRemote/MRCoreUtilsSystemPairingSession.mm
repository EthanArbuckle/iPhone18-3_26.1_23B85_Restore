@interface MRCoreUtilsSystemPairingSession
+ (BOOL)systemPairingAvailable;
+ (id)globalPairingQueue;
+ (id)pairingManager;
- (MRDeviceInfo)_createPeerDeviceFromPairedPeer:(uint64_t)a1;
- (id)addPeer;
- (id)mediaRemotePairedDevices;
- (id)pairedPeerDevice;
- (id)pairedPeerDevices;
- (id)removePeer;
- (id)updateMediaRemotePairedDevice:(id)a1;
- (id)updatePeer;
@end

@implementation MRCoreUtilsSystemPairingSession

- (id)addPeer
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRCryptoPairingSession *)self device];
    v12 = 138412290;
    v13 = v4;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils-System)] Pairing Device %@", &v12, 0xCu);
  }

  v5 = [MRCoreUtilsPairingSession alloc];
  v6 = [(MRCryptoPairingSession *)self device];
  v7 = [(MRCoreUtilsPairingSession *)v5 initWithRole:0 device:v6];

  [(MRCoreUtilsPairingSession *)v7 open];
  v8 = [(MRCoreUtilsPairingSession *)v7 removePeer];
  v9 = [(MRCoreUtilsSystemPairingSession *)self updatePeer];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)removePeer
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRCryptoPairingSession *)self device];
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils-System)] Unpairing Device %@", &v9, 0xCu);
  }

  v5 = [(MRCryptoPairingSession *)self device];

  if (v5)
  {
    [(MRCoreUtilsSystemPairingSession *)self updateMediaRemotePairedDevice:?];
  }

  else
  {
    MRCreateCryptoError(@"Cannot remove peer, No device available");
  }
  v6 = ;
  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)updateMediaRemotePairedDevice:(id)a1
{
  v3 = a2;
  if (a1)
  {
    v47 = 0;
    v48 = &v47;
    v49 = 0x3032000000;
    v50 = __Block_byref_object_copy_;
    v51 = __Block_byref_object_dispose_;
    v52 = 0;
    v41 = 0;
    v42 = &v41;
    v43 = 0x3032000000;
    v44 = __Block_byref_object_copy_;
    v45 = __Block_byref_object_dispose_;
    v46 = 0;
    v4 = [objc_opt_class() pairingManager];
    if (v4)
    {
      v5 = [a1 peerIdentifier];
      v6 = dispatch_semaphore_create(0);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __65__MRCoreUtilsSystemPairingSession_updateMediaRemotePairedDevice___block_invoke;
      v38[3] = &unk_1E769A2A0;
      v40 = &v47;
      v7 = v6;
      v39 = v7;
      [v4 setInvalidationHandler:v38];
      v35[0] = MEMORY[0x1E69E9820];
      v35[1] = 3221225472;
      v35[2] = __65__MRCoreUtilsSystemPairingSession_updateMediaRemotePairedDevice___block_invoke_2;
      v35[3] = &unk_1E769A2A0;
      v37 = &v47;
      v8 = v7;
      v36 = v8;
      [v4 setInterruptionHandler:v35];
      v9 = [a1 device];
      v10 = [v9 identifier];

      v11 = [a1 device];
      v12 = [v11 name];

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __65__MRCoreUtilsSystemPairingSession_updateMediaRemotePairedDevice___block_invoke_3;
      v28[3] = &unk_1E769A2C8;
      v13 = v10;
      v29 = v13;
      v14 = v5;
      v30 = v14;
      v15 = v3;
      v31 = v15;
      v16 = v12;
      v32 = v16;
      v34 = &v41;
      v17 = v8;
      v33 = v17;
      [v4 getPairedPeersWithOptions:4 completion:v28];
      v18 = dispatch_time(0, 7000000000);
      dispatch_semaphore_wait(v17, v18);
      if (v42[5])
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __65__MRCoreUtilsSystemPairingSession_updateMediaRemotePairedDevice___block_invoke_4;
        v25[3] = &unk_1E769A2F0;
        v27 = &v47;
        v19 = v17;
        v26 = v19;
        v20 = MEMORY[0x1A58E3570](v25);
        v21 = v42[5];
        if (v15)
        {
          [v4 savePairedPeer:v21 options:4 completion:v20];
        }

        else
        {
          [v4 removePairedPeer:v21 options:4 completion:v20];
        }

        v23 = dispatch_time(0, 7000000000);
        dispatch_semaphore_wait(v19, v23);
      }

      [v4 setInterruptionHandler:0];
      [v4 setInvalidationHandler:0];
      [v4 invalidate];
    }

    else
    {
      v22 = MRCreateCryptoError(@"Does not have required entitlements");
      v14 = v48[5];
      v48[5] = v22;
    }

    a1 = v48[5];
    _Block_object_dispose(&v41, 8);

    _Block_object_dispose(&v47, 8);
  }

  return a1;
}

- (id)updatePeer
{
  v3 = [(MRCryptoPairingSession *)self device];

  if (v3)
  {
    v4 = [(MRCryptoPairingSession *)self device];
    v5 = [(MRCoreUtilsSystemPairingSession *)self updateMediaRemotePairedDevice:v4];
  }

  else
  {
    v5 = MRCreateCryptoError(@"Cannot update peer, No device available");
  }

  return v5;
}

- (id)pairedPeerDevice
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v3 = [(MRCoreUtilsSystemPairingSession *)self pairedPeerDevices];
  v4 = [(MRCoreUtilsSystemPairingSession *)self mediaRemotePairedDevices];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __51__MRCoreUtilsSystemPairingSession_pairedPeerDevice__block_invoke;
  v8[3] = &unk_1E769A200;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [v4 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

void __51__MRCoreUtilsSystemPairingSession_pairedPeerDevice__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = [*(a1 + 32) device];
  v10 = [v9 identifier];
  v11 = [v8 identifier];
  v12 = [v10 isEqualToString:v11];

  if (v12)
  {
    v22 = a4;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = *(a1 + 40);
    v14 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v23 + 1) + 8 * i);
          v19 = [v18 identifier];
          v20 = [v19 isEqualToString:v7];

          if (v20)
          {
            objc_storeStrong((*(*(a1 + 48) + 8) + 40), v18);
            *v22 = 1;
            goto LABEL_12;
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
        if (v15)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)pairedPeerDevices
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [objc_opt_class() pairingManager];
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __52__MRCoreUtilsSystemPairingSession_pairedPeerDevices__block_invoke;
    v16[3] = &unk_1E769A228;
    v5 = v4;
    v17 = v5;
    [v3 setInvalidationHandler:v16];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __52__MRCoreUtilsSystemPairingSession_pairedPeerDevices__block_invoke_2;
    v14[3] = &unk_1E769A228;
    v6 = v5;
    v15 = v6;
    [v3 setInterruptionHandler:v14];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __52__MRCoreUtilsSystemPairingSession_pairedPeerDevices__block_invoke_3;
    v11[3] = &unk_1E769A250;
    v13 = &v18;
    v11[4] = self;
    v7 = v6;
    v12 = v7;
    [v3 getPairedPeersWithOptions:4 completion:v11];
    v8 = dispatch_time(0, 7000000000);
    dispatch_semaphore_wait(v7, v8);
    [v3 setInterruptionHandler:0];
    [v3 setInvalidationHandler:0];
    [v3 invalidate];
  }

  v9 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v9;
}

void __52__MRCoreUtilsSystemPairingSession_pairedPeerDevices__block_invoke_3(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(*(a1 + 48) + 8) + 40);
        v9 = [(MRCoreUtilsSystemPairingSession *)*(a1 + 32) _createPeerDeviceFromPairedPeer:?];
        [v8 addObject:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v10 = *MEMORY[0x1E69E9840];
}

- (MRDeviceInfo)_createPeerDeviceFromPairedPeer:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v5 = objc_alloc_init(MRDeviceInfo);
    v6 = [v4 identifier];
    v7 = [v6 UUIDString];
    [(MRDeviceInfo *)v5 setIdentifier:v7];

    v8 = [v4 name];
    [(MRDeviceInfo *)v5 setName:v8];

    v9 = [v4 model];
    [(MRDeviceInfo *)v5 setLocalizedModelName:v9];
  }

  return v5;
}

- (id)mediaRemotePairedDevices
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [objc_opt_class() pairingManager];
  if (v3)
  {
    v4 = dispatch_semaphore_create(0);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __59__MRCoreUtilsSystemPairingSession_mediaRemotePairedDevices__block_invoke;
    v18[3] = &unk_1E769A228;
    v5 = v4;
    v19 = v5;
    [v3 setInvalidationHandler:v18];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __59__MRCoreUtilsSystemPairingSession_mediaRemotePairedDevices__block_invoke_2;
    v16[3] = &unk_1E769A228;
    v6 = v5;
    v17 = v6;
    [v3 setInterruptionHandler:v16];
    v10 = MEMORY[0x1E69E9820];
    v11 = 3221225472;
    v12 = __59__MRCoreUtilsSystemPairingSession_mediaRemotePairedDevices__block_invoke_3;
    v13 = &unk_1E769A278;
    v14 = v2;
    v15 = v6;
    v7 = v6;
    [v3 getPairedPeersWithOptions:4 completion:&v10];
    v8 = dispatch_time(0, 7000000000);
    dispatch_semaphore_wait(v7, v8);
    [v3 setInterruptionHandler:{0, v10, v11, v12, v13}];
    [v3 setInvalidationHandler:0];
    [v3 invalidate];
  }

  return v2;
}

void __59__MRCoreUtilsSystemPairingSession_mediaRemotePairedDevices__block_invoke_3(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a2;
  v2 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v2)
  {
    v3 = v2;
    v17 = *v19;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v19 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v18 + 1) + 8 * i);
        v6 = [v5 info];
        v7 = [v6 objectForKey:@"MediaRemote_ExtendedInfo"];
        v8 = [v7 objectForKey:@"MediaRemote_PeerIdentifier"];
        v9 = [v7 objectForKey:@"MediaRemote_PeerName"];
        if (v8)
        {
          v10 = objc_alloc_init(MRDeviceInfo);
          [(MRDeviceInfo *)v10 setIdentifier:v8];
          [(MRDeviceInfo *)v10 setName:v9];
          v11 = *(a1 + 32);
          v12 = [v5 identifier];
          v13 = [v12 UUIDString];
          [v11 setObject:v10 forKey:v13];
        }
      }

      v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v3);
  }

  dispatch_semaphore_signal(*(a1 + 40));

  v14 = *MEMORY[0x1E69E9840];
}

intptr_t __65__MRCoreUtilsSystemPairingSession_updateMediaRemotePairedDevice___block_invoke(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = MRCreateCryptoError(@"CUPairingManager Invalidation");
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

intptr_t __65__MRCoreUtilsSystemPairingSession_updateMediaRemotePairedDevice___block_invoke_2(uint64_t a1)
{
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = MRCreateCryptoError(@"CUPairingManager Interuption");
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = *(a1 + 32);

  return dispatch_semaphore_signal(v5);
}

void __65__MRCoreUtilsSystemPairingSession_updateMediaRemotePairedDevice___block_invoke_3(uint64_t a1, void *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a2;
  v3 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v17 = *v19;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v18 + 1) + 8 * i);
        v7 = [v6 info];
        v8 = [v7 objectForKey:@"MediaRemote_ExtendedInfo"];
        v9 = [v8 objectForKey:@"MediaRemote_PeerIdentifier"];
        if ([v9 isEqualToString:*(a1 + 32)])
        {
          goto LABEL_21;
        }

        v10 = *(a1 + 40);
        v11 = [v6 identifier];
        v12 = [v11 UUIDString];
        LODWORD(v10) = [v10 isEqualToString:v12];

        if (v10)
        {
LABEL_21:
          if (*(a1 + 48))
          {
            v13 = [v7 mutableCopy];
            if (!v13)
            {
              v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            v14 = [v8 mutableCopy];
            if (!v14)
            {
              v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
            }

            [v14 setObject:*(a1 + 32) forKey:@"MediaRemote_PeerIdentifier"];
            [v14 setObject:*(a1 + 56) forKey:@"MediaRemote_PeerName"];
            [v13 setObject:v14 forKey:@"MediaRemote_ExtendedInfo"];
            [v6 setInfo:v13];
          }

          objc_storeStrong((*(*(a1 + 72) + 8) + 40), v6);

          goto LABEL_18;
        }
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:

  dispatch_semaphore_signal(*(a1 + 64));
  v15 = *MEMORY[0x1E69E9840];
}

void __65__MRCoreUtilsSystemPairingSession_updateMediaRemotePairedDevice___block_invoke_4(uint64_t a1, void *a2)
{
  v7 = a2;
  v4 = *(*(a1 + 40) + 8);
  v6 = *(v4 + 40);
  v5 = (v4 + 40);
  if (!v6)
  {
    objc_storeStrong(v5, a2);
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

+ (BOOL)systemPairingAvailable
{
  if (systemPairingAvailable___once != -1)
  {
    +[MRCoreUtilsSystemPairingSession systemPairingAvailable];
  }

  return systemPairingAvailable_supportsSystemPairing;
}

uint64_t __57__MRCoreUtilsSystemPairingSession_systemPairingAvailable__block_invoke()
{
  if (MRProcessIsMediaRemoteDaemon())
  {
    result = 1;
  }

  else
  {
    v1 = MRGetSharedService();
    result = MRMediaRemoteServiceSupportsSystemPairing(v1);
  }

  systemPairingAvailable_supportsSystemPairing = result;
  return result;
}

+ (id)pairingManager
{
  if ([a1 systemPairingAvailable])
  {
    v2 = objc_alloc_init(MSVWeakLinkClass());
    v3 = +[MRCoreUtilsSystemPairingSession globalPairingQueue];
    [v2 setDispatchQueue:v3];
  }

  else
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils-System)] Pairing Manager not available due to lacking entitlements", v6, 2u);
    }

    v2 = 0;
  }

  return v2;
}

+ (id)globalPairingQueue
{
  objc_opt_self();
  if (globalPairingQueue___once != -1)
  {
    +[MRCoreUtilsSystemPairingSession globalPairingQueue];
  }

  v0 = globalPairingQueue___queue;

  return v0;
}

void __53__MRCoreUtilsSystemPairingSession_globalPairingQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.MediaRemote.MRCoreUtilsSystemPairingSession.GlobalQueue", v2);
  v1 = globalPairingQueue___queue;
  globalPairingQueue___queue = v0;
}

@end