@interface NSString(NTKImage)
- (id)imageWithFont:()NTKImage border:color:cropped:;
- (id)imageWithFont:()NTKImage border:cropped:;
@end

@implementation NSString(NTKImage)

- (id)imageWithFont:()NTKImage border:cropped:
{
  v7 = MEMORY[0x277D75348];
  v8 = a3;
  v9 = [v7 colorWithWhite:1.0 alpha:1.0];
  v10 = [a1 imageWithFont:v8 border:4 color:v9 cropped:a5];

  return v10;
}

- (id)imageWithFont:()NTKImage border:color:cropped:
{
  v58[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v12 = *MEMORY[0x277D740C0];
  v57[0] = *MEMORY[0x277D740A8];
  v57[1] = v12;
  v58[0] = v10;
  v58[1] = v11;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:2];
  v14 = +[(CLKRenderingContext *)NTKFaceViewRenderingContext];
  v15 = [v14 device];

  [a1 sizeWithAttributes:v13];
  CLKCeilForDevice();
  v17 = v16;
  CLKCeilForDevice();
  v18 = a4;
  v19 = v17 + a4;
  v21 = v20 + a4;
  [v15 screenScale];
  v23 = v22;
  v60.width = v19;
  v60.height = v21;
  UIGraphicsBeginImageContextWithOptions(v60, 0, v23);
  v24 = (a4 >> 1);
  [a1 drawAtPoint:v13 withAttributes:{v24, v24}];
  v25 = UIGraphicsGetImageFromCurrentImageContext();
  v26 = [v25 _imageThatSuppressesAccessibilityHairlineThickening];

  UIGraphicsEndImageContext();
  if (a6)
  {
    v27 = [v26 CGImage];
    Width = CGImageGetWidth(v27);
    Height = CGImageGetHeight(v27);
    DataProvider = CGImageGetDataProvider(v27);
    v31 = CGDataProviderCopyData(DataProvider);
    BytePtr = CFDataGetBytePtr(v31);
    BytesPerRow = CGImageGetBytesPerRow(v27);
    if (Height)
    {
      v34 = 0;
      v35 = BytesPerRow;
      v36 = BytePtr + 2;
      v37 = 0x80000000;
      v38 = 0x7FFFFFFF;
      v39 = 0x7FFFFFFF;
      v40 = 0x80000000;
      do
      {
        if (Width)
        {
          v41 = 0;
          v42 = v36;
          do
          {
            v43 = *(v42 - 2);
            v44 = *(v42 - 1);
            v45 = *v42;
            v42 += 4;
            v46 = (v44 + v43) | v45;
            if (v41 >= v38)
            {
              v47 = v38;
            }

            else
            {
              v47 = v41;
            }

            if (v41 <= v37)
            {
              v48 = v37;
            }

            else
            {
              v48 = v41;
            }

            if (v34 >= v39)
            {
              v49 = v39;
            }

            else
            {
              v49 = v34;
            }

            if (v34 <= v40)
            {
              v50 = v40;
            }

            else
            {
              v50 = v34;
            }

            if (v46)
            {
              v40 = v50;
              v39 = v49;
              v37 = v48;
              v38 = v47;
            }

            ++v41;
          }

          while (Width != v41);
        }

        ++v34;
        v36 += v35;
      }

      while (v34 != Height);
      v51 = v37 + 1;
      v52 = v40 + 1;
    }

    else
    {
      v39 = 0x7FFFFFFF;
      v52 = -2147483647;
      v51 = -2147483647;
      v38 = 0x7FFFFFFF;
    }

    CFRelease(v31);
    v53 = [v26 CGImage];
    v61.origin.x = v38 - v24;
    v61.origin.y = v39 - v24;
    v61.size.width = v18 + ((v51 - v38) & 0xFFFFFFFE);
    v61.size.height = v18 + ((v52 - v39) & 0xFFFFFFFE);
    v54 = CGImageCreateWithImageInRect(v53, v61);
    v55 = [MEMORY[0x277D755B8] imageWithCGImage:v54];

    CGImageRelease(v54);
    v26 = v55;
  }

  return v26;
}

@end