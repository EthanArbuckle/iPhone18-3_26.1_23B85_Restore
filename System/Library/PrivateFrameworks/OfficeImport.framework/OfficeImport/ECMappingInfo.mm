@interface ECMappingInfo
+ (id)mappingInfoWithSheetName:(id)a3;
- (ECMappingInfo)initWithSheetName:(id)a3;
@end

@implementation ECMappingInfo

- (ECMappingInfo)initWithSheetName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ECMappingInfo;
  v6 = [(ECMappingInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mSheetName, a3);
  }

  return v7;
}

+ (id)mappingInfoWithSheetName:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithSheetName:v3];

  return v4;
}

@end