@interface BrowsingAssistant.ReaderCardCell
- (void)updateTheme;
- (void)updateTitleLabel;
@end

@implementation BrowsingAssistant.ReaderCardCell

- (void)updateTheme
{
  v2 = self;
  sub_18B9F3F24();
}

- (void)updateTitleLabel
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_titleLabel);
  v6 = self;
  v3 = [(BrowsingAssistant.ReaderCardCell *)v6 traitCollection];
  v4 = [v3 preferredContentSizeCategory];

  LOBYTE(v3) = sub_18BC21438();
  if (v3)
  {
    v5 = 4;
  }

  else
  {
    v5 = 2;
  }

  [v2 setNumberOfLines_];
}

@end