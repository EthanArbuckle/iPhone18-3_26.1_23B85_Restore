@interface CSSecureSiriAudioProvidingProxy
- (BOOL)configAOPVoiceTrigger;
- (BOOL)fetchAndStoreAudioBuffer;
- (BOOL)initializeSecondPass;
- (BOOL)prepare;
- (BOOL)setSpeakerProfile:(id)profile numEmbeddings:(unint64_t)embeddings dimension:(unint64_t)dimension speakerRecognizerType:(unint64_t)type;
- (CSSecureSiriAudioProvidingProxy)init;
- (unint64_t)convertAssetConfigurationError:(unint64_t)error;
- (unint64_t)convertSecureSecondPassVoiceTriggerResultType:(corespeechexclave_voicetriggersecondpassresult_s *)type;
- (unint64_t)convertSecureSpeakerRecognitionType:(unint64_t)type;
- (unint64_t)convertSecureVoiceTriggerKeywordDetectionResultType:(corespeechexclave_voicetriggerkeyworddetectionresult_s)type;
- (unint64_t)convertSecureVoiceTriggerSpeakerDetectionResultType:(corespeechexclave_voicetriggerpersonalizationresult_s)type;
- (unint64_t)processBargeInVoiceTrigger;
- (void)adBlockerMatchingInProgress:(id)progress;
- (void)deinitializeSecondPass;
- (void)fetchAOPVoiceTriggerResult:(id)result;
- (void)processBargeInVoiceTriggerWithResult:(id)result;
- (void)processSecondPassVoiceTriggerWithShouldFlushAudio:(BOOL)audio result:(id)result;
- (void)requestHistoricalAudioBufferWithStartSample:(unint64_t)sample completion:(id)completion;
- (void)reset;
- (void)resetFirstPassVoiceTrigger;
- (void)setAdBlockerAsset:(id)asset;
- (void)setAssetForLocale:(id)locale isOTA:(BOOL)a completion:(id)completion;
- (void)startAdBlockerMatching;
- (void)startBargeInVoiceTrigger;
- (void)startSecondPassVoiceTriggerWithStartOption:(id)option;
- (void)startSecureAdBlockerMobileAssetLoaderService:(id)service;
- (void)startSecureMobileAssetLoaderService:(BOOL)service completion:(id)completion;
- (void)stopAdBlockerMatching;
- (void)stopBargeInVoiceTrigger;
- (void)stopSecondPassVoiceTrigger;
- (void)stopSecureAdBlockerMobileAssetLoaderService:(id)service;
- (void)stopSecureMobileAssetLoaderService:(id)service;
@end

@implementation CSSecureSiriAudioProvidingProxy

- (void)reset
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247968000, v3, OS_LOG_TYPE_DEFAULT, &unk_2479731D3, buf, 2u);
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *buf = 0u;
  v9 = 0u;
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v5 = self->_service.connection;
    tb_connection_send_query();
    v6 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)adBlockerMatchingInProgress:(id)progress
{
  v29 = *MEMORY[0x277D85DE8];
  progressCopy = progress;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __63__CSSecureSiriAudioProvidingProxy_adBlockerMatchingInProgress___block_invoke;
  v13 = &unk_278EB66E8;
  v14 = progressCopy;
  v5 = progressCopy;
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  v28 = 0;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v15 = 0;
    v7 = self->_service.connection;
    tb_connection_send_query();
    v8 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __63__CSSecureSiriAudioProvidingProxy_adBlockerMatchingInProgress___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)stopAdBlockerMatching
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247968000, v3, OS_LOG_TYPE_DEFAULT, &unk_2479731D3, buf, 2u);
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *buf = 0u;
  v9 = 0u;
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v5 = self->_service.connection;
    tb_connection_send_query();
    v6 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startAdBlockerMatching
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247968000, v3, OS_LOG_TYPE_DEFAULT, &unk_2479731D3, buf, 2u);
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *buf = 0u;
  v9 = 0u;
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v5 = self->_service.connection;
    tb_connection_send_query();
    v6 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)setAdBlockerAsset:(id)asset
{
  v31 = *MEMORY[0x277D85DE8];
  assetCopy = asset;
  v5 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247968000, v5, OS_LOG_TYPE_DEFAULT, &unk_2479731D3, buf, 2u);
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __53__CSSecureSiriAudioProvidingProxy_setAdBlockerAsset___block_invoke;
  v14 = &unk_278EB66C0;
  selfCopy = self;
  v16 = assetCopy;
  v6 = assetCopy;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *buf = 0u;
  v25 = 0u;
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v17 = 0;
    v8 = self->_service.connection;
    tb_connection_send_query();
    v9 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __53__CSSecureSiriAudioProvidingProxy_setAdBlockerAsset___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = [*(result + 32) convertAssetConfigurationError:a2];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

- (void)stopSecureAdBlockerMobileAssetLoaderService:(id)service
{
  v31 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247968000, v5, OS_LOG_TYPE_DEFAULT, &unk_2479731D3, buf, 2u);
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __79__CSSecureSiriAudioProvidingProxy_stopSecureAdBlockerMobileAssetLoaderService___block_invoke;
  v14 = &unk_278EB66C0;
  selfCopy = self;
  v16 = serviceCopy;
  v6 = serviceCopy;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *buf = 0u;
  v25 = 0u;
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v17 = 0;
    v8 = self->_service.connection;
    tb_connection_send_query();
    v9 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __79__CSSecureSiriAudioProvidingProxy_stopSecureAdBlockerMobileAssetLoaderService___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = [*(result + 32) convertAssetConfigurationError:a2];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

- (void)startSecureAdBlockerMobileAssetLoaderService:(id)service
{
  v31 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247968000, v5, OS_LOG_TYPE_DEFAULT, &unk_2479731D3, buf, 2u);
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __80__CSSecureSiriAudioProvidingProxy_startSecureAdBlockerMobileAssetLoaderService___block_invoke;
  v14 = &unk_278EB66C0;
  selfCopy = self;
  v16 = serviceCopy;
  v6 = serviceCopy;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *buf = 0u;
  v25 = 0u;
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v17 = 0;
    v8 = self->_service.connection;
    tb_connection_send_query();
    v9 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __80__CSSecureSiriAudioProvidingProxy_startSecureAdBlockerMobileAssetLoaderService___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = [*(result + 32) convertAssetConfigurationError:a2];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

- (void)stopSecureMobileAssetLoaderService:(id)service
{
  v31 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  v5 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247968000, v5, OS_LOG_TYPE_DEFAULT, &unk_2479731D3, buf, 2u);
  }

  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __70__CSSecureSiriAudioProvidingProxy_stopSecureMobileAssetLoaderService___block_invoke;
  v14 = &unk_278EB66C0;
  selfCopy = self;
  v16 = serviceCopy;
  v6 = serviceCopy;
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v18 = 0u;
  v30 = 0;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *buf = 0u;
  v25 = 0u;
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v17 = 0;
    v8 = self->_service.connection;
    tb_connection_send_query();
    v9 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __70__CSSecureSiriAudioProvidingProxy_stopSecureMobileAssetLoaderService___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = [*(result + 32) convertAssetConfigurationError:a2];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

- (void)startSecureMobileAssetLoaderService:(BOOL)service completion:(id)completion
{
  serviceCopy = service;
  v33 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v7 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247968000, v7, OS_LOG_TYPE_DEFAULT, &unk_2479731D3, buf, 2u);
  }

  if (serviceCopy)
  {
    v8 = sLog;
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_247968000, v8, OS_LOG_TYPE_ERROR, "isAssistant == YES is not supported!!", buf, 2u);
      if (!completionCopy)
      {
        goto LABEL_12;
      }

      goto LABEL_6;
    }

    if (completionCopy)
    {
LABEL_6:
      completionCopy[2](completionCopy, 2);
    }
  }

  else
  {
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __82__CSSecureSiriAudioProvidingProxy_startSecureMobileAssetLoaderService_completion___block_invoke;
    v16 = &unk_278EB66C0;
    selfCopy = self;
    v18 = completionCopy;
    v25 = 0;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    v32 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    *buf = 0u;
    v27 = 0u;
    connection = self->_service.connection;
    if (!tb_client_connection_message_construct())
    {
      tb_message_precheck_encoding();
      tb_message_raw_encode_u64();
      tb_message_complete();
      v19 = 0;
      v10 = self->_service.connection;
      tb_connection_send_query();
      v11 = self->_service.connection;
      tb_client_connection_message_destruct();
    }
  }

LABEL_12:

  v12 = *MEMORY[0x277D85DE8];
}

uint64_t __82__CSSecureSiriAudioProvidingProxy_startSecureMobileAssetLoaderService_completion___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = [*(result + 32) convertAssetConfigurationError:a2];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

- (void)setAssetForLocale:(id)locale isOTA:(BOOL)a completion:(id)completion
{
  aCopy = a;
  v42 = *MEMORY[0x277D85DE8];
  localeCopy = locale;
  completionCopy = completion;
  v10 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = localeCopy;
    *&buf[12] = 1024;
    *&buf[14] = aCopy;
    _os_log_impl(&dword_247968000, v10, OS_LOG_TYPE_DEFAULT, "Siri locale:%@, isOTA:%d", buf, 0x12u);
  }

  v11 = [localeCopy stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  if ([v11 caseInsensitiveCompare:@"ar-AE"])
  {
    if ([v11 caseInsensitiveCompare:@"ar-SA"])
    {
      if ([v11 caseInsensitiveCompare:@"da-DK"])
      {
        if ([v11 caseInsensitiveCompare:@"de-AT"])
        {
          if ([v11 caseInsensitiveCompare:@"de-DE"])
          {
            if ([v11 caseInsensitiveCompare:@"de-CH"])
            {
              if ([v11 caseInsensitiveCompare:@"en-IN"])
              {
                v12 = 0x7AB3544148B1E1B7;
                if ([v11 caseInsensitiveCompare:@"en-US"])
                {
                  if ([v11 caseInsensitiveCompare:@"en-CA"])
                  {
                    if ([v11 caseInsensitiveCompare:@"en-AU"])
                    {
                      if ([v11 caseInsensitiveCompare:@"en-GB"])
                      {
                        if ([v11 caseInsensitiveCompare:@"en-SG"])
                        {
                          if ([v11 caseInsensitiveCompare:@"en-IE"])
                          {
                            if ([v11 caseInsensitiveCompare:@"en-ZA"])
                            {
                              if ([v11 caseInsensitiveCompare:@"en-NZ"])
                              {
                                if ([v11 caseInsensitiveCompare:@"es-ES"])
                                {
                                  if ([v11 caseInsensitiveCompare:@"es-US"])
                                  {
                                    if ([v11 caseInsensitiveCompare:@"es-CL"])
                                    {
                                      if ([v11 caseInsensitiveCompare:@"es-MX"])
                                      {
                                        if ([v11 caseInsensitiveCompare:@"fi-FI"])
                                        {
                                          if ([v11 caseInsensitiveCompare:@"fr-BE"])
                                          {
                                            if ([v11 caseInsensitiveCompare:@"fr-CA"])
                                            {
                                              if ([v11 caseInsensitiveCompare:@"fr-CH"])
                                              {
                                                if ([v11 caseInsensitiveCompare:@"fr-FR"])
                                                {
                                                  if ([v11 caseInsensitiveCompare:@"he-IL"])
                                                  {
                                                    if ([v11 caseInsensitiveCompare:@"it-IT"])
                                                    {
                                                      if ([v11 caseInsensitiveCompare:@"it-CH"])
                                                      {
                                                        if ([v11 caseInsensitiveCompare:@"ja-JP"])
                                                        {
                                                          if ([v11 caseInsensitiveCompare:@"ko-KR"])
                                                          {
                                                            if ([v11 caseInsensitiveCompare:@"ms-MY"])
                                                            {
                                                              if ([v11 caseInsensitiveCompare:@"nb-NO"])
                                                              {
                                                                if ([v11 caseInsensitiveCompare:@"nl-BE"])
                                                                {
                                                                  if ([v11 caseInsensitiveCompare:@"nl-NL"])
                                                                  {
                                                                    if ([v11 caseInsensitiveCompare:@"pt-BR"])
                                                                    {
                                                                      if ([v11 caseInsensitiveCompare:@"ru-RU"])
                                                                      {
                                                                        if ([v11 caseInsensitiveCompare:@"sv-SE"])
                                                                        {
                                                                          if ([v11 caseInsensitiveCompare:@"th-TH"])
                                                                          {
                                                                            if ([v11 caseInsensitiveCompare:@"tr-TR"])
                                                                            {
                                                                              if ([v11 caseInsensitiveCompare:@"yue-CN"])
                                                                              {
                                                                                if ([v11 caseInsensitiveCompare:@"zh-CN"])
                                                                                {
                                                                                  if ([v11 caseInsensitiveCompare:@"zh-TW"])
                                                                                  {
                                                                                    if ([v11 caseInsensitiveCompare:@"zh-HK"])
                                                                                    {
                                                                                      if ([v11 caseInsensitiveCompare:@"vi-VN"])
                                                                                      {
                                                                                        if ([v11 caseInsensitiveCompare:@"pt-PT"])
                                                                                        {
                                                                                          v13 = sLog;
                                                                                          if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEFAULT))
                                                                                          {
                                                                                            v14 = localeCopy;
                                                                                            v15 = v13;
                                                                                            uTF8String = [localeCopy UTF8String];
                                                                                            *buf = 136315138;
                                                                                            *&buf[4] = uTF8String;
                                                                                            _os_log_impl(&dword_247968000, v15, OS_LOG_TYPE_DEFAULT, "Error: Invalid locale %s. Falling back to en-US", buf, 0xCu);
                                                                                          }
                                                                                        }

                                                                                        else
                                                                                        {
                                                                                          v12 = 0x17D6386C38CD04C4;
                                                                                        }
                                                                                      }

                                                                                      else
                                                                                      {
                                                                                        v12 = 0xDCCBE59234188423;
                                                                                      }
                                                                                    }

                                                                                    else
                                                                                    {
                                                                                      v12 = 0x91EC7732FD261E2ELL;
                                                                                    }
                                                                                  }

                                                                                  else
                                                                                  {
                                                                                    v12 = 0x656AA29B2034004ELL;
                                                                                  }
                                                                                }

                                                                                else
                                                                                {
                                                                                  v12 = 0xA123AEFB86EACA53;
                                                                                }
                                                                              }

                                                                              else
                                                                              {
                                                                                v12 = 0x113C060897761B63;
                                                                              }
                                                                            }

                                                                            else
                                                                            {
                                                                              v12 = 0x42841AE7412F624ELL;
                                                                            }
                                                                          }

                                                                          else
                                                                          {
                                                                            v12 = 0x418732BF980FEFD2;
                                                                          }
                                                                        }

                                                                        else
                                                                        {
                                                                          v12 = 0xE1B29391201EDA1DLL;
                                                                        }
                                                                      }

                                                                      else
                                                                      {
                                                                        v12 = 0x3D3D863DC239E3ELL;
                                                                      }
                                                                    }

                                                                    else
                                                                    {
                                                                      v12 = 0x6B4AA5139D1C4BLL;
                                                                    }
                                                                  }

                                                                  else
                                                                  {
                                                                    v12 = 0xE5ABCB70FB0576BALL;
                                                                  }
                                                                }

                                                                else
                                                                {
                                                                  v12 = 0xA13AE2AABE773446;
                                                                }
                                                              }

                                                              else
                                                              {
                                                                v12 = 0xFC78C82705D56FD3;
                                                              }
                                                            }

                                                            else
                                                            {
                                                              v12 = 0xD124D0A81190947FLL;
                                                            }
                                                          }

                                                          else
                                                          {
                                                            v12 = 0x5DEB4BD3591B78E4;
                                                          }
                                                        }

                                                        else
                                                        {
                                                          v12 = 0x8F1538728B7CDEA4;
                                                        }
                                                      }

                                                      else
                                                      {
                                                        v12 = 0xD1729F554A45BDECLL;
                                                      }
                                                    }

                                                    else
                                                    {
                                                      v12 = 0x78DF870862C02B92;
                                                    }
                                                  }

                                                  else
                                                  {
                                                    v12 = 0xE1551273F2C8F91;
                                                  }
                                                }

                                                else
                                                {
                                                  v12 = 0xD76D6E510A1C7BE3;
                                                }
                                              }

                                              else
                                              {
                                                v12 = 0x9FB4FE7B8C107ED7;
                                              }
                                            }

                                            else
                                            {
                                              v12 = 0xFBAF50BAF192177FLL;
                                            }
                                          }

                                          else
                                          {
                                            v12 = 0x9D4B7954B05BFDBELL;
                                          }
                                        }

                                        else
                                        {
                                          v12 = 0xAACEDDC4B24F04BBLL;
                                        }
                                      }

                                      else
                                      {
                                        v12 = 0xCC92900C433FE06DLL;
                                      }
                                    }

                                    else
                                    {
                                      v12 = 0xF939AE07D1B76443;
                                    }
                                  }

                                  else
                                  {
                                    v12 = 0x19DBCC66CD1226D8;
                                  }
                                }

                                else
                                {
                                  v12 = 0x1BF81CE64F07AF5FLL;
                                }
                              }

                              else
                              {
                                v12 = 0xDA26D915BB129394;
                              }
                            }

                            else
                            {
                              v12 = 0xB76BD80C1D29A5DDLL;
                            }
                          }

                          else
                          {
                            v12 = 0xEBD1015A2B9EB77CLL;
                          }
                        }

                        else
                        {
                          v12 = 0xD53D863AB432198BLL;
                        }
                      }

                      else
                      {
                        v12 = 0x2AC83335E2A52E86;
                      }
                    }

                    else
                    {
                      v12 = 0x84035BF99132125ELL;
                    }
                  }

                  else
                  {
                    v12 = 0x2F2B502739B04599;
                  }
                }
              }

              else
              {
                v12 = 0x88394872043826BDLL;
              }
            }

            else
            {
              v12 = 0xC89696D3BDD2FCF0;
            }
          }

          else
          {
            v12 = 0x8E9889B77234E947;
          }
        }

        else
        {
          v12 = 0x7F5D3A1A2CB8F720;
        }
      }

      else
      {
        v12 = 0x714EE36D8BEDD13ELL;
      }
    }

    else
    {
      v12 = 0x1AC4EDF324CC3F83;
    }
  }

  else
  {
    v12 = 0xF7A18E1D22D08A91;
  }

  v23 = MEMORY[0x277D85DD0];
  v24 = 3221225472;
  v25 = __70__CSSecureSiriAudioProvidingProxy_setAssetForLocale_isOTA_completion___block_invoke;
  v26 = &unk_278EB66C0;
  selfCopy = self;
  v28 = completionCopy;
  v17 = completionCopy;
  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v30 = 0u;
  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  memset(buf, 0, sizeof(buf));
  connection = self->_service.connection;
  if (tb_client_connection_message_construct())
  {
    goto LABEL_154;
  }

  tb_message_precheck_encoding();
  tb_message_raw_encode_u64();
  tb_message_raw_encode_u64();
  if (v12 > 0xF7A18E1D22D08A90)
  {
    if (v12 > 0x1BF81CE64F07AF5ELL)
    {
      if (v12 > 0x5DEB4BD3591B78E3)
      {
        if (v12 > 0x78DF870862C02B91)
        {
          if (v12 == 0x78DF870862C02B92 || v12 == 0x7AB3544148B1E1B7)
          {
            goto LABEL_153;
          }

          v19 = 0x7F5D3A1A2CB8F720;
        }

        else
        {
          if (v12 == 0x5DEB4BD3591B78E4 || v12 == 0x656AA29B2034004ELL)
          {
            goto LABEL_153;
          }

          v19 = 0x714EE36D8BEDD13ELL;
        }

        goto LABEL_152;
      }

      if (v12 > 0x2F2B502739B04598)
      {
        if (v12 == 0x2F2B502739B04599 || v12 == 0x418732BF980FEFD2)
        {
          goto LABEL_153;
        }

        v19 = 0x42841AE7412F624ELL;
        goto LABEL_152;
      }

      if (v12 != 0x1BF81CE64F07AF5FLL)
      {
        v19 = 0x2AC83335E2A52E86;
        goto LABEL_152;
      }
    }

    else
    {
      if (v12 > 0x3D3D863DC239E3DLL)
      {
        if (v12 > 0x17D6386C38CD04C3)
        {
          if (v12 == 0x17D6386C38CD04C4 || v12 == 0x19DBCC66CD1226D8)
          {
            goto LABEL_153;
          }

          v19 = 0x1AC4EDF324CC3F83;
        }

        else
        {
          if (v12 == 0x3D3D863DC239E3ELL || v12 == 0xE1551273F2C8F91)
          {
            goto LABEL_153;
          }

          v19 = 0x113C060897761B63;
        }

        goto LABEL_152;
      }

      if (v12 > 0xFBAF50BAF192177ELL)
      {
        if (v12 == 0xFBAF50BAF192177FLL || v12 == 0xFC78C82705D56FD3)
        {
          goto LABEL_153;
        }

        v19 = 0x6B4AA5139D1C4BLL;
        goto LABEL_152;
      }

      if (v12 != 0xF7A18E1D22D08A91)
      {
        v19 = 0xF939AE07D1B76443;
        goto LABEL_152;
      }
    }

    goto LABEL_153;
  }

  if (v12 > 0xC89696D3BDD2FCEFLL)
  {
    if (v12 > 0xD76D6E510A1C7BE2)
    {
      if (v12 > 0xE1B29391201EDA1CLL)
      {
        if (v12 == 0xE1B29391201EDA1DLL || v12 == 0xE5ABCB70FB0576BALL)
        {
          goto LABEL_153;
        }

        v19 = 0xEBD1015A2B9EB77CLL;
      }

      else
      {
        if (v12 == 0xD76D6E510A1C7BE3 || v12 == 0xDA26D915BB129394)
        {
          goto LABEL_153;
        }

        v19 = 0xDCCBE59234188423;
      }

      goto LABEL_152;
    }

    if (v12 > 0xD124D0A81190947ELL)
    {
      if (v12 == 0xD124D0A81190947FLL || v12 == 0xD1729F554A45BDECLL)
      {
        goto LABEL_153;
      }

      v19 = 0xD53D863AB432198BLL;
      goto LABEL_152;
    }

    if (v12 != 0xC89696D3BDD2FCF0)
    {
      v19 = 0xCC92900C433FE06DLL;
      goto LABEL_152;
    }

    goto LABEL_153;
  }

  if (v12 <= 0x9D4B7954B05BFDBDLL)
  {
    if (v12 > 0x8E9889B77234E946)
    {
      if (v12 == 0x8E9889B77234E947 || v12 == 0x8F1538728B7CDEA4)
      {
        goto LABEL_153;
      }

      v19 = 0x91EC7732FD261E2ELL;
      goto LABEL_152;
    }

    if (v12 != 0x84035BF99132125ELL)
    {
      v19 = 0x88394872043826BDLL;
      goto LABEL_152;
    }

LABEL_153:
    tb_message_raw_encode_BOOL();
    tb_message_complete();
    v29 = 0;
    v20 = self->_service.connection;
    tb_connection_send_query();
    v21 = self->_service.connection;
    tb_client_connection_message_destruct();
LABEL_154:

    v22 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v12 > 0xA13AE2AABE773445)
  {
    if (v12 == 0xA13AE2AABE773446 || v12 == 0xAACEDDC4B24F04BBLL)
    {
      goto LABEL_153;
    }

    v19 = 0xB76BD80C1D29A5DDLL;
  }

  else
  {
    if (v12 == 0x9D4B7954B05BFDBELL || v12 == 0x9FB4FE7B8C107ED7)
    {
      goto LABEL_153;
    }

    v19 = 0xA123AEFB86EACA53;
  }

LABEL_152:
  if (v12 == v19)
  {
    goto LABEL_153;
  }

  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v12, "/Library/Caches/com.apple.xbs/Binaries/CoreSpeech_Common/install/TempContent/Objects/CoreSpeech.build/CoreSpeechExclave.build/DerivedSources/CoreSpeechExclave_C.c", 665);
  _os_crash();
  __break(1u);
}

uint64_t __70__CSSecureSiriAudioProvidingProxy_setAssetForLocale_isOTA_completion___block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 40);
  if (v2)
  {
    v3 = [*(result + 32) convertAssetConfigurationError:a2];
    v4 = *(v2 + 16);

    return v4(v2, v3);
  }

  return result;
}

- (unint64_t)convertAssetConfigurationError:(unint64_t)error
{
  v3 = 4;
  if (error != 0x59D7251024B02BCBLL)
  {
    v3 = 0;
  }

  if (error == 0x497F1942F7514C1FLL)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  if (error == 0xA510336A75EF1B48)
  {
    v5 = 3;
  }

  else
  {
    v5 = error == 0xE3C7F6520C58DE7FLL;
  }

  if (error <= 0x497F1942F7514C1ELL)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (BOOL)setSpeakerProfile:(id)profile numEmbeddings:(unint64_t)embeddings dimension:(unint64_t)dimension speakerRecognizerType:(unint64_t)type
{
  v54 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 0;
  v31 = 0;
  v29[0] = 3;
  embeddingsCopy = embeddings;
  dimensionCopy = dimension;
  v34 = [(CSSecureSiriAudioProvidingProxy *)self convertSecureSpeakerRecognitionType:type];
  v11 = profileCopy;
  v29[1] = [profileCopy bytes];
  v30 = dimension * embeddings;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v26 = __99__CSSecureSiriAudioProvidingProxy_setSpeakerProfile_numEmbeddings_dimension_speakerRecognizerType___block_invoke;
  v27 = &unk_278EB65F8;
  v28 = &v35;
  *&v40 = 0;
  *(&v40 + 1) = &v40;
  v41 = 0x2000000000uLL;
  *&buf = MEMORY[0x277D85DD0];
  *(&buf + 1) = 0x40000000;
  *&v48 = __f32__v_sizeof_block_invoke;
  *(&v48 + 1) = &unk_278EB6770;
  *&v49 = &v40;
  f32__v_visit(v29, &buf);
  v12 = *(*(&v40 + 1) + 24);
  _Block_object_dispose(&v40, 8);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v40 = 0u;
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  buf = 0u;
  v48 = 0u;
  connection = self->_service.connection;
  if (tb_client_connection_message_construct())
  {
    goto LABEL_7;
  }

  tb_message_precheck_encoding();
  tb_message_raw_encode_u64();
  if (LOBYTE(v29[0]) - 1 >= 3)
  {
    printf("TB_FATAL: invalid tag in array metadata: 0x%x (%s:%d)\n", LOBYTE(v29[0]), "/Library/Caches/com.apple.xbs/Binaries/CoreSpeech_Common/install/TempContent/Objects/CoreSpeech.build/CoreSpeechExclave.build/DerivedSources/CoreSpeechExclave_C.c", 1888);
    _os_crash();
    __break(1u);
  }

  else
  {
    v14 = *(v29 + qword_2479720F8[(LOBYTE(v29[0]) - 1)]);
    tb_message_raw_encode_u64();
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 0x40000000;
    v46[2] = __f32__v_raw_encode_block_invoke;
    v46[3] = &__block_descriptor_tmp_152;
    v46[4] = &v40;
    f32__v_visit(v29, v46);
    tb_message_raw_encode_u32();
    tb_message_raw_encode_u32();
    tb_message_raw_encode_u64();
    v15 = v34;
    if (v34 == 0xB4634D822B7084E5 || v34 == 0x5FE91FEE7BE681E1)
    {
      tb_message_complete();
      v46[0] = 0;
      v16 = self->_service.connection;
      v17 = tb_connection_send_query();
      if ((v17 & 0xFFFFFFF7) != 0 || (v23 = v17, !v46[0]))
      {
        v18 = self->_service.connection;
        tb_client_connection_message_destruct();
      }

      else
      {
        v39 = 0;
        tb_message_decode_BOOL();
        v26(v25, v39);
        v24 = self->_service.connection;
        tb_client_connection_message_destruct();
        if (!v23)
        {
          v20 = *(v36 + 24);
LABEL_10:
          _Block_object_dispose(&v35, 8);

          v21 = *MEMORY[0x277D85DE8];
          return v20 & 1;
        }
      }

LABEL_7:
      v19 = sLog;
      if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_247968000, v19, OS_LOG_TYPE_ERROR, "Failed to setSpeakerProfileEmbedding", &buf, 2u);
      }

      v20 = 0;
      goto LABEL_10;
    }
  }

  printf("TB_FATAL: invalid value: unexpected case value, %llx (%s:%d)\n", v15, "/Library/Caches/com.apple.xbs/Binaries/CoreSpeech_Common/install/TempContent/Objects/CoreSpeech.build/CoreSpeechExclave.build/DerivedSources/CoreSpeechExclave_C.c", 1795);
  result = _os_crash();
  __break(1u);
  return result;
}

- (unint64_t)convertSecureSpeakerRecognitionType:(unint64_t)type
{
  if (type == 1)
  {
    return 0xB4634D822B7084E5;
  }

  else
  {
    return 0x5FE91FEE7BE681E1;
  }
}

- (void)processSecondPassVoiceTriggerWithShouldFlushAudio:(BOOL)audio result:(id)result
{
  v51 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v24 = 0;
  v25 = &v24;
  v26 = 0x6010000000;
  v27 = "";
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v21 = __92__CSSecureSiriAudioProvidingProxy_processSecondPassVoiceTriggerWithShouldFlushAudio_result___block_invoke;
  v22 = &unk_278EB6698;
  v23 = &v24;
  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v38 = 0u;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_raw_encode_BOOL();
    tb_message_complete();
    v37 = 0;
    v7 = self->_service.connection;
    if ((tb_connection_send_query() & 0xFFFFFFF7) == 0)
    {
      v17 = v37;
      if (v37)
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        tb_message_decode_u64();
        if (v33 <= 0xDC70BE53C73C2A42)
        {
          if (v33 == 0x9D58721FFF2EF4B1)
          {
            if (corespeechexclave_voicetriggersecondpassresulttriggered__decode(v17, &v33 + 8))
            {
              goto LABEL_5;
            }

            goto LABEL_40;
          }

          if (v33 != 0xBFDCF84688A51FE6)
          {
            goto LABEL_5;
          }

          tb_message_decode_u64();
          v18 = *(&v33 + 1);
          if (*(&v33 + 1) <= 0x19BCA47EF2DD7380)
          {
            if (*(&v33 + 1) == 0xBE138CC6CDD51710 || *(&v33 + 1) == 0xD62489B05B57232CLL)
            {
              goto LABEL_40;
            }

            v19 = 0x38C178E40D570A8;
          }

          else if (*(&v33 + 1) > 0x5276E2D7471778A6)
          {
            if (*(&v33 + 1) == 0x5276E2D7471778A7)
            {
              goto LABEL_40;
            }

            v19 = 0x61BFA47218D778B8;
          }

          else
          {
            if (*(&v33 + 1) == 0x19BCA47EF2DD7381)
            {
              goto LABEL_40;
            }

            v19 = 0x5038DF8D43DDDD96;
          }

          goto LABEL_39;
        }

        if (v33 == 0xDC70BE53C73C2A43 || v33 == 0x43C058BACB7D6B7DLL)
        {
          goto LABEL_40;
        }

        if (v33 == 0x6BD17EE2BE106C2DLL)
        {
          tb_message_precheck_decoding();
          tb_message_raw_decode_u32();
          tb_message_raw_decode_u64();
          if (v34 == 0x8F4B41BADF9BCEB7 || v34 == 0x63184B8076456B7FLL || v34 == 0xFD9F2E793902DAD9)
          {
            tb_message_raw_decode_u64();
            v18 = *(&v34 + 1);
            if (*(&v34 + 1) > 0xA2CA431DF93DFCD4)
            {
              if (*(&v34 + 1) != 0xA2CA431DF93DFCD5 && *(&v34 + 1) != 0xCEA6F7204A05BC07)
              {
                v19 = 0x70B00C30047C77C5;
                goto LABEL_39;
              }

LABEL_40:
              v32[0] = v33;
              v32[1] = v34;
              v32[2] = v35;
              v32[3] = v36;
              v21(v20, v32);
              goto LABEL_5;
            }

            if (*(&v34 + 1) == 0x92393AFA3ED5D670)
            {
              goto LABEL_40;
            }

            v19 = 0x95C28B8FC17A7457;
LABEL_39:
            if (v18 != v19)
            {
              goto LABEL_5;
            }

            goto LABEL_40;
          }
        }
      }
    }

LABEL_5:
    v8 = self->_service.connection;
    tb_client_connection_message_destruct();
    if (!resultCopy)
    {
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  if (!resultCopy)
  {
    goto LABEL_11;
  }

LABEL_6:
  v9 = *(v25 + 3);
  v44 = *(v25 + 2);
  v45 = v9;
  v10 = *(v25 + 5);
  v46 = *(v25 + 4);
  v47 = v10;
  v11 = [(CSSecureSiriAudioProvidingProxy *)self convertSecureSecondPassVoiceTriggerResultType:&v44];
  if (v11 == 2)
  {
    v14 = [(CSSecureSiriAudioProvidingProxy *)self convertSecureVoiceTriggerKeywordDetectionResultType:v25[6]];
    v15 = [(CSSecureSiriAudioProvidingProxy *)self convertSecureVoiceTriggerSpeakerDetectionResultType:v25[7]];
    (*(resultCopy + 2))(resultCopy, 2, 0, *(v25 + 10), 0, 0, v14, v15, 0.0);
  }

  else if (v11)
  {
    (*(resultCopy + 2))(resultCopy, 0.0);
  }

  else
  {
    v12 = [(CSSecureSiriAudioProvidingProxy *)self convertSecureVoiceTriggerKeywordDetectionResultType:v25[10]];
    v13 = [(CSSecureSiriAudioProvidingProxy *)self convertSecureVoiceTriggerSpeakerDetectionResultType:v25[11]];
    (*(resultCopy + 2))(resultCopy, 0, v25[5], *(v25 + 14), v25[8], v25[9], v12, v13, *(v25 + 6));
  }

LABEL_11:
  _Block_object_dispose(&v24, 8);

  v16 = *MEMORY[0x277D85DE8];
}

__n128 __92__CSSecureSiriAudioProvidingProxy_processSecondPassVoiceTriggerWithShouldFlushAudio_result___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *a2;
  v4 = *(a2 + 16);
  v5 = *(a2 + 48);
  *(v2 + 64) = *(a2 + 32);
  *(v2 + 80) = v5;
  *(v2 + 32) = result;
  *(v2 + 48) = v4;
  return result;
}

- (unint64_t)convertSecureVoiceTriggerSpeakerDetectionResultType:(corespeechexclave_voicetriggerpersonalizationresult_s)type
{
  v3 = 4;
  if (type.var0 != 0x70B00C30047C77C5)
  {
    v3 = 0;
  }

  if (type.var0 == 0xCEA6F7204A05BC07)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  if (type.var0 == 0x92393AFA3ED5D670)
  {
    v5 = 2;
  }

  else
  {
    v5 = type.var0 == 0x95C28B8FC17A7457;
  }

  if (type.var0 <= 0xCEA6F7204A05BC06)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

- (unint64_t)convertSecureVoiceTriggerKeywordDetectionResultType:(corespeechexclave_voicetriggerkeyworddetectionresult_s)type
{
  v3 = 2;
  if (type.var0 != 0xFD9F2E793902DAD9)
  {
    v3 = 0;
  }

  if (type.var0 == 0x63184B8076456B7FLL)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  if (type.var0 == 0x8F4B41BADF9BCEB7)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (unint64_t)convertSecureSecondPassVoiceTriggerResultType:(corespeechexclave_voicetriggersecondpassresult_s *)type
{
  var0 = type->var0;
  v4 = 2;
  if (type->var0 == 0x9D58721FFF2EF4B1)
  {
    v4 = 0;
  }

  if (var0 == 0xDC70BE53C73C2A43)
  {
    v4 = 3;
  }

  if (var0 == 0x43C058BACB7D6B7DLL)
  {
    return 1;
  }

  else
  {
    return v4;
  }
}

- (void)stopSecondPassVoiceTrigger
{
  v7 = *MEMORY[0x277D85DE8];
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v4 = self->_service.connection;
    tb_connection_send_query();
    v5 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)startSecondPassVoiceTriggerWithStartOption:(id)option
{
  v8 = *MEMORY[0x277D85DE8];
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_raw_encode_u64();
    tb_message_raw_encode_BOOL();
    tb_message_raw_encode_BOOL();
    tb_message_raw_encode_u32();
    tb_message_complete();
    v5 = self->_service.connection;
    tb_connection_send_query();
    v6 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)deinitializeSecondPass
{
  v7 = *MEMORY[0x277D85DE8];
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v4 = self->_service.connection;
    tb_connection_send_query();
    v5 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)initializeSecondPass
{
  v32 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = __55__CSSecureSiriAudioProvidingProxy_initializeSecondPass__block_invoke;
  v11 = &unk_278EB65F8;
  v12 = &v13;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v18 = 0;
    v4 = self->_service.connection;
    if ((tb_connection_send_query() & 0xFFFFFFF7) == 0 && v18)
    {
      v17 = 0;
      tb_message_decode_BOOL();
      v10(v9, v17);
    }

    v5 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v6 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)resetFirstPassVoiceTrigger
{
  v7 = *MEMORY[0x277D85DE8];
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v4 = self->_service.connection;
    tb_connection_send_query();
    v5 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)processBargeInVoiceTriggerWithResult:(id)result
{
  resultCopy = result;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3810000000;
  v17 = "";
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __72__CSSecureSiriAudioProvidingProxy_processBargeInVoiceTriggerWithResult___block_invoke;
  v12 = &unk_278EB6670;
  v13 = &v14;
  corespeechexclave_sirivoicetriggerservice_bargeinprocess(&self->_service);
  v7 = *(v15 + 2);
  v8 = v15[6];
  v5 = [(CSSecureSiriAudioProvidingProxy *)self convertSecureBargeInVoiceTriggerResultType:&v7];
  if (resultCopy)
  {
    if (v5)
    {
      (*(resultCopy + 2))(resultCopy, v5, 0, 0);
    }

    else
    {
      v6 = v15 + 5;
      if (v15[4] != 0x1276D876C927FCBELL)
      {
        v6 = 0;
      }

      (*(resultCopy + 2))(resultCopy, 0, *v6, *(v6 + 2));
    }
  }

  _Block_object_dispose(&v14, 8);
}

__n128 __72__CSSecureSiriAudioProvidingProxy_processBargeInVoiceTriggerWithResult___block_invoke(uint64_t a1, __n128 *a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *a2;
  v2[3].n128_u64[0] = a2[1].n128_u64[0];
  v2[2] = result;
  return result;
}

- (unint64_t)processBargeInVoiceTrigger
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3810000000;
  v16 = "";
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v3 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_247968000, v3, OS_LOG_TYPE_DEFAULT, "IsolatedCoreAudioClient process barge-in", &v6, 2u);
  }

  v8 = MEMORY[0x277D85DD0];
  v9 = 3221225472;
  v10 = __61__CSSecureSiriAudioProvidingProxy_processBargeInVoiceTrigger__block_invoke;
  v11 = &unk_278EB6670;
  v12 = &v13;
  corespeechexclave_sirivoicetriggerservice_bargeinprocess(&self->_service);
  v6 = *(v14 + 2);
  v7 = v14[6];
  v4 = [(CSSecureSiriAudioProvidingProxy *)self convertSecureBargeInVoiceTriggerResultType:&v6];
  _Block_object_dispose(&v13, 8);
  return v4;
}

__n128 __61__CSSecureSiriAudioProvidingProxy_processBargeInVoiceTrigger__block_invoke(uint64_t a1, __n128 *a2)
{
  v2 = *(*(a1 + 32) + 8);
  result = *a2;
  v2[3].n128_u64[0] = a2[1].n128_u64[0];
  v2[2] = result;
  return result;
}

- (void)stopBargeInVoiceTrigger
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247968000, v3, OS_LOG_TYPE_DEFAULT, "IsolatedCoreAudioClient BargeIn stop", buf, 2u);
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *buf = 0u;
  v9 = 0u;
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v5 = self->_service.connection;
    tb_connection_send_query();
    v6 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)startBargeInVoiceTrigger
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = sLog;
  if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_247968000, v3, OS_LOG_TYPE_DEFAULT, "IsolatedCoreAudioClient BargeIn start", buf, 2u);
  }

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  *buf = 0u;
  v9 = 0u;
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v5 = self->_service.connection;
    tb_connection_send_query();
    v6 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchAOPVoiceTriggerResult:(id)result
{
  v29 = *MEMORY[0x277D85DE8];
  resultCopy = result;
  v5 = resultCopy;
  if (resultCopy)
  {
    v10 = MEMORY[0x277D85DD0];
    v11 = 3221225472;
    v12 = __62__CSSecureSiriAudioProvidingProxy_fetchAOPVoiceTriggerResult___block_invoke;
    v13 = &unk_278EB6648;
    v14 = resultCopy;
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v16 = 0u;
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    connection = self->_service.connection;
    if (!tb_client_connection_message_construct())
    {
      tb_message_precheck_encoding();
      tb_message_raw_encode_u64();
      tb_message_complete();
      v15 = 0;
      v7 = self->_service.connection;
      tb_connection_send_query();
      v8 = self->_service.connection;
      tb_client_connection_message_destruct();
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)configAOPVoiceTrigger
{
  v32 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = __56__CSSecureSiriAudioProvidingProxy_configAOPVoiceTrigger__block_invoke;
  v11 = &unk_278EB65F8;
  v12 = &v13;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v18 = 0;
    v4 = self->_service.connection;
    if ((tb_connection_send_query() & 0xFFFFFFF7) == 0 && v18)
    {
      v17 = 0;
      tb_message_decode_BOOL();
      v10(v9, v17);
    }

    v5 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v6 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)fetchAndStoreAudioBuffer
{
  v32 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = __59__CSSecureSiriAudioProvidingProxy_fetchAndStoreAudioBuffer__block_invoke;
  v11 = &unk_278EB65F8;
  v12 = &v13;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v18 = 0;
    v4 = self->_service.connection;
    if ((tb_connection_send_query() & 0xFFFFFFF7) == 0 && v18)
    {
      v17 = 0;
      tb_message_decode_BOOL();
      v10(v9, v17);
    }

    v5 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v6 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)requestHistoricalAudioBufferWithStartSample:(unint64_t)sample completion:(id)completion
{
  v34 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2810000000;
  v17 = "";
  v18 = 0;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v11 = __90__CSSecureSiriAudioProvidingProxy_requestHistoricalAudioBufferWithStartSample_completion___block_invoke;
  v12 = &unk_278EB6620;
  v13 = &v14;
  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v33 = 0;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  connection = self->_service.connection;
  if (tb_client_connection_message_construct())
  {
    if (!completionCopy)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  tb_message_precheck_encoding();
  tb_message_raw_encode_u64();
  tb_message_raw_encode_u64();
  tb_message_complete();
  v20 = 0;
  v7 = self->_service.connection;
  if ((tb_connection_send_query() & 0xFFFFFFF7) == 0 && v20)
  {
    v19 = 0;
    tb_message_precheck_decoding();
    tb_message_raw_decode_u32();
    tb_message_raw_decode_u32();
    v11(v10, v19);
  }

  v8 = self->_service.connection;
  tb_client_connection_message_destruct();
  if (completionCopy)
  {
LABEL_8:
    (*(completionCopy + 2))(completionCopy, *(v15 + 8), *(v15 + 9));
  }

LABEL_9:
  _Block_object_dispose(&v14, 8);

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)prepare
{
  v32 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v10 = __42__CSSecureSiriAudioProvidingProxy_prepare__block_invoke;
  v11 = &unk_278EB65F8;
  v12 = &v13;
  v24 = 0;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v19 = 0u;
  v31 = 0;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  connection = self->_service.connection;
  if (!tb_client_connection_message_construct())
  {
    tb_message_precheck_encoding();
    tb_message_raw_encode_u64();
    tb_message_complete();
    v18 = 0;
    v4 = self->_service.connection;
    if ((tb_connection_send_query() & 0xFFFFFFF7) == 0 && v18)
    {
      v17 = 0;
      tb_message_decode_BOOL();
      v10(v9, v17);
    }

    v5 = self->_service.connection;
    tb_client_connection_message_destruct();
  }

  v6 = *(v14 + 24);
  _Block_object_dispose(&v13, 8);
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (CSSecureSiriAudioProvidingProxy)init
{
  v32 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = CSSecureSiriAudioProvidingProxy;
  v2 = [(CSSecureSiriAudioProvidingProxy *)&v23 init];
  if (!v2)
  {
    goto LABEL_23;
  }

  v3 = os_log_create("com.apple.corespeech", "Framework");
  v4 = sLog;
  sLog = v3;

  Current = CFAbsoluteTimeGetCurrent();
  v6 = tb_conclave_endpoint_for_service();
  v7 = CFAbsoluteTimeGetCurrent() - Current;
  v8 = sLog;
  if (v7 >= 1.0)
  {
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 134217984;
      *(&buf + 4) = v7;
      _os_log_error_impl(&dword_247968000, v8, OS_LOG_TYPE_ERROR, "Conclave launch took %f second(s)", &buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v7;
    _os_log_impl(&dword_247968000, v8, OS_LOG_TYPE_DEFAULT, "Conclave launch took %f second(s)", &buf, 0xCu);
  }

  v9 = sLog;
  if (!v6)
  {
    if (os_log_type_enabled(sLog, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_247968000, v9, OS_LOG_TYPE_DEFAULT, "IsolatedCoreAudioClient conclave successfully launched!", &buf, 2u);
    }

    tightbeamEndpoint = v2->_tightbeamEndpoint;
    tb_endpoint_set_interface_identifier();
    v12 = tb_client_connection_create_with_endpoint();
    if (!tb_client_connection_activate())
    {
      v2->_service.connection = v12;
    }

    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v13 = getCSIsInternalBuildSymbolLoc_ptr;
    v27 = getCSIsInternalBuildSymbolLoc_ptr;
    if (!getCSIsInternalBuildSymbolLoc_ptr)
    {
      *&buf = MEMORY[0x277D85DD0];
      *(&buf + 1) = 3221225472;
      v29 = __getCSIsInternalBuildSymbolLoc_block_invoke;
      v30 = &unk_278EB65D0;
      v31 = &v24;
      __getCSIsInternalBuildSymbolLoc_block_invoke(&buf);
      v13 = v25[3];
    }

    _Block_object_dispose(&v24, 8);
    if (v13)
    {
      if (!v13())
      {
LABEL_23:
        v10 = v2;
        goto LABEL_24;
      }

      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v14 = getAudioCaptureInitializeSymbolLoc_ptr;
      v27 = getAudioCaptureInitializeSymbolLoc_ptr;
      if (!getAudioCaptureInitializeSymbolLoc_ptr)
      {
        *&buf = MEMORY[0x277D85DD0];
        *(&buf + 1) = 3221225472;
        v29 = __getAudioCaptureInitializeSymbolLoc_block_invoke;
        v30 = &unk_278EB65D0;
        v31 = &v24;
        v15 = AudioCaptureLibrary();
        v16 = dlsym(v15, "AudioCaptureInitialize");
        *(v31[1] + 24) = v16;
        getAudioCaptureInitializeSymbolLoc_ptr = *(v31[1] + 24);
        v14 = v25[3];
      }

      _Block_object_dispose(&v24, 8);
      if (v14)
      {
        v14();
        goto LABEL_23;
      }

      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_Bool localAudioCaptureInitialize(void)"];
      [currentHandler handleFailureInFunction:v22 file:@"CSSecureSiriAudioProvidingProxy.m" lineNumber:20 description:{@"%s", dlerror()}];
    }

    else
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"_Bool localCSIsInternalBuild(void)"];
      [currentHandler2 handleFailureInFunction:v20 file:@"CSSecureSiriAudioProvidingProxy.m" lineNumber:23 description:{@"%s", dlerror()}];
    }

    __break(1u);
  }

  if (os_log_type_enabled(sLog, OS_LOG_TYPE_ERROR))
  {
    LODWORD(buf) = 67109120;
    DWORD1(buf) = v6;
    _os_log_error_impl(&dword_247968000, v9, OS_LOG_TYPE_ERROR, "IsolatedCoreAudioClient could not launch conclave with error %d!!!", &buf, 8u);
  }

  v10 = 0;
LABEL_24:

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

@end