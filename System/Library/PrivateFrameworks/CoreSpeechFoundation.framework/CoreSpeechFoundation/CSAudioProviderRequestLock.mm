@interface CSAudioProviderRequestLock
- (CSAudioProviderRequestLock)initWithClientIdentity:(unint64_t)identity;
@end

@implementation CSAudioProviderRequestLock

- (CSAudioProviderRequestLock)initWithClientIdentity:(unint64_t)identity
{
  v9.receiver = self;
  v9.super_class = CSAudioProviderRequestLock;
  v4 = [(CSAudioProviderRequestLock *)&v9 init];
  if (v4)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    UUIDString = v4->_UUIDString;
    v4->_UUIDString = uUIDString;

    v4->_clientIdentity = identity;
  }

  return v4;
}

@end