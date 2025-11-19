@interface TabThumbnailView.PinnedTitleView
- (void)contentSizeCategoryDidChange;
- (void)layoutSubviews;
@end

@implementation TabThumbnailView.PinnedTitleView

- (void)contentSizeCategoryDidChange
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari16TabThumbnailView15PinnedTitleView_titleLabel);
  v7 = self;
  v3 = [(TabThumbnailView.PinnedTitleView *)v7 traitCollection];
  v4 = [v3 preferredContentSizeCategory];
  v5 = sub_18BC21438();

  if (v5)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  [v2 setNumberOfLines_];
}

- (void)layoutSubviews
{
  v2 = self;
  sub_18BAB782C();
}

@end