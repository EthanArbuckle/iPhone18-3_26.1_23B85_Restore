@interface SettingsButton
- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration;
- (NSString)largeContentTitle;
- (UIImage)largeContentImage;
- (_TtC16MagnifierSupport14SettingsButton)initWithCoder:(id)coder;
- (_TtC16MagnifierSupport14SettingsButton)initWithFrame:(CGRect)frame;
- (void)didTapSettingsButton:(id)button;
@end

@implementation SettingsButton

- (_TtC16MagnifierSupport14SettingsButton)initWithCoder:(id)coder
{
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC16MagnifierSupport14SettingsButton_settingsDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super + OBJC_IVAR____TtC16MagnifierSupport14SettingsButton_offset) = xmmword_257EE8230;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SettingsButton();
  coderCopy = coder;
  v6 = [(SettingsButton *)&v10 initWithCoder:coderCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
    sub_257E78BD4();
  }

  return v7;
}

- (_TtC16MagnifierSupport14SettingsButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC16MagnifierSupport14SettingsButton_settingsDelegate) = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super + OBJC_IVAR____TtC16MagnifierSupport14SettingsButton_offset) = xmmword_257EE8230;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SettingsButton();
  height = [(SettingsButton *)&v10 initWithFrame:x, y, width, height];
  sub_257E78BD4();

  return height;
}

- (CGPoint)menuAttachmentPointForConfiguration:(id)configuration
{
  v12.receiver = self;
  v12.super_class = type metadata accessor for SettingsButton();
  v4 = v12.receiver;
  [(SettingsButton *)&v12 menuAttachmentPointForConfiguration:configuration];
  v6 = v5;
  v7 = *&v4[OBJC_IVAR____TtC16MagnifierSupport14SettingsButton_offset + 8];
  v9 = v8 + *&v4[OBJC_IVAR____TtC16MagnifierSupport14SettingsButton_offset];

  v10 = v6 + v7;
  v11 = v9;
  result.y = v10;
  result.x = v11;
  return result;
}

- (void)didTapSettingsButton:(id)button
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    buttonCopy = button;
    selfCopy = self;
    sub_257DF7874();
    swift_unknownObjectRelease();
  }
}

- (NSString)largeContentTitle
{
  sub_257E79238();
  if (v2)
  {
    v3 = sub_257ECF4C0();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (UIImage)largeContentImage
{
  v2 = sub_257E790EC();

  return v2;
}

@end