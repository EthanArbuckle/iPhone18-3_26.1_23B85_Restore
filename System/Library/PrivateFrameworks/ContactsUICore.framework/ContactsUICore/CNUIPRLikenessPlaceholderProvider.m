@interface CNUIPRLikenessPlaceholderProvider
+ (id)companyImageNameForDiameter:(double)a3;
+ (id)imageNameForDiameter:(double)a3;
- (CGImage)_cnui_circularImageForSize:(CGSize)a3 scale:(double)a4;
- (CGImage)_cnui_roundedRectImageForSize:(CGSize)a3 scale:(double)a4;
- (CGImage)renderCircularImageForSilhouetteImage:(CGImage *)a3 size:(CGSize)a4 scale:(double)a5;
- (CGImage)renderRoundedRectImageForSilhouetteImage:(CGImage *)a3 size:(CGSize)a4 scale:(double)a5;
- (CNUIPRLikenessPlaceholderProvider)init;
- (CNUIPRLikenessPlaceholderProvider)initWithContact:(id)a3;
- (id)_cnui_likenessForSize:(CGSize)a3 scale:(double)a4;
@end

@implementation CNUIPRLikenessPlaceholderProvider

- (CNUIPRLikenessPlaceholderProvider)init
{
  v7.receiver = self;
  v7.super_class = CNUIPRLikenessPlaceholderProvider;
  v2 = [(CNUIPRLikenessPlaceholderProvider *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E6996660] atomicCache];
    cache = v2->_cache;
    v2->_cache = v3;

    v5 = v2;
  }

  return v2;
}

+ (id)imageNameForDiameter:(double)a3
{
  if (a3 <= 32.0)
  {
    return @"silhouette-S";
  }

  if (a3 <= 45.0)
  {
    return @"silhouette-M";
  }

  if (a3 <= 96.0)
  {
    return @"silhouette-L";
  }

  if (a3 <= 120.0)
  {
    return @"silhouette-ATV-M";
  }

  if (a3 <= 148.0)
  {
    return @"silhouette-ATV-L";
  }

  if (a3 <= 180.0)
  {
    return @"silhouette-ATV-XL";
  }

  if (a3 <= 250.0)
  {
    return @"silhouette-ATV-XXL";
  }

  return @"silhouette-EDU-XL";
}

+ (id)companyImageNameForDiameter:(double)a3
{
  if (a3 <= 14.0 || a3 <= 20.0 || a3 <= 32.0)
  {
    return @"company-silhouette-S";
  }

  if (a3 > 45.0)
  {
    return @"company-silhouette-L";
  }

  return @"company-silhouette-M";
}

- (CNUIPRLikenessPlaceholderProvider)initWithContact:(id)a3
{
  v4 = a3;
  v5 = [(CNUIPRLikenessPlaceholderProvider *)self init];
  if (v5)
  {
    if ([v4 isKeyAvailable:*MEMORY[0x1E695C410]])
    {
      v6 = [v4 contactType] == 1;
    }

    else
    {
      v6 = 0;
    }

    v5->_isForCompany = v6;
    v7 = v5;
  }

  return v5;
}

- (CGImage)renderCircularImageForSilhouetteImage:(CGImage *)a3 size:(CGSize)a4 scale:(double)a5
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __86__CNUIPRLikenessPlaceholderProvider_renderCircularImageForSilhouetteImage_size_scale___block_invoke;
  v6[3] = &unk_1E76E85F8;
  v6[4] = self;
  v6[5] = a3;
  result = CNUICircularImageCreate(v6, a4.width, a4.height, a5);
  if (result)
  {
    return CFAutorelease(result);
  }

  return result;
}

void __86__CNUIPRLikenessPlaceholderProvider_renderCircularImageForSilhouetteImage_size_scale___block_invoke(uint64_t a1, CGContext *a2, CGColorSpace *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  CNUIDrawLikenessPlatterInContext(a2, a3, a4, a5, a6, a7);
  if ([*(a1 + 32) isForCompany])
  {
    v13 = ceil(a7 * 0.06);
    v14 = a4;
    v15 = a5;
    v16 = a6;
    v17 = a7;
    v18 = v13;
  }

  else
  {
    v13 = 0.0;
    v18 = 0.0;
    v14 = a4;
    v15 = a5;
    v16 = a6;
    v17 = a7;
  }

  v21 = CGRectInset(*&v14, v13, v18);
  v19 = *(a1 + 40);

  DrawSilhouetteInContext(a2, v19, 1, v21.origin.x, v21.origin.y, v21.size.width, v21.size.height);
}

- (CGImage)renderRoundedRectImageForSilhouetteImage:(CGImage *)a3 size:(CGSize)a4 scale:(double)a5
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __89__CNUIPRLikenessPlaceholderProvider_renderRoundedRectImageForSilhouetteImage_size_scale___block_invoke;
  v6[3] = &__block_descriptor_40_e72_v56__0__CGContext__8_CGRect__CGPoint_dd__CGSize_dd__16__CGColorSpace__48l;
  v6[4] = a3;
  result = CNUIRoundedRectImageCreate(v6, a4.width, a4.height, a5);
  if (result)
  {
    return CFAutorelease(result);
  }

  return result;
}

void __89__CNUIPRLikenessPlaceholderProvider_renderRoundedRectImageForSilhouetteImage_size_scale___block_invoke(uint64_t a1, CGContext *a2, CGColorSpace *a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  CNUIDrawLikenessPlatterInContext(a2, a3, a4, a5, a6, a7);
  v16.origin.x = a4;
  v16.origin.y = a5;
  v16.size.width = a6;
  v16.size.height = a7;
  v13 = ceil(a7 * 0.04);
  v17 = CGRectInset(v16, v13, v13);
  v14 = *(a1 + 32);

  DrawSilhouetteInContext(a2, v14, 0, v17.origin.x, v17.origin.y, v17.size.width, v17.size.height);
}

- (CGImage)_cnui_circularImageForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = [(CNUIPRLikenessPlaceholderProvider *)self isForCompany];
  v9 = objc_opt_class();
  if (width >= height)
  {
    v10 = height;
  }

  else
  {
    v10 = width;
  }

  if (v8)
  {
    [v9 companyImageNameForDiameter:v10];
  }

  else
  {
    [v9 imageNameForDiameter:v10];
  }
  v11 = ;
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v13 = [v11 stringByAppendingFormat:@"_%@-Circular", v12];

  v14 = [(CNUIPRLikenessPlaceholderProvider *)self cache];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __70__CNUIPRLikenessPlaceholderProvider__cnui_circularImageForSize_scale___block_invoke;
  v18[3] = &unk_1E76E9AB0;
  v15 = v11;
  v19 = v15;
  v20 = self;
  v21 = a4;
  v22 = width;
  v23 = height;
  v16 = [v14 objectForKey:v13 onCacheMiss:v18];

  if (v16)
  {
    v16 = CFAutorelease(v16);
  }

  return v16;
}

id __70__CNUIPRLikenessPlaceholderProvider__cnui_circularImageForSize_scale___block_invoke(uint64_t a1)
{
  v2 = [CNUIImageProvider uncachedImageForResource:*(a1 + 32) template:0];
  v3 = [v2 CGImage];
  v4 = *(a1 + 48);
  if (v4 <= 0.0)
  {
    [v2 scale];
    v4 = v5;
  }

  v6 = [*(a1 + 40) renderCircularImageForSilhouetteImage:v3 size:*(a1 + 56) scale:{*(a1 + 64), v4}];

  return v6;
}

- (CGImage)_cnui_roundedRectImageForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = objc_opt_class();
  if (width >= height)
  {
    v9 = height;
  }

  else
  {
    v9 = width;
  }

  v10 = [v8 companyImageNameForDiameter:v9];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:a4];
  v12 = [v10 stringByAppendingFormat:@"_%@-RoundedRect", v11];

  v13 = [(CNUIPRLikenessPlaceholderProvider *)self cache];
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __73__CNUIPRLikenessPlaceholderProvider__cnui_roundedRectImageForSize_scale___block_invoke;
  v17[3] = &unk_1E76E9AB0;
  v14 = v10;
  v18 = v14;
  v19 = self;
  v20 = a4;
  v21 = width;
  v22 = height;
  v15 = [v13 objectForKey:v12 onCacheMiss:v17];

  if (v15)
  {
    v15 = CFAutorelease(v15);
  }

  return v15;
}

id __73__CNUIPRLikenessPlaceholderProvider__cnui_roundedRectImageForSize_scale___block_invoke(uint64_t a1)
{
  v2 = [CNUIImageProvider uncachedImageForResource:*(a1 + 32) template:0];
  v3 = [v2 CGImage];
  v4 = *(a1 + 48);
  if (v4 <= 0.0)
  {
    [v2 scale];
    v4 = v5;
  }

  v6 = [*(a1 + 40) renderRoundedRectImageForSilhouetteImage:v3 size:*(a1 + 56) scale:{*(a1 + 64), v4}];

  return v6;
}

- (id)_cnui_likenessForSize:(CGSize)a3 scale:(double)a4
{
  v4 = [(CNUIPRLikenessPlaceholderProvider *)self _cnui_circularImageForSize:a3.width scale:a3.height, a4];
  v5 = MEMORY[0x1E69BDC38];

  return [v5 photoWithScope:2 image:v4];
}

@end