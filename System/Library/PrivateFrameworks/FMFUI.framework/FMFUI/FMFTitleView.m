@interface FMFTitleView
- (id)initFromNib;
- (void)_updateLabels:(id)a3;
- (void)updateLocation:(id)a3;
@end

@implementation FMFTitleView

- (id)initFromNib
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 loadNibNamed:@"TitleView_iOS" owner:self options:0];

  v5 = [v4 lastObject];

  return v5;
}

- (void)updateLocation:(id)a3
{
  v4 = a3;
  [(FMFTitleView *)self setLocation:v4];
  [(FMFTitleView *)self _updateLabels:v4];
}

- (void)_updateLabels:(id)a3
{
  v4 = a3;
  v5 = [v4 locationShortAddressWithAge];
  v6 = [(FMFTitleView *)self subtitleLabel];
  [v6 setText:v5];

  v7 = [v4 location];

  v8 = [(FMFTitleView *)self titleBottomConstraint];
  v9 = v8;
  v10 = 16.0;
  if (!v7)
  {
    v10 = 2.0;
  }

  [v8 setConstant:v10];

  v11 = [v4 handle];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __30__FMFTitleView__updateLabels___block_invoke;
  v12[3] = &unk_278FE2930;
  v12[4] = self;
  [v11 prettyNameWithCompletion:v12];
}

void __30__FMFTitleView__updateLabels___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 titleLabel];
  [v4 setText:v3];
}

@end