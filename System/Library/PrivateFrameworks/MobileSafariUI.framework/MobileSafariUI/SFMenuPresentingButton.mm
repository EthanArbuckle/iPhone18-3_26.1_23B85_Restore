@interface SFMenuPresentingButton
- (_TtC14MobileSafariUI22SFMenuPresentingButton)initWithCoder:(id)coder;
- (_TtC14MobileSafariUI22SFMenuPresentingButton)initWithFrame:(CGRect)frame;
@end

@implementation SFMenuPresentingButton

- (_TtC14MobileSafariUI22SFMenuPresentingButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI22SFMenuPresentingButton_menuWillDisplayHandler);
  *v7 = CGSizeMake;
  v7[1] = 0;
  v8 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI22SFMenuPresentingButton_menuWillEndHandler);
  *v8 = CGSizeMake;
  v8[1] = 0;
  v10.receiver = self;
  v10.super_class = type metadata accessor for SFMenuPresentingButton();
  return [(SFMenuPresentingButton *)&v10 initWithFrame:x, y, width, height];
}

- (_TtC14MobileSafariUI22SFMenuPresentingButton)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI22SFMenuPresentingButton_menuWillDisplayHandler);
  *v4 = CGSizeMake;
  v4[1] = 0;
  v5 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI22SFMenuPresentingButton_menuWillEndHandler);
  *v5 = CGSizeMake;
  v5[1] = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SFMenuPresentingButton();
  coderCopy = coder;
  v7 = [(SFMenuPresentingButton *)&v9 initWithCoder:coderCopy];

  if (v7)
  {
  }

  return v7;
}

@end