@interface ICCollapsibleBaseView
- (NSLayoutConstraint)zeroWidthConstraint;
- (void)awakeFromNib;
- (void)performSetUpWithContentView:(id)view;
- (void)setCollapsed:(BOOL)collapsed;
- (void)setLeadingSpace:(double)space;
- (void)setTrailingSpace:(double)space;
- (void)setUpIfNeeded;
@end

@implementation ICCollapsibleBaseView

- (void)awakeFromNib
{
  v3.receiver = self;
  v3.super_class = ICCollapsibleBaseView;
  [(ICCollapsibleBaseView *)&v3 awakeFromNib];
  [(ICCollapsibleBaseView *)self setCollapsed:1];
}

- (void)setUpIfNeeded
{
  if (![(ICCollapsibleBaseView *)self setupComplete])
  {
    [(ICCollapsibleBaseView *)self setSetupComplete:1];

    [(ICCollapsibleBaseView *)self performSetup];
  }
}

- (NSLayoutConstraint)zeroWidthConstraint
{
  zeroWidthConstraint = self->_zeroWidthConstraint;
  if (!zeroWidthConstraint)
  {
    v4 = [MEMORY[0x1E696ACD8] constraintWithItem:self attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:0.0];
    v5 = self->_zeroWidthConstraint;
    self->_zeroWidthConstraint = v4;

    LODWORD(v6) = 1148813312;
    [(NSLayoutConstraint *)self->_zeroWidthConstraint setPriority:v6];
    [(NSLayoutConstraint *)self->_zeroWidthConstraint setActive:1];
    zeroWidthConstraint = self->_zeroWidthConstraint;
  }

  return zeroWidthConstraint;
}

- (void)performSetUpWithContentView:(id)view
{
  v23[4] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E69DC888];
  viewCopy = view;
  clearColor = [v4 clearColor];
  [(UIView *)self setIc_backgroundColor:clearColor];

  [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v7) = 1148813312;
  [(ICCollapsibleBaseView *)self setContentCompressionResistancePriority:0 forAxis:v7];
  LODWORD(v8) = 1148813312;
  [(ICCollapsibleBaseView *)self setContentCompressionResistancePriority:1 forAxis:v8];
  LODWORD(v9) = 1148813312;
  [viewCopy setContentCompressionResistancePriority:0 forAxis:v9];
  LODWORD(v10) = 1148813312;
  [viewCopy setContentCompressionResistancePriority:1 forAxis:v10];
  LODWORD(v11) = 1148813312;
  [viewCopy setContentHuggingPriority:0 forAxis:v11];
  LODWORD(v12) = 1148813312;
  [viewCopy setContentHuggingPriority:1 forAxis:v12];
  [(ICCollapsibleBaseView *)self addSubview:viewCopy];
  v13 = [MEMORY[0x1E696ACD8] constraintWithItem:viewCopy attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:0.0];
  v14 = [MEMORY[0x1E696ACD8] constraintWithItem:viewCopy attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:0.0];
  v15 = [MEMORY[0x1E696ACD8] constraintWithItem:viewCopy attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
  v16 = [MEMORY[0x1E696ACD8] constraintWithItem:viewCopy attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0];
  LODWORD(v17) = 1148813312;
  [v13 setPriority:v17];
  LODWORD(v18) = 1148813312;
  [v14 setPriority:v18];
  LODWORD(v19) = 1148813312;
  [v15 setPriority:v19];
  LODWORD(v20) = 1148813312;
  [v16 setPriority:v20];
  v21 = MEMORY[0x1E696ACD8];
  v23[0] = v13;
  v23[1] = v14;
  v23[2] = v15;
  v23[3] = v16;
  v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:4];
  [v21 activateConstraints:v22];

  [(ICCollapsibleBaseView *)self setContentView:viewCopy];
  [(ICCollapsibleBaseView *)self setLeadingConstraint:v13];
  [(ICCollapsibleBaseView *)self setTrailingConstraint:v14];
  [(ICCollapsibleBaseView *)self leadingSpace];
  [(ICCollapsibleBaseView *)self setLeadingSpace:?];
  [(ICCollapsibleBaseView *)self trailingSpace];
  [(ICCollapsibleBaseView *)self setTrailingSpace:?];
}

- (void)setCollapsed:(BOOL)collapsed
{
  if (self->_collapsed != collapsed)
  {
    collapsedCopy = collapsed;
    if (collapsed)
    {
      v5 = 999.0;
    }

    else
    {
      [(ICCollapsibleBaseView *)self setUpIfNeeded];
      v5 = 1.0;
    }

    self->_collapsed = collapsedCopy;
    zeroWidthConstraint = [(ICCollapsibleBaseView *)self zeroWidthConstraint];
    *&v7 = v5;
    [zeroWidthConstraint setPriority:v7];

    [(ICCollapsibleBaseView *)self setHidden:collapsedCopy];
    contentView = [(ICCollapsibleBaseView *)self contentView];
    [contentView setHidden:collapsedCopy];

    [(ICCollapsibleBaseView *)self ic_setNeedsUpdateConstraints];
  }
}

- (void)setLeadingSpace:(double)space
{
  self->_leadingSpace = space;
  leadingConstraint = [(ICCollapsibleBaseView *)self leadingConstraint];
  [leadingConstraint setConstant:space];

  [(ICCollapsibleBaseView *)self ic_setNeedsUpdateConstraints];
}

- (void)setTrailingSpace:(double)space
{
  self->_trailingSpace = space;
  v4 = -space;
  trailingConstraint = [(ICCollapsibleBaseView *)self trailingConstraint];
  [trailingConstraint setConstant:v4];

  [(ICCollapsibleBaseView *)self ic_setNeedsUpdateConstraints];
}

@end