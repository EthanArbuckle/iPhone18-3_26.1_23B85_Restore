@interface SUUIProductImageDataConsumer
+ (id)cardConsumer;
+ (id)chartsConsumer;
+ (id)consumerWithSize:(CGSize)a3;
+ (id)giftComposeConsumer;
+ (id)giftComposeLetterboxConsumer;
+ (id)giftComposePosterConsumer;
+ (id)giftResultConsumer;
+ (id)giftThemeConsumer;
+ (id)giftThemeLetterboxConsumer;
+ (id)giftThemePosterConsumer;
+ (id)gridConsumer;
+ (id)lockupConsumerWithSize:(int64_t)a3 itemKind:(int64_t)a4;
+ (id)productPageConsumer;
+ (id)purchasedConsumer;
+ (id)smartBannerConsumer;
+ (id)swooshConsumer;
+ (id)updatesConsumer;
+ (id)wishlistConsumer;
- (CGSize)iconSize;
- (CGSize)imageSize;
- (id)copyWithZone:(_NSZone *)a3;
- (id)imageForColor:(id)a3 size:(CGSize)a4;
- (id)imageForImage:(id)a3;
@end

@implementation SUUIProductImageDataConsumer

+ (id)consumerWithSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  result = [a1 consumer];
  *(result + 2) = width;
  *(result + 3) = height;
  return result;
}

+ (id)gridConsumer
{
  result = [a1 consumer];
  *(result + 1) = vdupq_n_s64(0x4052C00000000000uLL);
  return result;
}

+ (id)lockupConsumerWithSize:(int64_t)a3 itemKind:(int64_t)a4
{
  v6 = [a1 consumer];
  *(v6 + 16) = SUUILockupImageSizeForLockupSize(a3, a4);
  *(v6 + 24) = v7;

  return v6;
}

+ (id)cardConsumer
{
  v2 = [a1 consumer];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 64.0;
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 72.0;
  }

  v2[2] = v5;
  v2[3] = v5;

  return v2;
}

+ (id)chartsConsumer
{
  v2 = [a1 consumer];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 64.0;
  if (v4 == 1)
  {
    v5 = 67.0;
  }

  v2[2] = v5;
  v2[3] = v5;

  return v2;
}

+ (id)updatesConsumer
{
  v2 = [a1 consumer];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 57.0;
  if (v4 == 1)
  {
    v5 = 72.0;
  }

  v2[2] = v5;
  v2[3] = v5;

  return v2;
}

+ (id)purchasedConsumer
{
  v2 = [a1 consumer];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 57.0;
  if (v4 == 1)
  {
    v5 = 72.0;
  }

  v2[2] = v5;
  v2[3] = v5;

  return v2;
}

+ (id)productPageConsumer
{
  v2 = [a1 consumer];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 100.0;
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 170.0;
  }

  v2[2] = v5;
  v2[3] = v5;

  return v2;
}

+ (id)swooshConsumer
{
  v2 = [a1 consumer];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 72.0;
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 90.0;
  }

  v2[2] = v5;
  v2[3] = v5;

  return v2;
}

+ (id)giftComposeConsumer
{
  result = [a1 consumer];
  *(result + 1) = vdupq_n_s64(0x4052C00000000000uLL);
  return result;
}

+ (id)giftComposeLetterboxConsumer
{
  result = [a1 consumer];
  *(result + 1) = xmmword_259FCAC70;
  return result;
}

+ (id)giftComposePosterConsumer
{
  v2 = [a1 consumer];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = qword_259FCAC80[(v4 & 0xFFFFFFFFFFFFFFFBLL) == 1];
  v2[2] = v5;
  v2[3] = v5;

  return v2;
}

+ (id)giftThemeConsumer
{
  result = [a1 consumer];
  *(result + 1) = vdupq_n_s64(0x404C800000000000uLL);
  return result;
}

+ (id)giftThemeLetterboxConsumer
{
  result = [a1 consumer];
  *(result + 1) = xmmword_259FCAC90;
  return result;
}

+ (id)giftThemePosterConsumer
{
  result = [a1 consumer];
  *(result + 1) = vdupq_n_s64(0x404C800000000000uLL);
  return result;
}

+ (id)giftResultConsumer
{
  v2 = [a1 consumer];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 72.0;
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 144.0;
  }

  v2[2] = v5;
  v2[3] = v5;

  return v2;
}

+ (id)smartBannerConsumer
{
  v2 = [a1 consumer];
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  v5 = 64.0;
  if ((v4 & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 75.0;
  }

  v2[2] = v5;
  v2[3] = v5;

  return v2;
}

+ (id)wishlistConsumer
{
  result = [a1 consumer];
  *(result + 1) = vdupq_n_s64(0x4050000000000000uLL);
  return result;
}

- (CGSize)imageSize
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)imageForColor:(id)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v32[2] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = 0;
  if (width > 0.0 && height > 0.0)
  {
    v31 = 0uLL;
    v30 = 0u;
    v29 = 0u;
    SUUIIconFrameForIconSize(&v31, &v29, width, height, self->_iconSize.width, self->_iconSize.height, 0.0);
    colorScheme = self->_colorScheme;
    v27 = 0;
    v28 = 0;
    v26 = 0;
    SUUIIconColorsForColorScheme(colorScheme, &v28, &v27, &v26);
    v10 = v28;
    v11 = v27;
    v12 = v26;
    v32[0] = [v10 CGColor];
    v32[1] = [v11 CGColor];
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
    v14 = [MEMORY[0x277CD9EB0] layer];
    [v14 setBounds:{v29, v30}];
    [v14 setColors:v13];
    [v14 setLocations:&unk_286BBE070];
    v15 = [MEMORY[0x277D75568] preferredFormat];
    v16 = [MEMORY[0x277D759A0] mainScreen];
    [v16 scale];
    [v15 setScale:?];

    v17 = objc_alloc(MEMORY[0x277D75560]);
    v18 = [v17 initWithSize:v15 format:v31];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __51__SUUIProductImageDataConsumer_imageForColor_size___block_invoke;
    v21[3] = &unk_2798F6AA8;
    v23 = v31;
    v24 = v29;
    v25 = v30;
    v21[4] = self;
    v22 = v14;
    v19 = v14;
    v8 = [v18 imageWithActions:v21];
  }

  return v8;
}

void __51__SUUIProductImageDataConsumer_imageForColor_size___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = *(a1 + 48);
  v4 = *(a1 + 56);
  v5 = *(*(a1 + 32) + 8);
  if (v5)
  {
    [v5 setFill];
  }

  [v6 clipToRect:{*(a1 + 64), *(a1 + 72), *(a1 + 80), *(a1 + 88)}];
  [v6 fillRect:{0.0, 0.0, v3, v4}];
  [*(a1 + 40) renderInContext:{objc_msgSend(v6, "CGContext")}];
}

- (id)imageForImage:(id)a3
{
  v4 = a3;
  v18.width = 0.0;
  v18.height = 0.0;
  v16 = 0u;
  v17 = 0u;
  [v4 size];
  SUUIIconFrameForIconSize(&v18.width, &v16, v5, v6, self->_iconSize.width, self->_iconSize.height, 0.0);
  colorScheme = self->_colorScheme;
  v15 = 0;
  SUUIIconColorsForColorScheme(colorScheme, 0, 0, &v15);
  v8 = v15;
  v9 = self->_backgroundColor != 0;
  v10 = [MEMORY[0x277D759A0] mainScreen];
  [v10 scale];
  UIGraphicsBeginImageContextWithOptions(v18, v9, v11);

  backgroundColor = self->_backgroundColor;
  if (backgroundColor)
  {
    [(UIColor *)backgroundColor set];
    v20.size.width = v18.width;
    v20.size.height = v18.height;
    v20.origin.x = 0.0;
    v20.origin.y = 0.0;
    UIRectFill(v20);
  }

  [v4 drawInRect:{v16, v17}];
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong((v4 + 8), self->_backgroundColor);
  objc_storeStrong((v4 + 32), self->_colorScheme);
  *(v4 + 16) = self->_iconSize;
  return v4;
}

- (CGSize)iconSize
{
  width = self->_iconSize.width;
  height = self->_iconSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end