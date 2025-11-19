@interface CSXPCClientFactory
+ (id)defaultFactory;
- (id)clientForAudioProviding;
- (id)clientForAudioSessionInfoProviding;
- (id)clientForFallbackAudioSessionReleaseProviding;
- (id)clientForMacOSDuckAudioDevice;
- (id)clientForSmartSiriVolumeProviding;
@end

@implementation CSXPCClientFactory

- (id)clientForFallbackAudioSessionReleaseProviding
{
  v2 = [[CSXPCClient alloc] initWithType:6];

  return v2;
}

- (id)clientForMacOSDuckAudioDevice
{
  v2 = [[CSXPCClient alloc] initWithType:4];

  return v2;
}

- (id)clientForSmartSiriVolumeProviding
{
  v2 = [[CSXPCClient alloc] initWithType:3];

  return v2;
}

- (id)clientForAudioSessionInfoProviding
{
  v2 = [[CSXPCClient alloc] initWithType:2];

  return v2;
}

- (id)clientForAudioProviding
{
  v2 = [[CSXPCClient alloc] initWithType:1];

  return v2;
}

+ (id)defaultFactory
{
  if (qword_10029DF48 != -1)
  {
    dispatch_once(&qword_10029DF48, &stru_10024E610);
  }

  v3 = qword_10029DF50;

  return v3;
}

@end