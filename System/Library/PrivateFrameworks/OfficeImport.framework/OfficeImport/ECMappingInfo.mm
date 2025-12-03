@interface ECMappingInfo
+ (id)mappingInfoWithSheetName:(id)name;
- (ECMappingInfo)initWithSheetName:(id)name;
@end

@implementation ECMappingInfo

- (ECMappingInfo)initWithSheetName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = ECMappingInfo;
  v6 = [(ECMappingInfo *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->mSheetName, name);
  }

  return v7;
}

+ (id)mappingInfoWithSheetName:(id)name
{
  nameCopy = name;
  v4 = [objc_alloc(objc_opt_class()) initWithSheetName:nameCopy];

  return v4;
}

@end