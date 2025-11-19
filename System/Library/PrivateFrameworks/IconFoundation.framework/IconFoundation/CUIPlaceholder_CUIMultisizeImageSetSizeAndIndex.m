@interface CUIPlaceholder_CUIMultisizeImageSetSizeAndIndex
- (CGSize)size;
- (CUIPlaceholder_CUIMultisizeImageSetSizeAndIndex)initWithSize:(CGSize)a3 index:(unsigned int)a4 idiom:(int64_t)a5 subtype:(unint64_t)a6;
- (id)description;
@end

@implementation CUIPlaceholder_CUIMultisizeImageSetSizeAndIndex

- (CUIPlaceholder_CUIMultisizeImageSetSizeAndIndex)initWithSize:(CGSize)a3 index:(unsigned int)a4 idiom:(int64_t)a5 subtype:(unint64_t)a6
{
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = CUIPlaceholder_CUIMultisizeImageSetSizeAndIndex;
  result = [(CUIPlaceholder_CUIMultisizeImageSetSizeAndIndex *)&v12 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_index = a4;
    result->_idiom = a5;
    result->_subtype = a6;
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