@interface CNUIImage
+ (id)cropImageCircular:(id)a3 withCornerRadius:(double)a4 scale:(double)a5;
+ (id)resizeImage:(id)a3 toFitWidth:(double)a4 scale:(double)a5;
@end

@implementation CNUIImage

+ (id)resizeImage:(id)a3 toFitWidth:(double)a4 scale:(double)a5
{
  v7 = a3;
  [v7 size];
  if (v8 <= a4)
  {
    v15 = v7;
  }

  else
  {
    [v7 size];
    v10 = v9 / a4;
    [v7 size];
    v12 = v11 / v10;
    [v7 size];
    v14 = v13 / v10;
    v18.width = v12;
    v18.height = v14;
    UIGraphicsBeginImageContextWithOptions(v18, 0, a5);
    [v7 drawInRect:{0.0, 0.0, v12, v14}];
    v15 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v15;
}

+ (id)cropImageCircular:(id)a3 withCornerRadius:(double)a4 scale:(double)a5
{
  v7 = MEMORY[0x1E69DCAE0];
  v8 = a3;
  v9 = [[v7 alloc] initWithImage:v8];

  v10 = [v9 layer];
  [v10 setMasksToBounds:1];

  v11 = [v9 layer];
  [v11 setCornerRadius:a4];

  [v9 bounds];
  v18.width = v12;
  v18.height = v13;
  UIGraphicsBeginImageContextWithOptions(v18, 0, a5);
  v14 = [v9 layer];
  [v14 renderInContext:UIGraphicsGetCurrentContext()];

  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

@end