@interface LensFilteringViewController
- (_TtC16MagnifierSupport27LensFilteringViewController)initWithCoder:(id)a3;
- (_TtC16MagnifierSupport27LensFilteringViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation LensFilteringViewController

- (_TtC16MagnifierSupport27LensFilteringViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_257ECF500();
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_brightness) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_contrast) = 0x3FF0000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_colorFilter) = 12;
  v8 = a4;
  if (v7)
  {
    v9 = sub_257ECF4C0();
  }

  else
  {
    v9 = 0;
  }

  v12.receiver = self;
  v12.super_class = type metadata accessor for LensFilteringViewController();
  v10 = [(LensFilteringViewController *)&v12 initWithNibName:v9 bundle:a4];

  return v10;
}

- (_TtC16MagnifierSupport27LensFilteringViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_brightness) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_contrast) = 0x3FF0000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_colorFilter) = 12;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LensFilteringViewController();
  v4 = a3;
  v5 = [(LensFilteringViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end