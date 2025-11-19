@interface PKImage
+ (id)URLForImageNamed:(id)a3 inBundle:(id)a4 scale:(double *)a5 preferredScreenScale:(double)a6 suffix:(id)a7;
+ (id)hashOfImageNamed:(id)a3 inBundle:(id)a4;
+ (id)imageNamed:(id)a3 inBundle:(id)a4;
+ (id)imageNamed:(id)a3 inBundle:(id)a4 screenScale:(double)a5 suffix:(id)a6;
+ (id)newImageNamed:(id)a3 inBundle:(id)a4 screenScale:(double)a5 suffix:(id)a6;
+ (id)passesImageNamed:(id)a3;
- (BOOL)_isTiledWhenStretchedToSize:(CGSize)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToImage:(id)a3;
- (CGImage)imageRef;
- (CGSize)downscaleSizeMatchingScale:(double)a3;
- (CGSize)size;
- (NSData)imageData;
- (PKEdgeInsets)capInsets;
- (PKImage)imageWithoutCapInsets;
- (PKImage)init;
- (PKImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(int64_t)a5;
- (PKImage)initWithCoder:(id)a3;
- (PKImage)initWithData:(id)a3 scale:(double)a4;
- (id)blurredImageWithRadius:(unint64_t)a3 constraints:(id)a4;
- (id)croppedImageWithInsets:(PKEdgeInsets)a3;
- (id)imageHash;
- (id)resizableImageByStretchingWithCapInsets:(PKEdgeInsets)a3;
- (id)resizableImageByTilingCenterPixel;
- (id)resizableImageByTilingWithCapInsets:(PKEdgeInsets)a3;
- (int64_t)orientation;
- (void)_queue_createImageRefIfNecessary;
- (void)dealloc;
- (void)drawInRect:(CGRect)a3 inContext:(CGContext *)a4 withBlendMode:(int)a5 alpha:(double)a6;
- (void)encodeWithCoder:(id)a3;
- (void)preheatBitmapData;
@end

@implementation PKImage

- (PKImage)init
{
  v3.receiver = self;
  v3.super_class = PKImage;
  result = [(PKImage *)&v3 init];
  if (result)
  {
    result->_lock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (CGImage)imageRef
{
  os_unfair_lock_lock(&self->_lock);
  [(PKImage *)self _queue_createImageRefIfNecessary];
  imageRef = self->_imageRef;
  os_unfair_lock_unlock(&self->_lock);
  return imageRef;
}

- (void)_queue_createImageRefIfNecessary
{
  if (!self->_imageRef)
  {
    p_orientation = &self->_orientation;
    orientation = self->_orientation;
    imageData = self->_imageData;
    if (orientation)
    {
      p_orientation = 0;
    }

    CGImageFromData = _CreateCGImageFromData(imageData, p_orientation);
    v8 = self->_imageData;
    self->_imageData = 0;
    self->_imageRef = CGImageFromData;
  }
}

- (int64_t)orientation
{
  os_unfair_lock_lock(&self->_lock);
  [(PKImage *)self _queue_createImageRefIfNecessary];
  orientation = self->_orientation;
  os_unfair_lock_unlock(&self->_lock);
  return orientation;
}

- (NSData)imageData
{
  os_unfair_lock_lock(&self->_lock);
  imageData = self->_imageData;
  if (imageData)
  {
    v4 = imageData;
  }

  else if (self->_imageRef)
  {
    v5 = objc_autoreleasePoolPush();
    imageRef = self->_imageRef;
    v7 = objc_alloc_init(MEMORY[0x1E695DF88]);
    v8 = v7;
    if (v7)
    {
      v9 = CGImageDestinationCreateWithData(v7, @"public.png", 1uLL, 0);
      if (v9)
      {
        v10 = v9;
        v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v12 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:8];
        v13 = objc_alloc(MEMORY[0x1E695DF20]);
        v14 = [v13 initWithObjectsAndKeys:{v12, *MEMORY[0x1E696DEA0], 0}];
        [v11 setObject:v14 forKey:*MEMORY[0x1E696DEB0]];
        v15 = [objc_alloc(MEMORY[0x1E696AD98]) initWithLong:2];
        [v11 setObject:v15 forKey:*MEMORY[0x1E696DE88]];
        CGImageDestinationAddImage(v10, imageRef, v11);
        v16 = CGImageDestinationFinalize(v10);
        CFRelease(v10);

        if (v16)
        {
          v17 = v8;
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }

      v4 = v17;
    }

    else
    {
      v4 = 0;
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  return v4;
}

- (void)dealloc
{
  CGImageRelease(self->_imageRef);
  v3.receiver = self;
  v3.super_class = PKImage;
  [(PKImage *)&v3 dealloc];
}

- (PKEdgeInsets)capInsets
{
  if (self->_shouldTile || (left = 0.0, top = 0.0, bottom = 0.0, right = 0.0, self->_shouldStretch))
  {
    top = self->_capInsets.top;
    left = self->_capInsets.left;
    bottom = self->_capInsets.bottom;
    right = self->_capInsets.right;
  }

  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)size
{
  v3 = [(PKImage *)self imageRef];
  [(PKImage *)self scale];
  v5 = v4;
  v6 = CGImageGetWidth(v3) / v4;
  v7 = CGImageGetHeight(v3) / v5;
  v8 = [(PKImage *)self orientation];
  if ((v8 - 1) >= 4)
  {
    v9 = v7;
  }

  else
  {
    v9 = v6;
  }

  if ((v8 - 1) >= 4)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  result.height = v10;
  result.width = v9;
  return result;
}

+ (id)URLForImageNamed:(id)a3 inBundle:(id)a4 scale:(double *)a5 preferredScreenScale:(double)a6 suffix:(id)a7
{
  v64[3] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = 0;
  v44 = v12;
  if (v11 && v12)
  {
    v49 = 0;
    v50 = &v49;
    v51 = 0x3032000000;
    v52 = __Block_byref_object_copy__6;
    v53 = __Block_byref_object_dispose__6;
    v54 = 0;
    v15 = [(__CFString *)v11 pathExtension];
    v40 = a5;
    if ([(__CFString *)v15 length])
    {
      [(__CFString *)v11 stringByDeletingPathExtension];
      v41 = v15;
      v11 = v15 = v11;
    }

    else
    {
      v41 = @"png";
    }

    v43 = [(__CFString *)v11 stringByAppendingString:@"@1x"];
    if (v13)
    {
      v16 = [(__CFString *)v11 stringByAppendingString:v13];
      v42 = [v16 stringByAppendingString:@"@1x"];

      v17 = [(__CFString *)v11 stringByAppendingString:@"@2x"];
      v18 = [(__CFString *)v11 stringByAppendingString:v13];
      v19 = [v18 stringByAppendingString:@"@2x"];

      v20 = [(__CFString *)v11 stringByAppendingString:@"@3x"];
      v21 = [(__CFString *)v11 stringByAppendingString:v13];
      v22 = [v21 stringByAppendingString:@"@3x"];

      v62[0] = v42;
      v62[1] = v11;
      v62[2] = v43;
      v63[0] = &unk_1F23B4AA8;
      v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:3];
      v64[0] = v23;
      v63[1] = &unk_1F23B4AC0;
      v61[0] = v19;
      v61[1] = v17;
      v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v61 count:2];
      v64[1] = v24;
      v63[2] = &unk_1F23B4AD8;
      v60[0] = v22;
      v60[1] = v20;
      v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v60 count:2];
      v64[2] = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v64 forKeys:v63 count:3];
    }

    else
    {
      v42 = [(__CFString *)v11 stringByAppendingString:@"@2x"];
      v17 = [(__CFString *)v11 stringByAppendingString:@"@3x"];
      v57[0] = v11;
      v57[1] = v43;
      v58[0] = &unk_1F23B4AA8;
      v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v57 count:2];
      v59[0] = v19;
      v58[1] = &unk_1F23B4AC0;
      v56 = v42;
      v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v56 count:1];
      v59[1] = v20;
      v58[2] = &unk_1F23B4AD8;
      v55 = v17;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v55 count:1];
      v59[2] = v22;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:3];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __71__PKImage_URLForImageNamed_inBundle_scale_preferredScreenScale_suffix___block_invoke;
    aBlock[3] = &unk_1E79C92C8;
    v48 = &v49;
    v46 = v44;
    v27 = v41;
    v47 = v27;
    v28 = _Block_copy(aBlock);
    if (a6 <= 0.0)
    {
      a6 = PKScreenScale();
    }

    v29 = [MEMORY[0x1E696AD98] numberWithDouble:a6];
    v30 = [v26 objectForKey:v29];
    v28[2](v28, v30);

    if (v50[5])
    {
      v31 = a6;
    }

    else
    {
      v31 = a6;
      do
      {
        v31 = v31 + 1.0;
        if (v31 > 3.0)
        {
          break;
        }

        v32 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
        v33 = [v26 objectForKey:v32];
        v34 = (v28[2])(v28, v33);
        v35 = v31 >= 3.0 ? 1 : v34;
      }

      while (!v35);
      if (!v50[5])
      {
        v31 = a6;
        do
        {
          v31 = v31 + -1.0;
          if (v31 <= 0.0)
          {
            break;
          }

          v36 = [MEMORY[0x1E696AD98] numberWithDouble:v31];
          v37 = [v26 objectForKey:v36];
          v38 = (v28[2])(v28, v37);
        }

        while (!v38);
      }
    }

    if (v40)
    {
      *v40 = v31;
    }

    v14 = v50[5];

    _Block_object_dispose(&v49, 8);
  }

  return v14;
}

BOOL __71__PKImage_URLForImageNamed_inBundle_scale_preferredScreenScale_suffix___block_invoke(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = a2;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(v3);
      }

      v8 = [*(a1 + 32) URLForResource:*(*(&v13 + 1) + 8 * v7) withExtension:{*(a1 + 40), v13}];
      v9 = *(*(a1 + 48) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      if (*(*(*(a1 + 48) + 8) + 40))
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v11 = *(*(*(a1 + 48) + 8) + 40) != 0;
  return v11;
}

+ (id)imageNamed:(id)a3 inBundle:(id)a4
{
  v4 = [a1 newImageNamed:a3 inBundle:a4];

  return v4;
}

+ (id)imageNamed:(id)a3 inBundle:(id)a4 screenScale:(double)a5 suffix:(id)a6
{
  v6 = [a1 newImageNamed:a3 inBundle:a4 screenScale:a6 suffix:a5];

  return v6;
}

+ (id)newImageNamed:(id)a3 inBundle:(id)a4 screenScale:(double)a5 suffix:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v21 = 0x3FF0000000000000;
  v13 = [a1 URLForImageNamed:v10 inBundle:v11 scale:&v21 preferredScreenScale:v12 suffix:a5];
  v14 = *&v21;
  v15 = v13;
  v16 = objc_autoreleasePoolPush();
  if (v15 && ([MEMORY[0x1E695DEF0] dataWithContentsOfURL:v15], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v18 = v17;
    v19 = [[PKImage alloc] initWithData:v17 scale:v14];
  }

  else
  {
    v19 = 0;
  }

  objc_autoreleasePoolPop(v16);

  return v19;
}

+ (id)hashOfImageNamed:(id)a3 inBundle:(id)a4
{
  v4 = [a1 newImageNamed:a3 inBundle:a4];
  v5 = [v4 imageHash];

  return v5;
}

- (id)imageHash
{
  v12 = *MEMORY[0x1E69E9840];
  memset(&c, 0, sizeof(c));
  CC_SHA256_Init(&c);
  v3 = objc_autoreleasePoolPush();
  v4 = [(PKImage *)self imageData];
  v5 = [v4 bytes];
  if ([v4 length] > 0xFFFFFFFE)
  {
    v6 = -1;
  }

  else
  {
    v6 = [v4 length];
  }

  CC_SHA256_Update(&c, v5, v6);

  objc_autoreleasePoolPop(v3);
  data = 30;
  CC_SHA256_Update(&c, &data, 1u);
  CC_SHA256_Update(&c, &self->_scale, 8u);
  CC_SHA256_Final(md, &c);
  v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:md length:32];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(PKImage *)self isEqualToImage:v5];
  }

  return v6;
}

- (BOOL)isEqualToImage:(id)a3
{
  v4 = a3;
  v5 = [(PKImage *)self imageHash];
  v6 = [v4 imageHash];

  LOBYTE(v4) = [v5 isEqual:v6];
  return v4;
}

+ (id)passesImageNamed:(id)a3
{
  v4 = a3;
  v5 = PKPassKitCoreBundle();
  v6 = [a1 imageNamed:v4 inBundle:v5];

  return v6;
}

- (PKImage)initWithData:(id)a3 scale:(double)a4
{
  v7 = a3;
  v8 = [(PKImage *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_imageData, a3);
    v9->_scale = a4;
  }

  return v9;
}

- (PKImage)initWithCGImage:(CGImage *)a3 scale:(double)a4 orientation:(int64_t)a5
{
  v8 = [(PKImage *)self init];
  if (v8)
  {
    if (a3)
    {
      v9 = CGImageRetain(a3);
    }

    else
    {
      v9 = 0;
    }

    v8->_imageRef = v9;
    v8->_scale = a4;
    v8->_orientation = a5;
  }

  return v8;
}

- (CGSize)downscaleSizeMatchingScale:(double)a3
{
  if (a3 == 0.0)
  {
    a3 = PKScreenScale();
  }

  scale = self->_scale;
  v5 = a3 == 0.0 || scale == 0.0;
  v6 = scale / a3;
  if (v5)
  {
    v7 = 1.0;
  }

  else
  {
    v7 = v6;
  }

  [(PKImage *)self size];
  if (v7 < 1.0)
  {
    v9 = v9 * v7;
    v8 = v8 * v7;
  }

  result.height = v9;
  result.width = v8;
  return result;
}

- (void)preheatBitmapData
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(PKImage *)self imageRef];
  if (objc_opt_respondsToSelector())
  {
    [(CGImage *)v4 CA_prepareRenderValue];
  }

  objc_autoreleasePoolPop(v3);
}

- (id)blurredImageWithRadius:(unint64_t)a3 constraints:(id)a4
{
  v6 = a4;
  memset(&v32, 0, sizeof(v32));
  v31 = 0uLL;
  v7 = 0;
  if ([v6 getPixelCropRect:&v32 pixelOutputSize:&v31 forImage:self])
  {
    [v6 outputScale];
    v9 = v8;
    __asm { FMOV            V1.2D, #0.5 }

    rect = vrndaq_f64(vmulq_f64(v31, _Q1));
    BitmapContext = _CreateBitmapContext(1, 0, 0, rect.width, rect.height, 1.0);
    src.data = CGBitmapContextGetData(BitmapContext);
    src.width = CGBitmapContextGetWidth(BitmapContext);
    src.height = CGBitmapContextGetHeight(BitmapContext);
    src.rowBytes = CGBitmapContextGetBytesPerRow(BitmapContext);
    v16 = _CreateBitmapContext(1, 0, 0, rect.width, rect.height, 1.0);
    dest.data = CGBitmapContextGetData(v16);
    dest.width = CGBitmapContextGetWidth(v16);
    dest.height = CGBitmapContextGetHeight(v16);
    dest.rowBytes = CGBitmapContextGetBytesPerRow(v16);
    v17 = [(PKImage *)self imageRef];
    v18 = CGImageCreateWithImageInRect(v17, v32);
    v19 = *MEMORY[0x1E695EFF8];
    v20 = *(MEMORY[0x1E695EFF8] + 8);
    v34.origin.x = *MEMORY[0x1E695EFF8];
    v34.origin.y = v20;
    v34.size = rect;
    CGContextDrawImage(BitmapContext, v34, v18);
    CGImageRelease(v18);
    v21 = vcvtpd_u64_f64(v9 * a3) | 1;
    vImageTentConvolve_ARGB8888(&src, &dest, 0, 0, 0, v21, v21, 0, 8u);
    Image = CGBitmapContextCreateImage(v16);
    CGContextRelease(BitmapContext);
    CGContextRelease(v16);
    if (Image)
    {
      v23 = _CreateBitmapContext(1, 0, 0, v31.f64[0], v31.f64[1], 1.0);
      CGContextSetInterpolationQuality(v23, kCGInterpolationHigh);
      v35.size = v31;
      v35.origin.x = v19;
      v35.origin.y = v20;
      CGContextDrawImage(v23, v35, Image);
      CGImageRelease(Image);
      v24 = CGBitmapContextCreateImage(v23);
      CGContextRelease(v23);
      LODWORD(v23) = [v6 outputMirrored];
      v25 = [(PKImage *)self orientation];
      v26 = v25;
      if (v23)
      {
        v26 = _MirroredOrientation(v25);
      }

      v7 = [[PKImage alloc] initWithCGImage:v24 scale:v26 orientation:v9];
      CGImageRelease(v24);
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)croppedImageWithInsets:(PKEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  v8 = CGImageRetain([(PKImage *)self imageRef]);
  scale = self->_scale;
  v10 = left * scale;
  v11 = top * scale;
  v12 = CGImageGetWidth(v8) - (left + right) * scale;
  v17.size.height = CGImageGetWidth(v8) - (top + bottom) * self->_scale;
  v17.origin.x = v10;
  v17.origin.y = v11;
  v17.size.width = v12;
  v13 = CGImageCreateWithImageInRect(v8, v17);
  v14 = [[PKImage alloc] initWithCGImage:v13 scale:self->_orientation orientation:self->_scale];
  CGImageRelease(v13);
  CGImageRelease(v8);

  return v14;
}

- (PKImage)imageWithoutCapInsets
{
  os_unfair_lock_lock(&self->_lock);
  v3 = objc_alloc_init(PKImage);
  v4 = [(NSData *)self->_imageData copy];
  imageData = v3->_imageData;
  v3->_imageData = v4;

  imageRef = self->_imageRef;
  if (imageRef)
  {
    imageRef = CGImageRetain(imageRef);
  }

  v3->_imageRef = imageRef;
  v3->_scale = self->_scale;
  v3->_orientation = self->_orientation;
  *&v3->_shouldTile = 0;
  *&v3->_capInsets.top = 0u;
  *&v3->_capInsets.bottom = 0u;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)resizableImageByTilingWithCapInsets:(PKEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  os_unfair_lock_lock(&self->_lock);
  v8 = objc_alloc_init(PKImage);
  v9 = [(NSData *)self->_imageData copy];
  imageData = v8->_imageData;
  v8->_imageData = v9;

  imageRef = self->_imageRef;
  if (imageRef)
  {
    imageRef = CGImageRetain(imageRef);
  }

  v8->_imageRef = imageRef;
  v8->_scale = self->_scale;
  v8->_orientation = self->_orientation;
  v8->_shouldTile = 1;
  v8->_capInsets.top = top;
  v8->_capInsets.left = left;
  v8->_capInsets.bottom = bottom;
  v8->_capInsets.right = right;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)resizableImageByStretchingWithCapInsets:(PKEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  os_unfair_lock_lock(&self->_lock);
  v8 = objc_alloc_init(PKImage);
  v9 = [(NSData *)self->_imageData copy];
  imageData = v8->_imageData;
  v8->_imageData = v9;

  imageRef = self->_imageRef;
  if (imageRef)
  {
    imageRef = CGImageRetain(imageRef);
  }

  v8->_imageRef = imageRef;
  v8->_scale = self->_scale;
  v8->_orientation = self->_orientation;
  v8->_shouldStretch = 1;
  v8->_capInsets.top = top;
  v8->_capInsets.left = left;
  v8->_capInsets.bottom = bottom;
  v8->_capInsets.right = right;
  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

- (id)resizableImageByTilingCenterPixel
{
  [(PKImage *)self size];

  return [(PKImage *)self resizableImageByTilingWithCapInsets:?];
}

- (void)drawInRect:(CGRect)a3 inContext:(CGContext *)a4 withBlendMode:(int)a5 alpha:(double)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    return;
  }

  [(PKImage *)self size];
  if (v14 <= 0.0)
  {
    return;
  }

  v16 = v15;
  if (v15 <= 0.0)
  {
    return;
  }

  v17 = v14;
  CGContextSaveGState(a4);
  CGContextSetBlendMode(a4, a5);
  CGContextSetAlpha(a4, a6);
  v41.origin.x = x;
  v41.origin.y = y;
  v41.size.width = width;
  v41.size.height = height;
  MinX = CGRectGetMinX(v41);
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = height;
  MaxY = CGRectGetMaxY(v42);
  CGContextTranslateCTM(a4, MinX, MaxY);
  CGContextScaleCTM(a4, 1.0, -1.0);
  v20 = [(PKImage *)self orientation];
  if (height > 0.0 && width > 0.0 && (v20 - 2) <= 6)
  {
    if (v20 > 4)
    {
      if (v20 > 6)
      {
        v21 = height / width;
        *(&v22 + 1) = 0;
        if (v20 == 7)
        {
          *&v22 = width / height;
          v24 = 0.0;
          v25 = 0.0;
        }

        else
        {
          *&v22 = -width / height;
          v24 = 0.0;
          v25 = width;
        }
      }

      else
      {
        v21 = -height / width;
        if (v20 == 5)
        {
          *(&v22 + 1) = 0;
          *&v22 = -width / height;
          v23 = 0.0;
          goto LABEL_13;
        }

        *(&v22 + 1) = 0;
        *&v22 = width / height;
        v25 = 0.0;
        v24 = height;
      }

      v23 = 0.0;
      goto LABEL_22;
    }

    v23 = -1.0;
    v21 = 0.0;
    if (v20 == 2)
    {
      v22 = xmmword_1ADB99540;
      v24 = 0.0;
      goto LABEL_17;
    }

    v22 = xmmword_1ADB99550;
    if (v20 != 3)
    {
      v23 = 1.0;
      v25 = 0.0;
      v24 = height;
      goto LABEL_22;
    }

LABEL_13:
    v24 = height;
LABEL_17:
    v25 = width;
LABEL_22:
    transform.a = v23;
    transform.b = v21;
    *&transform.c = v22;
    transform.tx = v25;
    transform.ty = v24;
    CGContextConcatCTM(a4, &transform);
  }

  if (v17 == width && v16 == height || !(v29 = [(PKImage *)self _isTiledWhenStretchedToSize:width, height]) && (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(*&self->_capInsets.top), vceqzq_f64(*&self->_capInsets.bottom))))) & 1) == 0)
  {
    v26 = *MEMORY[0x1E695EFF8];
    v27 = *(MEMORY[0x1E695EFF8] + 8);
    v28 = [(PKImage *)self imageRef];
    v43.origin.x = v26;
    v43.origin.y = v27;
    v43.size.width = width;
    v43.size.height = height;
    CGContextDrawImage(a4, v43, v28);
  }

  else
  {
    v30 = [(PKImage *)self imageRef];
    [(PKImage *)self scale];
    *&v31 = v31;
    v32 = vcvtps_s32_f32(*&v31);
    top = self->_capInsets.top;
    left = self->_capInsets.left;
    bottom = self->_capInsets.bottom;
    right = self->_capInsets.right;
    *&transform.a = *MEMORY[0x1E695EFF8];
    transform.c = width;
    transform.d = height;
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    memset(&v38, 0, sizeof(v38));
    v44.origin.x = transform.a;
    v44.origin.y = transform.b;
    v44.size.width = width;
    v44.size.height = height;
    CGRectDivide(v44, &slice, &transform, top, CGRectMaxYEdge);
    v45.origin.x = transform.a;
    v45.origin.y = transform.b;
    v45.size.width = transform.c;
    v45.size.height = transform.d;
    CGRectDivide(v45, &v38, &remainder, bottom, CGRectMinYEdge);
    if (!CGRectIsEmpty(slice))
    {
      _Draw3PartSlice(a4, v30, v32, v29, 0.0, 0.0, v17, top, slice.origin.x, slice.origin.y, slice.size.width, slice.size.height, top, left, bottom, right);
    }

    if (!CGRectIsEmpty(remainder))
    {
      _Draw3PartSlice(a4, v30, v32, v29, 0.0, top, v17, v16 - (top + bottom), remainder.origin.x, remainder.origin.y, remainder.size.width, remainder.size.height, top, left, bottom, right);
    }

    if (!CGRectIsEmpty(v38))
    {
      _Draw3PartSlice(a4, v30, v32, v29, 0.0, v16 - bottom, v17, bottom, v38.origin.x, v38.origin.y, v38.size.width, v38.size.height, top, left, bottom, right);
    }
  }

  CGContextRestoreGState(a4);
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(PKImage *)self imageData];
  [v11 encodeObject:v5 forKey:@"imageData"];

  [(PKImage *)self scale];
  *&v6 = v6;
  [v11 encodeFloat:@"scale" forKey:v6];
  [v11 encodeInteger:-[PKImage orientation](self forKey:{"orientation"), @"orientation"}];
  [v11 encodeBool:self->_shouldTile forKey:@"shouldTile"];
  [v11 encodeBool:self->_shouldStretch forKey:@"shouldStretch"];
  if (self->_shouldTile || self->_shouldStretch)
  {
    left = self->_capInsets.left;
    *&left = left;
    [v11 encodeFloat:@"leftCap" forKey:left];
    right = self->_capInsets.right;
    *&right = right;
    [v11 encodeFloat:@"rightCap" forKey:right];
    top = self->_capInsets.top;
    *&top = top;
    [v11 encodeFloat:@"topCap" forKey:top];
    bottom = self->_capInsets.bottom;
    *&bottom = bottom;
    [v11 encodeFloat:@"bottomCap" forKey:bottom];
  }

  objc_autoreleasePoolPop(v4);
}

- (PKImage)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PKImage *)self init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imageData"];
    imageData = v5->_imageData;
    v5->_imageData = v7;

    [v4 decodeFloatForKey:@"scale"];
    v5->_scale = v9;
    v5->_orientation = [v4 decodeIntegerForKey:@"orientation"];
    v5->_shouldTile = [v4 decodeBoolForKey:@"shouldTile"];
    v10 = [v4 decodeBoolForKey:@"shouldStretch"];
    v5->_shouldStretch = v10;
    if (v5->_shouldTile || v10)
    {
      [v4 decodeFloatForKey:@"leftCap"];
      v5->_capInsets.left = v11;
      [v4 decodeFloatForKey:@"rightCap"];
      v5->_capInsets.right = v12;
      [v4 decodeFloatForKey:@"topCap"];
      v5->_capInsets.top = v13;
      [v4 decodeFloatForKey:@"bottomCap"];
      v5->_capInsets.bottom = v14;
    }

    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (BOOL)_isTiledWhenStretchedToSize:(CGSize)a3
{
  if (!self->_shouldTile)
  {
    return 0;
  }

  height = a3.height;
  width = a3.width;
  [(PKImage *)self size];
  if (v6 - self->_capInsets.left - self->_capInsets.right > 1.0 && width != v6)
  {
    return 1;
  }

  if (height == v7)
  {
    return 0;
  }

  return v7 - self->_capInsets.top - self->_capInsets.bottom > 1.0;
}

@end