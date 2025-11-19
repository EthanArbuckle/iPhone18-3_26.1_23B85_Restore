@interface CPSLabelWithPlaceholder
- (CGSize)_desiredPlaceholderSize;
- (CGSize)intrinsicContentSize;
- (CPSLabelWithPlaceholder)initWithCoder:(id)a3;
- (CPSLabelWithPlaceholder)initWithFrame:(CGRect)a3;
- (void)_commonInit;
- (void)_placeholderInputsDidChange;
- (void)layoutSubviews;
- (void)setAttributedText:(id)a3;
- (void)setPlaceholderColor:(id)a3;
- (void)setText:(id)a3;
@end

@implementation CPSLabelWithPlaceholder

- (CPSLabelWithPlaceholder)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = CPSLabelWithPlaceholder;
  v3 = [(CPSLabelWithPlaceholder *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(CPSLabelWithPlaceholder *)v3 _commonInit];
    [(CPSLabelWithPlaceholder *)v4 _placeholderInputsDidChange];
    v5 = v4;
  }

  return v4;
}

- (CPSLabelWithPlaceholder)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CPSLabelWithPlaceholder;
  v3 = [(CPSLabelWithPlaceholder *)&v10 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(CPSLabelWithPlaceholder *)v3 _commonInit];
    v9.receiver = v4;
    v9.super_class = CPSLabelWithPlaceholder;
    v5 = [(CPSLabelWithPlaceholder *)&v9 text];
    text = v4->_text;
    v4->_text = v5;

    [(CPSLabelWithPlaceholder *)v4 _placeholderInputsDidChange];
    v7 = v4;
  }

  return v4;
}

- (void)_commonInit
{
  v3 = [(CPSLabelWithPlaceholder *)self placeholderColor];
  [(CPSLabelWithPlaceholder *)self setPlaceholderColor:v3];

  if (self->_placeholderWidth == 0.0)
  {
    self->_placeholderWidth = 100.0;
  }

  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  placeholderView = self->_placeholderView;
  self->_placeholderView = v4;

  [(UIView *)self->_placeholderView setBackgroundColor:self->_placeholderColor];
  v6 = self->_placeholderView;

  [(CPSLabelWithPlaceholder *)self addSubview:v6];
}

- (CGSize)intrinsicContentSize
{
  if ([(UIView *)self->_placeholderView isHidden])
  {
    v11.receiver = self;
    v11.super_class = CPSLabelWithPlaceholder;
    [(CPSLabelWithPlaceholder *)&v11 intrinsicContentSize];
    placeholderWidth = v3;
    v6 = v5;
  }

  else
  {
    placeholderWidth = self->_placeholderWidth;
    v7 = [(CPSLabelWithPlaceholder *)self font];
    [v7 _bodyLeading];
    v6 = v8;
  }

  v9 = placeholderWidth;
  v10 = v6;
  result.height = v10;
  result.width = v9;
  return result;
}

- (void)layoutSubviews
{
  v18.receiver = self;
  v18.super_class = CPSLabelWithPlaceholder;
  [(CPSLabelWithPlaceholder *)&v18 layoutSubviews];
  if (![(UIView *)self->_placeholderView isHidden])
  {
    [(CPSLabelWithPlaceholder *)self bounds];
    v4 = v3;
    v6 = v5;
    v8 = v7;
    v10 = v9;
    [(CPSLabelWithPlaceholder *)self _desiredPlaceholderSize];
    v12 = v11;
    v14 = v13;
    v19.origin.x = v4;
    v19.origin.y = v6;
    v19.size.width = v8;
    v19.size.height = v10;
    v15 = fmin(v12, CGRectGetWidth(v19));
    v20.origin.x = v4;
    v20.origin.y = v6;
    v20.size.width = v8;
    v20.size.height = v10;
    v16 = fmin(v14, CGRectGetHeight(v20));
    if ([(CPSLabelWithPlaceholder *)self effectiveUserInterfaceLayoutDirection])
    {
      v21.origin.x = v4;
      v21.origin.y = v6;
      v21.size.width = v8;
      v21.size.height = v10;
      v17 = CGRectGetWidth(v21) - v15;
    }

    else
    {
      v17 = 0.0;
    }

    v22.origin.x = v4;
    v22.origin.y = v6;
    v22.size.width = v8;
    v22.size.height = v10;
    [(UIView *)self->_placeholderView setFrame:v17, (CGRectGetHeight(v22) - v16) * 0.5, v15, v16];
    [(UIView *)self->_placeholderView frame];
    [(UIView *)self->_placeholderView _setContinuousCornerRadius:CGRectGetHeight(v23) * 0.5];
  }
}

- (void)setAttributedText:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"CPSLabelWithPlacement does not support attributed text." userInfo:0];
  objc_exception_throw(v4);
}

- (void)setText:(id)a3
{
  v4 = a3;
  text = self->_text;
  if (text != v4)
  {
    v8 = v4;
    if (![(NSString *)text isEqualToString:v4])
    {
      v6 = [(NSString *)v8 copy];
      v7 = self->_text;
      self->_text = v6;

      [(CPSLabelWithPlaceholder *)self _placeholderInputsDidChange];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)setPlaceholderColor:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v4 = [MEMORY[0x277D75348] systemFillColor];
  }

  objc_storeStrong(&self->_placeholderColor, v4);
  if (!v5)
  {
  }

  [(UIView *)self->_placeholderView setBackgroundColor:self->_placeholderColor];
}

- (void)_placeholderInputsDidChange
{
  v3 = [(NSString *)self->_text length];
  text = self->_text;
  if (v3)
  {
    v7.receiver = self;
    v7.super_class = CPSLabelWithPlaceholder;
    [(CPSLabelWithPlaceholder *)&v7 setText:text];
    p_placeholderView = &self->_placeholderView;
    if ([(UIView *)self->_placeholderView isHidden])
    {
      return;
    }

    goto LABEL_3;
  }

  if (![(NSString *)self->_text length])
  {
    p_placeholderView = &self->_placeholderView;
    if ([(UIView *)self->_placeholderView isHidden])
    {
      v6.receiver = self;
      v6.super_class = CPSLabelWithPlaceholder;
      [(CPSLabelWithPlaceholder *)&v6 setText:&stru_285684560];
LABEL_3:
      [(UIView *)*p_placeholderView setHidden:v3 != 0];
      [(CPSLabelWithPlaceholder *)self invalidateIntrinsicContentSize];
      [(CPSLabelWithPlaceholder *)self setNeedsLayout];
    }
  }
}

- (CGSize)_desiredPlaceholderSize
{
  v3 = [(CPSLabelWithPlaceholder *)self font];
  v4 = [(CPSLabelWithPlaceholder *)self traitCollection];
  v5 = [v3 _fontAdjustedForContentSizeCategoryCompatibleWithTraitCollection:v4];
  [v5 capHeight];
  v7 = round(v6);

  placeholderWidth = self->_placeholderWidth;
  v9 = v7;
  result.height = v9;
  result.width = placeholderWidth;
  return result;
}

@end