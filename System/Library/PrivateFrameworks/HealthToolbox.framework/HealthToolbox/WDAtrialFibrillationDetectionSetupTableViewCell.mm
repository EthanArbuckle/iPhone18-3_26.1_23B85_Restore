@interface WDAtrialFibrillationDetectionSetupTableViewCell
+ (id)defaultReuseIdentifier;
- (WDAtrialFibrillationDetectionSetupTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setUpConstraints;
@end

@implementation WDAtrialFibrillationDetectionSetupTableViewCell

- (WDAtrialFibrillationDetectionSetupTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v12.receiver = self;
  v12.super_class = WDAtrialFibrillationDetectionSetupTableViewCell;
  v4 = [(WDAtrialFibrillationDetectionSetupTableViewCell *)&v12 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WDAtrialFibrillationDetectionSetupTableViewCell *)v4 setSelectionStyle:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(WDAtrialFibrillationDetectionSetupTableViewCell *)v5 setBackgroundColor:clearColor];

    v7 = [WDAtrialFibrillationDetectionSetupView alloc];
    v8 = [(HKOnboardingSetupView *)v7 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
    setupView = v5->_setupView;
    v5->_setupView = v8;

    [(WDAtrialFibrillationDetectionSetupView *)v5->_setupView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(WDAtrialFibrillationDetectionSetupTableViewCell *)v5 contentView];
    [contentView addSubview:v5->_setupView];

    [(WDAtrialFibrillationDetectionSetupTableViewCell *)v5 _setUpConstraints];
  }

  return v5;
}

- (void)_setUpConstraints
{
  setupView = [(WDAtrialFibrillationDetectionSetupTableViewCell *)self setupView];
  contentView = [(WDAtrialFibrillationDetectionSetupTableViewCell *)self contentView];
  [setupView hk_alignConstraintsWithView:contentView];
}

+ (id)defaultReuseIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

@end