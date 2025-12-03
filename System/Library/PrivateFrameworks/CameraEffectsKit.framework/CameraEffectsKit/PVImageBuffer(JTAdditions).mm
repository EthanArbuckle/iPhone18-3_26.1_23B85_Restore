@interface PVImageBuffer(JTAdditions)
- (uint64_t)copyOfUIImage;
- (uint64_t)copyOfUIImage:()JTAdditions;
- (uint64_t)copyOfUIImageFromRectInPixels:()JTAdditions atSizeInPixels:;
@end

@implementation PVImageBuffer(JTAdditions)

- (uint64_t)copyOfUIImage
{
  uiImage = [self uiImage];
  if (!uiImage)
  {
    return 0;
  }

  v2 = uiImage;
  v3 = UIImagePNGRepresentation(uiImage);
  v4 = [MEMORY[0x277D755B8] imageWithData:v3];

  return v4;
}

- (uint64_t)copyOfUIImage:()JTAdditions
{
  cgImage = [self cgImage];
  if (!cgImage)
  {
    return 0;
  }

  v15.origin.x = a2;
  v15.origin.y = a3;
  v15.size.width = a4;
  v15.size.height = a5;
  v10 = CGImageCreateWithImageInRect(cgImage, v15);
  v11 = [MEMORY[0x277D755B8] imageWithCGImage:v10];
  CGImageRelease(v10);
  v12 = UIImagePNGRepresentation(v11);
  v13 = [MEMORY[0x277D755B8] imageWithData:v12];

  return v13;
}

- (uint64_t)copyOfUIImageFromRectInPixels:()JTAdditions atSizeInPixels:
{
  cgImage = [self cgImage];
  if (!cgImage)
  {
    return 0;
  }

  v22.origin.x = a2;
  v22.origin.y = a3;
  v22.size.width = a4;
  v22.size.height = a5;
  v14 = CGImageCreateWithImageInRect(cgImage, v22);
  if (copyOfUIImageFromRectInPixels_atSizeInPixels__onceToken != -1)
  {
    [PVImageBuffer(JTAdditions) copyOfUIImageFromRectInPixels:atSizeInPixels:];
  }

  v15 = a6 / *&copyOfUIImageFromRectInPixels_atSizeInPixels__screenScale;
  v16 = a7 / *&copyOfUIImageFromRectInPixels_atSizeInPixels__screenScale;
  defaultFormat = [MEMORY[0x277D75568] defaultFormat];
  [defaultFormat setOpaque:0];
  [defaultFormat setPreferredRange:2];
  [defaultFormat setScale:*&copyOfUIImageFromRectInPixels_atSizeInPixels__screenScale];
  v18 = [objc_alloc(MEMORY[0x277D75560]) initWithBounds:defaultFormat format:{0.0, 0.0, v15, v16}];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __75__PVImageBuffer_JTAdditions__copyOfUIImageFromRectInPixels_atSizeInPixels___block_invoke_2;
  v21[3] = &__block_descriptor_56_e35_v16__0__UIGraphicsRendererContext_8l;
  *&v21[4] = v15;
  *&v21[5] = v16;
  v21[6] = v14;
  v19 = [v18 imageWithActions:v21];
  CGImageRelease(v14);

  return v19;
}

@end