@interface ISIconSegmentation
- (BOOL)_computeImageWithCGImage:(CGImage *)a3 ucharTintable:(char *)a4 ucharTintableOpacity:(char *)a5 ucharSolariumTintable:ucharForeground:ucharForegroundOpacity:ucharDark:feedback:;
- (CGImage)createDarkImageWithCGImage:(CGImage *)a3 feedback:(id *)a4;
- (CGImage)createForegroundImageWithCGImage:(CGImage *)a3 feedback:(id *)a4;
- (CGImage)createSolariumTintableImageWithCGImage:(CGImage *)a3 feedback:(id *)a4;
- (CGImage)createTintableImageMaskWithCGImage:(CGImage *)a3 tintableOpacityImageMask:(CGImage *)a4;
- (ISIconSegmentation)initWithIdiom:(unint64_t)a3;
@end

@implementation ISIconSegmentation

- (ISIconSegmentation)initWithIdiom:(unint64_t)a3
{
  v12.receiver = self;
  v12.super_class = ISIconSegmentation;
  v4 = [(ISIconSegmentation *)&v12 init];
  if (v4)
  {
    v5 = [[ISForegroundSegmentation alloc] initWithStrict:1];
    strictForegroundSegmentation = v4->_strictForegroundSegmentation;
    v4->_strictForegroundSegmentation = v5;

    v7 = [[ISForegroundSegmentation alloc] initWithStrict:0];
    looseForegroundSegmentation = v4->_looseForegroundSegmentation;
    v4->_looseForegroundSegmentation = v7;

    v9 = objc_opt_new();
    grayscaleConversion = v4->_grayscaleConversion;
    v4->_grayscaleConversion = v9;

    v4->_idiom = a3;
    v4->_maxNumberOfClusteringSamples = 8000;
    *&v4->_enableColorEnhancementInDarkImage = 0;
  }

  return v4;
}

- (BOOL)_computeImageWithCGImage:(CGImage *)a3 ucharTintable:(char *)a4 ucharTintableOpacity:(char *)a5 ucharSolariumTintable:ucharForeground:ucharForegroundOpacity:ucharDark:feedback:
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  ColorSpace = CGImageGetColorSpace(a3);
  Model = CGColorSpaceGetModel(ColorSpace);
  if (Model)
  {
    if (Model != kCGColorSpaceModelRGB)
    {
LABEL_35:
      LOBYTE(v9) = 0;
      return v9;
    }

    v56 = v9;
    v58 = v10;
    BitsPerPixel = CGImageGetBitsPerPixel(a3);
    LOBYTE(v9) = 0;
    if (CGImageGetBitsPerComponent(a3) == 8)
    {
      v54 = a5;
      if (BitsPerPixel == 32)
      {
        Width = CGImageGetWidth(a3);
        Height = CGImageGetHeight(a3);
        BytesPerRow = CGImageGetBytesPerRow(a3);
        v19 = BytesPerRow >= 0 ? BytesPerRow : BytesPerRow + 3;
        AlphaInfo = CGImageGetAlphaInfo(a3);
        LOBYTE(v9) = 0;
        if (AlphaInfo <= kCGImageAlphaNoneSkipLast)
        {
          v21 = AlphaInfo;
          if (((1 << AlphaInfo) & 0x2A) != 0)
          {
            idiom = self->_idiom;
            if (idiom == 4 || idiom == 1)
            {
              v21 = 5;
            }

            DataProvider = CGImageGetDataProvider(a3);
            if (!DataProvider)
            {
              goto LABEL_35;
            }

            v24 = CGDataProviderCopyData(DataProvider);
            if (!v24)
            {
              goto LABEL_35;
            }

            v25 = v24;
            BytePtr = CFDataGetBytePtr(v24);
            if (BytePtr)
            {
              v65 = 0;
              v64 = 0;
              v67 = Width;
              LODWORD(v68) = Height;
              HIDWORD(v68) = (v19 >> 2) - Width;
              v69 = v21;
              v70 = BytePtr;
              v60 = Width;
              v61 = Height;
              v62 = 0;
              v63 = 0;
              v66 = malloc_type_malloc(Width * Height, 0x100004077774924uLL);
              v27 = v66;
              LOBYTE(v9) = [(ISIconSegmentation *)self _computeImageWithWidth:Width height:Height colorSpace:ColorSpace samples:&v67 foregroundMask:&v60 ucharTintable:a4 ucharTintableOpacity:v54 ucharSolariumTintable:v58 ucharForeground:v56 ucharForegroundOpacity:v8 ucharDark:v71 feedback:v72];
              CFRelease(v25);
              v28 = v27;
LABEL_31:
              free(v28);
              return v9;
            }

            v48 = v25;
            goto LABEL_34;
          }
        }
      }
    }
  }

  else
  {
    v57 = v9;
    v59 = v10;
    v29 = CGImageGetBitsPerPixel(a3);
    LOBYTE(v9) = 0;
    if (CGImageGetBitsPerComponent(a3) == 8)
    {
      v55 = a5;
      if (v29 == 16)
      {
        v30 = CGImageGetWidth(a3);
        v31 = CGImageGetHeight(a3);
        v53 = CGImageGetBytesPerRow(a3);
        v32 = CGImageGetAlphaInfo(a3);
        LOBYTE(v9) = 0;
        if (v32 <= kCGImageAlphaNoneSkipLast)
        {
          v33 = v32;
          if (((1 << v32) & 0x2A) != 0)
          {
            v34 = self->_idiom;
            if (v34 == 4 || v34 == 1)
            {
              v33 = 5;
            }

            v35 = CGImageGetDataProvider(a3);
            if (!v35)
            {
              goto LABEL_35;
            }

            v36 = CGDataProviderCopyData(v35);
            v9 = v36;
            if (v36)
            {
              v51 = v31;
              v37 = CFDataGetBytePtr(v36);
              if (v37)
              {
                v38 = v37;
                v39 = v51 * v30;
                v40 = malloc_type_malloc(4 * v39, 0x100004052888210uLL);
                v42 = v40;
                if (v39 >= 1)
                {
                  for (i = 0; i != v39; ++i)
                  {
                    v41.i16[0] = *&v38[2 * i + 2 * i / v30 * (v53 / 2 - v30)];
                    v44 = vzip1_s8(v41, v41);
                    v45 = vzip1_s16(v44, v44);
                    v45.i16[2] = v44.i16[0];
                    v41 = vuzp1_s8(v45, v44);
                    *&v40[4 * i] = v41.i32[0];
                  }
                }

                CFRelease(v9);
                v46 = malloc_type_malloc(v39, 0x100004077774924uLL);
                v65 = 0;
                v64 = 0;
                v47 = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
                v67 = v30;
                v68 = v51;
                v69 = v33;
                v70 = v42;
                v60 = v30;
                v61 = v51;
                v62 = 0;
                v63 = 0;
                v66 = v46;
                LOBYTE(v9) = [ISIconSegmentation _computeImageWithWidth:"_computeImageWithWidth:height:colorSpace:samples:foregroundMask:ucharTintable:ucharTintableOpacity:ucharSolariumTintable:ucharForeground:ucharForegroundOpacity:ucharDark:feedback:" height:v30 colorSpace:v55 samples:v59 foregroundMask:v57 ucharTintable:v8 ucharTintableOpacity:v71 ucharSolariumTintable:v72 ucharForeground:? ucharForegroundOpacity:? ucharDark:? feedback:?];
                CGColorSpaceRelease(v47);
                free(v42);
                v28 = v46;
                goto LABEL_31;
              }

              v48 = v9;
LABEL_34:
              CFRelease(v48);
              goto LABEL_35;
            }
          }
        }
      }
    }
  }

  return v9;
}

- (CGImage)createTintableImageMaskWithCGImage:(CGImage *)a3 tintableOpacityImageMask:(CGImage *)a4
{
  v4 = a3;
  if (!a3)
  {
    return v4;
  }

  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(v4);
  v9 = malloc_type_malloc(Width * Height, 0x100004077774924uLL);
  if (a4)
  {
    v10 = malloc_type_malloc(Width * Height, 0x100004077774924uLL);
  }

  else
  {
    v10 = 0;
  }

  if (![(ISIconSegmentation *)self _computeImageWithCGImage:v4 ucharTintable:v9 ucharTintableOpacity:v10 ucharSolariumTintable:0 ucharForeground:0 ucharForegroundOpacity:0 ucharDark:0 feedback:0])
  {
    free(v9);
    v4 = 0;
    if (!v10)
    {
      return v4;
    }

LABEL_11:
    free(v10);
    return v4;
  }

  v4 = ISCreateCGImageMaskUchar(Width, Height, v9);
  if (a4)
  {
    *a4 = ISCreateCGImageMaskUchar(Width, Height, v10);
  }

  free(v9);
  if (v10)
  {
    goto LABEL_11;
  }

  return v4;
}

- (CGImage)createSolariumTintableImageWithCGImage:(CGImage *)a3 feedback:(id *)a4
{
  v4 = a3;
  if (a3)
  {
    Width = CGImageGetWidth(a3);
    Height = CGImageGetHeight(v4);
    v9 = malloc_type_malloc(4 * Width * Height, 0x100004052888210uLL);
    v10 = [(ISIconSegmentation *)self _computeImageWithCGImage:v4 ucharTintable:0 ucharTintableOpacity:0 ucharSolariumTintable:v9 ucharForeground:0 ucharForegroundOpacity:0 ucharDark:0 feedback:a4];
    v4 = 0;
    if (v10)
    {
      v4 = ISCreateCGImageUchar4AlphaPremultiplied(Width, Height, v9);
    }

    free(v9);
  }

  return v4;
}

- (CGImage)createForegroundImageWithCGImage:(CGImage *)a3 feedback:(id *)a4
{
  v4 = a3;
  if (a3)
  {
    Width = CGImageGetWidth(a3);
    Height = CGImageGetHeight(v4);
    v9 = malloc_type_malloc(4 * Width * Height, 0x100004052888210uLL);
    v10 = [(ISIconSegmentation *)self _computeImageWithCGImage:v4 ucharTintable:0 ucharTintableOpacity:0 ucharSolariumTintable:0 ucharForeground:v9 ucharForegroundOpacity:0 ucharDark:0 feedback:a4];
    v4 = 0;
    if (v10)
    {
      v4 = ISCreateCGImageUchar4AlphaPremultiplied(Width, Height, v9);
    }

    free(v9);
  }

  return v4;
}

- (CGImage)createDarkImageWithCGImage:(CGImage *)a3 feedback:(id *)a4
{
  v4 = a3;
  if (a3)
  {
    Width = CGImageGetWidth(a3);
    Height = CGImageGetHeight(v4);
    v9 = malloc_type_malloc(4 * Width * Height, 0x100004052888210uLL);
    v10 = [(ISIconSegmentation *)self _computeImageWithCGImage:v4 ucharTintable:0 ucharTintableOpacity:0 ucharSolariumTintable:0 ucharForeground:0 ucharForegroundOpacity:0 ucharDark:v9 feedback:a4];
    v4 = 0;
    if (v10)
    {
      v4 = ISCreateCGImageUchar4AlphaPremultiplied(Width, Height, v9);
    }

    free(v9);
  }

  return v4;
}

@end