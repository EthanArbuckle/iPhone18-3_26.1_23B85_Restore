@interface FPDynamicErrorDecider
+ (BOOL)shouldSendFor:(id)a3;
- (_TtC18FileProviderDaemon21FPDynamicErrorDecider)init;
@end

@implementation FPDynamicErrorDecider

+ (BOOL)shouldSendFor:(id)a3
{
  v3 = a3;
  v4 = shouldSendDynamicError(for:)(v3);

  return v4;
}

- (_TtC18FileProviderDaemon21FPDynamicErrorDecider)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FPDynamicErrorDecider();
  return [(FPDynamicErrorDecider *)&v3 init];
}

@end