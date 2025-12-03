@interface _CUIInternalLinkRendition
- (BOOL)isOpaque;
- (BOOL)isTiled;
- (CGImage)unslicedImage;
- (CGRect)_destinationFrame;
- (CGRect)alphaCroppedRect;
- (CGSize)originalUncroppedSize;
- (CGSize)unslicedSize;
- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version;
- (id)_sourceRendition;
- (id)data;
- (id)imageForSliceIndex:(int64_t)index;
- (id)maskForSliceIndex:(int64_t)index;
- (id)metrics;
- (id)properties;
- (int)bitmapEncoding;
- (int)pixelFormat;
- (unsigned)_fillOutImageSlices;
- (void)dealloc;
@end

@implementation _CUIInternalLinkRendition

- (id)metrics
{
  v2 = self->_renditionMetrics;

  return v2;
}

- (CGSize)originalUncroppedSize
{
  width = self->_originalUncroppedSize.width;
  height = self->_originalUncroppedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)alphaCroppedRect
{
  x = self->_alphaCroppedFrame.origin.x;
  y = self->_alphaCroppedFrame.origin.y;
  width = self->_alphaCroppedFrame.size.width;
  height = self->_alphaCroppedFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGImage)unslicedImage
{
  objc_sync_enter(self);
  unslicedImage = self->_unslicedImage;
  if (unslicedImage)
  {
    goto LABEL_9;
  }

  v4 = [-[_CUIInternalLinkRendition _sourceRendition](self "_sourceRendition")];
  v5 = v4;
  if (v4)
  {
    x = self->_frame.origin.x;
    width = self->_frame.size.width;
    height = self->_frame.size.height;
    v18.origin.y = CGImageGetHeight(v4) - (self->_frame.origin.y + height);
    v18.origin.x = x;
    v18.size.width = width;
    v18.size.height = height;
    self->_unslicedImage = CGImageCreateWithImageInRect(v5, v18);
    [CUIRenditionKey renditionKeyWithKeyList:[(CUIThemeRendition *)self key]];
    CGImageSetProperty();
    if ([objc_loadWeak(&self->_sourceProvider) caAllowSubimageOfImage:v5])
    {
      CGImageSetProperty();
    }
  }

  else if (objc_loadWeak(&self->_sourceProvider) && ![(_CUIInternalLinkRendition *)self data])
  {
    v9 = [CUIRenditionKey renditionKeyWithKeyList:[(CUIThemeRendition *)self key]];
    [objc_msgSend(objc_loadWeak(&self->_sourceProvider) "themeStore")];
    _CUILog(4, "CoreUI: Unable to resolve link '%@' to parent image with key '%@' for internalLink image in source at path '%@'", v10, v11, v12, v13, v14, v15, v9);
  }

  unslicedImage = self->_unslicedImage;
  if (unslicedImage)
  {
LABEL_9:
    CFRetain(unslicedImage);
    CFAutorelease(self->_unslicedImage);
    v16 = self->_unslicedImage;
  }

  else
  {
    v16 = 0;
  }

  objc_sync_exit(self);
  return v16;
}

- (id)_sourceRendition
{
  Weak = objc_loadWeak(&self->_sourceProvider);
  keyList = [(CUIRenditionKey *)self->_referenceKey keyList];

  return [Weak renditionWithKey:keyList];
}

- (void)dealloc
{
  CGImageRelease(self->_unslicedImage);
  if (self->_nimages)
  {
    v3 = 0;
    do
    {
      CGImageRelease(self->_image[v3++]);
    }

    while (v3 < self->_nimages);
  }

  v4.receiver = self;
  v4.super_class = _CUIInternalLinkRendition;
  [(CUIThemeRendition *)&v4 dealloc];
}

- (CGSize)unslicedSize
{
  [(_CUIInternalLinkRendition *)self originalUncroppedSize];
  if (v3 == 0.0 || v4 == 0.0)
  {
    [(_CUIInternalLinkRendition *)self _destinationFrame];
    v3 = v5;
    v4 = v6;
  }

  result.height = v4;
  result.width = v3;
  return result;
}

- (CGRect)_destinationFrame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)_initWithCSIHeader:(const _csiheader *)header version:(unsigned int)version
{
  headerCopy = header;
  v78.receiver = self;
  v78.super_class = _CUIInternalLinkRendition;
  v5 = [(CUIThemeRendition *)&v78 _initWithCSIHeader:header version:*&version];
  var0 = headerCopy->var11.var0;
  if (var0)
  {
    v7 = 0;
    v8 = &headerCopy->var11.var1[var0 + 1] + headerCopy->var10;
    height = NSZeroSize.height;
    while (1)
    {
      var10 = headerCopy->var10;
      memset(v79, 0, 92);
      if (!var10)
      {
        break;
      }

      v11 = headerCopy;
      v12 = 0;
      v13 = 0;
      v14 = v8 - var10;
      do
      {
        v15 = *v14;
        if (*v14 <= 1005)
        {
          if (v15 == 1001)
          {
            v12 = (v14 + 8);
            *(v5 + 54) = *(v14 + 8);
          }

          else if (v15 == 1003)
          {
            v13 = v14 + 8;
          }
        }

        else
        {
          switch(v15)
          {
            case 1006:
              [v5 setExifOrientation:*(v14 + 8)];
              break;
            case 1010:
              v21 = *(v14 + 16);
              v22 = *(v14 + 24);
              v23.i64[0] = v21;
              v23.i64[1] = HIDWORD(v21);
              v24 = vcvtq_f64_u64(v23);
              v23.i64[0] = v22;
              v23.i64[1] = HIDWORD(v22);
              *(v5 + 888) = v24;
              *(v5 + 904) = vcvtq_f64_u64(v23);
              __memcpy_chk();
              *(v5 + 116) = [[CUIRenditionKey alloc] initWithKeyList:v79];
              [v5 _initializeTypeIdentifiersWithLayout:*(v14 + 32)];
              break;
            case 1011:
              v16 = *(v14 + 16);
              v17 = *(v14 + 24);
              v18.i64[0] = v16;
              v18.i64[1] = HIDWORD(v16);
              *(v5 + 936) = vcvtq_f64_u64(v18);
              v18.i64[0] = v17;
              v18.i64[1] = HIDWORD(v17);
              v19 = vcvtq_f64_u64(v18);
              v20 = *(v14 + 32);
              v18.i64[0] = v20;
              v18.i64[1] = HIDWORD(v20);
              *(v5 + 952) = v19;
              *(v5 + 968) = vcvtq_f64_u64(v18);
              break;
          }
        }

        v14 += *(v14 + 4) + 8;
      }

      while (v14 < v8);
      if (!v12)
      {
        break;
      }

      unslicedImage = [v5 unslicedImage];
      v76 = 0.0;
      v77 = 0.0;
      Width = CGImageGetWidth(unslicedImage);
      v27 = CGImageGetHeight(unslicedImage);
      v76 = Width;
      v77 = v27;
      v74 = NSZeroSize;
      v75 = v74;
      v72 = v74;
      v73 = v74;
      v71 = 0xBFF0000000000000;
      v69 = v74;
      v70 = v74;
      v67 = v74;
      v68 = v74;
      if (v13)
      {
        _extractMetrics(v13, &v76, &v75.width, &v74.width, &v73.width, &v72, &v71, &v70.width, &v69, &v68.width, &v67);
        Width = v76;
        v27 = v77;
      }

      v28 = *v12;
      *(v5 + 54) = *v12;
      if (v28 >= 0x11)
      {
        [_CUIInternalLinkRendition _initWithCSIHeader:version:];
      }

      v29 = *v12;
      headerCopy = v11;
      if (v29)
      {
        v30 = 0;
        v31 = v12 + 4;
        v32 = v5;
        do
        {
          v33 = *(v31 - 1);
          v34 = *v31;
          v35 = (v32 + 224);
          if (v33)
          {
            v36 = v34 == 0;
          }

          else
          {
            v36 = 1;
          }

          if (v36)
          {
            size = CGRectZero.size;
            *v35 = CGRectZero.origin;
            *(v32 + 15) = size;
            v29 = *v12;
          }

          else
          {
            v38 = *(v31 - 3);
            v39.i64[0] = v38;
            v39.i64[1] = HIDWORD(v38);
            *v35 = vcvtq_f64_u64(v39);
            *(v32 + 30) = v33;
            *(v32 + 31) = v34;
          }

          ++v30;
          v31 += 4;
          v32 += 32;
        }

        while (v30 < v29);
      }

      if ([v5 type] == 3)
      {
        v40 = *(v5 + 31);
        v41 = *(v5 + 55);
        v42 = *(v5 + 30) + *(v5 + 38);
        [v5 scale];
        Width = v42 + v43;
        [v5 scale];
        v27 = v40 + v41 + v44;
      }

      else if ([v5 type] == 2)
      {
        v45 = *(v5 + 31) + *(v5 + 39);
        [v5 scale];
        v27 = v46 + v45;
      }

      else if ([v5 type] == 1)
      {
        v47 = *(v5 + 30) + *(v5 + 38);
        [v5 scale];
        Width = v48 + v47;
      }

      v80.width = NSZeroSize.width;
      v80.height = height;
      v81.width = Width;
      v81.height = v27;
      if (!NSEqualSizes(v80, v81))
      {
        v49 = [CUIRenditionMetrics alloc];
        v50 = v71;
        v51 = [v5 type] == 2 || objc_msgSend(v5, "type") == 3;
        v52 = [v5 type] == 1 || objc_msgSend(v5, "type") == 3;
        [v5 scale];
        *(v5 + 109) = [(CUIRenditionMetrics *)v49 initWithImageSize:v51 defaultImageSize:v52 edgeBottomLeft:Width edgeTopRight:v27 contentBottomLeft:v76 contentTopRight:v77 baseline:v75.width auxiliary1BottomLeft:v75.height auxiliary1TopRight:v74.width auxiliary2BottomLeft:v74.height auxiliary2TopRight:v53 scalesVertically:v54 scalesHorizontally:v55 scale:v56, v57, *&v73.width, *&v73.height, *&v72.width, *&v72.height, v50, *&v70.width, *&v70.height, *&v69.width, *&v69.height, *&v68.width, *&v68.height, *&v67.width, *&v67.height, v58];
        headerCopy = v11;
      }

      if ([v5 type] == 3 || objc_msgSend(v5, "type") == 2 || objc_msgSend(v5, "type") == 1)
      {
        type = [v5 type];
        v60 = 64;
        if (type == 3)
        {
          v60 = 256;
        }

        v61 = *(v5 + 30);
        v62 = *(v5 + 31);
        v63 = &v5[v60 + 224];
        v64 = v63[2];
        v65 = v63[3];
        if ([v5 type] == 3)
        {
          if (v61 == 0.0)
          {
            if (*(v5 + 42) <= *(v5 + 54))
            {
              v61 = *(v5 + 54);
            }

            else
            {
              v61 = *(v5 + 42);
            }
          }

          if (v62 == 0.0)
          {
            if (*(v5 + 35) <= *(v5 + 39))
            {
              v62 = *(v5 + 39);
            }

            else
            {
              v62 = *(v5 + 35);
            }
          }

          if (v64 == 0.0)
          {
            if (*(v5 + 38) <= *(v5 + 50))
            {
              v64 = *(v5 + 50);
            }

            else
            {
              v64 = *(v5 + 38);
            }
          }

          if (v65 == 0.0)
          {
            if (*(v5 + 55) <= *(v5 + 59))
            {
              v65 = *(v5 + 59);
            }

            else
            {
              v65 = *(v5 + 55);
            }
          }
        }

        *(v5 + 110) = -[CUIRenditionSliceInformation initWithRenditionType:destinationRect:topLeftInset:bottomRightInset:]([CUIRenditionSliceInformation alloc], "initWithRenditionType:destinationRect:topLeftInset:bottomRightInset:", [v5 type], 0.0, 0.0, Width, v27, v61, v62, v64, v65);
      }

      if (++v7 >= headerCopy->var11.var0)
      {
        return v5;
      }
    }

    return 0;
  }

  return v5;
}

- (int)bitmapEncoding
{
  _sourceRendition = [(_CUIInternalLinkRendition *)self _sourceRendition];

  return [_sourceRendition bitmapEncoding];
}

- (BOOL)isOpaque
{
  _sourceRendition = [(_CUIInternalLinkRendition *)self _sourceRendition];

  return [_sourceRendition isOpaque];
}

- (int)pixelFormat
{
  _sourceRendition = [(_CUIInternalLinkRendition *)self _sourceRendition];

  return [_sourceRendition pixelFormat];
}

- (id)data
{
  _sourceRendition = [(_CUIInternalLinkRendition *)self _sourceRendition];

  return [_sourceRendition data];
}

- (id)properties
{
  v8.receiver = self;
  v8.super_class = _CUIInternalLinkRendition;
  properties = [(CUIThemeRendition *)&v8 properties];
  v4 = [-[_CUIInternalLinkRendition _sourceRendition](self "_sourceRendition")];
  v5 = v4;
  if (properties)
  {
    if ([v4 count])
    {
      v6 = [[NSMutableDictionary alloc] initWithDictionary:properties];
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

- (unsigned)_fillOutImageSlices
{
  if (result)
  {
    v1 = result;
    objc_sync_enter(result);
    if (!*(v1 + 92))
    {
      if (v1[54])
      {
        unslicedImage = [v1 unslicedImage];
        Height = CGImageGetHeight(unslicedImage);
        if (v1[54])
        {
          v4 = 0;
          v5 = Height;
          v6 = v1;
          v7 = v1;
          do
          {
            v9.origin.x = v7[28];
            v9.size.width = v7[30];
            v9.size.height = v7[31];
            v9.origin.y = v5 - (v7[29] + v9.size.height);
            *(v6 + 92) = CGImageCreateWithImageInRect(unslicedImage, v9);
            ++v4;
            v7 += 4;
            v6 += 2;
          }

          while (v4 < v1[54]);
        }
      }
    }

    return objc_sync_exit(v1);
  }

  return result;
}

- (id)imageForSliceIndex:(int64_t)index
{
  [(_CUIInternalLinkRendition *)self _fillOutImageSlices];
  v5 = self->_image[index];

  return [CUIImage imageWithCGImage:v5];
}

- (id)maskForSliceIndex:(int64_t)index
{
  *decode = xmmword_18E021C10;
  if (index < 0 || self->_nimages <= index)
  {
    _CUILog(4, "Invalid slice index %ld for rendition", index, v3, v4, v5, v6, v7, index);
    return 0;
  }

  else
  {
    [(_CUIInternalLinkRendition *)self _fillOutImageSlices];
    v10 = self->_image[index];
    Width = CGImageGetWidth(v10);
    Height = CGImageGetHeight(v10);
    BitsPerComponent = CGImageGetBitsPerComponent(v10);
    BitsPerPixel = CGImageGetBitsPerPixel(v10);
    BytesPerRow = CGImageGetBytesPerRow(v10);
    DataProvider = CGImageGetDataProvider(v10);
    ShouldInterpolate = CGImageGetShouldInterpolate(v10);
    v18 = CGImageMaskCreate(Width, Height, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, decode, ShouldInterpolate);
    v19 = [CUIImage imageWithCGImage:v18];
    CGImageRelease(v18);
  }

  return v19;
}

- (BOOL)isTiled
{
  if ([(CUIThemeRendition *)self type]== 3 || ![(CUIThemeRendition *)self type]|| [(CUIThemeRendition *)self type]== 5 || [(CUIThemeRendition *)self type]== 8)
  {
    return [(CUIThemeRendition *)self subtype]== 30 || [(CUIThemeRendition *)self subtype]== 11;
  }

  name = [(CUIThemeRendition *)self name];
  _CUILog(1, "WARNING: -isTiled called on rendition named: %@, which is not a one-part or nine-part image, but the method is only meaningful for one-part and nine-part images. Returning NO.", v5, v6, v7, v8, v9, v10, name);
  return 0;
}

@end