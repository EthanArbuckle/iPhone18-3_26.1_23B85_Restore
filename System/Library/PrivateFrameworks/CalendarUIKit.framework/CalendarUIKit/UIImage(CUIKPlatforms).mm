@interface UIImage(CUIKPlatforms)
+ (id)cuik_drawImageWithSize:()CUIKPlatforms drawBlock:;
+ (id)cuik_drawImageWithSize:()CUIKPlatforms scale:drawBlock:;
+ (id)cuik_stripedImageWithBackgroundColor:()CUIKPlatforms stripeColor:scale:;
+ (uint64_t)cuik_imageFromISImage:()CUIKPlatforms;
- (id)cuik_imageWithInsets:()CUIKPlatforms;
- (uint64_t)cuik_CGImage;
- (uint64_t)cuik_imageWithTintColor:()CUIKPlatforms asTemplate:;
@end

@implementation UIImage(CUIKPlatforms)

- (uint64_t)cuik_CGImage
{
  selfCopy = self;

  return [selfCopy CGImage];
}

+ (id)cuik_drawImageWithSize:()CUIKPlatforms drawBlock:
{
  v8 = a5;
  v9 = [self cuik_drawImageWithSize:v8 scale:a2 drawBlock:{a3, CUIKScaleFactor()}];

  return v9;
}

+ (id)cuik_drawImageWithSize:()CUIKPlatforms scale:drawBlock:
{
  v9 = a6;
  v10 = objc_opt_new();
  [v10 setScale:a3];
  [v10 setOpaque:0];
  [v10 setPreferredRange:2];
  v11 = [objc_alloc(MEMORY[0x1E69DCA78]) initWithSize:v10 format:{self, a2}];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__UIImage_CUIKPlatforms__cuik_drawImageWithSize_scale_drawBlock___block_invoke;
  v15[3] = &unk_1E839A7F8;
  v16 = v9;
  v12 = v9;
  v13 = [v11 imageWithActions:v15];

  return v13;
}

+ (id)cuik_stripedImageWithBackgroundColor:()CUIKPlatforms stripeColor:scale:
{
  v6 = CUIKCreateStripedImage(a4, a5, self);
  v7 = [MEMORY[0x1E69DCAB8] imageWithCGImage:v6 scale:0 orientation:self];
  CFRelease(v6);

  return v7;
}

+ (uint64_t)cuik_imageFromISImage:()CUIKPlatforms
{
  v3 = MEMORY[0x1E69DCAB8];
  v4 = a3;
  cGImage = [v4 CGImage];
  [v4 scale];
  v7 = v6;

  return [v3 imageWithCGImage:cGImage scale:0 orientation:v7];
}

- (id)cuik_imageWithInsets:()CUIKPlatforms
{
  [self size];
  v11 = a5 + a3 + v10;
  [self size];
  v15[1] = 3221225472;
  v15[0] = MEMORY[0x1E69E9820];
  v15[2] = __47__UIImage_CUIKPlatforms__cuik_imageWithInsets___block_invoke;
  v15[3] = &unk_1E839A820;
  v15[4] = self;
  *&v15[5] = a3;
  *&v15[6] = a2;
  v13 = [MEMORY[0x1E69DCAB8] cuik_drawImageWithSize:v15 drawBlock:{v11, a4 + a2 + v12}];

  return v13;
}

- (uint64_t)cuik_imageWithTintColor:()CUIKPlatforms asTemplate:
{
  if (a4)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  return [self imageWithTintColor:a3 renderingMode:v4];
}

@end