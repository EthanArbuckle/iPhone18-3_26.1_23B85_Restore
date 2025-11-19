@interface CUINamedLayerStack
+ (CGImage)createRadiosityImageWithImage:(CGImage *)a3 displayScale:(int64_t)a4;
+ (vImage_Buffer)_doRadiosityBlurOnPixelBuffer:(SEL)a3 bytesPerRow:(void *)a4 bitsPerPixel:(unint64_t)a5 width:(unint64_t)a6 height:(unint64_t)a7 scaleFactor:(unint64_t)a8 usesGaussianBlur:(unint64_t)a9 adjustedSize:(BOOL *)a10;
+ (void)radiosityImageWithImage:(CGImage *)a3 displayScale:(int64_t)a4 completionHandler:(id)a5;
- (BOOL)isEqual:(id)a3;
- (CGSize)size;
- (CUINamedLayerStack)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5 resolvingWithBlock:(id)a6;
- (id)layerImageAtIndex:(unint64_t)a3;
- (unint64_t)hash;
- (void)dealloc;
@end

@implementation CUINamedLayerStack

- (CUINamedLayerStack)initWithName:(id)a3 usingRenditionKey:(id)a4 fromTheme:(unint64_t)a5 resolvingWithBlock:(id)a6
{
  v7 = a3;
  v68.receiver = self;
  v68.super_class = CUINamedLayerStack;
  v8 = [(CUINamedLookup *)&v68 initWithName:a3 usingRenditionKey:a4 fromTheme:?];
  v9 = [(CUINamedLookup *)v8 _rendition];
  if ([(CUIThemeRendition *)v9 type]== 1002)
  {
    if (!v7)
    {
      [(CUINamedLookup *)v8 setName:[(CUIThemeRendition *)v9 name]];
      v7 = [(CUIThemeRendition *)v9 name];
    }

    v60 = v8;
    v62 = objc_alloc_init(NSMutableArray);
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = [(CUIThemeRendition *)v9 layerReferences];
    v16 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v65;
      while (2)
      {
        v20 = v7;
        for (i = 0; i != v17; i = i + 1)
        {
          if (*v65 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v64 + 1) + 8 * i);
          v23 = (*(a6 + 2))(a6, [v22 referenceKey]);
          if (!v23)
          {
            [v22 referenceKey];
            v7 = v20;
            _CUILog(4, "CoreUI: Unable to resolve layer reference for '%@' name '%@' layerRef referenceKey '%@'", v28, v29, v30, v31, v32, v33, v22);
            goto LABEL_23;
          }

          v24 = [[CUINamedLayerImage alloc] initWithName:[NSString usingRenditionKey:"stringWithFormat:" fromTheme:@"%@[%ld]" stringWithFormat:v20, ++v18], v23, a5];
          if ([(CUINamedLookup *)v24 _rendition])
          {
            [v22 frame];
            [(CUINamedLayerImage *)v24 setFrame:?];
            [v22 opacity];
            if (v25 < 1.0)
            {
              [(CUINamedLayerImage *)v24 opacity];
              if (v26 == 1.0)
              {
                [v22 opacity];
                [(CUINamedLayerImage *)v24 setOpacity:?];
              }
            }

            if ([v22 blendMode] >= 1 && !-[CUINamedLayerImage blendMode](v24, "blendMode"))
            {
              -[CUINamedLayerImage setBlendMode:](v24, "setBlendMode:", [v22 blendMode]);
            }

            -[CUINamedLayerImage setFixedFrame:](v24, "setFixedFrame:", [v22 fixedFrame]);
            [(NSArray *)v62 addObject:v24];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
        v7 = v20;
        if (v17)
        {
          continue;
        }

        break;
      }
    }

LABEL_23:
    v27 = v60;
    v60->_layers = v62;
    v34 = objc_alloc_init(CUIRenditionKey);
    [(CUIRenditionKey *)v34 setThemeElement:[(CUIRenditionKey *)[(CUINamedLookup *)v60 key] themeElement]];
    [(CUIRenditionKey *)v34 setThemePart:208];
    [(CUIRenditionKey *)v34 setThemeIdentifier:[(CUIRenditionKey *)[(CUINamedLookup *)v60 key] themeIdentifier]];
    v35 = (*(a6 + 2))(a6, v34);
    if (v35)
    {
      v42 = v35;
      v43 = [(CUINamedLookup *)v60 storageRef];
      v45 = _LookupStructuredThemeProvider(v43, v44);
      v46 = [v45 copyLookupKeySignatureForKey:{objc_msgSend(v42, "keyList")}];
      v60->_flattenedImageRendition = [v45 renditionWithKey:objc_msgSend(v42 usingKeySignature:{"keyList"), v46}];
    }

    else
    {
      _CUILog(4, "CoreUI: Unable to resolve flattened image for layer stack %@", v36, v37, v38, v39, v40, v41, v60);
    }

    v8 = objc_alloc_init(CUIRenditionKey);
    [(CUINamedLayerStack *)v8 setThemeElement:[(CUIRenditionKey *)[(CUINamedLookup *)v60 key] themeElement]];
    [(CUINamedLayerStack *)v8 setThemePart:209];
    [(CUINamedLayerStack *)v8 setThemeIdentifier:[(CUIRenditionKey *)[(CUINamedLookup *)v60 key] themeIdentifier]];
    v47 = (*(a6 + 2))(a6, v8);
    if (v47)
    {
      v54 = v47;
      v55 = [(CUINamedLookup *)v60 storageRef];
      v57 = _LookupStructuredThemeProvider(v55, v56);
      v58 = [v57 copyLookupKeySignatureForKey:{objc_msgSend(v54, "keyList")}];
      v60->_radiosityImageRendition = [v57 renditionWithKey:objc_msgSend(v54 usingKeySignature:{"keyList"), v58}];
    }

    else
    {
      _CUILog(4, "CoreUI: Unable to resolve radiosity image for layer stack %@", v48, v49, v50, v51, v52, v53, v7);
    }
  }

  else
  {
    _CUILog(4, "CoreUI: Attempting to create named layer stack '%@' from inappropriate rendition type: %@", v10, v11, v12, v13, v14, v15, v7);
    v27 = 0;
  }

  return v27;
}

- (BOOL)isEqual:(id)a3
{
  v8.receiver = self;
  v8.super_class = CUINamedLayerStack;
  if (![(CUINamedLookup *)&v8 isEqual:?])
  {
    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = -[NSArray isEqual:](-[CUINamedLayerStack layers](self, "layers"), "isEqual:", [a3 layers]);
  if (v5)
  {
    v6 = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] type];
    if (v6 == [objc_msgSend(a3 "_rendition")])
    {
      LOBYTE(v5) = 1;
      return v5;
    }

LABEL_6:
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v14.receiver = self;
  v14.super_class = CUINamedLayerStack;
  v3 = [(CUINamedLookup *)&v14 hash];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(CUINamedLayerStack *)self layers];
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v3 *= 2654435769 * [*(*(&v10 + 1) + 8 * v8) hash];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

+ (vImage_Buffer)_doRadiosityBlurOnPixelBuffer:(SEL)a3 bytesPerRow:(void *)a4 bitsPerPixel:(unint64_t)a5 width:(unint64_t)a6 height:(unint64_t)a7 scaleFactor:(unint64_t)a8 usesGaussianBlur:(unint64_t)a9 adjustedSize:(BOOL *)a10
{
  v18 = getenv("CoreUI_RADIOSITY_BLUR_METHOD");
  if (v18)
  {
    v19 = strncasecmp(v18, "downscale", 9uLL) != 0;
  }

  else
  {
    v19 = 1;
  }

  if (a10)
  {
    *a10 = v19;
  }

  if (v19)
  {
    __src = a4;
    if (a11)
    {
      a11->width = a7;
      a11->height = a8;
    }

    v67 = a7;
    v20 = 40 * a9;
    v21 = vcvtd_n_f64_u64(40 * a9, 1uLL);
    v22 = malloc_type_malloc((320 * a9) | 8, 0x100004000313F17uLL);
    v23 = 0;
    v24 = 1.0 / (v21 * 2.50662827);
    v68 = vdupq_n_s64(40 * a9);
    v25 = v21 * (v21 + v21);
    v26 = xmmword_18E022180;
    v70 = v22;
    do
    {
      v73 = vmovn_s64(vcgeq_u64(v68, v26));
      v74 = v26;
      kernel = exp(-(v23 * v23) / v25);
      v27 = exp(-((v23 + 1) * (v23 + 1)) / v25);
      v28.f64[0] = kernel;
      v28.f64[1] = v27;
      if (v73.i8[0])
      {
        v70[v23] = v24 * kernel;
      }

      if (v73.i8[4])
      {
        v70[v23 + 1] = vmuld_lane_f64(v24, v28, 1);
      }

      v23 += 2;
      v26 = vaddq_s64(v74, vdupq_n_s64(2uLL));
    }

    while (((40 * a9) | 2) != v23);
    v29 = *v70;
    if (v20)
    {
      v30 = v70 + 1;
      v31 = 40 * a9;
      do
      {
        v32 = *v30++;
        v29 = v29 + v32 * 2.0;
        --v31;
      }

      while (v31);
    }

    v75 = a8;
    v33 = a6 >> 3;
    v34 = 80 * a9;
    v35 = 16384.0 / v29;
    v36 = malloc_type_malloc((160 * a9) | 2, 0x1000040BDFB0063uLL);
    v36[40 * a9] = (v35 * *v70);
    if (v20)
    {
      v37 = v70 + 1;
      v38 = &v36[40 * a9 + 1];
      v39 = 40 * a9;
      do
      {
        v40 = *v37++;
        v41 = (v35 * v40);
        *v38++ = v41;
        v36[--v39] = v41;
      }

      while (v39);
    }

    kernela = v36;
    v69 = 40 * a9;
    v42 = v34 + a7;
    v43 = (v34 + a7) * v33;
    v44 = malloc_type_malloc(v43, 0x100004077774924uLL);
    v45 = v33 * a7;
    v46 = malloc_type_malloc(v33 * a7 * a8, 0x100004077774924uLL);
    src.data = v44;
    src.height = 1;
    src.width = v42;
    src.rowBytes = v43;
    dest.data = v46;
    dest.height = 1;
    v47 = v69 * v33;
    dest.width = v67;
    dest.rowBytes = v33 * v67;
    bzero(v44, v69 * v33);
    bzero(&v44[(v69 + v67) * v33], v69 * v33);
    if (a8)
    {
      v48 = __src;
      v49 = (2 * v69) | 1;
      do
      {
        memcpy(&v44[v47], v48, v45);
        vImageConvolve_ARGB8888(&src, &dest, 0, v69, 0, kernela, 1u, v49, 0x4000, 0, 0x14u);
        dest.data = dest.data + v45;
        v48 += a5;
        --a8;
      }

      while (a8);
      a8 = v75;
      v50 = __src;
    }

    else
    {
      v49 = (2 * v69) | 1;
      v50 = __src;
    }

    src.data = v46;
    src.height = a8;
    src.width = v67;
    src.rowBytes = v45;
    dest.data = v50;
    dest.height = a8;
    dest.width = v67;
    dest.rowBytes = a5;
    vImageConvolve_ARGB8888(&src, &dest, 0, 0, 0, kernela, v49, 1u, 0x4000, 0, 0x14u);
    free(v46);
    free(v44);
    free(kernela);
    free(v70);
    *&retstr->data = 0u;
    *&retstr->width = 0u;
  }

  else
  {
    retstr->data = 0;
    src.width = a7;
    src.rowBytes = a5;
    v51 = 3;
    __asm { FMOV            V0.2D, #0.5 }

    v76 = _Q0;
    src.data = a4;
    src.height = a8;
    do
    {
      v57 = vcvtq_u64_f64(vcvtq_f64_f32(vrnda_f32(vcvt_f32_f64(vmulq_f64(vcvtq_f64_u64(*&src.height), v76)))));
      *&retstr->height = v57;
      retstr->rowBytes = 4 * v57.i64[1];
      retstr->data = malloc_type_malloc(4 * v57.i64[1] * v57.i64[0], 0xE771AA93uLL);
      result = vImageScale_ARGB8888(&src, retstr, 0, 0);
      if (result)
      {
        _CUILog(4, "CoreUI -- radiosity downscale vImage error: %ld", v59, v60, v61, v62, v63, v64, result);
      }

      *&src.height = *&retstr->height;
      src.rowBytes = retstr->rowBytes;
      if (v51 != 3)
      {
        free(src.data);
      }

      src.data = retstr->data;
      --v51;
    }

    while (v51);
    if (a11)
    {
      v65 = vcvtq_f64_u64(*&retstr->height);
      *a11 = vextq_s8(v65, v65, 8uLL);
    }
  }

  return result;
}

- (CGSize)size
{
  v2 = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] metrics];

  [v2 imageSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (id)layerImageAtIndex:(unint64_t)a3
{
  v4 = [(CUINamedLayerStack *)self layers];

  return [(NSArray *)v4 objectAtIndexedSubscript:a3];
}

+ (CGImage)createRadiosityImageWithImage:(CGImage *)a3 displayScale:(int64_t)a4
{
  v7 = a4 * 40.0;
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  v10 = Width + v7 * 2.0;
  v11 = Height + v7 * 2.0;
  v12 = [[CSIBitmapWrapper alloc] initWithPixelWidth:v10 pixelHeight:v11];
  ColorSpace = CGImageGetColorSpace(a3);
  if (CGColorSpaceIsWideGamutRGB(ColorSpace))
  {
    v14 = 3;
  }

  else
  {
    v14 = 1;
  }

  [(CSIBitmapWrapper *)v12 setColorSpaceID:v14];
  [(CSIBitmapWrapper *)v12 setPixelFormat:1095911234];
  [(CSIBitmapWrapper *)v12 setSourceAlphaInfo:2];
  v15 = [(CSIBitmapWrapper *)v12 bitmapContext];
  v32.origin.x = v7;
  v32.origin.y = v7;
  v32.size.width = Width;
  v32.size.height = Height;
  CGContextDrawImage(v15, v32, a3);
  Data = CGBitmapContextGetData(v15);
  BytesPerRow = CGBitmapContextGetBytesPerRow(v15);
  BitsPerPixel = CGBitmapContextGetBitsPerPixel(v15);
  v31 = 1;
  v30 = CGSizeZero;
  memset(v29, 0, sizeof(v29));
  if (a1 && (v19 = BitsPerPixel, [a1 _doRadiosityBlurOnPixelBuffer:Data bytesPerRow:BytesPerRow bitsPerPixel:BitsPerPixel width:v10 height:v11 scaleFactor:a4 usesGaussianBlur:&v31 adjustedSize:&v30], (v31 & 1) == 0))
  {
    v28 = 0;
    v23[0] = 8;
    v23[1] = v19;
    v24 = CGImageGetColorSpace(a3);
    v25 = 8194;
    v27 = 0;
    v26 = 0;
    Image = MEMORY[0x193AC7550](v29, v23, 0, 0, 512, 0);
  }

  else
  {
    Image = CGBitmapContextCreateImage(v15);
  }

  v21 = Image;

  return v21;
}

+ (void)radiosityImageWithImage:(CGImage *)a3 displayScale:(int64_t)a4 completionHandler:(id)a5
{
  if (__onceToken_0 == -1)
  {
    if (!a3)
    {
      return;
    }
  }

  else
  {
    +[CUINamedLayerStack radiosityImageWithImage:displayScale:completionHandler:];
    if (!a3)
    {
      return;
    }
  }

  CGImageRetain(a3);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __77__CUINamedLayerStack_radiosityImageWithImage_displayScale_completionHandler___block_invoke_2;
  v9[3] = &unk_1E72515D8;
  v9[6] = a3;
  v9[7] = a4;
  v9[4] = a1;
  v9[5] = a5;
  dispatch_async(__dispatchQueue, v9);
}

dispatch_queue_t __77__CUINamedLayerStack_radiosityImageWithImage_displayScale_completionHandler___block_invoke()
{
  result = dispatch_queue_create("com.apple.CoreUI.NamedLayerStackQueue", 0);
  __dispatchQueue = result;
  return result;
}

void __77__CUINamedLayerStack_radiosityImageWithImage_displayScale_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) createRadiosityImageWithImage:*(a1 + 48) displayScale:*(a1 + 56)];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __77__CUINamedLayerStack_radiosityImageWithImage_displayScale_completionHandler___block_invoke_3;
  block[3] = &unk_1E72515B0;
  v3 = *(a1 + 48);
  block[4] = *(a1 + 40);
  block[5] = v2;
  block[6] = v3;
  dispatch_async(&_dispatch_main_q, block);
}

void __77__CUINamedLayerStack_radiosityImageWithImage_displayScale_completionHandler___block_invoke_3(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  CGImageRelease(*(a1 + 40));
  v2 = *(a1 + 48);

  CGImageRelease(v2);
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUINamedLayerStack;
  [(CUINamedLookup *)&v3 dealloc];
}

@end