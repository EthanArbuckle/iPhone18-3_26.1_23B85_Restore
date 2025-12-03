@interface UtilityServiceLocation
- (_TtC19HomeUtilityServices22UtilityServiceLocation)init;
- (_TtC19HomeUtilityServices22UtilityServiceLocation)initWithServiceLocationID:(id)d address:(id)address;
@end

@implementation UtilityServiceLocation

- (_TtC19HomeUtilityServices22UtilityServiceLocation)initWithServiceLocationID:(id)d address:(id)address
{
  v6 = sub_20E0091D4();
  v7 = (self + OBJC_IVAR____TtC19HomeUtilityServices22UtilityServiceLocation_serviceLocationID);
  *v7 = v6;
  v7[1] = v8;
  *(&self->super.isa + OBJC_IVAR____TtC19HomeUtilityServices22UtilityServiceLocation_address) = address;
  v11.receiver = self;
  v11.super_class = type metadata accessor for UtilityServiceLocation();
  addressCopy = address;
  return [(UtilityServiceLocation *)&v11 init];
}

- (_TtC19HomeUtilityServices22UtilityServiceLocation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end