@interface TaskExtractorModelInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation TaskExtractorModelInput

- (NSSet)featureNames
{

  sub_1C4B7FBB4();

  v2 = sub_1C4F01AA8();

  return v2;
}

- (id)featureValueForName:(id)a3
{
  v3 = sub_1C4F01138();
  v5 = v4;

  v6 = sub_1C4B7FBC0(v3, v5);

  return v6;
}

@end