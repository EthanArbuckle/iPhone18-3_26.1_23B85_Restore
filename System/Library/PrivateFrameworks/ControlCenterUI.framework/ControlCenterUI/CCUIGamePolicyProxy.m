@interface CCUIGamePolicyProxy
- (_TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy)init;
- (void)dealloc;
@end

@implementation CCUIGamePolicyProxy

- (_TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy)init
{
  *(&self->super.isa + OBJC_IVAR____TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy__connection) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CCUIGamePolicyProxy();
  return [(CCUIGamePolicyProxy *)&v3 init];
}

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC15ControlCenterUIP33_7F4488837D5B852FB42D4199467ECC5E19CCUIGamePolicyProxy__connection);
  v3 = self;
  [v2 invalidate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for CCUIGamePolicyProxy();
  [(CCUIGamePolicyProxy *)&v4 dealloc];
}

@end