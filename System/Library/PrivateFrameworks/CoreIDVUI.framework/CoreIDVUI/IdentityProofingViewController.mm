@interface IdentityProofingViewController
- (UIImageView)imageView;
- (UIView)backgroundContainerView;
- (_TtC9CoreIDVUI25IDVTrailingAccessoryLabel)titleLabel;
- (_TtC9CoreIDVUI30IdentityProofingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)configureFonts;
- (void)setBackgroundContainerView:(id)view;
- (void)setImageView:(id)view;
- (void)setTitleLabel:(id)label;
- (void)textViewDidChangeSelection:(id)selection;
- (void)updateViewLayout:(id)layout previousTraitCollection:(id)collection;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation IdentityProofingViewController

- (_TtC9CoreIDVUI25IDVTrailingAccessoryLabel)titleLabel
{
  selfCopy = self;
  v3 = sub_2458A1780();

  return v3;
}

- (void)setTitleLabel:(id)label
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___titleLabel) = label;
  labelCopy = label;
}

- (UIView)backgroundContainerView
{
  selfCopy = self;
  v3 = sub_2458A1EB0();

  return v3;
}

- (void)setBackgroundContainerView:(id)view
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___backgroundContainerView) = view;
  viewCopy = view;
}

- (UIImageView)imageView
{
  selfCopy = self;
  v3 = sub_2458A1F80();

  return v3;
}

- (void)setImageView:(id)view
{
  v4 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC9CoreIDVUI30IdentityProofingViewController____lazy_storage___imageView) = view;
  viewCopy = view;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2458A7AD0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2458A8224(appear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_2458A83B0();
}

- (void)updateViewLayout:(id)layout previousTraitCollection:(id)collection
{
  selfCopy = self;
  sub_2458A3560();
}

- (void)configureFonts
{
  selfCopy = self;
  sub_2458A3560();
}

- (_TtC9CoreIDVUI30IdentityProofingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)textViewDidChangeSelection:(id)selection
{
  selectionCopy = selection;
  selectedTextRange = [selectionCopy selectedTextRange];
  if (selectedTextRange)
  {
    v4 = selectedTextRange;
    if (([selectedTextRange isEmpty] & 1) == 0)
    {
      selectedRange = [selectionCopy selectedRange];
      if (__OFADD__(selectedRange, v6))
      {
        __break(1u);
        return;
      }

      [selectionCopy setSelectedRange_];
    }
  }
}

@end