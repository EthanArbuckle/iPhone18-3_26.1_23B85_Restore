@interface Home
- (id)copyWithZone:(void *)a3;
@end

@implementation Home

- (id)copyWithZone:(void *)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  v4 = type metadata accessor for Home();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  sub_2529E65BC(v3);
  return v7;
}

@end