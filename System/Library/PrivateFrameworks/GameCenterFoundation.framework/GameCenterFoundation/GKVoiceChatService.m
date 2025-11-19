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
  v2 = [(GKVoiceChatService *)self voiceChatService];
  v3 = [v2 getClient];

  return v3;
}

- (void)setClient:(id)client
{
  v4 = client;
  v5 = [(GKVoiceChatService *)self voiceChatService];
  [v5 setClient:v4 gkVoiceChatService:self];
}

- (BOOL)startVoiceChatWithParticipantID:(NSString *)participantID error:(NSError *)error
{
  v6 = participantID;
  v7 = [(GKVoiceChatService *)self voiceChatService];
  LOBYTE(error) = [v7 startVoiceChatWithParticipantID:v6 error:error];

  return error;
}

- (void)stopVoiceChatWithParticipantID:(NSString *)participantID
{
  v4 = participantID;
  v5 = [(GKVoiceChatService *)self voiceChatService];
  [v5 stopVoiceChatWithParticipantID:v4];
}

- (BOOL)acceptCallID:(NSInteger)callID error:(NSError *)error
{
  v5 = callID;
  v6 = [(GKVoiceChatService *)self voiceChatService];
  LOBYTE(error) = [v6 acceptCallID:v5 error:error];

  return error;
}

- (void)denyCallID:(NSInteger)callID
{
  v3 = callID;
  v4 = [(GKVoiceChatService *)self voiceChatService];
  [v4 denyCallID:v3];
}

- (void)receivedData:(NSData *)arbitraryData fromParticipantID:(NSString *)participantID
{
  v6 = participantID;
  v7 = arbitraryData;
  v8 = [(GKVoiceChatService *)self voiceChatService];
  [v8 receivedData:v7 fromParticipantID:v6];
}

- (BOOL)isMicrophoneMuted
{
  v2 = [(GKVoiceChatService *)self voiceChatService];
  v3 = [v2 isMicrophoneMuted];

  return v3;
}

- (float)remoteParticipantVolume
{
  v2 = [(GKVoiceChatService *)self voiceChatService];
  [v2 remoteParticipantVolume];
  v4 = v3;

  return v4;
}

- (void)setRemoteParticipantVolume:(float)remoteParticipantVolume
{
  v5 = [(GKVoiceChatService *)self voiceChatService];
  *&v4 = remoteParticipantVolume;
  [v5 setRemoteParticipantVolume:v4];
}

- (BOOL)isOutputMeteringEnabled
{
  v2 = [(GKVoiceChatService *)self voiceChatService];
  v3 = [v2 isOutputMeteringEnabled];

  return v3;
}

- (BOOL)isInputMeteringEnabled
{
  v2 = [(GKVoiceChatService *)self voiceChatService];
  v3 = [v2 isInputMeteringEnabled];

  return v3;
}

- (float)outputMeterLevel
{
  v2 = [(GKVoiceChatService *)self voiceChatService];
  [v2 outputMeterLevel];
  v4 = v3;

  return v4;
}

- (float)inputMeterLevel
{
  v2 = [(GKVoiceChatService *)self voiceChatService];
  [v2 inputMeterLevel];
  v4 = v3;

  return v4;
}

@end