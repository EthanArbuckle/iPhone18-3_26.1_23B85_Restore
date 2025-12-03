@interface SuggestionButton
- (_TtC16CommunicationsUIP33_0760F9DCEC738C2866B658D7E36A5B5616SuggestionButton)initWithCoder:(id)coder;
- (_TtC16CommunicationsUIP33_0760F9DCEC738C2866B658D7E36A5B5616SuggestionButton)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation SuggestionButton

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1C2D2B314();
}

- (_TtC16CommunicationsUIP33_0760F9DCEC738C2866B658D7E36A5B5616SuggestionButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_0760F9DCEC738C2866B658D7E36A5B5616SuggestionButton_effectView) = 0;
  v10.receiver = self;
  v10.super_class = ObjectType;
  return [(SuggestionButton *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC16CommunicationsUIP33_0760F9DCEC738C2866B658D7E36A5B5616SuggestionButton)initWithCoder:(id)coder
{
  ObjectType = swift_getObjectType();
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_0760F9DCEC738C2866B658D7E36A5B5616SuggestionButton_effectView) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  coderCopy = coder;
  v7 = [(SuggestionButton *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end