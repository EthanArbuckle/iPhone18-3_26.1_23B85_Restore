@interface RecipeBoxDataManager
- (_TtC7NewsUI220RecipeBoxDataManager)init;
- (void)dealloc;
@end

@implementation RecipeBoxDataManager

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  sub_218718690(self + OBJC_IVAR____TtC7NewsUI220RecipeBoxDataManager_recipeBox, v7);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_21871474C(&qword_27CC16CF8, v4, type metadata accessor for RecipeBoxDataManager);
  selfCopy = self;
  sub_219BED2B4();

  __swift_destroy_boxed_opaque_existential_1(v7);
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(RecipeBoxDataManager *)&v6 dealloc];
}

- (_TtC7NewsUI220RecipeBoxDataManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end