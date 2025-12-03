@interface _CUIMultisizeImageSetSizeAndIndex
- (CGSize)size;
- (_CUIMultisizeImageSetSizeAndIndex)initWithSize:(CGSize)size index:(unsigned int)index idiom:(int64_t)idiom subtype:(unint64_t)subtype;
- (id)description;
@end

@implementation _CUIMultisizeImageSetSizeAndIndex

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (_CUIMultisizeImageSetSizeAndIndex)initWithSize:(CGSize)size index:(unsigned int)index idiom:(int64_t)idiom subtype:(unint64_t)subtype
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = _CUIMultisizeImageSetSizeAndIndex;
  result = [(_CUIMultisizeImageSetSizeAndIndex *)&v12 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_index = index;
    result->_idiom = idiom;
    result->_subtype = subtype;
  }

  return result;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = _CUIMultisizeImageSetSizeAndIndex;
  return [NSString stringWithFormat:@"%@ size: (%d, %d) index: %d idiom: %d subtype: %d", [(_CUIMultisizeImageSetSizeAndIndex *)&v3 description], self->_size.width, self->_size.height, self->_index, self->_idiom, self->_subtype];
}

@end