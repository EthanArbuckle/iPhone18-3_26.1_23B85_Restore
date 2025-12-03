@interface SUUIProductImageDataConsumer
+ (id)cardConsumer;
+ (id)chartsConsumer;
+ (id)consumerWithSize:(CGSize)size;
+ (id)giftComposeConsumer;
+ (id)giftComposeLetterboxConsumer;
+ (id)giftComposePosterConsumer;
+ (id)giftResultConsumer;
+ (id)giftThemeConsumer;
+ (id)giftThemeLetterboxConsumer;
+ (id)giftThemePosterConsumer;
+ (id)gridConsumer;
+ (id)lockupConsumerWithSize:(int64_t)size itemKind:(int64_t)kind;
+ (id)productPageConsumer;
+ (id)purchasedConsumer;
+ (id)smartBannerConsumer;
+ (id)swooshConsumer;
+ (id)updatesConsumer;
+ (id)wishlistConsumer;
- (CGSize)iconSize;
- (CGSize)imageSize;
- (id)copyWithZone:(_NSZone *)zone;
- (id)imageForColor:(id)color size:(CGSize)size;
- (id)imageForImage:(id)image;
@end

@implementation SUUIProductImageDataConsumer

+ (id)consumerWithSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  result = [self consumer];
  *(result + 2) = width;
  *(result + 3) = height;
  return result;
}

+ (id)gridConsumer
{
  result = [self consumer];
  *(result + 1) = vdupq_n_s64(0x4052C00000000000uLL);
  return result;
}

+ (id)lockupConsumerWithSize:(int64_t)size itemKind:(int64_t)kind
{
  consumer = [self consumer];
  *(consumer + 16) = SUUILockupImageSizeForLockupSize(size, kind);
  *(consumer + 24) = v7;

  return consumer;
}

+ (id)cardConsumer
{
  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 64.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 72.0;
  }

  consumer[2] = v5;
  consumer[3] = v5;

  return consumer;
}

+ (id)chartsConsumer
{
  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 64.0;
  if (userInterfaceIdiom == 1)
  {
    v5 = 67.0;
  }

  consumer[2] = v5;
  consumer[3] = v5;

  return consumer;
}

+ (id)updatesConsumer
{
  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 57.0;
  if (userInterfaceIdiom == 1)
  {
    v5 = 72.0;
  }

  consumer[2] = v5;
  consumer[3] = v5;

  return consumer;
}

+ (id)purchasedConsumer
{
  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 57.0;
  if (userInterfaceIdiom == 1)
  {
    v5 = 72.0;
  }

  consumer[2] = v5;
  consumer[3] = v5;

  return consumer;
}

+ (id)productPageConsumer
{
  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 100.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 170.0;
  }

  consumer[2] = v5;
  consumer[3] = v5;

  return consumer;
}

+ (id)swooshConsumer
{
  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 72.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 90.0;
  }

  consumer[2] = v5;
  consumer[3] = v5;

  return consumer;
}

+ (id)giftComposeConsumer
{
  result = [self consumer];
  *(result + 1) = vdupq_n_s64(0x4052C00000000000uLL);
  return result;
}

+ (id)giftComposeLetterboxConsumer
{
  result = [self consumer];
  *(result + 1) = xmmword_259FCAC70;
  return result;
}

+ (id)giftComposePosterConsumer
{
  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = qword_259FCAC80[(userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1];
  consumer[2] = v5;
  consumer[3] = v5;

  return consumer;
}

+ (id)giftThemeConsumer
{
  result = [self consumer];
  *(result + 1) = vdupq_n_s64(0x404C800000000000uLL);
  return result;
}

+ (id)giftThemeLetterboxConsumer
{
  result = [self consumer];
  *(result + 1) = xmmword_259FCAC90;
  return result;
}

+ (id)giftThemePosterConsumer
{
  result = [self consumer];
  *(result + 1) = vdupq_n_s64(0x404C800000000000uLL);
  return result;
}

+ (id)giftResultConsumer
{
  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 72.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 144.0;
  }

  consumer[2] = v5;
  consumer[3] = v5;

  return consumer;
}

+ (id)smartBannerConsumer
{
  consumer = [self consumer];
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v5 = 64.0;
  if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
  {
    v5 = 75.0;
  }

  consumer[2] = v5;
  consumer[3] = v5;

  return consumer;
}

+ (id)wishlistConsumer
{
  result = [self consumer];
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

- (id)imageForColor:(id)color size:(CGSize)size
{
  height = size.height;
  width = size.width;
  v32[2] = *MEMORY[0x277D85DE8];
  colorCopy = color;
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
    layer = [MEMORY[0x277CD9EB0] layer];
    [layer setBounds:{v29, v30}];
    [layer setColors:v13];
    [layer setLocations:&unk_286BBE070];
    preferredFormat = [MEMORY[0x277D75568] preferredFormat];
    mainScreen = [MEMORY[0x277D759A0] mainScreen];
    [mainScreen scale];
    [preferredFormat setScale:?];

    v17 = objc_alloc(MEMORY[0x277D75560]);
    v18 = [v17 initWithSize:preferredFormat format:v31];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __51__SUUIProductImageDataConsumer_imageForColor_size___block_invoke;
    v21[3] = &unk_2798F6AA8;
    v23 = v31;
    v24 = v29;
    v25 = v30;
    v21[4] = self;
    v22 = layer;
    v19 = layer;
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

- (id)imageForImage:(id)image
{
  imageCopy = image;
  v18.width = 0.0;
  v18.height = 0.0;
  v16 = 0u;
  v17 = 0u;
  [imageCopy size];
  SUUIIconFrameForIconSize(&v18.width, &v16, v5, v6, self->_iconSize.width, self->_iconSize.height, 0.0);
  colorScheme = self->_colorScheme;
  v15 = 0;
  SUUIIconColorsForColorScheme(colorScheme, 0, 0, &v15);
  v8 = v15;
  v9 = self->_backgroundColor != 0;
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
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

  [imageCopy drawInRect:{v16, v17}];
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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