@interface MUScrollableSegmentedPickerView
- (MUScrollableSegmentedPickerView)initWithFrame:(CGRect)frame;
- (MUScrollableSegmentedPickerViewDelegate)delegate;
- (void)_setupContentView;
- (void)layoutSubviews;
- (void)segmentedPickerContentViewDidUpdateSelection:(id)selection;
@end

@implementation MUScrollableSegmentedPickerView

- (MUScrollableSegmentedPickerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)segmentedPickerContentViewDidUpdateSelection:(id)selection
{
  delegate = [(MUScrollableSegmentedPickerView *)self delegate];
  [delegate scrollableSegmentedPickerView:self didChangeSelectedIndex:{-[MUScrollableSegmentedPickerView selectedIndex](self, "selectedIndex")}];
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
  widthAnchor = [(MUScrollableSegmentedPickerContentView *)self->_contentView widthAnchor];
  v7 = [widthAnchor constraintEqualToConstant:0.0];
  widthConstraint = self->_widthConstraint;
  self->_widthConstraint = v7;

  LODWORD(v9) = 1111752704;
  [(NSLayoutConstraint *)self->_widthConstraint setPriority:v9];
  v22 = MEMORY[0x1E696ACD8];
  centerXAnchor = [(MUScrollableSegmentedPickerContentView *)self->_contentView centerXAnchor];
  centerXAnchor2 = [(MUScrollableSegmentedPickerView *)self centerXAnchor];
  v26 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v29[0] = v26;
  topAnchor = [(MUScrollableSegmentedPickerContentView *)self->_contentView topAnchor];
  topAnchor2 = [(MUScrollableSegmentedPickerView *)self topAnchor];
  v23 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v29[1] = v23;
  bottomAnchor = [(MUScrollableSegmentedPickerContentView *)self->_contentView bottomAnchor];
  bottomAnchor2 = [(MUScrollableSegmentedPickerView *)self bottomAnchor];
  v11 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v29[2] = v11;
  leadingAnchor = [(MUScrollableSegmentedPickerContentView *)self->_contentView leadingAnchor];
  leadingAnchor2 = [(MUScrollableSegmentedPickerView *)self leadingAnchor];
  v14 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
  v29[3] = v14;
  trailingAnchor = [(MUScrollableSegmentedPickerContentView *)self->_contentView trailingAnchor];
  trailingAnchor2 = [(MUScrollableSegmentedPickerView *)self trailingAnchor];
  v17 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
  v18 = self->_widthConstraint;
  v29[4] = v17;
  v29[5] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:6];
  [v22 activateConstraints:v19];

  v20 = *MEMORY[0x1E69E9840];
}

- (MUScrollableSegmentedPickerView)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = MUScrollableSegmentedPickerView;
  v3 = [(MUScrollableSegmentedPickerView *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUScrollableSegmentedPickerView *)v3 _setupContentView];
  }

  return v4;
}

@end