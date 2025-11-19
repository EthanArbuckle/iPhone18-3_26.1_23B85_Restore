@interface DOCThumbnailDescriptor
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (DOCThumbnailDescriptor)initWithSize:(CGSize)a3 minimumSize:(double)a4 scale:(double)a5 style:(unint64_t)a6 isFolded:(BOOL)a7 isInteractive:(BOOL)a8 isFolder:(BOOL)a9;
- (id)description;
- (unint64_t)hash;
@end

@implementation DOCThumbnailDescriptor

- (DOCThumbnailDescriptor)initWithSize:(CGSize)a3 minimumSize:(double)a4 scale:(double)a5 style:(unint64_t)a6 isFolded:(BOOL)a7 isInteractive:(BOOL)a8 isFolder:(BOOL)a9
{
  v9 = a9;
  height = a3.height;
  width = a3.width;
  v19.receiver = self;
  v19.super_class = DOCThumbnailDescriptor;
  result = [(DOCThumbnailDescriptor *)&v19 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_minimumSize = a4;
    result->_scale = a5;
    result->_folded = a7;
    result->_interactive = a8;
    if (v9)
    {
      v18 = a6;
    }

    else
    {
      v18 = 1;
    }

    result->_style = v18;
  }

  return result;
}

- (unint64_t)hash
{
  v2 = (31 * (self->_minimumSize + (31 * (self->_size.height + (31 * self->_size.width))))) + self->_scale * 100.0;
  v3 = 100 * self->_style - v2 + 32 * v2;
  return 100 * self->_interactive - v3 + 32 * v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && (self->_size.width == v4->_size.width ? (v5 = self->_size.height == v4->_size.height) : (v5 = 0), v5 && self->_minimumSize == v4->_minimumSize && self->_scale == v4->_scale && self->_style == v4->_style && self->_folded == v4->_folded) && self->_interactive == v4->_interactive;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DOCThumbnailDescriptor;
  v4 = [(DOCThumbnailDescriptor *)&v8 description];
  v5 = NSStringFromCGSize(self->_size);
  v6 = [v3 stringWithFormat:@"%@ size=%@, minimumSize=%f, scale=%f, style=%lu, folded=%d, interactive=%d", v4, v5, *&self->_minimumSize, *&self->_scale, self->_style, self->_folded, self->_interactive];

  return v6;
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