@interface SUUIImageColorAnalyzer
+ (CGContext)_createContextForImage:(id)a3;
+ (id)analyzeImage:(id)a3;
@end

@implementation SUUIImageColorAnalyzer

+ (id)analyzeImage:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  if (v5)
  {
    v6 = [a1 _createContextForImage:v4];
    if (!v6)
    {
      goto LABEL_6;
    }

    AnalyzedImageColors::AnalyzedImageColors(v17);
    v7 = AnalyzeImagePlease(v6, v17);
    v8 = v7;
    if (v7)
    {
      v9 = [a1 _colorFromITColor:{v17[0], v17[1], v17[2], v17[3]}];
      [v5 setBackgroundColor:v9];

      v10 = [a1 _colorFromITColor:{v17[4], v17[5], v17[6], v17[7]}];
      [v5 setTextPrimaryColor:v10];

      v11 = [a1 _colorFromITColor:{v17[8], v17[9], v17[10], v17[11]}];
      [v5 setTextSecondaryColor:v11];

      [v5 setIsBackgroundLight:v18];
    }

    CGContextRelease(v6);
    if ((v8 & 1) == 0)
    {
LABEL_6:
      v12 = [MEMORY[0x277D75348] whiteColor];
      [v5 setBackgroundColor:v12];

      v13 = [MEMORY[0x277D75348] blackColor];
      [v5 setTextPrimaryColor:v13];

      v14 = [MEMORY[0x277D75348] darkGrayColor];
      [v5 setTextSecondaryColor:v14];

      [v5 setIsBackgroundLight:1];
    }

    v15 = v5;
  }

  return v5;
}

+ (CGContext)_createContextForImage:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 CGImage])
  {
    v5 = [v4 CGImage];
    Width = CGImageGetWidth(v5);
    Height = CGImageGetHeight(v5);
    v8 = 0;
    if (Width && Height)
    {
      SRGB = CGColorSpaceGetSRGB();
      if (SRGB)
      {
        CopyWithColorSpace = CGImageCreateCopyWithColorSpace(v5, SRGB);
        v11 = CopyWithColorSpace;
        if (CopyWithColorSpace)
        {
          v5 = CopyWithColorSpace;
        }
      }

      else
      {
        v11 = 0;
      }

      v13 = CGBitmapContextCreate(0, 0x16uLL, 0x16uLL, 8uLL, 0x58uLL, SRGB, 0x2002u);
      v8 = v13;
      if (v13)
      {
        v14.origin.x = *MEMORY[0x277CBF348];
        v14.origin.y = *(MEMORY[0x277CBF348] + 8);
        v14.size.width = 22.0;
        v14.size.height = 22.0;
        CGContextDrawImage(v13, v14, v5);
      }

      if (v11)
      {
        CGImageRelease(v11);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end