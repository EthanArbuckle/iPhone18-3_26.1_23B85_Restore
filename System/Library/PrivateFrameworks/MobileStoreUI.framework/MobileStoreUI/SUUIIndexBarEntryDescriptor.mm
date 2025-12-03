@interface SUUIIndexBarEntryDescriptor
+ (id)entryDescriptorWithArtwork:(id)artwork;
+ (id)entryDescriptorWithAttributedString:(id)string;
+ (id)entryDescriptorWithImage:(id)image;
+ (id)placeholderEntryDescriptorWithSize:(CGSize)size;
- (BOOL)isEqual:(id)equal;
- (CGSize)size;
- (UIEdgeInsets)contentEdgeInsets;
- (unint64_t)hash;
- (void)setArtwork:(id)artwork;
- (void)setAttributedString:(id)string;
- (void)setImage:(id)image;
@end

@implementation SUUIIndexBarEntryDescriptor

- (unint64_t)hash
{
  entryDescriptorType = self->_entryDescriptorType;
  v4 = [(SUUIArtwork *)self->_artwork hash]^ entryDescriptorType;
  v5 = [(NSAttributedString *)self->_attributedString hash];
  return v4 ^ v5 ^ [(UIImage *)self->_image hash]^ (self->_size.width * 1000.0) ^ (self->_size.height * 10000.0);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    goto LABEL_16;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || equalCopy->_entryDescriptorType != self->_entryDescriptorType || (equalCopy->_size.width == self->_size.width ? (v5 = equalCopy->_size.height == self->_size.height) : (v5 = 0), !v5 || (image = equalCopy->_image, image != self->_image) && ![(UIImage *)image isEqual:?]|| (attributedString = equalCopy->_attributedString, attributedString != self->_attributedString) && ![(NSAttributedString *)attributedString isEqualToAttributedString:?]))
  {
    v9 = 0;
    goto LABEL_17;
  }

  artwork = equalCopy->_artwork;
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

+ (id)entryDescriptorWithArtwork:(id)artwork
{
  artworkCopy = artwork;
  v4 = objc_alloc_init(SUUIIndexBarEntryDescriptor);
  [(SUUIIndexBarEntryDescriptor *)v4 setEntryDescriptorType:2];
  [(SUUIIndexBarEntryDescriptor *)v4 setArtwork:artworkCopy];

  return v4;
}

+ (id)entryDescriptorWithAttributedString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(SUUIIndexBarEntryDescriptor);
  [(SUUIIndexBarEntryDescriptor *)v4 setEntryDescriptorType:1];
  [(SUUIIndexBarEntryDescriptor *)v4 setAttributedString:stringCopy];

  return v4;
}

+ (id)entryDescriptorWithImage:(id)image
{
  imageCopy = image;
  v4 = objc_alloc_init(SUUIIndexBarEntryDescriptor);
  [(SUUIIndexBarEntryDescriptor *)v4 setEntryDescriptorType:3];
  [(SUUIIndexBarEntryDescriptor *)v4 setImage:imageCopy];

  return v4;
}

+ (id)placeholderEntryDescriptorWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v5 = objc_alloc_init(SUUIIndexBarEntryDescriptor);
  [(SUUIIndexBarEntryDescriptor *)v5 setEntryDescriptorType:0];
  [(SUUIIndexBarEntryDescriptor *)v5 setSize:width, height];

  return v5;
}

- (void)setArtwork:(id)artwork
{
  artworkCopy = artwork;
  artwork = self->_artwork;
  if (artwork != artworkCopy)
  {
    v9 = artworkCopy;
    artwork = [artwork isEqual:artworkCopy];
    artworkCopy = v9;
    if ((artwork & 1) == 0)
    {
      objc_storeStrong(&self->_artwork, artwork);
      artwork = [(SUUIArtwork *)self->_artwork size];
      artworkCopy = v9;
      self->_size.width = v7;
      self->_size.height = v8;
    }
  }

  MEMORY[0x2821F96F8](artwork, artworkCopy);
}

- (void)setAttributedString:(id)string
{
  stringCopy = string;
  attributedString = self->_attributedString;
  if (attributedString != stringCopy)
  {
    v10 = stringCopy;
    attributedString = [attributedString isEqualToAttributedString:stringCopy];
    stringCopy = v10;
    if ((attributedString & 1) == 0)
    {
      v6 = [v10 copy];
      v7 = self->_attributedString;
      self->_attributedString = v6;

      attributedString = [(NSAttributedString *)self->_attributedString size];
      stringCopy = v10;
      self->_size.width = v8;
      self->_size.height = v9;
    }
  }

  MEMORY[0x2821F96F8](attributedString, stringCopy);
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = self->_image;
  if (image != imageCopy)
  {
    v9 = imageCopy;
    image = [image isEqual:imageCopy];
    imageCopy = v9;
    if ((image & 1) == 0)
    {
      objc_storeStrong(&self->_image, image);
      image = [(UIImage *)self->_image size];
      imageCopy = v9;
      self->_size.width = v7;
      self->_size.height = v8;
    }
  }

  MEMORY[0x2821F96F8](image, imageCopy);
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