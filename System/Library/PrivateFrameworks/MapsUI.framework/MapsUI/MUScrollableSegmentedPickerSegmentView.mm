@interface MUScrollableSegmentedPickerSegmentView
- (MUScrollableSegmentedPickerSegmentView)initWithFrame:(CGRect)a3;
- (void)_setupLabel;
- (void)_updateAppearance;
- (void)_updateFont;
- (void)_updateSelectionAppearance;
- (void)setViewModel:(id)a3;
@end

@implementation MUScrollableSegmentedPickerSegmentView

- (void)_updateSelectionAppearance
{
  if (([(MUScrollableSegmentedPickerSegmentView *)self isSelected]& 1) != 0)
  {
    [MEMORY[0x1E69DC888] systemWhiteColor];
  }

  else
  {
    [MEMORY[0x1E69DC888] secondaryLabelColor];
  }
  v5 = ;
  if ([(MUScrollableSegmentedPickerSegmentView *)self isHighlighted])
  {
    v3 = [v5 colorWithAlphaComponent:0.300000012];

    v4 = v3;
  }

  else
  {
    v4 = v5;
  }

  v6 = v4;
  [(UILabel *)self->_label setTextColor:v4];
}

- (void)_updateFont
{
  v3 = [MEMORY[0x1E69DB878] _mapsui_preferredFontForTextStyle:*MEMORY[0x1E69DDD40] maxContentSizeCategory:*MEMORY[0x1E69DDC58] weight:0 withSymbolicTraits:*MEMORY[0x1E69DB980]];
  [(UILabel *)self->_label setFont:v3];
}

- (void)_updateAppearance
{
  v3 = [(MUScrollableSegmentedPickerCategory *)self->_viewModel categoryName];
  [(UILabel *)self->_label setText:v3];

  v4 = [(MUScrollableSegmentedPickerCategory *)self->_viewModel categoryName];
  [(MUScrollableSegmentedPickerSegmentView *)self setAccessibilityLabel:v4];
}

- (void)setViewModel:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_viewModel] & 1) == 0)
  {
    objc_storeStrong(&self->_viewModel, a3);
    [(MUScrollableSegmentedPickerSegmentView *)self _updateAppearance];
  }
}

- (void)_setupLabel
{
  v12[1] = *MEMORY[0x1E69E9840];
  [(MUScrollableSegmentedPickerSegmentView *)self setClipsToBounds:1];
  v3 = objc_alloc(MEMORY[0x1E69DCC10]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  label = self->_label;
  self->_label = v4;

  [(MUScrollableSegmentedPickerSegmentView *)self _updateFont];
  [(MUScrollableSegmentedPickerSegmentView *)self addSubview:self->_label];
  v6 = [[MUEdgeLayout alloc] initWithItem:self->_label container:self];
  edgeLayout = self->_edgeLayout;
  self->_edgeLayout = v6;

  [(MUEdgeLayout *)self->_edgeLayout setInsets:8.0, 16.0, 8.0, 16.0];
  [(MUConstraintLayout *)self->_edgeLayout activate];
  v8 = objc_opt_self();
  v12[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v10 = [(MUScrollableSegmentedPickerSegmentView *)self registerForTraitChanges:v9 withAction:sel__updateFont];

  v11 = *MEMORY[0x1E69E9840];
}

- (MUScrollableSegmentedPickerSegmentView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUScrollableSegmentedPickerSegmentView;
  v3 = [(MUScrollableSegmentedPickerSegmentView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUScrollableSegmentedPickerSegmentView *)v3 _setupLabel];
    [(MUScrollableSegmentedPickerSegmentView *)v4 _updateSelectionAppearance];
  }

  return v4;
}

@end