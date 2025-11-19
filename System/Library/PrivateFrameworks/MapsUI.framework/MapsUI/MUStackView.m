@interface MUStackView
- (CGSize)intrinsicContentSize;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3;
- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5;
- (MUStackView)initWithFrame:(CGRect)a3;
- (UIEdgeInsets)contentEdgeInsets;
- (void)_setupStackView;
- (void)addArrangedSubview:(id)a3 withCustomSpacing:(double)a4;
- (void)removeArrangedSubview:(id)a3;
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

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3 withHorizontalFittingPriority:(float)a4 verticalFittingPriority:(float)a5
{
  [(UIStackView *)self->_stackView systemLayoutSizeFittingSize:a3.width withHorizontalFittingPriority:a3.height verticalFittingPriority:?];
  result.height = v6;
  result.width = v5;
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)a3
{
  [(UIStackView *)self->_stackView systemLayoutSizeFittingSize:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)removeArrangedSubview:(id)a3
{
  stackView = self->_stackView;
  v4 = a3;
  [(UIStackView *)stackView removeArrangedSubview:v4];
  [v4 removeFromSuperview];
}

- (void)addArrangedSubview:(id)a3 withCustomSpacing:(double)a4
{
  stackView = self->_stackView;
  v7 = a3;
  [(UIStackView *)stackView addArrangedSubview:v7];
  [(MUStackView *)self setCustomSpacing:v7 afterView:a4];
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
  v20 = [(UIStackView *)self->_stackView leadingAnchor];
  v19 = [(MUStackView *)self leadingAnchor];
  v18 = [v20 constraintEqualToAnchor:v19];
  v21[0] = v18;
  v6 = [(UIStackView *)self->_stackView trailingAnchor];
  v7 = [(MUStackView *)self trailingAnchor];
  v8 = [v6 constraintEqualToAnchor:v7];
  v21[1] = v8;
  v9 = [(UIStackView *)self->_stackView topAnchor];
  v10 = [(MUStackView *)self topAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v21[2] = v11;
  v12 = [(UIStackView *)self->_stackView bottomAnchor];
  v13 = [(MUStackView *)self bottomAnchor];
  v14 = [v12 constraintEqualToAnchor:v13];
  v21[3] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:4];
  [v17 activateConstraints:v15];

  v16 = *MEMORY[0x1E69E9840];
}

- (MUStackView)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = MUStackView;
  v3 = [(MUStackView *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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