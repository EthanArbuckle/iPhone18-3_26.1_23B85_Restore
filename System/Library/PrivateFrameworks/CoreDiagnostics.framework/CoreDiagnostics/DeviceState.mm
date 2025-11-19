@interface DeviceState
+ (BOOL)isCustomerFused;
- (_TtC15CoreDiagnostics11DeviceState)init;
@end

@implementation DeviceState

+ (BOOL)isCustomerFused
{
  if (qword_1EDCFE4D0 != -1)
  {
    swift_once();
  }

  return byte_1EDCFE4D8;
}

- (_TtC15CoreDiagnostics11DeviceState)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DeviceState();
  return [(DeviceState *)&v3 init];
}

@end