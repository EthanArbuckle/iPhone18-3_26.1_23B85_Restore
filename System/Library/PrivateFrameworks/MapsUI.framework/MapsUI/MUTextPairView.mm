@interface MUTextPairView
- (BOOL)shouldStackForProposedWidth:(double)a3;
- (MUTextPairView)initWithFrame:(CGRect)a3;
- (void)_contentSizeDidChange;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateConstraints;
- (void)setStacked:(BOOL)a3;
- (void)setViewModel:(id)a3;
@end

@implementation MUTextPairView

- (void)_contentSizeDidChange
{
  v3 = *MEMORY[0x1E69DDCF8];
  v4 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  [(UILabel *)self->_leftLabel setFont:v4];

  v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:v3];
  [(UILabel *)self->_rightLabel setFont:v5];
}

- (void)_updateAppearance
{
  v3 = [(MUTextPairViewModel *)self->_viewModel leftText];
  [(UILabel *)self->_leftLabel setText:v3];

  v4 = [(MUTextPairViewModel *)self->_viewModel rightText];
  [(UILabel *)self->_rightLabel setText:v4];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (self->_viewModel != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_viewModel, a3);
    [(MUTextPairView *)self _updateAppearance];
    v5 = v6;
  }
}

- (void)_updateConstraints
{
  v52[7] = *MEMORY[0x1E69E9840];
  if (self->_constraints)
  {
    [MEMORY[0x1E696ACD8] deactivateConstraints:?];
  }

  leftLabel = self->_leftLabel;
  if (self->_stacked)
  {
    v4 = [(UILabel *)leftLabel topAnchor];
    v5 = [(MUTextPairView *)self topAnchor];
    v6 = [v4 constraintEqualToAnchor:v5];
    v52[0] = v6;
    v7 = [(UILabel *)self->_leftLabel bottomAnchor];
    v50 = [(UILabel *)self->_rightLabel topAnchor];
    v49 = [v7 constraintEqualToAnchor:?];
    v52[1] = v49;
    v8 = [(UILabel *)self->_leftLabel leadingAnchor];
    v47 = [(MUTextPairView *)self leadingAnchor];
    v48 = v8;
    v46 = [v8 constraintEqualToAnchor:?];
    v52[2] = v46;
    v9 = [(UILabel *)self->_leftLabel trailingAnchor];
    v45 = [(MUTextPairView *)self trailingAnchor];
    v44 = [v9 constraintEqualToAnchor:?];
    v52[3] = v44;
    v10 = [(UILabel *)self->_rightLabel leadingAnchor];
    v42 = [(MUTextPairView *)self leadingAnchor];
    v43 = v10;
    v41 = [v10 constraintEqualToAnchor:?];
    v52[4] = v41;
    v11 = [(UILabel *)self->_rightLabel trailingAnchor];
    v39 = [(MUTextPairView *)self trailingAnchor];
    v40 = v11;
    v38 = [v11 constraintEqualToAnchor:?];
    v52[5] = v38;
    v12 = [(UILabel *)self->_rightLabel bottomAnchor];
    v37 = [(MUTextPairView *)self bottomAnchor];
    v13 = [v12 constraintEqualToAnchor:?];
    v52[6] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:7];
    constraints = self->_constraints;
    self->_constraints = v14;
  }

  else
  {
    v36 = [(UILabel *)leftLabel leadingAnchor];
    v35 = [(MUTextPairView *)self leadingAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v51[0] = v34;
    v33 = [(UILabel *)self->_leftLabel topAnchor];
    v50 = [(MUTextPairView *)self topAnchor];
    v49 = [v33 constraintEqualToAnchor:?];
    v51[1] = v49;
    v16 = [(UILabel *)self->_leftLabel bottomAnchor];
    v47 = [(MUTextPairView *)self bottomAnchor];
    v48 = v16;
    v46 = [v16 constraintEqualToAnchor:?];
    v51[2] = v46;
    v32 = [(UILabel *)self->_leftLabel trailingAnchor];
    v45 = [(UILabel *)self->_rightLabel leadingAnchor];
    v44 = [v32 constraintEqualToAnchor:-8.0 constant:?];
    v51[3] = v44;
    v17 = [(UILabel *)self->_leftLabel centerYAnchor];
    v42 = [(MUTextPairView *)self centerYAnchor];
    v43 = v17;
    v41 = [v17 constraintEqualToAnchor:?];
    v51[4] = v41;
    v18 = [(UILabel *)self->_leftLabel firstBaselineAnchor];
    v39 = [(UILabel *)self->_rightLabel firstBaselineAnchor];
    v40 = v18;
    v38 = [v18 constraintEqualToAnchor:?];
    v51[5] = v38;
    v29 = [(UILabel *)self->_rightLabel leadingAnchor];
    v37 = [(MUTextPairView *)self centerXAnchor];
    v13 = [v29 constraintEqualToAnchor:?];
    v51[6] = v13;
    v31 = [(UILabel *)self->_rightLabel topAnchor];
    v30 = [(MUTextPairView *)self topAnchor];
    v19 = [(NSArray *)v31 constraintEqualToAnchor:v30];
    v51[7] = v19;
    v20 = [(UILabel *)self->_rightLabel bottomAnchor];
    v21 = [(MUTextPairView *)self bottomAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v51[8] = v22;
    v23 = [(UILabel *)self->_rightLabel trailingAnchor];
    v24 = [(MUTextPairView *)self trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v51[9] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:10];
    v27 = self->_constraints;
    self->_constraints = v26;

    v12 = v29;
    v9 = v32;

    v7 = v33;
    v6 = v34;

    v5 = v35;
    v4 = v36;

    constraints = v31;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
  v28 = *MEMORY[0x1E69E9840];
}

- (void)setStacked:(BOOL)a3
{
  if (self->_stacked != a3)
  {
    self->_stacked = a3;
    [(MUTextPairView *)self _updateConstraints];
  }
}

- (BOOL)shouldStackForProposedWidth:(double)a3
{
  [(UILabel *)self->_leftLabel idealWidth];
  v6 = v5 + 8.0;
  [(UILabel *)self->_rightLabel idealWidth];
  return v6 + v7 > a3;
}

- (void)_setupSubviews
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = *MEMORY[0x1E695F058];
  v5 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v7 = *(MEMORY[0x1E695F058] + 24);
  v8 = [v3 initWithFrame:{*MEMORY[0x1E695F058], v5, v6, v7}];
  leftLabel = self->_leftLabel;
  self->_leftLabel = v8;

  [(UILabel *)self->_leftLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_leftLabel setNumberOfLines:1];
  [(UILabel *)self->_leftLabel setAccessibilityIdentifier:@"TextPairLeftLabel"];
  [(MUTextPairView *)self addSubview:self->_leftLabel];
  v10 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v4, v5, v6, v7}];
  rightLabel = self->_rightLabel;
  self->_rightLabel = v10;

  [(UILabel *)self->_rightLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UILabel *)self->_rightLabel setNumberOfLines:1];
  [(UILabel *)self->_rightLabel setAccessibilityIdentifier:@"TextPairRightLabel"];
  [(MUTextPairView *)self addSubview:self->_rightLabel];
  v12 = objc_opt_self();
  v16[0] = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
  v14 = [(MUTextPairView *)self registerForTraitChanges:v13 withAction:sel__contentSizeDidChange];

  v15 = *MEMORY[0x1E69E9840];
}

- (MUTextPairView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = MUTextPairView;
  v3 = [(MUTextPairView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUTextPairView *)v3 setAccessibilityIdentifier:@"TextPair"];
    [(MUTextPairView *)v4 _setupSubviews];
    [(MUTextPairView *)v4 _updateConstraints];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(MUTextPairView *)v4 setAccessibilityIdentifier:v6];
  }

  return v4;
}

@end