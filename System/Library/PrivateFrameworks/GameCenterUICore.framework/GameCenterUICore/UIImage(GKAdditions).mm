@interface UIImage(GKAdditions)
+ (id)_gkImageWithCheckedData:()GKAdditions scale:;
+ (void)_gkloadRemoteImageForURL:()GKAdditions queue:withCompletionHandler:;
- (id)_gkCropImageIntoSquare:()GKAdditions;
- (id)_gkImageByScalingToSize:()GKAdditions scale:padColor:;
- (id)_gkImageByTintingWithColor:()GKAdditions;
- (id)circularClippedImage;
- (uint64_t)_gkImageByScalingToSize:()GKAdditions;
@end

@implementation UIImage(GKAdditions)

+ (id)_gkImageWithCheckedData:()GKAdditions scale:
{
  v2 = [MEMORY[0x277D0C090] cgImageForGamesWithData:?];
  if (v2)
  {
    v3 = v2;
    v4 = [MEMORY[0x277D755B8] imageWithCGImage:v2 scale:0 orientation:a1];
    CFRelease(v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_gkImageByScalingToSize:()GKAdditions scale:padColor:
{
  v10 = a6;
  if (a4 <= 0.0)
  {
    v11 = [MEMORY[0x277D759A0] mainScreen];
    [v11 scale];
    a4 = v12;

    if (a4 <= 0.0)
    {
      a4 = 1.0;
    }
  }

  v13 = a2 * a4;
  v14 = a3 * a4;
  v15 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{vcvtd_n_u64_f64(v13 * v14, 2uLL)}];
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v17 = CGBitmapContextCreate([v15 mutableBytes], v13, v14, 8uLL, vcvtd_n_u64_f64(v13, 2uLL), DeviceRGB, 2u);
  CGColorSpaceRelease(DeviceRGB);
  if (v10)
  {
    CGContextSetFillColorWithColor(v17, [v10 CGColor]);
    v23.origin.x = 0.0;
    v23.origin.y = 0.0;
    v23.size.width = v13;
    v23.size.height = v14;
    CGContextFillRect(v17, v23);
    [a1 size];
    [a1 size];
  }

  v18 = [a1 CGImage];
  v24.origin.x = 0.0;
  v24.origin.y = 0.0;
  v24.size.width = v13;
  v24.size.height = v14;
  CGContextDrawImage(v17, v24, v18);
  Image = CGBitmapContextCreateImage(v17);
  CGContextRelease(v17);
  v20 = [MEMORY[0x277D755B8] imageWithCGImage:Image scale:objc_msgSend(a1 orientation:{"imageOrientation"), a4}];
  CGImageRelease(Image);

  return v20;
}

- (uint64_t)_gkImageByScalingToSize:()GKAdditions
{
  [a1 scale];

  return [a1 _gkImageByScalingToSize:0 scale:a2 padColor:{a3, v6}];
}

+ (void)_gkloadRemoteImageForURL:()GKAdditions queue:withCompletionHandler:
{
  v7 = a3;
  v8 = a5;
  v9 = _gkloadRemoteImageForURL_queue_withCompletionHandler__onceToken;
  v10 = a4;
  if (v9 != -1)
  {
    +[UIImage(GKAdditions) _gkloadRemoteImageForURL:queue:withCompletionHandler:];
  }

  v11 = MEMORY[0x277CBEA90];
  v12 = [MEMORY[0x277CCAD30] _gkForClientProcess];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__UIImage_GKAdditions___gkloadRemoteImageForURL_queue_withCompletionHandler___block_invoke_2;
  v15[3] = &unk_27967EE50;
  v16 = v7;
  v17 = v8;
  v13 = v7;
  v14 = v8;
  [v11 _gkLoadRemoteImageDataForURL:v13 session:v12 subdirectory:0 filename:0 queue:v10 handler:v15];
}

- (id)_gkImageByTintingWithColor:()GKAdditions
{
  v4 = a3;
  [a1 size];
  v6 = v5;
  v8 = v7;
  [a1 scale];
  v10 = v9;
  v16.width = v6;
  v16.height = v8;
  UIGraphicsBeginImageContextWithOptions(v16, 0, v10);
  CurrentContext = UIGraphicsGetCurrentContext();
  CGContextTranslateCTM(CurrentContext, 0.0, v8);
  CGContextScaleCTM(CurrentContext, 1.0, -1.0);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeNormal);
  [v4 setFill];

  v17.origin.x = 0.0;
  v17.origin.y = 0.0;
  v17.size.width = v6;
  v17.size.height = v8;
  CGContextFillRect(CurrentContext, v17);
  CGContextSetBlendMode(CurrentContext, kCGBlendModeDestinationIn);
  v12 = [a1 CGImage];
  v18.origin.x = 0.0;
  v18.origin.y = 0.0;
  v18.size.width = v6;
  v18.size.height = v8;
  CGContextDrawImage(CurrentContext, v18, v12);
  v13 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v13;
}

- (id)_gkCropImageIntoSquare:()GKAdditions
{
  v5 = a1;
  Width = CGImageGetWidth([v5 CGImage]);
  Height = CGImageGetHeight([v5 CGImage]);
  if (a2 >= a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = a2;
  }

  v9 = floor(v8 * (Width / a2));
  v10 = (Width - v9) * 0.5;
  v11 = (Height - v9) * 0.5;
  v12 = [v5 CGImage];

  v17.origin.x = v10;
  v17.origin.y = v11;
  v17.size.width = v9;
  v17.size.height = v9;
  v13 = CGImageCreateWithImageInRect(v12, v17);
  v14 = [MEMORY[0x277D755B8] imageWithCGImage:v13];
  CGImageRelease(v13);

  return v14;
}

- (id)circularClippedImage
{
  v1 = a1;
  [v1 size];
  UIGraphicsBeginImageContextWithOptions(v13, 0, 1.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  [v1 size];
  v4 = v3;
  [v1 size];
  v6 = v5;
  if (v4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  v8 = v7 * 0.5;
  CGContextBeginPath(CurrentContext);
  v9 = [MEMORY[0x277D75208] bezierPathWithOvalInRect:{v4 * 0.5 - v8, v6 * 0.5 - v8, v4, v6}];
  CGContextAddPath(CurrentContext, [v9 CGPath]);
  CGContextClip(CurrentContext);
  [v1 drawInRect:{0.0, 0.0, v4, v6}];

  v10 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();

  return v10;
}

@end