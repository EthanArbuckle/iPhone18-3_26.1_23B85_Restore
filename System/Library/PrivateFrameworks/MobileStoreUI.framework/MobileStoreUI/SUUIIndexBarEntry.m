@interface SUUIIndexBarEntry
+ (id)entryWithAttributedString:(id)a3;
+ (id)entryWithImage:(id)a3;
+ (id)placeholderEntryWithSize:(CGSize)a3;
+ (id)systemCombinedEntry;
- (BOOL)isEqual:(id)a3;
- (CGSize)_calculatedContentSize;
- (CGSize)contentSize;
- (CGSize)size;
- (UIColor)tintColor;
- (UIEdgeInsets)contentEdgeInsets;
- (void)setTintColor:(id)a3;
@end

@implementation SUUIIndexBarEntry

+ (id)entryWithAttributedString:(id)a3
{
  v3 = a3;
  v4 = [[SUUIAttributedStringIndexBarEntry alloc] initWithAttributedString:v3];

  return v4;
}

+ (id)entryWithImage:(id)a3
{
  v3 = a3;
  v4 = [[SUUIImageIndexBarEntry alloc] initWithImage:v3];

  return v4;
}

+ (id)placeholderEntryWithSize:(CGSize)a3
{
  v3 = [[SUUIPlaceholderIndexBarEntry alloc] initWithPlaceholderSize:a3.width, a3.height];

  return v3;
}

+ (id)systemCombinedEntry
{
  v2 = objc_alloc_init(SUUISystemCombinedIndexBarEntry);

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && v4->_visibilityPriority == self->_visibilityPriority && v4->_entryType == self->_entryType;
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

- (void)setTintColor:(id)a3
{
  v5 = a3;
  tintColor = self->_tintColor;
  if (tintColor != v5)
  {
    v7 = v5;
    tintColor = [tintColor isEqual:v5];
    v5 = v7;
    if ((tintColor & 1) == 0)
    {
      objc_storeStrong(&self->_tintColor, a3);
      tintColor = [(SUUIIndexBarEntry *)self _tintColorDidChange];
      v5 = v7;
    }
  }

  MEMORY[0x2821F96F8](tintColor, v5);
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
    v3 = tintColor;
  }

  else
  {
    v3 = [MEMORY[0x277D75348] blackColor];
  }

  return v3;
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