@interface MRExternalDevicePairingSession
- (BOOL)_useSystemPairing;
- (BOOL)isPaired;
- (BOOL)isUsingSystemPairing;
- (MRExternalDevicePairingSession)initWithDevice:(id)device;
- (id)pairedDevices;
- (id)removePeer;
- (id)updatePeer;
- (void)_openSecuritySessionInState:(int)state useSystemPairing:(void *)pairing completion:;
- (void)open;
- (void)removePeer;
- (void)setDelegate:(id)delegate;
@end

@implementation MRExternalDevicePairingSession

- (MRExternalDevicePairingSession)initWithDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = MRExternalDevicePairingSession;
  return [(MRCryptoPairingSession *)&v4 initWithRole:0 device:device];
}

- (BOOL)isUsingSystemPairing
{
  pairingSession = self->_pairingSession;
  v3 = objc_opt_class();
  return v3 == objc_opt_class();
}

- (BOOL)isPaired
{
  device = [(MRCryptoPairingSession *)self device];

  if (!device)
  {
    return 0;
  }

  v4 = [MRCoreUtilsSystemPairingSession alloc];
  device2 = [(MRCryptoPairingSession *)self device];
  v6 = [(MRCoreUtilsPairingSession *)v4 initWithRole:0 device:device2];

  [(MRCoreUtilsPairingSession *)v6 open];
  LOBYTE(device2) = [(MRCoreUtilsPairingSession *)v6 isPaired];

  if (device2)
  {
    return 1;
  }

  v8 = [MRCoreUtilsPairingSession alloc];
  device3 = [(MRCryptoPairingSession *)self device];
  v10 = [(MRCoreUtilsPairingSession *)v8 initWithRole:0 device:device3];

  [(MRCoreUtilsPairingSession *)v10 open];
  LOBYTE(device3) = [(MRCoreUtilsPairingSession *)v10 isPaired];

  return device3;
}

- (id)pairedDevices
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = [(MRCoreUtilsPairingSession *)[MRCoreUtilsSystemPairingSession alloc] initWithRole:0 device:0];
  [(MRCoreUtilsPairingSession *)v3 open];
  pairedDevices = [(MRCoreUtilsPairingSession *)v3 pairedDevices];
  [v2 addObjectsFromArray:pairedDevices];

  v5 = [[MRCoreUtilsPairingSession alloc] initWithRole:0 device:0];
  [(MRCoreUtilsPairingSession *)v5 open];
  pairedDevices2 = [(MRCoreUtilsPairingSession *)v5 pairedDevices];
  [v2 addObjectsFromArray:pairedDevices2];

  return v2;
}

- (id)removePeer
{
  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(MRExternalDevicePairingSession *)self removePeer];
  }

  v4 = [MRCoreUtilsSystemPairingSession alloc];
  device = [(MRCryptoPairingSession *)self device];
  v6 = [(MRCoreUtilsPairingSession *)v4 initWithRole:0 device:device];

  [(MRCoreUtilsPairingSession *)v6 open];
  removePeer = [(MRCoreUtilsSystemPairingSession *)v6 removePeer];

  v8 = [MRCoreUtilsPairingSession alloc];
  device2 = [(MRCryptoPairingSession *)self device];
  v10 = [(MRCoreUtilsPairingSession *)v8 initWithRole:0 device:device2];

  [(MRCoreUtilsPairingSession *)v10 open];
  removePeer2 = [(MRCoreUtilsPairingSession *)v10 removePeer];
  v12 = removePeer2;
  if (!removePeer)
  {
    removePeer = removePeer2;
  }

  return removePeer;
}

- (id)updatePeer
{
  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [(MRExternalDevicePairingSession *)self removePeer];
  }

  v4 = [MRCoreUtilsSystemPairingSession alloc];
  device = [(MRCryptoPairingSession *)self device];
  v6 = [(MRCoreUtilsPairingSession *)v4 initWithRole:0 device:device];

  [(MRCoreUtilsPairingSession *)v6 open];
  updatePeer = [(MRCoreUtilsSystemPairingSession *)v6 updatePeer];

  v8 = [MRCoreUtilsPairingSession alloc];
  device2 = [(MRCryptoPairingSession *)self device];
  v10 = [(MRCoreUtilsPairingSession *)v8 initWithRole:0 device:device2];

  [(MRCoreUtilsPairingSession *)v10 open];
  updatePeer2 = [(MRCoreUtilsPairingSession *)v10 updatePeer];
  v12 = updatePeer2;
  if (!updatePeer)
  {
    updatePeer = updatePeer2;
  }

  return updatePeer;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = MRExternalDevicePairingSession;
  [(MRCryptoPairingSession *)&v15 setDelegate:delegateCopy];
  if (delegateCopy)
  {
    v5 = objc_alloc_init(MRCryptoPairingSessionBlockDelegate);
    [(MRExternalDevicePairingSession *)self setPairingDelegate:v5];

    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__MRExternalDevicePairingSession_setDelegate___block_invoke;
    v12[3] = &unk_1E769F658;
    objc_copyWeak(&v13, &location);
    [(MRCryptoPairingSessionBlockDelegate *)self->_pairingDelegate setDataExchangeBlock:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __46__MRExternalDevicePairingSession_setDelegate___block_invoke_2;
    v10[3] = &unk_1E769F680;
    objc_copyWeak(&v11, &location);
    [(MRCryptoPairingSessionBlockDelegate *)self->_pairingDelegate setShowSetupCodeBlock:v10];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__MRExternalDevicePairingSession_setDelegate___block_invoke_3;
    v8[3] = &unk_1E769F6A8;
    objc_copyWeak(&v9, &location);
    [(MRCryptoPairingSessionBlockDelegate *)self->_pairingDelegate setHideSetupCodeBlock:v8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__MRExternalDevicePairingSession_setDelegate___block_invoke_4;
    v6[3] = &unk_1E769F6D0;
    objc_copyWeak(&v7, &location);
    [(MRCryptoPairingSessionBlockDelegate *)self->_pairingDelegate setPromptForSetupCodeBlock:v6];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  else
  {
    [(MRExternalDevicePairingSession *)self setPairingDelegate:0];
  }
}

void __46__MRExternalDevicePairingSession_setDelegate___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained delegate];
    [v6 pairingSession:v5 didPrepareExchangeData:v7];
  }
}

void __46__MRExternalDevicePairingSession_setDelegate___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained delegate];
    [v6 pairingSession:v5 showSetupCode:v7];
  }
}

void __46__MRExternalDevicePairingSession_setDelegate___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 pairingSessionHideSetupCode:v3];

    WeakRetained = v3;
  }
}

void __46__MRExternalDevicePairingSession_setDelegate___block_invoke_4(uint64_t a1, double a2, uint64_t a3, void *a4)
{
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = [WeakRetained delegate];
    [v8 pairingSession:v7 promptForSetupCodeWithDelay:v9 completion:a2];
  }
}

- (void)open
{
  _useSystemPairing = [(MRExternalDevicePairingSession *)self _useSystemPairing];

  [(MRExternalDevicePairingSession *)&self->super.super.isa _openSecuritySessionInState:_useSystemPairing useSystemPairing:0 completion:?];
}

- (void)_openSecuritySessionInState:(int)state useSystemPairing:(void *)pairing completion:
{
  pairingCopy = pairing;
  if (self)
  {
    v8 = _MRLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [MRExternalDevicePairingSession _openSecuritySessionInState:state useSystemPairing:a2 completion:v8];
    }

    v9 = off_1E7698D48;
    if (!state)
    {
      v9 = off_1E7698D40;
    }

    v10 = objc_alloc(*v9);
    device = [self device];
    v12 = [v10 initWithRole:0 device:device];

    [self setPairingSession:v12];
    [self[4] setDelegate:self[5]];
    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __90__MRExternalDevicePairingSession__openSecuritySessionInState_useSystemPairing_completion___block_invoke;
    v13[3] = &unk_1E769F6F8;
    objc_copyWeak(v15, &location);
    v15[1] = a2;
    stateCopy = state;
    v14 = pairingCopy;
    [self[5] setExchangeCompleteBlock:v13];
    [self[4] openInState:a2];

    objc_destroyWeak(v15);
    objc_destroyWeak(&location);
  }
}

void __90__MRExternalDevicePairingSession__openSecuritySessionInState_useSystemPairing_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    goto LABEL_14;
  }

  if (!v4)
  {
    v9 = *(a1 + 56);
    v10 = _MRLogForCategory(0);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG);
    if (v9 == 1)
    {
      if (v11)
      {
        __90__MRExternalDevicePairingSession__openSecuritySessionInState_useSystemPairing_completion___block_invoke_cold_2(v10);
      }
    }

    else if (v11)
    {
      __90__MRExternalDevicePairingSession__openSecuritySessionInState_useSystemPairing_completion___block_invoke_cold_1(v10);
    }

    goto LABEL_13;
  }

  if ([v4 code] == 25 || *(a1 + 48) != 3)
  {
LABEL_13:
    v12 = [WeakRetained delegate];
    [v12 pairingSession:WeakRetained didCompleteExchangeWithError:v4];

    goto LABEL_14;
  }

  v6 = *(a1 + 56);
  v7 = dispatch_get_global_queue(2, 0);
  if (v6 == 1)
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __90__MRExternalDevicePairingSession__openSecuritySessionInState_useSystemPairing_completion___block_invoke_2;
    block[3] = &unk_1E769A0A0;
    v17 = WeakRetained;
    v18 = *(a1 + 32);
    dispatch_async(v7, block);

    v8 = v17;
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __90__MRExternalDevicePairingSession__openSecuritySessionInState_useSystemPairing_completion___block_invoke_4;
    v13[3] = &unk_1E769A0A0;
    v14 = WeakRetained;
    v15 = *(a1 + 32);
    dispatch_async(v7, v13);

    v8 = v14;
  }

LABEL_14:
}

void __90__MRExternalDevicePairingSession__openSecuritySessionInState_useSystemPairing_completion___block_invoke_2(uint64_t a1)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __90__MRExternalDevicePairingSession__openSecuritySessionInState_useSystemPairing_completion___block_invoke_3;
  v2[3] = &unk_1E769AD80;
  v1 = *(a1 + 32);
  v3 = *(a1 + 40);
  [(MRExternalDevicePairingSession *)v1 _openSecuritySessionInState:0 useSystemPairing:v2 completion:?];
}

- (BOOL)_useSystemPairing
{
  if (!self)
  {
    return 0;
  }

  device = [self device];
  if ([device supportsSystemPairing])
  {
    v2 = +[MRUserSettings currentSettings];
    if ([v2 useExternalDeviceSystemPairing])
    {
      v3 = +[MRCoreUtilsSystemPairingSession systemPairingAvailable];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void __90__MRExternalDevicePairingSession__openSecuritySessionInState_useSystemPairing_completion___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [(MRExternalDevicePairingSession *)v2 _useSystemPairing];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __90__MRExternalDevicePairingSession__openSecuritySessionInState_useSystemPairing_completion___block_invoke_5;
  v4[3] = &unk_1E769AD80;
  v5 = *(a1 + 40);
  [(MRExternalDevicePairingSession *)v2 _openSecuritySessionInState:v3 useSystemPairing:v4 completion:?];
}

- (void)removePeer
{
  v9 = *MEMORY[0x1E69E9840];
  device = [self device];
  OUTLINED_FUNCTION_0_19(&dword_1A2860000, v2, v3, "[CryptoPairingSession(MRExternalDevicePairingSession)] Unpairing Device %@", v4, v5, v6, v7, 2u);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_openSecuritySessionInState:(char)a1 useSystemPairing:(uint64_t)a2 completion:(os_log_t)log .cold.1(char a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = "true";
  if ((a1 & 1) == 0)
  {
    v3 = "false";
  }

  v5 = 134218242;
  v6 = a2;
  v7 = 2080;
  v8 = v3;
  _os_log_debug_impl(&dword_1A2860000, log, OS_LOG_TYPE_DEBUG, "[CryptoPairingSession(MRExternalDevicePairingSession)] Opening Security Session in State = %ld usingSystemPairing = %s", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end