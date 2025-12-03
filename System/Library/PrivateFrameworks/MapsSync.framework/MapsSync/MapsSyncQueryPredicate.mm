@interface MapsSyncQueryPredicate
+ (_TtC8MapsSync22MapsSyncQueryPredicate)queryPredicateWithFormat:(id)format argumentArray:(id)array;
+ (id)mapsFavoritesPredicateWithHidden:(BOOL)hidden includeNearbyTransit:(BOOL)transit;
+ (uint64_t)classForKeyedUnarchiver;
- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithCenterLatitude:(double)latitude centerLongitude:(double)longitude squareSideLengthMeters:(double)meters;
- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithCoder:(id)coder;
- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithFormat:(id)format args:(id)args;
- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithMapItem:(id)item customName:(id)name;
- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithNot:(id)not;
- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithType:(unint64_t)type subpredicates:(id)subpredicates;
- (id)not;
@end

@implementation MapsSyncQueryPredicate

+ (id)mapsFavoritesPredicateWithHidden:(BOOL)hidden includeNearbyTransit:(BOOL)transit
{
  PredicateC013mapsFavoritesD06hidden20includeNearbyTransitACSb_SbtFZ_0 = _s8MapsSync0aB14QueryPredicateC013mapsFavoritesD06hidden20includeNearbyTransitACSb_SbtFZ_0(hidden, transit);

  return PredicateC013mapsFavoritesD06hidden20includeNearbyTransitACSb_SbtFZ_0;
}

+ (_TtC8MapsSync22MapsSyncQueryPredicate)queryPredicateWithFormat:(id)format argumentArray:(id)array
{
  v5 = sub_1B63BEBD4();
  v7 = v6;
  if (array)
  {
    array = sub_1B63BECA4();
  }

  v8 = objc_allocWithZone(type metadata accessor for MapsSyncQueryPredicate());
  v9 = sub_1B6299B9C(v5, v7, array);

  return v9;
}

- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithType:(unint64_t)type subpredicates:(id)subpredicates
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsSyncQueryPredicate();
  return [(MapsSyncQueryPredicate *)&v7 initWithType:type subpredicates:subpredicates];
}

+ (uint64_t)classForKeyedUnarchiver
{
  sub_1B6281C60(0, &qword_1EDB0ECA8, 0x1E696AB28);

  return swift_getObjCClassFromMetadata();
}

- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithCenterLatitude:(double)latitude centerLongitude:(double)longitude squareSideLengthMeters:(double)meters
{
  v6 = sub_1B62A0D18(latitude, longitude, meters);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B63C3D70;
  *(v7 + 32) = v6;
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v8 = v6;
  v9 = sub_1B63BEC94();

  v12.receiver = self;
  v12.super_class = type metadata accessor for MapsSyncQueryPredicate();
  v10 = [(MapsSyncQueryPredicate *)&v12 initWithType:1 subpredicates:v9];

  return v10;
}

- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsSyncQueryPredicate();
  coderCopy = coder;
  v5 = [(MapsSyncQueryPredicate *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithNot:(id)not
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B63C3D70;
  *(v5 + 32) = not;
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  notCopy = not;
  v7 = sub_1B63BEC94();

  v10.receiver = self;
  v10.super_class = type metadata accessor for MapsSyncQueryPredicate();
  v8 = [(MapsSyncQueryPredicate *)&v10 initWithType:0 subpredicates:v7];

  return v8;
}

- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithFormat:(id)format args:(id)args
{
  v5 = sub_1B63BEBD4();
  if (args)
  {
    v7 = v6;
    v8 = v5;
    v9 = sub_1B63BECA4();
    v6 = v7;
    v10 = v9;
    v5 = v8;
  }

  else
  {
    v10 = 0;
  }

  return sub_1B6299B9C(v5, v6, v10);
}

- (id)not
{
  Predicate = type metadata accessor for MapsSyncQueryPredicate();
  v4 = objc_allocWithZone(Predicate);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B63C3D70;
  *(v5 + 32) = self;
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  selfCopy = self;
  v7 = sub_1B63BEC94();

  v10.receiver = v4;
  v10.super_class = Predicate;
  v8 = [(MapsSyncQueryPredicate *)&v10 initWithType:0 subpredicates:v7];

  return v8;
}

- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithMapItem:(id)item customName:(id)name
{
  if (name)
  {
    v4 = sub_1B63BEBD4();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = swift_unknownObjectRetain();
  return MapsSyncQueryPredicate.init(mapItem:customName:)(v7, v4, v6);
}

@end