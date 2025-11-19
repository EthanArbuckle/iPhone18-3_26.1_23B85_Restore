@interface HMDClientConnectionDataSource
- (HMDClientConnectionDataSource)init;
@end

@implementation HMDClientConnectionDataSource

- (HMDClientConnectionDataSource)init
{
  v6.receiver = self;
  v6.super_class = HMDClientConnectionDataSource;
  v2 = [(HMDClientConnectionDataSource *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(HMDCarPlayDataSource);
    carPlayDataSource = v2->_carPlayDataSource;
    v2->_carPlayDataSource = v3;
  }

  return v2;
}

@end