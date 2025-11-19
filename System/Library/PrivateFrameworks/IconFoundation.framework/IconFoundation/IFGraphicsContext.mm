@interface IFGraphicsContext
+ ($2FDBBB09D977766327AC09A4EBB220D3)pixelFormatFromCGImage:(CGImage *)a3;
+ ($2FDBBB09D977766327AC09A4EBB220D3)pixelFormatFromPreset:(unint64_t)a3;
+ (CGColorSpace)colorSpaceFromPixelFormat:(id)a3;
+ (id)bitmapContextWithSize:(CGSize)a3 scale:(double)a4 pixelFormat:(id)a5;
+ (id)bitmapContextWithSize:(CGSize)a3 scale:(double)a4 preset:(unint64_t)a5;
+ (unint64_t)presetFromCGImage:(CGImage *)a3;
+ (unint64_t)presetFromColorSpace:(CGColorSpace *)a3;
+ (unint64_t)presetFromPixelFormat:(id)a3;
- (CGSize)size;
- (IFColor)fillColor;
- (IFColor)strokeColor;
- (IFGraphicsContext)initWithCGContext:(CGContext *)a3 preset:(unint64_t)a4;
- (IFImage)image;
- (NSData)data;
- (double)scale;
- (id)imageFromRect:(CGRect)a3;
- (void)dealloc;
- (void)drawCGImage:(CGImage *)a3 centeredInRect:(CGRect)a4;
- (void)drawSymbolImage:(id)a3 centeredInRect:(CGRect)a4;
- (void)drawText:(id)a3 fontName:(id)a4 fontSize:(double)a5 inRect:(CGRect)a6;
- (void)fillPath:(CGPath *)a3;
- (void)setFillColor:(id)a3;
- (void)setStrokeColor:(id)a3;
- (void)strokePath:(CGPath *)a3;
@end

@implementation IFGraphicsContext

+ (id)bitmapContextWithSize:(CGSize)a3 scale:(double)a4 pixelFormat:(id)a5
{
  v7 = round(a3.width * a4);
  v8 = round(a3.height * a4);
  var2 = a5.var2;
  v10 = 1;
  v11 = 4353;
  if (a5.var0 <= 3u)
  {
    if (a5.var0 <= 1u)
    {
      if (a5.var0)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (a5.var0 == 2)
    {
      goto LABEL_15;
    }

    if (a5.var0 == 3)
    {
      v10 = 4352;
LABEL_24:
      +[IFColor deviceExtendedRGBColorSpace];
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  if (a5.var0 > 5u)
  {
    if (a5.var0 == 6)
    {
      v12 = 0;
      v16 = 1;
      v10 = 7;
      goto LABEL_41;
    }

    if (a5.var0 == 7)
    {
      goto LABEL_35;
    }

    goto LABEL_14;
  }

  if (a5.var0 == 4)
  {
LABEL_19:
    v13 = +[IFColor deviceDisplayP3ColorSpace];
LABEL_36:
    v12 = v13;
    v16 = 4;
    v10 = v11;
    goto LABEL_41;
  }

  if (a5.var0 != 5)
  {
LABEL_14:
    v10 = 0;
  }

LABEL_15:
  v12 = 0;
  if (a5.var0 <= 2u)
  {
    if (a5.var0)
    {
      if (a5.var0 == 1)
      {
LABEL_25:
        v11 = v10;
LABEL_26:
        v12 = +[IFColor deviceExtendedRGBColorSpace];
        v10 = v11;
        goto LABEL_27;
      }

      if (a5.var0 != 2)
      {
        goto LABEL_27;
      }

      v14 = +[IFColor deviceSRGBColorSpace];
    }

    else
    {
      v14 = +[IFColor deviceRGBColorSpace];
    }

    v12 = v14;
    v16 = 4;
    goto LABEL_41;
  }

  if (a5.var0 > 4u)
  {
    if (a5.var0 == 5)
    {
      v12 = +[IFColor deviceGreyColorSpace];
      v16 = 1;
      goto LABEL_41;
    }

    v11 = v10;
    if (a5.var0 != 7)
    {
      goto LABEL_27;
    }

LABEL_35:
    v13 = +[IFColor deviceExtendedDisplayP3ColorSpace];
    goto LABEL_36;
  }

  if (a5.var0 == 3)
  {
    goto LABEL_24;
  }

  v11 = v10;
  if (a5.var0 == 4)
  {
    goto LABEL_19;
  }

LABEL_27:
  if (a5.var0 == 7)
  {
    v15 = 4;
  }

  else
  {
    v15 = 1;
  }

  if (a5.var0 >= 5u)
  {
    v16 = v15;
  }

  else
  {
    v16 = 4;
  }

LABEL_41:
  v17 = CGBitmapContextCreate(0, v7, v8, a5.var2 / v16, (v7 * (var2 >> 3)), v12, v10);
  if (v17)
  {
    v18 = v17;
    v19 = *(MEMORY[0x1E695EFD0] + 16);
    *&v23.a = *MEMORY[0x1E695EFD0];
    *&v23.c = v19;
    *&v23.tx = *(MEMORY[0x1E695EFD0] + 32);
    *&v22.a = *&v23.a;
    *&v22.c = v19;
    *&v22.tx = *&v23.tx;
    CGAffineTransformScale(&v23, &v22, a4, a4);
    v22 = v23;
    CGContextSetCTM();
    v20 = [[IFGraphicsContext alloc] initWithCGContext:v18 preset:[IFGraphicsContext presetFromPixelFormat:*&a5 & 0xFF00FFFF | (a5.var2 << 16)]];
    CFRelease(v18);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)bitmapContextWithSize:(CGSize)a3 scale:(double)a4 preset:(unint64_t)a5
{
  height = a3.height;
  width = a3.width;
  if (a5 == 8)
  {
    v8 = IFDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [IFGraphicsContext bitmapContextWithSize:v8 scale:? preset:?];
    }

    a5 = 0;
  }

  v9 = [IFGraphicsContext bitmapContextWithSize:[IFGraphicsContext pixelFormatFromPreset:a5] scale:width pixelFormat:height, a4];

  return v9;
}

+ (unint64_t)presetFromColorSpace:(CGColorSpace *)a3
{
  if (!a3)
  {
    return 8;
  }

  Name = CGColorSpaceGetName(a3);
  if (!Name)
  {
    return 8;
  }

  v4 = Name;
  result = CFStringCompare(Name, @"kCGColorSpaceDeviceRGB", 0);
  if (result)
  {
    if (CFStringCompare(v4, *MEMORY[0x1E695F110], 0))
    {
      if (CFStringCompare(v4, *MEMORY[0x1E695F1C0], 0))
      {
        if (CFStringCompare(v4, *MEMORY[0x1E695F0B8], 0))
        {
          if (CFStringCompare(v4, *MEMORY[0x1E695F0D8], 0))
          {
            if (CFStringCompare(v4, @"kCGColorSpaceDeviceGray", 0))
            {
              return 8;
            }

            else
            {
              return 6;
            }
          }

          else
          {
            return 5;
          }
        }

        else
        {
          return 4;
        }
      }

      else
      {
        return 2;
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

+ (CGColorSpace)colorSpaceFromPixelFormat:(id)a3
{
  if (a3.var0 > 3u)
  {
    if (a3.var0 == 7)
    {
      return +[IFColor deviceExtendedDisplayP3ColorSpace];
    }

    if (a3.var0 != 5)
    {
      if (a3.var0 == 4)
      {
        return +[IFColor deviceDisplayP3ColorSpace];
      }

      return 0;
    }

    return +[IFColor deviceGreyColorSpace];
  }

  else
  {
    if (!a3.var0)
    {
      return +[IFColor deviceRGBColorSpace];
    }

    if (a3.var0 != 1)
    {
      if (a3.var0 == 2)
      {
        return +[IFColor deviceSRGBColorSpace];
      }

      return 0;
    }

    return +[IFColor deviceExtendedRGBColorSpace];
  }
}

+ (unint64_t)presetFromCGImage:(CGImage *)a3
{
  ColorSpace = CGImageGetColorSpace(a3);

  return [IFGraphicsContext presetFromColorSpace:ColorSpace];
}

+ (unint64_t)presetFromPixelFormat:(id)a3
{
  if ((a3.var0 & 0xF8) != 0)
  {
    return 8;
  }

  else
  {
    return qword_1B9E3B608[a3.var0 & 7];
  }
}

+ ($2FDBBB09D977766327AC09A4EBB220D3)pixelFormatFromCGImage:(CGImage *)a3
{
  v4 = [IFGraphicsContext pixelFormatFromPreset:[IFGraphicsContext presetFromColorSpace:CGImageGetColorSpace(a3)]];
  v5 = (CGImageGetBitmapInfo(a3) & 0xF00) != 0;
  return (*&v4 & 0xFF0000FF | (v5 << 9) & 0xFF00FFFF | (CGImageGetBitsPerPixel(a3) << 16));
}

+ ($2FDBBB09D977766327AC09A4EBB220D3)pixelFormatFromPreset:(unint64_t)a3
{
  if (a3 > 7)
  {
    return 0;
  }

  else
  {
    return (dword_1B9E3B668[a3] | dword_1B9E3B648[a3] | dword_1B9E3B688[a3]);
  }
}

- (IFGraphicsContext)initWithCGContext:(CGContext *)a3 preset:(unint64_t)a4
{
  v9.receiver = self;
  v9.super_class = IFGraphicsContext;
  v6 = [(IFGraphicsContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_preset = a4;
    v6->_cgContext = CFRetain(a3);
  }

  return v7;
}

- (void)dealloc
{
  cgContext = self->_cgContext;
  if (cgContext)
  {
    CFRelease(cgContext);
  }

  v4.receiver = self;
  v4.super_class = IFGraphicsContext;
  [(IFGraphicsContext *)&v4 dealloc];
}

- (CGSize)size
{
  [(IFGraphicsContext *)self scale];
  v4 = v3;
  v5 = CGBitmapContextGetWidth(self->_cgContext) / v3;
  v6 = CGBitmapContextGetHeight(self->_cgContext) / v4;
  v7 = v5;
  result.height = v6;
  result.width = v7;
  return result;
}

- (double)scale
{
  memset(&v3, 0, sizeof(v3));
  CGContextGetCTM(&v3, [(IFGraphicsContext *)self cgContext]);
  return sqrt(fabs(v3.a * v3.d - v3.b * v3.c));
}

- (IFImage)image
{
  Image = CGBitmapContextCreateImage(self->_cgContext);
  if (Image)
  {
    v4 = Image;
    v5 = [IFImage alloc];
    [(IFGraphicsContext *)self scale];
    v6 = [(IFImage *)v5 initWithCGImage:v4 scale:?];
    CFRelease(v4);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)imageFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  Image = CGBitmapContextCreateImage(self->_cgContext);
  if (Image && (v9 = Image, [(IFGraphicsContext *)self transform], v16.origin.x = x, v16.origin.y = y, v16.size.width = width, v16.size.height = height, v17 = CGRectApplyAffineTransform(v16, &v14), v10 = CGImageCreateWithImageInRect(v9, v17), CFRelease(v9), v10))
  {
    v11 = [IFImage alloc];
    [(IFGraphicsContext *)self scale];
    v12 = [(IFImage *)v11 initWithCGImage:v10 scale:?];
    CFRelease(v10);
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (NSData)data
{
  Data = CGBitmapContextGetData(self->_cgContext);
  BytesPerRow = CGBitmapContextGetBytesPerRow(self->_cgContext);
  v5 = CGBitmapContextGetHeight(self->_cgContext) * BytesPerRow;
  v6 = MEMORY[0x1E695DEF0];

  return [v6 dataWithBytesNoCopy:Data length:v5 freeWhenDone:0];
}

- (IFColor)fillColor
{
  v2 = [[IFColor alloc] initWithCGColor:CGContextGetFillColorAsColor()];

  return v2;
}

- (void)setFillColor:(id)a3
{
  cgContext = self->_cgContext;
  v4 = [a3 cgColor];

  CGContextSetFillColorWithColor(cgContext, v4);
}

- (IFColor)strokeColor
{
  v2 = [[IFColor alloc] initWithCGColor:CGContextGetStrokeColorAsColor()];

  return v2;
}

- (void)setStrokeColor:(id)a3
{
  cgContext = self->_cgContext;
  v4 = [a3 cgColor];

  CGContextSetStrokeColorWithColor(cgContext, v4);
}

- (void)drawCGImage:(CGImage *)a3 centeredInRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [(IFGraphicsContext *)self scale];
  v11 = v10;
  v12 = CGImageGetWidth(a3) / v10;
  v13 = CGImageGetHeight(a3) / v11;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v14 = round(CGRectGetMidX(v21) - v12 * 0.5);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v15 = round(CGRectGetMidY(v22) - v13 * 0.5);
  cgContext = self->_cgContext;
  v17 = v14;
  v18 = v12;
  v19 = v13;

  CGContextDrawImage(cgContext, *&v17, a3);
}

- (void)drawSymbolImage:(id)a3 centeredInRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v10 = [v9 CGImage];
  [v9 contentBounds];
  v12 = v11;
  v33 = v13;
  [v9 alignmentRect];
  v15 = v14;
  [v9 alignmentRect];
  v17 = v16;
  [v9 baselineOffset];
  v19 = v17 - v18;
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  MinX = CGRectGetMinX(v35);
  v36.origin.x = x;
  v36.origin.y = y;
  v36.size.width = width;
  v36.size.height = height;
  v21 = v15 + MinX + CGRectGetMidX(v36) - v12 * 0.5;
  v37.origin.x = x;
  v37.origin.y = y;
  v37.size.width = width;
  v37.size.height = height;
  MinY = CGRectGetMinY(v37);
  v38.origin.x = x;
  v38.origin.y = y;
  v38.size.width = width;
  v38.size.height = height;
  v23 = v19 + MinY + CGRectGetMidY(v38) - v33 * 0.5;
  [v9 alignmentRect];
  v25 = v24;
  [v9 alignmentRect];
  v27 = v26;

  cgContext = self->_cgContext;
  v29 = v21;
  v30 = v23;
  v31 = v25;
  v32 = v27;

  CGContextDrawImage(cgContext, *&v29, v10);
}

- (void)drawText:(id)a3 fontName:(id)a4 fontSize:(double)a5 inRect:(CGRect)a6
{
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v31[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  [(IFGraphicsContext *)self pushState];
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, a5, 0);
  v13 = [(IFGraphicsContext *)self strokeColor];
  v14 = [v13 cgColor];

  v15 = *MEMORY[0x1E69659D8];
  v30[0] = *MEMORY[0x1E6965658];
  v30[1] = v15;
  v31[0] = UIFontForLanguage;
  v31[1] = v14;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v17 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v11 attributes:v16];
  v18 = CTLineCreateWithAttributedString(v17);
  if (v18)
  {
    v19 = v18;
    descent = 0.0;
    ascent = 0.0;
    leading = 0.0;
    TypographicBounds = CTLineGetTypographicBounds(v18, &ascent, &descent, &leading);
    if (TypographicBounds > 0.0)
    {
      v21 = TypographicBounds;
      v22 = TypographicBounds + 6.0;
      v23 = 1.0;
      if (width > 6.0 && v22 > width)
      {
        v22 = width + -6.0 + 6.0;
        v23 = (width + -6.0) / v21;
        v21 = width + -6.0;
      }

      if (v22 <= width)
      {
        ImageBounds = CTLineGetImageBounds(v19, self->_cgContext);
        CGContextTranslateCTM(self->_cgContext, x + (width - floor(v21)) * 0.5, ceil(y - ImageBounds.origin.y));
        if (v23 < 1.0)
        {
          CGContextScaleCTM(self->_cgContext, v23, v23);
        }

        cgContext = self->_cgContext;
        v25 = *(MEMORY[0x1E695EFD0] + 16);
        *&v26.a = *MEMORY[0x1E695EFD0];
        *&v26.c = v25;
        *&v26.tx = *(MEMORY[0x1E695EFD0] + 32);
        CGContextSetTextMatrix(cgContext, &v26);
      }

      CGContextSetShouldAntialias(self->_cgContext, 1);
      CGContextSetShouldSmoothFonts(self->_cgContext, 0);
      CGContextSetTextDrawingMode(self->_cgContext, kCGTextFill);
      CGContextSetTextPosition(self->_cgContext, 0.0, 0.0);
      CTLineDraw(v19, self->_cgContext);
    }

    CFRelease(v19);
  }

  [(IFGraphicsContext *)self popState];
}

- (void)strokePath:(CGPath *)a3
{
  CGContextSaveGState(self->_cgContext);
  CGContextAddPath(self->_cgContext, a3);
  CGContextStrokePath(self->_cgContext);
  cgContext = self->_cgContext;

  CGContextRestoreGState(cgContext);
}

- (void)fillPath:(CGPath *)a3
{
  CGContextSaveGState(self->_cgContext);
  CGContextAddPath(self->_cgContext, a3);
  CGContextFillPath(self->_cgContext);
  cgContext = self->_cgContext;

  CGContextRestoreGState(cgContext);
}

@end