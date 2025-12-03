@interface MUStackView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority;
- (MUStackView)initWithFrame:(CGRect)frame;
- (UIEdgeInsets)contentEdgeInsets;
- (void)_setupStackView;
- (void)addArrangedSubview:(id)subview withCustomSpacing:(double)spacing;
- (void)removeArrangedSubview:(id)subview;
@end

@implementation MUStackView

- (UIEdgeInsets)contentEdgeInsets
{
  [(UIStackView *)self->_stackView layoutMargins];
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)intrinsicContentSize
{
  [(UIStackView *)self->_stackView intrinsicContentSize];
  result.height = v3;
  result.width = v2;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size withHorizontalFittingPriority:(float)priority verticalFittingPriority:(float)fittingPriority
{
  [(UIStackView *)self->_stackView systemLayoutSizeFittingSize:size.width withHorizontalFittingPriority:size.height verticalFittingPriority:?];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)size
{
  [(UIStackView *)self->_stackView systemLayoutSizeFittingSize:size.width, size.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)removeArrangedSubview:(id)subview
{
  stackView = self->_stackView;
  subviewCopy = subview;
  [(UIStackView *)stackView removeArrangedSubview:subviewCopy];
  [subviewCopy removeFromSuperview];
}

- (void)addArrangedSubview:(id)subview withCustomSpacing:(double)spacing
{
  stackView = self->_stackView;
  subviewCopy = subview;
  [(UIStackView *)stackView addArrangedSubview:subviewCopy];
  [(MUStackView *)self setCustomSpacing:subviewCopy afterView:spacing];
}

- (void)_setupStackView
{
  v21[4] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69DCF90]);
  v4 = [v3 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  stackView = self->_stackView;
  self->_stackView = v4;

  [(UIStackView *)self->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_stackView set_mapsui_axis:1];
  [(MUStackView *)self addSubview:self->_stackView];
  v17 = MEMORY[0x1E696ACD8];
  leadingAnchor = [(UIStackView *)self->_stackView leadingAnchor];
  leadingAnchor2 = [(MUStackView *)self leadingAnchor];
  v18 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v21[0] = v18;
  trailingAnchor = [(UIStackView *)self->_stackView trailingAnchor];
  trailingAnchor2 = [(MUStackView *)self trailingAnchor];
  v8 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v21[1] = v8;
  topAnchor = [(UIStackView *)self->_stackView topAnchor];
  topAnchor2 = [(MUStackView *)self topAnchor];
  v11 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v21[2] = v11;
  bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
  bottomAnchor2 = [(MUStackView *)self bottomAnchor];
  v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v21[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  [v17 activateConstraints:v15];

  v16 = *MEMORY[0x1E69E9840];
}

- (MUStackView)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = MUStackView;
  v3 = [(MUStackView *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(MUStackView *)v3 _setupStackView];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(MUStackView *)v4 setAccessibilityIdentifier:v6];
  }

  return v4;
}

@end