@interface GLTDiversifiedKeyAndTPS
- (GLTDiversifiedKeyAndTPS)initWithKey:(__SecKey *)key trackingPreventionSalt:(id)salt;
@end

@implementation GLTDiversifiedKeyAndTPS

- (GLTDiversifiedKeyAndTPS)initWithKey:(__SecKey *)key trackingPreventionSalt:(id)salt
{
  saltCopy = salt;
  v11.receiver = self;
  v11.super_class = GLTDiversifiedKeyAndTPS;
  v8 = [(GLTDiversifiedKeyAndTPS *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_diversifiedKey = key;
    objc_storeStrong(&v8->_trackingPreventionSalt, salt);
  }

  return v9;
}

@end