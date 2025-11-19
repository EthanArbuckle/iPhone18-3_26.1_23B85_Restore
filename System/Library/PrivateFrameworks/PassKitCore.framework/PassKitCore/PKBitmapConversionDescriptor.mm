@interface PKBitmapConversionDescriptor
+ (id)create;
+ (id)create16Float;
+ (id)create32Float;
+ (id)create8Uint;
- (id)convertFromContext:(id)a3;
- (id)convertImage:(CGImage *)a3;
- (uint64_t)_convertContext:(uint64_t)a1;
- (void)dealloc;
- (void)setBitsPerComponent:(unsigned __int8)a3 withByteOrder:(unsigned int)a4;
- (void)setColorSpace:(CGColorSpace *)a3 withPolicy:(id)a4;
@end

@implementation PKBitmapConversionDescriptor

+ (id)create
{
  result = [PKBitmapConversionDescriptor alloc];
  if (result)
  {
    v3.receiver = result;
    v3.super_class = PKBitmapConversionDescriptor;
    result = objc_msgSendSuper2(&v3, sel_init);
    if (result)
    {
      *(result + 4) = 0;
      *(result + 3) = 0;
    }
  }

  return result;
}

+ (id)create8Uint
{
  v2 = [PKBitmapConversionDescriptor alloc];
  if (v2)
  {
    v6.receiver = v2;
    v6.super_class = PKBitmapConversionDescriptor;
    v3 = objc_msgSendSuper2(&v6, sel_init);
    v4 = v3;
    if (v3)
    {
      *(v3 + 4) = 0;
      *(v3 + 3) = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  [v4 setFloatingComponents:0];
  [v4 setBitsPerComponent:8 withByteOrder:0x2000];
  [v4 setAlphaInfoTransform:&__block_literal_global_47];
  return v4;
}

uint64_t __43__PKBitmapConversionDescriptor_create8Uint__block_invoke(uint64_t a1, unsigned int a2)
{
  if (a2 < 8)
  {
    return dword_1ADB997D0[a2];
  }

  __break(1u);
  return result;
}

+ (id)create16Float
{
  v2 = [PKBitmapConversionDescriptor alloc];
  if (v2)
  {
    v6.receiver = v2;
    v6.super_class = PKBitmapConversionDescriptor;
    v3 = objc_msgSendSuper2(&v6, sel_init);
    v4 = v3;
    if (v3)
    {
      *(v3 + 4) = 0;
      *(v3 + 3) = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  [v4 setFloatingComponents:1];
  [v4 setBitsPerComponent:16 withByteOrder:4096];
  [v4 setAlphaInfoTransform:&__block_literal_global_44_0];
  return v4;
}

uint64_t __45__PKBitmapConversionDescriptor_create16Float__block_invoke(uint64_t a1, unsigned int a2)
{
  if (a2 < 8)
  {
    return dword_1ADB997F0[a2];
  }

  __break(1u);
  return result;
}

+ (id)create32Float
{
  v2 = [PKBitmapConversionDescriptor alloc];
  if (v2)
  {
    v6.receiver = v2;
    v6.super_class = PKBitmapConversionDescriptor;
    v3 = objc_msgSendSuper2(&v6, sel_init);
    v4 = v3;
    if (v3)
    {
      *(v3 + 4) = 0;
      *(v3 + 3) = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  [v4 setFloatingComponents:1];
  [v4 setBitsPerComponent:32 withByteOrder:0x2000];
  [v4 setAlphaInfoTransform:&__block_literal_global_46];
  return v4;
}

uint64_t __45__PKBitmapConversionDescriptor_create32Float__block_invoke(uint64_t a1, unsigned int a2)
{
  if (a2 < 8)
  {
    return dword_1ADB997F0[a2];
  }

  __break(1u);
  return result;
}

- (void)dealloc
{
  CGColorSpaceRelease(self->_colorSpace);
  v3.receiver = self;
  v3.super_class = PKBitmapConversionDescriptor;
  [(PKBitmapConversionDescriptor *)&v3 dealloc];
}

- (uint64_t)_convertContext:(uint64_t)a1
{
  v78 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      goto LABEL_125;
    }

    v5 = v3;
    v6 = *(v4 + 8) & 0x1F;
    v7 = *(a1 + 16);
    if (v7)
    {
      v6 = (*(v7 + 16))(v7, *(v4 + 8) & 0x1F);
      if (v6 >= 0x20)
      {
        goto LABEL_125;
      }
    }

    v8 = (v4 + 16);
    if (*(a1 + 8))
    {
      v9 = 256;
    }

    else
    {
      v9 = 0;
    }

    v10 = *(a1 + 9);
    v11 = (a1 + 12);
    if (!*(a1 + 9))
    {
      v11 = v4 + 32;
    }

    v12 = *v11 & 0x7000;
    memset(&space, 0, sizeof(space));
    if (&space != v8)
    {
      v13 = *(v4 + 2);
      *&space.bitsPerComponent = *&v8->bitsPerComponent;
      *&space.bitmapInfo = v13;
      *&space.renderingIntent = *(v4 + 6);
    }

    space.bitmapInfo = v9 | v12 | v6;
    if (v6 == 7)
    {
      v14 = 0;
    }

    else
    {
      v14 = *(a1 + 24);
      if (!v14)
      {
        v14 = *(v4 + 3);
      }
    }

    space.colorSpace = v14;
    if (v10)
    {
      if (v6 == 7 || !v14)
      {
        NumberOfComponents = v6 != 0;
      }

      else
      {
        NumberOfComponents = CGColorSpaceGetNumberOfComponents(v14);
        if (NumberOfComponents >= 0x100)
        {
          goto LABEL_125;
        }

        if (v6)
        {
          if (NumberOfComponents == 255)
          {
            goto LABEL_125;
          }

          ++NumberOfComponents;
        }
      }

      v16 = *(a1 + 9);
      space.bitsPerComponent = *(a1 + 9);
      v17 = NumberOfComponents * v16;
      if (v17 >= 0x100)
      {
        goto LABEL_125;
      }

      space.bitsPerPixel = v17;
    }

    v18 = *(a1 + 32);
    if (v18)
    {
      v19 = (*(v18 + 16))(v18, *(v4 + 3), space.colorSpace);
    }

    else
    {
      v19 = kCGRenderingIntentPerceptual;
    }

    space.renderingIntent = v19;
    if (v4[8])
    {
LABEL_126:
      __break(1u);
    }

    if (*(v4 + 2) == *&space.bitsPerComponent)
    {
      v20 = *(v4 + 3);
      if (v20 == space.colorSpace)
      {
        goto LABEL_39;
      }

      if (v20)
      {
        if (space.colorSpace)
        {
          Name = CGColorSpaceGetName(v20);
          v22 = CGColorSpaceGetName(space.colorSpace);
          if (Name == v22 || Name && v22 && CFStringCompare(Name, v22, 0) == kCFCompareEqualTo)
          {
            v23 = CGColorSpaceGetNumberOfComponents(*(v4 + 3));
            if (v23 != CGColorSpaceGetNumberOfComponents(space.colorSpace))
            {
              goto LABEL_125;
            }

LABEL_39:
            if (*(v4 + 9) == space.version && *(v4 + 8) == space.bitmapInfo)
            {
              v24 = *(v4 + 5);
              if (v24 == space.decode)
              {
                goto LABEL_97;
              }

              if (v24 && space.decode)
              {
                v25 = *(v4 + 8) & 0x1F;
                if (v25 == 7 || !space.colorSpace)
                {
                  LOBYTE(v26) = v25 != 0;
                }

                else
                {
                  v26 = CGColorSpaceGetNumberOfComponents(space.colorSpace);
                  if (v26 >= 0x100)
                  {
                    goto LABEL_125;
                  }

                  if (v25)
                  {
                    if (v26 == 255)
                    {
                      goto LABEL_125;
                    }

                    LOBYTE(v26) = v26 + 1;
                  }
                }

                if (!memcmp(*(v4 + 5), space.decode, 16 * v26))
                {
LABEL_97:
                  v46 = 1;
                  goto LABEL_115;
                }
              }
            }
          }
        }
      }
    }

    error = 0;
    v27 = vImageConverter_CreateWithCGImageFormat((v4 + 16), &space, 0, 0, &error);
    if (v27)
    {
      v28 = v27;
      error = 0;
      NumberOfSourceBuffers = vImageConverter_GetNumberOfSourceBuffers(v27);
      NumberOfDestinationBuffers = vImageConverter_GetNumberOfDestinationBuffers(v28);
      v31 = NumberOfDestinationBuffers;
      if (NumberOfSourceBuffers == 1 && NumberOfDestinationBuffers == 1)
      {
        memset(&dests, 0, sizeof(dests));
        v32 = MEMORY[0x1B26FA130](&dests, *(v4 + 8), *(v4 + 9), space.bitsPerPixel, 512);
        if (v32 < 0)
        {
          goto LABEL_125;
        }

        if (!is_mul_ok(dests.height, dests.rowBytes))
        {
          v37 = 0;
          goto LABEL_93;
        }

        v33 = v32;
        v34 = *(v4 + 11);
        if (v34)
        {
          v35 = dests.height * dests.rowBytes;
          if (v35 <= [v34 length] && (!v33 || !(*(v4 + 7) % v33)))
          {
            dests.data = *(v4 + 7);
            v36 = *(v4 + 11);
            if (!vImageConverter_MustOperateOutOfPlace(v28, (v4 + 56), &dests, 0x10u))
            {
              goto LABEL_64;
            }

            dests.data = 0;
          }
        }

        v36 = 0;
LABEL_64:
        if (dests.data)
        {
          v37 = v36;
LABEL_66:
          v38 = vImageConvert_AnyToAny(v28, (v4 + 56), &dests, 0, 0x10u);
          error = v38;
          if (!v38)
          {
            vImageConverter_Release(v28);
            v39 = _PKCreateBitmapContext(&space, &dests, v37, 1);
            if (v39)
            {
              v40 = v39;
              CGContextGetBaseCTM();
              CGContextSetBaseCTM();
              if (&space == v8)
              {
LABEL_113:
                v65 = *&dests.width;
                *(v4 + 56) = *&dests.data;
                *(v4 + 72) = v65;
                objc_storeStrong(v4 + 11, v37);
                CGContextRelease(*(v4 + 12));
                *(v4 + 12) = v40;
                v55 = 1;
                goto LABEL_114;
              }

              v41 = CGColorSpaceRetain(space.colorSpace);
              v42 = v41;
              if (!space.decode)
              {
                goto LABEL_107;
              }

              v43 = space.bitmapInfo & 0x1F;
              if (!v41 || v43 == 7)
              {
                if ((space.bitmapInfo & 0x1F) != 0)
                {
                  LOBYTE(v44) = 1;
                  goto LABEL_106;
                }

                goto LABEL_107;
              }

              v44 = CGColorSpaceGetNumberOfComponents(v41);
              if (v44 < 0x100)
              {
                if (v43)
                {
                  if (v44 != 255)
                  {
                    LOBYTE(v44) = v44 + 1;
LABEL_106:
                    v58 = 16 * v44;
                    v59 = malloc_type_aligned_alloc(8uLL, v58, 0x66BBC5B0uLL);
                    memcpy(v59, space.decode, v58);
LABEL_108:
                    v60 = *(v4 + 3);
                    if (v60)
                    {
                      CFRelease(v60);
                      *(v4 + 3) = 0;
                    }

                    v61 = *(v4 + 5);
                    if (v61)
                    {
                      free(v61);
                    }

                    bitmapInfo = space.bitmapInfo;
                    version = space.version;
                    renderingIntent = space.renderingIntent;
                    *(v4 + 2) = *&space.bitsPerComponent;
                    *(v4 + 3) = v42;
                    *(v4 + 8) = bitmapInfo;
                    *(v4 + 9) = version;
                    *(v4 + 5) = v59;
                    *(v4 + 12) = renderingIntent;
                    goto LABEL_113;
                  }

                  goto LABEL_125;
                }

                if (v44)
                {
                  goto LABEL_106;
                }

LABEL_107:
                v59 = 0;
                goto LABEL_108;
              }

LABEL_125:
              __break(1u);
              goto LABEL_126;
            }

LABEL_94:
            v55 = 0;
LABEL_114:
            buf[0] = v55;

            v46 = buf[0];
            goto LABEL_115;
          }

          v68 = v38;
          v36 = PKLogFacilityTypeGetObject(0);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v73 = v4;
            v74 = 2048;
            v75 = v68;
            _os_log_impl(&dword_1AD337000, v36, OS_LOG_TYPE_DEFAULT, "PKBitmapContext (%p): could not convert to destination format - %zd.", buf, 0x16u);
          }

          goto LABEL_92;
        }

        height = dests.height;
        rowBytes = dests.rowBytes;
        if (!is_mul_ok(dests.height, dests.rowBytes))
        {
          v49 = PKLogFacilityTypeGetObject(0);
          if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218240;
            v73 = height;
            v74 = 2048;
            v75 = rowBytes;
            v50 = "PKBitmapContext: image length computation overflowed - %zu x %zu.";
LABEL_88:
            v53 = v49;
            v54 = 22;
LABEL_89:
            _os_log_impl(&dword_1AD337000, v53, OS_LOG_TYPE_DEFAULT, v50, buf, v54);
            goto LABEL_90;
          }

          goto LABEL_90;
        }

        v51 = dests.height * dests.rowBytes;
        if (dests.height * dests.rowBytes)
        {
          v52 = *MEMORY[0x1E69E9AC8] - 1;
          if (__CFADD__(v51, v52))
          {
            v49 = PKLogFacilityTypeGetObject(0);
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 134218240;
              v73 = v51;
              v74 = 2048;
              v75 = v52;
              v50 = "PKBitmapContext: buffer length computation overflowed - %zu + %zu.";
              goto LABEL_88;
            }

LABEL_90:

            goto LABEL_91;
          }

          v56 = (v51 + v52) & -*MEMORY[0x1E69E9AC8];
          if (v51 > v56)
          {
            goto LABEL_125;
          }

          if (vm_allocate(*MEMORY[0x1E69E9A60], &dests, v56, 1))
          {
            v49 = PKLogFacilityTypeGetObject(0);
            if (!os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_90;
            }

            *buf = 134217984;
            v73 = v56;
            v50 = "PKBitmapContext: could not create allocation of size %zu.";
            v53 = v49;
            v54 = 12;
            goto LABEL_89;
          }

          if (dests.data)
          {
            if (v33 && os_variant_has_internal_ui() && dests.data % v33)
            {
              goto LABEL_125;
            }

            v57 = objc_alloc(MEMORY[0x1E695DEF0]);
            v37 = [v57 initWithBytesNoCopy:dests.data length:v56 deallocator:&__block_literal_global_106];

            if (!v37)
            {
              goto LABEL_93;
            }

            goto LABEL_66;
          }
        }

LABEL_91:
        v37 = 0;
LABEL_92:

LABEL_93:
        vImageConverter_Release(v28);
        goto LABEL_94;
      }

      v67 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218496;
        v73 = v4;
        v74 = 2048;
        v75 = NumberOfSourceBuffers;
        v76 = 2048;
        v77 = v31;
        _os_log_impl(&dword_1AD337000, v67, OS_LOG_TYPE_DEFAULT, "PKBitmapContext (%p): converter requires an unexpected number of buffers - %lu -> %lu.", buf, 0x20u);
      }

      vImageConverter_Release(v28);
    }

    else
    {
      v45 = PKLogFacilityTypeGetObject(0);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v73 = v4;
        v74 = 2048;
        v75 = error;
        _os_log_impl(&dword_1AD337000, v45, OS_LOG_TYPE_DEFAULT, "PKBitmapContext (%p): cannot create converter - %zd.", buf, 0x16u);
      }
    }
  }

  v46 = 0;
LABEL_115:

  return v46;
}

- (id)convertFromContext:(id)a3
{
  result = a3;
  if (result)
  {
    v5 = result;
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__15;
    v13 = __Block_byref_object_dispose__15;
    v14 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __51__PKBitmapConversionDescriptor_convertFromContext___block_invoke;
    v8[3] = &unk_1E79CCCB8;
    v8[4] = &v9;
    [(PKBitmapContext *)result _accessContext:v8];
    if ([(PKBitmapConversionDescriptor *)self _convertContext:?])
    {
      v6 = v10[5];
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
    _Block_object_dispose(&v9, 8);

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void __51__PKBitmapConversionDescriptor_convertFromContext___block_invoke(uint64_t a1, CGContext *a2)
{
  v3 = [[PKBitmapContext alloc] _initWithBitmapContext:a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)convertImage:(CGImage *)a3
{
  v49 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_60;
  }

  v4 = [PKBitmapContext alloc];
  if (!v4)
  {
LABEL_61:
    v5 = 0;
    goto LABEL_40;
  }

  v44.receiver = v4;
  v44.super_class = PKBitmapContext;
  v5 = [(PKBitmapConversionDescriptor *)&v44 init];
  if (!v5)
  {
LABEL_41:
    v35 = 0;
    goto LABEL_42;
  }

  BitsPerComponent = CGImageGetBitsPerComponent(a3);
  if (HIDWORD(BitsPerComponent))
  {
    goto LABEL_60;
  }

  v7 = BitsPerComponent;
  BitsPerPixel = CGImageGetBitsPerPixel(a3);
  if (HIDWORD(BitsPerPixel))
  {
    goto LABEL_60;
  }

  v9 = BitsPerPixel;
  ColorSpace = CGImageGetColorSpace(a3);
  BitmapInfo = CGImageGetBitmapInfo(a3);
  Decode = CGImageGetDecode(a3);
  RenderingIntent = CGImageGetRenderingIntent(a3);
  v14 = CGColorSpaceRetain(ColorSpace);
  v15 = v14;
  if (!Decode)
  {
    goto LABEL_17;
  }

  if ((BitmapInfo & 0x1F) == 7 || !v14)
  {
    if ((BitmapInfo & 0x1F) != 0)
    {
      LOBYTE(NumberOfComponents) = 1;
      goto LABEL_16;
    }

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  NumberOfComponents = CGColorSpaceGetNumberOfComponents(v14);
  if (NumberOfComponents >= 0x100)
  {
    goto LABEL_60;
  }

  if ((BitmapInfo & 0x1F) != 0)
  {
    if (NumberOfComponents == 255)
    {
      goto LABEL_60;
    }

    LOBYTE(NumberOfComponents) = NumberOfComponents + 1;
    goto LABEL_16;
  }

  if (!NumberOfComponents)
  {
    goto LABEL_17;
  }

LABEL_16:
  v17 = 16 * NumberOfComponents;
  v18 = malloc_type_aligned_alloc(8uLL, v17, 0x66BBC5B0uLL);
  memcpy(v18, Decode, v17);
LABEL_18:
  v19 = *(v5 + 3);
  if (v19)
  {
    CFRelease(v19);
    *(v5 + 3) = 0;
  }

  v20 = *(v5 + 5);
  if (v20)
  {
    free(v20);
  }

  *(v5 + 4) = v7;
  *(v5 + 5) = v9;
  *(v5 + 3) = v15;
  *(v5 + 8) = BitmapInfo;
  *(v5 + 9) = 0;
  *(v5 + 5) = v18;
  *(v5 + 12) = RenderingIntent;
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  v23 = MEMORY[0x1B26FA130](v5 + 56, Height, Width, *(v5 + 5), 512);
  if (v23 < 0 || *(v5 + 7))
  {
    goto LABEL_60;
  }

  v24 = *(v5 + 8);
  v25 = *(v5 + 10);
  if (!is_mul_ok(v24, v25))
  {
    v26 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v46 = v24;
      v47 = 2048;
      v48 = v25;
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
      v46 = v28;
      v47 = 2048;
      v48 = v29;
      v27 = "PKBitmapContext: buffer length computation overflowed - %zu + %zu.";
      goto LABEL_32;
    }

LABEL_33:

    goto LABEL_34;
  }

  v40 = (v28 + v29) & -*MEMORY[0x1E69E9AC8];
  if (v28 > v40)
  {
    goto LABEL_60;
  }

  v41 = v23;
  if (vm_allocate(*MEMORY[0x1E69E9A60], v5 + 7, v40, 1))
  {
    v42 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v46 = v40;
      _os_log_impl(&dword_1AD337000, v42, OS_LOG_TYPE_DEFAULT, "PKBitmapContext: could not create allocation of size %zu.", buf, 0xCu);
    }

    goto LABEL_34;
  }

  if (!*(v5 + 7))
  {
LABEL_34:
    v30 = 0;
    goto LABEL_35;
  }

  if (v41 && os_variant_has_internal_ui() && *(v5 + 7) % v41)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v30 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytesNoCopy:*(v5 + 7) length:v40 deallocator:&__block_literal_global_106];
LABEL_35:
  v31 = *(v5 + 11);
  *(v5 + 11) = v30;

  if (!*(v5 + 11))
  {
LABEL_40:

    v5 = 0;
    goto LABEL_41;
  }

  v32 = MEMORY[0x1B26FA140](v5 + 56, v5 + 16, 0, a3, 528);
  if (v32)
  {
    v33 = v32;
    v34 = PKLogFacilityTypeGetObject(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v46 = v5;
      v47 = 2048;
      v48 = v33;
      _os_log_impl(&dword_1AD337000, v34, OS_LOG_TYPE_DEFAULT, "PKBitmapContext (%p): could not unpack image into buffer - %zd.", buf, 0x16u);
    }

    goto LABEL_40;
  }

  v37 = *(v5 + 5);
  if (v37)
  {
    free(v37);
    *(v5 + 5) = 0;
  }

  v38 = _PKCreateBitmapContext(v5 + 2, (v5 + 56), *(v5 + 11), 1);
  *(v5 + 12) = v38;
  if (!v38)
  {
    goto LABEL_40;
  }

  v5 = v5;

  if ([(PKBitmapConversionDescriptor *)self _convertContext:v5])
  {
    v39 = v5;
  }

  else
  {
    v39 = 0;
  }

  v35 = v39;
LABEL_42:

  return v35;
}

- (void)setBitsPerComponent:(unsigned __int8)a3 withByteOrder:(unsigned int)a4
{
  self->_bitsPerComponent = a3;
  if ((a4 & 0xFFFF8FFF) != 0)
  {
    __break(1u);
  }

  else
  {
    self->_byteOrder = a4;
  }
}

- (void)setColorSpace:(CGColorSpace *)a3 withPolicy:(id)a4
{
  colorSpace = self->_colorSpace;
  v7 = a4;
  CGColorSpaceRelease(colorSpace);
  self->_colorSpace = CGColorSpaceRetain(a3);
  v8 = _Block_copy(v7);

  colorTransformPolicy = self->_colorTransformPolicy;
  self->_colorTransformPolicy = v8;
}

@end