@interface SUUIBadgeTextAttachment
- (BOOL)isEqual:(id)equal;
- (CGSize)badgeSize;
- (SUUIBadgeTextAttachment)initWithViewElement:(id)element;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)_ensureImageIsLoaded;
- (void)_loadImageWithResourceName:(id)name fallbackImage:(id)image styleColor:(id)color;
@end

@implementation SUUIBadgeTextAttachment

- (SUUIBadgeTextAttachment)initWithViewElement:(id)element
{
  elementCopy = element;
  v24.receiver = self;
  v24.super_class = SUUIBadgeTextAttachment;
  v5 = [(SUUIBadgeTextAttachment *)&v24 init];
  if (v5)
  {
    if ([elementCopy badgeType])
    {
      fallbackImage = v5;
      v5 = 0;
    }

    else
    {
      fallbackImage = [elementCopy fallbackImage];
      resourceName = [elementCopy resourceName];
      style = [elementCopy style];
      ikColor = [style ikColor];
      color = [ikColor color];

      v11 = [elementCopy URL];
      imageURL = v5->_imageURL;
      v5->_imageURL = v11;

      v13 = *MEMORY[0x277CBF3A0];
      v14 = *(MEMORY[0x277CBF3A0] + 8);
      [elementCopy size];
      [(SUUIBadgeTextAttachment *)v5 setBounds:v13, v14, v15, v16];
      if (resourceName && ![MEMORY[0x277CCACC8] isMainThread])
      {
        v17 = dispatch_semaphore_create(0);
        [(SUUIBadgeTextAttachment *)v5 setImageLoadingSemaphore:v17];
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __47__SUUIBadgeTextAttachment_initWithViewElement___block_invoke;
        v19[3] = &unk_2798F70E0;
        v20 = v5;
        v21 = resourceName;
        v22 = fallbackImage;
        v23 = color;
        dispatch_async(MEMORY[0x277D85CD0], v19);
      }

      else
      {
        [(SUUIBadgeTextAttachment *)v5 _loadImageWithResourceName:resourceName fallbackImage:fallbackImage styleColor:color];
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  [(SUUIBadgeTextAttachment *)self _ensureImageIsLoaded];
  v3 = [(NSURL *)self->_imageURL hash];
  [(SUUIBadgeTextAttachment *)self bounds];
  v8 = ((((v3 + v4 * 10.0) + v5 * 100.0) + v6 * 1000.0) + v7 * 10000.0);
  image = [(SUUIBadgeTextAttachment *)self image];
  v10 = v8 + 100000 * [image hash];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v21 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      imageURL = self->_imageURL;
      if ((imageURL == v5->_imageURL || [(NSURL *)imageURL isEqual:?]) && ([(SUUIBadgeTextAttachment *)self bounds], v8 = v7, v10 = v9, v12 = v11, v14 = v13, [(SUUIBadgeTextAttachment *)v5 bounds], v24.origin.x = v15, v24.origin.y = v16, v24.size.width = v17, v24.size.height = v18, v23.origin.x = v8, v23.origin.y = v10, v23.size.width = v12, v23.size.height = v14, CGRectEqualToRect(v23, v24)))
      {
        [(SUUIBadgeTextAttachment *)self _ensureImageIsLoaded];
        [(SUUIBadgeTextAttachment *)v5 _ensureImageIsLoaded];
        image = [(SUUIBadgeTextAttachment *)self image];
        image2 = [(SUUIBadgeTextAttachment *)v5 image];
        if (image == image2)
        {
          v21 = 1;
        }

        else
        {
          v21 = [image isEqual:image2];
        }
      }

      else
      {
        v21 = 0;
      }
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

- (id)copyWithZone:(_NSZone *)zone
{
  [(SUUIBadgeTextAttachment *)self _ensureImageIsLoaded];
  v4 = objc_alloc_init(SUUIBadgeTextAttachment);
  objc_storeStrong(&v4->_imageURL, self->_imageURL);
  [(SUUIBadgeTextAttachment *)self bounds];
  [(SUUIBadgeTextAttachment *)v4 setBounds:?];
  image = [(SUUIBadgeTextAttachment *)self image];
  [(SUUIBadgeTextAttachment *)v4 setImage:image];

  return v4;
}

- (CGSize)badgeSize
{
  [(SUUIBadgeTextAttachment *)self bounds];
  v5 = v4;
  v6 = v3;
  if (v4 == *MEMORY[0x277CBF3A8] && v3 == *(MEMORY[0x277CBF3A8] + 8))
  {
    image = [(SUUIBadgeTextAttachment *)self image];
    v9 = image;
    if (image)
    {
      [image size];
      v5 = v10;
      v6 = v11;
    }
  }

  v12 = v5;
  v13 = v6;
  result.height = v13;
  result.width = v12;
  return result;
}

- (void)_ensureImageIsLoaded
{
  imageLoadingSemaphore = [(SUUIBadgeTextAttachment *)self imageLoadingSemaphore];
  if (imageLoadingSemaphore)
  {
    v3 = imageLoadingSemaphore;
    dispatch_semaphore_wait(imageLoadingSemaphore, 0xFFFFFFFFFFFFFFFFLL);
    imageLoadingSemaphore = v3;
  }
}

- (void)_loadImageWithResourceName:(id)name fallbackImage:(id)image styleColor:(id)color
{
  nameCopy = name;
  imageCopy = image;
  colorCopy = color;
  if (!nameCopy)
  {
    goto LABEL_16;
  }

  v10 = SUUIImageWithResourceName(nameCopy);
  v11 = v10;
  if (colorCopy && [v10 renderingMode] == 2)
  {
    v12 = [v11 _flatImageWithColor:colorCopy];

    v11 = v12;
  }

  if (!v11)
  {
LABEL_16:
    if (self->_imageURL)
    {
      v11 = 0;
    }

    else
    {
      v11 = imageCopy;
    }
  }

  [(SUUIBadgeTextAttachment *)self setImage:v11];
  imageLoadingSemaphore = [(SUUIBadgeTextAttachment *)self imageLoadingSemaphore];
  v14 = imageLoadingSemaphore;
  if (imageLoadingSemaphore)
  {
    dispatch_semaphore_signal(imageLoadingSemaphore);
    [(SUUIBadgeTextAttachment *)self setImageLoadingSemaphore:0];
  }
}

@end