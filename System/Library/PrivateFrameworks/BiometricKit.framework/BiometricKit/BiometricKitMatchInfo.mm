@interface BiometricKitMatchInfo
- (BiometricKitMatchInfo)init;
- (void)dealloc;
@end

@implementation BiometricKitMatchInfo

- (BiometricKitMatchInfo)init
{
  v7.receiver = self;
  v7.super_class = BiometricKitMatchInfo;
  v2 = [(BiometricKitMatchInfo *)&v7 init];
  v3 = v2;
  if (v2)
  {
    topology = v2->_topology;
    v2->_topology = 0;

    details = v3->_details;
    v3->_details = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(BiometricKitMatchInfo *)self setTopology:0];
  [(BiometricKitMatchInfo *)self setDetails:0];
  v3.receiver = self;
  v3.super_class = BiometricKitMatchInfo;
  [(BiometricKitMatchInfo *)&v3 dealloc];
}

@end