@interface HKElectrocardiogramTableViewCell
+ (id)defaultReuseIdentifier;
- (HKElectrocardiogram)sample;
- (HKElectrocardiogramTableViewCell)initWithSample:(id)sample dateCache:(id)cache onboarding:(BOOL)onboarding activeAlgorithmVersion:(int64_t)version;
- (void)_setupConstraints;
- (void)_setupUIWithSample:(id)sample dateCache:(id)cache onboarding:(BOOL)onboarding activeAlgorithmVersion:(int64_t)version;
- (void)prepareForReuse;
- (void)setActiveAlgorithmVersion:(int64_t)version;
- (void)setBottomPaddingDisabled:(BOOL)disabled;
- (void)setSample:(id)sample;
@end

@implementation HKElectrocardiogramTableViewCell

- (HKElectrocardiogramTableViewCell)initWithSample:(id)sample dateCache:(id)cache onboarding:(BOOL)onboarding activeAlgorithmVersion:(int64_t)version
{
  onboardingCopy = onboarding;
  sampleCopy = sample;
  cacheCopy = cache;
  defaultReuseIdentifier = [objc_opt_class() defaultReuseIdentifier];
  v15.receiver = self;
  v15.super_class = HKElectrocardiogramTableViewCell;
  v13 = [(HKElectrocardiogramTableViewCell *)&v15 initWithStyle:0 reuseIdentifier:defaultReuseIdentifier];

  if (v13)
  {
    [(HKElectrocardiogramTableViewCell *)v13 _setupUIWithSample:sampleCopy dateCache:cacheCopy onboarding:onboardingCopy activeAlgorithmVersion:version];
    [(HKElectrocardiogramTableViewCell *)v13 _setupConstraints];
  }

  return v13;
}

- (void)setActiveAlgorithmVersion:(int64_t)version
{
  cardView = [(HKElectrocardiogramTableViewCell *)self cardView];
  [cardView setActiveAlgorithmVersion:version];
}

- (void)setSample:(id)sample
{
  sampleCopy = sample;
  cardView = [(HKElectrocardiogramTableViewCell *)self cardView];
  [cardView setSample:sampleCopy];
}

- (HKElectrocardiogram)sample
{
  cardView = [(HKElectrocardiogramTableViewCell *)self cardView];
  sample = [cardView sample];

  return sample;
}

- (void)setBottomPaddingDisabled:(BOOL)disabled
{
  self->_bottomPaddingDisabled = disabled;
  if (disabled)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 16.0;
  }

  bottomPaddingConstraint = [(HKElectrocardiogramTableViewCell *)self bottomPaddingConstraint];
  [bottomPaddingConstraint setConstant:v3];
}

+ (id)defaultReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (void)prepareForReuse
{
  v4.receiver = self;
  v4.super_class = HKElectrocardiogramTableViewCell;
  [(HKElectrocardiogramTableViewCell *)&v4 prepareForReuse];
  cardView = [(HKElectrocardiogramTableViewCell *)self cardView];
  [cardView setSample:0];
}

- (void)_setupUIWithSample:(id)sample dateCache:(id)cache onboarding:(BOOL)onboarding activeAlgorithmVersion:(int64_t)version
{
  onboardingCopy = onboarding;
  v10 = MEMORY[0x1E69DC888];
  cacheCopy = cache;
  sampleCopy = sample;
  clearColor = [v10 clearColor];
  [(HKElectrocardiogramTableViewCell *)self setBackgroundColor:clearColor];

  v14 = [[HKElectrocardiogramCardView alloc] initWithSample:sampleCopy dateCache:cacheCopy onboarding:onboardingCopy activeAlgorithmVersion:version isSampleInteractive:1];
  [(HKElectrocardiogramTableViewCell *)self setCardView:v14];

  cardView = [(HKElectrocardiogramTableViewCell *)self cardView];
  [cardView setTranslatesAutoresizingMaskIntoConstraints:0];

  contentView = [(HKElectrocardiogramTableViewCell *)self contentView];
  cardView2 = [(HKElectrocardiogramTableViewCell *)self cardView];
  [contentView addSubview:cardView2];

  [(HKElectrocardiogramTableViewCell *)self setSelectionStyle:0];
}

- (void)_setupConstraints
{
  cardView = [(HKElectrocardiogramTableViewCell *)self cardView];
  contentView = [(HKElectrocardiogramTableViewCell *)self contentView];
  [cardView hk_alignHorizontalConstraintsWithView:contentView margin:0.0];

  cardView2 = [(HKElectrocardiogramTableViewCell *)self cardView];
  topAnchor = [cardView2 topAnchor];
  contentView2 = [(HKElectrocardiogramTableViewCell *)self contentView];
  topAnchor2 = [contentView2 topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v9 setActive:1];

  contentView3 = [(HKElectrocardiogramTableViewCell *)self contentView];
  bottomAnchor = [contentView3 bottomAnchor];
  cardView3 = [(HKElectrocardiogramTableViewCell *)self cardView];
  bottomAnchor2 = [cardView3 bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:16.0];
  [(HKElectrocardiogramTableViewCell *)self setBottomPaddingConstraint:v14];

  bottomPaddingConstraint = [(HKElectrocardiogramTableViewCell *)self bottomPaddingConstraint];
  [bottomPaddingConstraint setActive:1];
}

@end