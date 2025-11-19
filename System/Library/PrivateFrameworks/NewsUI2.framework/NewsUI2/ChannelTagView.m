@interface ChannelTagView
- (BOOL)accessibilityActivate;
- (NSString)accessibilityLabel;
@end

@implementation ChannelTagView

- (BOOL)accessibilityActivate
{
  v2 = self;
  sub_21927E1CC();

  return 1;
}

- (NSString)accessibilityLabel
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI214ChannelTagView_nameLabel);
  v3 = self;
  v4 = [v2 text];
  if (v4)
  {
    v5 = v4;
    sub_219BF5414();

    v6 = sub_219BF53D4();
  }

  else
  {

    v6 = 0;
  }

  return v6;
}

@end