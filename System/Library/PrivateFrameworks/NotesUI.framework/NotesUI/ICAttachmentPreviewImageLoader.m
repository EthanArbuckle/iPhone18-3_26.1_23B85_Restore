@interface ICAttachmentPreviewImageLoader
+ (id)orientedImage:(id)a3 withBackground:(int)a4;
+ (id)orientedImage:(id)a3 withTransform:(CGAffineTransform *)a4 background:(int)a5 backgroundTransform:(CGAffineTransform *)a6;
- (BOOL)canLoadImage;
- (ICAttachmentPreviewImageLoader)initWithOriginalImage:(id)a3 orientedImage:(id)a4 data:(id)a5 scale:(double)a6 previewImageURLs:(id)a7 delayLoadingURLs:(BOOL)a8;
- (id)loadImage;
- (id)loadOrientedImage;
- (void)loadData;
- (void)loadImage;
@end

@implementation ICAttachmentPreviewImageLoader

+ (id)orientedImage:(id)a3 withBackground:(int)a4
{
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v8[0] = *MEMORY[0x1E695EFD0];
  v8[1] = v4;
  v9 = *(MEMORY[0x1E695EFD0] + 32);
  v7[0] = v8[0];
  v7[1] = v4;
  v7[2] = v9;
  v5 = [a1 orientedImage:a3 withTransform:v8 background:*&a4 backgroundTransform:v7];

  return v5;
}

+ (id)orientedImage:(id)a3 withTransform:(CGAffineTransform *)a4 background:(int)a5 backgroundTransform:(CGAffineTransform *)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v8 = a3;
  if (v8)
  {
    v9 = *&a4->c;
    *&transform.a = *&a4->a;
    *&transform.c = v9;
    *&transform.tx = *&a4->tx;
    IsIdentity = CGAffineTransformIsIdentity(&transform);
    if (a5 || !IsIdentity)
    {
      v11 = [v8 ic_CGImage];
      if (v11)
      {
        v12 = v11;
        v13 = *&a4->c;
        *&v37.a = *&a4->a;
        *&v37.c = v13;
        *&v37.tx = *&a4->tx;
        CGAffineTransformInvert(&transform, &v37);
        v14 = *&transform.c;
        *&a4->a = *&transform.a;
        *&a4->c = v14;
        *&a4->tx = *&transform.tx;
        v15 = *MEMORY[0x1E695EFF8];
        v16 = *(MEMORY[0x1E695EFF8] + 8);
        Width = CGImageGetWidth(v12);
        Height = CGImageGetHeight(v12);
        v19 = *&a4->c;
        *&transform.a = *&a4->a;
        *&transform.c = v19;
        *&transform.tx = *&a4->tx;
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
          if (a5 == 2)
          {
            v31 = [MEMORY[0x1E69DC888] ic_attachmentBackgroundColor];
            CGContextSetFillColorWithColor(v28, [v31 CGColor]);
            v43.origin.x = 0.0;
            v43.origin.y = 0.0;
            v43.size.width = v25;
            v43.size.height = v26;
            CGContextFillRect(v28, v43);
          }

          else if (a5 == 1)
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
          v32 = *&a4->c;
          *&transform.a = *&a4->a;
          *&transform.c = v32;
          *&transform.tx = *&a4->tx;
          CGContextConcatCTM(v28, &transform);
          v33 = [v8 ic_CGImage];
          v44.origin.x = v15;
          v44.origin.y = v16;
          v44.size.width = Width;
          v44.size.height = Height;
          CGContextDrawImage(v28, v44, v33);
          Image = CGBitmapContextCreateImage(v28);
          CGContextRelease(v28);
          if (Image)
          {
            v35 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithCGImage:Image];
            CGImageRelease(Image);

            v8 = v35;
          }
        }
      }
    }
  }

  return v8;
}

- (ICAttachmentPreviewImageLoader)initWithOriginalImage:(id)a3 orientedImage:(id)a4 data:(id)a5 scale:(double)a6 previewImageURLs:(id)a7 delayLoadingURLs:(BOOL)a8
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a7;
  v23.receiver = self;
  v23.super_class = ICAttachmentPreviewImageLoader;
  v19 = [(ICAttachmentPreviewImageLoader *)&v23 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_image, a3);
    objc_storeStrong(&v20->_originalImage, a3);
    objc_storeStrong(&v20->_orientedImage, a4);
    objc_storeStrong(&v20->_data, a5);
    v20->_scale = a6;
    objc_storeStrong(&v20->_previewImageURLs, a7);
    v20->_delayLoadingURLs = a8;
    if (!a8)
    {
      v21 = [(ICAttachmentPreviewImageLoader *)v20 data];

      if (!v21)
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
  v3 = [(ICAttachmentPreviewImageLoader *)self previewImageURLs];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
        objc_enumerationMutation(v3);
      }

      v8 = [MEMORY[0x1E695DEF0] dataWithContentsOfURL:*(*(&v10 + 1) + 8 * v7)];
      [(ICAttachmentPreviewImageLoader *)self setData:v8];

      v9 = [(ICAttachmentPreviewImageLoader *)self data];

      if (v9)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v3 = [(ICAttachmentPreviewImageLoader *)self originalImage];
  if (v3)
  {

    return 1;
  }

  v4 = [(ICAttachmentPreviewImageLoader *)self data];

  if (v4)
  {
    return 1;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(ICAttachmentPreviewImageLoader *)self previewImageURLs];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * v9);
        v11 = [MEMORY[0x1E696AC08] defaultManager];
        v12 = [v10 path];
        v13 = [v11 fileExistsAtPath:v12];

        if (v13)
        {

          return 1;
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v3 = [(ICAttachmentPreviewImageLoader *)self image];

  if (!v3)
  {
    if ([(ICAttachmentPreviewImageLoader *)self delayLoadingURLs])
    {
      v6 = [(ICAttachmentPreviewImageLoader *)self data];

      if (!v6)
      {
        [(ICAttachmentPreviewImageLoader *)self loadData];
      }
    }

    v7 = [(ICAttachmentPreviewImageLoader *)self data];

    if (!v7)
    {
      [MEMORY[0x1E69B7A38] handleFailedAssertWithCondition:"self.data" functionName:"-[ICAttachmentPreviewImageLoader loadImage]" simulateCrash:1 showAlert:0 format:@"No preview image data to load"];
    }

    v8 = [(ICAttachmentPreviewImageLoader *)self data];

    if (v8)
    {
      v9 = MEMORY[0x1E69DCAB8];
      v10 = [(ICAttachmentPreviewImageLoader *)self data];
      [(ICAttachmentPreviewImageLoader *)self scale];
      v11 = [v9 imageWithData:v10 scale:?];
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

    v14 = [(ICAttachmentPreviewImageLoader *)self image];

    if (v14)
    {
      v15 = [(ICAttachmentPreviewImageLoader *)self imageDidLoadBlock];

      if (v15)
      {
        v16 = [(ICAttachmentPreviewImageLoader *)self imageDidLoadBlock];
        v17 = [(ICAttachmentPreviewImageLoader *)self image];
        (v16)[2](v16, v17, 0);
      }
    }
  }

  v4 = [(ICAttachmentPreviewImageLoader *)self image];

  return v4;
}

- (id)loadOrientedImage
{
  v3 = [(ICAttachmentPreviewImageLoader *)self orientedImage];

  if (!v3)
  {
    v4 = [(ICAttachmentPreviewImageLoader *)self loadImage];
    if (v4)
    {
      v5 = [(ICAttachmentPreviewImageLoader *)self imageOrientation];
      if (v5)
      {
        v6 = v5;
        v7 = objc_alloc(MEMORY[0x1E69DCAB8]);
        v8 = [v4 ic_CGImage];
        [v4 scale];
        v9 = [v7 initWithCGImage:v8 scale:v6 orientation:?];

        v4 = v9;
      }
    }

    [(ICAttachmentPreviewImageLoader *)self setOrientedImage:v4];
    v10 = [(ICAttachmentPreviewImageLoader *)self orientedImage];

    if (v10)
    {
      v11 = [(ICAttachmentPreviewImageLoader *)self imageDidLoadBlock];

      if (v11)
      {
        v12 = [(ICAttachmentPreviewImageLoader *)self imageDidLoadBlock];
        v13 = [(ICAttachmentPreviewImageLoader *)self orientedImage];
        (v12)[2](v12, v13, 1);
      }
    }
  }

  return [(ICAttachmentPreviewImageLoader *)self orientedImage];
}

- (void)loadImage
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 previewImageURLs];
  v4 = 138412290;
  v5 = v3;
  _os_log_error_impl(&dword_1D4171000, a2, OS_LOG_TYPE_ERROR, "unable to retrieve preview image %@", &v4, 0xCu);
}

@end