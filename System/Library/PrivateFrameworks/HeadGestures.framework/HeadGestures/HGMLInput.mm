@interface HGMLInput
- (NSSet)featureNames;
- (id)featureValueForName:(id)a3;
@end

@implementation HGMLInput

- (id)featureValueForName:(id)a3
{
  v3 = sub_251130F18();
  v5 = v4;

  v6 = sub_251107B58(v3, v5);

  return v6;
}

- (NSSet)featureNames
{

  sub_25113072C(&unk_286331338);
  swift_arrayDestroy();

  v2 = sub_2511310F8();

  return v2;
}

@end