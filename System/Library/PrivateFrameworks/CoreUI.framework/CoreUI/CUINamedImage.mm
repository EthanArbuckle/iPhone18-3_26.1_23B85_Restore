@interface CUINamedImage
- ($01BB1521EC52D44A8E7628F5261DCEC8)alignmentEdgeInsets;
- ($01BB1521EC52D44A8E7628F5261DCEC8)edgeInsets;
- (BOOL)_cacheRenditionProperties;
- (CGImage)createImageFromPDFRenditionWithScale:(double)scale;
- (CGImage)croppedImage;
- (CGImage)image;
- (CGRect)alphaCroppedRect;
- (CGSize)originalUncroppedSize;
- (CGSize)size;
- (CUINamedImage)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme;
- (double)opacity;
- (double)positionOfSliceBoundary:(unsigned int)boundary;
- (id)baseKey;
- (id)description;
- (int)blendMode;
- (int64_t)imageType;
@end

@implementation CUINamedImage

- (CGImage)image
{
  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition uncroppedImage];
}

- (BOOL)_cacheRenditionProperties
{
  v28.receiver = self;
  v28.super_class = CUINamedImage;
  _cacheRenditionProperties = [(CUINamedLookup *)&v28 _cacheRenditionProperties];
  if (_cacheRenditionProperties)
  {
    _rendition = [(CUINamedLookup *)self _rendition];
    if (_rendition)
    {
      v5 = _rendition;
      _distilledInVersion = [(CUINamedLookup *)self _distilledInVersion];
      [(CUIThemeRendition *)v5 scale];
      self->_scale = v7;
      self->_imageProperties = (*&self->_imageProperties & 0xFFFFFFFE | [(CUIThemeRendition *)v5 isVectorBased]);
      self->_imageProperties = (*&self->_imageProperties & 0xFFFFFFFD | (2 * ([(CUIThemeRendition *)v5 type]!= 0)));
      if ([-[CUIThemeRendition metrics](v5 "metrics")])
      {
        v8 = 4;
      }

      else
      {
        v8 = 0;
      }

      self->_imageProperties = (*&self->_imageProperties & 0xFFFFFFFB | v8);
      self->_imageProperties = (*&self->_imageProperties & 0xFFFFFFE7 | (8 * ([(CUINamedImage *)self resizingModeWithSubtype:[(CUIThemeRendition *)v5 subtype]]& 3)));
      self->_imageProperties = (*&self->_imageProperties & 0xFFFFF0FF | (([(CUIThemeRendition *)v5 exifOrientation]& 0xF) << 8));
      self->_imageProperties = (*&self->_imageProperties & 0xFFFFFF1F | (32 * ([(CUIThemeRendition *)v5 templateRenderingMode]& 7)));
      [(CUIThemeRendition *)v5 originalUncroppedSize];
      if (v10 == CGSizeZero.height && v9 == CGSizeZero.width)
      {
        v12 = 0;
      }

      else
      {
        v12 = 4096;
      }

      self->_imageProperties = (v12 | *&self->_imageProperties & 0xFFFFEFFF);
      if ([(CUIThemeRendition *)v5 isFlippable])
      {
        v13 = 0x2000;
      }

      else
      {
        v13 = 0;
      }

      v14 = *&self->_imageProperties & 0xFFFFDFFF | v13;
      self->_imageProperties = v14;
      if (_distilledInVersion - 461 > 0x17)
      {
        if ([(CUIThemeRendition *)v5 preservedVectorRepresentation])
        {
          v26 = 0x8000;
        }

        else
        {
          v26 = 0;
        }

        v15 = (*&self->_imageProperties & 0xFFFF7FFF | v26);
      }

      else
      {
        v15 = (v14 | 0x8000);
      }

      self->_imageProperties = v15;
      LOBYTE(_cacheRenditionProperties) = 1;
    }

    else
    {
      storageRef = [(CUINamedLookup *)self storageRef];
      v18 = _LookupStructuredThemeProvider(storageRef, v17);
      name = [(CUINamedLookup *)self name];
      [(CUINamedLookup *)self storageRef];
      [objc_msgSend(v18 "themeStore")];
      _CUILog(4, "CoreUI: could not find rendition for '%@' in %d:'%@'", v20, v21, v22, v23, v24, v25, name);
      LOBYTE(_cacheRenditionProperties) = 0;
    }
  }

  return _cacheRenditionProperties;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)alignmentEdgeInsets
{
  if ([(CUINamedImage *)self hasAlignmentInformation])
  {
    metrics = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] metrics];
    if (metrics)
    {
      v4 = metrics;
      [(CUINamedImage *)self scale];
      v6 = v5;
      [v4 edgeBottomLeftMargin];
      v8 = v7;
      [v4 edgeBottomLeftMargin];
      v10 = v9;
      [v4 edgeTopRightMargin];
      v12 = v11;
      [v4 edgeTopRightMargin];
      v14 = v13;
      if (v6 <= 1.0)
      {
        v15 = 1.0;
      }

      else
      {
        v15 = 1.0 / v6;
      }

      v16 = v15 * v12;
      v17 = v15 * v10;
      v18 = v8 * v15;
      v19 = v15 * v14;
    }

    else
    {
      v19 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
      v16 = 0.0;
    }
  }

  else
  {
    v16 = 0.0;
    v18 = 0.0;
    v17 = 0.0;
    v19 = 0.0;
  }

  result.var3 = v19;
  result.var2 = v17;
  result.var1 = v18;
  result.var0 = v16;
  return result;
}

- (CGSize)size
{
  [(CUINamedImage *)self scale];
  v4 = v3;
  [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] unslicedSize];
  if (v4 == 0.0)
  {
    width = CGSizeZero.width;
    height = CGSizeZero.height;
  }

  else
  {
    width = v5 / v4;
    height = v6 / v4;
  }

  result.height = height;
  result.width = width;
  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)edgeInsets
{
  [-[CUIThemeRendition sliceInformation](-[CUINamedLookup _rendition](self "_rendition")];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(CUINamedImage *)self scale];
  if (v11 >= 1.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  v13 = v4 / v12;
  v14 = v6 / v12;
  v15 = v8 / v12;
  v16 = v10 / v12;
  result.var3 = v16;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (id)baseKey
{
  v2 = [(CUIRenditionKey *)[(CUINamedLookup *)self renditionKey] copy];

  return v2;
}

- (CUINamedImage)initWithName:(id)name usingRenditionKey:(id)key fromTheme:(unint64_t)theme
{
  v14.receiver = self;
  v14.super_class = CUINamedImage;
  v6 = [(CUINamedLookup *)&v14 initWithName:name usingRenditionKey:key fromTheme:theme];
  if ([(CUIThemeRendition *)[(CUINamedLookup *)v6 _rendition] type]== 1000)
  {
    _CUILog(4, "CoreUI: attempting to lookup a named image '%@' with a type that is not a data type in the AssetCatalog", v7, v8, v9, v10, v11, v12, name);

    return 0;
  }

  return v6;
}

- (CGImage)croppedImage
{
  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition unslicedImage];
}

- (int64_t)imageType
{
  result = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] type];
  if ((result - 1) >= 5)
  {
    return 0;
  }

  return result;
}

- (double)positionOfSliceBoundary:(unsigned int)boundary
{
  sliceInformation = [(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] sliceInformation];

  [sliceInformation positionOfSliceBoundary:boundary];
  return result;
}

- (double)opacity
{
  _rendition = [(CUINamedLookup *)self _rendition];

  [(CUIThemeRendition *)_rendition opacity];
  return result;
}

- (int)blendMode
{
  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition blendMode];
}

- (id)description
{
  v3 = [(CUINamedLookup *)self key];
  v19.receiver = self;
  v19.super_class = CUINamedImage;
  v18 = [(CUINamedImage *)&v19 description];
  [(CUINamedImage *)self size];
  v5 = v4;
  [(CUINamedImage *)self size];
  v17 = [NSString stringWithFormat:@"width: %f height: %f", v5, v6];
  [(CUINamedImage *)self edgeInsets];
  v14 = [NSString stringWithFormat:@"\nEdge insets top: %f left: %f bottom: %f right: %f", v7, v8, v9, v10];
  name = [(CUINamedLookup *)self name];
  [(CUINamedImage *)self scale];
  v15 = v11;
  [(CUINamedImage *)self opacity];
  return [NSString stringWithFormat:@"%@\n%@", v18, [NSString stringWithFormat:@"%@\nDevice Idiom: %d\nDevice Subtype: %d\nHorizontal Size Class: %d\nVertical Size Class: %d\nImage Identifier: %d", [NSString stringWithFormat:@"Name: %@\nScale: %d\nOpacity: %f\nSize: %@\nBlend Mode: %d\nResizing Mode: %d\nVector Based: %d\nTemplateRenderingMode: %ld\nEdgeInset: %@\nexifOrientation: %d, \nCropped: %d\nDisplay Gamut: %d\nLayout Direction: %d\nisFlippable: %d", name, v15, v12, v17, [(CUINamedImage *)self blendMode], [(CUINamedImage *)self resizingMode], [(CUINamedImage *)self isVectorBased], [(CUINamedImage *)self templateRenderingMode], v14, [(CUINamedImage *)self exifOrientation], [(CUINamedImage *)self isAlphaCropped], [(CUIRenditionKey *)v3 themeDisplayGamut], [(CUIRenditionKey *)v3 themeDirection], [(CUINamedImage *)self isFlippable]], [(CUIRenditionKey *)v3 themeIdiom], [(CUIRenditionKey *)v3 themeSubtype], [(CUIRenditionKey *)v3 themeSizeClassHorizontal], [(CUIRenditionKey *)v3 themeSizeClassVertical], [(CUIRenditionKey *)v3 themeIdentifier]]];
}

- (CGImage)createImageFromPDFRenditionWithScale:(double)scale
{
  if ([(CUIThemeRendition *)[(CUINamedLookup *)self _rendition] type]!= 9)
  {
    return 0;
  }

  _rendition = [(CUINamedLookup *)self _rendition];

  return [(CUIThemeRendition *)_rendition createImageFromPDFRenditionWithScale:scale];
}

- (CGSize)originalUncroppedSize
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)alphaCroppedRect
{
  _rendition = [(CUINamedLookup *)self _rendition];

  [(CUIThemeRendition *)_rendition alphaCroppedRect];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

@end