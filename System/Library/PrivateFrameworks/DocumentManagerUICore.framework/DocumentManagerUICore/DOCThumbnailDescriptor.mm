@interface DOCThumbnailDescriptor
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (DOCThumbnailDescriptor)initWithSize:(CGSize)size minimumSize:(double)minimumSize scale:(double)scale style:(unint64_t)style isFolded:(BOOL)folded isInteractive:(BOOL)interactive isFolder:(BOOL)folder;
- (id)description;
- (unint64_t)hash;
@end

@implementation DOCThumbnailDescriptor

- (DOCThumbnailDescriptor)initWithSize:(CGSize)size minimumSize:(double)minimumSize scale:(double)scale style:(unint64_t)style isFolded:(BOOL)folded isInteractive:(BOOL)interactive isFolder:(BOOL)folder
{
  folderCopy = folder;
  height = size.height;
  width = size.width;
  v19.receiver = self;
  v19.super_class = DOCThumbnailDescriptor;
  result = [(DOCThumbnailDescriptor *)&v19 init];
  if (result)
  {
    result->_size.width = width;
    result->_size.height = height;
    result->_minimumSize = minimumSize;
    result->_scale = scale;
    result->_folded = folded;
    result->_interactive = interactive;
    if (folderCopy)
    {
      styleCopy = style;
    }

    else
    {
      styleCopy = 1;
    }

    result->_style = styleCopy;
  }

  return result;
}

- (unint64_t)hash
{
  v2 = (31 * (self->_minimumSize + (31 * (self->_size.height + (31 * self->_size.width))))) + self->_scale * 100.0;
  v3 = 100 * self->_style - v2 + 32 * v2;
  return 100 * self->_interactive - v3 + 32 * v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    v6 = (objc_opt_isKindOfClass() & 1) != 0 && (self->_size.width == equalCopy->_size.width ? (v5 = self->_size.height == equalCopy->_size.height) : (v5 = 0), v5 && self->_minimumSize == equalCopy->_minimumSize && self->_scale == equalCopy->_scale && self->_style == equalCopy->_style && self->_folded == equalCopy->_folded) && self->_interactive == equalCopy->_interactive;
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