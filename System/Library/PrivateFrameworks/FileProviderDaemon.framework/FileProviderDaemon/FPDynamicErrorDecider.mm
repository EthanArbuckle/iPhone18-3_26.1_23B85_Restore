@interface FPDynamicErrorDecider
+ (BOOL)shouldSendFor:(id)for;
- (_TtC18FileProviderDaemon21FPDynamicErrorDecider)init;
@end

@implementation FPDynamicErrorDecider

+ (BOOL)shouldSendFor:(id)for
{
  forCopy = for;
  v4 = shouldSendDynamicError(for:)(forCopy);

  return v4;
}

- (_TtC18FileProviderDaemon21FPDynamicErrorDecider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FPDynamicErrorDecider();
  return [(FPDynamicErrorDecider *)&v3 init];
}

@end