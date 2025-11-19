@interface CRContext
+ (id)newTransientContextObjC;
- (CRContext)init;
@end

@implementation CRContext

- (CRContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (id)newTransientContextObjC
{
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  v2 = sub_1ADDCE2E4(0, v4);
  sub_1ADDCEDE0(v4, &qword_1EB5B9DB0, &qword_1AE240B80);
  return v2;
}

@end