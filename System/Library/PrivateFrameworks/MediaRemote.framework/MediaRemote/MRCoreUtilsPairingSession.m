@interface MRCoreUtilsPairingSession
- (BOOL)deleteIdentityWithError:(id *)a3;
- (BOOL)isPaired;
- (BOOL)shouldAutoRetryPairingExchange:(id)a3;
- (MRCoreUtilsPairingSession)initWithRole:(unint64_t)a3 device:(id)a4;
- (MRDeviceInfo)_createDeviceFromPeer:(uint64_t)a1;
- (MRDeviceInfo)_createPeerDeviceFromPeer:(uint64_t)a1;
- (MRDeviceInfo)pairedPeerDevice;
- (NSArray)pairedPeerDevices;
- (NSMutableDictionary)mediaRemotePairedDevices;
- (NSString)peerIdentifier;
- (id)_generateSetupCodeWithMaximumLength:(uint64_t)a1;
- (id)_onQueueInitializePairingSessionWithState:(uint64_t)a1;
- (id)_onQueuePerformPairingExchangeWithInputData:(void *)a3 error:;
- (id)addPeer;
- (id)decryptData:(id)a3 withError:(id *)a4;
- (id)encryptData:(id)a3 withError:(id *)a4;
- (id)extendedPeerInfo;
- (id)initializePairingSession:(PairingSessionPrivate *)a3;
- (id)pairedDevices;
- (id)removePeer;
- (id)updatePeer;
- (uint64_t)_displaySetupCode:(uint64_t)a1;
- (uint64_t)_promptForSetupCodeWithDelay:(uint64_t)result;
- (uint64_t)shouldAutoRetry;
- (void)_delegateDidEnterPasscode:(void *)a1;
- (void)_handlePairingCompleteWithError:(void *)a1;
- (void)_handleSetupExchangeComplete;
- (void)_hideSetupCode;
- (void)_onQueueDeriveEncryptionKeys;
- (void)close;
- (void)dealloc;
- (void)handlePairingExchangeData:(id)a3 completion:(id)a4;
- (void)handlePairingFailureWithStatus:(int)a3;
- (void)openInState:(unint64_t)a3;
- (void)setPairingFlags:(unsigned int)a3;
@end

@implementation MRCoreUtilsPairingSession

- (MRCoreUtilsPairingSession)initWithRole:(unint64_t)a3 device:(id)a4
{
  v14.receiver = self;
  v14.super_class = MRCoreUtilsPairingSession;
  v4 = [(MRCryptoPairingSession *)&v14 initWithRole:a3 device:a4];
  v5 = v4;
  if (v4)
  {
    v4->_state = 1;
    v6 = +[MRPasscodeCredentials standardCredentials];
    credentials = v5->_credentials;
    v5->_credentials = v6;

    v8 = objc_opt_class();
    Name = class_getName(v8);
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(Name, v10);
    queue = v5->_queue;
    v5->_queue = v11;

    *&v5->_pairingDelegate.context = 0u;
    *&v5->_pairingDelegate.hideSetupCode_f = 0u;
    *&v5->_pairingDelegate.copyIdentity_f = 0u;
    *&v5->_pairingDelegate.savePeer_f = 0u;
    v5->_pairingDelegate.resumeResponse_f = 0;
    v5->_pairingDelegate.context = v5;
    v5->_pairingDelegate.showSetupCode_f = _MRCUPSShowSetupCodeCallback;
    v5->_pairingDelegate.hideSetupCode_f = _MRCUPSHideSetupCodeCallback;
    v5->_pairingDelegate.promptForSetupCode_f = _MRCUPSPromptForSetupCodeCallback;
    v5->_pairingFlags = 0;
  }

  return v5;
}

- (void)dealloc
{
  pairingSession = self->_pairingSession;
  if (pairingSession)
  {
    CFRelease(pairingSession);
    self->_pairingSession = 0;
  }

  self->_pairingDelegate.context = 0;
  v4.receiver = self;
  v4.super_class = MRCoreUtilsPairingSession;
  [(MRCoreUtilsPairingSession *)&v4 dealloc];
}

- (BOOL)isPaired
{
  v2 = [(MRCoreUtilsPairingSession *)self pairedPeerDevice];
  v3 = v2 != 0;

  return v3;
}

- (id)pairedDevices
{
  v2 = [(MRCoreUtilsPairingSession *)self mediaRemotePairedDevices];
  v3 = [v2 allValues];

  return v3;
}

- (void)close
{
  if (self->_state <= 3)
  {
    Error = MRMediaRemoteCreateError(25);
    [(MRCoreUtilsPairingSession *)self _handlePairingCompleteWithError:?];
  }

  self->_state = 1;
  [(MRCoreUtilsPairingSession *)self setInputKey:0];
  [(MRCoreUtilsPairingSession *)self setInputNonce:0];
  [(MRCoreUtilsPairingSession *)self setOutputKey:0];

  [(MRCoreUtilsPairingSession *)self setOutputNonce:0];
}

- (void)handlePairingExchangeData:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__MRCoreUtilsPairingSession_handlePairingExchangeData_completion___block_invoke;
  block[3] = &unk_1E769E410;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (id)encryptData:(id)a3 withError:(id *)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__19;
  v28 = __Block_byref_object_dispose__19;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__19;
  v22 = __Block_byref_object_dispose__19;
  v23 = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__MRCoreUtilsPairingSession_encryptData_withError___block_invoke;
  v14[3] = &unk_1E769EE60;
  v14[4] = self;
  v16 = &v24;
  v8 = v6;
  v15 = v8;
  v17 = &v18;
  dispatch_sync(queue, v14);
  if (v19[5])
  {
    v9 = _MRLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v19[5];
      *buf = 138543362;
      v31 = v10;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Error while encrypting data: %{public}@", buf, 0xCu);
    }

    if (a4)
    {
      *a4 = v19[5];
    }
  }

  v11 = v25[5];

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __51__MRCoreUtilsPairingSession_encryptData_withError___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(*(a1 + 32) + 136) == 5)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(*(a1 + 40), "length")}];
    v3 = *(*(a1 + 48) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;

    v5 = MSVWeakLinkSymbol();
    v5([*(*(a1 + 32) + 160) bytes], objc_msgSend(*(*(a1 + 32) + 168), "bytes"), 0, 0, objc_msgSend(*(a1 + 40), "bytes"), objc_msgSend(*(a1 + 40), "length"), objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "mutableBytes"), v16);
    [*(*(*(a1 + 48) + 8) + 40) appendBytes:v16 length:16];
    v6 = [*(*(a1 + 32) + 168) mutableBytes];
    v7 = [*(*(a1 + 32) + 168) length];
    if (v7)
    {
      v8 = v7 - 1;
      do
      {
        if (++*v6++)
        {
          v10 = 1;
        }

        else
        {
          v10 = v8 == 0;
        }

        --v8;
      }

      while (!v10);
    }

    v11 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v12 = MRCreateCryptoError(@"Session not open");
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
    v15 = *MEMORY[0x1E69E9840];
  }
}

- (id)decryptData:(id)a3 withError:(id *)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__19;
  v29 = __Block_byref_object_dispose__19;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__19;
  v23 = __Block_byref_object_dispose__19;
  v24 = 0;
  queue = self->_queue;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __51__MRCoreUtilsPairingSession_decryptData_withError___block_invoke;
  v14[3] = &unk_1E769EE60;
  v8 = v6;
  v15 = v8;
  v16 = self;
  v17 = &v19;
  v18 = &v25;
  dispatch_sync(queue, v14);
  if (v20[5])
  {
    v9 = _MRLogForCategory(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v20[5];
      *buf = 138543362;
      v32 = v10;
      _os_log_impl(&dword_1A2860000, v9, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Error while decrypting data: %{public}@", buf, 0xCu);
    }

    if (a4)
    {
      *a4 = v20[5];
    }
  }

  v11 = v26[5];

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __51__MRCoreUtilsPairingSession_decryptData_withError___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) length] <= 0xF)
  {
    v2 = @"Encrypted data has an invalid length";
LABEL_15:
    v25 = MRCreateCryptoError(v2);
    v26 = *(*(a1 + 48) + 8);
    v24 = *(v26 + 40);
    *(v26 + 40) = v25;
    goto LABEL_16;
  }

  if (*(*(a1 + 40) + 136) != 5)
  {
    v2 = @"Session not open";
    goto LABEL_15;
  }

  v27 = [*(a1 + 32) subdataWithRange:{objc_msgSend(*(a1 + 32), "length") - 16, 16}];
  v3 = [*(a1 + 32) subdataWithRange:{0, objc_msgSend(*(a1 + 32), "length") - 16}];
  v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{objc_msgSend(v3, "length")}];
  v5 = *(*(a1 + 56) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = MSVWeakLinkSymbol();
  v8 = [*(*(a1 + 40) + 144) bytes];
  v9 = [*(*(a1 + 40) + 152) bytes];
  v10 = [v3 bytes];
  v11 = [v3 length];
  v12 = [*(*(*(a1 + 56) + 8) + 40) mutableBytes];
  v13 = v27;
  v14 = v7(v8, v9, 0, 0, v10, v11, v12, [v27 bytes]);
  v15 = [*(*(a1 + 40) + 152) mutableBytes];
  v16 = [*(*(a1 + 40) + 152) length];
  if (v16)
  {
    v17 = v16 - 1;
    do
    {
      if (++*v15++)
      {
        v19 = 1;
      }

      else
      {
        v19 = v17 == 0;
      }

      --v17;
    }

    while (!v19);
  }

  if (v14)
  {
    v20 = objc_alloc(MEMORY[0x1E696ABC0]);
    v21 = [v20 initWithDomain:*MEMORY[0x1E696A768] code:v14 userInfo:0];
    v22 = *(*(a1 + 48) + 8);
    v23 = *(v22 + 40);
    *(v22 + 40) = v21;
  }

  v24 = v27;
LABEL_16:
}

- (BOOL)deleteIdentityWithError:(id *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__19;
  v12 = __Block_byref_object_dispose__19;
  v13 = 0;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__MRCoreUtilsPairingSession_deleteIdentityWithError___block_invoke;
  v7[3] = &unk_1E769A4C8;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue, v7);
  if (a3)
  {
    *a3 = v9[5];
  }

  v5 = v9[5] == 0;
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __53__MRCoreUtilsPairingSession_deleteIdentityWithError___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (!*(v2 + 40))
  {
    __53__MRCoreUtilsPairingSession_deleteIdentityWithError___block_invoke_cold_1(v2);
  }

  if (*(*(*(a1 + 40) + 8) + 40))
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(*(*(a1 + 40) + 8) + 40);
      v13 = 138543362;
      v14 = v4;
      v5 = "[CryptoPairingSession(CoreUtils)] Error initializing pairing session during identity deletion. %{public}@";
LABEL_9:
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, v5, &v13, 0xCu);
      goto LABEL_10;
    }

    goto LABEL_10;
  }

  v6 = MSVWeakLinkSymbol();
  v7 = v6(*(*(a1 + 32) + 40));
  if (v7)
  {
    v8 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v7 userInfo:0];
    v9 = *(*(a1 + 40) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*(*(a1 + 40) + 8) + 40);
      v13 = 138543362;
      v14 = v11;
      v5 = "[CryptoPairingSession(CoreUtils)] Error deleting identity. %{public}@";
      goto LABEL_9;
    }

LABEL_10:
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)openInState:(unint64_t)a3
{
  v18 = *MEMORY[0x1E69E9840];
  self->_hasExchangedMessage = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__19;
  queue = self->_queue;
  v14 = __Block_byref_object_dispose__19;
  v15 = 0;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__MRCoreUtilsPairingSession_openInState___block_invoke;
  block[3] = &unk_1E769EE88;
  block[4] = self;
  block[5] = &v10;
  block[6] = a3;
  dispatch_sync(queue, block);
  if (v11[5])
  {
    v6 = _MRLogForCategory(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v11[5];
      *buf = 138543362;
      v17 = v7;
      _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Error initializing pairing session. %{public}@", buf, 0xCu);
    }

    [(MRCoreUtilsPairingSession *)self _handlePairingCompleteWithError:?];
  }

  else
  {
    self->_state = a3;
    if (![(MRCryptoPairingSession *)self role])
    {
      [(MRCoreUtilsPairingSession *)self handlePairingExchangeData:0 completion:&__block_literal_global_45];
    }
  }

  _Block_object_dispose(&v10, 8);

  v8 = *MEMORY[0x1E69E9840];
}

void __41__MRCoreUtilsPairingSession_openInState___block_invoke_15(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Failed to begin pairing exchange. %{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

- (BOOL)shouldAutoRetryPairingExchange:(id)a3
{
  v3 = [(MRCryptoPairingSession *)self device];
  v4 = [v3 supportsSystemPairing];

  return v4 ^ 1;
}

- (id)initializePairingSession:(PairingSessionPrivate *)a3
{
  v4 = MSVWeakLinkSymbol();
  v4(a3, @"com.apple.MediaRemote.pairing", 1212434788, @"Media Remote Pairing Identity", @"Media Remote Pairing Identity", 1212436594, @"Paired TV Remote Peer", @"Paired TV Remote Peer", 0);
  return 0;
}

- (id)addPeer
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRCryptoPairingSession *)self device];
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Pairing device %@...", buf, 0xCu);
  }

  v5 = [(MRCryptoPairingSession *)self device];

  if (!v5)
  {
    v8 = @"Cannot add peer, No device available";
    goto LABEL_9;
  }

  if (!self->_pairingSession)
  {
    v8 = @"Cannot update peer, No pairing session available";
    goto LABEL_9;
  }

  v21 = 0;
  v20 = 0;
  v6 = MSVWeakLinkSymbol();
  v7 = v6(self->_pairingSession, &v21, &v20);
  if (!v7)
  {
    v8 = @"Cannot add peer, No peer Identifier available";
LABEL_9:
    v9 = MRCreateCryptoError(v8);
    goto LABEL_10;
  }

  v12 = v7;
  v13 = [(MRCoreUtilsPairingSession *)self extendedPeerInfo];
  v14 = MSVWeakLinkSymbol();
  v15 = v14(self->_pairingSession, v12, v21, v13);
  v20 = v15;
  if (!v15)
  {
    goto LABEL_20;
  }

  if (v15 != -25299)
  {
    goto LABEL_19;
  }

  v16 = _MRLogForCategory(0);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = v12;
    _os_log_impl(&dword_1A2860000, v16, OS_LOG_TYPE_DEFAULT, "Duplicate record found for identifier %s dumping pairing", buf, 0xCu);
  }

  v17 = [(MRCoreUtilsPairingSession *)self removePeer];
  if (v17)
  {
    goto LABEL_21;
  }

  v18 = MSVWeakLinkSymbol();
  v20 = v18(self->_pairingSession, v12, v21, v13);
  if (v20)
  {
LABEL_19:
    v19 = objc_alloc(MEMORY[0x1E696ABC0]);
    v17 = [v19 initWithDomain:*MEMORY[0x1E696A768] code:v20 userInfo:0];
  }

  else
  {
LABEL_20:
    v17 = 0;
  }

LABEL_21:
  free(v12);
  v9 = v17;

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)removePeer
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRCryptoPairingSession *)self device];
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Unpairing device %@", &v16, 0xCu);
  }

  v5 = [(MRCryptoPairingSession *)self device];

  if (!v5)
  {
    v12 = @"Cannot remove peer, No device available";
LABEL_10:
    v13 = MRCreateCryptoError(v12);
    goto LABEL_15;
  }

  if (!self->_pairingSession)
  {
    v12 = @"Cannot update peer, No pairing session available";
    goto LABEL_10;
  }

  v6 = [(MRCoreUtilsPairingSession *)self peerIdentifier];
  if (v6)
  {
    v7 = MSVWeakLinkSymbol();
    v8 = v7(self->_pairingSession, [v6 UTF8String], objc_msgSend(v6, "length"));
    if (!v8)
    {
      v13 = 0;
      goto LABEL_14;
    }

    v9 = v8;
    v10 = objc_alloc(MEMORY[0x1E696ABC0]);
    v11 = [v10 initWithDomain:*MEMORY[0x1E696A768] code:v9 userInfo:0];
  }

  else
  {
    v11 = MRCreateCryptoError(@"Could not find peer");
  }

  v13 = v11;
LABEL_14:

LABEL_15:
  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (id)updatePeer
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = _MRLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(MRCryptoPairingSession *)self device];
    v17 = 138412290;
    v18 = v4;
    _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Updating Peer %@", &v17, 0xCu);
  }

  v5 = [(MRCryptoPairingSession *)self device];

  if (!v5)
  {
    v8 = @"Cannot update peer, No device available";
LABEL_10:
    v7 = MRCreateCryptoError(v8);
    goto LABEL_11;
  }

  if (!self->_pairingSession)
  {
    v8 = @"Cannot update peer, No pairing session available";
    goto LABEL_10;
  }

  v6 = [(MRCoreUtilsPairingSession *)self peerIdentifier];
  if (v6)
  {
    v11 = [(MRCoreUtilsPairingSession *)self extendedPeerInfo];
    v12 = MSVWeakLinkSymbol();
    v13 = v12(self->_pairingSession, [v6 UTF8String], objc_msgSend(v6, "length"), v11);
    if (v13)
    {
      v14 = v13;
      v15 = _MRLogForCategory(0);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 67109120;
        LODWORD(v18) = v14;
        _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Error updating peer (OSStatus = %d)", &v17, 8u);
      }

      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v7 = [v16 initWithDomain:*MEMORY[0x1E696A768] code:v14 userInfo:0];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = MRCreateCryptoError(@"Could not find peer");
  }

LABEL_11:
  v9 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSString)peerIdentifier
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__19;
  v18 = __Block_byref_object_dispose__19;
  v19 = 0;
  v3 = [(MRCryptoPairingSession *)self device];

  if (v3)
  {
    if (self->_pairingSession)
    {
      v13 = 0;
      v12 = 0;
      v4 = MSVWeakLinkSymbol();
      v5 = v4(self->_pairingSession, &v13, &v12);
      if (v5)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
        v7 = v15[5];
        v15[5] = v6;

        free(v5);
      }
    }

    if (!v15[5])
    {
      v8 = [(MRCoreUtilsPairingSession *)self mediaRemotePairedDevices];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __43__MRCoreUtilsPairingSession_peerIdentifier__block_invoke;
      v11[3] = &unk_1E769EEB0;
      v11[4] = self;
      v11[5] = &v14;
      [v8 enumerateKeysAndObjectsUsingBlock:v11];
    }
  }

  v9 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v9;
}

void __43__MRCoreUtilsPairingSession_peerIdentifier__block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v13 = a2;
  v8 = *(a1 + 32);
  v9 = a3;
  v10 = [v8 device];
  v11 = [v10 identifier];
  v12 = [v9 identifier];

  LODWORD(v9) = [v11 isEqualToString:v12];
  if (v9)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)setPairingFlags:(unsigned int)a3
{
  self->_pairingFlags = a3;
  v4 = MSVWeakLinkSymbol();
  pairingSession = self->_pairingSession;
  pairingFlags = self->_pairingFlags;

  v4(pairingSession, pairingFlags);
}

- (MRDeviceInfo)pairedPeerDevice
{
  v27 = *MEMORY[0x1E69E9840];
  if (self->_pairingSession)
  {
    v2 = self;
    v25 = 0;
    v3 = MSVWeakLinkSymbol();
    v4 = v3(v2->_pairingSession, &v25);
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v5)
    {
      v6 = v5;
      v20 = *v22;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v22 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v21 + 1) + 8 * i);
          v9 = [MEMORY[0x1E696AEC0] stringWithCString:"info" encoding:4];
          v10 = [v8 objectForKey:v9];

          v11 = [v10 objectForKey:@"MediaRemote_PeerIdentifier"];
          v12 = v2;
          v13 = [(MRCryptoPairingSession *)v2 device];
          v14 = [v13 identifier];
          v15 = [v14 isEqualToString:v11];

          if (v15)
          {
            v16 = [(MRCoreUtilsPairingSession *)v12 _createPeerDeviceFromPeer:v8];

            goto LABEL_12;
          }

          v2 = v12;
        }

        v6 = [obj countByEnumeratingWithState:&v21 objects:v26 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    v16 = 0;
LABEL_12:
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (MRDeviceInfo)_createPeerDeviceFromPeer:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v5 = objc_alloc_init(MRDeviceInfo);
    v6 = [v4 objectForKey:@"identifier"];
    [(MRDeviceInfo *)v5 setIdentifier:v6];
  }

  return v5;
}

- (NSArray)pairedPeerDevices
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (self->_pairingSession)
  {
    v18 = 0;
    v4 = MSVWeakLinkSymbol();
    v5 = v4(self->_pairingSession, &v18);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [(MRCoreUtilsPairingSession *)self _createPeerDeviceFromPeer:?];
          [v3 addObject:{v11, v14}];
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v19 count:16];
      }

      while (v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSMutableDictionary)mediaRemotePairedDevices
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (self->_pairingSession)
  {
    v24 = 0;
    v3 = MSVWeakLinkSymbol();
    v4 = v3(self->_pairingSession, &v24);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
    if (!v5)
    {
      goto LABEL_19;
    }

    v6 = v5;
    v7 = *v21;
    while (1)
    {
      v8 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v20 + 1) + 8 * v8);
        v10 = [(MRCoreUtilsPairingSession *)self _createDeviceFromPeer:v9];
        if (v10)
        {
          v11 = v10;
          v12 = [v9 objectForKey:@"identifier"];
          [v19 setObject:v11 forKey:v12];
LABEL_14:

          goto LABEL_15;
        }

        v13 = _MRLogForCategory(0);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Found empty extended info entry, removing it", buf, 2u);
        }

        v11 = [v9 objectForKey:@"identifier"];
        v14 = MSVWeakLinkSymbol();
        v24 = v14(self->_pairingSession, [v11 UTF8String], objc_msgSend(v11, "length"));
        if (v24)
        {
          v12 = _MRLogForCategory(0);
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v26 = v24;
            _os_log_impl(&dword_1A2860000, v12, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Could not delete empty entry with status %lu", buf, 0xCu);
          }

          goto LABEL_14;
        }

LABEL_15:

        ++v8;
      }

      while (v6 != v8);
      v15 = [obj countByEnumeratingWithState:&v20 objects:v27 count:16];
      v6 = v15;
      if (!v15)
      {
LABEL_19:

        break;
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];

  return v19;
}

- (MRDeviceInfo)_createDeviceFromPeer:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  v5 = 0;
  if (a1 && v3)
  {
    v6 = [v3 objectForKey:@"info"];
    v7 = [v6 objectForKey:@"MediaRemote_PeerIdentifier"];
    v8 = [v6 objectForKey:@"MediaRemote_PeerName"];
    v9 = v8;
    if (v7)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v5 = 0;
    }

    else
    {
      v5 = objc_alloc_init(MRDeviceInfo);
      [(MRDeviceInfo *)v5 setIdentifier:v7];
      [(MRDeviceInfo *)v5 setName:v9];
    }
  }

  return v5;
}

- (uint64_t)_promptForSetupCodeWithDelay:(uint64_t)result
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = a2;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Requesting delegate to prompt for setup code with delay = %f", buf, 0xCu);
    }

    v5 = [v3 delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      v7 = objc_initWeak(buf, v3);
      v8 = [v3 delegate];
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __58__MRCoreUtilsPairingSession__promptForSetupCodeWithDelay___block_invoke;
      v11[3] = &unk_1E769EED8;
      v13 = a2;
      v9 = v3;
      v12 = v9;
      [v8 pairingSession:v9 promptForSetupCodeWithDelay:v11 completion:a2];

      objc_destroyWeak(buf);
      result = 0;
    }

    else
    {
      result = 4294960582;
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void __55__MRCoreUtilsPairingSession__delegateDidEnterPasscode___block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  if (v2)
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 138543362;
      v6 = v2;
      _os_log_impl(&dword_1A2860000, v3, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Failed to resume pairing process after setting setup code. %{public}@", &v5, 0xCu);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __57__MRCoreUtilsPairingSession__handleSetupExchangeComplete__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 136);
  if (v2 != 3)
  {
    if (v2 != 2)
    {
      goto LABEL_3;
    }

    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Exchange complete. Proceeding to verify step.", buf, 2u);
    }

    v5 = [*(a1 + 32) addPeer];
    if (v5)
    {
      v6 = _MRLogForCategory(0);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1A2860000, v6, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Failed to record successfully paired peer", buf, 2u);
      }
    }

    *(*(a1 + 32) + 136) = 3;
    v7 = [(MRCoreUtilsPairingSession *)*(a1 + 32) _onQueueInitializePairingSessionWithState:?];

    if (v7)
    {
      v8 = _MRLogForCategory(0);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v7;
        _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Error initializing verify session. %{public}@", buf, 0xCu);
      }

LABEL_13:

      *(*(a1 + 32) + 136) = 0;
      v9 = *(a1 + 32);
      if (v9)
      {
        [(MRCoreUtilsPairingSession *)v9 _handlePairingCompleteWithError:v7];
      }

      goto LABEL_20;
    }

    if (![*(a1 + 32) role])
    {
      v12 = *(a1 + 32);
      v16 = 0;
      v8 = [(MRCoreUtilsPairingSession *)v12 _onQueuePerformPairingExchangeWithInputData:&v16 error:?];
      v13 = v16;
      if (v13)
      {
        v7 = v13;
        v14 = _MRLogForCategory(0);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v18 = v7;
          _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Failed to prepare data for verify exchange. %@", buf, 0xCu);
        }

        goto LABEL_13;
      }

      if (v8)
      {
        v15 = [*(a1 + 32) delegate];
        [v15 pairingSession:*(a1 + 32) didPrepareExchangeData:v8];
      }
    }

    v7 = 0;
LABEL_20:

    goto LABEL_3;
  }

  v10 = _MRLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Verify complete. Deriving encryption keys.", buf, 2u);
  }

  [(MRCoreUtilsPairingSession *)*(a1 + 32) _onQueueDeriveEncryptionKeys];
  v11 = [*(a1 + 32) updatePeer];
LABEL_3:
  v3 = *MEMORY[0x1E69E9840];
}

void __66__MRCoreUtilsPairingSession_handlePairingExchangeData_completion___block_invoke(uint64_t *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = a1[5];
  v18 = 0;
  v4 = [(MRCoreUtilsPairingSession *)v2 _onQueuePerformPairingExchangeWithInputData:v3 error:&v18];
  v5 = v18;
  v6 = [v5 domain];
  if (![v6 isEqualToString:*MEMORY[0x1E696A768]])
  {
    goto LABEL_12;
  }

  v7 = [v5 code];

  if (v7 == -6727)
  {
    v8 = [a1[4] removePeer];
    if ([a1[4] shouldAutoRetryPairingExchange:v5])
    {
      *(a1[4] + 128) = 0;
      *(a1[4] + 136) = 2;
      v9 = [(MRCoreUtilsPairingSession *)a1[4] _onQueueInitializePairingSessionWithState:?];

      if (v9)
      {
        goto LABEL_6;
      }

      v12 = a1[4];
      v13 = a1[5];
      v17 = 0;
      v14 = [(MRCoreUtilsPairingSession *)v12 _onQueuePerformPairingExchangeWithInputData:v13 error:&v17];
      v5 = v17;
      v6 = v4;
      v4 = v14;
LABEL_12:

      if (v5)
      {
        goto LABEL_5;
      }

LABEL_13:
      if (v4)
      {
        v15 = [a1[4] delegate];
        [v15 pairingSession:a1[4] didPrepareExchangeData:v4];

        v9 = 0;
        *(a1[4] + 128) = 1;
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_16;
    }
  }

  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  v9 = v5;
LABEL_6:
  v10 = _MRLogForCategory(0);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v20 = v9;
    _os_log_impl(&dword_1A2860000, v10, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Failed to handle pairing exchange. %{public}@", buf, 0xCu);
  }

  v11 = a1[4];
  if (v11)
  {
    [(MRCoreUtilsPairingSession *)v11 _handlePairingCompleteWithError:v9];
  }

LABEL_16:
  (*(a1[6] + 16))();

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_onQueuePerformPairingExchangeWithInputData:(void *)a3 error:
{
  v5 = a2;
  if (a1)
  {
    v16 = 0;
    v14 = 0;
    v15 = 0;
    if (*(a1 + 40))
    {
      v6 = MSVWeakLinkSymbol();
      v7 = v6(*(a1 + 40), [v5 bytes], objc_msgSend(v5, "length"), &v15, &v14, &v16);
      if (v7 == -6771 || v7 == 0)
      {
        if (v14)
        {
          v9 = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:v15 length:?];
        }

        else
        {
          v9 = 0;
        }

        if (v16)
        {
          [(MRCoreUtilsPairingSession *)a1 _handleSetupExchangeComplete];
        }

        v12 = 0;
        if (!a3)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      v10 = v7;
      v11 = objc_alloc(MEMORY[0x1E696ABC0]);
      v12 = [v11 initWithDomain:*MEMORY[0x1E696A768] code:v10 userInfo:0];
    }

    else
    {
      v12 = MRCreateCryptoError(@"No pairing session");
    }

    v9 = 0;
    if (!a3)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_12:
    v12 = v12;
    *a3 = v12;
    goto LABEL_13;
  }

  v9 = 0;
LABEL_14:

  return v9;
}

- (id)_onQueueInitializePairingSessionWithState:(uint64_t)a1
{
  v31 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = [a1 role];
    if (a2 == 4)
    {
      v7 = 5;
      if (v4 == 1)
      {
        v10 = 6;
      }

      else
      {
        v10 = 0;
      }

      v11 = v4 == 0;
      if (v4)
      {
        v12 = v4 == 1;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v5 = v4 == 1;
      if (v4 == 1)
      {
        v6 = 4;
      }

      else
      {
        v6 = 0;
      }

      if (v4)
      {
        v7 = v6;
      }

      else
      {
        v5 = 0;
        v7 = 3;
      }

      v8 = 1;
      if (v4 == 1)
      {
        v9 = 2;
      }

      else
      {
        v9 = 0;
      }

      if (v4)
      {
        v10 = v9;
      }

      else
      {
        v8 = 1;
        v10 = 1;
      }

      if (a2 != 2)
      {
        v8 = 0;
        v10 = 0;
      }

      v11 = a2 == 3;
      if (a2 == 3)
      {
        v12 = v5;
      }

      else
      {
        v12 = v8;
      }
    }

    if (v11)
    {
      v13 = v7;
    }

    else
    {
      v13 = v10;
    }

    v14 = *(a1 + 40);
    if (v14)
    {
      CFRelease(v14);
      *(a1 + 40) = 0;
    }

    v15 = MSVWeakLinkSymbol();
    v16 = v15(a1 + 40, a1 + 48, v13);
    if (v16)
    {
      v17 = v16;
      v18 = _MRLogForCategory(0);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v29 = 67109120;
        LODWORD(v30) = v17;
        _os_log_impl(&dword_1A2860000, v18, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Error initializing pairing session (OSStatus = %d)", &v29, 8u);
      }

      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:v17 userInfo:0];
    }

    else
    {
      v19 = [a1 initializePairingSession:*(a1 + 40)];
      if (v12)
      {
        v20 = _MRLogForCategory(0);
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          v21 = *(a1 + 132);
          v29 = 67109120;
          LODWORD(v30) = v21;
          _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Pairing flags are: %u", &v29, 8u);
        }

        v22 = [a1 device];
        if (MRPairedDeviceSupportsACL())
        {
          v23 = *(a1 + 132);

          if ((v23 & 4) != 0)
          {
            v24 = _MRLogForCategory(0);
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v25 = [a1 device];
              v29 = 138543362;
              v30 = v25;
              _os_log_impl(&dword_1A2860000, v24, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Enabling ACL for device: %{public}@", &v29, 0xCu);
            }

            v26 = MSVWeakLinkSymbol();
            v26(*(a1 + 40), &unk_1F1577B18);
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v19 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];

  return v19;
}

- (void)handlePairingFailureWithStatus:(int)a3
{
  if ([(MRCoreUtilsPairingSession *)self shouldAutoRetry])
  {
    if (self)
    {
      v5 = [(MRCoreUtilsPairingSession *)self removePeer];

      [(MRCoreUtilsPairingSession *)self openInState:2];
    }
  }

  else
  {
    self->_state = 1;
    v6 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:a3 userInfo:0];
    [(MRCoreUtilsPairingSession *)self _handlePairingCompleteWithError:v6];
  }
}

- (uint64_t)shouldAutoRetry
{
  if (!a1 || a1[17] != 3)
  {
    return 0;
  }

  v1 = [a1 device];
  v2 = [v1 supportsSystemPairing] ^ 1;

  return v2;
}

void __41__MRCoreUtilsPairingSession_openInState___block_invoke(uint64_t a1)
{
  v1 = [(MRCoreUtilsPairingSession *)*(a1 + 32) _onQueueInitializePairingSessionWithState:?];
  OUTLINED_FUNCTION_0_16(v1);
}

- (id)extendedPeerInfo
{
  if (a1)
  {
    v2 = [a1 device];

    if (v2)
    {
      v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v3 = [a1 device];
      v4 = [v3 name];

      if (v4)
      {
        [v2 setObject:v4 forKey:@"MediaRemote_PeerName"];
      }

      v5 = [a1 device];
      v6 = [v5 identifier];

      if (v6)
      {
        [v2 setObject:v6 forKey:@"MediaRemote_PeerIdentifier"];
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)_generateSetupCodeWithMaximumLength:(uint64_t)a1
{
  if (a1)
  {
    v4 = [*(a1 + 32) passcode];
    v5 = [*(a1 + 32) passcode];
    if ([v5 length] >= a2)
    {
      v7 = [v4 substringToIndex:a2];
    }

    else
    {
      v6 = [*(a1 + 32) passcode];
      v7 = [v4 substringToIndex:{objc_msgSend(v6, "length")}];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (uint64_t)_displaySetupCode:(uint64_t)a1
{
  v3 = a2;
  if (a1)
  {
    v4 = [a1 delegate];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      v6 = [a1 delegate];
      [v6 pairingSession:a1 showSetupCode:v3];

      a1 = 0;
    }

    else
    {
      a1 = 4294960582;
    }
  }

  return a1;
}

- (void)_hideSetupCode
{
  if (a1)
  {
    v2 = [a1 delegate];
    v3 = objc_opt_respondsToSelector();

    if (v3)
    {
      v4 = [a1 delegate];
      [v4 pairingSessionHideSetupCode:a1];
    }
  }
}

void __58__MRCoreUtilsPairingSession__promptForSetupCodeWithDelay___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (*(a1 + 40) <= 0.0)
  {
    if (v3)
    {
LABEL_11:
      [(MRCoreUtilsPairingSession *)*(a1 + 32) _delegateDidEnterPasscode:v8];
      v6 = 0;
      goto LABEL_8;
    }

    v4 = @"Pairing Session NULL setup code";
  }

  else
  {
    v4 = @"Pairing Session Delay";
  }

  v5 = MRCreateCryptoError(v4);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  v7 = *(a1 + 32);
  if (v7)
  {
    [(MRCoreUtilsPairingSession *)v7 _handlePairingCompleteWithError:v6];
  }

LABEL_8:
}

- (void)_delegateDidEnterPasscode:(void *)a1
{
  v7 = a2;
  if (a1)
  {
    if (!a1[5])
    {
      v6 = MRCreateCryptoError(@"Pairing Session is not available");
      if (!v6)
      {
        goto LABEL_9;
      }

      goto LABEL_7;
    }

    v3 = MSVWeakLinkSymbol();
    v4 = v3(a1[5], [v7 UTF8String], -1);
    if (v4)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to set setup code on pairing session (OSStatus = %d)", v4];
      v6 = MRCreateCryptoError(v5);

      if (!v6)
      {
        goto LABEL_9;
      }

LABEL_7:
      [(MRCoreUtilsPairingSession *)a1 _handlePairingCompleteWithError:v6];

      goto LABEL_9;
    }

    [a1 handlePairingExchangeData:0 completion:&__block_literal_global_90];
  }

LABEL_9:
}

- (void)_handlePairingCompleteWithError:(void *)a1
{
  v6 = a2;
  if (a1)
  {
    v3 = [a1 delegate];
    v4 = objc_opt_respondsToSelector();

    if (v4)
    {
      v5 = [a1 delegate];
      [v5 pairingSession:a1 didCompleteExchangeWithError:v6];
    }
  }
}

- (void)_handleSetupExchangeComplete
{
  if (a1)
  {
    v1 = *(a1 + 120);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__MRCoreUtilsPairingSession__handleSetupExchangeComplete__block_invoke;
    block[3] = &unk_1E769A228;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

- (void)_onQueueDeriveEncryptionKeys
{
  v43 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v2 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:32];
    v41 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:8];
    v3 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:32];
    v4 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:8];
    v5 = [a1 role];
    v39 = v4;
    v40 = v3;
    if (v5 == 1)
    {
      v6 = [MEMORY[0x1E695DEF0] dataWithBytes:"MediaRemote-Write-Encryption-Key" length:32];
      v7 = MEMORY[0x1E695DEF0];
      v8 = "MediaRemote-Read-Encryption-Key";
      v9 = 31;
    }

    else
    {
      if (v5)
      {
        v10 = 0;
        v6 = 0;
LABEL_8:
        v11 = MSVWeakLinkSymbol();
        v12 = v11(a1[5], "MediaRemote-Salt", 16, [v6 bytes], objc_msgSend(v6, "length"), objc_msgSend(v2, "length"), objc_msgSend(v2, "mutableBytes"));
        if (v12)
        {
          v21 = v12;
          v22 = _MRLogForCategory(0);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_1_15(&dword_1A2860000, v23, v24, "[CryptoPairingSession(CoreUtils)] Failed to derive input key (OSStatus = %d)", v25, v26, v27, v28, v38, v4, v3, v41, 0);
          }

          v17 = v39;
          v3 = v40;
        }

        else
        {
          v13 = [v41 mutableBytes];
          for (i = [v41 length]; i; --i)
          {
            *v13++ = 0;
          }

          v15 = MSVWeakLinkSymbol();
          v16 = v15(a1[5], "MediaRemote-Salt", 16, [v10 bytes], objc_msgSend(v10, "length"), objc_msgSend(v3, "length"), objc_msgSend(v3, "mutableBytes"));
          if (!v16)
          {
            v17 = v39;
            v18 = [v39 mutableBytes];
            for (j = [v39 length]; j; --j)
            {
              *v18++ = 0;
            }

            v20 = _MRLogForCategory(0);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "[CryptoPairingSession(CoreUtils)] Successfully derived encryption keys.", buf, 2u);
            }

            [a1 setInputKey:v2];
            [a1 setInputNonce:v41];
            [a1 setOutputKey:v3];
            [a1 setOutputNonce:v39];
            a1[17] = 5;
            [(MRCoreUtilsPairingSession *)a1 _handlePairingCompleteWithError:?];
            goto LABEL_21;
          }

          v21 = v16;
          v22 = _MRLogForCategory(0);
          v17 = v39;
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            OUTLINED_FUNCTION_1_15(&dword_1A2860000, v32, v33, "[CryptoPairingSession(CoreUtils)] Failed to derive output key (OSStatus = %d)", v34, v35, v36, v37, v38, v39, v3, v41, 0);
          }
        }

        a1[17] = 0;
        v29 = objc_alloc(MEMORY[0x1E696ABC0]);
        v30 = [v29 initWithDomain:*MEMORY[0x1E696A768] code:v21 userInfo:0];
        [(MRCoreUtilsPairingSession *)a1 _handlePairingCompleteWithError:v30];

LABEL_21:
        goto LABEL_22;
      }

      v6 = [MEMORY[0x1E695DEF0] dataWithBytes:"MediaRemote-Read-Encryption-Key" length:31];
      v7 = MEMORY[0x1E695DEF0];
      v8 = "MediaRemote-Write-Encryption-Key";
      v9 = 32;
    }

    v10 = [v7 dataWithBytes:v8 length:v9];
    goto LABEL_8;
  }

LABEL_22:
  v31 = *MEMORY[0x1E69E9840];
}

void __53__MRCoreUtilsPairingSession_deleteIdentityWithError___block_invoke_cold_1(uint64_t a1)
{
  v1 = [(MRCoreUtilsPairingSession *)a1 _onQueueInitializePairingSessionWithState:?];
  OUTLINED_FUNCTION_0_16(v1);
}

@end