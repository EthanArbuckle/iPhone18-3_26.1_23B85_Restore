@interface HRWDSpinnerView
- (HRWDSpinnerView)init;
- (void)_setupSubviews;
- (void)setMessageFont:(id)a3;
- (void)setMessageWhileSpinning:(id)a3;
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

  v10 = [MEMORY[0x1E69DC888] secondaryLabelColor];
  [(UILabel *)self->_label setTextColor:v10];

  [(UILabel *)self->_label setTextAlignment:1];
  [(UILabel *)self->_label setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:self->_label];
  v11 = [(UIActivityIndicatorView *)self->_spinner topAnchor];
  v12 = [v3 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  spinnerTopConstraint = self->_spinnerTopConstraint;
  self->_spinnerTopConstraint = v13;

  v38 = MEMORY[0x1E696ACD8];
  v53 = [v3 topAnchor];
  v52 = [(HRWDSpinnerView *)self topAnchor];
  v51 = [v53 constraintGreaterThanOrEqualToAnchor:v52];
  v54[0] = v51;
  v50 = [v3 bottomAnchor];
  v49 = [(HRWDSpinnerView *)self bottomAnchor];
  v48 = [v50 constraintLessThanOrEqualToAnchor:v49];
  v54[1] = v48;
  v47 = [v3 leftAnchor];
  v46 = [(HRWDSpinnerView *)self leftAnchor];
  v45 = [v47 constraintGreaterThanOrEqualToAnchor:v46];
  v54[2] = v45;
  v44 = [v3 rightAnchor];
  v43 = [(HRWDSpinnerView *)self rightAnchor];
  v42 = [v44 constraintLessThanOrEqualToAnchor:v43];
  v54[3] = v42;
  v41 = [v3 centerXAnchor];
  v40 = [(HRWDSpinnerView *)self centerXAnchor];
  v39 = [v41 constraintEqualToAnchor:v40];
  v54[4] = v39;
  v37 = [v3 centerYAnchor];
  v36 = [(HRWDSpinnerView *)self centerYAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v54[5] = v35;
  v34 = [(UIActivityIndicatorView *)self->_spinner centerXAnchor];
  v33 = [v3 centerXAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v54[6] = v32;
  v31 = [(UILabel *)self->_label centerXAnchor];
  v30 = [v3 centerXAnchor];
  v29 = [v31 constraintEqualToAnchor:v30];
  v54[7] = v29;
  v28 = [(UILabel *)self->_label leadingAnchor];
  v27 = [v3 leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v54[8] = v26;
  v25 = [(UILabel *)self->_label trailingAnchor];
  v15 = [v3 trailingAnchor];
  v16 = [v25 constraintEqualToAnchor:v15];
  v17 = self->_spinnerTopConstraint;
  v54[9] = v16;
  v54[10] = v17;
  v18 = [(UILabel *)self->_label topAnchor];
  v19 = [(UIActivityIndicatorView *)self->_spinner bottomAnchor];
  v20 = [v18 constraintEqualToAnchor:v19 constant:14.0];
  v54[11] = v20;
  v21 = [(UILabel *)self->_label bottomAnchor];
  v22 = [v3 bottomAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
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

- (void)setMessageWhileSpinning:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__HRWDSpinnerView_setMessageWhileSpinning___block_invoke;
  v6[3] = &unk_1E83DD1A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x1E69E96A0], v6);
}

- (void)setMessageFont:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HRWDSpinnerView_setMessageFont___block_invoke;
  v6[3] = &unk_1E83DD1A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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