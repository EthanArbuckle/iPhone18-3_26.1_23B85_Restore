@interface CKSceneManager
+ (_TtC7ChatKit14CKSceneManager)shared;
- (NSString)debugDescription;
- (_TtC7ChatKit14CKSceneManager)init;
- (id)getDelegateFor:(id)a3;
- (id)getScenes;
- (void)addScene:(id)a3 withDelegate:(id)a4;
- (void)removeScene:(id)a3;
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
  v3 = self;
  v4 = sub_190D52690();
  sub_190C231BC(v4);

  sub_190C83C5C();
  v5 = sub_190D57160();

  return v5;
}

- (void)addScene:(id)a3 withDelegate:(id)a4
{
  swift_beginAccess();
  swift_unknownObjectRetain_n();
  v7 = a3;
  v8 = self;
  sub_190C81B08(a4, v7);
  swift_endAccess();

  swift_unknownObjectRelease();
}

- (void)removeScene:(id)a3
{
  swift_beginAccess();
  v5 = a3;
  v6 = self;
  sub_190C81934(v5);
  swift_endAccess();

  swift_unknownObjectRelease();
}

- (id)getDelegateFor:(id)a3
{
  v5 = OBJC_IVAR____TtC7ChatKit14CKSceneManager_sceneToDelegateMap;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  v7 = a3;
  v8 = self;
  sub_190D52690();
  v9 = sub_190C80CDC(v7, v6);

  return v9;
}

- (NSString)debugDescription
{
  v2 = self;
  sub_190C81460();

  v3 = sub_190D56ED0();

  return v3;
}

@end