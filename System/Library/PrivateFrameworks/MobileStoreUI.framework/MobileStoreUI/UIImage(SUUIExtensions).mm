@interface UIImage(SUUIExtensions)
+ (id)resizeImage:()SUUIExtensions toSize:;
+ (id)singlePointImageWithColor:()SUUIExtensions;
@end

@implementation UIImage(SUUIExtensions)

+ (id)singlePointImageWithColor:()SUUIExtensions
{
  v3 = MEMORY[0x277D759A0];
  v4 = a3;
  mainScreen = [v3 mainScreen];
  [mainScreen scale];
  v7 = v6;
  v13.width = 1.0;
  v13.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v13, 0, v7);

  CurrentContext = UIGraphicsGetCurrentContext();
  cGColor = [v4 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, cGColor);
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = 1.0;
  v14.size.height = 1.0;
  CGContextFillRect(CurrentContext, v14);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

+ (id)resizeImage:()SUUIExtensions toSize:
{
  v7 = a5;
  v11.width = self;
  v11.height = a2;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
  [v7 drawInRect:{0.0, 0.0, self, a2}];

  v8 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v8;
}

@end