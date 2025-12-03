@interface HMDMatterCapabilitiesFactory
+ (id)makeInstanceForAssetFilename:(int64_t)filename;
- (HMDMatterCapabilitiesFactory)init;
@end

@implementation HMDMatterCapabilitiesFactory

+ (id)makeInstanceForAssetFilename:(int64_t)filename
{
  v3 = sub_2297C4AE4(filename);

  return v3;
}

- (HMDMatterCapabilitiesFactory)init
{
  v3.receiver = self;
  v3.super_class = HMDMatterCapabilitiesFactory;
  return [(HMDMatterCapabilitiesFactory *)&v3 init];
}

@end