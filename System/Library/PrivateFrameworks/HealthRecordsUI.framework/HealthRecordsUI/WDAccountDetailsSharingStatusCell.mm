@interface WDAccountDetailsSharingStatusCell
- (WDAccountDetailsSharingStatusCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_setupConstraints;
- (void)_setupUI;
- (void)startSpinner;
- (void)stopSpinner;
@end

@implementation WDAccountDetailsSharingStatusCell

- (WDAccountDetailsSharingStatusCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = WDAccountDetailsSharingStatusCell;
  v4 = [(WDAccountDetailsSharingStatusCell *)&v7 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(WDAccountDetailsSharingStatusCell *)v4 _setupUI];
    [(WDAccountDetailsSharingStatusCell *)v5 _setupConstraints];
    [(WDAccountDetailsSharingStatusCell *)v5 setSelectionStyle:0];
  }

  return v5;
}

- (void)_setupUI
{
  v3 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  titleLabel = self->_titleLabel;
  self->_titleLabel = v3;

  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  systemGrayColor = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UILabel *)self->_titleLabel setTextColor:systemGrayColor];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [(UILabel *)self->_titleLabel setFont:v6];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  contentView = [(WDAccountDetailsSharingStatusCell *)self contentView];
  [contentView addSubview:self->_titleLabel];

  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v8;

  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_subtitleLabel setFont:v10];

  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  contentView2 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  [contentView2 addSubview:self->_subtitleLabel];

  v12 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  statusIndicator = self->_statusIndicator;
  self->_statusIndicator = v12;

  [(UIActivityIndicatorView *)self->_statusIndicator setHidesWhenStopped:1];
  [(UIActivityIndicatorView *)self->_statusIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)self->_statusIndicator startAnimating];
  contentView3 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  [contentView3 addSubview:self->_statusIndicator];
}

- (void)_setupConstraints
{
  v53[3] = *MEMORY[0x1E69E9840];
  leadingAnchor = [(UIActivityIndicatorView *)self->_statusIndicator leadingAnchor];
  contentView = [(WDAccountDetailsSharingStatusCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v5 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v53[0] = v5;
  leadingAnchor3 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  trailingAnchor = [(UIActivityIndicatorView *)self->_statusIndicator trailingAnchor];
  v8 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:6.0];
  v53[1] = v8;
  centerYAnchor = [(UIActivityIndicatorView *)self->_statusIndicator centerYAnchor];
  centerYAnchor2 = [(UILabel *)self->_subtitleLabel centerYAnchor];
  v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v53[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:3];
  withSpinnerConstraint = self->_withSpinnerConstraint;
  self->_withSpinnerConstraint = v12;

  leadingAnchor4 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  contentView2 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  layoutMarginsGuide2 = [contentView2 layoutMarginsGuide];
  leadingAnchor5 = [layoutMarginsGuide2 leadingAnchor];
  v18 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
  v52 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
  noSpinnerConstraint = self->_noSpinnerConstraint;
  self->_noSpinnerConstraint = v19;

  v38 = MEMORY[0x1E696ACD8];
  topAnchor = [(UILabel *)self->_titleLabel topAnchor];
  contentView3 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  topAnchor2 = [contentView3 topAnchor];
  v45 = [topAnchor constraintEqualToSystemSpacingBelowAnchor:topAnchor2 multiplier:1.0];
  v51[0] = v45;
  leadingAnchor6 = [(UILabel *)self->_titleLabel leadingAnchor];
  contentView4 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  layoutMarginsGuide3 = [contentView4 layoutMarginsGuide];
  leadingAnchor7 = [layoutMarginsGuide3 leadingAnchor];
  v40 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  v51[1] = v40;
  trailingAnchor2 = [(UILabel *)self->_titleLabel trailingAnchor];
  contentView5 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  layoutMarginsGuide4 = [contentView5 layoutMarginsGuide];
  trailingAnchor3 = [layoutMarginsGuide4 trailingAnchor];
  v34 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3];
  v51[2] = v34;
  topAnchor3 = [(UILabel *)self->_subtitleLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_titleLabel bottomAnchor];
  v31 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
  v51[3] = v31;
  trailingAnchor4 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  contentView6 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  layoutMarginsGuide5 = [contentView6 layoutMarginsGuide];
  trailingAnchor5 = [layoutMarginsGuide5 trailingAnchor];
  v24 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
  v51[4] = v24;
  contentView7 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  bottomAnchor2 = [contentView7 bottomAnchor];
  bottomAnchor3 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  v28 = [bottomAnchor2 constraintEqualToSystemSpacingBelowAnchor:bottomAnchor3 multiplier:1.0];
  v51[5] = v28;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:6];
  [v38 activateConstraints:v29];

  [MEMORY[0x1E696ACD8] activateConstraints:self->_withSpinnerConstraint];
}

- (void)startSpinner
{
  objc_initWeak(&location, self->_statusIndicator);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__WDAccountDetailsSharingStatusCell_startSpinner__block_invoke;
  block[3] = &unk_1E83DDB50;
  objc_copyWeak(&v4, &location);
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

uint64_t __49__WDAccountDetailsSharingStatusCell_startSpinner__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained startAnimating];

  [MEMORY[0x1E696ACD8] deactivateConstraints:*(*(a1 + 32) + 1032)];
  v3 = MEMORY[0x1E696ACD8];
  v4 = *(*(a1 + 32) + 1024);

  return [v3 activateConstraints:v4];
}

- (void)stopSpinner
{
  objc_initWeak(&location, self->_statusIndicator);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__WDAccountDetailsSharingStatusCell_stopSpinner__block_invoke;
  block[3] = &unk_1E83DDB50;
  objc_copyWeak(&v4, &location);
  block[4] = self;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

uint64_t __48__WDAccountDetailsSharingStatusCell_stopSpinner__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained stopAnimating];

  [MEMORY[0x1E696ACD8] deactivateConstraints:*(*(a1 + 32) + 1024)];
  v3 = MEMORY[0x1E696ACD8];
  v4 = *(*(a1 + 32) + 1032);

  return [v3 activateConstraints:v4];
}

@end