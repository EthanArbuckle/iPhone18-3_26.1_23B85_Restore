@interface GKVoiceChatService
+ (GKVoiceChatService)defaultVoiceChatService;
- (BOOL)acceptCallID:(NSInteger)callID error:(NSError *)error;
- (BOOL)isInputMeteringEnabled;
- (BOOL)isMicrophoneMuted;
- (BOOL)isOutputMeteringEnabled;
- (BOOL)startVoiceChatWithParticipantID:(NSString *)participantID error:(NSError *)error;
- (GKVoiceChatService)init;
- (float)inputMeterLevel;
- (float)outputMeterLevel;
- (float)remoteParticipantVolume;
- (id)client;
- (void)denyCallID:(NSInteger)callID;
- (void)receivedData:(NSData *)arbitraryData fromParticipantID:(NSString *)participantID;
- (void)setClient:(id)client;
- (void)setRemoteParticipantVolume:(float)remoteParticipantVolume;
- (void)stopVoiceChatWithParticipantID:(NSString *)participantID;
@end

@implementation GKVoiceChatService

- (GKVoiceChatService)init
{
  v6.receiver = self;
  v6.super_class = GKVoiceChatService;
  v2 = [(GKVoiceChatService *)&v6 init];
  if (v2)
  {
    v3 = +[GKViceroyVoiceChatServiceFactory makeService];
    voiceChatService = v2->_voiceChatService;
    v2->_voiceChatService = v3;
  }

  return v2;
}

+ (GKVoiceChatService)defaultVoiceChatService
{
  v2 = defaultVoiceChatService__GKVoiceChatService;
  if (!defaultVoiceChatService__GKVoiceChatService)
  {
    v3 = objc_opt_class();
    objc_sync_enter(v3);
    if (!defaultVoiceChatService__GKVoiceChatService)
    {
      v4 = objc_alloc_init(GKVoiceChatService);
      v5 = defaultVoiceChatService__GKVoiceChatService;
      defaultVoiceChatService__GKVoiceChatService = v4;
    }

    objc_sync_exit(v3);

    v2 = defaultVoiceChatService__GKVoiceChatService;
  }

  return v2;
}

- (id)client
{
  voiceChatService = [(GKVoiceChatService *)self voiceChatService];
  getClient = [voiceChatService getClient];

  return getClient;
}

- (void)setClient:(id)client
{
  v4 = client;
  voiceChatService = [(GKVoiceChatService *)self voiceChatService];
  [voiceChatService setClient:v4 gkVoiceChatService:self];
}

- (BOOL)startVoiceChatWithParticipantID:(NSString *)participantID error:(NSError *)error
{
  v6 = participantID;
  voiceChatService = [(GKVoiceChatService *)self voiceChatService];
  LOBYTE(error) = [voiceChatService startVoiceChatWithParticipantID:v6 error:error];

  return error;
}

- (void)stopVoiceChatWithParticipantID:(NSString *)participantID
{
  v4 = participantID;
  voiceChatService = [(GKVoiceChatService *)self voiceChatService];
  [voiceChatService stopVoiceChatWithParticipantID:v4];
}

- (BOOL)acceptCallID:(NSInteger)callID error:(NSError *)error
{
  v5 = callID;
  voiceChatService = [(GKVoiceChatService *)self voiceChatService];
  LOBYTE(error) = [voiceChatService acceptCallID:v5 error:error];

  return error;
}

- (void)denyCallID:(NSInteger)callID
{
  v3 = callID;
  voiceChatService = [(GKVoiceChatService *)self voiceChatService];
  [voiceChatService denyCallID:v3];
}

- (void)receivedData:(NSData *)arbitraryData fromParticipantID:(NSString *)participantID
{
  v6 = participantID;
  v7 = arbitraryData;
  voiceChatService = [(GKVoiceChatService *)self voiceChatService];
  [voiceChatService receivedData:v7 fromParticipantID:v6];
}

- (BOOL)isMicrophoneMuted
{
  voiceChatService = [(GKVoiceChatService *)self voiceChatService];
  isMicrophoneMuted = [voiceChatService isMicrophoneMuted];

  return isMicrophoneMuted;
}

- (float)remoteParticipantVolume
{
  voiceChatService = [(GKVoiceChatService *)self voiceChatService];
  [voiceChatService remoteParticipantVolume];
  v4 = v3;

  return v4;
}

- (void)setRemoteParticipantVolume:(float)remoteParticipantVolume
{
  voiceChatService = [(GKVoiceChatService *)self voiceChatService];
  *&v4 = remoteParticipantVolume;
  [voiceChatService setRemoteParticipantVolume:v4];
}

- (BOOL)isOutputMeteringEnabled
{
  voiceChatService = [(GKVoiceChatService *)self voiceChatService];
  isOutputMeteringEnabled = [voiceChatService isOutputMeteringEnabled];

  return isOutputMeteringEnabled;
}

- (BOOL)isInputMeteringEnabled
{
  voiceChatService = [(GKVoiceChatService *)self voiceChatService];
  isInputMeteringEnabled = [voiceChatService isInputMeteringEnabled];

  return isInputMeteringEnabled;
}

- (float)outputMeterLevel
{
  voiceChatService = [(GKVoiceChatService *)self voiceChatService];
  [voiceChatService outputMeterLevel];
  v4 = v3;

  return v4;
}

- (float)inputMeterLevel
{
  voiceChatService = [(GKVoiceChatService *)self voiceChatService];
  [voiceChatService inputMeterLevel];
  v4 = v3;

  return v4;
}

@end