@interface _SUUIFontDescriptorCacheKey
- (BOOL)isEqual:(id)equal;
- (_SUUIFontDescriptorCacheKey)initWithTextStyle:(__CFString *)style sizeCategory:(id)category;
@end

@implementation _SUUIFontDescriptorCacheKey

- (_SUUIFontDescriptorCacheKey)initWithTextStyle:(__CFString *)style sizeCategory:(id)category
{
  categoryCopy = category;
  v11.receiver = self;
  v11.super_class = _SUUIFontDescriptorCacheKey;
  v8 = [(_SUUIFontDescriptorCacheKey *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_textStyle = style;
    objc_storeStrong(&v8->_sizeCategory, category);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    if (self == v5)
    {
      v8 = 1;
    }

    else if (CFEqual([(_SUUIFontDescriptorCacheKey *)self textStyle], [(_SUUIFontDescriptorCacheKey *)v5 textStyle]))
    {
      sizeCategory = [(_SUUIFontDescriptorCacheKey *)self sizeCategory];
      sizeCategory2 = [(_SUUIFontDescriptorCacheKey *)v5 sizeCategory];
      v8 = [sizeCategory isEqual:sizeCategory2];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end