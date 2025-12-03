@interface HRWDSpinnerView
- (HRWDSpinnerView)init;
- (void)_setupSubviews;
- (void)setMessageFont:(id)font;
- (void)setMessageWhileSpinning:(id)spinning;
- (void)startSpinner;
- (void)stopSpinner;
- (void)updateConstraints;
@end

@implementation HRWDSpinnerView

- (HRWDSpinnerView)init
{
  v5.receiver = self;
  v5.super_class = HRWDSpinnerView;
  v2 = [(HRWDSpinnerView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(HRWDSpinnerView *)v2 _setupSubviews];
  }

  return v3;
}

- (void)_setupSubviews
{
  v54[13] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E69DD250]);
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(HRWDSpinnerView *)self addSubview:v3];
  v4 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:101];
  spinner = self->_spinner;
  self->_spinner = v4;

  [(UIActivityIndicatorView *)self->_spinner setHidesWhenStopped:1];
  [(UIActivityIndicatorView *)self->_spinner setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:self->_spinner];
  v6 = objc_alloc_init(MEMORY[0x1E69DCC10]);
  label = self->_label;
  self->_label = v6;

  v8 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDDC0] variant:1024];
  [(UILabel *)self->_label setFont:v8];

  v9 = HBXLocalizedString(@"CONNECTING");
  [(UILabel *)self->_label setText:v9];

  secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_label setTextColor:secondaryLabelColor];

  [(UILabel *)self->_label setTextAlignment:1];
  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:self->_label];
  topAnchor = [(UIActivityIndicatorView *)self->_spinner topAnchor];
  topAnchor2 = [v3 topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  spinnerTopConstraint = self->_spinnerTopConstraint;
  self->_spinnerTopConstraint = v13;

  v38 = MEMORY[0x1E696ACD8];
  topAnchor3 = [v3 topAnchor];
  topAnchor4 = [(HRWDSpinnerView *)self topAnchor];
  v51 = [topAnchor3 constraintGreaterThanOrEqualToAnchor:topAnchor4];
  v54[0] = v51;
  bottomAnchor = [v3 bottomAnchor];
  bottomAnchor2 = [(HRWDSpinnerView *)self bottomAnchor];
  v48 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v54[1] = v48;
  leftAnchor = [v3 leftAnchor];
  leftAnchor2 = [(HRWDSpinnerView *)self leftAnchor];
  v45 = [leftAnchor constraintGreaterThanOrEqualToAnchor:leftAnchor2];
  v54[2] = v45;
  rightAnchor = [v3 rightAnchor];
  rightAnchor2 = [(HRWDSpinnerView *)self rightAnchor];
  v42 = [rightAnchor constraintLessThanOrEqualToAnchor:rightAnchor2];
  v54[3] = v42;
  centerXAnchor = [v3 centerXAnchor];
  centerXAnchor2 = [(HRWDSpinnerView *)self centerXAnchor];
  v39 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v54[4] = v39;
  centerYAnchor = [v3 centerYAnchor];
  centerYAnchor2 = [(HRWDSpinnerView *)self centerYAnchor];
  v35 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v54[5] = v35;
  centerXAnchor3 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  centerXAnchor4 = [v3 centerXAnchor];
  v32 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
  v54[6] = v32;
  centerXAnchor5 = [(UILabel *)self->_label centerXAnchor];
  centerXAnchor6 = [v3 centerXAnchor];
  v29 = [centerXAnchor5 constraintEqualToAnchor:centerXAnchor6];
  v54[7] = v29;
  leadingAnchor = [(UILabel *)self->_label leadingAnchor];
  leadingAnchor2 = [v3 leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v54[8] = v26;
  trailingAnchor = [(UILabel *)self->_label trailingAnchor];
  trailingAnchor2 = [v3 trailingAnchor];
  v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v17 = self->_spinnerTopConstraint;
  v54[9] = v16;
  v54[10] = v17;
  topAnchor5 = [(UILabel *)self->_label topAnchor];
  bottomAnchor3 = [(UIActivityIndicatorView *)self->_spinner bottomAnchor];
  v20 = [topAnchor5 constraintEqualToAnchor:bottomAnchor3 constant:14.0];
  v54[11] = v20;
  bottomAnchor4 = [(UILabel *)self->_label bottomAnchor];
  bottomAnchor5 = [v3 bottomAnchor];
  v23 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  v54[12] = v23;
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:13];
  [v38 activateConstraints:v24];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = HRWDSpinnerView;
  [(HRWDSpinnerView *)&v3 updateConstraints];
  [(HRWDSpinnerView *)self frame];
  [(NSLayoutConstraint *)self->_spinnerTopConstraint setConstant:CGRectGetHeight(v4) * 0.4];
}

- (void)setMessageWhileSpinning:(id)spinning
{
  spinningCopy = spinning;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__HRWDSpinnerView_setMessageWhileSpinning___block_invoke;
  v6[3] = &unk_1E83DD1A8;
  v6[4] = self;
  v7 = spinningCopy;
  v5 = spinningCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)setMessageFont:(id)font
{
  fontCopy = font;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HRWDSpinnerView_setMessageFont___block_invoke;
  v6[3] = &unk_1E83DD1A8;
  v6[4] = self;
  v7 = fontCopy;
  v5 = fontCopy;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)startSpinner
{
  objc_initWeak(&location, self);
  objc_initWeak(&from, self->_spinner);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __31__HRWDSpinnerView_startSpinner__block_invoke;
  v3[3] = &unk_1E83DD7C0;
  objc_copyWeak(&v4, &from);
  objc_copyWeak(&v5, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __31__HRWDSpinnerView_startSpinner__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained startAnimating];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 setHidden:0];
}

- (void)stopSpinner
{
  objc_initWeak(&location, self);
  objc_initWeak(&from, self->_spinner);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __30__HRWDSpinnerView_stopSpinner__block_invoke;
  v3[3] = &unk_1E83DD7C0;
  objc_copyWeak(&v4, &from);
  objc_copyWeak(&v5, &location);
  dispatch_async(MEMORY[0x1E69E96A0], v3);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&v4);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

void __30__HRWDSpinnerView_stopSpinner__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stopAnimating];

  v3 = objc_loadWeakRetained((a1 + 40));
  [v3 setHidden:1];
}

@end