@interface _SUUIViewElementTextLayoutCacheBestGuessCacheKey
- (BOOL)isEqual:(id)a3;
@end

@implementation _SUUIViewElementTextLayoutCacheBestGuessCacheKey

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && ((text = v4->_text, text == self->_text) || [(NSString *)text isEqual:?]) && ((font = v4->_font, font == self->_font) || [(UIFont *)font isEqual:?]) && v4->_width == self->_width;
  }

  return v7;
}

@end