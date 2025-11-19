@interface UIImage(GKAchievementProgress)
- (id)_gkImageWithProgress:()GKAchievementProgress achievement:isDetail:;
- (id)_gkMaskImageWithProgress:()GKAchievementProgress isDetail:;
- (id)_gkQuestionMarkImage;
@end

@implementation UIImage(GKAchievementProgress)

- (id)_gkQuestionMarkImage
{
  if (_gkQuestionMarkImage_onceToken != -1)
  {
    [UIImage(GKAchievementProgress) _gkQuestionMarkImage];
  }

  v1 = _gkQuestionMarkImage_sImage;

  return v1;
}

- (id)_gkMaskImageWithProgress:()GKAchievementProgress isDetail:
{
  if (a2 <= 0.999)
  {
    if (_gkMaskImageWithProgress_isDetail__onceToken != -1)
    {
      [UIImage(GKAchievementProgress) _gkMaskImageWithProgress:isDetail:];
    }

    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d~%g", a4, *&a2];
    v9 = _gkMaskImageWithProgress_isDetail__sMaskCache;
    objc_sync_enter(v9);
    v5 = [_gkMaskImageWithProgress_isDetail__sMaskCache objectForKey:v8];
    if (!v5)
    {
      [a1 size];
      v11 = v10;
      v13 = v12;
      [a1 scale];
      v15 = v14;
      v31.width = v11;
      v31.height = v13;
      UIGraphicsBeginImageContextWithOptions(v31, 0, v15);
      v16 = [MEMORY[0x277D75348] blackColor];
      [v16 set];

      v17 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{0.0, 0.0, v11, v13}];
      [v17 fill];
      v32.origin.x = 0.0;
      v32.origin.y = 0.0;
      v32.size.width = v11;
      v32.size.height = v13;
      v33 = CGRectInset(v32, 1.5, 1.5);
      x = v33.origin.x;
      y = v33.origin.y;
      width = v33.size.width;
      height = v33.size.height;
      if (a2 <= 0.01)
      {
        v24 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v33.origin.x, v33.origin.y, v33.size.width, v33.size.height}];
        [v24 fillWithBlendMode:16 alpha:1.0];
        v26 = [a1 _gkQuestionMarkImage];
        [v26 size];
        [v26 drawInRect:{round(x + (width - v27) * 0.5), round(y + (height - v28) * 0.5), v27}];
      }

      else
      {
        MidX = CGRectGetMidX(v33);
        v34.origin.x = x;
        v34.origin.y = y;
        v34.size.width = width;
        v34.size.height = height;
        MidY = CGRectGetMidY(v34);
        v24 = [MEMORY[0x277D75208] bezierPath];
        [v24 moveToPoint:{MidX, MidY}];
        v25 = width * 0.5;
        [v24 addLineToPoint:{MidX, MidY - v25}];
        [v24 addArcWithCenter:0 radius:MidX startAngle:MidY endAngle:v25 clockwise:{-1.57079633, (a2 + a2) * 3.14159265 + -1.57079633}];
        [v24 addLineToPoint:{MidX, MidY}];
        [v24 closePath];
        [v24 fillWithBlendMode:16 alpha:1.0];
      }

      v5 = UIGraphicsGetImageFromCurrentImageContext();
      [_gkMaskImageWithProgress_isDetail__sMaskCache setObject:v5 forKey:v8];
      UIGraphicsEndImageContext();
    }

    objc_sync_exit(v9);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_gkImageWithProgress:()GKAchievementProgress achievement:isDetail:
{
  v7 = a1;
  v8 = v7;
  if (a2 <= 0.999)
  {
    [v7 size];
    v10 = v9;
    v12 = v11;
    v13 = [v8 _gkMaskImageWithProgress:a5 isDetail:a2];
    [v8 scale];
    v15 = v14;
    v22.width = v10;
    v22.height = v12;
    UIGraphicsBeginImageContextWithOptions(v22, 0, v15);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSaveGState(CurrentContext);
    CGContextTranslateCTM(CurrentContext, 0.0, v12);
    CGContextScaleCTM(CurrentContext, 1.0, -1.0);
    v17 = [v13 CGImage];
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = v10;
    v23.size.height = v12;
    CGContextClipToMask(CurrentContext, v23, v17);
    v18 = [v8 CGImage];

    v24.origin.x = 0.0;
    v24.origin.y = 0.0;
    v24.size.width = v10;
    v24.size.height = v12;
    CGContextDrawImage(CurrentContext, v24, v18);
    v19 = [MEMORY[0x277D75348] colorWithWhite:0.0 alpha:0.3];
    [v19 set];

    v25.origin.x = 0.0;
    v25.origin.y = 0.0;
    v25.size.width = v10;
    v25.size.height = v12;
    UIRectFillUsingBlendMode(v25, kCGBlendModeNormal);
    CGContextRestoreGState(CurrentContext);
    v8 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v8;
}

@end