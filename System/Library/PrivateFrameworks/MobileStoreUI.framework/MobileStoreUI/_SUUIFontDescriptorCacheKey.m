@interface _SUUIFontDescriptorCacheKey
- (BOOL)isEqual:(id)a3;
- (_SUUIFontDescriptorCacheKey)initWithTextStyle:(__CFString *)a3 sizeCategory:(id)a4;
@end

@implementation _SUUIFontDescriptorCacheKey

- (_SUUIFontDescriptorCacheKey)initWithTextStyle:(__CFString *)a3 sizeCategory:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _SUUIFontDescriptorCacheKey;
  v8 = [(_SUUIFontDescriptorCacheKey *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_textStyle = a3;
    objc_storeStrong(&v8->_sizeCategory, a4);
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    if (self == v5)
    {
      v8 = 1;
    }

    else if (CFEqual([(_SUUIFontDescriptorCacheKey *)self textStyle], [(_SUUIFontDescriptorCacheKey *)v5 textStyle]))
    {
      v6 = [(_SUUIFontDescriptorCacheKey *)self sizeCategory];
      v7 = [(_SUUIFontDescriptorCacheKey *)v5 sizeCategory];
      v8 = [v6 isEqual:v7];
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