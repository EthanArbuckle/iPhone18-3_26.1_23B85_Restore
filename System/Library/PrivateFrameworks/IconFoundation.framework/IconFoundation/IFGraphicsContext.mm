@interface IFGraphicsContext
+ ($2FDBBB09D977766327AC09A4EBB220D3)pixelFormatFromCGImage:(CGImage *)image;
+ ($2FDBBB09D977766327AC09A4EBB220D3)pixelFormatFromPreset:(unint64_t)preset;
+ (CGColorSpace)colorSpaceFromPixelFormat:(id)format;
+ (id)bitmapContextWithSize:(CGSize)size scale:(double)scale pixelFormat:(id)format;
+ (id)bitmapContextWithSize:(CGSize)size scale:(double)scale preset:(unint64_t)preset;
+ (unint64_t)presetFromCGImage:(CGImage *)image;
+ (unint64_t)presetFromColorSpace:(CGColorSpace *)space;
+ (unint64_t)presetFromPixelFormat:(id)format;
- (CGSize)size;
- (IFColor)fillColor;
- (IFColor)strokeColor;
- (IFGraphicsContext)initWithCGContext:(CGContext *)context preset:(unint64_t)preset;
- (IFImage)image;
- (NSData)data;
- (double)scale;
- (id)imageFromRect:(CGRect)rect;
- (void)dealloc;
- (void)drawCGImage:(CGImage *)image centeredInRect:(CGRect)rect;
- (void)drawSymbolImage:(id)image centeredInRect:(CGRect)rect;
- (void)drawText:(id)text fontName:(id)name fontSize:(double)size inRect:(CGRect)rect;
- (void)fillPath:(CGPath *)path;
- (void)setFillColor:(id)color;
- (void)setStrokeColor:(id)color;
- (void)strokePath:(CGPath *)path;
@end

@implementation IFGraphicsContext

+ (id)bitmapContextWithSize:(CGSize)size scale:(double)scale pixelFormat:(id)format
{
  v7 = round(size.width * scale);
  v8 = round(size.height * scale);
  var2 = format.var2;
  v10 = 1;
  v11 = 4353;
  if (format.var0 <= 3u)
  {
    if (format.var0 <= 1u)
    {
      if (format.var0)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (format.var0 == 2)
    {
      goto LABEL_15;
    }

    if (format.var0 == 3)
    {
      v10 = 4352;
LABEL_24:
      +[IFColor deviceExtendedRGBColorSpace];
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  if (format.var0 > 5u)
  {
    if (format.var0 == 6)
    {
      v12 = 0;
      v16 = 1;
      v10 = 7;
      goto LABEL_41;
    }

    if (format.var0 == 7)
    {
      goto LABEL_35;
    }

    goto LABEL_14;
  }

  if (format.var0 == 4)
  {
LABEL_19:
    v13 = +[IFColor deviceDisplayP3ColorSpace];
LABEL_36:
    v12 = v13;
    v16 = 4;
    v10 = v11;
    goto LABEL_41;
  }

  if (format.var0 != 5)
  {
LABEL_14:
    v10 = 0;
  }

LABEL_15:
  v12 = 0;
  if (format.var0 <= 2u)
  {
    if (format.var0)
    {
      if (format.var0 == 1)
      {
LABEL_25:
        v11 = v10;
LABEL_26:
        v12 = +[IFColor deviceExtendedRGBColorSpace];
        v10 = v11;
        goto LABEL_27;
      }

      if (format.var0 != 2)
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

  if (format.var0 > 4u)
  {
    if (format.var0 == 5)
    {
      v12 = +[IFColor deviceGreyColorSpace];
      v16 = 1;
      goto LABEL_41;
    }

    v11 = v10;
    if (format.var0 != 7)
    {
      goto LABEL_27;
    }

LABEL_35:
    v13 = +[IFColor deviceExtendedDisplayP3ColorSpace];
    goto LABEL_36;
  }

  if (format.var0 == 3)
  {
    goto LABEL_24;
  }

  v11 = v10;
  if (format.var0 == 4)
  {
    goto LABEL_19;
  }

LABEL_27:
  if (format.var0 == 7)
  {
    v15 = 4;
  }

  else
  {
    v15 = 1;
  }

  if (format.var0 >= 5u)
  {
    v16 = v15;
  }

  else
  {
    v16 = 4;
  }

LABEL_41:
  v17 = CGBitmapContextCreate(0, v7, v8, format.var2 / v16, (v7 * (var2 >> 3)), v12, v10);
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
    CGAffineTransformScale(&v23, &v22, scale, scale);
    v22 = v23;
    CGContextSetCTM();
    v20 = [[IFGraphicsContext alloc] initWithCGContext:v18 preset:[IFGraphicsContext presetFromPixelFormat:*&format & 0xFF00FFFF | (format.var2 << 16)]];
    CFRelease(v18);
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)bitmapContextWithSize:(CGSize)size scale:(double)scale preset:(unint64_t)preset
{
  height = size.height;
  width = size.width;
  if (preset == 8)
  {
    v8 = IFDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [IFGraphicsContext bitmapContextWithSize:v8 scale:? preset:?];
    }

    preset = 0;
  }

  scale = [IFGraphicsContext bitmapContextWithSize:[IFGraphicsContext pixelFormatFromPreset:preset] scale:width pixelFormat:height, scale];

  return scale;
}

+ (unint64_t)presetFromColorSpace:(CGColorSpace *)space
{
  if (!space)
  {
    return 8;
  }

  Name = CGColorSpaceGetName(space);
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

+ (CGColorSpace)colorSpaceFromPixelFormat:(id)format
{
  if (format.var0 > 3u)
  {
    if (format.var0 == 7)
    {
      return +[IFColor deviceExtendedDisplayP3ColorSpace];
    }

    if (format.var0 != 5)
    {
      if (format.var0 == 4)
      {
        return +[IFColor deviceDisplayP3ColorSpace];
      }

      return 0;
    }

    return +[IFColor deviceGreyColorSpace];
  }

  else
  {
    if (!format.var0)
    {
      return +[IFColor deviceRGBColorSpace];
    }

    if (format.var0 != 1)
    {
      if (format.var0 == 2)
      {
        return +[IFColor deviceSRGBColorSpace];
      }

      return 0;
    }

    return +[IFColor deviceExtendedRGBColorSpace];
  }
}

+ (unint64_t)presetFromCGImage:(CGImage *)image
{
  ColorSpace = CGImageGetColorSpace(image);

  return [IFGraphicsContext presetFromColorSpace:ColorSpace];
}

+ (unint64_t)presetFromPixelFormat:(id)format
{
  if ((format.var0 & 0xF8) != 0)
  {
    return 8;
  }

  else
  {
    return qword_1B9E3B608[format.var0 & 7];
  }
}

+ ($2FDBBB09D977766327AC09A4EBB220D3)pixelFormatFromCGImage:(CGImage *)image
{
  v4 = [IFGraphicsContext pixelFormatFromPreset:[IFGraphicsContext presetFromColorSpace:CGImageGetColorSpace(image)]];
  v5 = (CGImageGetBitmapInfo(image) & 0xF00) != 0;
  return (*&v4 & 0xFF0000FF | (v5 << 9) & 0xFF00FFFF | (CGImageGetBitsPerPixel(image) << 16));
}

+ ($2FDBBB09D977766327AC09A4EBB220D3)pixelFormatFromPreset:(unint64_t)preset
{
  if (preset > 7)
  {
    return 0;
  }

  else
  {
    return (dword_1B9E3B668[preset] | dword_1B9E3B648[preset] | dword_1B9E3B688[preset]);
  }
}

- (IFGraphicsContext)initWithCGContext:(CGContext *)context preset:(unint64_t)preset
{
  v9.receiver = self;
  v9.super_class = IFGraphicsContext;
  v6 = [(IFGraphicsContext *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_preset = preset;
    v6->_cgContext = CFRetain(context);
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

- (id)imageFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
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

- (void)setFillColor:(id)color
{
  cgContext = self->_cgContext;
  cgColor = [color cgColor];

  CGContextSetFillColorWithColor(cgContext, cgColor);
}

- (IFColor)strokeColor
{
  v2 = [[IFColor alloc] initWithCGColor:CGContextGetStrokeColorAsColor()];

  return v2;
}

- (void)setStrokeColor:(id)color
{
  cgContext = self->_cgContext;
  cgColor = [color cgColor];

  CGContextSetStrokeColorWithColor(cgContext, cgColor);
}

- (void)drawCGImage:(CGImage *)image centeredInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  [(IFGraphicsContext *)self scale];
  v11 = v10;
  v12 = CGImageGetWidth(image) / v10;
  v13 = CGImageGetHeight(image) / v11;
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

  CGContextDrawImage(cgContext, *&v17, image);
}

- (void)drawSymbolImage:(id)image centeredInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  imageCopy = image;
  cGImage = [imageCopy CGImage];
  [imageCopy contentBounds];
  v12 = v11;
  v33 = v13;
  [imageCopy alignmentRect];
  v15 = v14;
  [imageCopy alignmentRect];
  v17 = v16;
  [imageCopy baselineOffset];
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
  [imageCopy alignmentRect];
  v25 = v24;
  [imageCopy alignmentRect];
  v27 = v26;

  cgContext = self->_cgContext;
  v29 = v21;
  v30 = v23;
  v31 = v25;
  v32 = v27;

  CGContextDrawImage(cgContext, *&v29, cGImage);
}

- (void)drawText:(id)text fontName:(id)name fontSize:(double)size inRect:(CGRect)rect
{
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v31[2] = *MEMORY[0x1E69E9840];
  textCopy = text;
  [(IFGraphicsContext *)self pushState];
  UIFontForLanguage = CTFontCreateUIFontForLanguage(kCTFontUIFontSystem, size, 0);
  strokeColor = [(IFGraphicsContext *)self strokeColor];
  cgColor = [strokeColor cgColor];

  v15 = *MEMORY[0x1E69659D8];
  v30[0] = *MEMORY[0x1E6965658];
  v30[1] = v15;
  v31[0] = UIFontForLanguage;
  v31[1] = cgColor;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];

  v17 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:textCopy attributes:v16];
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

- (void)strokePath:(CGPath *)path
{
  CGContextSaveGState(self->_cgContext);
  CGContextAddPath(self->_cgContext, path);
  CGContextStrokePath(self->_cgContext);
  cgContext = self->_cgContext;

  CGContextRestoreGState(cgContext);
}

- (void)fillPath:(CGPath *)path
{
  CGContextSaveGState(self->_cgContext);
  CGContextAddPath(self->_cgContext, path);
  CGContextFillPath(self->_cgContext);
  cgContext = self->_cgContext;

  CGContextRestoreGState(cgContext);
}

@end