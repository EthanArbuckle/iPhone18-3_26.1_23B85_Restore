@interface MUTextPairView
- (BOOL)shouldStackForProposedWidth:(double)width;
- (MUTextPairView)initWithFrame:(CGRect)frame;
- (void)_contentSizeDidChange;
- (void)_setupSubviews;
- (void)_updateAppearance;
- (void)_updateConstraints;
- (void)setStacked:(BOOL)stacked;
- (void)setViewModel:(id)model;
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
  leftText = [(MUTextPairViewModel *)self->_viewModel leftText];
  [(UILabel *)self->_leftLabel setText:leftText];

  rightText = [(MUTextPairViewModel *)self->_viewModel rightText];
  [(UILabel *)self->_rightLabel setText:rightText];
}

- (void)setViewModel:(id)model
{
  modelCopy = model;
  if (self->_viewModel != modelCopy)
  {
    v6 = modelCopy;
    objc_storeStrong(&self->_viewModel, model);
    [(MUTextPairView *)self _updateAppearance];
    modelCopy = v6;
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
    topAnchor = [(UILabel *)leftLabel topAnchor];
    topAnchor2 = [(MUTextPairView *)self topAnchor];
    v6 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v52[0] = v6;
    bottomAnchor = [(UILabel *)self->_leftLabel bottomAnchor];
    topAnchor3 = [(UILabel *)self->_rightLabel topAnchor];
    v49 = [bottomAnchor constraintEqualToAnchor:?];
    v52[1] = v49;
    leadingAnchor = [(UILabel *)self->_leftLabel leadingAnchor];
    leadingAnchor2 = [(MUTextPairView *)self leadingAnchor];
    v48 = leadingAnchor;
    v46 = [leadingAnchor constraintEqualToAnchor:?];
    v52[2] = v46;
    trailingAnchor = [(UILabel *)self->_leftLabel trailingAnchor];
    trailingAnchor2 = [(MUTextPairView *)self trailingAnchor];
    v44 = [trailingAnchor constraintEqualToAnchor:?];
    v52[3] = v44;
    leadingAnchor3 = [(UILabel *)self->_rightLabel leadingAnchor];
    leadingAnchor4 = [(MUTextPairView *)self leadingAnchor];
    v43 = leadingAnchor3;
    v41 = [leadingAnchor3 constraintEqualToAnchor:?];
    v52[4] = v41;
    trailingAnchor3 = [(UILabel *)self->_rightLabel trailingAnchor];
    trailingAnchor4 = [(MUTextPairView *)self trailingAnchor];
    v40 = trailingAnchor3;
    v38 = [trailingAnchor3 constraintEqualToAnchor:?];
    v52[5] = v38;
    bottomAnchor2 = [(UILabel *)self->_rightLabel bottomAnchor];
    bottomAnchor3 = [(MUTextPairView *)self bottomAnchor];
    v13 = [bottomAnchor2 constraintEqualToAnchor:?];
    v52[6] = v13;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v52 count:7];
    constraints = self->_constraints;
    self->_constraints = v14;
  }

  else
  {
    leadingAnchor5 = [(UILabel *)leftLabel leadingAnchor];
    leadingAnchor6 = [(MUTextPairView *)self leadingAnchor];
    v34 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v51[0] = v34;
    topAnchor4 = [(UILabel *)self->_leftLabel topAnchor];
    topAnchor3 = [(MUTextPairView *)self topAnchor];
    v49 = [topAnchor4 constraintEqualToAnchor:?];
    v51[1] = v49;
    bottomAnchor4 = [(UILabel *)self->_leftLabel bottomAnchor];
    leadingAnchor2 = [(MUTextPairView *)self bottomAnchor];
    v48 = bottomAnchor4;
    v46 = [bottomAnchor4 constraintEqualToAnchor:?];
    v51[2] = v46;
    trailingAnchor5 = [(UILabel *)self->_leftLabel trailingAnchor];
    trailingAnchor2 = [(UILabel *)self->_rightLabel leadingAnchor];
    v44 = [trailingAnchor5 constraintEqualToAnchor:-8.0 constant:?];
    v51[3] = v44;
    centerYAnchor = [(UILabel *)self->_leftLabel centerYAnchor];
    leadingAnchor4 = [(MUTextPairView *)self centerYAnchor];
    v43 = centerYAnchor;
    v41 = [centerYAnchor constraintEqualToAnchor:?];
    v51[4] = v41;
    firstBaselineAnchor = [(UILabel *)self->_leftLabel firstBaselineAnchor];
    trailingAnchor4 = [(UILabel *)self->_rightLabel firstBaselineAnchor];
    v40 = firstBaselineAnchor;
    v38 = [firstBaselineAnchor constraintEqualToAnchor:?];
    v51[5] = v38;
    leadingAnchor7 = [(UILabel *)self->_rightLabel leadingAnchor];
    bottomAnchor3 = [(MUTextPairView *)self centerXAnchor];
    v13 = [leadingAnchor7 constraintEqualToAnchor:?];
    v51[6] = v13;
    topAnchor5 = [(UILabel *)self->_rightLabel topAnchor];
    topAnchor6 = [(MUTextPairView *)self topAnchor];
    v19 = [(NSArray *)topAnchor5 constraintEqualToAnchor:topAnchor6];
    v51[7] = v19;
    bottomAnchor5 = [(UILabel *)self->_rightLabel bottomAnchor];
    bottomAnchor6 = [(MUTextPairView *)self bottomAnchor];
    v22 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
    v51[8] = v22;
    trailingAnchor6 = [(UILabel *)self->_rightLabel trailingAnchor];
    trailingAnchor7 = [(MUTextPairView *)self trailingAnchor];
    v25 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7];
    v51[9] = v25;
    v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:10];
    v27 = self->_constraints;
    self->_constraints = v26;

    bottomAnchor2 = leadingAnchor7;
    trailingAnchor = trailingAnchor5;

    bottomAnchor = topAnchor4;
    v6 = v34;

    topAnchor2 = leadingAnchor6;
    topAnchor = leadingAnchor5;

    constraints = topAnchor5;
  }

  [MEMORY[0x1E696ACD8] activateConstraints:self->_constraints];
  v28 = *MEMORY[0x1E69E9840];
}

- (void)setStacked:(BOOL)stacked
{
  if (self->_stacked != stacked)
  {
    self->_stacked = stacked;
    [(MUTextPairView *)self _updateConstraints];
  }
}

- (BOOL)shouldStackForProposedWidth:(double)width
{
  [(UILabel *)self->_leftLabel idealWidth];
  v6 = v5 + 8.0;
  [(UILabel *)self->_rightLabel idealWidth];
  return v6 + v7 > width;
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

- (MUTextPairView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = MUTextPairView;
  v3 = [(MUTextPairView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
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