@interface DynamicFontLabel
- (_TtC18HealthExperienceUI16DynamicFontLabel)initWithCoder:(id)a3;
@end

@implementation DynamicFontLabel

- (_TtC18HealthExperienceUI16DynamicFontLabel)initWithCoder:(id)a3
{
  v4 = *MEMORY[0x1E69DDDC8];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI16DynamicFontLabel_textStyle) = *MEMORY[0x1E69DDDC8];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI16DynamicFontLabel_symbolicTraits) = 2;
  v9.receiver = self;
  v9.super_class = type metadata accessor for DynamicFontLabel();
  v5 = a3;
  v6 = v4;
  v7 = [(DynamicFontLabel *)&v9 initWithCoder:v5];

  if (v7)
  {
  }

  return v7;
}

@end