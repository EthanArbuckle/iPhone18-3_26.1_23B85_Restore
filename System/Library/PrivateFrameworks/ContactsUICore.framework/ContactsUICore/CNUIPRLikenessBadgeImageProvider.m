@interface CNUIPRLikenessBadgeImageProvider
- (CGImage)_cnui_imageForSize:(CGSize)a3 scale:(double)a4;
- (CGImage)badgeCGImage;
- (CGImage)renderCircularImageForSize:(CGSize)a3 scale:(double)a4;
- (CGImage)renderRoundedRectImageForSize:(CGSize)a3 scale:(double)a4;
- (CNUIPRLikenessBadgeImageProvider)initWithBadge:(id)a3;
@end

@implementation CNUIPRLikenessBadgeImageProvider

- (CNUIPRLikenessBadgeImageProvider)initWithBadge:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = CNUIPRLikenessBadgeImageProvider;
  v5 = [(CNUIPRLikenessBadgeImageProvider *)&v14 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E6996660] atomicCache];
    cache = v5->_cache;
    v5->_cache = v6;

    v8 = [v4 imageData];
    badgeImageData = v5->_badgeImageData;
    v5->_badgeImageData = v8;

    v5->_badgeType = [v4 badgeType];
    v10 = [v4 image];
    badgeImage = v5->_badgeImage;
    v5->_badgeImage = v10;

    v12 = v5;
  }

  return v5;
}

- (CGImage)badgeCGImage
{
  v3 = [(CNUIPRLikenessBadgeImageProvider *)self badgeImage];

  if (v3)
  {
    v4 = [(CNUIPRLikenessBadgeImageProvider *)self badgeImage];
    v5 = imageRefFromImage(v4);
  }

  else
  {
    v4 = [(CNUIPRLikenessBadgeImageProvider *)self badgeImageData];
    v5 = [CNUIPRLikenessPhotoProvider cgImageFromData:v4];
  }

  v6 = v5;

  return v6;
}

- (CGImage)_cnui_imageForSize:(CGSize)a3 scale:(double)a4
{
  height = a3.height;
  width = a3.width;
  v8 = MEMORY[0x1E696AEC0];
  v9 = NSStringFromSize(a3);
  v10 = [v8 stringWithFormat:@"%@-Thumbnail", v9];

  v11 = [(CNUIPRLikenessBadgeImageProvider *)self cache];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__CNUIPRLikenessBadgeImageProvider__cnui_imageForSize_scale___block_invoke;
  v14[3] = &unk_1E76E85A8;
  v14[4] = self;
  *&v14[5] = width;
  *&v14[6] = height;
  *&v14[7] = a4;
  v12 = [v11 objectForKey:v10 onCacheMiss:v14];

  if (v12)
  {
    v12 = CFAutorelease(v12);
  }

  return v12;
}

id __61__CNUIPRLikenessBadgeImageProvider__cnui_imageForSize_scale___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) badgeType];
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      v3 = [*(a1 + 32) renderRoundedRectImageForSize:*(a1 + 40) scale:{*(a1 + 48), *(a1 + 56)}];
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = [*(a1 + 32) renderCircularImageForSize:*(a1 + 40) scale:{*(a1 + 48), *(a1 + 56)}];
  }

  return v3;
}

- (CGImage)renderRoundedRectImageForSize:(CGSize)a3 scale:(double)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__CNUIPRLikenessBadgeImageProvider_renderRoundedRectImageForSize_scale___block_invoke;
  v5[3] = &unk_1E76E85D0;
  v5[4] = self;
  result = CNUIRoundedRectImageCreate(v5, a3.width, a3.height, a4);
  if (result)
  {
    return CFAutorelease(result);
  }

  return result;
}

void __72__CNUIPRLikenessBadgeImageProvider_renderRoundedRectImageForSize_scale___block_invoke(uint64_t a1, CGContext *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = [*(a1 + 32) badgeCGImage];
  if (v11)
  {
    v12 = CFRetain(v11);
    v18.origin.x = a3;
    v18.origin.y = a4;
    v18.size.width = a5;
    v18.size.height = a6;
    CGContextDrawImage(a2, v18, v12);
    if (v12)
    {

      CFRelease(v12);
    }
  }

  else
  {
    v13 = a3;
    v14 = a4;
    v15 = a5;
    v16 = a6;

    CGContextDrawImage(a2, *&v13, 0);
  }
}

- (CGImage)renderCircularImageForSize:(CGSize)a3 scale:(double)a4
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__CNUIPRLikenessBadgeImageProvider_renderCircularImageForSize_scale___block_invoke;
  v5[3] = &unk_1E76E85F8;
  v5[4] = self;
  *&v5[5] = a4;
  result = CNUICircularImageCreate(v5, a3.width, a3.height, a4);
  if (result)
  {
    return CFAutorelease(result);
  }

  return result;
}

void __69__CNUIPRLikenessBadgeImageProvider_renderCircularImageForSize_scale___block_invoke(uint64_t a1, CGContext *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  SRGB = CGColorCreateSRGB(1.0, 1.0, 1.0, 1.0);
  CGContextSetFillColorWithColor(a2, SRGB);
  v18.origin.x = a3;
  v18.origin.y = a4;
  v18.size.width = a5;
  v18.size.height = a6;
  CGContextFillRect(a2, v18);
  v13 = [*(a1 + 32) badgeCGImage];
  if (v13)
  {
    v14 = CFRetain(v13);
  }

  else
  {
    v14 = 0;
  }

  v19.origin.x = a3;
  v19.origin.y = a4;
  v19.size.width = a5;
  v19.size.height = a6;
  CGContextDrawImage(a2, v19, v14);
  CGContextSetLineWidth(a2, ceil(a5 * 0.04 * *(a1 + 40)));
  CGContextSetStrokeColorWithColor(a2, SRGB);
  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  MidX = CGRectGetMidX(v20);
  v21.origin.x = a3;
  v21.origin.y = a4;
  v21.size.width = a5;
  v21.size.height = a6;
  MidY = CGRectGetMidY(v21);
  CGContextAddArc(a2, MidX, MidY, a5 * 0.5, 0.0, 6.28318531, 1);
  CGContextStrokePath(a2);
  if (v14)
  {
    CFRelease(v14);
  }

  if (SRGB)
  {

    CFRelease(SRGB);
  }
}

@end