@interface MSVArtworkColorAnalyzer
+ (BOOL)isLightColor:(CGColor *)color;
- (CGSize)preferredImageSize;
- (MSVArtworkColorAnalyzer)initWithSourceImage:(CGImage *)image;
- (id)analyze;
- (void)analyzeWithCompletionHandler:(id)handler;
@end

@implementation MSVArtworkColorAnalyzer

+ (BOOL)isLightColor:(CGColor *)color
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = CGColorGetComponents(color);
  v25 = xmmword_1AC881C80;
  NumberOfComponents = CGColorGetNumberOfComponents(color);
  v6 = 0uLL;
  if (NumberOfComponents > 2)
  {
    if (NumberOfComponents == 3)
    {
      *(&v8 + 1) = 0x3FF0000000000000;
    }

    else
    {
      if (NumberOfComponents != 4)
      {
        goto LABEL_12;
      }

      *(&v8 + 1) = v4[3];
    }

    v6 = *v4;
    *&v8 = v4[2];
    v25 = v8;
    goto LABEL_12;
  }

  if (NumberOfComponents == 1)
  {
    *(&v7 + 1) = 0x3FF0000000000000;
    goto LABEL_9;
  }

  if (NumberOfComponents == 2)
  {
    *(&v7 + 1) = v4[1];
LABEL_9:
    *&v7 = *v4;
    v25 = v7;
    v6 = vdupq_lane_s64(*v4, 0);
  }

LABEL_12:
  v26 = v6;
  v9 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  ColorSpace = CGColorGetColorSpace(color);
  v11 = ColorSpace;
  data = 0;
  if (!ColorSpace || !v9 || !CFEqual(ColorSpace, v9))
  {
    *components = v26;
    v31 = v25;
    v14 = CGColorCreate(v11, components);
    *&v25 = 0;
    if (v14)
    {
      v15 = CGBitmapContextCreate(&data, 1uLL, 1uLL, 8uLL, 4uLL, v9, 0x4002u);
      v16 = v15;
      if (v15)
      {
        CGContextSetFillColorWithColor(v15, v14);
        v33.origin.x = 0.0;
        v33.origin.y = 0.0;
        v33.size.width = 1.0;
        v33.size.height = 1.0;
        CGContextFillRect(v16, v33);
        LOBYTE(v17) = BYTE1(data);
        *&v18 = v17 / 255.0;
        v27 = v18;
        LOBYTE(v18) = BYTE2(data);
        *&v19 = v18 / 255.0;
        v24 = v19;
        LOBYTE(v19) = HIBYTE(data);
        *&v25 = v19 / 255.0;
LABEL_21:
        CGColorRelease(v14);
        CGContextRelease(v16);
        v12.n128_u64[0] = v27;
        v13 = v24;
        goto LABEL_22;
      }
    }

    else
    {
      v16 = 0;
    }

    v24 = 0;
    v27 = 0;
    goto LABEL_21;
  }

  v13 = v26.u64[1];
  v12.n128_u64[0] = v26.i64[0];
LABEL_22:
  v12.n128_u64[1] = v13;
  v28 = v12;
  CGColorSpaceRelease(v9);
  ITColor::GetLuminance(v20, v28, *&v25);
  result = v21 >= 0.180000007;
  v23 = *MEMORY[0x1E69E9840];
  return result;
}

- (CGSize)preferredImageSize
{
  width = self->_preferredImageSize.width;
  height = self->_preferredImageSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)analyzeWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(0, 0);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__MSVArtworkColorAnalyzer_analyzeWithCompletionHandler___block_invoke;
  v7[3] = &unk_1E7982B00;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

void __56__MSVArtworkColorAnalyzer_analyzeWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = [v2 analyze];
  (*(v1 + 16))(v1, v2);
}

- (id)analyze
{
  v3 = objc_alloc_init(MSVMutableArtworkColorAnalysis);
  [(MSVArtworkColorAnalysis *)v3 setBackgroundColorHex:@"#000000"];
  [(MSVMutableArtworkColorAnalysis *)v3 setBackgroundColorLight:0];
  [(MSVArtworkColorAnalysis *)v3 setPrimaryTextColorHex:@"#FFFFFF"];
  [(MSVMutableArtworkColorAnalysis *)v3 setPrimaryTextColorLight:0];
  [(MSVArtworkColorAnalysis *)v3 setSecondaryTextColorHex:@"#63666A"];
  [(MSVMutableArtworkColorAnalysis *)v3 setSecondaryTextColorLight:0];
  [(MSVArtworkColorAnalysis *)v3 setTertiaryTextColorHex:@"#63666A"];
  [(MSVMutableArtworkColorAnalysis *)v3 setTertiaryTextColorLight:0];
  sourceImage = [(MSVArtworkColorAnalyzer *)self sourceImage];
  Width = CGImageGetWidth(sourceImage);
  Height = CGImageGetHeight(sourceImage);
  if (Width && Height)
  {
    if (CGColorSpaceGetSRGB(void)::sOnceToken != -1)
    {
      dispatch_once(&CGColorSpaceGetSRGB(void)::sOnceToken, &__block_literal_global_413);
    }

    v7 = CGColorSpaceGetSRGB(void)::sSpace;
    if (CGColorSpaceGetSRGB(void)::sSpace)
    {
      CopyWithColorSpace = CGImageCreateCopyWithColorSpace(sourceImage, CGColorSpaceGetSRGB(void)::sSpace);
      v9 = CopyWithColorSpace;
      if (CopyWithColorSpace)
      {
        v10 = CopyWithColorSpace;
      }

      else
      {
        v10 = sourceImage;
      }
    }

    else
    {
      v9 = 0;
      v10 = sourceImage;
    }

    v12 = CGBitmapContextCreate(0, 0x16uLL, 0x16uLL, 8uLL, 0x58uLL, v7, 0x2002u);
    v11 = v12;
    if (v12)
    {
      v20.origin.x = *MEMORY[0x1E695EFF8];
      v20.origin.y = *(MEMORY[0x1E695EFF8] + 8);
      v20.size.width = 22.0;
      v20.size.height = 22.0;
      CGContextDrawImage(v12, v20, v10);
    }

    if (v9)
    {
      CGImageRelease(v9);
    }

    if (v11)
    {
      memset(&v18, 0, 24);
      v18.var0.var3 = 1.0;
      memset(&v18.var1, 0, 24);
      v18.var1.var3 = 1.0;
      memset(&v18.var2, 0, 24);
      v18.var2.var3 = 1.0;
      memset(&v18.var3, 0, 24);
      v18.var3.var3 = 1.0;
      memset(&v18.var4, 0, 24);
      v18.var4.var3 = 1.0;
      memset(&v18.var5, 0, 24);
      v18.var5.var3 = 1.0;
      memset(&v18.var6, 0, 24);
      v18.var6.var3 = 1.0;
      memset(&v18.var7, 0, 24);
      v18.var7.var3 = 1.0;
      memset(&v18.var8, 0, 24);
      v18.var8.var3 = 1.0;
      *(&v18.var9 + 5) = 0.0;
      v18.var9 = 0.0;
      AnalyzeImagePlease(v11, &v18);
      if (v18.var10)
      {
        v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02X%02X%02X", (v18.var0.var0 * 255.0), (v18.var0.var1 * 255.0), (v18.var0.var2 * 255.0)];
        [(MSVArtworkColorAnalysis *)v3 setBackgroundColorHex:v13];

        [(MSVMutableArtworkColorAnalysis *)v3 setBackgroundColorLight:v18.var11];
        v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02X%02X%02X", (v18.var1.var0 * 255.0), (v18.var1.var1 * 255.0), (v18.var1.var2 * 255.0)];
        [(MSVArtworkColorAnalysis *)v3 setPrimaryTextColorHex:v14];

        [(MSVMutableArtworkColorAnalysis *)v3 setPrimaryTextColorLight:v18.var12];
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02X%02X%02X", (v18.var2.var0 * 255.0), (v18.var2.var1 * 255.0), (v18.var2.var2 * 255.0)];
        [(MSVArtworkColorAnalysis *)v3 setSecondaryTextColorHex:v15];

        [(MSVMutableArtworkColorAnalysis *)v3 setSecondaryTextColorLight:v18.var13];
        v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02X%02X%02X", (v18.var3.var0 * 255.0), (v18.var3.var1 * 255.0), (v18.var3.var2 * 255.0)];
        [(MSVArtworkColorAnalysis *)v3 setTertiaryTextColorHex:v16];
      }
    }
  }

  else
  {

    v11 = 0;
  }

  CGContextRelease(v11);

  return v3;
}

- (MSVArtworkColorAnalyzer)initWithSourceImage:(CGImage *)image
{
  v4 = [(MSVArtworkColorAnalyzer *)self init];
  v5 = v4;
  if (v4)
  {
    [(MSVArtworkColorAnalyzer *)v4 setSourceImage:image];
  }

  return v5;
}

@end