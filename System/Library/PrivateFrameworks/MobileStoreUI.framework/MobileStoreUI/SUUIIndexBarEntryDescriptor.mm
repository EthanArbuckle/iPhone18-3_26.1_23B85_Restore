@interface SUUIIndexBarEntryDescriptor
+ (id)entryDescriptorWithArtwork:(id)a3;
+ (id)entryDescriptorWithAttributedString:(id)a3;
+ (id)entryDescriptorWithImage:(id)a3;
+ (id)placeholderEntryDescriptorWithSize:(CGSize)a3;
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (UIEdgeInsets)contentEdgeInsets;
- (unint64_t)hash;
- (void)setArtwork:(id)a3;
- (void)setAttributedString:(id)a3;
- (void)setImage:(id)a3;
@end

@implementation SUUIIndexBarEntryDescriptor

- (unint64_t)hash
{
  entryDescriptorType = self->_entryDescriptorType;
  v4 = [(SUUIArtwork *)self->_artwork hash]^ entryDescriptorType;
  v5 = [(NSAttributedString *)self->_attributedString hash];
  return v4 ^ v5 ^ [(UIImage *)self->_image hash]^ (self->_size.width * 1000.0) ^ (self->_size.height * 10000.0);
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || v4->_entryDescriptorType != self->_entryDescriptorType || (v4->_size.width == self->_size.width ? (v5 = v4->_size.height == self->_size.height) : (v5 = 0), !v5 || (image = v4->_image, image != self->_image) && ![(UIImage *)image isEqual:?]|| (attributedString = v4->_attributedString, attributedString != self->_attributedString) && ![(NSAttributedString *)attributedString isEqualToAttributedString:?]))
  {
    v9 = 0;
    goto LABEL_17;
  }

  artwork = v4->_artwork;
  if (artwork == self->_artwork)
  {
LABEL_16:
    v9 = 1;
    goto LABEL_17;
  }

  v9 = [(SUUIArtwork *)artwork isEqual:?];
LABEL_17:

  return v9;
}

+ (id)entryDescriptorWithArtwork:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SUUIIndexBarEntryDescriptor);
  [(SUUIIndexBarEntryDescriptor *)v4 setEntryDescriptorType:2];
  [(SUUIIndexBarEntryDescriptor *)v4 setArtwork:v3];

  return v4;
}

+ (id)entryDescriptorWithAttributedString:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SUUIIndexBarEntryDescriptor);
  [(SUUIIndexBarEntryDescriptor *)v4 setEntryDescriptorType:1];
  [(SUUIIndexBarEntryDescriptor *)v4 setAttributedString:v3];

  return v4;
}

+ (id)entryDescriptorWithImage:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SUUIIndexBarEntryDescriptor);
  [(SUUIIndexBarEntryDescriptor *)v4 setEntryDescriptorType:3];
  [(SUUIIndexBarEntryDescriptor *)v4 setImage:v3];

  return v4;
}

+ (id)placeholderEntryDescriptorWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = objc_alloc_init(SUUIIndexBarEntryDescriptor);
  [(SUUIIndexBarEntryDescriptor *)v5 setEntryDescriptorType:0];
  [(SUUIIndexBarEntryDescriptor *)v5 setSize:width, height];

  return v5;
}

- (void)setArtwork:(id)a3
{
  v5 = a3;
  artwork = self->_artwork;
  if (artwork != v5)
  {
    v9 = v5;
    artwork = [artwork isEqual:v5];
    v5 = v9;
    if ((artwork & 1) == 0)
    {
      objc_storeStrong(&self->_artwork, a3);
      artwork = [(SUUIArtwork *)self->_artwork size];
      v5 = v9;
      self->_size.width = v7;
      self->_size.height = v8;
    }
  }

  MEMORY[0x2821F96F8](artwork, v5);
}

- (void)setAttributedString:(id)a3
{
  v4 = a3;
  attributedString = self->_attributedString;
  if (attributedString != v4)
  {
    v10 = v4;
    attributedString = [attributedString isEqualToAttributedString:v4];
    v4 = v10;
    if ((attributedString & 1) == 0)
    {
      v6 = [v10 copy];
      v7 = self->_attributedString;
      self->_attributedString = v6;

      attributedString = [(NSAttributedString *)self->_attributedString size];
      v4 = v10;
      self->_size.width = v8;
      self->_size.height = v9;
    }
  }

  MEMORY[0x2821F96F8](attributedString, v4);
}

- (void)setImage:(id)a3
{
  v5 = a3;
  image = self->_image;
  if (image != v5)
  {
    v9 = v5;
    image = [image isEqual:v5];
    v5 = v9;
    if ((image & 1) == 0)
    {
      objc_storeStrong(&self->_image, a3);
      image = [(UIImage *)self->_image size];
      v5 = v9;
      self->_size.width = v7;
      self->_size.height = v8;
    }
  }

  MEMORY[0x2821F96F8](image, v5);
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

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

@end