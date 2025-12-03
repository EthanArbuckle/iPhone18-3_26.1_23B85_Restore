@interface CKSceneManager
+ (_TtC7ChatKit14CKSceneManager)shared;
- (NSString)debugDescription;
- (_TtC7ChatKit14CKSceneManager)init;
- (id)getDelegateFor:(id)for;
- (id)getScenes;
- (void)addScene:(id)scene withDelegate:(id)delegate;
- (void)removeScene:(id)scene;
@end

@implementation CKSceneManager

+ (_TtC7ChatKit14CKSceneManager)shared
{
  if (qword_1EAD51FE8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAD619C0;

  return v3;
}

- (_TtC7ChatKit14CKSceneManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7ChatKit14CKSceneManager_sceneToDelegateMap) = MEMORY[0x1E69E7CC8];
  v3.receiver = self;
  v3.super_class = type metadata accessor for CKSceneManager();
  return [(CKSceneManager *)&v3 init];
}

- (id)getScenes
{
  swift_beginAccess();
  selfCopy = self;
  v4 = sub_190D52690();
  sub_190C231BC(v4);

  sub_190C83C5C();
  v5 = sub_190D57160();

  return v5;
}

- (void)addScene:(id)scene withDelegate:(id)delegate
{
  swift_beginAccess();
  swift_unknownObjectRetain_n();
  sceneCopy = scene;
  selfCopy = self;
  sub_190C81B08(delegate, sceneCopy);
  swift_endAccess();

  swift_unknownObjectRelease();
}

- (void)removeScene:(id)scene
{
  swift_beginAccess();
  sceneCopy = scene;
  selfCopy = self;
  sub_190C81934(sceneCopy);
  swift_endAccess();

  swift_unknownObjectRelease();
}

- (id)getDelegateFor:(id)for
{
  v5 = OBJC_IVAR____TtC7ChatKit14CKSceneManager_sceneToDelegateMap;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  forCopy = for;
  selfCopy = self;
  sub_190D52690();
  v9 = sub_190C80CDC(forCopy, v6);

  return v9;
}

- (NSString)debugDescription
{
  selfCopy = self;
  sub_190C81460();

  v3 = sub_190D56ED0();

  return v3;
}

@end