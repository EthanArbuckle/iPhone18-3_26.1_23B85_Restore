@interface CSAudioProviderRequestLock
- (CSAudioProviderRequestLock)initWithClientIdentity:(unint64_t)a3;
@end

@implementation CSAudioProviderRequestLock

- (CSAudioProviderRequestLock)initWithClientIdentity:(unint64_t)a3
{
  v9.receiver = self;
  v9.super_class = CSAudioProviderRequestLock;
  v4 = [(CSAudioProviderRequestLock *)&v9 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    UUIDString = v4->_UUIDString;
    v4->_UUIDString = v6;

    v4->_clientIdentity = a3;
  }

  return v4;
}

@end