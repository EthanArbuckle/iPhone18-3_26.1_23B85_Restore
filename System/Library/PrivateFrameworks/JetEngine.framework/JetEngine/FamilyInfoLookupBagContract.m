@interface FamilyInfoLookupBagContract
- (id)familyInfoURL;
@end

@implementation FamilyInfoLookupBagContract

- (id)familyInfoURL
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC9JetEngine27FamilyInfoLookupBagContract_backing);
  v3 = self;
  v4 = sub_1AB460514();
  v5 = [v2 URLForKey_];

  return v5;
}

@end