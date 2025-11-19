@interface LocalSceneSpecification
- (BOOL)isEqual:(id)a3;
- (Class)uiSceneMinimumClass;
- (NSArray)defaultExtensions;
- (NSString)uiSceneSessionRole;
- (_TtC12DrawingBoard23LocalSceneSpecification)init;
@end

@implementation LocalSceneSpecification

- (NSString)uiSceneSessionRole
{
  v2 = sub_249D73134();

  return v2;
}

- (Class)uiSceneMinimumClass
{
  type metadata accessor for LocalWindowScene();

  return swift_getObjCClassFromMetadata();
}

- (NSArray)defaultExtensions
{
  v2 = self;
  v3 = sub_249D3C630();

  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF1B190);
    v4 = sub_249D73224();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_249D733B4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = sub_249D3CBE4(v8);

  sub_249D39488(v8);
  return v6;
}

- (_TtC12DrawingBoard23LocalSceneSpecification)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for LocalSceneSpecification();
  return [(LocalSceneSpecification *)&v3 init];
}

@end