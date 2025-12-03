@interface SUUIIndexBarEntry
+ (id)entryWithAttributedString:(id)string;
+ (id)entryWithImage:(id)image;
+ (id)placeholderEntryWithSize:(CGSize)size;
+ (id)systemCombinedEntry;
- (BOOL)isEqual:(id)equal;
- (CGSize)_calculatedContentSize;
- (CGSize)contentSize;
- (CGSize)size;
- (UIColor)tintColor;
- (UIEdgeInsets)contentEdgeInsets;
- (void)setTintColor:(id)color;
@end

@implementation SUUIIndexBarEntry

+ (id)entryWithAttributedString:(id)string
{
  stringCopy = string;
  v4 = [[SUUIAttributedStringIndexBarEntry alloc] initWithAttributedString:stringCopy];

  return v4;
}

+ (id)entryWithImage:(id)image
{
  imageCopy = image;
  v4 = [[SUUIImageIndexBarEntry alloc] initWithImage:imageCopy];

  return v4;
}

+ (id)placeholderEntryWithSize:(CGSize)size
{
  v3 = [[SUUIPlaceholderIndexBarEntry alloc] initWithPlaceholderSize:size.width, size.height];

  return v3;
}

+ (id)systemCombinedEntry
{
  v2 = objc_alloc_init(SUUISystemCombinedIndexBarEntry);

  return v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && equalCopy->_visibilityPriority == self->_visibilityPriority && equalCopy->_entryType == self->_entryType;
  }

  return v5;
}

- (CGSize)contentSize
{
  if (self->_hasValidContentSize)
  {
    width = self->_contentSize.width;
    height = self->_contentSize.height;
  }

  else
  {
    [(SUUIIndexBarEntry *)self _calculatedContentSize];
    self->_contentSize.width = width;
    self->_contentSize.height = height;
    self->_hasValidContentSize = 1;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (void)setTintColor:(id)color
{
  colorCopy = color;
  tintColor = self->_tintColor;
  if (tintColor != colorCopy)
  {
    v7 = colorCopy;
    tintColor = [tintColor isEqual:colorCopy];
    colorCopy = v7;
    if ((tintColor & 1) == 0)
    {
      objc_storeStrong(&self->_tintColor, color);
      tintColor = [(SUUIIndexBarEntry *)self _tintColorDidChange];
      colorCopy = v7;
    }
  }

  MEMORY[0x2821F96F8](tintColor, colorCopy);
}

- (CGSize)size
{
  [(SUUIIndexBarEntry *)self contentSize];
  v4 = v3 + self->_contentEdgeInsets.left + self->_contentEdgeInsets.right;
  v6 = v5 + self->_contentEdgeInsets.top + self->_contentEdgeInsets.bottom;
  result.height = v6;
  result.width = v4;
  return result;
}

- (UIColor)tintColor
{
  tintColor = self->_tintColor;
  if (tintColor)
  {
    blackColor = tintColor;
  }

  else
  {
    blackColor = [MEMORY[0x277D75348] blackColor];
  }

  return blackColor;
}

- (CGSize)_calculatedContentSize
{
  v2 = *MEMORY[0x277CBF3A8];
  v3 = *(MEMORY[0x277CBF3A8] + 8);
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIEdgeInsets)contentEdgeInsets
{
  top = self->_contentEdgeInsets.top;
  left = self->_contentEdgeInsets.left;
  bottom = self->_contentEdgeInsets.bottom;
  right = self->_contentEdgeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end