@interface HostedSensitiveContentButton
- (_TtC7ChatKit28HostedSensitiveContentButton)initWithFrame:(CGRect)frame;
@end

@implementation HostedSensitiveContentButton

- (_TtC7ChatKit28HostedSensitiveContentButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_didShowContentHandler);
  *v7 = 0;
  v7[1] = 0;
  v8 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_didAskForMoreHelp);
  *v8 = 0;
  v8[1] = 0;
  v9 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_didBlockHandler);
  *v9 = 0;
  v9[1] = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC7ChatKit28HostedSensitiveContentButton_style) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for HostedSensitiveContentButton();
  height = [(HostedSensitiveContentButton *)&v12 initWithFrame:x, y, width, height];
  sub_190B51D54();

  return height;
}

@end