@interface TitleWithSubHeadingView
- (_TtC18HealthExperienceUI23TitleWithSubHeadingView)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI23TitleWithSubHeadingView)initWithFrame:(CGRect)a3;
@end

@implementation TitleWithSubHeadingView

- (_TtC18HealthExperienceUI23TitleWithSubHeadingView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_headingLabel;
  *(&self->super.super.super.isa + v8) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v9 = OBJC_IVAR____TtC18HealthExperienceUI23TitleWithSubHeadingView_subHeadingLabel;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
  v12.receiver = self;
  v12.super_class = type metadata accessor for TitleWithSubHeadingView();
  v10 = [(TitleWithSubHeadingView *)&v12 initWithFrame:x, y, width, height];
  sub_1BA31B1C4();

  return v10;
}

- (_TtC18HealthExperienceUI23TitleWithSubHeadingView)initWithCoder:(id)a3
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