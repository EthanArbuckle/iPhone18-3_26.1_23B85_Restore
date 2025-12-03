@interface PKBitmapContext
+ (id)create16FloatExtendedWithSize:(id)size configuration:(id)configuration;
+ (id)create16FloatWithSize:(id)size configuration:(id)configuration;
+ (id)create32FloatWithSize:(id)size configuration:(id)configuration;
+ (id)create8UintWithSize:(id)size configuration:(id)configuration;
+ (id)createWithCGBitmapContext:(CGContext *)context;
+ (id)createWithSize:(id)size origin:(char)origin format:(const vImage_CGImageFormat *)format;
- (char)_initWithSize:(uint64_t)size origin:(int)origin format:(char *)format;
- (unint64_t)_initWithBitmapContext:(unint64_t)result;
- (void)_accessContext:(uint64_t)context;
- (void)accessData:(id)data;
- (void)dealloc;
@end

@implementation PKBitmapContext

+ (id)createWithSize:(id)size origin:(char)origin format:(const vImage_CGImageFormat *)format
{
  originCopy = origin;
  var1 = size.var1;
  var0 = size.var0;
  v9 = [PKBitmapContext alloc];

  return [(PKBitmapContext *)v9 _initWithSize:var1 origin:originCopy format:format];
}

- (char)_initWithSize:(uint64_t)size origin:(int)origin format:(char *)format
{
  v44 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    goto LABEL_50;
  }

  if (!format)
  {
    goto LABEL_49;
  }

  v39.receiver = self;
  v39.super_class = PKBitmapContext;
  v9 = objc_msgSendSuper2(&v39, sel_init);
  v10 = v9;
  if (v9)
  {
    if (v9 + 16 == format)
    {
      goto LABEL_22;
    }

    v11 = CGColorSpaceRetain(*(format + 1));
    v12 = v11;
    if (*(format + 3))
    {
      v13 = *(format + 4) & 0x1F;
      if (!v11 || v13 == 7)
      {
        if (v13)
        {
          LOBYTE(NumberOfComponents) = 1;
          goto LABEL_15;
        }
      }

      else
      {
        NumberOfComponents = CGColorSpaceGetNumberOfComponents(v11);
        if (NumberOfComponents >= 0x100)
        {
          goto LABEL_49;
        }

        if (v13)
        {
          if (NumberOfComponents == 255)
          {
            goto LABEL_49;
          }

          LOBYTE(NumberOfComponents) = NumberOfComponents + 1;
          goto LABEL_15;
        }

        if (NumberOfComponents)
        {
LABEL_15:
          v15 = 16 * NumberOfComponents;
          v16 = malloc_type_aligned_alloc(8uLL, v15, 0x66BBC5B0uLL);
          memcpy(v16, *(format + 3), v15);
LABEL_17:
          v17 = *(v10 + 3);
          if (v17)
          {
            CFRelease(v17);
            *(v10 + 3) = 0;
          }

          v18 = *(v10 + 5);
          if (v18)
          {
            free(v18);
          }

          v20 = *format;
          v19 = *(format + 1);
          v21 = *(format + 8);
          *(v10 + 3) = v12;
          v22 = *(format + 2);
          *(v10 + 4) = v20;
          *(v10 + 5) = v19;
          *(v10 + 4) = v22;
          *(v10 + 5) = v16;
          *(v10 + 12) = v21;
LABEL_22:
          v23 = MEMORY[0x1B26FA130](v10 + 56, size, a2);
          if ((v23 & 0x8000000000000000) == 0 && !*(v10 + 7))
          {
            v24 = *(v10 + 8);
            v25 = *(v10 + 10);
            if (!is_mul_ok(v24, v25))
            {
              v26 = PKLogFacilityTypeGetObject(0);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218240;
                v41 = v24;
                v42 = 2048;
                v43 = v25;
                v27 = "PKBitmapContext: image length computation overflowed - %zu x %zu.";
LABEL_32:
                _os_log_impl(&dword_1AD337000, v26, OS_LOG_TYPE_DEFAULT, v27, buf, 0x16u);
                goto LABEL_33;
              }

              goto LABEL_33;
            }

            v28 = v24 * v25;
            if (!v28)
            {
              goto LABEL_34;
            }

            v29 = *MEMORY[0x1E69E9AC8] - 1;
            if (__CFADD__(v28, v29))
            {
              v26 = PKLogFacilityTypeGetObject(0);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218240;
                v41 = v28;
                v42 = 2048;
                v43 = v29;
                v27 = "PKBitmapContext: buffer length computation overflowed - %zu + %zu.";
                goto LABEL_32;
              }

LABEL_33:

              goto LABEL_34;
            }

            v35 = (v28 + v29) & -*MEMORY[0x1E69E9AC8];
            if (v28 > v35)
            {
              goto LABEL_49;
            }

            v36 = v23;
            if (vm_allocate(*MEMORY[0x1E69E9A60], v10 + 7, v35, 1))
            {
              v37 = PKLogFacilityTypeGetObject(0);
              if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134217984;
                v41 = v35;
                _os_log_impl(&dword_1AD337000, v37, OS_LOG_TYPE_DEFAULT, "PKBitmapContext: could not create allocation of size %zu.", buf, 0xCu);
              }

              goto LABEL_34;
            }

            if (!*(v10 + 7))
            {
LABEL_34:
              v30 = 0;
LABEL_35:
              v31 = *(v10 + 11);
              *(v10 + 11) = v30;

              v32 = *(v10 + 11);
              if (v32)
              {
                v33 = _PKCreateBitmapContext(v10 + 2, (v10 + 56), v32, origin);
                *(v10 + 12) = v33;
                if (v33)
                {
                  goto LABEL_37;
                }
              }

LABEL_51:
              v34 = 0;
              goto LABEL_52;
            }

            if (!v36 || !os_variant_has_internal_ui() || !(*(v10 + 7) % v36))
            {
              v30 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:*(v10 + 7) length:v35 deallocator:&__block_literal_global_106];
              goto LABEL_35;
            }
          }

LABEL_49:
          __break(1u);
LABEL_50:
          v10 = 0;
          goto LABEL_51;
        }
      }
    }

    v16 = 0;
    goto LABEL_17;
  }

LABEL_37:
  v10 = v10;
  v34 = v10;
LABEL_52:

  return v34;
}

+ (id)create8UintWithSize:(id)size configuration:(id)configuration
{
  v4 = *&configuration.var0;
  var1 = size.var1;
  var0 = size.var0;
  if ((*&configuration.var0 & 0x10000) != 0)
  {
    v7 = PKColorSpaceStandardLinearRGB();
  }

  else
  {
    v7 = PKColorSpaceStandardRGB();
  }

  v8 = v7;
  if (v7)
  {
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(v7);
    if (NumberOfComponents <= 0xFE)
    {
      v10 = (8 * NumberOfComponents + 8) & 0x7F8;
      if (v10 < 0x100)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  LODWORD(v10) = 8;
LABEL_9:
  *&v17[4] = 0;
  if ((v4 & 0x100) != 0)
  {
    v11 = 8198;
  }

  else
  {
    v11 = 8194;
  }

  v13[0] = 8;
  v13[1] = v10;
  v14 = v8;
  v15 = v11;
  v16 = 0;
  *v17 = 0;
  return [[PKBitmapContext alloc] _initWithSize:var1 origin:v4 format:v13];
}

+ (id)create16FloatWithSize:(id)size configuration:(id)configuration
{
  v4 = *&configuration.var0;
  var1 = size.var1;
  var0 = size.var0;
  if ((*&configuration.var0 & 0x10000) != 0)
  {
    v7 = PKColorSpaceStandardLinearRGB();
  }

  else
  {
    v7 = PKColorSpaceStandardRGB();
  }

  v8 = v7;
  if (v7)
  {
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(v7);
    if (NumberOfComponents <= 0xFE)
    {
      v10 = (16 * NumberOfComponents + 16) & 0xFF0;
      if (v10 < 0x100)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  LODWORD(v10) = 16;
LABEL_9:
  *&v17[4] = 0;
  if ((v4 & 0x100) != 0)
  {
    v11 = 4357;
  }

  else
  {
    v11 = 4353;
  }

  v13[0] = 16;
  v13[1] = v10;
  v14 = v8;
  v15 = v11;
  v16 = 0;
  *v17 = 0;
  return [[PKBitmapContext alloc] _initWithSize:var1 origin:v4 format:v13];
}

+ (id)create16FloatExtendedWithSize:(id)size configuration:(id)configuration
{
  v4 = *&configuration.var0;
  var1 = size.var1;
  var0 = size.var0;
  if ((*&configuration.var0 & 0x10000) != 0)
  {
    v7 = PKColorSpaceStandardExtendedLinearRGB();
  }

  else
  {
    v7 = PKColorSpaceStandardExtendedRGB();
  }

  v8 = v7;
  if (v7)
  {
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(v7);
    if (NumberOfComponents <= 0xFE)
    {
      v10 = (16 * NumberOfComponents + 16) & 0xFF0;
      if (v10 < 0x100)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  LODWORD(v10) = 16;
LABEL_9:
  *&v17[4] = 0;
  if ((v4 & 0x100) != 0)
  {
    v11 = 4357;
  }

  else
  {
    v11 = 4353;
  }

  v13[0] = 16;
  v13[1] = v10;
  v14 = v8;
  v15 = v11;
  v16 = 0;
  *v17 = 0;
  return [[PKBitmapContext alloc] _initWithSize:var1 origin:v4 format:v13];
}

+ (id)create32FloatWithSize:(id)size configuration:(id)configuration
{
  v4 = *&configuration.var0;
  var1 = size.var1;
  var0 = size.var0;
  if ((*&configuration.var0 & 0x10000) != 0)
  {
    v7 = PKColorSpaceStandardLinearRGB();
  }

  else
  {
    v7 = PKColorSpaceStandardRGB();
  }

  v8 = v7;
  if (v7)
  {
    NumberOfComponents = CGColorSpaceGetNumberOfComponents(v7);
    if (NumberOfComponents <= 0xFE)
    {
      v10 = (32 * NumberOfComponents + 32) & 0x1FE0;
      if (v10 < 0x100)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  LODWORD(v10) = 32;
LABEL_9:
  *&v17[4] = 0;
  if ((v4 & 0x100) != 0)
  {
    v11 = 8453;
  }

  else
  {
    v11 = 8449;
  }

  v13[0] = 32;
  v13[1] = v10;
  v14 = v8;
  v15 = v11;
  v16 = 0;
  *v17 = 0;
  return [[PKBitmapContext alloc] _initWithSize:var1 origin:v4 format:v13];
}

+ (id)createWithCGBitmapContext:(CGContext *)context
{
  v4 = [PKBitmapContext alloc];

  return [(PKBitmapContext *)v4 _initWithBitmapContext:context];
}

- (unint64_t)_initWithBitmapContext:(unint64_t)result
{
  v2 = result;
  if (!result)
  {
    return v2;
  }

  if (!context)
  {
    goto LABEL_20;
  }

  result = CGBitmapContextGetData(context);
  if (!result)
  {
    goto LABEL_20;
  }

  v4 = result;
  v17.receiver = v2;
  v17.super_class = PKBitmapContext;
  v2 = objc_msgSendSuper2(&v17, sel_init);
  if (!v2)
  {
    return v2;
  }

  result = CGBitmapContextGetBitsPerComponent(context);
  if (HIDWORD(result))
  {
    goto LABEL_20;
  }

  v5 = result;
  result = CGBitmapContextGetBitsPerPixel(context);
  if (HIDWORD(result))
  {
    goto LABEL_20;
  }

  v6 = result;
  ColorSpace = CGBitmapContextGetColorSpace(context);
  BitmapInfo = CGBitmapContextGetBitmapInfo(context);
  RenderingIntent = CGContextGetRenderingIntent();
  v10 = CGColorSpaceRetain(ColorSpace);
  v11 = *(v2 + 3);
  if (v11)
  {
    CFRelease(v11);
    *(v2 + 3) = 0;
  }

  v12 = *(v2 + 5);
  if (v12)
  {
    free(v12);
  }

  *(v2 + 4) = v5;
  *(v2 + 5) = v6;
  *(v2 + 3) = v10;
  *(v2 + 8) = BitmapInfo;
  *(v2 + 9) = 0;
  *(v2 + 5) = 0;
  *(v2 + 12) = RenderingIntent;
  Width = CGBitmapContextGetWidth(context);
  Height = CGBitmapContextGetHeight(context);
  BytesPerRow = CGBitmapContextGetBytesPerRow(context);
  result = MEMORY[0x1B26FA130](v2 + 56, Height, Width, *(v2 + 5), 512);
  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_20;
  }

  v16 = result;
  if (*(v2 + 10) == BytesPerRow)
  {
LABEL_13:
    *(v2 + 7) = v4;
    if (v16)
    {
      result = os_variant_has_internal_ui();
      if (result)
      {
        if (*(v2 + 7) % v16)
        {
          goto LABEL_20;
        }
      }
    }

    *(v2 + 12) = CFRetain(context);
    return v2;
  }

  result = os_variant_has_internal_ui();
  if (!result)
  {
    *(v2 + 10) = BytesPerRow;
    goto LABEL_13;
  }

LABEL_20:
  __break(1u);
  return result;
}

- (void)dealloc
{
  colorSpace = self->_format.colorSpace;
  if (colorSpace)
  {
    CFRelease(colorSpace);
    self->_format.colorSpace = 0;
  }

  decode = self->_format.decode;
  if (decode)
  {
    free(decode);
    self->_format.decode = 0;
  }

  context = self->_context;
  if (context)
  {
    CFRelease(context);
  }

  v6.receiver = self;
  v6.super_class = PKBitmapContext;
  [(PKBitmapContext *)&v6 dealloc];
}

- (void)_accessContext:(uint64_t)context
{
  v3 = a2;
  if (context)
  {
    if (!v3)
    {
      __break(1u);
      return;
    }

    v5 = v3;
    v4 = objc_autoreleasePoolPush();
    v5[2](v5, *(context + 96));
    objc_autoreleasePoolPop(v4);
    v3 = v5;
  }
}

- (void)accessData:(id)data
{
  dataCopy = data;
  if (self)
  {
    if (dataCopy)
    {
      v9 = dataCopy;
      v5 = objc_autoreleasePoolPush();
      v6 = ++self->_vImageAccessCounter;
      if ((v6 & 0x100) == 0)
      {
        v7 = v5;
        v9[2](v9, &self->_format, &self->_buffer);
        v8 = --self->_vImageAccessCounter;
        if (v8 < 0x100)
        {
          objc_autoreleasePoolPop(v7);
          dataCopy = v9;
          goto LABEL_6;
        }

LABEL_11:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_11;
  }

LABEL_6:
}

@end