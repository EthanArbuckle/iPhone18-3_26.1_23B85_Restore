@interface TickMarksVisibilityModel
- (BOOL)shouldHideTickMarkAtIndex:(unint64_t)a3;
- (_TtC13CameraEditKit24TickMarksVisibilityModel)init;
- (_TtC13CameraEditKit24TickMarksVisibilityModel)initWithModel:(id)a3;
@end

@implementation TickMarksVisibilityModel

- (_TtC13CameraEditKit24TickMarksVisibilityModel)initWithModel:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC13CameraEditKit24TickMarksVisibilityModel_overlappingSections) = MEMORY[0x1E69E7CD0];
  v6 = OBJC_IVAR____TtC13CameraEditKit24TickMarksVisibilityModel_visibleSectionIndices;
  *(&self->super.isa + v6) = sub_1B7ED34D4(MEMORY[0x1E69E7CC0]);
  *(&self->super.isa + OBJC_IVAR____TtC13CameraEditKit24TickMarksVisibilityModel_needsRebuild) = 1;
  *(&self->super.isa + OBJC_IVAR____TtC13CameraEditKit24TickMarksVisibilityModel_model) = a3;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v7 = a3;
  return [(TickMarksVisibilityModel *)&v9 init];
}

- (BOOL)shouldHideTickMarkAtIndex:(unint64_t)a3
{
  v4 = self;
  LOBYTE(a3) = sub_1B7ED1158(a3);

  return a3 & 1;
}

- (_TtC13CameraEditKit24TickMarksVisibilityModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end