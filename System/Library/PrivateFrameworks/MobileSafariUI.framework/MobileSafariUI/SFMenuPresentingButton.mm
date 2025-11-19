@interface SFMenuPresentingButton
- (_TtC14MobileSafariUI22SFMenuPresentingButton)initWithCoder:(id)a3;
- (_TtC14MobileSafariUI22SFMenuPresentingButton)initWithFrame:(CGRect)a3;
@end

@implementation SFMenuPresentingButton

- (_TtC14MobileSafariUI22SFMenuPresentingButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (_TtC14MobileSafariUI22SFMenuPresentingButton)initWithCoder:(id)a3
{
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI22SFMenuPresentingButton_menuWillDisplayHandler);
  *v4 = CGSizeMake;
  v4[1] = 0;
  v5 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC14MobileSafariUI22SFMenuPresentingButton_menuWillEndHandler);
  *v5 = CGSizeMake;
  v5[1] = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SFMenuPresentingButton();
  v6 = a3;
  v7 = [(SFMenuPresentingButton *)&v9 initWithCoder:v6];

  if (v7)
  {
  }

  return v7;
}

@end