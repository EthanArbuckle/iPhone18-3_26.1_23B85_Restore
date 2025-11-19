@interface DeviceState
+ (BOOL)isCustomerFused;
- (_TtC11OSAnalytics11DeviceState)init;
@end

@implementation DeviceState

+ (BOOL)isCustomerFused
{
  if (qword_1EB5DF978 != -1)
  {
    swift_once();
  }

  return byte_1EB5DF980;
}

- (_TtC11OSAnalytics11DeviceState)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeviceState();
  return [(DeviceState *)&v3 init];
}

@end