@interface CNUIPRLikenessPhotoProvider
+ (CGImage)cgThumbnailFromData:(id)a3 maxSize:(CGSize)a4;
- (CFTypeRef)renderCircularImageForSize:(uint64_t)a1 scale:;
- (CFTypeRef)renderRoundedRectImageForSize:(uint64_t)a1 scale:;
- (CGImage)_cnui_circularImageForSize:(CGSize)a3 scale:(double)a4;
- (CGImage)_cnui_image;
- (CGImage)_cnui_imageForSize:(CGSize)a3 scale:(double)a4;
- (CGImage)_cnui_roundedRectImageForSize:(CGSize)a3 scale:(double)a4;
- (CNUIPRLikenessPhotoProvider)initWithPhotoData:(id)a3 fingerprint:(id)a4;
- (id)_cnui_likenessForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation CNUIPRLikenessPhotoProvider

+ (CGImage)cgThumbnailFromData:(id)a3 maxSize:(CGSize)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __59__CNUIPRLikenessPhotoProvider_cgThumbnailFromData_maxSize___block_invoke;
  v5[3] = &__block_descriptor_48_e34___CGImage__16__0__CGImageSource__8l;
  v6 = a4;
  return _cgProcessSafeImageSourceFromData(a3, v5);
}

CGImageRef __59__CNUIPRLikenessPhotoProvider_cgThumbnailFromData_maxSize___block_invoke(uint64_t a1, CGImageSource *a2)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E696DFE8];
  v11[0] = MEMORY[0x1E695E118];
  v4 = *MEMORY[0x1E696E100];
  v10[0] = v3;
  v10[1] = v4;
  v5 = *(a1 + 32);
  if (v5 < *(a1 + 40))
  {
    v5 = *(a1 + 40);
  }

  v6 = [MEMORY[0x1E696AD98] numberWithDouble:v5];
  v11[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];

  ThumbnailAtIndex = CGImageSourceCreateThumbnailAtIndex(a2, 0, v7);
  return ThumbnailAtIndex;
}

- (CNUIPRLikenessPhotoProvider)initWithPhotoData:(id)a3 fingerprint:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = CNUIPRLikenessPhotoProvider;
  v8 = [(CNUIPRLikenessPhotoProvider *)&v15 init];
  if (v8)
  {
    v9 = [MEMORY[0x1E6996660] atomicCache];
    cache = v8->_cache;
    v8->_cache = v9;

    v11 = _safeImageDataType(v6);
    if (v11)
    {
      v12 = v6;
    }

    else
    {
      v12 = 0;
    }

    objc_storeStrong(&v8->_originalPhotoData, v12);

    objc_storeStrong(&v8->_likenessFingerprint, a4);
    v13 = v8;
  }

  return v8;
}

- (id)_cnui_likenessForSize:(CGSize)a3 scale:(double)a4
{
  v4 = [(CNUIPRLikenessPhotoProvider *)self _cnui_circularImageForSize:a3.width scale:a3.height, a4];
  v5 = MEMORY[0x1E69BDC38];

  return [v5 photoWithImage:v4];
}

- (CGImage)_cnui_image
{
  v3 = objc_opt_class();
  v4 = [(CNUIPRLikenessPhotoProvider *)self originalPhotoData];
  v5 = [v3 cgImageFromData:v4];

  return v5;
}

id __56__CNUIPRLikenessPhotoProvider__cnui_imageForSize_scale___block_invoke(uint64_t a1)
{
  v2 = objc_opt_class();
  v3 = [*(a1 + 32) originalPhotoData];
  v4 = [v2 cgThumbnailFromData:v3 maxSize:{*(a1 + 40), *(a1 + 48)}];

  return v4;
}

void __64__CNUIPRLikenessPhotoProvider_renderCircularImageForSize_scale___block_invoke(uint64_t a1, CGContext *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (*(a1 + 32))
  {
    v11 = [*(a1 + 40) cgImageFromData:?];
    if (v11)
    {
      v12 = CFRetain(v11);
      if (v12)
      {
        v13 = v12;
        v15.origin.x = a3;
        v15.origin.y = a4;
        v15.size.width = a5;
        v15.size.height = a6;
        CGContextDrawImage(a2, v15, v12);

        CFRelease(v13);
      }
    }
  }
}

void __67__CNUIPRLikenessPhotoProvider_renderRoundedRectImageForSize_scale___block_invoke(uint64_t a1, CGContext *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  if (*(a1 + 32))
  {
    v11 = [*(a1 + 40) cgImageFromData:?];
    if (v11)
    {
      v12 = CFRetain(v11);
      if (v12)
      {
        v13 = v12;
        v15.origin.x = a3;
        v15.origin.y = a4;
        v15.size.width = a5;
        v15.size.height = a6;
        CGContextDrawImage(a2, v15, v12);

        CFRelease(v13);
      }
    }
  }
}

- (CGImage)_cnui_imageForSize:(CGSize)a3 scale:(double)a4
{
  v5 = a3.width * a4;
  v6 = a3.height * a4;
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSize(a3);
  v9 = [v7 stringWithFormat:@"%@-Thumbnail", v8];

  if (self)
  {
    cache = self->_cache;
  }

  else
  {
    cache = 0;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __56__CNUIPRLikenessPhotoProvider__cnui_imageForSize_scale___block_invoke;
  v14[3] = &unk_1E76EA3C8;
  v14[4] = self;
  *&v14[5] = v5;
  *&v14[6] = v6;
  v11 = [(CNCache *)cache objectForKey:v9 onCacheMiss:v14];
  if (v11)
  {
    v12 = CFAutorelease(v11);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (CGImage)_cnui_circularImageForSize:(CGSize)a3 scale:(double)a4
{
  OUTLINED_FUNCTION_2_1();
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSize(v11);
  v6 = [v4 stringWithFormat:@"%@-Circular", v5];

  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_4_0();
  v8 = [v7 objectForKey:? onCacheMiss:?];
  if (v8)
  {
    v9 = CFAutorelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CFTypeRef)renderCircularImageForSize:(uint64_t)a1 scale:
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_1();
  v2 = v1;
  v3 = [v1 originalPhotoData];
  objc_opt_class();
  OUTLINED_FUNCTION_0_7();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_3_2();
  v9 = CNUICircularImageCreate(v6, v5, v7, v8);
  if (v9)
  {
    v10 = CFAutorelease(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (CGImage)_cnui_roundedRectImageForSize:(CGSize)a3 scale:(double)a4
{
  OUTLINED_FUNCTION_2_1();
  v4 = MEMORY[0x1E696AEC0];
  v5 = NSStringFromSize(v11);
  v6 = [v4 stringWithFormat:@"%@-RoundedRect", v5];

  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_4_0();
  v8 = [v7 objectForKey:? onCacheMiss:?];
  if (v8)
  {
    v9 = CFAutorelease(v8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (CFTypeRef)renderRoundedRectImageForSize:(uint64_t)a1 scale:
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_2_1();
  v2 = v1;
  v3 = [v1 originalPhotoData];
  objc_opt_class();
  OUTLINED_FUNCTION_0_7();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_3_2();
  v9 = CNUIRoundedRectImageCreate(v6, v5, v7, v8);
  if (v9)
  {
    v10 = CFAutorelease(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end