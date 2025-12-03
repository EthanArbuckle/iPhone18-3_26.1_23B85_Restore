@interface LensFilteringViewController
- (_TtC16MagnifierSupport27LensFilteringViewController)initWithCoder:(id)coder;
- (_TtC16MagnifierSupport27LensFilteringViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation LensFilteringViewController

- (_TtC16MagnifierSupport27LensFilteringViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
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
  bundleCopy = bundle;
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
  v10 = [(LensFilteringViewController *)&v12 initWithNibName:v9 bundle:bundle];

  return v10;
}

- (_TtC16MagnifierSupport27LensFilteringViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_brightness) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_contrast) = 0x3FF0000000000000;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport27LensFilteringViewController_colorFilter) = 12;
  v7.receiver = self;
  v7.super_class = type metadata accessor for LensFilteringViewController();
  coderCopy = coder;
  v5 = [(LensFilteringViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end