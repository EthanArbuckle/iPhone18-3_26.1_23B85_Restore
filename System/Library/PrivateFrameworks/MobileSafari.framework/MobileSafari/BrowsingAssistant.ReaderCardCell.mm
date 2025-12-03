@interface BrowsingAssistant.ReaderCardCell
- (void)updateTheme;
- (void)updateTitleLabel;
@end

@implementation BrowsingAssistant.ReaderCardCell

- (void)updateTheme
{
  selfCopy = self;
  sub_18B9F3F24();
}

- (void)updateTitleLabel
{
  v2 = *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtCC12MobileSafari17BrowsingAssistant14ReaderCardCell_titleLabel);
  selfCopy = self;
  traitCollection = [(BrowsingAssistant.ReaderCardCell *)selfCopy traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  LOBYTE(traitCollection) = sub_18BC21438();
  if (traitCollection)
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