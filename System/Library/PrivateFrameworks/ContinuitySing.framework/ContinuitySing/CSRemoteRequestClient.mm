@interface CSRemoteRequestClient
- (BOOL)remoteDisplayIdentifierIsLocal:(id)a3;
- (CSRemoteRequestClient)initWithRemoteDisplayIdentifier:(id)a3 participantInfo:(id)a4 disconnectHandler:(id)a5 connectionCompletionHandler:(id)a6;
- (void)_activateAudioLatencyEstimatorIfNeeded:(id)a3;
- (void)_activateMessageClientIfNeeded:(id)a3;
- (void)_handleHandshakeResponse:(id)a3 error:(id)a4;
- (void)_handleReactionEvent:(id)a3;
- (void)_registerCheckinTimer;
- (void)_registerForReactions;
- (void)_resolvePendingActivationCompletionsWithError:(id)a3;
- (void)_sendCheckinRequest;
- (void)activateWithCompletion:(id)a3;
- (void)cancelAudioLatencyEstimator;
- (void)dealloc;
- (void)decreaseMicrophoneVolume:(id)a3;
- (void)increaseMicrophoneVolume:(id)a3;
- (void)retrieveAttributionsForQueueIdentifiers:(id)a3 handler:(id)a4;
- (void)retrieveAvatarForParticipant:(id)a3 handler:(id)a4;
- (void)retrieveMicrophoneVolume:(id)a3;
- (void)retrieveReverb:(id)a3;
- (void)retrieveSessionState:(id)a3;
- (void)sendDisconnectMessageWithCompletion:(id)a3;
- (void)sendEnableMicRequest:(id)a3;
- (void)sendEventMessage:(id)a3 completion:(id)a4;
- (void)sendReaction:(id)a3;
- (void)sendRequestMessage:(id)a3 completion:(id)a4;
- (void)sendReverb:(int64_t)a3;
- (void)sendStartSingingEvent;
- (void)sendVocalLevel:(double)a3;
- (void)startAudioLatencyEstimator:(id)a3;
@end

@implementation CSRemoteRequestClient

- (CSRemoteRequestClient)initWithRemoteDisplayIdentifier:(id)a3 participantInfo:(id)a4 disconnectHandler:(id)a5 connectionCompletionHandler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v43.receiver = self;
  v43.super_class = CSRemoteRequestClient;
  v15 = [(CSRemoteRequestClient *)&v43 init];
  if (v15)
  {
    v16 = _Block_copy(v13);
    disconnectHandler = v15->_disconnectHandler;
    v15->_disconnectHandler = v16;

    v18 = _Block_copy(v14);
    connectionCompletionHandler = v15->_connectionCompletionHandler;
    v15->_connectionCompletionHandler = v18;

    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.ContinuitySing.companionLinkClient", v20);
    companionLinkQueue = v15->_companionLinkQueue;
    v15->_companionLinkQueue = v21;

    v15->_activeDeviceActivationState = 0;
    v23 = objc_alloc_init(MEMORY[0x277D44160]);
    companionLink = v15->_companionLink;
    v15->_companionLink = v23;

    [(RPCompanionLinkClient *)v15->_companionLink setDispatchQueue:v15->_companionLinkQueue];
    [(RPCompanionLinkClient *)v15->_companionLink setControlFlags:[(RPCompanionLinkClient *)v15->_companionLink controlFlags]| 0x18000000380CLL];
    objc_storeStrong(&v15->_remoteDisplayIdentifier, a3);
    objc_initWeak(&location, v15);
    v25 = v15->_companionLink;
    v26 = CSIdentifierForMessageID(15);
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __119__CSRemoteRequestClient_initWithRemoteDisplayIdentifier_participantInfo_disconnectHandler_connectionCompletionHandler___block_invoke;
    v40[3] = &unk_278E0AEE8;
    objc_copyWeak(&v41, &location);
    [(RPCompanionLinkClient *)v25 registerEventID:v26 options:0 handler:v40];

    v27 = v15->_companionLink;
    v28 = CSIdentifierForMessageID(1005);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __119__CSRemoteRequestClient_initWithRemoteDisplayIdentifier_participantInfo_disconnectHandler_connectionCompletionHandler___block_invoke_11;
    v38[3] = &unk_278E0AEE8;
    objc_copyWeak(&v39, &location);
    [(RPCompanionLinkClient *)v27 registerEventID:v28 options:0 handler:v38];

    v15->_discoveryCompanionLinkActivationState = 1;
    v29 = v15->_companionLink;
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __119__CSRemoteRequestClient_initWithRemoteDisplayIdentifier_participantInfo_disconnectHandler_connectionCompletionHandler___block_invoke_12;
    v36[3] = &unk_278E0ADC8;
    v37 = v15;
    [(RPCompanionLinkClient *)v29 activateWithCompletion:v36];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __119__CSRemoteRequestClient_initWithRemoteDisplayIdentifier_participantInfo_disconnectHandler_connectionCompletionHandler___block_invoke_14;
    v33[3] = &unk_278E0AF38;
    objc_copyWeak(&v35, &location);
    v34 = v12;
    [(RPCompanionLinkClient *)v15->_companionLink setLocalDeviceUpdatedHandler:v33];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __119__CSRemoteRequestClient_initWithRemoteDisplayIdentifier_participantInfo_disconnectHandler_connectionCompletionHandler___block_invoke_3;
    v31[3] = &unk_278E0AF60;
    objc_copyWeak(&v32, &location);
    [(RPCompanionLinkClient *)v15->_companionLink setDeviceFoundHandler:v31];
    objc_destroyWeak(&v32);

    objc_destroyWeak(&v35);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __119__CSRemoteRequestClient_initWithRemoteDisplayIdentifier_participantInfo_disconnectHandler_connectionCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [[CSSessionStateUpdate alloc] initWithMessage:v3];
  v6 = v5;
  if (WeakRetained)
  {
    if (WeakRetained[9] && v5 != 0)
    {
      v8 = ContinuitySingLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 136315394;
        v18 = "[CSRemoteRequestClient initWithRemoteDisplayIdentifier:participantInfo:disconnectHandler:connectionCompletionHandler:]_block_invoke";
        v19 = 2112;
        v20 = v3;
        _os_log_impl(&dword_2441FB000, v8, OS_LOG_TYPE_DEFAULT, "%s: Received continuity sing session update message %@", &v17, 0x16u);
      }

      v9 = WeakRetained[9];
      v10 = [CSSingSessionState alloc];
      [(CSSessionStateUpdate *)v6 micVolume];
      v12 = v11;
      v13 = [(CSSessionStateUpdate *)v6 reverbLevel];
      v14 = [(CSSessionStateUpdate *)v6 activeMicRemoteDisplayID];
      v15 = [(CSSessionStateUpdate *)v6 participants];
      v16 = [(CSSingSessionState *)v10 initWithMicVolume:v13 reverbLevel:v14 activeMicRemoteDisplayID:v15 participants:[(CSSessionStateUpdate *)v6 sdrMode] sdrMode:v12];
      (*(v9 + 16))(v9, v16);
    }
  }
}

void __119__CSRemoteRequestClient_initWithRemoteDisplayIdentifier_participantInfo_disconnectHandler_connectionCompletionHandler___block_invoke_11(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && WeakRetained[1])
  {
    v6 = ContinuitySingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[CSRemoteRequestClient initWithRemoteDisplayIdentifier:participantInfo:disconnectHandler:connectionCompletionHandler:]_block_invoke";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: Received continuity sing session disconnect message %@", &v7, 0x16u);
    }

    (*(v5[1] + 16))();
  }
}

void __119__CSRemoteRequestClient_initWithRemoteDisplayIdentifier_participantInfo_disconnectHandler_connectionCompletionHandler___block_invoke_12(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ContinuitySingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __119__CSRemoteRequestClient_initWithRemoteDisplayIdentifier_participantInfo_disconnectHandler_connectionCompletionHandler___block_invoke_12_cold_1();
    }

    *(*(a1 + 32) + 16) = 0;
    [*(a1 + 32) _resolvePendingActivationCompletionsWithError:v3];
  }

  else
  {
    *(*(a1 + 32) + 16) = 2;
    if ([*(*(a1 + 32) + 120) count])
    {
      [*(a1 + 32) _activateMessageClientIfNeeded:0];
    }
  }
}

void __119__CSRemoteRequestClient_initWithRemoteDisplayIdentifier_participantInfo_disconnectHandler_connectionCompletionHandler___block_invoke_14(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && !*(WeakRetained + 5))
  {
    v6 = [CSHandshakeMessage alloc];
    v7 = [v3 idsDeviceIdentifier];
    v8 = [v3 sessionPairingIdentifier];
    v9 = [(CSHandshakeMessage *)v6 initWithIDSIdentifier:v7 sessionPairingIdentifier:v8 participantInfo:*(a1 + 32)];

    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __119__CSRemoteRequestClient_initWithRemoteDisplayIdentifier_participantInfo_disconnectHandler_connectionCompletionHandler___block_invoke_2;
    v10[3] = &unk_278E0AF10;
    v11 = v5;
    [v11 sendRequestMessage:v9 completion:v10];
  }
}

void __119__CSRemoteRequestClient_initWithRemoteDisplayIdentifier_participantInfo_disconnectHandler_connectionCompletionHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && WeakRetained[8])
  {
    v6 = ContinuitySingLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[CSRemoteRequestClient initWithRemoteDisplayIdentifier:participantInfo:disconnectHandler:connectionCompletionHandler:]_block_invoke_3";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_2441FB000, v6, OS_LOG_TYPE_DEFAULT, "%s: Device found pending activation: %@", &v7, 0x16u);
    }

    (*(v5[8] + 16))();
  }
}

- (void)dealloc
{
  v3 = self->_pendingCompletionBlocks;
  if ([(NSMutableArray *)v3 count])
  {
    companionLinkQueue = self->_companionLinkQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __32__CSRemoteRequestClient_dealloc__block_invoke;
    block[3] = &unk_278E0ACD8;
    v9 = v3;
    dispatch_async(companionLinkQueue, block);
  }

  [(RPCompanionLinkClient *)self->_activeMessageClient invalidate];
  activeMessageClient = self->_activeMessageClient;
  self->_activeMessageClient = 0;

  [(RPCompanionLinkClient *)self->_companionLink invalidate];
  companionLink = self->_companionLink;
  self->_companionLink = 0;

  [(NSTimer *)self->_checkinTimer invalidate];
  v7.receiver = self;
  v7.super_class = CSRemoteRequestClient;
  [(CSRemoteRequestClient *)&v7 dealloc];
}

void __32__CSRemoteRequestClient_dealloc__block_invoke(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        v7 = objc_alloc(MEMORY[0x277CCA9B8]);
        v8 = [v7 initWithDomain:CSRemoteRequestClientErrorDomain code:6 userInfo:0];
        (*(v6 + 16))(v6, v8);

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v3);
  }
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  companionLinkQueue = self->_companionLinkQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__CSRemoteRequestClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_278E0AF88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(companionLinkQueue, v7);
}

- (void)_activateMessageClientIfNeeded:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_companionLinkQueue);
  if (self->_activeDeviceActivationState == 2)
  {
    v5 = ContinuitySingLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v41 = "[CSRemoteRequestClient _activateMessageClientIfNeeded:]";
      _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_INFO, "%s: Message client previously activated", buf, 0xCu);
    }

    v4[2](v4, 0);
  }

  else
  {
    if (!self->_pendingCompletionBlocks)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
      pendingCompletionBlocks = self->_pendingCompletionBlocks;
      self->_pendingCompletionBlocks = v6;
    }

    if (v4)
    {
      v8 = self->_pendingCompletionBlocks;
      v9 = _Block_copy(v4);
      [(NSMutableArray *)v8 addObject:v9];
    }

    if (self->_activeDeviceActivationState == 1 || self->_discoveryCompanionLinkActivationState == 1)
    {
      v10 = ContinuitySingLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(CSRemoteRequestClient *)v10 _activateMessageClientIfNeeded:v11, v12, v13, v14, v15, v16, v17];
      }
    }

    else
    {
      self->_activeDeviceActivationState = 1;
      objc_initWeak(&location, self);
      v18 = objc_alloc(MEMORY[0x277D27EF8]);
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __56__CSRemoteRequestClient__activateMessageClientIfNeeded___block_invoke;
      v46[3] = &unk_278E0ABF8;
      objc_copyWeak(&v47, &location);
      v19 = [v18 initWithTimeout:v46 interruptionHandler:5.0];
      activationGuard = self->_activationGuard;
      self->_activationGuard = v19;

      v21 = ContinuitySingLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        remoteDisplayIdentifier = self->_remoteDisplayIdentifier;
        v23 = [(CSRemoteRequestClient *)self companionLink];
        v24 = [v23 activeDevices];
        *buf = 136315650;
        v41 = "[CSRemoteRequestClient _activateMessageClientIfNeeded:]";
        v42 = 2112;
        v43 = remoteDisplayIdentifier;
        v44 = 2112;
        v45 = v24;
        _os_log_impl(&dword_2441FB000, v21, OS_LOG_TYPE_INFO, "%s: Activating message client to %@ with %@", buf, 0x20u);
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v25 = [(CSRemoteRequestClient *)self companionLink];
      v26 = [v25 activeDevices];

      v27 = [v26 countByEnumeratingWithState:&v36 objects:v35 count:16];
      if (v27)
      {
        v28 = *v37;
        while (2)
        {
          for (i = 0; i != v27; i = i + 1)
          {
            if (*v37 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = *(*(&v36 + 1) + 8 * i);
            if ([v30 compareWithDeviceIdentifier:self->_remoteDisplayIdentifier])
            {
              v27 = v30;
              goto LABEL_26;
            }
          }

          v27 = [v26 countByEnumeratingWithState:&v36 objects:v35 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

LABEL_26:

      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__CSRemoteRequestClient__activateMessageClientIfNeeded___block_invoke_25;
      aBlock[3] = &unk_278E0AF60;
      objc_copyWeak(&v34, &location);
      v31 = _Block_copy(aBlock);
      pendingActivationDeviceFoundHandler = self->_pendingActivationDeviceFoundHandler;
      self->_pendingActivationDeviceFoundHandler = v31;

      if (v27)
      {
        (*(self->_pendingActivationDeviceFoundHandler + 2))();
      }

      objc_destroyWeak(&v34);

      objc_destroyWeak(&v47);
      objc_destroyWeak(&location);
    }
  }
}

void __56__CSRemoteRequestClient__activateMessageClientIfNeeded___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((a1 + 32));
    v4 = v3[14];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__CSRemoteRequestClient__activateMessageClientIfNeeded___block_invoke_2;
    block[3] = &unk_278E0ACD8;
    block[4] = v3;
    dispatch_async(v4, block);
  }
}

void __56__CSRemoteRequestClient__activateMessageClientIfNeeded___block_invoke_2(uint64_t a1)
{
  v2 = ContinuitySingLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __56__CSRemoteRequestClient__activateMessageClientIfNeeded___block_invoke_2_cold_1(a1);
  }

  *(*(a1 + 32) + 24) = 0;
  v3 = *(a1 + 32);
  v4 = *(v3 + 64);
  *(v3 + 64) = 0;

  v5 = *(a1 + 32);
  v6 = objc_alloc(MEMORY[0x277CCA9B8]);
  v7 = [v6 initWithDomain:CSRemoteRequestClientErrorDomain code:4 userInfo:0];
  [v5 _resolvePendingActivationCompletionsWithError:v7];
}

void __56__CSRemoteRequestClient__activateMessageClientIfNeeded___block_invoke_25(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained((a1 + 32));
    if ([v3 compareWithDeviceIdentifier:v5[13]])
    {
      v6 = objc_alloc_init(MEMORY[0x277D44160]);
      [v6 setDispatchQueue:v5[14]];
      [v6 setDestinationDevice:v3];
      v7 = [v5 companionLink];
      [v6 setControlFlags:{objc_msgSend(v7, "controlFlags")}];

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __56__CSRemoteRequestClient__activateMessageClientIfNeeded___block_invoke_2_26;
      v13[3] = &unk_278E0ABD0;
      objc_copyWeak(&v14, (a1 + 32));
      [v6 setInvalidationHandler:v13];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __56__CSRemoteRequestClient__activateMessageClientIfNeeded___block_invoke_3;
      v10[3] = &unk_278E0AFB0;
      objc_copyWeak(&v12, (a1 + 32));
      v8 = v6;
      v11 = v8;
      [v8 activateWithCompletion:v10];
      v9 = v5[8];
      v5[8] = 0;

      objc_destroyWeak(&v12);
      objc_destroyWeak(&v14);
    }
  }
}

void __56__CSRemoteRequestClient__activateMessageClientIfNeeded___block_invoke_2_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[3] = 0;
  }
}

void __56__CSRemoteRequestClient__activateMessageClientIfNeeded___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained && [WeakRetained[7] disarm])
  {
    v6 = ContinuitySingLog();
    v7 = v6;
    if (v3)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __56__CSRemoteRequestClient__activateMessageClientIfNeeded___block_invoke_3_cold_1();
      }

      [*(a1 + 32) invalidate];
      v5[3] = 0;
      v8 = v5;
      v9 = v3;
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315138;
        v11 = "[CSRemoteRequestClient _activateMessageClientIfNeeded:]_block_invoke";
        _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: Successfully activated message client", &v10, 0xCu);
      }

      objc_storeStrong(v5 + 11, *(a1 + 32));
      v5[3] = 2;
      [v5 _updateCurrentState];
      v8 = v5;
      v9 = 0;
    }

    [v8 _resolvePendingActivationCompletionsWithError:v9];
  }
}

- (void)_resolvePendingActivationCompletionsWithError:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_companionLinkQueue);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_pendingCompletionBlocks;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        (*(*(*(&v12 + 1) + 8 * v9++) + 16))();
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v7);
  }

  pendingCompletionBlocks = self->_pendingCompletionBlocks;
  self->_pendingCompletionBlocks = 0;
}

- (BOOL)remoteDisplayIdentifierIsLocal:(id)a3
{
  if (!a3)
  {
    return 0;
  }

  companionLink = self->_companionLink;
  v4 = a3;
  v5 = [(RPCompanionLinkClient *)companionLink localDevice];
  v6 = [v5 compareWithDeviceIdentifier:v4];

  return v6;
}

- (void)sendRequestMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__CSRemoteRequestClient_sendRequestMessage_completion___block_invoke;
  v10[3] = &unk_278E0B020;
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  objc_copyWeak(&v13, &location);
  [(CSRemoteRequestClient *)self activateWithCompletion:v10];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
}

void __55__CSRemoteRequestClient_sendRequestMessage_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ContinuitySingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __55__CSRemoteRequestClient_sendRequestMessage_completion___block_invoke_cold_1(a1);
    }

    (*(a1[5] + 2))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v6 = WeakRetained;
    if (WeakRetained)
    {
      v7 = *(WeakRetained + 11);
      v8 = [a1[4] identifier];
      v9 = [a1[4] dictionaryRepresentation];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __55__CSRemoteRequestClient_sendRequestMessage_completion___block_invoke_29;
      v13[3] = &unk_278E0AFF8;
      v14 = a1[4];
      v15 = a1[5];
      [v7 sendRequestID:v8 request:v9 options:0 responseHandler:v13];

      v10 = v14;
    }

    else
    {
      v11 = objc_alloc(MEMORY[0x277CCA9B8]);
      v10 = [v11 initWithDomain:CSRemoteRequestClientErrorDomain code:0 userInfo:0];
      v12 = ContinuitySingLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        __55__CSRemoteRequestClient_sendRequestMessage_completion___block_invoke_cold_1(a1);
      }

      (*(a1[5] + 2))();
    }
  }
}

void __55__CSRemoteRequestClient_sendRequestMessage_completion___block_invoke_29(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v12 = a2;
  v6 = a4;
  if (v12)
  {
    v7 = *(a1 + 32);
    v8 = [objc_opt_class() responseMessageFromDictionary:v12];
    v9 = *(a1 + 40);
    if (v8)
    {
      (*(v9 + 16))(v9, v8, v6);
    }

    else
    {
      v10 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = [v10 initWithDomain:CSRemoteRequestClientErrorDomain code:5 userInfo:0];
      (*(v9 + 16))(v9, 0, v11);
    }
  }

  else
  {
    (*(*(a1 + 40) + 16))();
  }
}

- (void)sendEventMessage:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __53__CSRemoteRequestClient_sendEventMessage_completion___block_invoke;
  v10[3] = &unk_278E0B070;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [(CSRemoteRequestClient *)self activateWithCompletion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

void __53__CSRemoteRequestClient_sendEventMessage_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (v3 || !WeakRetained)
  {
    v9 = ContinuitySingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_loadWeakRetained(a1 + 6);
      v11 = a1[4];
      *buf = 136315906;
      v15 = "[CSRemoteRequestClient sendEventMessage:completion:]_block_invoke";
      v16 = 2112;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      v20 = 2112;
      v21 = v3;
      _os_log_error_impl(&dword_2441FB000, v9, OS_LOG_TYPE_ERROR, "%s: %@ Failed to send %@ with error %@", buf, 0x2Au);
    }

    (*(a1[5] + 2))();
  }

  else
  {
    v6 = *(WeakRetained + 11);
    v7 = [a1[4] identifier];
    v8 = [a1[4] dictionaryRepresentation];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __53__CSRemoteRequestClient_sendEventMessage_completion___block_invoke_31;
    v12[3] = &unk_278E0B048;
    v13 = a1[5];
    [v6 sendEventID:v7 event:v8 options:0 completion:v12];
  }
}

- (void)retrieveMicrophoneVolume:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CSMessageVolumeRequest);
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__CSRemoteRequestClient_retrieveMicrophoneVolume___block_invoke;
  v8[3] = &unk_278E0B098;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  v7 = v5;
  v9 = v7;
  [(CSRemoteRequestClient *)self sendRequestMessage:v7 completion:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__CSRemoteRequestClient_retrieveMicrophoneVolume___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 48));
  v7 = objc_loadWeakRetained(&to);

  if (v7)
  {
    if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v10 = ContinuitySingLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __50__CSRemoteRequestClient_retrieveMicrophoneVolume___block_invoke_cold_1(a1);
      }

      (*(*(a1 + 40) + 16))(0.0);
    }

    else
    {
      v8 = ContinuitySingLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v14 = 136315650;
        v15 = "[CSRemoteRequestClient retrieveMicrophoneVolume:]_block_invoke";
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&dword_2441FB000, v8, OS_LOG_TYPE_DEFAULT, "%s: Successfully sent request %@, response: %@", &v14, 0x20u);
      }

      [v5 volume];
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = [v12 initWithDomain:CSRemoteRequestClientErrorDomain code:0 userInfo:0];
    (*(v11 + 16))(v11, v13, 0.0);
  }

  objc_destroyWeak(&to);
}

- (void)increaseMicrophoneVolume:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CSMessageVolumeIncreaseRequest);
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__CSRemoteRequestClient_increaseMicrophoneVolume___block_invoke;
  v8[3] = &unk_278E0B098;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  v7 = v5;
  v9 = v7;
  [(CSRemoteRequestClient *)self sendRequestMessage:v7 completion:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__CSRemoteRequestClient_increaseMicrophoneVolume___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 48));
  v7 = objc_loadWeakRetained(&to);

  if (v7)
  {
    if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v10 = ContinuitySingLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __50__CSRemoteRequestClient_increaseMicrophoneVolume___block_invoke_cold_1(a1);
      }

      (*(*(a1 + 40) + 16))(0.0);
    }

    else
    {
      v8 = ContinuitySingLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v14 = 136315650;
        v15 = "[CSRemoteRequestClient increaseMicrophoneVolume:]_block_invoke";
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&dword_2441FB000, v8, OS_LOG_TYPE_DEFAULT, "%s: Successfully sent request %@, response: %@", &v14, 0x20u);
      }

      [v5 volume];
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = [v12 initWithDomain:CSRemoteRequestClientErrorDomain code:0 userInfo:0];
    (*(v11 + 16))(v11, v13, 0.0);
  }

  objc_destroyWeak(&to);
}

- (void)decreaseMicrophoneVolume:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CSMessageVolumeDecreaseRequest);
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__CSRemoteRequestClient_decreaseMicrophoneVolume___block_invoke;
  v8[3] = &unk_278E0B098;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  v7 = v5;
  v9 = v7;
  [(CSRemoteRequestClient *)self sendRequestMessage:v7 completion:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __50__CSRemoteRequestClient_decreaseMicrophoneVolume___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 48));
  v7 = objc_loadWeakRetained(&to);

  if (v7)
  {
    if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v10 = ContinuitySingLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __50__CSRemoteRequestClient_decreaseMicrophoneVolume___block_invoke_cold_1(a1);
      }

      (*(*(a1 + 40) + 16))(0.0);
    }

    else
    {
      v8 = ContinuitySingLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v14 = 136315650;
        v15 = "[CSRemoteRequestClient decreaseMicrophoneVolume:]_block_invoke";
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&dword_2441FB000, v8, OS_LOG_TYPE_DEFAULT, "%s: Successfully sent request %@, response: %@", &v14, 0x20u);
      }

      [v5 volume];
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = [v12 initWithDomain:CSRemoteRequestClientErrorDomain code:0 userInfo:0];
    (*(v11 + 16))(v11, v13, 0.0);
  }

  objc_destroyWeak(&to);
}

- (void)retrieveReverb:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CSReverbRequest);
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __40__CSRemoteRequestClient_retrieveReverb___block_invoke;
  v8[3] = &unk_278E0B0C0;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  v7 = v5;
  v9 = v7;
  [(CSRemoteRequestClient *)self sendRequestMessage:v7 completion:v8];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

void __40__CSRemoteRequestClient_retrieveReverb___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  objc_copyWeak(&to, (a1 + 48));
  v7 = objc_loadWeakRetained(&to);

  if (v7)
  {
    if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v10 = ContinuitySingLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __40__CSRemoteRequestClient_retrieveReverb___block_invoke_cold_1(a1);
      }

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v8 = ContinuitySingLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(a1 + 32);
        v14 = 136315650;
        v15 = "[CSRemoteRequestClient retrieveReverb:]_block_invoke";
        v16 = 2112;
        v17 = v9;
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&dword_2441FB000, v8, OS_LOG_TYPE_DEFAULT, "%s: Successfully sent request %@, response: %@", &v14, 0x20u);
      }

      [v5 reverbLevel];
      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v11 = *(a1 + 40);
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v13 = [v12 initWithDomain:CSRemoteRequestClientErrorDomain code:0 userInfo:0];
    (*(v11 + 16))(v11, 0, v13);
  }

  objc_destroyWeak(&to);
}

- (void)sendReverb:(int64_t)a3
{
  v5 = ContinuitySingLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromCSReverbLevel(a3);
    *buf = 136315394;
    v11 = "[CSRemoteRequestClient sendReverb:]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: Got Reverb %@", buf, 0x16u);
  }

  v7 = [[CSReverbMessage alloc] initWithReverbLevel:a3];
  v8 = ContinuitySingLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[CSRemoteRequestClient sendReverb:]";
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&dword_2441FB000, v8, OS_LOG_TYPE_DEFAULT, "%s: Got Message %@", buf, 0x16u);
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __36__CSRemoteRequestClient_sendReverb___block_invoke;
  v9[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v9[4] = a3;
  [(CSRemoteRequestClient *)self sendEventMessage:v7 completion:v9];
}

void __36__CSRemoteRequestClient_sendReverb___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ContinuitySingLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __36__CSRemoteRequestClient_sendReverb___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = NSStringFromCSReverbLevel(*(a1 + 32));
    v7 = 136315394;
    v8 = "[CSRemoteRequestClient sendReverb:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: sent reverb %@", &v7, 0x16u);
  }
}

- (void)sendVocalLevel:(double)a3
{
  v5 = [[CSVocalMessage alloc] initWithVocalLevel:a3];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __40__CSRemoteRequestClient_sendVocalLevel___block_invoke;
  v6[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  *&v6[4] = a3;
  [(CSRemoteRequestClient *)self sendEventMessage:v5 completion:v6];
}

void __40__CSRemoteRequestClient_sendVocalLevel___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ContinuitySingLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __40__CSRemoteRequestClient_sendVocalLevel___block_invoke_cold_1(a1, v3, v5);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[CSRemoteRequestClient sendVocalLevel:]_block_invoke";
    v9 = 2048;
    v10 = v6;
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: sent vocal level %f", &v7, 0x16u);
  }
}

- (void)sendReaction:(id)a3
{
  v4 = a3;
  v5 = [CSReactionMessage alloc];
  v6 = [(RPCompanionLinkClient *)self->_companionLink localDevice];
  v7 = [v6 idsDeviceIdentifier];
  v8 = [(CSReactionMessage *)v5 initWithReaction:v4 senderIDSIdentifier:v7];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__CSRemoteRequestClient_sendReaction___block_invoke;
  v10[3] = &unk_278E0ADC8;
  v11 = v4;
  v9 = v4;
  [(CSRemoteRequestClient *)self sendEventMessage:v8 completion:v10];
}

void __38__CSRemoteRequestClient_sendReaction___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ContinuitySingLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __38__CSRemoteRequestClient_sendReaction___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[CSRemoteRequestClient sendReaction:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: sent reaction %@", &v7, 0x16u);
  }
}

- (void)_registerForReactions
{
  objc_initWeak(&location, self);
  activeMessageClient = self->_activeMessageClient;
  v4 = CSIdentifierForMessageID(1001);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__CSRemoteRequestClient__registerForReactions__block_invoke;
  v5[3] = &unk_278E0AEE8;
  objc_copyWeak(&v6, &location);
  [(RPCompanionLinkClient *)activeMessageClient registerEventID:v4 options:0 handler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __46__CSRemoteRequestClient__registerForReactions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleReactionEvent:v3];
}

- (void)_handleReactionEvent:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_companionLinkQueue);
  v5 = [[CSReactionMessage alloc] initWithMessage:v4];
  v6 = ContinuitySingLog();
  p_super = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v16 = "[CSRemoteRequestClient _handleReactionEvent:]";
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_2441FB000, p_super, OS_LOG_TYPE_DEFAULT, "%s: Received reaction event %@", buf, 0x16u);
    }

    v8 = [(CSReactionMessage *)v5 senderIDSIdentifier];
    v9 = [(RPCompanionLinkClient *)self->_companionLink localDevice];
    v10 = [v9 idsDeviceIdentifier];
    v11 = [v8 isEqualToString:v10];

    if (v11)
    {
      p_super = ContinuitySingLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v16 = "[CSRemoteRequestClient _handleReactionEvent:]";
        _os_log_impl(&dword_2441FB000, p_super, OS_LOG_TYPE_DEFAULT, "%s: Dropping reaction event that came from us", buf, 0xCu);
      }
    }

    else
    {
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __46__CSRemoteRequestClient__handleReactionEvent___block_invoke;
      v12[3] = &unk_278E0AD78;
      v13 = v5;
      v14 = self;
      dispatch_async(MEMORY[0x277D85CD0], v12);
      p_super = &v13->super.super;
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [CSRemoteRequestClient _handleReactionEvent:];
  }
}

void __46__CSRemoteRequestClient__handleReactionEvent___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) reaction];
  v7[0] = v2;
  v6[1] = @"sender-identifier";
  v3 = [*(a1 + 32) senderIDSIdentifier];
  v7[1] = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];

  v5 = [MEMORY[0x277CCAB98] defaultCenter];
  [v5 postNotificationName:@"ReactionEvent" object:*(a1 + 40) userInfo:v4];
}

- (void)_registerCheckinTimer
{
  if (_registerCheckinTimer_onceToken != -1)
  {
    [CSRemoteRequestClient _registerCheckinTimer];
  }

  objc_initWeak(&location, self);
  v3 = MEMORY[0x277CBEBB8];
  v4 = *&_registerCheckinTimer_checkinInterval;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__CSRemoteRequestClient__registerCheckinTimer__block_invoke_2;
  v7[3] = &unk_278E0B128;
  objc_copyWeak(&v8, &location);
  v5 = [v3 scheduledTimerWithTimeInterval:1 repeats:v7 block:v4];
  checkinTimer = self->_checkinTimer;
  self->_checkinTimer = v5;

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __46__CSRemoteRequestClient__registerCheckinTimer__block_invoke()
{
  v1 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.ContinuitySing"];
  [v1 doubleForKey:@"clientCheckinTimeInterval"];
  if (v0 < 1.0)
  {
    v0 = 30.0;
  }

  _registerCheckinTimer_checkinInterval = *&v0;
}

void __46__CSRemoteRequestClient__registerCheckinTimer__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _sendCheckinRequest];
}

- (void)_sendCheckinRequest
{
  v3 = objc_alloc_init(CSClientCheckinRequest);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __44__CSRemoteRequestClient__sendCheckinRequest__block_invoke;
  v5[3] = &unk_278E0B150;
  v6 = v3;
  v7 = self;
  v4 = v3;
  [(CSRemoteRequestClient *)self sendRequestMessage:v4 completion:v5];
}

void __44__CSRemoteRequestClient__sendCheckinRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = ContinuitySingLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __44__CSRemoteRequestClient__sendCheckinRequest__block_invoke_cold_1(a1);
    }

    v12 = ContinuitySingLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __44__CSRemoteRequestClient__sendCheckinRequest__block_invoke_cold_2(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    (*(*(*(a1 + 40) + 8) + 16))();
  }

  else
  {
    v7 = [v5 isValid];
    v8 = ContinuitySingLog();
    v9 = v8;
    if (v7)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v21 = 136315650;
        v22 = "[CSRemoteRequestClient _sendCheckinRequest]_block_invoke";
        v23 = 2112;
        v24 = v10;
        v25 = 2112;
        v26 = v5;
        _os_log_impl(&dword_2441FB000, v9, OS_LOG_TYPE_DEFAULT, "%s: Successfully sent checkin request %@, response: %@", &v21, 0x20u);
      }
    }

    else
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        __44__CSRemoteRequestClient__sendCheckinRequest__block_invoke_cold_3(a1);
      }

      v20 = +[CSShieldConnectionManager sharedManager];
      [v20 reportErrorWithCode:-116 subsystem:0 description:@"The remote server does not recognize this client as valid" exitSession:1];
    }
  }
}

- (void)sendEnableMicRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CSEnableMicRequest);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__CSRemoteRequestClient_sendEnableMicRequest___block_invoke;
  v8[3] = &unk_278E0B178;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [(CSRemoteRequestClient *)self sendRequestMessage:v7 completion:v8];
}

void __46__CSRemoteRequestClient_sendEnableMicRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = ContinuitySingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __46__CSRemoteRequestClient_sendEnableMicRequest___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), 2, v6);
  }

  else
  {
    v7 = ContinuitySingLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v10 = 136315650;
      v11 = "[CSRemoteRequestClient sendEnableMicRequest:]_block_invoke";
      v12 = 2112;
      v13 = v8;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_2441FB000, v7, OS_LOG_TYPE_DEFAULT, "%s: Successfully sent session update request %@, response: %@", &v10, 0x20u);
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), [v5 result], 0);
  }
}

- (void)retrieveSessionState:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(CSSessionStateUpdateRequest);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __46__CSRemoteRequestClient_retrieveSessionState___block_invoke;
  v8[3] = &unk_278E0B1A0;
  v9 = v5;
  v10 = v4;
  v6 = v4;
  v7 = v5;
  [(CSRemoteRequestClient *)self sendRequestMessage:v7 completion:v8];
}

void __46__CSRemoteRequestClient_retrieveSessionState___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v16 = ContinuitySingLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __46__CSRemoteRequestClient_retrieveSessionState___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [CSSingSessionState alloc];
    [v5 micVolume];
    v9 = v8;
    v10 = [v5 reverbLevel];
    v11 = [v5 activeMicRemoteDisplayID];
    v12 = [v5 participants];
    v13 = -[CSSingSessionState initWithMicVolume:reverbLevel:activeMicRemoteDisplayID:participants:sdrMode:](v7, "initWithMicVolume:reverbLevel:activeMicRemoteDisplayID:participants:sdrMode:", v10, v11, v12, [v5 sdrMode], v9);

    v14 = ContinuitySingLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v17 = 136315650;
      v18 = "[CSRemoteRequestClient retrieveSessionState:]_block_invoke";
      v19 = 2112;
      v20 = v15;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_2441FB000, v14, OS_LOG_TYPE_DEFAULT, "%s: Successfully sent session update request %@, state: %@", &v17, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }
}

void __83__CSRemoteRequestClient_sendQueuedSongsNotificationWithTracks_shouldQueueOnServer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ContinuitySingLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __83__CSRemoteRequestClient_sendQueuedSongsNotificationWithTracks_shouldQueueOnServer___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = 136315394;
    v8 = "[CSRemoteRequestClient sendQueuedSongsNotificationWithTracks:shouldQueueOnServer:]_block_invoke";
    v9 = 2112;
    v10 = v6;
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: Successfully sent track queued notification %@", &v7, 0x16u);
  }
}

- (void)startAudioLatencyEstimator:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__CSRemoteRequestClient_startAudioLatencyEstimator___block_invoke;
  v6[3] = &unk_278E0B1E8;
  v7 = v4;
  v5 = v4;
  [(CSRemoteRequestClient *)self _activateAudioLatencyEstimatorIfNeeded:v6];
}

- (void)cancelAudioLatencyEstimator
{
  v2 = [(CSRemoteRequestClient *)self audioLatencyEstimatorClient];
  [v2 cancel];
}

- (void)_activateAudioLatencyEstimatorIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(CSRemoteRequestClient *)self audioLatencyEstimatorClient];
  if (v5)
  {
    v4[2](v4, v5);
  }

  else
  {
    objc_initWeak(&location, self);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__CSRemoteRequestClient__activateAudioLatencyEstimatorIfNeeded___block_invoke;
    v6[3] = &unk_278E0B210;
    v7 = v4;
    objc_copyWeak(&v8, &location);
    [(CSRemoteRequestClient *)self activateWithCompletion:v6];
    objc_destroyWeak(&v8);

    objc_destroyWeak(&location);
  }
}

void __64__CSRemoteRequestClient__activateAudioLatencyEstimatorIfNeeded___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = ContinuitySingLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __64__CSRemoteRequestClient__activateAudioLatencyEstimatorIfNeeded___block_invoke_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    if (WeakRetained)
    {
      v6 = [CSAudioLatencyEstimatorClient alloc];
      v7 = [WeakRetained activeMessageClient];
      v8 = [(CSAudioLatencyEstimatorClient *)v6 initWithActiveMessageClient:v7];

      v9 = WeakRetained[16];
      WeakRetained[16] = v8;
      v10 = v8;

      v11 = ContinuitySingLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315138;
        v15 = "[CSRemoteRequestClient _activateAudioLatencyEstimatorIfNeeded:]_block_invoke";
        _os_log_impl(&dword_2441FB000, v11, OS_LOG_TYPE_DEFAULT, "%s: Activated audio latency estimator", &v14, 0xCu);
      }

      v12 = v10;
    }

    else
    {
      v13 = objc_alloc(MEMORY[0x277CCA9B8]);
      v12 = [v13 initWithDomain:CSRemoteRequestClientErrorDomain code:0 userInfo:0];
      v11 = ContinuitySingLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __64__CSRemoteRequestClient__activateAudioLatencyEstimatorIfNeeded___block_invoke_cold_1();
      }
    }

    (*(*(a1 + 32) + 16))();
  }
}

void __41__CSRemoteRequestClient_sendDisplayMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = ContinuitySingLog();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __41__CSRemoteRequestClient_sendDisplayMode___block_invoke_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) enableSDR];
    v7 = @"NO";
    if (v6)
    {
      v7 = @"YES";
    }

    v8 = 136315394;
    v9 = "[CSRemoteRequestClient sendDisplayMode:]_block_invoke";
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_2441FB000, v5, OS_LOG_TYPE_DEFAULT, "%s: sent display mode enable sdr %@", &v8, 0x16u);
  }
}

- (void)sendDisconnectMessageWithCompletion:(id)a3
{
  v4 = a3;
  companionLinkQueue = self->_companionLinkQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__CSRemoteRequestClient_sendDisconnectMessageWithCompletion___block_invoke;
  v7[3] = &unk_278E0AF88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(companionLinkQueue, v7);
}

void __61__CSRemoteRequestClient_sendDisconnectMessageWithCompletion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 40);
  if (v2)
  {
    *(v1 + 40) = 0;

    v4 = objc_alloc_init(CSClientDisconnectMessage);
    [*(a1 + 32) sendEventMessage:v4 completion:*(a1 + 40)];
  }
}

- (void)_handleHandshakeResponse:(id)a3 error:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = _Block_copy(self->_connectionCompletionHandler);
  connectionCompletionHandler = self->_connectionCompletionHandler;
  self->_connectionCompletionHandler = 0;

  if (v9)
  {
    v11 = ContinuitySingLog();
    v12 = v11;
    if (v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [CSRemoteRequestClient _handleHandshakeResponse:error:];
      }

      v13 = [v8 domain];
      if ([v13 isEqualToString:0x2857980B0])
      {
        v14 = [v8 code];

        if (v14 == 3)
        {
          v15 = [MEMORY[0x277CCAB98] defaultCenter];
          v41 = @"CSRemoteRequestClientErrorCode";
          v42 = &unk_2857A1738;
          v16 = MEMORY[0x277CBEAC0];
          v17 = &v42;
          v18 = &v41;
LABEL_24:
          v31 = [v16 dictionaryWithObjects:v17 forKeys:v18 count:1];
          [v15 postNotificationName:@"CSRemoteRequestClientErrorNotification" object:self userInfo:v31];

          v9[2](v9, v8);
          goto LABEL_25;
        }
      }

      else
      {
      }

      v29 = [v8 domain];
      if ([v29 isEqualToString:0x2857980B0])
      {
        v30 = [v8 code];

        if (v30 == 4)
        {
          v15 = [MEMORY[0x277CCAB98] defaultCenter];
          v39 = @"CSRemoteRequestClientErrorCode";
          v40 = &unk_2857A1750;
          v16 = MEMORY[0x277CBEAC0];
          v17 = &v40;
          v18 = &v39;
          goto LABEL_24;
        }
      }

      else
      {
      }

      v15 = [MEMORY[0x277CCAB98] defaultCenter];
      v37 = @"CSRemoteRequestClientErrorCode";
      v38 = &unk_2857A1768;
      v16 = MEMORY[0x277CBEAC0];
      v17 = &v38;
      v18 = &v37;
      goto LABEL_24;
    }

    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v34 = "[CSRemoteRequestClient _handleHandshakeResponse:error:]";
      v35 = 2112;
      v36 = v7;
      _os_log_impl(&dword_2441FB000, v12, OS_LOG_TYPE_DEFAULT, "%s: Server handshake successful: %@", buf, 0x16u);
    }

    v9[2](v9, 0);
    objc_storeStrong(&self->_serverHandshake, a3);
    [(CSRemoteRequestClient *)self _registerForReactions];
    if ([v7 shouldActivateMicrophone])
    {
      v27 = ContinuitySingLog();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v34 = "[CSRemoteRequestClient _handleHandshakeResponse:error:]";
        _os_log_impl(&dword_2441FB000, v27, OS_LOG_TYPE_DEFAULT, "%s: Handshake indicates we should turn on the mic - let's do it!", buf, 0xCu);
      }

      v28 = +[CSShieldManager sharedManager];
      [v28 requestMicrophoneActivationWithCompletion:0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __56__CSRemoteRequestClient__handleHandshakeResponse_error___block_invoke;
    block[3] = &unk_278E0ACD8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  else
  {
    v19 = ContinuitySingLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [(CSRemoteRequestClient *)v19 _handleHandshakeResponse:v20 error:v21, v22, v23, v24, v25, v26];
    }
  }

LABEL_25:
}

- (void)retrieveAttributionsForQueueIdentifiers:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CSAttributionRequestMessage alloc] initWithQueueIdentifiers:v7];

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__CSRemoteRequestClient_retrieveAttributionsForQueueIdentifiers_handler___block_invoke;
  v11[3] = &unk_278E0B238;
  v12 = v8;
  v13 = v6;
  v9 = v6;
  v10 = v8;
  [(CSRemoteRequestClient *)self sendRequestMessage:v10 completion:v11];
}

void __73__CSRemoteRequestClient_retrieveAttributionsForQueueIdentifiers_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = ContinuitySingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __73__CSRemoteRequestClient_retrieveAttributionsForQueueIdentifiers_handler___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [v5 queueIdentifierAttributionMap];
    (*(v7 + 16))(v7, v8, 0);
  }
}

- (void)retrieveAvatarForParticipant:(id)a3 handler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [CSAvatarRequestMessage alloc];
  v9 = [v7 socialProfileIdentifier];

  v10 = [(CSAvatarRequestMessage *)v8 initWithSocialProfileIdentifier:v9];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __62__CSRemoteRequestClient_retrieveAvatarForParticipant_handler___block_invoke;
  v13[3] = &unk_278E0B260;
  v14 = v10;
  v15 = v6;
  v11 = v6;
  v12 = v10;
  [(CSRemoteRequestClient *)self sendRequestMessage:v12 completion:v13];
}

void __62__CSRemoteRequestClient_retrieveAvatarForParticipant_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = ContinuitySingLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __62__CSRemoteRequestClient_retrieveAvatarForParticipant_handler___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [v5 avatar];
    (*(v7 + 16))(v7, v8, 0);
  }
}

- (void)sendStartSingingEvent
{
  v3 = objc_alloc_init(CSStartSingingEvent);
  [(CSRemoteRequestClient *)self sendEventMessage:v3 completion:&__block_literal_global_95];
}

void __46__CSRemoteRequestClient_sendStartSingingEvent__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = ContinuitySingLog();
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __46__CSRemoteRequestClient_sendStartSingingEvent__block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[CSRemoteRequestClient sendStartSingingEvent]_block_invoke";
    _os_log_impl(&dword_2441FB000, v4, OS_LOG_TYPE_DEFAULT, "%s: sent start singing event", &v5, 0xCu);
  }
}

void __56__CSRemoteRequestClient__activateMessageClientIfNeeded___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1[13];
  v9 = [v1 companionLink];
  OUTLINED_FUNCTION_4(&dword_2441FB000, v3, v4, "%s: Timed out waiting to find device with identifier: %@ with %@", v5, v6, v7, v8, 2u);
}

void __55__CSRemoteRequestClient_sendRequestMessage_completion___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_2441FB000, v2, v3, "%s: Failed to send %@ with error %@", v4);
}

void __50__CSRemoteRequestClient_retrieveMicrophoneVolume___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_2441FB000, v2, v3, "%s: Failed to send request %@ with error %@", v4);
}

void __50__CSRemoteRequestClient_increaseMicrophoneVolume___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_2441FB000, v2, v3, "%s: Failed to send request %@ with error %@", v4);
}

void __50__CSRemoteRequestClient_decreaseMicrophoneVolume___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_2441FB000, v2, v3, "%s: Failed to send request %@ with error %@", v4);
}

void __40__CSRemoteRequestClient_retrieveReverb___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_2441FB000, v2, v3, "%s: Failed to send request %@ with error %@", v4);
}

void __36__CSRemoteRequestClient_sendReverb___block_invoke_cold_1(uint64_t a1)
{
  v1 = NSStringFromCSReverbLevel(*(a1 + 32));
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4(&dword_2441FB000, v2, v3, "%s: failed to send reverb %@ with error: %@", v4, v5, v6, v7, 2u);
}

void __40__CSRemoteRequestClient_sendVocalLevel___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 136315650;
  *&v3[4] = "[CSRemoteRequestClient sendVocalLevel:]_block_invoke";
  *&v3[12] = 2048;
  *&v3[14] = *(a1 + 32);
  *&v3[22] = 2112;
  OUTLINED_FUNCTION_2_0(&dword_2441FB000, a2, a3, "%s: failed to send vocal level %f with error: %@", *v3, *&v3[8], *&v3[16], a2);
}

void __38__CSRemoteRequestClient_sendReaction___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_2441FB000, v2, v3, "%s: failed to send reaction %@ with error: %@", v4);
}

void __44__CSRemoteRequestClient__sendCheckinRequest__block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_2441FB000, v2, v3, "%s: Failed to get checkin response for message %@ with error %@", v4);
}

void __44__CSRemoteRequestClient__sendCheckinRequest__block_invoke_cold_3(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_2441FB000, v2, v3, "%s: Sent checkin request: %@ but received response that we are an invalid client: %@", v4);
}

void __46__CSRemoteRequestClient_sendEnableMicRequest___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_2441FB000, v2, v3, "%s: Failed to send enable mic request %@ with error %@", v4);
}

void __46__CSRemoteRequestClient_retrieveSessionState___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_2441FB000, v2, v3, "%s: Failed to send session state update request %@ with error %@", v4);
}

void __83__CSRemoteRequestClient_sendQueuedSongsNotificationWithTracks_shouldQueueOnServer___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_2441FB000, v2, v3, "%s: Failed to send track queued notification %@ with error: %@", v4);
}

void __73__CSRemoteRequestClient_retrieveAttributionsForQueueIdentifiers_handler___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_2441FB000, v2, v3, "%s: Failed to send request %@ with error %@", v4);
}

void __62__CSRemoteRequestClient_retrieveAvatarForParticipant_handler___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = 136315650;
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0(&dword_2441FB000, v2, v3, "%s: Failed to send request %@ with error %@", v4);
}

@end