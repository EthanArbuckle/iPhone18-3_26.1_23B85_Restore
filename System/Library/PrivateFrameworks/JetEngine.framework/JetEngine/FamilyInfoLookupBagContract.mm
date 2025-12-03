@interface FamilyInfoLookupBagContract
- (id)familyInfoURL;
@end

@implementation FamilyInfoLookupBagContract

- (id)familyInfoURL
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC9JetEngine27FamilyInfoLookupBagContract_backing);
  selfCopy = self;
  v4 = sub_1AB460514();
  uRLForKey_ = [v2 URLForKey_];

  return uRLForKey_;
}

@end