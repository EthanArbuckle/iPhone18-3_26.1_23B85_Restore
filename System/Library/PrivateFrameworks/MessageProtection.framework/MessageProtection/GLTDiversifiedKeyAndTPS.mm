@interface GLTDiversifiedKeyAndTPS
- (GLTDiversifiedKeyAndTPS)initWithKey:(__SecKey *)a3 trackingPreventionSalt:(id)a4;
@end

@implementation GLTDiversifiedKeyAndTPS

- (GLTDiversifiedKeyAndTPS)initWithKey:(__SecKey *)a3 trackingPreventionSalt:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = GLTDiversifiedKeyAndTPS;
  v8 = [(GLTDiversifiedKeyAndTPS *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_diversifiedKey = a3;
    objc_storeStrong(&v8->_trackingPreventionSalt, a4);
  }

  return v9;
}

@end