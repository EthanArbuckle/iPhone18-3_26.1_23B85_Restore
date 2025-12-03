@interface UIImage(DOCNodeThumbnail)
- (id)doc_averageColorInRect:()DOCNodeThumbnail;
@end

@implementation UIImage(DOCNodeThumbnail)

- (id)doc_averageColorInRect:()DOCNodeThumbnail
{
  if (doc_averageColorInRect__onceToken != -1)
  {
    [UIImage(DOCNodeThumbnail) doc_averageColorInRect:];
  }

  [self scale];
  v11 = a2 * v10;
  v12 = a3 * v10;
  v13 = a4 * v10;
  v14 = a5 * v10;
  data = 0;
  v15 = CGBitmapContextCreate(&data, 1uLL, 1uLL, 8uLL, 4uLL, doc_averageColorInRect__colorSpace, 0x4005u);
  CGContextSetInterpolationQuality(v15, kCGInterpolationLow);
  cGImage = [self CGImage];
  v25.origin.x = v11;
  v25.origin.y = v12;
  v25.size.width = v13;
  v25.size.height = v14;
  v17 = CGImageCreateWithImageInRect(cGImage, v25);
  v26.origin.x = 0.0;
  v26.origin.y = 0.0;
  v26.size.width = 1.0;
  v26.size.height = 1.0;
  CGContextDrawImage(v15, v26, v17);
  CGImageRelease(v17);
  CGContextRelease(v15);
  LOBYTE(v19) = BYTE1(data);
  LOBYTE(v18) = data;
  LOBYTE(v20) = BYTE2(data);
  v21 = [MEMORY[0x277D75348] colorWithRed:v18 / 255.0 green:v19 / 255.0 blue:v20 / 255.0 alpha:1.0];

  return v21;
}

@end