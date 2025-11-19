@interface HKElectrocardiogramTableViewCell
+ (id)defaultReuseIdentifier;
- (HKElectrocardiogram)sample;
- (HKElectrocardiogramTableViewCell)initWithSample:(id)a3 dateCache:(id)a4 onboarding:(BOOL)a5 activeAlgorithmVersion:(int64_t)a6;
- (void)_setupConstraints;
- (void)_setupUIWithSample:(id)a3 dateCache:(id)a4 onboarding:(BOOL)a5 activeAlgorithmVersion:(int64_t)a6;
- (void)prepareForReuse;
- (void)setActiveAlgorithmVersion:(int64_t)a3;
- (void)setBottomPaddingDisabled:(BOOL)a3;
- (void)setSample:(id)a3;
@end

@implementation HKElectrocardiogramTableViewCell

- (HKElectrocardiogramTableViewCell)initWithSample:(id)a3 dateCache:(id)a4 onboarding:(BOOL)a5 activeAlgorithmVersion:(int64_t)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = [objc_opt_class() defaultReuseIdentifier];
  v15.receiver = self;
  v15.super_class = HKElectrocardiogramTableViewCell;
  v13 = [(HKElectrocardiogramTableViewCell *)&v15 initWithStyle:0 reuseIdentifier:v12];

  if (v13)
  {
    [(HKElectrocardiogramTableViewCell *)v13 _setupUIWithSample:v10 dateCache:v11 onboarding:v7 activeAlgorithmVersion:a6];
    [(HKElectrocardiogramTableViewCell *)v13 _setupConstraints];
  }

  return v13;
}

- (void)setActiveAlgorithmVersion:(int64_t)a3
{
  v4 = [(HKElectrocardiogramTableViewCell *)self cardView];
  [v4 setActiveAlgorithmVersion:a3];
}

- (void)setSample:(id)a3
{
  v4 = a3;
  v5 = [(HKElectrocardiogramTableViewCell *)self cardView];
  [v5 setSample:v4];
}

- (HKElectrocardiogram)sample
{
  v2 = [(HKElectrocardiogramTableViewCell *)self cardView];
  v3 = [v2 sample];

  return v3;
}

- (void)setBottomPaddingDisabled:(BOOL)a3
{
  self->_bottomPaddingDisabled = a3;
  if (a3)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 16.0;
  }

  v4 = [(HKElectrocardiogramTableViewCell *)self bottomPaddingConstraint];
  [v4 setConstant:v3];
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
  v3 = [(HKElectrocardiogramTableViewCell *)self cardView];
  [v3 setSample:0];
}

- (void)_setupUIWithSample:(id)a3 dateCache:(id)a4 onboarding:(BOOL)a5 activeAlgorithmVersion:(int64_t)a6
{
  v7 = a5;
  v10 = MEMORY[0x1E69DC888];
  v11 = a4;
  v12 = a3;
  v13 = [v10 clearColor];
  [(HKElectrocardiogramTableViewCell *)self setBackgroundColor:v13];

  v14 = [[HKElectrocardiogramCardView alloc] initWithSample:v12 dateCache:v11 onboarding:v7 activeAlgorithmVersion:a6 isSampleInteractive:1];
  [(HKElectrocardiogramTableViewCell *)self setCardView:v14];

  v15 = [(HKElectrocardiogramTableViewCell *)self cardView];
  [v15 setTranslatesAutoresizingMaskIntoConstraints:0];

  v16 = [(HKElectrocardiogramTableViewCell *)self contentView];
  v17 = [(HKElectrocardiogramTableViewCell *)self cardView];
  [v16 addSubview:v17];

  [(HKElectrocardiogramTableViewCell *)self setSelectionStyle:0];
}

- (void)_setupConstraints
{
  v3 = [(HKElectrocardiogramTableViewCell *)self cardView];
  v4 = [(HKElectrocardiogramTableViewCell *)self contentView];
  [v3 hk_alignHorizontalConstraintsWithView:v4 margin:0.0];

  v5 = [(HKElectrocardiogramTableViewCell *)self cardView];
  v6 = [v5 topAnchor];
  v7 = [(HKElectrocardiogramTableViewCell *)self contentView];
  v8 = [v7 topAnchor];
  v9 = [v6 constraintEqualToAnchor:v8];
  [v9 setActive:1];

  v10 = [(HKElectrocardiogramTableViewCell *)self contentView];
  v11 = [v10 bottomAnchor];
  v12 = [(HKElectrocardiogramTableViewCell *)self cardView];
  v13 = [v12 bottomAnchor];
  v14 = [v11 constraintEqualToAnchor:v13 constant:16.0];
  [(HKElectrocardiogramTableViewCell *)self setBottomPaddingConstraint:v14];

  v15 = [(HKElectrocardiogramTableViewCell *)self bottomPaddingConstraint];
  [v15 setActive:1];
}

@end