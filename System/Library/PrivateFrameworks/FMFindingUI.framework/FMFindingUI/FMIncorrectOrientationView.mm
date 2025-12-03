@interface FMIncorrectOrientationView
- (_TtC11FMFindingUI26FMIncorrectOrientationView)initWithCoder:(id)coder;
- (_TtC11FMFindingUI26FMIncorrectOrientationView)initWithFrame:(CGRect)frame;
@end

@implementation FMIncorrectOrientationView

- (_TtC11FMFindingUI26FMIncorrectOrientationView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_titleLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v5 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_subtitleLabel;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v6 = OBJC_IVAR____TtC11FMFindingUI26FMIncorrectOrientationView_style;
  if (qword_27EF4EA38 != -1)
  {
    swift_once();
  }

  memmove(self + v6, &xmmword_27EF5C560, 0xB8uLL);
  result = sub_24A62F444();
  __break(1u);
  return result;
}

- (_TtC11FMFindingUI26FMIncorrectOrientationView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end