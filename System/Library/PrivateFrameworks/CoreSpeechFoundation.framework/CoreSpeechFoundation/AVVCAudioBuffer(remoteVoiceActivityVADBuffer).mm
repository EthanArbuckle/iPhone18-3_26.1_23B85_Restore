@interface AVVCAudioBuffer(remoteVoiceActivityVADBuffer)
- (id)remoteVoiceActivityVADBuffer;
@end

@implementation AVVCAudioBuffer(remoteVoiceActivityVADBuffer)

- (id)remoteVoiceActivityVADBuffer
{
  if ([self remoteVoiceActivityAvailable])
  {
    remoteVoiceActivityVAD = [self remoteVoiceActivityVAD];
    v2 = [MEMORY[0x1E695DEF0] dataWithBytes:&remoteVoiceActivityVAD length:1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

@end