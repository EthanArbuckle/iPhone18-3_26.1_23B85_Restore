@interface TransitLineMarker
- (_TtC6MapsUI17TransitLineMarker)init;
- (_TtC6MapsUI17TransitLineMarker)initWithTransitLine:(id)a3 locationHint:(CLLocationCoordinate2D)a4;
- (id)artwork;
- (id)labelText;
- (id)mapItemIdentifier;
@end

@implementation TransitLineMarker

- (_TtC6MapsUI17TransitLineMarker)initWithTransitLine:(id)a3 locationHint:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC6MapsUI17TransitLineMarker_transitLine) = a3;
  v9 = (self + OBJC_IVAR____TtC6MapsUI17TransitLineMarker_locationHint);
  *v9 = latitude;
  v9[1] = longitude;
  v11.receiver = self;
  v11.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(TransitLineMarker *)&v11 init];
}

- (_TtC6MapsUI17TransitLineMarker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)mapItemIdentifier
{
  v2 = self;
  v3 = TransitLineMarker.mapItemIdentifier()();

  return v3;
}

- (id)labelText
{
  v2 = self;
  object = TransitLineMarker.labelText()().value._object;

  if (object)
  {
    v4 = sub_1C584F630();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)artwork
{
  v2 = [*(&self->super.isa + OBJC_IVAR____TtC6MapsUI17TransitLineMarker_transitLine) artwork];

  return v2;
}

@end