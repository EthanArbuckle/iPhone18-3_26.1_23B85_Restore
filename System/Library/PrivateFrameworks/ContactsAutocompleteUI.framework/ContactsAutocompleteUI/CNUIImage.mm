@interface CNUIImage
+ (id)cropImageCircular:(id)circular withCornerRadius:(double)radius scale:(double)scale;
+ (id)resizeImage:(id)image toFitWidth:(double)width scale:(double)scale;
@end

@implementation CNUIImage

+ (id)resizeImage:(id)image toFitWidth:(double)width scale:(double)scale
{
  imageCopy = image;
  [imageCopy size];
  if (v8 <= width)
  {
    v15 = imageCopy;
  }

  else
  {
    [imageCopy size];
    v10 = v9 / width;
    [imageCopy size];
    v12 = v11 / v10;
    [imageCopy size];
    v14 = v13 / v10;
    v18.width = v12;
    v18.height = v14;
    UIGraphicsBeginImageContextWithOptions(v18, 0, scale);
    [imageCopy drawInRect:{0.0, 0.0, v12, v14}];
    v15 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v15;
}

+ (id)cropImageCircular:(id)circular withCornerRadius:(double)radius scale:(double)scale
{
  v7 = MEMORY[0x1E69DCAE0];
  circularCopy = circular;
  v9 = [[v7 alloc] initWithImage:circularCopy];

  layer = [v9 layer];
  [layer setMasksToBounds:1];

  layer2 = [v9 layer];
  [layer2 setCornerRadius:radius];

  [v9 bounds];
  v18.width = v12;
  v18.height = v13;
  UIGraphicsBeginImageContextWithOptions(v18, 0, scale);
  layer3 = [v9 layer];
  [layer3 renderInContext:UIGraphicsGetCurrentContext()];

  v15 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v15;
}

@end