@interface CUIPlaceholder_CUIInternalLinkRendition
- (BOOL)isOpaque;
- (BOOL)isTiled;
- (double)alphaCroppedRect;
- (double)originalUncroppedSize;
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (id)data;
- (id)metrics;
- (id)properties;
- (int)bitmapEncoding;
- (int)pixelFormat;
- (void)dealloc;
@end

@implementation CUIPlaceholder_CUIInternalLinkRendition

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUIPlaceholder_CUIInternalLinkRendition;
  [(CUIPlaceholderCUIThemeRendition *)&v3 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = CUIPlaceholder_CUIInternalLinkRendition;
  v5 = [(CUIPlaceholderCUIThemeRendition *)&v24 _initWithCSIHeader:a3 version:*&a4];
  var0 = a3->var11.var0;
  if (var0)
  {
    var10 = a3->var10;
    v28 = 0u;
    memset(v29, 0, sizeof(v29));
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    if (var10)
    {
      v8 = 0;
      v9 = &a3->var11.var1[var0 + 1] + var10;
      v23 = a3;
      do
      {
        v10 = 0;
        v11 = &v9[-var10];
        do
        {
          v12 = *v11;
          if (*v11 > 1009)
          {
            if (v12 == 1010)
            {
              v18 = *(v11 + 2);
              v19 = *(v11 + 3);
              v20.i64[0] = v18;
              v20.i64[1] = HIDWORD(v18);
              v21 = vcvtq_f64_u64(v20);
              v20.i64[0] = v19;
              v20.i64[1] = HIDWORD(v19);
              *(v5 + 888) = v21;
              *(v5 + 904) = vcvtq_f64_u64(v20);
              __memcpy_chk();
              *(v5 + 116) = [[CUIPlaceholderCUIRenditionKey alloc] initWithKeyList:&v25];
              [v5 _initializeTypeIdentifiersWithLayout:*(v11 + 16)];
            }

            else if (v12 == 1011)
            {
              v13 = *(v11 + 2);
              v14 = *(v11 + 3);
              v15.i64[0] = v13;
              v15.i64[1] = HIDWORD(v13);
              *(v5 + 936) = vcvtq_f64_u64(v15);
              v15.i64[0] = v14;
              v15.i64[1] = HIDWORD(v14);
              v16 = vcvtq_f64_u64(v15);
              v17 = *(v11 + 4);
              v15.i64[0] = v17;
              v15.i64[1] = HIDWORD(v17);
              *(v5 + 952) = v16;
              *(v5 + 968) = vcvtq_f64_u64(v15);
            }
          }

          else if (v12 == 1001)
          {
            v10 = v11 + 8;
            *(v5 + 54) = *(v11 + 2);
          }

          else if (v12 == 1006)
          {
            [v5 setExifOrientation:*(v11 + 2)];
          }

          v11 += *(v11 + 1) + 8;
        }

        while (v11 < v9);
        if (!v10)
        {
          break;
        }

        if (++v8 >= v23->var11.var0)
        {
          return v5;
        }

        var10 = v23->var10;
        v28 = 0u;
        memset(v29, 0, sizeof(v29));
        v26 = 0u;
        v27 = 0u;
        v25 = 0u;
      }

      while (var10);
    }

    return 0;
  }

  return v5;
}

- (int)bitmapEncoding
{
  v2 = [(CUIPlaceholderCUIThemeRendition *)self _sourceRendition];

  return [v2 bitmapEncoding];
}

- (BOOL)isOpaque
{
  v2 = [(CUIPlaceholderCUIThemeRendition *)self _sourceRendition];

  return [v2 isOpaque];
}

- (int)pixelFormat
{
  v2 = [(CUIPlaceholderCUIThemeRendition *)self _sourceRendition];

  return [v2 pixelFormat];
}

- (id)metrics
{
  v2 = self->_renditionMetrics;

  return v2;
}

- (id)data
{
  v2 = [(CUIPlaceholderCUIThemeRendition *)self _sourceRendition];

  return [v2 data];
}

- (id)properties
{
  v8.receiver = self;
  v8.super_class = CUIPlaceholder_CUIInternalLinkRendition;
  v3 = [(CUIPlaceholderCUIThemeRendition *)&v8 properties];
  v4 = [-[CUIPlaceholderCUIThemeRendition _sourceRendition](self "_sourceRendition")];
  v5 = v4;
  if (v3)
  {
    if ([v4 count])
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v3];
      [v6 addEntriesFromDictionary:v5];
    }

    else
    {
      v6 = [v3 copy];
    }

    return v6;
  }

  return v5;
}

- (BOOL)isTiled
{
  if ([(CUIPlaceholderCUIThemeRendition *)self type]== 3 || ![(CUIPlaceholderCUIThemeRendition *)self type]|| [(CUIPlaceholderCUIThemeRendition *)self type]== 5 || [(CUIPlaceholderCUIThemeRendition *)self type]== 8)
  {
    return [(CUIPlaceholderCUIThemeRendition *)self subtype]== 30 || [(CUIPlaceholderCUIThemeRendition *)self subtype]== 11;
  }

  v4 = [(CUIPlaceholderCUIThemeRendition *)self name];
  _CUILog(1, "WARNING: -isTiled called on rendition named: %@, which is not a one-part or nine-part image, but the method is only meaningful for one-part and nine-part images. Returning NO.", v5, v6, v7, v8, v9, v10, v4);
  return 0;
}

- (double)originalUncroppedSize
{
  if (a1)
  {
    return *(a1 + 936);
  }

  else
  {
    return 0.0;
  }
}

- (double)alphaCroppedRect
{
  if (a1)
  {
    return *(a1 + 952);
  }

  else
  {
    return 0.0;
  }
}

@end