@interface ChannelCategoryView
- (NSString)accessibilityLabel;
@end

@implementation ChannelCategoryView

- (NSString)accessibilityLabel
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI219ChannelCategoryView_nameLabel);
  selfCopy = self;
  text = [v2 text];
  if (text)
  {
    v5 = text;
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