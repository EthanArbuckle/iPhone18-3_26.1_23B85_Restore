@interface UIImage
- (id)safari_decodedImageIfPossible;
@end

@implementation UIImage

- (id)safari_decodedImageIfPossible
{
  v1 = a1;
  v28[5] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = [a1 CGImage];
    if (v2)
    {
      v3 = v2;
      if (CGImageGetImageProvider())
      {
        Width = CGImageGetWidth(v3);
        Height = CGImageGetHeight(v3);
        v6 = *MEMORY[0x277CBF528];
        v7 = *MEMORY[0x277CBF540];
        v27[0] = *MEMORY[0x277CBF530];
        v27[1] = v7;
        v28[0] = v6;
        v28[1] = MEMORY[0x277CBEC38];
        v8 = *MEMORY[0x277CBF510];
        v27[2] = *MEMORY[0x277CBF538];
        v27[3] = v8;
        v28[2] = MEMORY[0x277CBEC38];
        v28[3] = &unk_2827FC280;
        v27[4] = *MEMORY[0x277CBF518];
        v28[4] = &unk_2827FC280;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:5];
        v9 = CGImageProviderCopyImageBlockSetWithOptions();
        if (v9)
        {
          v10 = v9;
          CGImageBlockSetGetRect();
          v31.origin.x = 0.0;
          v31.origin.y = 0.0;
          v31.size.width = Width;
          v31.size.height = Height;
          if (CGRectEqualToRect(v30, v31) && CGImageBlockSetGetCount() == 1 && CGImageBlockSetGetImageBlock() && (CGImageBlockGetRect(), v12 = v11, v14 = v13, Data = CGImageBlockGetData(), v16 = CGImageBlockGetBytesPerRow(), (v17 = CGDataProviderCreateWithData(v10, Data, v16 * v14, releaseBlockSet)) != 0))
          {
            v18 = v17;
            BytesPerRow = CGImageBlockGetBytesPerRow();
            ColorSpace = CGImageGetColorSpace(v3);
            if (CGImageHasAlpha())
            {
              v21 = 8194;
            }

            else
            {
              v21 = 8198;
            }

            decode = CGImageGetDecode(v3);
            shouldInterpolate = CGImageGetShouldInterpolate(v3);
            intent = CGImageGetRenderingIntent(v3);
            v25 = CGImageCreate(v12, v14, 8uLL, 0x20uLL, BytesPerRow, ColorSpace, v21, v18, decode, shouldInterpolate, intent);
            CGDataProviderRelease(v18);
            if (v25)
            {
              v1 = [objc_alloc(objc_opt_class()) initWithCGImage:v25];
              CGImageRelease(v25);
              goto LABEL_16;
            }
          }

          else
          {
            CGImageBlockSetRelease();
          }
        }
      }
    }

    v1 = v1;
  }

LABEL_16:

  return v1;
}

@end