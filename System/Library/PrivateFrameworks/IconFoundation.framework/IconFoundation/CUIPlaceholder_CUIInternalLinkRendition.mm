@interface CUIPlaceholder_CUIInternalLinkRendition
- (BOOL)isOpaque;
- (BOOL)isTiled;
- (double)alphaCroppedRect;
- (double)originalUncroppedSize;
- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version;
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

- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version
{
  v30 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = CUIPlaceholder_CUIInternalLinkRendition;
  v5 = [(CUIPlaceholderCUIThemeRendition *)&v24 _initWithCSIHeader:header version:*&version];
  var0 = header->var11.var0;
  if (var0)
  {
    var10 = header->var10;
    v28 = 0u;
    memset(v29, 0, sizeof(v29));
    v26 = 0u;
    v27 = 0u;
    v25 = 0u;
    if (var10)
    {
      v8 = 0;
      v9 = &header->var11.var1[var0 + 1] + var10;
      headerCopy = header;
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

        if (++v8 >= headerCopy->var11.var0)
        {
          return v5;
        }

        var10 = headerCopy->var10;
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
  _sourceRendition = [(CUIPlaceholderCUIThemeRendition *)self _sourceRendition];

  return [_sourceRendition bitmapEncoding];
}

- (BOOL)isOpaque
{
  _sourceRendition = [(CUIPlaceholderCUIThemeRendition *)self _sourceRendition];

  return [_sourceRendition isOpaque];
}

- (int)pixelFormat
{
  _sourceRendition = [(CUIPlaceholderCUIThemeRendition *)self _sourceRendition];

  return [_sourceRendition pixelFormat];
}

- (id)metrics
{
  v2 = self->_renditionMetrics;

  return v2;
}

- (id)data
{
  _sourceRendition = [(CUIPlaceholderCUIThemeRendition *)self _sourceRendition];

  return [_sourceRendition data];
}

- (id)properties
{
  v8.receiver = self;
  v8.super_class = CUIPlaceholder_CUIInternalLinkRendition;
  properties = [(CUIPlaceholderCUIThemeRendition *)&v8 properties];
  v4 = [-[CUIPlaceholderCUIThemeRendition _sourceRendition](self "_sourceRendition")];
  v5 = v4;
  if (properties)
  {
    if ([v4 count])
    {
      v6 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:properties];
      [v6 addEntriesFromDictionary:v5];
    }

    else
    {
      v6 = [properties copy];
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

  name = [(CUIPlaceholderCUIThemeRendition *)self name];
  _CUILog(1, "WARNING: -isTiled called on rendition named: %@, which is not a one-part or nine-part image, but the method is only meaningful for one-part and nine-part images. Returning NO.", v5, v6, v7, v8, v9, v10, name);
  return 0;
}

- (double)originalUncroppedSize
{
  if (self)
  {
    return *(self + 936);
  }

  else
  {
    return 0.0;
  }
}

- (double)alphaCroppedRect
{
  if (self)
  {
    return *(self + 952);
  }

  else
  {
    return 0.0;
  }
}

@end