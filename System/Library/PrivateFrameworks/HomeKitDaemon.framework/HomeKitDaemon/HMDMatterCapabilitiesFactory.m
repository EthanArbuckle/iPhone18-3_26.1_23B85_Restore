@interface HMDMatterCapabilitiesFactory
+ (id)makeInstanceForAssetFilename:(int64_t)a3;
- (HMDMatterCapabilitiesFactory)init;
@end

@implementation HMDMatterCapabilitiesFactory

+ (id)makeInstanceForAssetFilename:(int64_t)a3
{
  v3 = sub_2297C4AE4(a3);

  return v3;
}

- (HMDMatterCapabilitiesFactory)init
{
  v3.receiver = self;
  v3.super_class = HMDMatterCapabilitiesFactory;
  return [(HMDMatterCapabilitiesFactory *)&v3 init];
}

@end