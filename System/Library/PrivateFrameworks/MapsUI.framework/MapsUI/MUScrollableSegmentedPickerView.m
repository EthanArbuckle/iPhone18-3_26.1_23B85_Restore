@interface MUScrollableSegmentedPickerView
- (MUScrollableSegmentedPickerView)initWithFrame:(CGRect)a3;
- (MUScrollableSegmentedPickerViewDelegate)delegate;
- (void)_setupContentView;
- (void)layoutSubviews;
- (void)segmentedPickerContentViewDidUpdateSelection:(id)a3;
@end

@implementation MUScrollableSegmentedPickerView

- (MUScrollableSegmentedPickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)segmentedPickerContentViewDidUpdateSelection:(id)a3
{
  v4 = [(MUScrollableSegmentedPickerView *)self delegate];
  [v4 scrollableSegmentedPickerView:self didChangeSelectedIndex:{-[MUScrollableSegmentedPickerView selectedIndex](self, "selectedIndex")}];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = MUScrollableSegmentedPickerView;
  [(MUScrollableSegmentedPickerView *)&v6 layoutSubviews];
  contentView = self->_contentView;
  [(MUScrollableSegmentedPickerView *)self bounds];
  [(MUScrollableSegmentedPickerContentView *)contentView idealWidthForProposedSize:v4, v5];
  [(NSLayoutConstraint *)self->_widthConstraint setConstant:?];
}

- (void)_setupContentView
{
  v29[6] = *MEMORY[0x1E69E9840];
  v3 = [MUScrollableSegmentedPickerContentView alloc];
  v4 = [(MUScrollableSegmentedPickerContentView *)v3 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  contentView = self->_contentView;
  self->_contentView = v4;

  [(MUScrollableSegmentedPickerContentView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(MUScrollableSegmentedPickerContentView *)self->_contentView setDelegate:self];
  [(MUScrollableSegmentedPickerView *)self addSubview:self->_contentView];
  v6 = [(MUScrollableSegmentedPickerContentView *)self->_contentView widthAnchor];
  v7 = [v6 constraintEqualToConstant:0.0];
  widthConstraint = self->_widthConstraint;
  self->_widthConstraint = v7;

  LODWORD(v9) = 1111752704;
  [(NSLayoutConstraint *)self->_widthConstraint setPriority:v9];
  v22 = MEMORY[0x1E696ACD8];
  v28 = [(MUScrollableSegmentedPickerContentView *)self->_contentView centerXAnchor];
  v27 = [(MUScrollableSegmentedPickerView *)self centerXAnchor];
  v26 = [v28 constraintEqualToAnchor:v27];
  v29[0] = v26;
  v25 = [(MUScrollableSegmentedPickerContentView *)self->_contentView topAnchor];
  v24 = [(MUScrollableSegmentedPickerView *)self topAnchor];
  v23 = [v25 constraintEqualToAnchor:v24];
  v29[1] = v23;
  v21 = [(MUScrollableSegmentedPickerContentView *)self->_contentView bottomAnchor];
  v10 = [(MUScrollableSegmentedPickerView *)self bottomAnchor];
  v11 = [v21 constraintEqualToAnchor:v10];
  v29[2] = v11;
  v12 = [(MUScrollableSegmentedPickerContentView *)self->_contentView leadingAnchor];
  v13 = [(MUScrollableSegmentedPickerView *)self leadingAnchor];
  v14 = [v12 constraintGreaterThanOrEqualToAnchor:v13];
  v29[3] = v14;
  v15 = [(MUScrollableSegmentedPickerContentView *)self->_contentView trailingAnchor];
  v16 = [(MUScrollableSegmentedPickerView *)self trailingAnchor];
  v17 = [v15 constraintLessThanOrEqualToAnchor:v16];
  v18 = self->_widthConstraint;
  v29[4] = v17;
  v29[5] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:6];
  [v22 activateConstraints:v19];

  v20 = *MEMORY[0x1E69E9840];
}

- (MUScrollableSegmentedPickerView)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = MUScrollableSegmentedPickerView;
  v3 = [(MUScrollableSegmentedPickerView *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUScrollableSegmentedPickerView *)v3 _setupContentView];
  }

  return v4;
}

@end