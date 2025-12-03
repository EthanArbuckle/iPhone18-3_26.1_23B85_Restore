@interface _SUUIViewElementTextLayoutCacheBestGuessCacheKey
- (BOOL)isEqual:(id)equal;
@end

@implementation _SUUIViewElementTextLayoutCacheBestGuessCacheKey

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    v7 = (objc_opt_isKindOfClass() & 1) != 0 && ((text = equalCopy->_text, text == self->_text) || [(NSString *)text isEqual:?]) && ((font = equalCopy->_font, font == self->_font) || [(UIFont *)font isEqual:?]) && equalCopy->_width == self->_width;
  }

  return v7;
}

@end