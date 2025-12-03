@interface UIImage(CarDisplay)
- (id)car_scaledImageWithSize:()CarDisplay;
@end

@implementation UIImage(CarDisplay)

- (id)car_scaledImageWithSize:()CarDisplay
{
  [self size];
  v7 = a2 / v6;
  [self size];
  if (v7 >= a3 / v8)
  {
    v7 = a3 / v8;
  }

  [self size];
  v10 = v9 * v7;
  [self size];
  v12 = v11 * v7;
  v16.width = v10;
  v16.height = v12;
  UIGraphicsBeginImageContextWithOptions(v16, 0, 0.0);
  [self drawInRect:{0.0, 0.0, v10, v12}];
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

@end