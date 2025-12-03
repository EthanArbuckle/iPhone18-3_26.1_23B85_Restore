@interface MotionTransformerInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)name;
@end

@implementation MotionTransformerInput

- (NSSet)featureNames
{

  sub_25113072C(&unk_286331808);
  swift_arrayDestroy();

  v2 = sub_2511310F8();

  return v2;
}

- (id)featureValueForName:(id)name
{
  v3 = sub_251130F18();
  v5 = v4;

  v6 = sub_251107B58(v3, v5);

  return v6;
}

@end