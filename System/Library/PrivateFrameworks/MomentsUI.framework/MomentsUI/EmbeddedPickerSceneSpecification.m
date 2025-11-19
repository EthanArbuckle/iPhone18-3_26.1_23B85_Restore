@interface EmbeddedPickerSceneSpecification
- (_TtC9MomentsUI32EmbeddedPickerSceneSpecification)init;
- (id)userActivity;
@end

@implementation EmbeddedPickerSceneSpecification

- (id)userActivity
{
  v2 = self;
  v3 = EmbeddedPickerSceneSpecification.userActivity()();

  return v3;
}

- (_TtC9MomentsUI32EmbeddedPickerSceneSpecification)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC9MomentsUI32EmbeddedPickerSceneSpecification_connectionUUID;
  v5 = type metadata accessor for UUID();
  (*(*(v5 - 8) + 56))(self + v4, 1, 1, v5);
  v7.receiver = self;
  v7.super_class = ObjectType;
  return [(EmbeddedPickerSceneSpecification *)&v7 init];
}

@end