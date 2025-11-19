@interface UIImage(NTKRoundedCornerOverlayView)
+ (uint64_t)newImageForScreenCorner:()NTKRoundedCornerOverlayView screenScale:cornerRadius:;
@end

@implementation UIImage(NTKRoundedCornerOverlayView)

+ (uint64_t)newImageForScreenCorner:()NTKRoundedCornerOverlayView screenScale:cornerRadius:
{
  v8 = ceil(a2 * 1.528665 * a1) / a1;
  v17.width = v8 + 0.5;
  v17.height = v8 + 0.5;
  UIGraphicsBeginImageContextWithOptions(v17, 0, a1);
  v9 = [MEMORY[0x277D75348] blackColor];
  [v9 setFill];

  v10 = [MEMORY[0x277D75208] bezierPathWithRect:{0.0, 0.0, v8 + 0.5, v8 + 0.5}];
  [v10 fill];

  CurrentContext = UIGraphicsGetCurrentContext();
  if (a5 > 3)
  {
    if (a5 == 4)
    {
      v12 = -0.5;
      v13 = -0.5 - v8;
      goto LABEL_11;
    }

    if (a5 == 8)
    {
      v12 = -0.5 - v8;
      v13 = -0.5 - v8;
LABEL_11:
      CGContextTranslateCTM(CurrentContext, v12, v13);
    }
  }

  else
  {
    if (a5 == 1)
    {
      v12 = -0.5;
      goto LABEL_9;
    }

    if (a5 == 2)
    {
      v12 = -0.5 - v8;
LABEL_9:
      v13 = -0.5;
      goto LABEL_11;
    }
  }

  v14 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:1.0 cornerRadius:{1.0, v8 + v8, v8 + v8, a2 + -1.0}];
  [v14 setLineWidth:1.0];
  [v14 fillWithBlendMode:16 alpha:1.0];
  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

@end