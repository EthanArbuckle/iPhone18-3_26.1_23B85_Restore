@interface CUIPSDImageRef
+ (BOOL)isValidPSDResourceAtPath:(id)a3;
+ (BOOL)isValidPSDResourceAtPath:(id)a3 withImageInfo:(_PSDImageInfo *)a4;
+ (BOOL)isValidPSDResourceAtPath:(id)a3 withLayerCount:(unsigned int *)a4;
- ($EFF4F97A94432FEE0F91D8A1E88572D8)metricsInAlphaChannel:(SEL)a3 forRect:(int64_t)a4;
- ($EFF4F97A94432FEE0F91D8A1E88572D8)metricsInMask:(SEL)a3 forRect:(id)a4;
- (BOOL)_visibilityAtAbsoluteIndex:(unsigned int)a3;
- (BOOL)loadPSDFileWithLayers:(BOOL)a3;
- (BOOL)openImageFile;
- (CGColorSpace)copyColorSpace;
- (CGImage)_copyCGImageAtAbsoluteIndex:(unsigned int)a3;
- (CGImage)createCompositeCGImage;
- (CGRect)_boundsAtAbsoluteIndex:(unsigned int)a3;
- (CGRect)boundsForSlice:(unsigned int)a3;
- (CGSize)size;
- (CUIPSDImageRef)initWithPath:(id)a3;
- (_PSDImageInfo)imageInfo;
- (double)_fillOpacityAtAbsoluteIndex:(unsigned int)a3;
- (double)_opacityAtAbsoluteIndex:(unsigned int)a3;
- (id)_bevelEmbossFromLayerEffectsInfo:(void *)a3;
- (id)_colorOverlayFromLayerEffectsInfo:(void *)a3;
- (id)_copySublayerInfoAtAbsoluteIndex:(unsigned int)a3 atRoot:(BOOL)a4;
- (id)_createMaskFromSlice:(unsigned int)a3 atAbsoluteIndex:(unsigned int)a4;
- (id)_dropShadowFromLayerEffectsInfo:(void *)a3;
- (id)_fillSampleAtAbsoluteIndex:(unsigned int)a3;
- (id)_gradientAtAbsoluteIndex:(unsigned int)a3;
- (id)_gradientOverlayFromLayerEffectsAtAbsoluteIndex:(unsigned int)a3;
- (id)_imageAtAbsoluteIndex:(unsigned int)a3 isZeroSizeImage:(BOOL *)a4;
- (id)_imageFromSlice:(unsigned int)a3 atAbsoluteIndex:(unsigned int)a4 isEmptyImage:(BOOL *)a5;
- (id)_innerGlowFromLayerEffectsInfo:(void *)a3;
- (id)_innerShadowFromLayerEffectsInfo:(void *)a3;
- (id)_layerEffectsAtAbsoluteIndex:(unsigned int)a3;
- (id)_layerInfo;
- (id)_layerRefAtAbsoluteIndex:(unsigned int)a3;
- (id)_nameAtAbsoluteIndex:(unsigned int)a3;
- (id)_namesOfSublayers:(id)a3;
- (id)_outerGlowFromLayerEffectsInfo:(void *)a3;
- (id)_patternFromSlice:(unsigned int)a3 atAbsoluteIndex:(unsigned int)a4 isZeroSizeImage:(BOOL *)a5;
- (id)colorFromDocumentColor:(double *)a3;
- (id)compositeImage;
- (id)layerNames;
- (id)maskFromCompositeAlphaChannel:(int64_t)a3;
- (id)metadataString;
- (int)_blendModeAtAbsluteIndex:(unsigned int)a3;
- (int)_layerIndexFromLayerNames:(id)a3 indexRangeBegin:(int)a4 indexRangeEnd:(int)a5 isTopLevel:(BOOL)a6;
- (int)cgBlendModeForPSDLayerOrLayerEffectBlendMode:(unsigned int)a3;
- (unsigned)numberOfChannels;
- (unsigned)numberOfLayers;
- (unsigned)numberOfSlices;
- (void)_psdFileWithLayers:(BOOL)a3;
- (void)_psdLayerRecordAtAbsoluteIndex:(unsigned int)a3;
- (void)dealloc;
- (void)enumerateLayersUsingBlock:(id)a3;
- (void)metadataString;
@end

@implementation CUIPSDImageRef

+ (BOOL)isValidPSDResourceAtPath:(id)a3
{
  CPSDFile::CPSDFile(v7);
  FileOptionalLogging = CreateFileOptionalLogging([a3 fileSystemRepresentation], 0, 0);
  if (FileOptionalLogging == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = CPSDFile::ValidateFormat(v7, FileOptionalLogging) != 0;
    CloseHandle(FileOptionalLogging);
  }

  CPSDFile::~CPSDFile(v7);
  return v5;
}

+ (BOOL)isValidPSDResourceAtPath:(id)a3 withLayerCount:(unsigned int *)a4
{
  CPSDFile::CPSDFile(v9);
  FileOptionalLogging = CreateFileOptionalLogging([a3 fileSystemRepresentation], 0, 0);
  if (FileOptionalLogging == -1)
  {
    v7 = 0;
  }

  else
  {
    if (CPSDFile::LoadLayers(v9, FileOptionalLogging))
    {
      *a4 = v10;
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    CloseHandle(FileOptionalLogging);
  }

  CPSDFile::~CPSDFile(v9);
  return v7;
}

+ (BOOL)isValidPSDResourceAtPath:(id)a3 withImageInfo:(_PSDImageInfo *)a4
{
  CPSDFile::CPSDFile(v10);
  FileOptionalLogging = CreateFileOptionalLogging([a3 fileSystemRepresentation], 0, 0);
  if (FileOptionalLogging == -1 || (v7 = CPSDFile::GetImageInfo(v10, FileOptionalLogging, &a4->var1, &a4->var0, &a4->var3, &a4->var2, &a4->var4) == 0, CloseHandle(FileOptionalLogging), v7))
  {
    v8 = 0;
  }

  else
  {
    a4->var5 = CPSDFile::ValidateIsDrawable(v10);
    v8 = 1;
  }

  CPSDFile::~CPSDFile(v10);
  return v8;
}

- (BOOL)openImageFile
{
  path = self->_path;
  if (path)
  {
    if (self->_file != -1)
    {
      CloseHandle(self->_file);
      path = self->_path;
    }

    LODWORD(path) = CreateFile([(NSString *)path fileSystemRepresentation], 0);
    self->_file = path;
    LOBYTE(path) = path != -1;
  }

  return path;
}

- (BOOL)loadPSDFileWithLayers:(BOOL)a3
{
  if (self->_file == -1)
  {
    return 0;
  }

  v3 = a3;
  psd = self->_psd;
  if (psd)
  {
    (*(*psd + 8))(psd, a2);
  }

  v6 = operator new();
  CPSDFile::CPSDFile(v6);
  self->_psd = v6;
  SetFilePointer(self->_file, 0, 0, 0);
  v7 = self->_psd;
  file = self->_file;
  if (v3)
  {
    Layers = CPSDFile::LoadLayers(v7, file);
  }

  else
  {
    Layers = (*(*v7 + 16))(v7, file);
  }

  return Layers != 0;
}

- (CUIPSDImageRef)initWithPath:(id)a3
{
  v16.receiver = self;
  v16.super_class = CUIPSDImageRef;
  v4 = [(CUIPSDImageRef *)&v16 init];
  v15 = 0;
  if ([CUIPSDImageRef isValidPSDResourceAtPath:a3 withLayerCount:&v15])
  {
    v5 = [a3 copy];
    v4->_file = -1;
    v4->_psd = 0;
    v4->_path = v5;
  }

  else
  {
    v6 = __error();
    strerror(*v6);
    _CUILog(4, "[CUIPSDImageRef initWithPath:] - WARNING - invalid or nonexistent file at %@. Image ref not created. '[%s]'", v7, v8, v9, v10, v11, v12, a3);
    v13 = v4;
    return 0;
  }

  return v4;
}

- (void)dealloc
{
  psd = self->_psd;
  if (psd)
  {
    (*(*psd + 8))(psd, a2);
  }

  file = self->_file;
  if (file != -1)
  {
    CloseHandle(file);
  }

  v5.receiver = self;
  v5.super_class = CUIPSDImageRef;
  [(CUIPSDImageRef *)&v5 dealloc];
}

- (void)_psdFileWithLayers:(BOOL)a3
{
  v3 = a3;
  psd = self->_psd;
  if (psd)
  {
    if (a3)
    {
      if (self->_parsedForLayers)
      {
        return self->_psd;
      }
    }

    else if (CPSDFile::HasCompositeImage(psd))
    {
      return self->_psd;
    }
  }

  if (self->_file != -1 || !self->_path || [(CUIPSDImageRef *)self openImageFile])
  {
    if (![(CUIPSDImageRef *)self loadPSDFileWithLayers:v3])
    {
      self->_psd = 0;
    }

    self->_parsedForLayers = v3;
    CloseHandle(self->_file);
    self->_file = -1;
    return self->_psd;
  }

  return 0;
}

- (CGImage)createCompositeCGImage
{
  v3 = [(CUIPSDImageRef *)self psdFileForComposite];
  if (v3)
  {
    CPSDFile::GetCompositeImage(v3);
    if (result)
    {
      v5 = (*(*result + 16))(result);
      return (*(*v5 + 16))(v5);
    }
  }

  else
  {
    file = self->_file;
    if (file == -1)
    {
      return 0;
    }

    else
    {
      CloseHandle(file);
      result = 0;
      self->_file = -1;
    }
  }

  return result;
}

- (id)compositeImage
{
  result = [(CUIPSDImageRef *)self createCompositeCGImage];
  if (result)
  {
    v4 = result;
    v5 = [(CUIPSDImageRef *)self imageFromRef:result];
    CGImageRelease(v4);
    return v5;
  }

  return result;
}

- (id)maskFromCompositeAlphaChannel:(int64_t)a3
{
  v5 = [(CUIPSDImageRef *)self psdFile];
  v6 = *(v5 + 70);
  v7 = *(v5 + 77);
  v8 = 4;
  v9 = 3;
  if (v7 != 3)
  {
    v9 = *(v5 + 70);
  }

  if (v7 != 4)
  {
    v8 = v9;
  }

  if (v7 != 1)
  {
    v7 = v8;
  }

  if (a3 < 1)
  {
    return 0;
  }

  v10 = v7 + a3;
  if (v5[104])
  {
    ++v10;
  }

  if (v10 > v6)
  {
    return 0;
  }

  CPSDFile::GetCompositeImage([(CUIPSDImageRef *)self psdFileForComposite]);
  if (!v11)
  {
    return 0;
  }

  v12 = (*(*v11 + 24))(v11, (v6 - a3));
  v13 = (*(*v12 + 16))(v12);
  if (!v13)
  {
    return 0;
  }

  v14 = [(CUIPSDImageRef *)self imageFromRef:v13];
  CGImageRelease(v13);
  return v14;
}

- (CGRect)boundsForSlice:(unsigned int)a3
{
  v4 = [(CUIPSDImageRef *)self psdFile];
  if (v4)
  {
    v5 = CPSDFile::LookupSliceWithNumber(v4, a3);
    v7 = v5[13];
    v6 = v5[14];
    x = v7;
    y = v6;
    width = (v5[15] - v7);
    height = (v5[16] - v6);
  }

  else
  {
    x = NSZeroRect.origin.x;
    y = NSZeroRect.origin.y;
    width = NSZeroRect.size.width;
    height = NSZeroRect.size.height;
  }

  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (int)_layerIndexFromLayerNames:(id)a3 indexRangeBegin:(int)a4 indexRangeEnd:(int)a5 isTopLevel:(BOOL)a6
{
  v6 = a6;
  v11 = [a3 count];
  if (v11 < 1)
  {
    return -1;
  }

  v12 = v11;
  v13 = [(CUIPSDImageRef *)self psdFile];
  v14 = NewCPSDStringFromNSString([a3 objectAtIndex:0]);
  v15 = 0;
  if (v12 != 1)
  {
    v15 = [a3 subarrayWithRange:{1, v12 - 1}];
  }

  while (1)
  {
    IndexOfFirstLayerNamed = CPSDFile::GetIndexOfFirstLayerNamed(v13, v14, a4, a5);
    if (IndexOfFirstLayerNamed == -1)
    {
      v18 = -1;
LABEL_16:
      if (!v14)
      {
        return v18;
      }

      goto LABEL_19;
    }

    v17 = IndexOfFirstLayerNamed;
    if (!v6 || CPSDFile::GetLayerIndexOfParentGroup(v13, IndexOfFirstLayerNamed) == -1)
    {
      break;
    }

    a4 = v17 + 1;
    v18 = -1;
LABEL_11:
    if (v18 != -1 || a4 > a5)
    {
      goto LABEL_16;
    }
  }

  if (v15)
  {
    v21 = a5;
    v22 = a4;
    CPSDFile::GetRangeOfChildLayers(v13, v17, &v22, &v21);
    v18 = [(CUIPSDImageRef *)self _layerIndexFromLayerNames:v15 indexRangeBegin:v22 indexRangeEnd:v21 isTopLevel:0];
    if (v18 == -1)
    {
      a4 = v17 + 1;
    }

    goto LABEL_11;
  }

  v18 = v17;
  if (!v14)
  {
    return v18;
  }

LABEL_19:
  v19 = *(v14 + 1);
  if (v19)
  {
    MEMORY[0x193AC64A0](v19, 0x1000C80BDFB0063);
    *(v14 + 1) = 0;
  }

  MEMORY[0x193AC64C0](v14, 0x1010C4082113244);
  return v18;
}

- ($EFF4F97A94432FEE0F91D8A1E88572D8)metricsInAlphaChannel:(SEL)a3 forRect:(int64_t)a4
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  result = [(CUIPSDImageRef *)self maskFromCompositeAlphaChannel:a4];
  if (self)
  {

    return [(CUIPSDImageRef *)self metricsInMask:result forRect:x, y, width, height];
  }

  else
  {
    retstr->var1 = 0u;
    retstr->var2 = 0u;
    retstr->var0 = 0u;
  }

  return result;
}

- ($EFF4F97A94432FEE0F91D8A1E88572D8)metricsInMask:(SEL)a3 forRect:(id)a4
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  *retstr = *CSIIllegalMetrics;
  v10 = [a4 image];
  BytesPerRow = CGImageGetBytesPerRow(v10);
  result = CGImageGetHeight(v10);
  v13 = x;
  if ((x & 0x8000000000000000) == 0)
  {
    v14 = (x + width);
    if (BytesPerRow >= v14)
    {
      v15 = y;
      if ((y & 0x8000000000000000) == 0)
      {
        v16 = (y + height);
        if (result >= v16)
        {
          DataProvider = CGImageGetDataProvider(v10);
          result = CGDataProviderCopyData(DataProvider);
          if (result)
          {
            v18 = result;
            BytePtr = CFDataGetBytePtr(result);
            v20 = retstr->var0.width;
            if (v16 > v15)
            {
              v21 = retstr->var1.width;
              v22 = y;
              do
              {
                if (v14 > v13)
                {
                  v23 = 0;
                  v24 = v14 - v13;
                  while (1)
                  {
                    v25 = v24;
                    if (v20 < 0.0)
                    {
                      v25 = v21;
                    }

                    if (v21 >= 0.0)
                    {
                      v25 = v21;
                    }

                    v26 = v23;
                    if (v20 >= 0.0)
                    {
                      v26 = v20;
                    }

                    if (v24 == 1 && v21 < 0.0)
                    {
                      v21 = 0.0;
                    }

                    if (BytePtr[v13 + v22 * BytesPerRow + v23])
                    {
                      v20 = v26;
                    }

                    else
                    {
                      v21 = v25;
                    }

                    if (v20 >= 0.0 && v21 >= 0.0)
                    {
                      break;
                    }

                    ++v23;
                    if (!--v24)
                    {
                      goto LABEL_29;
                    }
                  }

                  v22 = (y + height);
                }

LABEL_29:
                ++v22;
              }

              while (v22 < v16);
              retstr->var1.width = v21;
            }

            retstr->var0.width = v20;
            if (v20 >= 0.0)
            {
              v28 = (v20 + v13);
              if (v28 < v14)
              {
                v29 = retstr->var1.height;
                v30 = retstr->var0.height;
                do
                {
                  if (v16 > v15)
                  {
                    v31 = 0;
                    v32 = v16 - v15;
                    v33 = &BytePtr[BytesPerRow * v15];
                    while (1)
                    {
                      v34 = v32;
                      if (v30 >= 0.0)
                      {
                        v34 = v30;
                      }

                      if (v29 < 0.0)
                      {
                        v34 = v30;
                      }

                      v35 = v31;
                      if (v29 >= 0.0)
                      {
                        v35 = v29;
                      }

                      if (v32 == 1 && v30 < 0.0)
                      {
                        v30 = 0.0;
                      }

                      if (v33[v28])
                      {
                        v29 = v35;
                      }

                      else
                      {
                        v30 = v34;
                      }

                      if (v30 >= 0.0 && v29 >= 0.0)
                      {
                        break;
                      }

                      v33 += BytesPerRow;
                      ++v31;
                      if (!--v32)
                      {
                        goto LABEL_55;
                      }
                    }

                    v28 = (x + width);
                  }

LABEL_55:
                  ++v28;
                }

                while (v28 < v14);
                retstr->var1.height = v29;
                retstr->var0.height = v30;
              }
            }

            var1 = retstr->var1;
            v38.f64[0] = v20;
            v38.f64[1] = retstr->var0.height;
            if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgezq_f64(v38), vcgezq_f64(var1))))))
            {
              retstr->var0 = *CSIIllegalMetrics;
              retstr->var1 = *&CSIIllegalMetrics[16];
              retstr->var2 = *&CSIIllegalMetrics[32];
            }

            else
            {
              v39 = height - var1.height - retstr->var0.height;
              retstr->var2.width = width - var1.width - v20;
              retstr->var2.height = v39;
            }

            CFRelease(v18);
          }
        }
      }
    }
  }

  return result;
}

- (CGColorSpace)copyColorSpace
{
  v2 = [(CUIPSDImageRef *)self psdFile];
  if (!CPSDFile::IsTaggedWithICCProfile(v2))
  {
    return 0;
  }

  v3 = v2[77];
  if (v3 != 1)
  {
    if (v3 == 4)
    {
      v3 = 4;
    }

    else if (v3 == 3)
    {
      v3 = 3;
    }

    else
    {
      v3 = v2[70];
    }
  }

  ICCProfile = CPSDFile::GetICCProfile(v2);
  v6 = (*(*ICCProfile + 56))(ICCProfile);
  v7 = (*(*ICCProfile + 48))(ICCProfile);
  v8 = CGDataProviderCreateWithData(0, v6, v7, 0);
  ICCBased = CGColorSpaceCreateICCBased(v3, 0, v8, 0);
  CGDataProviderRelease(v8);
  return ICCBased;
}

- (_PSDImageInfo)imageInfo
{
  CPSDFile::CPSDFile(v11);
  bzero(retstr, 0x14uLL);
  file = self->_file;
  if (file == -1)
  {
    if (![(CUIPSDImageRef *)self openImageFile])
    {
      goto LABEL_16;
    }

    file = self->_file;
  }

  CPSDFile::GetImageInfo(v11, file, &retstr->var1, &retstr->var0, &retstr->var3, &retstr->var2, &retstr->var4);
  v6 = self->_file;
  if (v6 != -1)
  {
    CloseHandle(v6);
    self->_file = -1;
  }

  v9 = retstr->var2 == 3 && retstr->var3 == 8 && retstr->var4 == 4;
  retstr->var5 = v9;
LABEL_16:
  CPSDFile::~CPSDFile(v11);
  return result;
}

- (unsigned)numberOfLayers
{
  v2 = [(CUIPSDImageRef *)self _layerInfo];

  return [v2 numberOfSublayers];
}

- (unsigned)numberOfSlices
{
  v2 = [(CUIPSDImageRef *)self psdFile];
  if (v2)
  {
    LODWORD(v2) = CPSDFile::GetSliceCount(v2);
  }

  if (v2 <= 2)
  {
    LODWORD(v2) = 2;
  }

  return v2;
}

- (unsigned)numberOfChannels
{
  v2 = [(CUIPSDImageRef *)self psdFile];
  if (v2)
  {
    LODWORD(v2) = v2[70];
  }

  return v2;
}

- (id)layerNames
{
  v3 = [(CUIPSDImageRef *)self _layerInfo];

  return [(CUIPSDImageRef *)self _namesOfSublayers:v3];
}

- (id)metadataString
{
  result = [(CUIPSDImageRef *)self psdFile];
  v5 = 0;
  v4 = 0;
  if (result)
  {
    if (CPSDFile::GetXMPMetadataString(result, &v5, &v4))
    {
      v3 = [NSString alloc];
      return [v3 initWithBytes:v5 length:v4 encoding:4];
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (CGSize)size
{
  if (self)
  {
    [(CUIPSDImageRef *)self imageInfo];
    LODWORD(v3) = 0;
    LODWORD(v2) = 0;
    v4 = v2;
    v5 = v3;
  }

  else
  {
    v5 = 0.0;
    v4 = 0.0;
  }

  result.height = v5;
  result.width = v4;
  return result;
}

- (id)_layerInfo
{
  result = self->_rootLayers;
  if (!result)
  {
    result = [(CUIPSDImageRef *)self _copySublayerInfoAtAbsoluteIndex:0 atRoot:1];
    self->_rootLayers = result;
  }

  return result;
}

- (void)_psdLayerRecordAtAbsoluteIndex:(unsigned int)a3
{
  v4 = [(CUIPSDImageRef *)self psdFile];
  if (!v4 || v4[134] <= a3)
  {
    return 0;
  }

  return CPSDFile::GetLayerRecord(v4, a3);
}

- (id)_layerRefAtAbsoluteIndex:(unsigned int)a3
{
  v3 = *&a3;
  result = [(CUIPSDImageRef *)self psdFile];
  if (result)
  {
    if (*(result + 134) <= v3)
    {
      return 0;
    }

    else
    {
      v9 = 0;
      IsSectionDivider = CPSDFile::GetLayerIsSectionDivider(result, v3, &v9);
      if (v9)
      {
        v7 = IsSectionDivider == 0;
      }

      else
      {
        v7 = 1;
      }

      v8 = OBJC_CLASS___CUIPSDLayerGroupRef_ptr;
      if (v7)
      {
        v8 = OBJC_CLASS___CUIPSDLayerRef_ptr;
      }

      return [objc_alloc(*v8) initWithImageRef:self layerIndex:v3];
    }
  }

  return result;
}

- (id)_copySublayerInfoAtAbsoluteIndex:(unsigned int)a3 atRoot:(BOOL)a4
{
  v7 = [(CUIPSDImageRef *)self psdFile];
  if (v7)
  {
    v8 = [(CUIPSDImageRef *)self _treatDividerAsLayer];
    v16 = 0;
    v15 = 0;
    if (a4)
    {
      v9 = v7[134];
      a3 = v9;
    }

    else
    {
      if (CPSDFile::GetLayerIsSectionDivider(v7, a3, &v16) && !v16 || CPSDFile::GetLayerSectionDividerType(v7, a3, &v15) && v15 - 3 < 0xFFFFFFFE)
      {
        return 0;
      }

      v9 = v7[134];
    }

    v10 = a3 - 1;
    if (v10 < v9)
    {
      v11 = objc_alloc_init(NSMutableIndexSet);
      v12 = 1;
      while (1)
      {
        CPSDFile::GetLayerIsSectionDivider(v7, v10, &v16);
        if ((v16 == 0) | v8 & 1)
        {
          break;
        }

        CPSDFile::GetLayerSectionDividerType(v7, v10, &v15);
        if (v15 - 1 <= 1)
        {
          if (v12 == 1)
          {
            [v11 addIndex:v10];
          }

          ++v12;
LABEL_13:
          v13 = 1;
          if (!v10)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

        v13 = v15 != 3 || v12 > 1;
        if (v15 == 3)
        {
          v12 -= v12 > 1;
        }

        if (!v10)
        {
LABEL_22:
          v7 = +[_CUIPSDSublayerInfo newWithSublayerCount:indexSet:](_CUIPSDSublayerInfo, "newWithSublayerCount:indexSet:", [v11 count], v11);

          return v7;
        }

LABEL_21:
        --v10;
        if (!v13)
        {
          goto LABEL_22;
        }
      }

      if (v12 == 1)
      {
        [v11 addIndex:v10];
      }

      goto LABEL_13;
    }

    return 0;
  }

  return v7;
}

- (id)_nameAtAbsoluteIndex:(unsigned int)a3
{
  result = [(CUIPSDImageRef *)self psdFile];
  if (result)
  {
    v5 = result;
    if (*(result + 134) <= a3)
    {
      return 0;
    }

    else
    {
      v9 = 0;
      UnicodeLayerName = CPSDLayerRecord::GetUnicodeLayerName((*(result + 34) + 488 * a3), &v9);
      if (UnicodeLayerName)
      {
        v7 = UnicodeLayerName;
        v8 = [NSString alloc];
        return [v8 initWithCharacters:v7 length:v9];
      }

      else if (*(v5 + 134) > a3 && CPSDLayerRecord::GetLayerName((v5[34] + 488 * a3), v10, 0x100u))
      {
        return [NSString stringWithCString:v10 encoding:30];
      }

      else
      {
        return &stru_1F00D74D0;
      }
    }
  }

  return result;
}

- (id)_namesOfSublayers:(id)a3
{
  v4 = [(CUIPSDImageRef *)self psdFile];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = [a3 numberOfSublayers];
  v7 = [NSMutableArray arrayWithCapacity:v6];
  if (v6)
  {
    v8 = 0;
    while (1)
    {
      v19 = 0;
      v9 = [a3 sublayerAtIndex:v8 isValid:&v19];
      if (v19 == 1)
      {
        break;
      }

LABEL_15:
      v8 = (v8 + 1);
      if (v6 == v8)
      {
        return v7;
      }
    }

    v10 = v9;
    v18 = 0;
    v11 = *(v5 + 134);
    if (v9 < v11)
    {
      UnicodeLayerName = CPSDLayerRecord::GetUnicodeLayerName((v5[34] + 488 * v9), &v18);
      if (UnicodeLayerName)
      {
        v13 = UnicodeLayerName;
        v14 = [NSString alloc];
        v15 = [v14 initWithCharacters:v13 length:v18];
        goto LABEL_12;
      }

      v11 = *(v5 + 134);
    }

    if (v10 >= v11 || !CPSDLayerRecord::GetLayerName((v5[34] + 488 * v10), v20, 0x100u))
    {
      v16 = &stru_1F00D74D0;
      goto LABEL_14;
    }

    v15 = [NSString stringWithCString:v20 encoding:30];
LABEL_12:
    v16 = v15;
LABEL_14:
    [(NSMutableArray *)v7 addObject:v16];

    goto LABEL_15;
  }

  return v7;
}

- (CGRect)_boundsAtAbsoluteIndex:(unsigned int)a3
{
  v4 = [(CUIPSDImageRef *)self psdFile];
  if (v4 && v4[134] > a3 && CPSDFile::GetLayerBounds(v4, a3, &v11))
  {
    v5 = vsub_s32(v11.u64[1], *v11.i8);
    v6.i64[0] = v5.i32[0];
    v6.i64[1] = v5.i32[1];
    size = vcvtq_f64_s64(v6);
    v6.i64[0] = v11.i32[0];
    v6.i64[1] = v11.i32[1];
    origin = vcvtq_f64_s64(v6);
  }

  else
  {
    origin = NSZeroRect.origin;
    size = NSZeroRect.size;
  }

  y = origin.y;
  height = size.height;
  result.size.width = size.width;
  result.origin.x = origin.x;
  result.size.height = height;
  result.origin.y = y;
  return result;
}

- (BOOL)_visibilityAtAbsoluteIndex:(unsigned int)a3
{
  v4 = [(CUIPSDImageRef *)self psdFile];
  if (v4)
  {
    if (v4[134] <= a3)
    {
      LOBYTE(v4) = 0;
    }

    else
    {
      LOBYTE(v6) = 0;
      CPSDFile::GetLayerIsVisible(v4, a3, &v6);
      LOBYTE(v4) = v6 != 0;
    }
  }

  return v4;
}

- (double)_opacityAtAbsoluteIndex:(unsigned int)a3
{
  v4 = [(CUIPSDImageRef *)self psdFile];
  v5 = 0.0;
  if (v4 && v4[134] > a3)
  {
    v8[0] = 0;
    CPSDFile::GetLayerOpacity(v4, a3, v8);
    LOBYTE(v6) = v8[0];
    return v6 / 255.0;
  }

  return v5;
}

- (double)_fillOpacityAtAbsoluteIndex:(unsigned int)a3
{
  v4 = [(CUIPSDImageRef *)self psdFile];
  v5 = 1.0;
  if (v4 && v4[134] > a3)
  {
    v8[0] = 0;
    if (CPSDFile::GetLayerFillOpacity(v4, a3, v8))
    {
      LOBYTE(v6) = v8[0];
      return v6 / 255.0;
    }

    else
    {
      return 0.0;
    }
  }

  return v5;
}

- (int)_blendModeAtAbsluteIndex:(unsigned int)a3
{
  v5 = [(CUIPSDImageRef *)self psdFile];
  if (v5)
  {
    if (v5[134] <= a3)
    {
      LODWORD(v5) = 0;
    }

    else
    {
      LODWORD(v7) = 0;
      CPSDFile::GetLayerBlendMode(v5, a3, &v7);
      LODWORD(v5) = [(CUIPSDImageRef *)self cgBlendModeForPSDLayerOrLayerEffectBlendMode:v7];
    }
  }

  return v5;
}

- (CGImage)_copyCGImageAtAbsoluteIndex:(unsigned int)a3
{
  v5 = [(CUIPSDImageRef *)self psdFile];
  if (v5 && v5[134] > a3)
  {
    CPSDLayerInfo::CreateImageAtLayer((v5 + 124), a3);
    v7 = (*(*v6 + 16))(v6);
    v8 = (*(*v7 + 16))(v7);
  }

  else
  {
    v8 = 0;
  }

  file = self->_file;
  p_file = &self->_file;
  v9 = file;
  if (file != -1)
  {
    CloseHandle(v9);
    *p_file = -1;
  }

  return v8;
}

- (id)_imageAtAbsoluteIndex:(unsigned int)a3 isZeroSizeImage:(BOOL *)a4
{
  result = [(CUIPSDImageRef *)self _copyCGImageAtAbsoluteIndex:*&a3];
  if (result)
  {
    v7 = result;
    if (CGImageGetWidth(result))
    {
      v8 = CGImageGetHeight(v7) == 0;
      if (!a4)
      {
LABEL_5:
        v9 = [(CUIPSDImageRef *)self imageFromRef:v7];
        CGImageRelease(v7);
        return v9;
      }
    }

    else
    {
      v8 = 1;
      if (!a4)
      {
        goto LABEL_5;
      }
    }

    *a4 = v8;
    goto LABEL_5;
  }

  return result;
}

- (id)_imageFromSlice:(unsigned int)a3 atAbsoluteIndex:(unsigned int)a4 isEmptyImage:(BOOL *)a5
{
  v9 = [(CUIPSDImageRef *)self psdFile];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = v9[134];
  SliceCount = CPSDFile::GetSliceCount(v9);
  if (v11 <= a4)
  {
    return 0;
  }

  if (SliceCount)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0;
  }

  v14 = CPSDFile::LookupSliceWithNumber(v10, v13);
  CPSDLayerInfo::CreateImageAtLayerWithSlice((v10 + 124), a4, v14);
  v16 = v15;
  v17 = (*(*v15 + 16))(v15);
  v18 = (*(*v17 + 16))(v17);
  if (!v18)
  {
    v20 = v17[1];
    if (v20 && *(v20 + 8))
    {
      v21 = *(v20 + 12) == 0;
      if (!a5)
      {
        return 0;
      }
    }

    else
    {
      v21 = 1;
      if (!a5)
      {
        return 0;
      }
    }

    v19 = 0;
    *a5 = v21;
    return v19;
  }

  if (a5)
  {
    *a5 = CPSDLayerSliceImage::IsEmptyImage(v16) != 0;
  }

  v19 = [(CUIPSDImageRef *)self imageFromRef:v18];
  CGImageRelease(v18);
  return v19;
}

- (id)_patternFromSlice:(unsigned int)a3 atAbsoluteIndex:(unsigned int)a4 isZeroSizeImage:(BOOL *)a5
{
  v8 = [(CUIPSDImageRef *)self psdFile];
  v9 = v8;
  if (v8)
  {
    v10 = v8[134];
    SliceCount = CPSDFile::GetSliceCount(v8);
    if (v10 > a4)
    {
      if (SliceCount)
      {
        v12 = a3;
      }

      else
      {
        v12 = 0;
      }

      v13 = CPSDFile::LookupSliceWithNumber(v9, v12);
      CPSDLayerInfo::CreateImageAtLayerWithSlice(&v9[7]._alpha, a4, v13);
      v15 = (*(*v14 + 16))(v14);
      v16 = (*(*v15 + 16))(v15);
      if (v16)
      {
        v9 = [[CUIPattern alloc] initWithImageRef:v16];
        CGImageRelease(v16);
        return v9;
      }

      v17 = v15[1];
      if (v17 && *(v17 + 8))
      {
        v18 = *(v17 + 12) == 0;
        if (!a5)
        {
          return 0;
        }

LABEL_13:
        v9 = 0;
        *a5 = v18;
        return v9;
      }

      v18 = 1;
      if (a5)
      {
        goto LABEL_13;
      }
    }

    return 0;
  }

  return v9;
}

- (id)_createMaskFromSlice:(unsigned int)a3 atAbsoluteIndex:(unsigned int)a4
{
  v7 = [(CUIPSDImageRef *)self psdFile];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = v7[134];
  SliceCount = CPSDFile::GetSliceCount(v7);
  if (v9 <= a4)
  {
    return 0;
  }

  v11 = SliceCount ? a3 : 0;
  v12 = CPSDFile::LookupSliceWithNumber(v8, v11);
  CPSDLayerInfo::CreateImageAtLayerWithSlice((v8 + 124), a4, v12);
  v14 = (*(*v13 + 24))(v13, 0);
  v15 = (*(*v14 + 16))(v14);
  if (!v15)
  {
    return 0;
  }

  v16 = [(CUIPSDImageRef *)self imageFromRef:v15];
  CGImageRelease(v15);
  return v16;
}

- (id)_fillSampleAtAbsoluteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(CUIPSDImageRef *)self createCGImageAtLayer:?];
  [(CUIPSDImageRef *)self boundsAtLayer:v3];
  if (!v5)
  {
    return 0;
  }

  if (rint(v6) == 0.0 || rint(v7) == 0.0)
  {
    CGImageRelease(v5);
    return 0;
  }

  CPSDLayerInfo::CreateImageAtLayer(([(CUIPSDImageRef *)self psdFile]+ 248), v3);
  v9 = v8;
  v10 = *(v8 + 16);
  v11 = *(v8 + 24);
  v12 = [(CUIPSDImageRef *)self copyColorSpace];
  if (v12)
  {
    SRGB = v12;
    CFAutorelease(v12);
  }

  else
  {
    SRGB = _CUIColorSpaceGetSRGB();
  }

  v15 = v10 >> 3;
  v16 = malloc_type_calloc(v10 >> 3, 1uLL, 0x100004077774924uLL);
  v17 = CGBitmapContextCreate(v16, 1uLL, 1uLL, 8uLL, v15, SRGB, 2u);
  v28.origin.x = 0.0;
  v28.origin.y = 0.0;
  v28.size.width = 1.0;
  v28.size.height = 1.0;
  CGContextDrawImage(v17, v28, v5);
  CGImageRelease(v5);
  Data = CGBitmapContextGetData(v17);
  v19 = operator new[]();
  v21 = v19;
  if (v11 >= 2)
  {
    v22 = Data + 1;
    v23 = v11 - 1;
    v20 = 0x406FE00000000000;
    v24 = v19;
    do
    {
      v25 = *v22++;
      *v24++ = v25 / 255.0;
      --v23;
    }

    while (v23);
  }

  LOBYTE(v20) = *Data;
  v19[v11 - 1] = v20 / 255.0;
  v26 = CGColorCreate(SRGB, v19);
  CGContextRelease(v17);
  free(v16);
  MEMORY[0x193AC64A0](v21, 0x1000C8000313F17);
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  if (v26)
  {
    v14 = [CUIColor colorWithCGColor:v26];
  }

  else
  {
    v14 = 0;
  }

  CGColorRelease(v26);
  return v14;
}

- (int)cgBlendModeForPSDLayerOrLayerEffectBlendMode:(unsigned int)a3
{
  result = 0;
  if (a3 > 1668246641)
  {
    if (a3 > 1818518630)
    {
      if (a3 > 1870030193)
      {
        if (a3 > 1935766559)
        {
          if (a3 == 1935766560)
          {
            return 13;
          }

          if (a3 != 1935897198)
          {
            v4 = 1936553316;
LABEL_14:
            if (a3 == v4)
            {
              return 11;
            }

            return result;
          }

          return 2;
        }

        if (a3 != 1870030194)
        {
          if (a3 != 1934387572)
          {
            return result;
          }

          return 8;
        }

        return 3;
      }

      if (a3 > 1819634975)
      {
        if (a3 == 1819634976)
        {
          return 15;
        }

        v9 = 1836411936;
        goto LABEL_43;
      }

      if (a3 == 1818518631)
      {
        return 27;
      }

      v7 = 1818850405;
      goto LABEL_60;
    }

    if (a3 <= 1749838195)
    {
      if (a3 > 1684629093)
      {
        if (a3 != 1684629094)
        {
          v5 = 1684633120;
LABEL_56:
          if (a3 == v5)
          {
            return 6;
          }

          return result;
        }

        return 10;
      }

      if (a3 == 1668246642)
      {
        return 14;
      }

      if (a3 != 1684107883)
      {
        return result;
      }

      return 4;
    }

    if (a3 > 1768188277)
    {
      if (a3 != 1768188278)
      {
        v6 = 1818391150;
LABEL_64:
        if (a3 == v6)
        {
          return 26;
        }

        return result;
      }

      return 7;
    }

    if (a3 != 1749838196)
    {
      v8 = 1752524064;
LABEL_37:
      if (a3 == v8)
      {
        return 12;
      }

      return result;
    }

    return 9;
  }

  if (a3 > 1282240114)
  {
    if (a3 > 1333162603)
    {
      if (a3 > 1399223371)
      {
        if (a3 != 1399223372)
        {
          if (a3 != 1400140404)
          {
            v4 = 1482910837;
            goto LABEL_14;
          }

          return 13;
        }

        return 8;
      }

      if (a3 != 1333162604)
      {
        if (a3 != 1399026286)
        {
          return result;
        }

        return 2;
      }

      return 3;
    }

    if (a3 <= 1282240117)
    {
      if (a3 != 1282240115)
      {
        v6 = 1282240116;
        goto LABEL_64;
      }

      return 15;
    }

    if (a3 != 1282240118)
    {
      v9 = 1298953328;
LABEL_43:
      if (a3 == v9)
      {
        return 1;
      }

      return result;
    }

    return 27;
  }

  if (a3 <= 1148349293)
  {
    if (a3 <= 1131180575)
    {
      if (a3 != 1128428142)
      {
        v5 = 1128555623;
        goto LABEL_56;
      }

      return 7;
    }

    if (a3 != 1131180576)
    {
      if (a3 != 1147564654)
      {
        return result;
      }

      return 10;
    }

    return 14;
  }

  if (a3 <= 1215456331)
  {
    if (a3 != 1148349294)
    {
      v8 = 1210064928;
      goto LABEL_37;
    }

    return 4;
  }

  if (a3 == 1215456332)
  {
    return 9;
  }

  v7 = 1281845358;
LABEL_60:
  if (a3 == v7)
  {
    return 5;
  }

  return result;
}

- (id)_gradientAtAbsoluteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(CUIPSDImageRef *)self psdFile];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v72 = 0;
  LayerGradientStyle = CPSDFile::GetLayerGradientStyle(v5, v3, &v72);
  if (!LayerGradientStyle && !CPSDFile::GetLayerEffectGradientStyle(v6, v3, &v72))
  {
    return 0;
  }

  v70 = 0.0;
  v71 = 0.0;
  v68 = 1.0;
  *v69 = 0;
  *v67 = 0;
  v66 = 0;
  if (!LayerGradientStyle)
  {
    if (CPSDFile::GetLayerEffectGradientAngle(v6, v3, &v71) && CPSDFile::GetLayerEffectGradientSmoothing(v6, v3, &v70))
    {
      v8 = 0;
      if (!CPSDFile::GetLayerEffectGradientColorStopCount(v6, v3, &v69[1]) || !v69[1])
      {
        return v8;
      }

      if (CPSDFile::GetLayerEffectGradientOpacityStopCount(v6, v3, v69) && CPSDFile::GetLayerEffectOpacity(v6, v3, &v68) && CPSDFile::GetLayerEffectGradientBlendMode(v6, v3, &v66))
      {
        v68 = v68 / 100.0;
        v36 = [-[CUIPSDImageRef fillSampleAtLayer:](self fillSampleAtLayer:{v3), "CGColor"}];
        if (v36)
        {
          Components = CGColorGetComponents(v36);
          v11 = *Components;
          v10 = Components[1];
          v9 = Components[2];
        }

        else
        {
          v9 = 0.0;
          v10 = 0.0;
          v11 = 0.0;
        }

        v73[0] = 0;
        if (CPSDFile::GetLayerFillOpacity(v6, v3, v73))
        {
          LOBYTE(v59) = v73[0];
          v61 = v59 / 255.0;
          CPSDFile::GetLayerEffectGradientIsReversed(v6, v3, v67);
          goto LABEL_12;
        }
      }
    }

    return 0;
  }

  if (!CPSDFile::GetLayerGradientAngle(v6, v3, &v71) || !CPSDFile::GetLayerGradientSmoothing(v6, v3, &v70))
  {
    return 0;
  }

  v8 = 0;
  if (!CPSDFile::GetLayerGradientColorStopCount(v6, v3, &v69[1]) || !v69[1])
  {
    return v8;
  }

  if (!CPSDFile::GetLayerGradientOpacityStopCount(v6, v3, v69) || !CPSDFile::GetLayerGradientBlendMode(v6, v3, &v66))
  {
    return 0;
  }

  CPSDFile::GetLayerGradientIsReversed(v6, v3, v67);
  CPSDFile::GetLayerGradientIsDithered(v6, v3, &v67[1]);
  v61 = 0.0;
  v9 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
LABEL_12:
  v62 = v9;
  if (v67[0])
  {
    v71 = remainder(v71 + 180.0, 360.0);
  }

  v12 = [NSMutableArray alloc];
  v13 = [v12 initWithCapacity:v69[1]];
  v14 = [NSMutableArray alloc];
  v63 = [v14 initWithCapacity:v69[1]];
  if (v69[1])
  {
    v15 = 0;
    do
    {
      *v73 = xmmword_18E021538;
      v74 = unk_18E021548;
      v64 = 0.0;
      v65 = 0.0;
      if (LayerGradientStyle)
      {
        if (!CPSDFile::GetLayerGradientColorStopAtIndex(v6, v3, v15, v73, &v65, &v64))
        {
          break;
        }
      }

      else if (!CPSDFile::GetLayerEffectGradientColorStopAtIndex(v6, v3, v15, v73, &v65, &v64))
      {
        break;
      }

      v16 = *v73 / 255.0;
      v17 = *&v73[8] / 255.0;
      v18 = v68;
      v19 = *&v74 / 255.0;
      v20 = [v13 lastObject];
      if (v20 && (v21 = v20, ([v20 isDoubleStop] & 1) == 0) && (v22 = v65, objc_msgSend(v21, "colorLocation"), v22 - v23 <= 0.01001))
      {
        [v21 colorLocation];
        v29 = v28;
        v30 = v65;
        if (fmod(v65 * 100.0, 5.0) != 0.0)
        {
          if (fmod(v29 * 100.0, 5.0) == 0.0)
          {
            v30 = v29;
          }

          else
          {
            v30 = (v29 + v30) * 0.5;
          }
        }

        v31 = [CUIPSDGradientDoubleColorStop alloc];
        [v21 gradientColor];
        v25 = [(CUIPSDGradientDoubleColorStop *)v31 initWithLocation:v30 leadInColor:v32 leadOutColor:v33, v34, v35, *&v16, *&v17, *&v19, *&v18];
        [v13 removeLastObject];
        v27 = 0;
      }

      else
      {
        v24 = [CUIPSDGradientColorStop alloc];
        v25 = [(CUIPSDGradientColorStop *)v24 initWithLocation:v65 gradientColor:v16, v17, v19, v18];
        v26 = [NSNumber alloc];
        v27 = [v26 initWithDouble:v64];
        [v63 addObject:v27];
      }

      [v13 addObject:v25];

      ++v15;
    }

    while (v15 < v69[1]);
  }

  v69[1] = [v13 count];
  if (v69[1])
  {
    [v63 removeObjectAtIndex:0];
  }

  v38 = [NSMutableArray alloc];
  v39 = [v38 initWithCapacity:v69[0]];
  v40 = [NSMutableArray alloc];
  v41 = [v40 initWithCapacity:v69[0]];
  if (v69[0])
  {
    v42 = 0;
    do
    {
      *v73 = 0;
      v64 = 0.0;
      v65 = 0.0;
      if (LayerGradientStyle)
      {
        if (!CPSDFile::GetLayerGradientOpacityStopAtIndex(v6, v3, v42, v73, &v65, &v64))
        {
          break;
        }
      }

      else if (!CPSDFile::GetLayerEffectGradientOpacityStopAtIndex(v6, v3, v42, v73, &v65, &v64))
      {
        break;
      }

      *v73 = *v73 / 100.0;
      v43 = [v39 lastObject];
      if (!v43 || (v44 = v43, ([v43 isDoubleStop] & 1) != 0) || (v45 = v65, objc_msgSend(v44, "opacityLocation"), v45 - v46 >= 0.01001))
      {
        v54 = [CUIPSDGradientOpacityStop alloc];
        v52 = [(CUIPSDGradientOpacityStop *)v54 initWithLocation:v65 opacity:*v73];
        v55 = [NSNumber alloc];
        v53 = [v55 initWithDouble:v64];
        [v41 addObject:v53];
      }

      else
      {
        [v44 opacityLocation];
        v48 = v47;
        v49 = v65;
        if (fmod(v65 * 100.0, 5.0) != 0.0)
        {
          if (fmod(v48 * 100.0, 5.0) == 0.0)
          {
            v49 = v48;
          }

          else
          {
            v49 = (v48 + v49) * 0.5;
          }
        }

        v50 = [CUIPSDGradientDoubleOpacityStop alloc];
        [v44 opacity];
        v52 = [(CUIPSDGradientDoubleOpacityStop *)v50 initWithLocation:v49 leadInOpacity:v51 leadOutOpacity:*v73];
        [v39 removeLastObject];
        v53 = 0;
      }

      [v39 addObject:v52];

      ++v42;
    }

    while (v42 < v69[0]);
  }

  v69[0] = [v39 count];
  if (v69[0])
  {
    [v41 removeObjectAtIndex:0];
  }

  v56 = [CUIPSDGradientEvaluator alloc];
  v57 = [(CUIPSDGradientEvaluator *)v56 initWithColorStops:v13 colorMidpoints:v63 opacityStops:v39 opacityMidpoints:v41 smoothingCoefficient:v67[1] != 0 fillColor:v70 dither:v11, v10, v62, v61];
  [(CUIPSDGradientEvaluator *)v57 setBlendMode:[(CUIPSDImageRef *)self cgBlendModeForPSDLayerOrLayerEffectBlendMode:v66]];

  v58 = [CUIPSDGradient alloc];
  v8 = [(CUIPSDGradient *)v58 initWithEvaluator:v57 drawingAngle:v72 gradientStyle:v71];

  return v8;
}

- (id)colorFromDocumentColor:(double *)a3
{
  GenericRGB = _CUIColorSpaceGetGenericRGB();
  v8 = vdivq_f64(*a3, vdupq_n_s64(0x406FE00000000000uLL));
  v9 = a3[2] / 255.0;
  v10 = 0x3FF0000000000000;
  v5 = CGColorCreate(GenericRGB, v8.f64);
  v6 = [CUIColor colorWithCGColor:v5];
  CGColorRelease(v5);
  return v6;
}

- (id)_dropShadowFromLayerEffectsInfo:(void *)a3
{
  result = [(CUIPSDImageRef *)self psdFile];
  if (result)
  {
    v6 = result;
    result = CPSDObjectEffectsLayerInfo::GetEffect(a3, 1148343144);
    if (result)
    {
      v7 = result;
      v8 = objc_alloc_init(CUIPSDLayerEffectDropShadow);
      [(CUIPSDLayerEffectDropShadow *)v8 setColor:[(CUIPSDImageRef *)self colorFromDocumentColor:v10, CPSDDropShadowDescriptor::GetColor(v7, v10)]];
      [(CUIPSDLayerEffectDropShadow *)v8 setOpacity:CPSDDropShadowDescriptor::GetOpacity(v7) / 100.0];
      [(CUIPSDLayerEffectDropShadow *)v8 setBlendMode:[(CUIPSDImageRef *)self cgBlendModeForPSDLayerOrLayerEffectBlendMode:CPSDDropShadowDescriptor::GetBlendMode(v7)]];
      [(CUIPSDLayerEffectDropShadow *)v8 setBlurSize:rint(CPSDDropShadowDescriptor::GetBlurSize(v7))];
      [(CUIPSDLayerEffectDropShadow *)v8 setSpread:rint(CPSDDropShadowDescriptor::GetSpread(v7))];
      [(CUIPSDLayerEffectDropShadow *)v8 setDistance:rint(CPSDDropShadowDescriptor::GetDistance(v7))];
      if (CPSDDropShadowDescriptor::UseGlobalLightAngle(v7))
      {
        GlobalLightAngle = CPSDFile::GetGlobalLightAngle(v6);
      }

      else
      {
        GlobalLightAngle = rint(CPSDDropShadowDescriptor::GetAngle(v7));
      }

      [(CUIPSDLayerEffectDropShadow *)v8 setAngle:GlobalLightAngle];
      [(CUIPSDLayerEffectComponent *)v8 setVisible:CPSDDropShadowDescriptor::GetIsEnabled(v7) != 0];
      return v8;
    }
  }

  return result;
}

- (id)_innerShadowFromLayerEffectsInfo:(void *)a3
{
  result = [(CUIPSDImageRef *)self psdFile];
  if (result)
  {
    v6 = result;
    result = CPSDObjectEffectsLayerInfo::GetEffect(a3, 1232229224);
    if (result)
    {
      v7 = result;
      v8 = objc_alloc_init(CUIPSDLayerEffectInnerShadow);
      [(CUIPSDLayerEffectInnerShadow *)v8 setColor:[(CUIPSDImageRef *)self colorFromDocumentColor:v10, CPSDDropShadowDescriptor::GetColor(v7, v10)]];
      [(CUIPSDLayerEffectInnerShadow *)v8 setOpacity:CPSDDropShadowDescriptor::GetOpacity(v7) / 100.0];
      [(CUIPSDLayerEffectInnerShadow *)v8 setBlendMode:[(CUIPSDImageRef *)self cgBlendModeForPSDLayerOrLayerEffectBlendMode:CPSDDropShadowDescriptor::GetBlendMode(v7)]];
      [(CUIPSDLayerEffectInnerShadow *)v8 setBlurSize:rint(CPSDDropShadowDescriptor::GetBlurSize(v7))];
      [(CUIPSDLayerEffectInnerShadow *)v8 setDistance:rint(CPSDDropShadowDescriptor::GetDistance(v7))];
      if (CPSDDropShadowDescriptor::UseGlobalLightAngle(v7))
      {
        GlobalLightAngle = CPSDFile::GetGlobalLightAngle(v6);
      }

      else
      {
        GlobalLightAngle = rint(CPSDDropShadowDescriptor::GetAngle(v7));
      }

      [(CUIPSDLayerEffectInnerShadow *)v8 setAngle:GlobalLightAngle];
      [(CUIPSDLayerEffectComponent *)v8 setVisible:CPSDDropShadowDescriptor::GetIsEnabled(v7) != 0];
      return v8;
    }
  }

  return result;
}

- (id)_innerGlowFromLayerEffectsInfo:(void *)a3
{
  result = [(CUIPSDImageRef *)self psdFile];
  if (result)
  {
    result = CPSDObjectEffectsLayerInfo::GetEffect(a3, 1232226156);
    if (result)
    {
      v6 = result;
      v7 = objc_alloc_init(CUIPSDLayerEffectInnerGlow);
      [(CUIPSDLayerEffectInnerGlow *)v7 setColor:[(CUIPSDImageRef *)self colorFromDocumentColor:v8, CPSDDropShadowDescriptor::GetColor(v6, v8)]];
      [(CUIPSDLayerEffectInnerGlow *)v7 setOpacity:CPSDDropShadowDescriptor::GetOpacity(v6) / 100.0];
      [(CUIPSDLayerEffectInnerGlow *)v7 setBlendMode:[(CUIPSDImageRef *)self cgBlendModeForPSDLayerOrLayerEffectBlendMode:CPSDDropShadowDescriptor::GetBlendMode(v6)]];
      [(CUIPSDLayerEffectInnerGlow *)v7 setBlurSize:rint(CPSDDropShadowDescriptor::GetBlurSize(v6))];
      [(CUIPSDLayerEffectComponent *)v7 setVisible:CPSDDropShadowDescriptor::GetIsEnabled(v6) != 0];
      return v7;
    }
  }

  return result;
}

- (id)_outerGlowFromLayerEffectsInfo:(void *)a3
{
  result = [(CUIPSDImageRef *)self psdFile];
  if (result)
  {
    result = CPSDObjectEffectsLayerInfo::GetEffect(a3, 1332889452);
    if (result)
    {
      v6 = result;
      v7 = objc_alloc_init(CUIPSDLayerEffectOuterGlow);
      [(CUIPSDLayerEffectOuterGlow *)v7 setColor:[(CUIPSDImageRef *)self colorFromDocumentColor:v8, CPSDDropShadowDescriptor::GetColor(v6, v8)]];
      [(CUIPSDLayerEffectOuterGlow *)v7 setOpacity:CPSDDropShadowDescriptor::GetOpacity(v6) / 100.0];
      [(CUIPSDLayerEffectOuterGlow *)v7 setBlendMode:[(CUIPSDImageRef *)self cgBlendModeForPSDLayerOrLayerEffectBlendMode:CPSDDropShadowDescriptor::GetBlendMode(v6)]];
      [(CUIPSDLayerEffectOuterGlow *)v7 setBlurSize:rint(CPSDDropShadowDescriptor::GetBlurSize(v6))];
      [(CUIPSDLayerEffectOuterGlow *)v7 setSpread:rint(CPSDDropShadowDescriptor::GetSpread(v6))];
      [(CUIPSDLayerEffectComponent *)v7 setVisible:CPSDDropShadowDescriptor::GetIsEnabled(v6) != 0];
      return v7;
    }
  }

  return result;
}

- (id)_colorOverlayFromLayerEffectsInfo:(void *)a3
{
  result = [(CUIPSDImageRef *)self psdFile];
  if (result)
  {
    result = CPSDObjectEffectsLayerInfo::GetEffect(a3, 1399801449);
    if (result)
    {
      v6 = result;
      v7 = objc_alloc_init(CUIPSDLayerEffectColorOverlay);
      [(CUIPSDLayerEffectColorOverlay *)v7 setColor:[(CUIPSDImageRef *)self colorFromDocumentColor:v8, CPSDDropShadowDescriptor::GetColor(v6, v8)]];
      [(CUIPSDLayerEffectColorOverlay *)v7 setOpacity:CPSDDropShadowDescriptor::GetOpacity(v6) / 100.0];
      [(CUIPSDLayerEffectColorOverlay *)v7 setBlendMode:[(CUIPSDImageRef *)self cgBlendModeForPSDLayerOrLayerEffectBlendMode:CPSDDropShadowDescriptor::GetBlendMode(v6)]];
      [(CUIPSDLayerEffectComponent *)v7 setVisible:CPSDDropShadowDescriptor::GetIsEnabled(v6) != 0];
      return v7;
    }
  }

  return result;
}

- (id)_gradientOverlayFromLayerEffectsAtAbsoluteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(CUIPSDImageRef *)self psdFile];
  if (!v5)
  {
    return 0;
  }

  LayerEffectsInfo = CPSDFile::GetLayerEffectsInfo(v5, v3);
  Effect = CPSDObjectEffectsLayerInfo::GetEffect(LayerEffectsInfo, 1198671468);
  v8 = [(CUIPSDImageRef *)self _gradientAtAbsoluteIndex:v3];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v10 = objc_alloc_init(CUIPSDLayerEffectGradientOverlay);
  [(CUIPSDLayerEffectGradientOverlay *)v10 setGradient:v9];
  [(CUIPSDLayerEffectComponent *)v10 setVisible:CPSDDropShadowDescriptor::GetIsEnabled(Effect) != 0];

  return v10;
}

- (id)_bevelEmbossFromLayerEffectsInfo:(void *)a3
{
  result = [(CUIPSDImageRef *)self psdFile];
  if (result)
  {
    v6 = result;
    result = CPSDObjectEffectsLayerInfo::GetEffect(a3, 1700946540);
    if (result)
    {
      v7 = result;
      v8 = objc_alloc_init(CUIPSDLayerEffectBevelEmboss);
      [(CUIPSDLayerEffectBevelEmboss *)v8 setBlurSize:rint(CPSDDropShadowDescriptor::GetBlurSize(v7))];
      [(CUIPSDLayerEffectBevelEmboss *)v8 setSoftenSize:rint(CPSDBevelEmbossDescriptor::GetSoftenSize(v7))];
      if (CPSDDropShadowDescriptor::UseGlobalLightAngle(v7))
      {
        GlobalLightAngle = CPSDFile::GetGlobalLightAngle(v6);
      }

      else
      {
        GlobalLightAngle = CPSDDropShadowDescriptor::GetAngle(v7);
      }

      [(CUIPSDLayerEffectBevelEmboss *)v8 setAngle:GlobalLightAngle];
      if (CPSDDropShadowDescriptor::UseGlobalLightAngle(v7))
      {
        GlobalLightAltitude = CPSDFile::GetGlobalLightAltitude(v6);
      }

      else
      {
        GlobalLightAltitude = CPSDBevelEmbossDescriptor::GetAltitude(v7);
      }

      [(CUIPSDLayerEffectBevelEmboss *)v8 setAltitude:GlobalLightAltitude];
      [(CUIPSDLayerEffectBevelEmboss *)v8 setHighlightBlendMode:[(CUIPSDImageRef *)self cgBlendModeForPSDLayerOrLayerEffectBlendMode:CPSDBevelEmbossDescriptor::GetHighlightBlendMode(v7)]];
      [(CUIPSDLayerEffectBevelEmboss *)v8 setHighlightColor:[(CUIPSDImageRef *)self colorFromDocumentColor:v11, CPSDBevelEmbossDescriptor::GetHighlightColor(v7, v11)]];
      [(CUIPSDLayerEffectBevelEmboss *)v8 setHighlightOpacity:CPSDBevelEmbossDescriptor::GetHighlightOpacity(v7) / 100.0];
      [(CUIPSDLayerEffectBevelEmboss *)v8 setShadowBlendMode:[(CUIPSDImageRef *)self cgBlendModeForPSDLayerOrLayerEffectBlendMode:CPSDBevelEmbossDescriptor::GetShadowBlendMode(v7)]];
      [(CUIPSDLayerEffectBevelEmboss *)v8 setShadowColor:[(CUIPSDImageRef *)self colorFromDocumentColor:v11, CPSDBevelEmbossDescriptor::GetShadowColor(v7, v11)]];
      [(CUIPSDLayerEffectBevelEmboss *)v8 setShadowOpacity:CPSDBevelEmbossDescriptor::GetShadowOpacity(v7) / 100.0];
      [(CUIPSDLayerEffectBevelEmboss *)v8 setDirection:CPSDBevelEmbossDescriptor::GetBevelDirection(v7)];
      [(CUIPSDLayerEffectComponent *)v8 setVisible:CPSDDropShadowDescriptor::GetIsEnabled(v7) != 0];
      return v8;
    }
  }

  return result;
}

- (id)_layerEffectsAtAbsoluteIndex:(unsigned int)a3
{
  v3 = *&a3;
  v5 = [(CUIPSDImageRef *)self psdFile];
  if (!v5)
  {
    return 0;
  }

  LayerEffectsInfo = CPSDFile::GetLayerEffectsInfo(v5, v3);
  if (!LayerEffectsInfo)
  {
    return 0;
  }

  v7 = LayerEffectsInfo;
  v8 = objc_alloc_init(CUIPSDLayerEffects);
  [(CUIPSDLayerEffects *)v8 setVisible:CPSDObjectEffectsLayerInfo::GetMasterEffectsSwitch(v7) != 0];
  [(CUIPSDLayerEffects *)v8 setEffectScale:CPSDGradientDescriptor::GetScale(v7)];
  v9 = [(CUIPSDImageRef *)self _colorOverlayFromLayerEffectsInfo:v7];
  if (v9)
  {
    [(CUIPSDLayerEffects *)v8 addLayerEffectComponent:v9];
  }

  v10 = [(CUIPSDImageRef *)self _gradientOverlayFromLayerEffectsAtAbsoluteIndex:v3];
  if (v10)
  {
    [(CUIPSDLayerEffects *)v8 addLayerEffectComponent:v10];
  }

  v11 = [(CUIPSDImageRef *)self _dropShadowFromLayerEffectsInfo:v7];
  if (v11)
  {
    [(CUIPSDLayerEffects *)v8 addLayerEffectComponent:v11];
  }

  v12 = [(CUIPSDImageRef *)self _innerShadowFromLayerEffectsInfo:v7];
  if (v12)
  {
    [(CUIPSDLayerEffects *)v8 addLayerEffectComponent:v12];
  }

  v13 = [(CUIPSDImageRef *)self _innerGlowFromLayerEffectsInfo:v7];
  if (v13)
  {
    [(CUIPSDLayerEffects *)v8 addLayerEffectComponent:v13];
  }

  v14 = [(CUIPSDImageRef *)self _outerGlowFromLayerEffectsInfo:v7];
  if (v14)
  {
    [(CUIPSDLayerEffects *)v8 addLayerEffectComponent:v14];
  }

  v15 = [(CUIPSDImageRef *)self _bevelEmbossFromLayerEffectsInfo:v7];
  if (v15)
  {
    [(CUIPSDLayerEffects *)v8 addLayerEffectComponent:v15];
  }

  return v8;
}

- (void)enumerateLayersUsingBlock:(id)a3
{
  v4 = [(CUIPSDImageRef *)self layerEnumerator];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      v10 = 0;
      (*(a3 + 2))(a3, v9, &v10);
      if (v10)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        return;
      }
    }
  }
}

- (uint64_t)loadPSDFileWithLayers:(void *)a3 .cold.1(void *a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v7 = *(__cxa_get_exception_ptr(a1) + 1);
  *a3 = &unk_1F00D3C88;
  a3[1] = v7;
  __cxa_begin_catch(a1);
  result = *a4;
  if (*a4)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

- (void)metadataString
{
  v2 = *(__cxa_get_exception_ptr(a1) + 1);
  v3[0] = &unk_1F00D3C88;
  v3[1] = v2;
  __cxa_begin_catch(a1);
  CStdException::~CStdException(v3);
  __cxa_end_catch();
}

@end