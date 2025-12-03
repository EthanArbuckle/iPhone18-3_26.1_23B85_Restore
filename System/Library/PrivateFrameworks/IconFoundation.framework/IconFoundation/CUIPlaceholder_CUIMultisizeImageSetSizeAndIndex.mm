@interface CUIPlaceholder_CUIMultisizeImageSetSizeAndIndex
- (CGSize)size;
- (CUIPlaceholder_CUIMultisizeImageSetSizeAndIndex)initWithSize:(CGSize)size index:(unsigned int)index idiom:(int64_t)idiom subtype:(unint64_t)subtype;
- (id)description;
@end

@implementation CUIPlaceholder_CUIMultisizeImageSetSizeAndIndex

- (CUIPlaceholder_CUIMultisizeImageSetSizeAndIndex)initWithSize:(CGSize)size index:(unsigned int)index idiom:(int64_t)idiom subtype:(unint64_t)subtype
{
  height = size.height;
  width = size.width;
  v12.receiver = self;
  v12.super_class = CUIPlaceholder_CUIMultisizeImageSetSizeAndIndex;
  result = [(CUIPlaceholder_CUIMultisizeImageSetSizeAndIndex *)&v12 init];
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
  v3.super_class = CUIPlaceholder_CUIMultisizeImageSetSizeAndIndex;
  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ size: (%d, %d) index: %d idiom: %d subtype: %d", -[CUIPlaceholder_CUIMultisizeImageSetSizeAndIndex description](&v3, sel_description), self->_size.width, self->_size.height, self->_index, self->_idiom, self->_subtype];
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end