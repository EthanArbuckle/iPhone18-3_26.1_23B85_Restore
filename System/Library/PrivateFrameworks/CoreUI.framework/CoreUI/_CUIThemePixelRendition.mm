@interface _CUIThemePixelRendition
- (BOOL)isTiled;
- (CGImage)unslicedImage;
- (CGSize)unslicedSize;
- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4;
- (id)copySharedBlockDataWithPixelFormat:(int)a3;
- (id)imageForSliceIndex:(int64_t)a3;
- (id)maskForSliceIndex:(int64_t)a3;
- (id)metrics;
- (uint64_t)newImageFromCSIDataSlice:(unint64_t)a3 ofBitmap:(uint64_t)a4 usingColorspace:(CGColorSpace *)a5;
- (void)dealloc;
- (void)setSharedBlockData:(id)a3;
@end

@implementation _CUIThemePixelRendition

- (id)metrics
{
  v2 = self->_renditionMetrics;

  return v2;
}

- (CGImage)unslicedImage
{
  result = self->_unslicedImage;
  if (result)
  {
    CFRetain(result);
    CFAutorelease(self->_unslicedImage);
    return self->_unslicedImage;
  }

  return result;
}

- (void)dealloc
{
  CGImageRelease(self->_unslicedImage);
  self->_unslicedImage = 0;
  if (self->_nimages)
  {
    v3 = 0;
    image = self->_image;
    do
    {
      CGImageRelease(image[v3]);
      image[v3++] = 0;
    }

    while (v3 < self->_nimages);
  }

  self->_cachedBlockDataBGRX = 0;
  self->_cachedBlockDataRGBX = 0;

  self->_cachedBlockDataGray = 0;
  self->_renditionMetrics = 0;

  self->_sliceInformation = 0;
  v5.receiver = self;
  v5.super_class = _CUIThemePixelRendition;
  [(CUIThemeRendition *)&v5 dealloc];
}

- (CGSize)unslicedSize
{
  [(CUIThemeRendition *)self originalUncroppedSize];
  if (width == 0.0 || height == 0.0)
  {
    width = self->_unslicedSize.width;
    height = self->_unslicedSize.height;
  }

  result.height = height;
  result.width = width;
  return result;
}

- (id)_initWithCSIHeader:(const _csiheader *)a3 version:(unsigned int)a4
{
  v4 = a3;
  v151.receiver = self;
  v151.super_class = _CUIThemePixelRendition;
  v5 = [(CUIThemeRendition *)&v151 _initWithCSIHeader:a3 version:*&a4];
  var0 = v4->var11.var0;
  if (!var0)
  {
    return v5;
  }

  v7 = 0;
  aSize_8 = v4->var11.var1;
  v8 = &v4->var11.var1[var0 + 1] + v4->var10;
  v9 = 1;
  height = NSZeroSize.height;
  v139 = v8;
  p_var0 = &v4->var0;
  do
  {
    v11 = (v8 + aSize_8[v7]);
    if (*v11 != 1128614989 && *v11 != 1296844099)
    {
      [_CUIThemePixelRendition _initWithCSIHeader:v5 version:?];
      goto LABEL_128;
    }

    v13 = v11[1];
    v14 = [v5 renditionFlags];
    *v14 = *v14 & 0xFFFFFFFD | (2 * ((v13 >> 1) & 1));
    if ((v9 & 1) == 0)
    {
      _CUILog(4, "Warning: Ignoring extra images found in CSI", v15, v16, v17, v18, v19, v20, v134);
      return v5;
    }

    v138 = v11;
    var10 = v4->var10;
    if (!var10)
    {
      goto LABEL_128;
    }

    v22 = 0;
    v23 = 0;
    v24 = (v8 - var10);
    do
    {
      v25 = *v24;
      if (*v24 <= 1005)
      {
        if (v25 == 1001)
        {
          v22 = v24 + 2;
          v31 = v24[2];
          *(v5 + 54) = v31;
          if (v31 >= 0x11)
          {
            [_CUIThemePixelRendition _initWithCSIHeader:version:];
          }
        }

        else if (v25 == 1003)
        {
          v23 = (v24 + 2);
        }
      }

      else
      {
        switch(v25)
        {
          case 1006:
            [v5 setExifOrientation:v24[2]];
            break;
          case 1007:
            *(v5 + 50) = v24[2];
            break;
          case 1012:
            *(v5 + 51) = [[NSMutableArray alloc] initWithCapacity:v24[2]];
            if (v24[2])
            {
              v26 = 0;
              v27 = (v24 + 4);
              do
              {
                v28 = objc_alloc_init(CUIRenditionLayerReference);
                *&v29 = v27[3];
                *&v30 = v27[4];
                [(CUIRenditionLayerReference *)v28 setFrame:*(v27 + 1), *(v27 + 2), v29, v30];
                [(CUIRenditionLayerReference *)v28 setOpacity:v27[6]];
                [(CUIRenditionLayerReference *)v28 setBlendMode:*(v27 + 5)];
                [(CUIRenditionLayerReference *)v28 setFixedFrame:*v27 & 1];
                v155 = 0;
                memset(v156, 0, 28);
                v153 = 0;
                v154 = 0;
                v152 = 0;
                __memcpy_chk();
                [(CUIRenditionLayerReference *)v28 setReferenceKey:[[CUIRenditionKey alloc] initWithKeyList:&v152]];
                [*(v5 + 51) addObject:v28];

                v27 = (v27 + *(v27 + 7) + 32);
                ++v26;
              }

              while (v26 < v24[2]);
              v8 = v139;
            }

            break;
        }
      }

      v24 = (v24 + v24[1] + 8);
    }

    while (v24 < v8);
    if (!v22)
    {
      goto LABEL_128;
    }

    v149 = 0.0;
    v150 = 0.0;
    Width = CGImageGetWidth(*(v5 + 44));
    v33 = CGImageGetHeight(*(v5 + 44));
    v149 = Width;
    v150 = v33;
    v147 = NSZeroSize;
    v148 = v147;
    v145 = v147;
    v146 = v147;
    v144 = 0xBFF0000000000000;
    v142 = v147;
    v143 = v147;
    v140 = v147;
    v141 = v147;
    if (v23)
    {
      _extractMetrics(v23, &v149, &v148.width, &v147.width, &v146.width, &v145, &v144, &v143.width, &v142, &v141.width, &v140);
      Width = v149;
      v33 = v150;
    }

    v34 = p_var0[6];
    if (v34 > 1195456543)
    {
      switch(v34)
      {
        case 1195456544:
          v53 = kCGColorSpaceGenericGrayGamma2_2;
          break;
        case 1380401717:
          v54 = &kCGColorSpaceSRGB;
          if ((p_var0[7] & 0xF) <= 3)
          {
            v54 = qword_1E72514D8[p_var0[7] & 0xF];
          }

          v55 = *v54;
          DeviceRGB = CGColorSpaceCreateWithName(*v54);
          if (DeviceRGB)
          {
            goto LABEL_61;
          }

          _CUILog(1, "Can't find %@ colorspace Defaulting to sRGB colorspace", v56, v57, v58, v59, v60, v61, v55);
          v53 = kCGColorSpaceSRGB;
          break;
        case 1380401751:
          v35 = (p_var0[7] & 0xF) - 3;
          v36 = &kCGColorSpaceSRGB;
          if (v35 <= 2)
          {
            v36 = qword_1E72514C0[v35];
          }

          if (*(v138 + 8) == 5)
          {
            v36 = &kCGColorSpaceDisplayP3;
          }

          v37 = *v36;
          DeviceRGB = CGColorSpaceCreateWithName(*v36);
          if (!DeviceRGB)
          {
            _CUILog(1, "Can't find %@ colorspace Defaulting to sRGB colorspace", v39, v40, v41, v42, v43, v44, v37);
LABEL_60:
            DeviceRGB = CGColorSpaceCreateDeviceRGB();
            goto LABEL_61;
          }

          goto LABEL_61;
        default:
          goto LABEL_79;
      }

      DeviceRGB = CGColorSpaceCreateWithName(v53);
      goto LABEL_61;
    }

    if (v34 == 1095911234)
    {
      v62 = &kCGColorSpaceSRGB;
      if ((p_var0[7] & 0xF) <= 3)
      {
        v62 = qword_1E72514D8[p_var0[7] & 0xF];
      }

      DeviceRGB = CGColorSpaceCreateWithName(*v62);
      if (DeviceRGB)
      {
        goto LABEL_61;
      }

      _CUILog(1, "Defaulting to sRGB colorspace", v63, v64, v65, v66, v67, v68, v134);
      goto LABEL_60;
    }

    if (v34 != 1195454774)
    {
LABEL_79:
      v89 = +[NSAssertionHandler currentHandler];
      v90 = objc_opt_class();
      v91 = NSStringFromClass(v90);
      NSStringFromSelector(a2);
      v134 = v91;
      [(NSAssertionHandler *)v89 handleFailureInMethod:a2 object:v5 file:@"CUIThemeRendition.m" lineNumber:3908 description:@"CoreUI: [%@ %@] unknown pixel format %d"];
      v69 = 0;
      goto LABEL_62;
    }

    v45 = kCGColorSpaceGenericGrayGamma2_2;
    if ((p_var0[7] & 0xF) == 6)
    {
      v45 = kCGColorSpaceExtendedGray;
    }

    if (*(v138 + 8) == 5)
    {
      v46 = kCGColorSpaceDisplayP3;
    }

    else
    {
      v46 = v45;
    }

    DeviceRGB = CGColorSpaceCreateWithName(v46);
    if (!DeviceRGB)
    {
      _CUILog(1, "Can't find %@ colorspace Defaulting to Device Gray colorspace", v47, v48, v49, v50, v51, v52, v46);
      DeviceRGB = CGColorSpaceCreateDeviceGray();
    }

LABEL_61:
    v69 = DeviceRGB;
LABEL_62:
    v70 = p_var0[3];
    v71 = p_var0[4];
    *(v5 + 52) = v70;
    *(v5 + 53) = v71;
    v72 = [(_CUIThemePixelRendition *)v5 newImageFromCSIDataSlice:v70 | (v71 << 32) ofBitmap:v138 usingColorspace:v69];
    *(v5 + 44) = v72;
    if (!v72)
    {
      CGColorSpaceRelease(v69);
      +[CUIRenditionKey renditionKeyWithKeyList:](CUIRenditionKey, "renditionKeyWithKeyList:", [v5 key]);
      CGImageSetProperty();
      v124 = p_var0[6];
      if (v124 == 1195454774 || v124 == 1380401751 || (*[v5 renditionFlags] & 0x3C) == 0x1C || (*objc_msgSend(v5, "renditionFlags") & 0x3C) == 0x30)
      {
        return v5;
      }

      v131 = "Unable to create unsliced image from csi bitmap data.";
LABEL_127:
      _CUILog(4, v131, v125, v126, v127, v128, v129, v130, v134);
LABEL_128:

      return 0;
    }

    origin = CGRectZero.origin;
    size = CGRectZero.size;
    v152 = origin;
    v153 = size;
    v154 = origin;
    v155 = size;
    *v156 = origin;
    *&v156[16] = size;
    v157 = origin;
    v158 = size;
    v159 = origin;
    v160 = size;
    v161 = origin;
    v162 = size;
    v163 = origin;
    v164 = size;
    v165 = origin;
    v166 = size;
    v167 = origin;
    v168[0] = size;
    v168[1] = origin;
    v168[2] = size;
    v168[3] = origin;
    v168[4] = size;
    v168[5] = origin;
    v168[6] = size;
    v168[7] = origin;
    v168[8] = size;
    v168[9] = origin;
    v168[10] = size;
    v168[11] = origin;
    v168[12] = size;
    v168[13] = origin;
    v168[14] = size;
    v75 = *v22;
    if (!v75)
    {
      goto LABEL_81;
    }

    v76 = 0;
    v77 = v22 + 2;
    v78 = &v153;
    while (1)
    {
      v79 = v77[1];
      v80 = v77[2];
      if (v79)
      {
        v81 = v80 == 0;
      }

      else
      {
        v81 = 1;
      }

      if (v81)
      {
        *(v5 + v76 + 28) = 0;
        goto LABEL_73;
      }

      LODWORD(origin.x) = *(v77 - 1);
      v171.origin.x = *&origin.x;
      v171.origin.y = (v71 - (v80 + *v77));
      v171.size.width = v79;
      v171.size.height = v80;
      *(v78 - 2) = v171.origin.x;
      *(v78 - 1) = v171.origin.y;
      *v78 = v79;
      v78[1] = v80;
      v82 = CGImageCreateWithImageInRect(*(v5 + 44), v171);
      *(v5 + v76 + 28) = v82;
      if (!v82)
      {
        break;
      }

      v75 = *v22;
LABEL_73:
      if (v76 <= 0xE)
      {
        ++v76;
        v77 += 4;
        v78 += 4;
        if (v76 < v75)
        {
          continue;
        }
      }

      goto LABEL_81;
    }

    if (*(v5 + 44) && [v5 type] == 3)
    {
      _CUILog(4, "CoreUI: CUIThemeRendition invalid slicing information assuming its a OnePart image", v83, v84, v85, v86, v87, v88, v134);
      [v5 setType:0];
      [v5 setSubtype:12];
      goto LABEL_81;
    }

    if ([v5 type])
    {
      CGColorSpaceRelease(v69);
      v132 = *(v5 + 44);
      [v5 type];
      v134 = v132;
      v131 = "Unable to create sliced image from csi bitmap data %@ type is %d slices count %d rect is {%d,%d}.";
      goto LABEL_127;
    }

LABEL_81:
    CGColorSpaceRelease(v69);
    if ([v5 type] == 3)
    {
      v92 = CGImageGetWidth(*(v5 + 28));
      v93 = CGImageGetWidth(*(v5 + 30));
      v94 = CGImageGetHeight(*(v5 + 28));
      v95 = CGImageGetHeight(*(v5 + 34));
      [v5 scale];
      Width = v92 + v93 + v96;
      [v5 scale];
      v33 = v97 + v94 + v95;
      v8 = v139;
    }

    else
    {
      v8 = v139;
      if ([v5 type] == 2)
      {
        v98 = CGImageGetHeight(*(v5 + 28));
        v99 = v98 + CGImageGetHeight(*(v5 + 30));
        [v5 scale];
        v33 = v100 + v99;
      }

      else if ([v5 type] == 1)
      {
        v101 = CGImageGetWidth(*(v5 + 28));
        v102 = v101 + CGImageGetWidth(*(v5 + 30));
        [v5 scale];
        Width = v103 + v102;
      }
    }

    v169.width = NSZeroSize.width;
    v169.height = height;
    v170.width = Width;
    v170.height = v33;
    if (!NSEqualSizes(v169, v170))
    {
      v104 = [CUIRenditionMetrics alloc];
      v105 = v144;
      v106 = [v5 type] == 2 || objc_msgSend(v5, "type") == 3;
      v107 = [v5 type] == 1 || objc_msgSend(v5, "type") == 3;
      [v5 scale];
      *(v5 + 45) = [(CUIRenditionMetrics *)v104 initWithImageSize:v106 defaultImageSize:v107 edgeBottomLeft:Width edgeTopRight:v33 contentBottomLeft:v149 contentTopRight:v150 baseline:v148.width auxiliary1BottomLeft:v148.height auxiliary1TopRight:v147.width auxiliary2BottomLeft:v147.height auxiliary2TopRight:v108 scalesVertically:v109 scalesHorizontally:v110 scale:v111, v112, *&v146.width, *&v146.height, *&v145.width, *&v145.height, v105, *&v143.width, *&v143.height, *&v142.width, *&v142.height, *&v141.width, *&v141.height, *&v140.width, *&v140.height, v113];
    }

    v114 = [v5 type];
    v116 = v153.height;
    v115 = v153.width;
    v117 = *&v156[16];
    if (v114 == 3)
    {
      v118 = *v168;
    }

    else
    {
      v118 = *&v156[16];
    }

    v119 = v168 + 1;
    if (v114 != 3)
    {
      v119 = &v156[24];
    }

    v120 = *v119;
    if ([v5 type] == 3)
    {
      v121 = v164.width;
      if (v158.width > v164.width)
      {
        v121 = v158.width;
      }

      if (v115 == 0.0)
      {
        v115 = v121;
      }

      v122 = v155.height;
      if (v155.height <= *&v156[24])
      {
        v122 = *&v156[24];
      }

      if (v116 == 0.0)
      {
        v116 = v122;
      }

      if (v117 <= v162.width)
      {
        v123 = v162.width;
      }

      else
      {
        v123 = v117;
      }

      if (v118 == 0.0)
      {
        v118 = v123;
      }

      if (v120 == 0.0)
      {
        if (v164.height <= v166.height)
        {
          v120 = v166.height;
        }

        else
        {
          v120 = v164.height;
        }
      }
    }

    v9 = 0;
    *(v5 + 46) = -[CUIRenditionSliceInformation initWithRenditionType:destinationRect:topLeftInset:bottomRightInset:]([CUIRenditionSliceInformation alloc], "initWithRenditionType:destinationRect:topLeftInset:bottomRightInset:", [v5 type], 0.0, 0.0, Width, v33, v115, v116, v118, v120);
    v4 = p_var0;
    v7 = 1;
  }

  while (p_var0[43] > 1);
  return v5;
}

- (id)copySharedBlockDataWithPixelFormat:(int)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return *(&self->super.super.isa + *off_1E72514F8[a3]);
  }
}

- (void)setSharedBlockData:(id)a3
{
  if (!a3)
  {
LABEL_5:
    cachedBlockDataBGRX = self->_cachedBlockDataBGRX;
    if (cachedBlockDataBGRX == a3)
    {
      return;
    }

    v4 = 0;
    self->_cachedBlockDataBGRX = a3;
    goto LABEL_12;
  }

  v4 = *(a3 + 3);
  switch(v4)
  {
    case 2:
      cachedBlockDataBGRX = self->_cachedBlockDataGray;
      if (cachedBlockDataBGRX == a3)
      {
        return;
      }

      self->_cachedBlockDataGray = a3;
      v4 = 2;
      break;
    case 1:
      cachedBlockDataBGRX = self->_cachedBlockDataRGBX;
      if (cachedBlockDataBGRX == a3)
      {
        return;
      }

      self->_cachedBlockDataRGBX = a3;
      v4 = 1;
      break;
    case 0:
      goto LABEL_5;
    default:
      cachedBlockDataBGRX = 0;
      break;
  }

LABEL_12:

  v6 = CUIGetThemeCleanupQueue();
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __46___CUIThemePixelRendition_setSharedBlockData___block_invoke;
  v7[3] = &unk_1E72514A0;
  v8 = v4;
  v7[4] = self;
  dispatch_async(v6, v7);
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

- (BOOL)isTiled
{
  if ([(CUIThemeRendition *)self type]== 3 || ![(CUIThemeRendition *)self type]|| [(CUIThemeRendition *)self type]== 5 || [(CUIThemeRendition *)self type]== 8)
  {
    return [(CUIThemeRendition *)self subtype]== 30 || [(CUIThemeRendition *)self subtype]== 11;
  }

  v4 = [(CUIThemeRendition *)self name];
  _CUILog(1, "WARNING: -isTiled called on rendition named: %@, which is not a one-part or nine-part image, but the method is only meaningful for one-part and nine-part images. Returning NO.", v5, v6, v7, v8, v9, v10, v4);
  return 0;
}

- (uint64_t)newImageFromCSIDataSlice:(unint64_t)a3 ofBitmap:(uint64_t)a4 usingColorspace:(CGColorSpace *)a5
{
  if (!a1)
  {
    return 0;
  }

  v15 = [objc_msgSend(a1 "srcData")];
  v17 = v15[3];
  v16 = v15[4];
  v18 = 4;
  v77 = 4;
  LODWORD(bitsPerComponent) = 8;
  v19 = HIDWORD(a3);
  v76 = 1;
  v20 = v15[6];
  if (v20 == 1095911234)
  {
    goto LABEL_9;
  }

  if (v20 != 1380401751)
  {
    if (v20 == 1195456544)
    {
      v18 = 2;
      v77 = 2;
      LODWORD(bitsPerComponent) = 8;
      v22 = 12291;
      goto LABEL_22;
    }

    if (v20 == 1380401717)
    {
      LODWORD(bitsPerComponent) = 5;
      v76 = 0;
      v18 = 2;
      v22 = 4102;
      goto LABEL_22;
    }

    if (v20 != 1195454774)
    {
      bitmapInfoa = +[NSAssertionHandler currentHandler];
      v24 = objc_opt_class();
      v25 = a3;
      v26 = a4;
      v27 = a2;
      v28 = v19;
      v29 = v16;
      v30 = v17;
      v31 = NSStringFromClass(v24);
      NSStringFromSelector(sel_newImageFromCSIDataSlice_ofBitmap_usingColorspace_);
      decode = v31;
      v17 = v30;
      v16 = v29;
      v19 = v28;
      a2 = v27;
      a4 = v26;
      a3 = v25;
      [(NSAssertionHandler *)bitmapInfoa handleFailureInMethod:sel_newImageFromCSIDataSlice_ofBitmap_usingColorspace_ object:a1 file:@"CUIThemeRendition.m" lineNumber:3530 description:@"CoreUI: [%@ %@] unknown pixel format %d"];
      v22 = 0;
      v18 = 4;
      goto LABEL_22;
    }
  }

  v21 = *(a4 + 8);
  if (v21 <= 0xC && ((1 << v21) & 0x10A0) != 0)
  {
LABEL_9:
    v77 = 4;
    LODWORD(bitsPerComponent) = 8;
    if ((*(a4 + 4) & 2) != 0)
    {
      v22 = 8198;
    }

    else
    {
      v22 = 8194;
    }
  }

  else if (v20 == 1195454774)
  {
    v77 = 2;
    LODWORD(bitsPerComponent) = 16;
    OUTLINED_FUNCTION_2_2();
    if (v57)
    {
      v22 = 4097;
    }

    else
    {
      v22 = v70;
    }

    if ((v15[7] & 0xF) == 6)
    {
      v22 |= 0x100u;
      v76 = 5;
    }
  }

  else
  {
    v77 = 4;
    LODWORD(bitsPerComponent) = 16;
    OUTLINED_FUNCTION_2_2();
    if (v57)
    {
      v22 = 4097;
    }

    else
    {
      v22 = v23;
    }

    if ((v15[7] & 0xE) == 4)
    {
      v22 |= 0x100u;
      v76 = 5;
    }

    v18 = 8;
  }

LABEL_22:
  if (!v19 || !a3)
  {
    _CUILog(4, "CoreUI: degenerate slice geometry", v9, v10, v11, v12, v13, v14, decode);
    return 0;
  }

  bitmapInfo = v22;
  v32 = v17;
  v33 = *(a4 + 8);
  v34 = [a1 renditionFlags];
  *v34 = *v34 & 0xFFFFFFC3 | (4 * (v33 & 0xF));
  v41 = *(a4 + 8);
  if (v41 > 0xC)
  {
    _CUILog(4, "[CUIThemeRendition newImageFromCSIDataSlice:ofBitmap:] Unsupported pixel format in CSI got %d", v35, v36, v37, v38, v39, v40, *(a4 + 8));
    v53 = 0;
    goto LABEL_50;
  }

  v42 = v16 - (HIDWORD(a2) + v19);
  v43 = 1 << v41;
  if ((v43 & 0xF7E) != 0)
  {
    goto LABEL_26;
  }

  if ((v43 & 0x1080) != 0)
  {
    CUIUpdateImageProviderForATECompressedData(v15[6], &bitsPerComponent, &v77, &v76, v37, v38, v39, v40);
    v18 = (v77 * bitsPerComponent) >> 3;
LABEL_26:
    v44 = objc_alloc_init(CSIHelper);
    *&v44->slice.x = a2;
    *&v44->slice.width = a3;
    v44->slice.y = v42;
    v44->csiData = [a1 srcData];
    v44->bmp = a4;
    v44->renditionLock._os_unfair_lock_opaque = 0;
    objc_storeWeak(&v44->rendition, a1);
    v44->blockDataCacheKeyRGBX = 0;
    v44->blockDataCacheKeyGray = 0;
    v44->blockDataCacheKeyBGRX = 0;
    objc_storeWeak(&v44->sharedBlockDataBGRX, 0);
    objc_storeWeak(&v44->sharedBlockDataRGBX, 0);
    objc_storeWeak(&v44->sharedBlockDataGray, 0);
    v44->sourceRowbytes = [a1 sourceRowbytes];
    v45 = *(v44 + 120) & 0xFE;
    if (*(a4 + 8) != 1)
    {
      ++v45;
    }

    *(v44 + 120) = v45;
    if (v76)
    {
      if (qword_1ED4EC010 != -1)
      {
        dispatch_once(&qword_1ED4EC010, &__block_literal_global_428);
      }

      if (CGImageProviderCreate())
      {
        ImageAtIndex = CGImageCreateWithImageProvider();
        v53 = 0;
        goto LABEL_51;
      }

      _CUILog(4, "CoreUI: failed to create image provider for %d %d componentType %d colorSpace %@ options %@", v46, v47, v48, v49, v50, v51, a3);
      v53 = 0;
      goto LABEL_50;
    }

    AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
    *(v44 + 120) |= 2u;
    Direct = CGDataProviderCreateDirect(v44, AlignedBytesPerRow * v19, &csiCompressDataProviderCallbacks);
    goto LABEL_36;
  }

  v60 = a4 + v18 * (a2 + v32 * v42);
  if ([a1 sourceRowbytes])
  {
    v61 = [a1 sourceRowbytes];
LABEL_61:
    AlignedBytesPerRow = v61;
    goto LABEL_62;
  }

  AlignedBytesPerRow = v18 * v32;
  if (v15[6] == 1195456544)
  {
    v61 = CGBitmapGetAlignedBytesPerRow();
    goto LABEL_61;
  }

LABEL_62:
  v71 = [[NSData alloc] initWithBytes:v60 + 16 length:AlignedBytesPerRow * v19];
  __CFSetLastAllocationEventName();
  Direct = CGDataProviderCreateWithData(v71, [v71 bytes], objc_msgSend(v71, "length"), __releaseData);
LABEL_36:
  v53 = Direct;
  if (Direct)
  {
    v56 = *(a4 + 8);
    v57 = v56 == 12 || v56 == 7;
    if (!v57)
    {
      ImageAtIndex = CGImageCreate(a3, v19, bitsPerComponent, 8 * v18, AlignedBytesPerRow, a5, bitmapInfo, Direct, 0, 1, kCGRenderingIntentDefault);
      goto LABEL_51;
    }

    v58 = CGImageSourceCreateWithDataProvider(Direct, 0);
    if (v58)
    {
      v59 = v58;
      ImageAtIndex = CGImageSourceCreateImageAtIndex(v58, 0, 0);
      CFRelease(v59);
      goto LABEL_51;
    }
  }

LABEL_50:
  ImageAtIndex = 0;
LABEL_51:
  CGDataProviderRelease(v53);
  CGImageProviderRelease();
  if (!ImageAtIndex)
  {
    v62 = CUIConvertCompressionTypeToString(*(a4 + 8));
    _CUILog(4, "CoreUI: failed to create an image because of a bad pixel format or failure to create an appropriate image provider for encoding '%s'", v63, v64, v65, v66, v67, v68, v62);
  }

  return ImageAtIndex;
}

@end