@interface SuggestionButton
- (_TtC16CommunicationsUIP33_0760F9DCEC738C2866B658D7E36A5B5616SuggestionButton)initWithCoder:(id)a3;
- (_TtC16CommunicationsUIP33_0760F9DCEC738C2866B658D7E36A5B5616SuggestionButton)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation SuggestionButton

- (void)layoutSubviews
{
  v2 = self;
  sub_1C2D2B314();
}

- (_TtC16CommunicationsUIP33_0760F9DCEC738C2866B658D7E36A5B5616SuggestionButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_0760F9DCEC738C2866B658D7E36A5B5616SuggestionButton_effectView) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(SuggestionButton *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC16CommunicationsUIP33_0760F9DCEC738C2866B658D7E36A5B5616SuggestionButton)initWithCoder:(id)a3
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_0760F9DCEC738C2866B658D7E36A5B5616SuggestionButton_effectView) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  v6 = a3;
  v7 = [(SuggestionButton *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end