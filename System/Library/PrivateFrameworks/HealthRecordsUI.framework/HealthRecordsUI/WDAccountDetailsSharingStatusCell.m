@interface WDAccountDetailsSharingStatusCell
- (WDAccountDetailsSharingStatusCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_setupConstraints;
- (void)_setupUI;
- (void)startSpinner;
- (void)stopSpinner;
@end

@implementation WDAccountDetailsSharingStatusCell

- (WDAccountDetailsSharingStatusCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = WDAccountDetailsSharingStatusCell;
  v4 = [(WDAccountDetailsSharingStatusCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
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
  v5 = [MEMORY[0x1E69DC888] systemGrayColor];
  [(UILabel *)self->_titleLabel setTextColor:v5];

  v6 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDD80]];
  [(UILabel *)self->_titleLabel setFont:v6];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  v7 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  [v7 addSubview:self->_titleLabel];

  v8 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  subtitleLabel = self->_subtitleLabel;
  self->_subtitleLabel = v8;

  [(UILabel *)self->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_subtitleLabel setFont:v10];

  [(UILabel *)self->_subtitleLabel setNumberOfLines:0];
  v11 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  [v11 addSubview:self->_subtitleLabel];

  v12 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
  statusIndicator = self->_statusIndicator;
  self->_statusIndicator = v12;

  [(UIActivityIndicatorView *)self->_statusIndicator setHidesWhenStopped:1];
  [(UIActivityIndicatorView *)self->_statusIndicator setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)self->_statusIndicator startAnimating];
  v14 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  [v14 addSubview:self->_statusIndicator];
}

- (void)_setupConstraints
{
  v53[3] = *MEMORY[0x1E69E9840];
  v47 = [(UIActivityIndicatorView *)self->_statusIndicator leadingAnchor];
  v49 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  v3 = [v49 layoutMarginsGuide];
  v4 = [v3 leadingAnchor];
  v5 = [v47 constraintEqualToAnchor:v4];
  v53[0] = v5;
  v6 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  v7 = [(UIActivityIndicatorView *)self->_statusIndicator trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7 constant:6.0];
  v53[1] = v8;
  v9 = [(UIActivityIndicatorView *)self->_statusIndicator centerYAnchor];
  v10 = [(UILabel *)self->_subtitleLabel centerYAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v53[2] = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:3];
  withSpinnerConstraint = self->_withSpinnerConstraint;
  self->_withSpinnerConstraint = v12;

  v14 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  v15 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  v16 = [v15 layoutMarginsGuide];
  v17 = [v16 leadingAnchor];
  v18 = [v14 constraintEqualToAnchor:v17];
  v52 = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v52 count:1];
  noSpinnerConstraint = self->_noSpinnerConstraint;
  self->_noSpinnerConstraint = v19;

  v38 = MEMORY[0x1E696ACD8];
  v48 = [(UILabel *)self->_titleLabel topAnchor];
  v50 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  v46 = [v50 topAnchor];
  v45 = [v48 constraintEqualToSystemSpacingBelowAnchor:v46 multiplier:1.0];
  v51[0] = v45;
  v43 = [(UILabel *)self->_titleLabel leadingAnchor];
  v44 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  v42 = [v44 layoutMarginsGuide];
  v41 = [v42 leadingAnchor];
  v40 = [v43 constraintEqualToAnchor:v41];
  v51[1] = v40;
  v37 = [(UILabel *)self->_titleLabel trailingAnchor];
  v39 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  v36 = [v39 layoutMarginsGuide];
  v35 = [v36 trailingAnchor];
  v34 = [v37 constraintEqualToAnchor:v35];
  v51[2] = v34;
  v33 = [(UILabel *)self->_subtitleLabel topAnchor];
  v32 = [(UILabel *)self->_titleLabel bottomAnchor];
  v31 = [v33 constraintEqualToAnchor:v32];
  v51[3] = v31;
  v30 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  v21 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  v22 = [v21 layoutMarginsGuide];
  v23 = [v22 trailingAnchor];
  v24 = [v30 constraintEqualToAnchor:v23];
  v51[4] = v24;
  v25 = [(WDAccountDetailsSharingStatusCell *)self contentView];
  v26 = [v25 bottomAnchor];
  v27 = [(UILabel *)self->_subtitleLabel bottomAnchor];
  v28 = [v26 constraintEqualToSystemSpacingBelowAnchor:v27 multiplier:1.0];
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