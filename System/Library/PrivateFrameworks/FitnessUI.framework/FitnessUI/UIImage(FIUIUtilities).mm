@interface UIImage(FIUIUtilities)
+ (id)fiui_imageWithColor:()FIUIUtilities size:;
@end

@implementation UIImage(FIUIUtilities)

+ (id)fiui_imageWithColor:()FIUIUtilities size:
{
  v7 = a5;
  v13.width = a1;
  v13.height = a2;
  UIGraphicsBeginImageContextWithOptions(v13, 1, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v9 = [v7 CGColor];

  CGContextSetFillColorWithColor(CurrentContext, v9);
  v14.origin.x = 0.0;
  v14.origin.y = 0.0;
  v14.size.width = a1;
  v14.size.height = a2;
  CGContextFillRect(CurrentContext, v14);
  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

@end