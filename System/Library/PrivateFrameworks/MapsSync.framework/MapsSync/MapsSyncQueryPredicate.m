@interface MapsSyncQueryPredicate
+ (_TtC8MapsSync22MapsSyncQueryPredicate)queryPredicateWithFormat:(id)a3 argumentArray:(id)a4;
+ (id)mapsFavoritesPredicateWithHidden:(BOOL)a3 includeNearbyTransit:(BOOL)a4;
+ (uint64_t)classForKeyedUnarchiver;
- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithCenterLatitude:(double)a3 centerLongitude:(double)a4 squareSideLengthMeters:(double)a5;
- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithCoder:(id)a3;
- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithFormat:(id)a3 args:(id)a4;
- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithMapItem:(id)a3 customName:(id)a4;
- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithNot:(id)a3;
- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithType:(unint64_t)a3 subpredicates:(id)a4;
- (id)not;
@end

@implementation MapsSyncQueryPredicate

+ (id)mapsFavoritesPredicateWithHidden:(BOOL)a3 includeNearbyTransit:(BOOL)a4
{
  PredicateC013mapsFavoritesD06hidden20includeNearbyTransitACSb_SbtFZ_0 = _s8MapsSync0aB14QueryPredicateC013mapsFavoritesD06hidden20includeNearbyTransitACSb_SbtFZ_0(a3, a4);

  return PredicateC013mapsFavoritesD06hidden20includeNearbyTransitACSb_SbtFZ_0;
}

+ (_TtC8MapsSync22MapsSyncQueryPredicate)queryPredicateWithFormat:(id)a3 argumentArray:(id)a4
{
  v5 = sub_1B63BEBD4();
  v7 = v6;
  if (a4)
  {
    a4 = sub_1B63BECA4();
  }

  v8 = objc_allocWithZone(type metadata accessor for MapsSyncQueryPredicate());
  v9 = sub_1B6299B9C(v5, v7, a4);

  return v9;
}

- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithType:(unint64_t)a3 subpredicates:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsSyncQueryPredicate();
  return [(MapsSyncQueryPredicate *)&v7 initWithType:a3 subpredicates:a4];
}

+ (uint64_t)classForKeyedUnarchiver
{
  sub_1B6281C60(0, &qword_1EDB0ECA8, 0x1E696AB28);

  return swift_getObjCClassFromMetadata();
}

- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithCenterLatitude:(double)a3 centerLongitude:(double)a4 squareSideLengthMeters:(double)a5
{
  v6 = sub_1B62A0D18(a3, a4, a5);
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

- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsSyncQueryPredicate();
  v4 = a3;
  v5 = [(MapsSyncQueryPredicate *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithNot:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB943670, qword_1B63C3F60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B63C3D70;
  *(v5 + 32) = a3;
  sub_1B6281C60(0, &qword_1EDB0F640, 0x1E696AE18);
  v6 = a3;
  v7 = sub_1B63BEC94();

  v10.receiver = self;
  v10.super_class = type metadata accessor for MapsSyncQueryPredicate();
  v8 = [(MapsSyncQueryPredicate *)&v10 initWithType:0 subpredicates:v7];

  return v8;
}

- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithFormat:(id)a3 args:(id)a4
{
  v5 = sub_1B63BEBD4();
  if (a4)
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
  v6 = self;
  v7 = sub_1B63BEC94();

  v10.receiver = v4;
  v10.super_class = Predicate;
  v8 = [(MapsSyncQueryPredicate *)&v10 initWithType:0 subpredicates:v7];

  return v8;
}

- (_TtC8MapsSync22MapsSyncQueryPredicate)initWithMapItem:(id)a3 customName:(id)a4
{
  if (a4)
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