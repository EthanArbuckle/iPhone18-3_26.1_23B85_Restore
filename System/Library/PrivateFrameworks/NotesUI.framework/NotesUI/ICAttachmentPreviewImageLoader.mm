@interface ICAttachmentPreviewImageLoader
+ (id)orientedImage:(id)image withBackground:(int)background;
+ (id)orientedImage:(id)image withTransform:(CGAffineTransform *)transform background:(int)background backgroundTransform:(CGAffineTransform *)backgroundTransform;
- (BOOL)canLoadImage;
- (ICAttachmentPreviewImageLoader)initWithOriginalImage:(id)image orientedImage:(id)orientedImage data:(id)data scale:(double)scale previewImageURLs:(id)ls delayLoadingURLs:(BOOL)rLs;
- (id)loadImage;
- (id)loadOrientedImage;
- (void)loadData;
- (void)loadImage;
@end

@implementation ICAttachmentPreviewImageLoader

+ (id)orientedImage:(id)image withBackground:(int)background
{
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v4;
  v9 = *(MEMORY[0x1E695EFD0] + 32);
  v7[0] = v8[0];
  v7[1] = v4;
  v7[2] = v9;
  v5 = [self orientedImage:image withTransform:v8 background:*&background backgroundTransform:v7];

  return v5;
}

+ (id)orientedImage:(id)image withTransform:(CGAffineTransform *)transform background:(int)background backgroundTransform:(CGAffineTransform *)backgroundTransform
{
  v39 = *MEMORY[0x1E69E9840];
  imageCopy = image;
  if (imageCopy)
  {
    v9 = *&transform->c;
    *&transform.a = *&transform->a;
    *&transform.c = v9;
    *&transform.tx = *&transform->tx;
    IsIdentity = CGAffineTransformIsIdentity(&transform);
    if (background || !IsIdentity)
    {
      ic_CGImage = [imageCopy ic_CGImage];
      if (ic_CGImage)
      {
        v12 = ic_CGImage;
        v13 = *&transform->c;
        *&v37.a = *&transform->a;
        *&v37.c = v13;
        *&v37.tx = *&transform->tx;
        CGAffineTransformInvert(&transform, &v37);
        v14 = *&transform.c;
        *&transform->a = *&transform.a;
        *&transform->c = v14;
        *&transform->tx = *&transform.tx;
        v15 = *MEMORY[0x1E695EFF8];
        v16 = *(MEMORY[0x1E695EFF8] + 8);
        Width = CGImageGetWidth(v12);
        Height = CGImageGetHeight(v12);
        v19 = *&transform->c;
        *&transform.a = *&transform->a;
        *&transform.c = v19;
        *&transform.tx = *&transform->tx;
        v20 = v15;
        *&v19 = v16;
        v21 = Width;
        v22 = Height;
        v41 = CGRectApplyAffineTransform(*(&v19 - 8), &transform);
        x = v41.origin.x;
        y = v41.origin.y;
        v25 = v41.size.width;
        v26 = v41.size.height;
        v27 = TSUCreateRGBABitmapContext();
        if (v27)
        {
          v28 = v27;
          if (background == 2)
          {
            ic_attachmentBackgroundColor = [MEMORY[0x1E69DC888] ic_attachmentBackgroundColor];
            CGContextSetFillColorWithColor(v28, [ic_attachmentBackgroundColor CGColor]);
            v43.origin.x = 0.0;
            v43.origin.y = 0.0;
            v43.size.width = v25;
            v43.size.height = v26;
            CGContextFillRect(v28, v43);
          }

          else if (background == 1)
          {
            *&transform.a = xmmword_1D4434848;
            *&transform.c = unk_1D4434858;
            ColorSpace = CGBitmapContextGetColorSpace(v27);
            v30 = CGColorCreate(ColorSpace, &transform.a);
            CGContextSetFillColorWithColor(v28, v30);
            v42.origin.x = 0.0;
            v42.origin.y = 0.0;
            v42.size.width = v25;
            v42.size.height = v26;
            CGContextFillRect(v28, v42);
            CGColorRelease(v30);
          }

          CGContextTranslateCTM(v28, -x, -y);
          v32 = *&transform->c;
          *&transform.a = *&transform->a;
          *&transform.c = v32;
          *&transform.tx = *&transform->tx;
          CGContextConcatCTM(v28, &transform);
          ic_CGImage2 = [imageCopy ic_CGImage];
          v44.origin.x = v15;
          v44.origin.y = v16;
          v44.size.width = Width;
          v44.size.height = Height;
          CGContextDrawImage(v28, v44, ic_CGImage2);
          Image = CGBitmapContextCreateImage(v28);
          CGContextRelease(v28);
          if (Image)
          {
            v35 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image];
            CGImageRelease(Image);

            imageCopy = v35;
          }
        }
      }
    }
  }

  return imageCopy;
}

- (ICAttachmentPreviewImageLoader)initWithOriginalImage:(id)image orientedImage:(id)orientedImage data:(id)data scale:(double)scale previewImageURLs:(id)ls delayLoadingURLs:(BOOL)rLs
{
  imageCopy = image;
  orientedImageCopy = orientedImage;
  dataCopy = data;
  lsCopy = ls;
  v23.receiver = self;
  v23.super_class = ICAttachmentPreviewImageLoader;
  v19 = [(ICAttachmentPreviewImageLoader *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_image, image);
    objc_storeStrong(&v20->_originalImage, image);
    objc_storeStrong(&v20->_orientedImage, orientedImage);
    objc_storeStrong(&v20->_data, data);
    v20->_scale = scale;
    objc_storeStrong(&v20->_previewImageURLs, ls);
    v20->_delayLoadingURLs = rLs;
    if (!rLs)
    {
      data = [(ICAttachmentPreviewImageLoader *)v20 data];

      if (!data)
      {
        [(ICAttachmentPreviewImageLoader *)v20 loadData];
      }
    }
  }

  return v20;
}

- (void)loadData
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  previewImageURLs = [(ICAttachmentPreviewImageLoader *)self previewImageURLs];
  v4 = [previewImageURLs countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(previewImageURLs);
      }

      v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:*(*(&v10 + 1) + 8 * v7)];
      [(ICAttachmentPreviewImageLoader *)self setData:v8];

      data = [(ICAttachmentPreviewImageLoader *)self data];

      if (data)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [previewImageURLs countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (BOOL)canLoadImage
{
  v20 = *MEMORY[0x1E69E9840];
  originalImage = [(ICAttachmentPreviewImageLoader *)self originalImage];
  if (originalImage)
  {

    return 1;
  }

  data = [(ICAttachmentPreviewImageLoader *)self data];

  if (data)
  {
    return 1;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  previewImageURLs = [(ICAttachmentPreviewImageLoader *)self previewImageURLs];
  v6 = [previewImageURLs countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(previewImageURLs);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        path = [v10 path];
        v13 = [defaultManager fileExistsAtPath:path];

        if (v13)
        {

          return 1;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [previewImageURLs countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  return 0;
}

- (id)loadImage
{
  image = [(ICAttachmentPreviewImageLoader *)self image];

  if (!image)
  {
    if ([(ICAttachmentPreviewImageLoader *)self delayLoadingURLs])
    {
      data = [(ICAttachmentPreviewImageLoader *)self data];

      if (!data)
      {
        [(ICAttachmentPreviewImageLoader *)self loadData];
      }
    }

    data2 = [(ICAttachmentPreviewImageLoader *)self data];

    if (!data2)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"self.data" functionName:"-[ICAttachmentPreviewImageLoader loadImage]" simulateCrash:1 showAlert:0 format:@"No preview image data to load"];
    }

    data3 = [(ICAttachmentPreviewImageLoader *)self data];

    if (data3)
    {
      v9 = MEMORY[0x1E69DCAB8];
      data4 = [(ICAttachmentPreviewImageLoader *)self data];
      [(ICAttachmentPreviewImageLoader *)self scale];
      v11 = [v9 imageWithData:data4 scale:?];
      [(ICAttachmentPreviewImageLoader *)self setImage:v11];
    }

    else
    {
      v12 = os_log_create("com.apple.notes", "PreviewGeneration");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        [(ICAttachmentPreviewImageLoader *)self loadImage];
      }

      v13 = objc_alloc_init(MEMORY[0x1E69DCAB8]);
      [(ICAttachmentPreviewImageLoader *)self setImage:v13];
    }

    image2 = [(ICAttachmentPreviewImageLoader *)self image];

    if (image2)
    {
      imageDidLoadBlock = [(ICAttachmentPreviewImageLoader *)self imageDidLoadBlock];

      if (imageDidLoadBlock)
      {
        imageDidLoadBlock2 = [(ICAttachmentPreviewImageLoader *)self imageDidLoadBlock];
        image3 = [(ICAttachmentPreviewImageLoader *)self image];
        (imageDidLoadBlock2)[2](imageDidLoadBlock2, image3, 0);
      }
    }
  }

  image4 = [(ICAttachmentPreviewImageLoader *)self image];

  return image4;
}

- (id)loadOrientedImage
{
  orientedImage = [(ICAttachmentPreviewImageLoader *)self orientedImage];

  if (!orientedImage)
  {
    loadImage = [(ICAttachmentPreviewImageLoader *)self loadImage];
    if (loadImage)
    {
      imageOrientation = [(ICAttachmentPreviewImageLoader *)self imageOrientation];
      if (imageOrientation)
      {
        v6 = imageOrientation;
        v7 = objc_alloc(MEMORY[0x1E69DCAB8]);
        ic_CGImage = [loadImage ic_CGImage];
        [loadImage scale];
        v9 = [v7 initWithCGImage:ic_CGImage scale:v6 orientation:?];

        loadImage = v9;
      }
    }

    [(ICAttachmentPreviewImageLoader *)self setOrientedImage:loadImage];
    orientedImage2 = [(ICAttachmentPreviewImageLoader *)self orientedImage];

    if (orientedImage2)
    {
      imageDidLoadBlock = [(ICAttachmentPreviewImageLoader *)self imageDidLoadBlock];

      if (imageDidLoadBlock)
      {
        imageDidLoadBlock2 = [(ICAttachmentPreviewImageLoader *)self imageDidLoadBlock];
        orientedImage3 = [(ICAttachmentPreviewImageLoader *)self orientedImage];
        (imageDidLoadBlock2)[2](imageDidLoadBlock2, orientedImage3, 1);
      }
    }
  }

  return [(ICAttachmentPreviewImageLoader *)self orientedImage];
}

- (void)loadImage
{
  v6 = *MEMORY[0x1E69E9840];
  previewImageURLs = [self previewImageURLs];
  v4 = 138412290;
  v5 = previewImageURLs;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "unable to retrieve preview image %@", &v4, 0xCu);
}

@end