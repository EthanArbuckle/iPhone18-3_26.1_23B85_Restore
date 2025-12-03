@interface FMFTitleView
- (id)initFromNib;
- (void)_updateLabels:(id)labels;
- (void)updateLocation:(id)location;
@end

@implementation FMFTitleView

- (id)initFromNib
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 loadNibNamed:@"TitleView_iOS" owner:self options:0];

  lastObject = [v4 lastObject];

  return lastObject;
}

- (void)updateLocation:(id)location
{
  locationCopy = location;
  [(FMFTitleView *)self setLocation:locationCopy];
  [(FMFTitleView *)self _updateLabels:locationCopy];
}

- (void)_updateLabels:(id)labels
{
  labelsCopy = labels;
  locationShortAddressWithAge = [labelsCopy locationShortAddressWithAge];
  subtitleLabel = [(FMFTitleView *)self subtitleLabel];
  [subtitleLabel setText:locationShortAddressWithAge];

  location = [labelsCopy location];

  titleBottomConstraint = [(FMFTitleView *)self titleBottomConstraint];
  v9 = titleBottomConstraint;
  v10 = 16.0;
  if (!location)
  {
    v10 = 2.0;
  }

  [titleBottomConstraint setConstant:v10];

  handle = [labelsCopy handle];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __30__FMFTitleView__updateLabels___block_invoke;
  v12[3] = &unk_278FE2930;
  v12[4] = self;
  [handle prettyNameWithCompletion:v12];
}

void __30__FMFTitleView__updateLabels___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 titleLabel];
  [v4 setText:v3];
}

@end