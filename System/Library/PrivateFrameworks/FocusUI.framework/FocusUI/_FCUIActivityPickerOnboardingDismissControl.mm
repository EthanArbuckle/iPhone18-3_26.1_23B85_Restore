@interface _FCUIActivityPickerOnboardingDismissControl
- (BOOL)adjustForContentSizeCategoryChange;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGRect)_imageViewFrameWithBounds:(CGRect)bounds;
- (CGSize)sizeThatFits:(CGSize)fits;
- (UIEdgeInsets)contentInsetsWithBounds:(CGRect)bounds;
- (_FCUIActivityPickerOnboardingDismissControl)initWithAction:(id)action;
- (double)_scaledValueForValue:(double)value;
- (void)_setNeedsTextAttributesUpdate;
- (void)_updateTextAttributes;
- (void)_updateTextAttributesIfNecessary;
- (void)layoutSubviews;
- (void)setAdjustsFontForContentSizeCategory:(BOOL)category;
@end

@implementation _FCUIActivityPickerOnboardingDismissControl

- (_FCUIActivityPickerOnboardingDismissControl)initWithAction:(id)action
{
  actionCopy = action;
  v14.receiver = self;
  v14.super_class = _FCUIActivityPickerOnboardingDismissControl;
  v5 = [(_FCUIActivityPickerOnboardingDismissControl *)&v14 init];
  v6 = v5;
  if (v5)
  {
    [(_FCUIActivityPickerOnboardingDismissControl *)v5 addAction:actionCopy forControlEvents:64];
    v7 = objc_alloc(MEMORY[0x277D755E8]);
    v8 = [MEMORY[0x277D755B8] _systemImageNamed:@"xmark"];
    v9 = [v7 initWithImage:v8];
    imageView = v6->_imageView;
    v6->_imageView = v9;

    [(UIImageView *)v6->_imageView setContentMode:4];
    v11 = v6->_imageView;
    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [(UIImageView *)v11 setTintColor:secondaryLabelColor];

    [(_FCUIActivityPickerOnboardingDismissControl *)v6 addSubview:v6->_imageView];
  }

  return v6;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = _FCUIActivityPickerOnboardingDismissControl;
  [(_FCUIActivityPickerOnboardingDismissControl *)&v4 layoutSubviews];
  [(_FCUIActivityPickerOnboardingDismissControl *)self _updateTextAttributesIfNecessary];
  imageView = self->_imageView;
  [(_FCUIActivityPickerOnboardingDismissControl *)self bounds];
  [(_FCUIActivityPickerOnboardingDismissControl *)self _imageViewFrameWithBounds:?];
  [(UIImageView *)imageView setFrame:?];
}

- (UIEdgeInsets)contentInsetsWithBounds:(CGRect)bounds
{
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  height = bounds.size.height;
  rect = bounds.size.height;
  [(_FCUIActivityPickerOnboardingDismissControl *)self _imageViewFrameWithBounds:?];
  v7 = v21.origin.x;
  v8 = v21.origin.y;
  v9 = v21.size.width;
  v10 = v21.size.height;
  MinY = CGRectGetMinY(v21);
  v22.origin.x = v7;
  v22.origin.y = v8;
  v22.size.width = v9;
  v22.size.height = v10;
  MinX = CGRectGetMinX(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = width;
  v23.size.height = height;
  MaxY = CGRectGetMaxY(v23);
  v24.origin.x = v7;
  v24.origin.y = v8;
  v24.size.width = v9;
  v24.size.height = v10;
  v12 = MaxY - CGRectGetMaxY(v24);
  v25.origin.x = x;
  v25.origin.y = y;
  v25.size.width = width;
  v25.size.height = rect;
  MaxX = CGRectGetMaxX(v25);
  v26.origin.x = v7;
  v26.origin.y = v8;
  v26.size.width = v9;
  v26.size.height = v10;
  v14 = MaxX - CGRectGetMaxX(v26);
  v16 = MinX;
  v15 = MinY;
  v17 = v12;
  result.right = v14;
  result.bottom = v17;
  result.left = v16;
  result.top = v15;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(_FCUIActivityPickerOnboardingDismissControl *)self _updateTextAttributesIfNecessary:fits.width];
  image = [(UIImageView *)self->_imageView image];
  [image size];
  v6 = v5;
  v8 = v7;

  v9 = fmax(v6, 44.0);
  v10 = fmax(v8, 44.0);
  result.height = v10;
  result.width = v9;
  return result;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [beginCopy view];
  v6 = view == self || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [beginCopy numberOfTouchesRequired] != 1 || objc_msgSend(beginCopy, "numberOfTapsRequired") != 1;

  return v6;
}

- (void)setAdjustsFontForContentSizeCategory:(BOOL)category
{
  if (self->_adjustsFontForContentSizeCategory != category)
  {
    self->_adjustsFontForContentSizeCategory = category;
    [(_FCUIActivityPickerOnboardingDismissControl *)self _setNeedsTextAttributesUpdate];
  }
}

- (BOOL)adjustForContentSizeCategoryChange
{
  traitCollection = [(_FCUIActivityPickerOnboardingDismissControl *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  v5 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, self->_preferredContentSizeCategory);
  if (v5)
  {
    [(_FCUIActivityPickerOnboardingDismissControl *)self _setNeedsTextAttributesUpdate];
  }

  return v5 != NSOrderedSame;
}

- (double)_scaledValueForValue:(double)value
{
  referenceFont = self->_referenceFont;
  if (!referenceFont)
  {
    v6 = MEMORY[0x277D74300];
    v7 = *MEMORY[0x277D76918];
    v8 = [MEMORY[0x277D75C80] traitCollectionWithPreferredContentSizeCategory:self->_preferredContentSizeCategory];
    v9 = [v6 preferredFontForTextStyle:v7 compatibleWithTraitCollection:v8];
    v10 = self->_referenceFont;
    self->_referenceFont = v9;

    referenceFont = self->_referenceFont;
  }

  [(UIFont *)referenceFont _scaledValueForValue:value];
  return result;
}

- (void)_setNeedsTextAttributesUpdate
{
  referenceFont = self->_referenceFont;
  self->_referenceFont = 0;

  [(_FCUIActivityPickerOnboardingDismissControl *)self setNeedsLayout];
}

- (void)_updateTextAttributes
{
  traitCollection = [(_FCUIActivityPickerOnboardingDismissControl *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  preferredContentSizeCategory = self->_preferredContentSizeCategory;
  self->_preferredContentSizeCategory = preferredContentSizeCategory;

  imageView = self->_imageView;
  v7 = MEMORY[0x277D755D0];
  [(_FCUIActivityPickerOnboardingDismissControl *)self _scaledValueForValue:11.0];
  if (v8 > 20.0)
  {
    v8 = 20.0;
  }

  v9 = [v7 configurationWithPointSize:v8];
  [(UIImageView *)imageView setPreferredSymbolConfiguration:v9];
}

- (void)_updateTextAttributesIfNecessary
{
  if ([(_FCUIActivityPickerOnboardingDismissControl *)self _needsTextAttributesUpdate])
  {

    [(_FCUIActivityPickerOnboardingDismissControl *)self _updateTextAttributes];
  }
}

- (CGRect)_imageViewFrameWithBounds:(CGRect)bounds
{
  image = [(UIImageView *)self->_imageView image];
  [image size];

  v4 = BSRectWithSize();

  MEMORY[0x2821DE758](v4);
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

@end