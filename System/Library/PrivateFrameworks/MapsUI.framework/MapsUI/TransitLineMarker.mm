@interface TransitLineMarker
- (_TtC6MapsUI17TransitLineMarker)init;
- (_TtC6MapsUI17TransitLineMarker)initWithTransitLine:(id)line locationHint:(CLLocationCoordinate2D)hint;
- (id)artwork;
- (id)labelText;
- (id)mapItemIdentifier;
@end

@implementation TransitLineMarker

- (_TtC6MapsUI17TransitLineMarker)initWithTransitLine:(id)line locationHint:(CLLocationCoordinate2D)hint
{
  longitude = hint.longitude;
  latitude = hint.latitude;
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC6MapsUI17TransitLineMarker_transitLine) = line;
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
  selfCopy = self;
  v3 = TransitLineMarker.mapItemIdentifier()();

  return v3;
}

- (id)labelText
{
  selfCopy = self;
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
  artwork = [*(&self->super.isa + OBJC_IVAR____TtC6MapsUI17TransitLineMarker_transitLine) artwork];

  return artwork;
}

@end