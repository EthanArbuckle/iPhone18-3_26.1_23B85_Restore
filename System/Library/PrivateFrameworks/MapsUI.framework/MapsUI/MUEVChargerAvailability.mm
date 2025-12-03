@interface MUEVChargerAvailability
- (_TtC6MapsUI23MUEVChargerAvailability)init;
- (_TtC6MapsUI23MUEVChargerAvailability)initWithAggregatedCounts:(id)counts plugs:(id)plugs vehicles:(id)vehicles;
@end

@implementation MUEVChargerAvailability

- (_TtC6MapsUI23MUEVChargerAvailability)initWithAggregatedCounts:(id)counts plugs:(id)plugs vehicles:(id)vehicles
{
  ObjectType = swift_getObjectType();
  sub_1C5626E40(0, &qword_1EC16E2A0, 0x1E69A1D68);
  v8 = sub_1C584F770();
  sub_1C5626E40(0, &qword_1EC16E320, 0x1E69DF8A0);
  v9 = sub_1C584F770();
  *(self + OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_aggregatedInfo) = counts;
  *(self + OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_plugs) = v8;
  *(self + OBJC_IVAR____TtC6MapsUI23MUEVChargerAvailability_vehicles) = v9;
  v12.receiver = self;
  v12.super_class = ObjectType;
  countsCopy = counts;
  return [(MUEVChargerAvailability *)&v12 init];
}

- (_TtC6MapsUI23MUEVChargerAvailability)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end