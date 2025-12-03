@interface CSIBitmapWrapper
- (CGContext)bitmapContext;
- (CGImageRef)destImage;
- (CSIBitmapWrapper)initWithCGImage:(CGImage *)image width:(unsigned int)width height:(unsigned int)height texturePixelFormat:(int64_t)format;
- (CSIBitmapWrapper)initWithPixelWidth:(unsigned int)width pixelHeight:(unsigned int)height;
- (id)bitmapContext;
- (id)compressedData:(BOOL)data usedEncoding:(int *)encoding andRowChunkSize:(unsigned int *)size;
- (id)pixelData;
- (void)dealloc;
- (void)setAllowsCompactCompression:(BOOL)compression;
- (void)setAllowsMultiPassEncoding:(BOOL)encoding;
- (void)setAllowsOptimalRowbytesPacking:(BOOL)packing;
- (void)setPixelData:(id)data;
@end

@implementation CSIBitmapWrapper

- (CGContext)bitmapContext
{
  if (self->_sourceImage)
  {
    [CSIBitmapWrapper bitmapContext];
  }

  result = self->_bitmapContext;
  if (!result)
  {
    v11 = (self->_imageAlpha < 7) & (0x61u >> self->_imageAlpha);
    pixelFormat = self->_pixelFormat;
    if (pixelFormat > 1195456543)
    {
      if (pixelFormat != 1195456544)
      {
        if (pixelFormat == 1380401751)
        {
          colorSpaceID = self->_colorSpaceID;
          if (v11)
          {
            v19 = 4101;
          }

          else
          {
            v19 = 4097;
          }

          v13 = colorSpaceID == 4;
          v14 = v19 | ((colorSpaceID == 4) << 8);
          goto LABEL_32;
        }

LABEL_21:
        _CUILog(4, "Unsupported CSIGenerator pixel format: %d", v2, v3, v4, v5, v6, v7, self->_pixelFormat);
        return 0;
      }

      if (v11)
      {
        v14 = 0;
        v16 = kCGColorSpaceGenericGrayGamma2_2;
        v17 = 1;
LABEL_40:
        v22 = 8;
        goto LABEL_41;
      }

      v16 = kCGColorSpaceSRGB;
      v14 = 8194;
    }

    else
    {
      if (pixelFormat != 1095911234)
      {
        if (pixelFormat == 1195454774)
        {
          v13 = self->_colorSpaceID == 6;
          if (v11)
          {
            if (self->_colorSpaceID == 6)
            {
              v14 = 4352;
            }

            else
            {
              v14 = 4096;
            }

            v15 = &kCGColorSpaceExtendedGray;
            if (self->_colorSpaceID != 6)
            {
              v15 = &kCGColorSpaceGenericGrayGamma2_2;
            }

            v16 = *v15;
            v17 = 2;
LABEL_35:
            v22 = 16;
LABEL_41:
            v23 = CGColorSpaceCreateWithName(v16);
            allowsOptimalRowbytesPacking = [(CSIBitmapWrapper *)self allowsOptimalRowbytesPacking];
            width = self->_width;
            AlignedBytesPerRow = width * v17;
            if (allowsOptimalRowbytesPacking)
            {
              AlignedBytesPerRow = CGBitmapGetAlignedBytesPerRow();
              width = self->_width;
            }

            v27 = CGBitmapContextCreate(0, width, self->_height, v22, AlignedBytesPerRow, v23, v14);
            self->_bitmapContext = v27;
            if (!v27)
            {
              [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"CSIGenerator.m" description:2437, @"CoreUI: Unable to create bitmap context for distill output target with _width %d _height %d PixelFormat: %d, ColorSpace: %@, BitsPerComponent: %d, bitmapInfo: %d", self->_width, self->_height, self->_pixelFormat, v23, v22, v14];
            }

            CGColorSpaceRelease(v23);
            flipped = [(CSIBitmapWrapper *)self flipped];
            result = self->_bitmapContext;
            if (flipped)
            {
              LODWORD(v29) = self->_height;
              CGContextTranslateCTM(result, 0.0, v29);
              CGContextScaleCTM(self->_bitmapContext, 1.0, -1.0);
              return self->_bitmapContext;
            }

            return result;
          }

          if (self->_colorSpaceID == 6)
          {
            v14 = 4353;
          }

          else
          {
            v14 = 4097;
          }

LABEL_32:
          v21 = &kCGColorSpaceExtendedSRGB;
          if (!v13)
          {
            v21 = &kCGColorSpaceDisplayP3;
          }

          v16 = *v21;
          v17 = 8;
          goto LABEL_35;
        }

        goto LABEL_21;
      }

      if ((v11 & [(CSIBitmapWrapper *)self allowsMultiPassEncoding]) != 0)
      {
        v14 = 8198;
      }

      else
      {
        v14 = 8194;
      }

      if (self->_colorSpaceID == 3)
      {
        v20 = &kCGColorSpaceDisplayP3;
      }

      else
      {
        v20 = &kCGColorSpaceSRGB;
      }

      v16 = *v20;
    }

    v17 = 4;
    goto LABEL_40;
  }

  return result;
}

- (id)pixelData
{
  if (self->_pixelData)
  {
    return self->_pixelData;
  }

  sourceImage = self->_sourceImage;
  if (sourceImage)
  {
    LODWORD(v2) = self->_width;
    LODWORD(v3) = self->_height;
    self->_pixelData = CUIConvertImageToPixelFormat(sourceImage, self->_flipped, self->_exifOrientation, self->_textureInterpretation, self->_texturePixelFormat, &self->_rowbytes, v2, v3);
    return self->_pixelData;
  }

  bitmapContext = [(CSIBitmapWrapper *)self bitmapContext];
  if (!bitmapContext)
  {
    return self->_pixelData;
  }

  v8 = bitmapContext;
  pixelFormat = self->_pixelFormat;
  if (pixelFormat != 1195456544 && pixelFormat != 1195454774)
  {
    BytesPerRow = CGBitmapContextGetBytesPerRow(bitmapContext);
    v30 = CGBitmapContextGetHeight(v8) * BytesPerRow;
    self->_pixelData = [[NSData alloc] initWithBytesNoCopy:CGBitmapContextGetData(v8) length:v30 freeWhenDone:0];
    self->_rowbytes = CGBitmapContextGetBytesPerRow(v8);
    return self->_pixelData;
  }

  v34.data = 0;
  Image = CGBitmapContextCreateImage(bitmapContext);
  BitmapInfo = CGImageGetBitmapInfo(Image);
  BitsPerComponent = CGImageGetBitsPerComponent(Image);
  v13 = &kCGColorSpaceExtendedGray;
  v14 = BitmapInfo & 0x100;
  if ((BitmapInfo & 0x100) == 0)
  {
    v13 = &kCGColorSpaceGenericGrayGamma2_2;
  }

  v15 = CGColorSpaceCreateWithName(*v13);
  v16 = BitsPerComponent > 8;
  if (BitsPerComponent <= 8)
  {
    v17 = 8;
  }

  else
  {
    v17 = 16;
  }

  if (v16)
  {
    v18 = 32;
  }

  else
  {
    v18 = 16;
  }

  if (v16)
  {
    v19 = 4097;
  }

  else
  {
    v19 = 12289;
  }

  v20 = v19 | v14;
  v34.height = CGImageGetHeight(Image);
  v34.width = CGImageGetWidth(Image);
  v34.rowBytes = CGBitmapGetAlignedBytesPerRow();
  ColorSpace = CGBitmapContextGetColorSpace(v8);
  v33.bitsPerComponent = v17;
  v33.bitsPerPixel = v18;
  v33.colorSpace = v15;
  v33.bitmapInfo = v20;
  memset(&v33.version, 0, 20);
  v22 = CUIConvertCGImageFormat(Image, ColorSpace, &v33, &v34);
  CGColorSpaceRelease(v15);
  self->_rowbytes = v34.rowBytes;
  CFRelease(Image);
  if (!v22)
  {
    v31 = [NSData alloc];
    self->_pixelData = [v31 initWithBytes:v34.data length:v34.height * v34.rowBytes];
    if (v34.data)
    {
      CGBitmapFreeData();
    }

    return self->_pixelData;
  }

  _CUILog(4, "CoreUI: Unable to create convert image to 16 Gray scale .", v23, v24, v25, v26, v27, v28, v32);
  return 0;
}

- (CGImageRef)destImage
{
  if (result)
  {
    v1 = result;
    result = *(result + 8);
    if (!result)
    {
      result = v1[7];
      if (!result)
      {
        result = CGBitmapContextCreateImage([v1 bitmapContext]);
      }

      v1[8] = result;
    }
  }

  return result;
}

- (void)dealloc
{
  bitmapContext = self->_bitmapContext;
  if (bitmapContext)
  {
    CFRelease(bitmapContext);
  }

  sourceImage = self->_sourceImage;
  if (sourceImage)
  {
    CFRelease(sourceImage);
  }

  destImage = self->_destImage;
  if (destImage && destImage != self->_sourceImage)
  {
    CFRelease(destImage);
  }

  v6.receiver = self;
  v6.super_class = CSIBitmapWrapper;
  [(CSIBitmapWrapper *)&v6 dealloc];
}

- (CSIBitmapWrapper)initWithPixelWidth:(unsigned int)width pixelHeight:(unsigned int)height
{
  v7.receiver = self;
  v7.super_class = CSIBitmapWrapper;
  result = [(CSIBitmapWrapper *)&v7 init];
  if (result)
  {
    result->_colorSpaceID = 1;
    result->_pixelFormat = 1095911234;
    result->_width = width;
    result->_height = height;
    *&result->_allowsMultiPassEncoding = 257;
    *&result->_allowsPaletteImageCompression = 0;
    result->_imageAlpha = 2;
  }

  return result;
}

- (CSIBitmapWrapper)initWithCGImage:(CGImage *)image width:(unsigned int)width height:(unsigned int)height texturePixelFormat:(int64_t)format
{
  v14.receiver = self;
  v14.super_class = CSIBitmapWrapper;
  v10 = [(CSIBitmapWrapper *)&v14 init];
  v11 = v10;
  if (v10)
  {
    *(v10 + 7) = width;
    *(v10 + 8) = height;
    *(v10 + 24) = 257;
    *(v10 + 51) = 0;
    v12 = CGImageRetain(image);
    v11->_sourceImage = v12;
    v11->_destImage = 0;
    v11->_texturePixelFormat = format;
    v11->_imageAlpha = CGImageGetAlphaInfo(v12);
  }

  return v11;
}

- (void)setPixelData:(id)data
{
  pixelData = self->_pixelData;
  if (pixelData != data)
  {

    self->_pixelData = data;
  }
}

- (void)setAllowsMultiPassEncoding:(BOOL)encoding
{
  self->_allowsMultiPassEncoding = encoding;
  if (__coreThemeLoggingEnabled == 1)
  {
    _CUILog(1, "CoreUI(DEBUG) setting allowsMultiPassEncoding to %d", encoding, v3, v4, v5, v6, v7, encoding);
  }
}

- (void)setAllowsOptimalRowbytesPacking:(BOOL)packing
{
  self->_allowsOptimalRowbytesPacking = packing;
  if (__coreThemeLoggingEnabled == 1)
  {
    _CUILog(1, "CoreUI(DEBUG) setting allowsOptimalRowbytesPacking to %d", packing, v3, v4, v5, v6, v7, packing);
  }
}

- (void)setAllowsCompactCompression:(BOOL)compression
{
  self->_allowsCompactCompression = compression;
  if (__coreThemeLoggingEnabled == 1)
  {
    _CUILog(1, "CoreUI(DEBUG) setting allowsCompactCompression to %d", compression, v3, v4, v5, v6, v7, compression);
  }
}

- (id)compressedData:(BOOL)data usedEncoding:(int *)encoding andRowChunkSize:(unsigned int *)size
{
  if ([(CSIBitmapWrapper *)self width]|| [(CSIBitmapWrapper *)self width]|| ![(CSIBitmapWrapper *)self pixelData]|| [(CSIBitmapWrapper *)self pixelFormat]!= 1346651680)
  {
    pixelData = [(CSIBitmapWrapper *)self pixelData];
    v170 = [(NSData *)pixelData length];
    height = [(CSIBitmapWrapper *)self height];
    width = [(CSIBitmapWrapper *)self width];
    v12 = [(NSData *)pixelData length];
    Data = [(NSData *)pixelData bytes];
    rowbytes = self->_rowbytes;
    if (!rowbytes)
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"CSIGenerator.m" description:2643, @"Row Bytes MUST be set"];
      rowbytes = self->_rowbytes;
    }

    v14 = height;
    v15 = width;
    if (!data)
    {
      [(CSIBitmapWrapper *)self setCompressionType:1];
    }

    v181 = 0;
    v180 = 0;
    v179 = 0;
    v178 = 0;
    compressionType = [(CSIBitmapWrapper *)self compressionType];
    v19 = 0;
    if (compressionType <= 2)
    {
      if (!compressionType)
      {
        goto LABEL_21;
      }

      if (compressionType != 1)
      {
        if (compressionType != 2)
        {
          goto LABEL_110;
        }

LABEL_21:
        if ([(CSIBitmapWrapper *)self allowsPaletteImageCompression]&& ![(CSIBitmapWrapper *)self allowsDeepmap2ImageCompression]&& [(CSIBitmapWrapper *)self colorSpaceID]!= 2 && [(CSIBitmapWrapper *)self colorSpaceID]!= 6 && [(CSIBitmapWrapper *)self compressionType]!= 7)
        {
          v181 = 8;
          destImage = [(CSIBitmapWrapper *)self destImage];
          if (!destImage || (v134 = destImage, !CGImageGetWidth(destImage)) || !CGImageGetHeight(v134))
          {
            _CUILog(4, "CoreUI: Invalid image for lossless compression, fallback to Deepmap lossless compression...", v128, v129, v130, v131, v132, v133, v160);
            goto LABEL_26;
          }

          memset(v182, 0, 40);
          v177.data = 0;
          v177.height = CGImageGetHeight(v134);
          *&v177.width = CGImageGetWidth(v134);
          pixelData = self->_pixelData;
          if (pixelData)
          {
            bytes = [(NSData *)pixelData bytes];
            v139 = self->_rowbytes;
            v177.data = bytes;
            v177.rowBytes = v139;
          }

          else
          {
            v153 = CUIGetRGBAImageBuffer(v134, v182, &v177);
            if (v153 || !v177.width || !v177.height)
            {
              if (v153)
              {
                _CUILog(4, "CoreUI: Image conversion failed vImage error %d, fallback to other lossless compression...", v154, v155, v156, v157, v137, v138, v153);
              }

              else
              {
                _CUILog(4, "CoreUI: Image conversion failed vImage returned degenerate image (width=%lu, height=%lu), fallback to other lossless compression...", v154, v155, v156, v157, v137, v138, v177.width);
              }

              goto LABEL_26;
            }
          }

          v176 = v177;
          v158 = CUIImageCompressedWithColorQuantization(v134, &v176, 0, &v179, &v180, &v178, v137, v138);
          if (v158)
          {
            v159 = v158;
            [(CSIBitmapWrapper *)self setPixelFormat:v179];
            [(CSIBitmapWrapper *)self setColorSpaceID:v180];
            self->_rowbytes = v178;
            *size = height;
            v19 = [NSArray arrayWithObject:v159];

            if (!pixelData)
            {
              CUIDeallocateRGBAImageBuffer(v182, &v177.data);
            }

            goto LABEL_110;
          }

          if (!pixelData)
          {
            CUIDeallocateRGBAImageBuffer(v182, &v177.data);
          }
        }

LABEL_26:
        if ([(CSIBitmapWrapper *)self compressionType]== 7)
        {
LABEL_29:
          v27 = rowbytes * v14;
          v168 = v14;
          if (rowbytes * v14 <= 0xFFF)
          {
            pixelFormat = self->_pixelFormat;
            if (pixelFormat != 1195454774 && pixelFormat != 1380401751)
            {
              v69 = v12 + 8 * v14 + 12;
              if (v69 <= 0x800)
              {
                v70 = 2048;
              }

              else
              {
                v70 = v69;
              }

              if (v69 >= 0x800)
              {
                v71 = malloc_type_malloc(v70, 0x704CA307uLL);
              }

              else
              {
                v71 = v182;
              }

              if (self->_sourceImage || self->_texturePixelFormat)
              {
                v181 = 0;
                if (v69 >= 0x800)
                {
                  free(v71);
                }

                sizeCopy3 = size;
              }

              else
              {
                if (self->_pixelFormat == 1195456544)
                {
                  v122 = 3;
                }

                else
                {
                  v122 = 4;
                }

                v123 = pk_compressData(Data, v122, v15, v168, rowbytes, v71, v70, v26);
                if (v123 < 1 || v170 <= v123)
                {
                  v181 = 0;
                  sizeCopy3 = size;
                  if (v69 >= 0x800)
                  {
                    free(v71);
                  }
                }

                else
                {
                  v181 = 1;
                  sizeCopy3 = size;
                  if (v69 > 0x7FF)
                  {
                    v124 = [NSData dataWithBytesNoCopy:v71 length:v123 freeWhenDone:1];
                  }

                  else
                  {
                    v124 = [NSData dataWithBytes:v71 length:v123];
                  }

                  pixelData = v124;
                }
              }

              *sizeCopy3 = height;
              v19 = [NSArray arrayWithObject:pixelData];
              goto LABEL_110;
            }
          }

          *&v182[0] = 0;
          v177.data = 0;
          if (__environmentRequestedCompression == 2)
          {
            v29 = 4;
          }

          else if (__environmentRequestedCompression == 1)
          {
            v29 = 3;
          }

          else
          {
            if (__environmentRequestedCompression)
            {
LABEL_48:
              allowsMultiPassEncoding = [(CSIBitmapWrapper *)self allowsMultiPassEncoding];
              if (v15 > 1)
              {
                v41 = allowsMultiPassEncoding;
              }

              else
              {
                v41 = 0;
              }

              if ((v15 * v14) > 0xFFF)
              {
                v42 = v41;
              }

              else
              {
                v42 = 0;
              }

              if (v42 == 1)
              {
                if (__coreThemeLoggingEnabled == 1)
                {
                  _CUILog(1, "CoreUI(DEBUG): doing multipass encoding", v35, v36, v37, v38, v39, v40, v160);
                }

                if (v27 < 0x5000)
                {
                  height >>= 1;
                }

                else if (height >= 3)
                {
                  height /= 3u;
                }
              }

              encodingCopy = encoding;
              *size = height;
              if (v12 >= 1)
              {
                v19 = 0;
                v43 = 0;
                v44 = rowbytes * height;
                propertyNamea = kCFStreamPropertyDataWritten;
                v45 = v12;
                while (1)
                {
                  v46 = CFWriteStreamCreateWithAllocatedBuffers(kCFAllocatorDefault, kCFAllocatorDefault);
                  CFWriteStreamOpen(v46);
                  *&v182[0] = 0;
                  _StreamSys_init_write(v182, v46);
                  v177.data = 0;
                  if (v181 == 3)
                  {
                    v47 = 4;
                  }

                  else
                  {
                    v47 = 5;
                  }

                  if (v181 == 2)
                  {
                    v48 = 1;
                  }

                  else
                  {
                    v48 = v47;
                  }

                  if (_BOMFileNewFromCFWriteStreamSys(&v177, *&v182[0], v48))
                  {
                    if (v46)
                    {
                      CFRelease(v46);
                    }

                    _CUILog(4, "CoreUI: Unable to create compressed output stream.", v49, v50, v51, v52, v53, v54, v160);

                    return 0;
                  }

                  v55 = 0;
                  if (v44)
                  {
                    break;
                  }

LABEL_76:
                  BOMFileClose(v177.data);
                  BomSys_free(*&v182[0]);
                  v58 = CFWriteStreamCopyProperty(v46, propertyNamea);
                  v59 = v58;
                  if (__loggingEnabled == 1)
                  {
                    v43 += CFDataGetLength(v58);
                  }

                  if (!v19)
                  {
                    v19 = objc_alloc_init(NSMutableArray);
                  }

                  Data += v55;
                  [(NSArray *)v19 addObject:v59];

                  CFRelease(v46);
                  v45 -= v55;
                  if (v45 > 0)
                  {
                    v60 = v42;
                  }

                  else
                  {
                    v60 = 0;
                  }

                  if ((v60 & 1) == 0)
                  {
                    goto LABEL_88;
                  }
                }

                if (v44 >= v45)
                {
                  v56 = v45;
                }

                else
                {
                  v56 = rowbytes * height;
                }

                while (1)
                {
                  v57 = BOMFileWrite(v177.data, &Data[v55], v56);
                  if (v57 < 1)
                  {
                    break;
                  }

                  v55 += v57;
                  v56 -= v57;
                  if (!v56)
                  {
                    goto LABEL_76;
                  }
                }

                BOMFileClose(v177.data);
                CFRelease(v46);
                _CUILog(4, "CoreUI: Failure to write to stream", v61, v62, v63, v64, v65, v66, v160);
                v67 = v19;
                return 0;
              }

              v19 = 0;
LABEL_88:
              v68 = v19;
              encoding = encodingCopy;
LABEL_110:
              if (__loggingEnabled == 1)
              {
                v76 = CUIConvertCompressionTypeToString(v181);
                NSLocalizedFileSizeDescription();
                _CUILog(1, "CSI: %s Compressed [%lu x %lu]\t\t%lu\trowbytes %lu\t to size %@\twith compressionFactor:\t%.2f", v77, v78, v79, v80, v81, v82, v76);
              }

              if (encoding)
              {
                *encoding = v181;
              }

              return v19;
            }

            v29 = 2;
          }

          v181 = v29;
          goto LABEL_48;
        }

        if ([(CSIBitmapWrapper *)self allowsDeepmap2ImageCompression])
        {
          v181 = 11;
          destImage2 = [(CSIBitmapWrapper *)self destImage];
          if (destImage2)
          {
            v94 = destImage2;
            if (CGImageGetWidth(destImage2))
            {
              if (CGImageGetHeight(v94))
              {
                v172 = v12;
                v167 = v15;
                v169 = v14;
                encodingCopy3 = encoding;
                bytes2 = [(NSData *)self->_pixelData bytes];
                Height = CGImageGetHeight(v94);
                Width = CGImageGetWidth(v94);
                v96 = self->_rowbytes;
                BitsPerPixel = CGImageGetBitsPerPixel(v94);
                v98 = 8 * ((BitsPerPixel >> 3) / (BitsPerPixel / CGImageGetBitsPerComponent(v94)));
                ColorSpace = CGImageGetColorSpace(v94);
                BitmapInfo = CGImageGetBitmapInfo(v94);
                v101 = self->_pixelFormat;
                *&v182[0] = __PAIR64__(BitsPerPixel, v98);
                *(&v182[0] + 1) = ColorSpace;
                LODWORD(v182[1]) = BitmapInfo;
                memset(&v182[1] + 4, 0, 20);
                v177.data = bytes2;
                v177.height = Height;
                v177.width = Width;
                v177.rowBytes = v96;
                v103 = CUIImageCompressedWithDeepmap2(v182, &v177, v101, &v179, &v180, &v178, size, v102);
                if (v103)
                {
LABEL_127:
                  v121 = v103;
                  [(CSIBitmapWrapper *)self setPixelFormat:v179];
                  [(CSIBitmapWrapper *)self setColorSpaceID:v180];
                  self->_rowbytes = v178;
                  v19 = v121;
                  encoding = encodingCopy3;
                  goto LABEL_110;
                }

                v110 = "CoreUI: Deepmap 2.0 image compression returned nil, fallback to other lossless compression...";
                v111 = 4;
                goto LABEL_159;
              }
            }
          }

          v125 = "CoreUI: Invalid image for lossless compression with kCSICompressedDeepmap2Encoding encoding, fallback to default lossless compression...";
        }

        else
        {
          if (![(CSIBitmapWrapper *)self allowsDeepmapImageCompression])
          {
            goto LABEL_29;
          }

          v181 = 10;
          destImage3 = [(CSIBitmapWrapper *)self destImage];
          if (destImage3)
          {
            v113 = destImage3;
            if (CGImageGetWidth(destImage3))
            {
              if (CGImageGetHeight(v113))
              {
                v172 = v12;
                v167 = v15;
                v169 = v14;
                encodingCopy3 = encoding;
                bytes3 = [(NSData *)self->_pixelData bytes];
                v164 = CGImageGetHeight(v113);
                v162 = CGImageGetWidth(v113);
                v114 = self->_rowbytes;
                v115 = CGImageGetBitsPerPixel(v113);
                v116 = 8 * ((v115 >> 3) / (v115 / CGImageGetBitsPerComponent(v113)));
                v117 = CGImageGetColorSpace(v113);
                v118 = CGImageGetBitmapInfo(v113);
                v119 = self->_pixelFormat;
                *&v182[0] = __PAIR64__(v115, v116);
                *(&v182[0] + 1) = v117;
                LODWORD(v182[1]) = v118;
                memset(&v182[1] + 4, 0, 20);
                v177.data = bytes3;
                v177.height = v164;
                v177.width = v162;
                v177.rowBytes = v114;
                v103 = CUIImageCompressedWithDeepmap(v182, &v177, v119, &v179, &v180, &v178, size, v120);
                if (v103)
                {
                  goto LABEL_127;
                }

                v110 = "CoreUI: Deepmap image compression returned early, fallback to other lossless compression...";
                v111 = 3;
LABEL_159:
                _CUILog(v111, v110, v104, v105, v106, v107, v108, v109, v160);
                encoding = encodingCopy3;
                v15 = v167;
                v14 = v169;
                goto LABEL_160;
              }
            }
          }

          v125 = "CoreUI: Invalid image for lossless compression with kCSICompressedDeepmapEncoding encoding, fallback to default lossless compression...";
        }

        _CUILog(4, v125, v88, v89, v90, v91, v92, v93, v160);
        goto LABEL_29;
      }

      sizeCopy5 = size;
      *size = height;
      v19 = [NSArray arrayWithObject:pixelData];
LABEL_37:
      v181 = 6;
      *&v182[0] = 0;
      v177.data = 0;
      *sizeCopy5 = height;
      if ((encodeRadiosity(v15, height, rowbytes, Data, v182, &v177, v17, v18, 40.0) & 0x80000000) == 0)
      {
        v30 = [NSData alloc];
        v31 = [v30 initWithBytesNoCopy:*&v182[0] length:v177.data freeWhenDone:1];
        v19 = [NSArray arrayWithObject:v31];
      }

      goto LABEL_110;
    }

    if (compressionType > 6)
    {
      if (compressionType != 7)
      {
        goto LABEL_110;
      }

      v172 = v12;
      if ((![(CSIBitmapWrapper *)self sourceAlphaInfo]|| [(CSIBitmapWrapper *)self sourceAlphaInfo]== 5 || [(CSIBitmapWrapper *)self sourceAlphaInfo]== 6) && self->_pixelFormat == 1095911234)
      {
        [(CSIBitmapWrapper *)self allowsCompactCompression];
        CGBitmapContextGetBitsPerPixel([(CSIBitmapWrapper *)self bitmapContext]);
        Image = CGBitmapContextCreateImage([(CSIBitmapWrapper *)self bitmapContext]);
        v22 = CGBitmapContextGetColorSpace([(CSIBitmapWrapper *)self bitmapContext]);
        v23 = CGBitmapContextCreate(0, width, height, 5uLL, 0, v22, 0x1006u);
        v184.size.width = width;
        v184.size.height = height;
        v184.origin.x = 0.0;
        v184.origin.y = 0.0;
        CGContextDrawImage(v23, v184, Image);
        CGImageRelease(Image);
        Data = CGBitmapContextGetData(v23);
        CFRelease(self->_bitmapContext);
        self->_bitmapContext = v23;
        v24 = v23;
        v15 = width;
        v14 = height;
        BytesPerRow = CGBitmapContextGetBytesPerRow(v24);
        self->_rowbytes = BytesPerRow;
        rowbytes = BytesPerRow;
        v12 = BytesPerRow * height;
        pixelData = [[NSData alloc] initWithBytesNoCopy:Data length:v12 freeWhenDone:0];
        [(CSIBitmapWrapper *)self setPixelData:pixelData];

        [(CSIBitmapWrapper *)self setPixelFormat:1380401717];
        v170 = v12;
        goto LABEL_21;
      }
    }

    else
    {
      if (compressionType == 6)
      {
        sizeCopy5 = size;
        goto LABEL_37;
      }

      v172 = v12;
      if ((compressionType - 4) < 2)
      {
        destImage4 = [(CSIBitmapWrapper *)self destImage];
        v74 = CUIImageCompressedWithATECompression(destImage4, [(CSIBitmapWrapper *)self compressionType], [(CSIBitmapWrapper *)self targetPlatform], &v181, &v179, &v180);
        if (v74)
        {
          v75 = v74;
          [(CSIBitmapWrapper *)self setPixelFormat:v179];
          [(CSIBitmapWrapper *)self setColorSpaceID:v180];
          *size = height;
          v19 = [NSArray arrayWithObject:v75];

          goto LABEL_110;
        }
      }

      else if (compressionType != 3)
      {
        goto LABEL_110;
      }
    }

    destImage5 = [(CSIBitmapWrapper *)self destImage];
    if ([(CSIBitmapWrapper *)self allowsHevcCompression])
    {
      [(CSIBitmapWrapper *)self compressionQuality];
      v85 = CUIImageCompressedWithHEVC(destImage5, &v179, &v180, &v178, v84);
      if (v85)
      {
        v86 = v85;
        v181 = 9;
        goto LABEL_155;
      }

      if ([(CSIBitmapWrapper *)self name])
      {
        uTF8String = [(NSString *)[(CSIBitmapWrapper *)self name] UTF8String];
      }

      else
      {
        uTF8String = "a rendition";
      }

      if ([(CSIBitmapWrapper *)self pixelFormat]== 1195456544)
      {
        _CUILog(4, "CoreUI: HEVC lossy compression failed for %s. Re-try again with default lossless fallback.", v140, v141, v142, v143, v144, v145, uTF8String);
LABEL_160:
        v12 = v172;
        goto LABEL_29;
      }

      _CUILog(4, "CoreUI: HEVC lossy compression failed for %s. Re-try again with jpeg+lzfse fallback.", v140, v141, v142, v143, v144, v145, uTF8String);
    }

    [(CSIBitmapWrapper *)self compressionQuality];
    v86 = CUIImageCompressedWithJPEGandLZFSE(destImage5, &v179, &v180, &v178, v146);
    v181 = 5;
    v12 = v172;
    if (!v86)
    {
      _CUILog(4, "CoreUI: Lossy fallback compression failed. Re-try again with fallback.", v147, v148, v149, v150, v151, v152, v160);
      goto LABEL_21;
    }

LABEL_155:
    [(CSIBitmapWrapper *)self setPixelFormat:v179];
    [(CSIBitmapWrapper *)self setColorSpaceID:v180];
    self->_rowbytes = v178;
    *size = height;
    v19 = [NSArray arrayWithObject:v86];

    goto LABEL_110;
  }

  *size = 0;
  *encoding = 0;
  pixelData2 = [(CSIBitmapWrapper *)self pixelData];

  return [NSArray arrayWithObject:pixelData2];
}

- (id)bitmapContext
{
  OUTLINED_FUNCTION_35();
  v2 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v2 handleFailureInMethod:v1 object:v0 file:@"CSIGenerator.m" lineNumber:2320 description:@"can't use a sourceImage and request a bitmapContext at the same time"];
}

@end