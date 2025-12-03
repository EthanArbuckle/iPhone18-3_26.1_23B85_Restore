@interface TitleWithSubHeadingView
- (_TtC18HealthExperienceUI23TitleWithSubHeadingView)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI23TitleWithSubHeadingView)initWithFrame:(CGRect)frame;
@end

@implementation TitleWithSubHeadingView

- (_TtC18HealthExperienceUI23TitleWithSubHeadingView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v9 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v12.receiver = self;
  v12.super_class = type metadata accessor for TitleWithSubHeadingView();
  height = [(TitleWithSubHeadingView *)&v12 initWithFrame:x, y, width, height];
  sub_1BA31B1C4();

  return height;
}

- (_TtC18HealthExperienceUI23TitleWithSubHeadingView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v5 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

@end