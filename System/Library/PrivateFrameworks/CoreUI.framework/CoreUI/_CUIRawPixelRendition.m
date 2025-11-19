@interface _CUIRawPixelRendition
- (CGSize)unslicedSize;
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (id)imageForSliceIndex:(int64_t)a3;
- (id)maskForSliceIndex:(int64_t)a3;
- (id)metrics;
- (void)dealloc;
@end

@implementation _CUIRawPixelRendition

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
  v4.super_class = _CUIRawPixelRendition;
  [(CUIThemeRendition *)&v4 dealloc];
}

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v96[0] = size;
  v96[1] = origin;
  v97 = size;
  v98 = origin;
  v99[0] = size;
  v99[1] = origin;
  v100 = size;
  v101 = origin;
  v102 = size;
  v103 = origin;
  v104 = size;
  v105 = origin;
  v106 = size;
  v107 = origin;
  v108 = size;
  v109 = origin;
  v110[0] = size;
  v110[1] = origin;
  v110[2] = size;
  v110[3] = origin;
  v110[4] = size;
  v110[5] = origin;
  v110[6] = size;
  v110[7] = origin;
  v110[8] = size;
  v110[9] = origin;
  v110[10] = size;
  v110[11] = origin;
  v110[12] = size;
  v110[13] = origin;
  v110[14] = size;
  v94.receiver = self;
  v94.super_class = _CUIRawPixelRendition;
  v7 = [(CUIThemeRendition *)&v94 _initWithCSIHeader:a3 version:*&a4];
  if (v7)
  {
    var6 = a3->var6;
    if (var6 != 1212500294 && var6 != 1246774599)
    {
      v9 = +[NSAssertionHandler currentHandler];
      v10 = objc_opt_class();
      v81 = NSStringFromClass(v10);
      NSStringFromSelector(a2);
      [(NSAssertionHandler *)v9 handleFailureInMethod:a2 object:v7 file:@"CUIThemeRendition.m" lineNumber:2022 description:@"CoreUI: [%@ %@] pixel format must be kCSIPixelFormatJPEG/kCSIPixelFormatHEIF"];
    }

    v11 = &a3->var11.var1[a3->var11.var0] + a3->var10;
    v12 = v11 + 4;
    if (*(v11 + 2))
    {
      [_CUIRawPixelRendition _initWithCSIHeader:version:];
    }

    *(v7 + 54) = a3->var6;
    v13 = *(v12 + 2);
    v14 = bswap32(v13);
    if (*v12 == 1146569042)
    {
      v15 = v14;
    }

    else
    {
      v15 = v13;
    }

    v16 = -[_CUISubrangeData initWithData:range:]([_CUISubrangeData alloc], "initWithData:range:", [v7 srcData], v12 - objc_msgSend(objc_msgSend(v7, "srcData"), "bytes") + 12, v15);
    *(v7 + 28) = v16;
    if (v16)
    {
      v17 = CGImageSourceCreateWithData(v16, 0);
      if (v17)
      {
        v18 = v17;
        *(v7 + 45) = CGImageSourceCreateImageAtIndex(v17, 0, 0);
        +[CUIRenditionKey renditionKeyWithKeyList:](CUIRenditionKey, "renditionKeyWithKeyList:", [v7 key]);
        CGImageSetProperty();
        CFRelease(v18);
      }
    }

    var0 = a3->var11.var0;
    if (var0)
    {
      v82 = a3;
      var10 = a3->var10;
      if (var10)
      {
        v21 = 0;
        v22 = 0;
        v23 = &a3->var11.var1[var0 + 1];
        v24 = (v23 + var10);
        do
        {
          v25 = *v23;
          if (*v23 == 1006)
          {
            [v7 setExifOrientation:v23[2]];
          }

          else if (v25 == 1003)
          {
            v22 = (v23 + 2);
          }

          else if (v25 == 1001)
          {
            v21 = v23 + 2;
            *(v7 + 55) = v23[2];
          }

          v23 = (v23 + v23[1] + 8);
        }

        while (v23 < v24);
      }

      else
      {
        v22 = 0;
        v21 = 0;
      }

      v92 = 0.0;
      v93 = 0.0;
      Width = CGImageGetWidth(*(v7 + 45));
      Height = CGImageGetHeight(*(v7 + 45));
      v92 = Width;
      v93 = Height;
      v90 = NSZeroSize;
      v91 = v90;
      v88 = v90;
      v89 = v90;
      v87 = 0xBFF0000000000000;
      v85 = v90;
      v86 = v90;
      v83 = v90;
      v84 = v90;
      if (v22)
      {
        _extractMetrics(v22, &v92, &v91.width, &v90.width, &v89.width, &v88, &v87, &v86.width, &v85, &v84.width, &v83);
        Width = v92;
        Height = v93;
      }

      v28 = CGImageGetHeight(*(v7 + 45));
      if (v21)
      {
        v30 = *v21;
        if (v30)
        {
          v31 = v28;
          v32 = v21 + 2;
          v33 = v96;
          v34 = 1;
          v35 = v7;
          do
          {
            v36 = v32[1];
            v37 = v32[2];
            if (v36)
            {
              v38 = v37 == 0;
            }

            else
            {
              v38 = 1;
            }

            if (v38)
            {
              v35[29] = 0;
            }

            else
            {
              LODWORD(v29) = *(v32 - 1);
              v113.origin.x = v29;
              v113.origin.y = (v31 - (*v32 + v37));
              v113.size.width = v36;
              v113.size.height = v37;
              *(v33 - 2) = v113.origin.x;
              *(v33 - 1) = v113.origin.y;
              *v33 = v36;
              v33[1] = v37;
              v35[29] = CGImageCreateWithImageInRect(*(v7 + 45), v113);
              v30 = *v21;
            }

            if (v34 - 1 > 0xE)
            {
              break;
            }

            v32 += 4;
            ++v35;
            v33 += 4;
          }

          while (v34++ < v30);
        }
      }

      v40 = NSZeroSize.height;
      if ([v7 type] == 3)
      {
        v41 = CGImageGetWidth(*(v7 + 29));
        v42 = CGImageGetWidth(*(v7 + 31));
        v43 = CGImageGetHeight(*(v7 + 29));
        v44 = CGImageGetHeight(*(v7 + 35));
        [v7 scale];
        Width = v41 + v42 + v45;
        [v7 scale];
        Height = v46 + v43 + v44;
        v47 = v82;
      }

      else
      {
        v47 = v82;
        if ([v7 type] == 2)
        {
          v48 = CGImageGetHeight(*(v7 + 29));
          v49 = v48 + CGImageGetHeight(*(v7 + 31));
          [v7 scale];
          Height = v50 + v49;
        }

        else if ([v7 type] == 1)
        {
          v51 = CGImageGetWidth(*(v7 + 29));
          v52 = v51 + CGImageGetWidth(*(v7 + 31));
          [v7 scale];
          Width = v53 + v52;
        }
      }

      v111.width = NSZeroSize.width;
      v111.height = v40;
      v112.width = Width;
      v112.height = Height;
      if (!NSEqualSizes(v111, v112))
      {
        v54 = [CUIRenditionMetrics alloc];
        v55 = v87;
        v56 = [v7 type] == 2 || objc_msgSend(v7, "type") == 3;
        v57 = [v7 type] == 1 || objc_msgSend(v7, "type") == 3;
        [v7 scale];
        *(v7 + 46) = [(CUIRenditionMetrics *)v54 initWithImageSize:v56 defaultImageSize:v57 edgeBottomLeft:Width edgeTopRight:Height contentBottomLeft:v92 contentTopRight:v93 baseline:v91.width auxiliary1BottomLeft:v91.height auxiliary1TopRight:v90.width auxiliary2BottomLeft:v90.height auxiliary2TopRight:v58 scalesVertically:v59 scalesHorizontally:v60 scale:v61, v62, *&v89.width, *&v89.height, *&v88.width, *&v88.height, v55, *&v86.width, *&v86.height, *&v85.width, *&v85.height, *&v84.width, *&v84.height, *&v83.width, *&v83.height, v63];
      }

      if ([v7 type] == 3 || objc_msgSend(v7, "type") == 2 || objc_msgSend(v7, "type") == 1)
      {
        v70 = [v7 type];
        v72 = *(v96 + 1);
        v71 = *v96;
        v73 = *v99;
        if (v70 == 3)
        {
          v74 = *v110;
        }

        else
        {
          v74 = *v99;
        }

        v75 = v99 + 1;
        if (v70 == 3)
        {
          v75 = v110 + 1;
        }

        v76 = *v75;
        if ([v7 type] == 3)
        {
          v77 = v106.width;
          if (v100.width > v106.width)
          {
            v77 = v100.width;
          }

          if (v71 == 0.0)
          {
            v71 = v77;
          }

          v78 = v97.height;
          if (v97.height <= *(v99 + 1))
          {
            v78 = *(v99 + 1);
          }

          if (v72 == 0.0)
          {
            v72 = v78;
          }

          if (v73 <= v104.width)
          {
            v79 = v104.width;
          }

          else
          {
            v79 = v73;
          }

          if (v74 == 0.0)
          {
            v74 = v79;
          }

          if (v76 == 0.0)
          {
            if (v106.height <= v108.height)
            {
              v76 = v108.height;
            }

            else
            {
              v76 = v106.height;
            }
          }
        }

        *(v7 + 47) = -[CUIRenditionSliceInformation initWithRenditionType:destinationRect:topLeftInset:bottomRightInset:]([CUIRenditionSliceInformation alloc], "initWithRenditionType:destinationRect:topLeftInset:bottomRightInset:", [v7 type], 0.0, 0.0, Width, Height, v71, v72, v74, v76);
      }

      if (v47->var11.var0 > 1)
      {
        _CUILog(4, "Warning: Ignoring extra images found in CSI", v64, v65, v66, v67, v68, v69, v81);
      }
    }
  }

  return v7;
}

- (CGSize)unslicedSize
{
  Width = CGImageGetWidth(self->_unslicedImage);
  Height = CGImageGetHeight(self->_unslicedImage);
  v5 = Width;
  result.height = Height;
  result.width = v5;
  return result;
}

- (id)imageForSliceIndex:(int64_t)a3
{
  if (a3 < 0 || self->_nimages <= a3)
  {
    _CUILog(4, "Invalid slice index %ld for rendition", a3, v3, v4, v5, v6, v7, a3);
    return 0;
  }

  else
  {
    v9 = self->_image[a3];

    return [CUIImage imageWithCGImage:v9];
  }
}

- (id)maskForSliceIndex:(int64_t)a3
{
  if (a3 < 0 || self->_nimages <= a3)
  {
    _CUILog(4, "Invalid slice index %ld for rendition", a3, v3, v4, v5, v6, v7, a3);
    return 0;
  }

  else
  {
    v8 = self->_image[a3];
    *decode = xmmword_18E021C10;
    Width = CGImageGetWidth(v8);
    Height = CGImageGetHeight(v8);
    BitsPerComponent = CGImageGetBitsPerComponent(v8);
    BitsPerPixel = CGImageGetBitsPerPixel(v8);
    BytesPerRow = CGImageGetBytesPerRow(v8);
    DataProvider = CGImageGetDataProvider(v8);
    ShouldInterpolate = CGImageGetShouldInterpolate(v8);
    v16 = CGImageMaskCreate(Width, Height, BitsPerComponent, BitsPerPixel, BytesPerRow, DataProvider, decode, ShouldInterpolate);
    v17 = [CUIImage imageWithCGImage:v16];
    CGImageRelease(v16);
  }

  return v17;
}

- (id)metrics
{
  v2 = self->_renditionMetrics;

  return v2;
}

- (id)_initWithCSIHeader:version:.cold.1()
{
  OUTLINED_FUNCTION_35();
  +[NSAssertionHandler currentHandler];
  v1 = objc_opt_class();
  v2 = NSStringFromClass(v1);
  v4 = NSStringFromSelector(v0);
  return [OUTLINED_FUNCTION_0_4() handleFailureInMethod:v2 object:v4 file:? lineNumber:? description:?];
}

@end