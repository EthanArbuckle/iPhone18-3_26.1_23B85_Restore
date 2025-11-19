@interface IdentityProofingViewController
- (UIImageView)imageView;
- (UIView)backgroundContainerView;
- (_TtC9CoreIDVUI25IDVTrailingAccessoryLabel)titleLabel;
- (_TtC9CoreIDVUI30IdentityProofingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)configureFonts;
- (void)setBackgroundContainerView:(id)a3;
- (void)setImageView:(id)a3;
- (void)setTitleLabel:(id)a3;
- (void)textViewDidChangeSelection:(id)a3;
- (void)updateViewLayout:(id)a3 previousTraitCollection:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation IdentityProofingViewController

- (_TtC9CoreIDVUI25IDVTrailingAccessoryLabel)titleLabel
{
  v2 = self;
  v3 = sub_2458A1780();

  return v3;
}

- (void)setTitleLabel:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel) = a3;
  v3 = a3;
}

- (UIView)backgroundContainerView
{
  v2 = self;
  v3 = sub_2458A1EB0();

  return v3;
}

- (void)setBackgroundContainerView:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView) = a3;
  v3 = a3;
}

- (UIImageView)imageView
{
  v2 = self;
  v3 = sub_2458A1F80();

  return v3;
}

- (void)setImageView:(id)a3
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView) = a3;
  v3 = a3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2458A7AD0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2458A8224(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_2458A83B0();
}

- (void)updateViewLayout:(id)a3 previousTraitCollection:(id)a4
{
  v4 = self;
  sub_2458A3560();
}

- (void)configureFonts
{
  v2 = self;
  sub_2458A3560();
}

- (_TtC9CoreIDVUI30IdentityProofingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)textViewDidChangeSelection:(id)a3
{
  v7 = a3;
  v3 = [v7 selectedTextRange];
  if (v3)
  {
    v4 = v3;
    if (([v3 isEmpty] & 1) == 0)
    {
      v5 = [v7 selectedRange];
      if (__OFADD__(v5, v6))
      {
        __break(1u);
        return;
      }

      [v7 setSelectedRange_];
    }
  }
}

@end