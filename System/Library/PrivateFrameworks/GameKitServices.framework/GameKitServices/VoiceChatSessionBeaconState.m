@interface VoiceChatSessionBeaconState
- (VoiceChatSessionBeaconState)init;
- (void)dealloc;
- (void)setLastReceivedBeacon:(tagVoiceChatBeacon *)a3;
@end

@implementation VoiceChatSessionBeaconState

- (VoiceChatSessionBeaconState)init
{
  v5.receiver = self;
  v5.super_class = VoiceChatSessionBeaconState;
  v2 = [(VoiceChatSessionBeaconState *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->typeToSend = 0;
    *&v2->sentState = 0;
    v2->needsSend = 0;
    v2->lastReceivedBeacon = malloc_type_calloc(1uLL, 0x14uLL, 0x1000040A86A77D5uLL);
  }

  return v3;
}

- (void)dealloc
{
  lastReceivedBeacon = self->lastReceivedBeacon;
  if (lastReceivedBeacon)
  {
    free(lastReceivedBeacon);
  }

  v4.receiver = self;
  v4.super_class = VoiceChatSessionBeaconState;
  [(VoiceChatSessionBeaconState *)&v4 dealloc];
}

- (void)setLastReceivedBeacon:(tagVoiceChatBeacon *)a3
{
  lastReceivedBeacon = self->lastReceivedBeacon;
  v4 = *&a3->var0;
  lastReceivedBeacon->var4 = a3->var4;
  *&lastReceivedBeacon->var0 = v4;
}

@end