@interface LookupBagContract
- (id)unpersonalizedLookupURL;
@end

@implementation LookupBagContract

- (id)unpersonalizedLookupURL
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC9JetEngine17LookupBagContract_backing);
  selfCopy = self;
  v4 = sub_1AB460514();
  uRLForKey_ = [v2 URLForKey_];

  return uRLForKey_;
}

@end