@interface DefaultGKVoiceChatService
- (BOOL)acceptCallID:(int64_t)a3 error:(id *)a4;
- (BOOL)isInputMeteringEnabled;
- (BOOL)isMicrophoneMuted;
- (BOOL)isOutputMeteringEnabled;
- (BOOL)startVoiceChatWithParticipantID:(id)a3 error:(id *)a4;
- (float)inputMeterLevel;
- (float)outputMeterLevel;
- (float)remoteParticipantVolume;
- (id)getClient;
- (void)denyCallID:(int64_t)a3;
- (void)receivedData:(id)a3 fromParticipantID:(id)a4;
- (void)setClient:(id)a3 gkVoiceChatService:(id)a4;
- (void)setRemoteParticipantVolume:(float)a3;
- (void)stopVoiceChatWithParticipantID:(id)a3;
@end

@implementation DefaultGKVoiceChatService

- (BOOL)isInputMeteringEnabled
{
  v2 = [(DefaultGKVoiceChatService *)self service];
  v3 = [v2 isInputMeteringEnabled];

  return v3;
}

- (float)inputMeterLevel
{
  v2 = [(DefaultGKVoiceChatService *)self service];
  [v2 inputMeterLevel];
  v4 = v3;

  return v4;
}

- (BOOL)isMicrophoneMuted
{
  v2 = [(DefaultGKVoiceChatService *)self service];
  v3 = [v2 isMicrophoneMuted];

  return v3;
}

- (BOOL)isOutputMeteringEnabled
{
  v2 = [(DefaultGKVoiceChatService *)self service];
  v3 = [v2 isOutputMeteringEnabled];

  return v3;
}

- (float)outputMeterLevel
{
  v2 = [(DefaultGKVoiceChatService *)self service];
  [v2 outputMeterLevel];
  v4 = v3;

  return v4;
}

- (float)remoteParticipantVolume
{
  v2 = [(DefaultGKVoiceChatService *)self service];
  [v2 remoteParticipantVolume];
  v4 = v3;

  return v4;
}

- (void)setRemoteParticipantVolume:(float)a3
{
  v5 = [(DefaultGKVoiceChatService *)self service];
  *&v4 = a3;
  [v5 setRemoteParticipantVolume:v4];
}

- (BOOL)acceptCallID:(int64_t)a3 error:(id *)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
    v7 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = v7;
    v10 = [(DefaultGKVoiceChatService *)self service];
    v15 = 138412290;
    v16 = v10;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "[DefaultGKVoiceChatService] acceptCallID with %@", &v15, 0xCu);
  }

  v11 = [(DefaultGKVoiceChatService *)self service];
  v12 = [v11 acceptCallID:a3 error:a4];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)denyCallID:(int64_t)a3
{
  v4 = [(DefaultGKVoiceChatService *)self service];
  [v4 denyCallID:a3];
}

- (id)getClient
{
  v2 = [(DefaultGKVoiceChatService *)self service];
  v3 = [v2 client];

  return v3;
}

- (void)receivedData:(id)a3 fromParticipantID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(DefaultGKVoiceChatService *)self service];
  [v8 receivedData:v7 fromParticipantID:v6];
}

- (void)setClient:(id)a3 gkVoiceChatService:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D0C940];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultVoiceChatService];
  service = self->_service;
  self->_service = v9;

  v11 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
    v11 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = v11;
    v14 = [(DefaultGKVoiceChatService *)self service];
    v18 = 138412290;
    v19 = v14;
    _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, "[DefaultGKVoiceChatService] initWithGKVoiceChatServicePrivate  = %@", &v18, 0xCu);
  }

  v15 = [(DefaultGKVoiceChatService *)self service];
  [v15 setWrapperService:v7];

  v16 = [(DefaultGKVoiceChatService *)self service];
  [v16 setClient:v8];

  v17 = *MEMORY[0x277D85DE8];
}

- (BOOL)startVoiceChatWithParticipantID:(id)a3 error:(id *)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
    v7 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = v7;
    v10 = [(DefaultGKVoiceChatService *)self service];
    v15 = 138412546;
    v16 = v10;
    v17 = 2112;
    v18 = v6;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "[DefaultGKVoiceChatService] %@: startVoiceChatWithParticipantID with %@", &v15, 0x16u);
  }

  v11 = [(DefaultGKVoiceChatService *)self service];
  v12 = [v11 startVoiceChatWithParticipantID:v6 error:a4];

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)stopVoiceChatWithParticipantID:(id)a3
{
  v4 = a3;
  v5 = [(DefaultGKVoiceChatService *)self service];
  [v5 stopVoiceChatWithParticipantID:v4];
}

@end