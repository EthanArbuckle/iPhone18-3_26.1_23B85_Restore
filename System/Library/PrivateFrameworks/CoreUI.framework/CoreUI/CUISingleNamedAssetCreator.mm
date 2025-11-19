@interface CUISingleNamedAssetCreator
- (BOOL)_distillNameEntries:(id *)a3;
- (BOOL)_distillRenditions:(id *)a3;
- (BOOL)_extractFlattenedImages:(id *)a3;
- (BOOL)distillAndSave:(id *)a3;
- (BOOL)updateBitmapIndex;
- (BOOL)writeFlattenedImageToOutput:(id)a3 error:(id *)a4;
- (CUISingleNamedAssetCreator)initWithOutputURL:(id)a3 versionString:(id)a4;
- (const)_keyFormat;
- (id)_addImage:(CGImage *)a3 withBaseKey:(id)a4 name:(id)a5 atScale:(int64_t)a6;
- (id)_colorBaseKeyWithScale:(int64_t)a3;
- (id)_defaultBaseKeyWithScale:(int64_t)a3;
- (id)_flattenedImageBaseKeyWithScale:(int64_t)a3;
- (id)_generatorForName:(id)a3;
- (id)_generatorWithName:(id)a3;
- (id)_gradientBaseKeyWithScale:(int64_t)a3;
- (id)_iconGroupBaseKeyWithScale:(int64_t)a3;
- (id)_iconStackBaseKeyWithScale:(int64_t)a3;
- (id)_keyDataFromKey:(const _renditionkeytoken *)a3;
- (id)_radiosityImageBaseKeyWithScale:(int64_t)a3;
- (id)_textureBaseKeyWithScale:(int64_t)a3;
- (id)_textureImageBaseKeyWithScale:(int64_t)a3;
- (id)_vectorImageBaseKeyWithScale:(int64_t)a3;
- (void)_addImageAsJPEG:(CGImage *)a3 withBaseKey:(id)a4 withName:(id)a5 atScale:(int64_t)a6;
- (void)_addLayerStackWithSize:(CGSize)a3 type:(int64_t)a4 stackData:(id)a5 name:(id)a6 atScale:(int64_t)a7 withRenderingProperties:(id)a8;
- (void)_configureDefaultStorageParameters;
- (void)_finalizeNameIdentifiers;
- (void)addColor:(CGColor *)a3 withName:(id)a4 atScale:(int64_t)a5;
- (void)addFlattenedImage:(CGImage *)a3 forLayerStackWithName:(id)a4 atScale:(int64_t)a5;
- (void)addGradient:(id)a3 withStops:(id)a4 ofType:(int64_t)a5 startPoint:(CGPoint)a6 endPoint:(CGPoint)a7 withName:(id)a8 atScale:(int64_t)a9;
- (void)addImage:(CGImage *)a3 withName:(id)a4 atScale:(int64_t)a5;
- (void)addImageAsJPEG:(CGImage *)a3 withName:(id)a4 atScale:(int64_t)a5;
- (void)addLayerReference:(id)a3 forColorToLayerStackWithName:(id)a4 atScale:(int64_t)a5;
- (void)addLayerReference:(id)a3 forGradientToLayerStackWithName:(id)a4 atScale:(int64_t)a5;
- (void)addLayerReference:(id)a3 forGroupToLayerStackWithName:(id)a4 atScale:(int64_t)a5;
- (void)addLayerReference:(id)a3 forImage:(CGImage *)a4 toLayerStackWithName:(id)a5 atScale:(int64_t)a6;
- (void)addLayerReference:(id)a3 forSVGDocumentToLayerStackWithName:(id)a4 atScale:(int64_t)a5;
- (void)addSVGDocument:(CGSVGDocument *)a3 withName:(id)a4 atScale:(int64_t)a5;
- (void)addTexture:(id)a3 withName:(id)a4 atScale:(int64_t)a5;
- (void)dealloc;
- (void)setCompressionQuality:(double)a3;
- (void)setThinningArguments:(id)a3;
- (void)setUpdateBitmapIndex:(BOOL)a3;
@end

@implementation CUISingleNamedAssetCreator

- (void)_configureDefaultStorageParameters
{
  [(CUISingleNamedAssetCreator *)self _keyFormat];
  v3 = [NSData dataWithBytes:"dataWithBytes:length:" length:?];
  v4 = [(CUISingleNamedAssetCreator *)self targetPlatform];
  v5 = [(CUISingleNamedAssetCreator *)self store];
  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  [(CUIMutableCommonAssetStorage *)v5 setKeySemantics:v6];
  [(CUIMutableCommonAssetStorage *)[(CUISingleNamedAssetCreator *)self store] setKeyFormatData:v3];
  [(CUIMutableCommonAssetStorage *)[(CUISingleNamedAssetCreator *)self store] setDeploymentPlatform:CUIPlatformNameForPlatform([(CUISingleNamedAssetCreator *)self targetPlatform])];
  [(CUIMutableCommonAssetStorage *)[(CUISingleNamedAssetCreator *)self store] setStorageVersion:17];
  v7 = [(CUISingleNamedAssetCreator *)self store];

  [(CUIMutableCommonAssetStorage *)v7 setSchemaVersion:5];
}

- (const)_keyFormat
{
  if (self->_allowsWideGamutImages)
  {
    v8 = 13;
  }

  else
  {
    v8 = 10;
  }

  return CUIDefaultThemeRenditionKeyFormat(2, v8, v2, v3, v4, v5, v6, v7);
}

- (void)_finalizeNameIdentifiers
{
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self names] count];

  self->_mappings = objc_alloc_init(NSMutableDictionary);
  if (![(CUISingleNamedAssetCreator *)self primaryName])
  {
    [(CUISingleNamedAssetCreator *)self setPrimaryName:[(NSMutableArray *)[(CUISingleNamedAssetCreator *)self names] objectAtIndexedSubscript:0]];
  }

  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self names] removeObjectAtIndex:[(CUISingleNamedAssetCreator *)self primaryIndex]];
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self names] sortUsingSelector:sel_caseInsensitiveCompare_];
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self names] insertObject:[(CUISingleNamedAssetCreator *)self primaryName] atIndex:0];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __54__CUISingleNamedAssetCreator__finalizeNameIdentifiers__block_invoke;
  v4[3] = &unk_1E7249858;
  v4[4] = self;
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self names] enumerateObjectsUsingBlock:v4];
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __54__CUISingleNamedAssetCreator__finalizeNameIdentifiers__block_invoke_2;
  v3[3] = &unk_1E7249858;
  v3[4] = self;
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] enumerateObjectsUsingBlock:v3];
}

id __54__CUISingleNamedAssetCreator__finalizeNameIdentifiers__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = [*(*(a1 + 32) + 80) objectForKey:a2];
  if (!result)
  {
    v7 = *(*(a1 + 32) + 80);
    v8 = [NSNumber numberWithUnsignedInteger:a3];

    return [v7 setObject:v8 forKey:a2];
  }

  return result;
}

void __54__CUISingleNamedAssetCreator__finalizeNameIdentifiers__block_invoke_2(uint64_t a1, void *a2)
{
  v4 = [*(*(a1 + 32) + 80) objectForKey:{objc_msgSend(a2, "name")}];
  v5 = [v4 unsignedIntegerValue];
  if (v4)
  {
    [objc_msgSend(a2 "baseKey")];
    if ([objc_msgSend(a2 "baseKey")] == 208)
    {
      [a2 setName:{objc_msgSend(objc_msgSend(a2, "name"), "stringByAppendingString:", @"-Flattened"}];
    }

    v6 = [a2 layerReferences];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = __54__CUISingleNamedAssetCreator__finalizeNameIdentifiers__block_invoke_3;
    v24[3] = &unk_1E7249880;
    v24[4] = *(a1 + 32);
    v24[5] = v4;
    v24[6] = a2;
    [v6 enumerateObjectsUsingBlock:v24];
    v7 = [a2 mipReferences];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __54__CUISingleNamedAssetCreator__finalizeNameIdentifiers__block_invoke_4;
    v23[3] = &unk_1E72498A8;
    v23[4] = *(a1 + 32);
    v23[5] = a2;
    [v7 enumerateObjectsUsingBlock:v23];
    if ([a2 layout] == 1008)
    {
      v8 = [*(*(a1 + 32) + 80) objectForKey:{objc_msgSend(a2, "name")}];
      if (v8)
      {
        [objc_msgSend(a2 "baseKey")];
      }

      else
      {
        v22 = [a2 name];
        _CUILog(4, "CoreUI: Error: Found a  mipa reference with no name entry for %@", v15, v16, v17, v18, v19, v20, v22);
      }
    }
  }

  else
  {
    v21 = [a2 name];
    _CUILog(4, "CoreUI: Error: Found a rendition with no name entry for %@", v9, v10, v11, v12, v13, v14, v21);
  }
}

void __54__CUISingleNamedAssetCreator__finalizeNameIdentifiers__block_invoke_3(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(*(*(a1 + 32) + 80) objectForKey:{objc_msgSend(a2, "layerName")), "unsignedIntegerValue"}];
  if (*(a1 + 40))
  {
    v5 = v4;
    if (![a2 referenceKey])
    {
      [a2 setReferenceKey:{objc_msgSend(*(a1 + 32), "_defaultBaseKeyWithScale:", objc_msgSend(*(a1 + 48), "scaleFactor"))}];
    }

    v6 = [a2 referenceKey];

    [v6 setThemeIdentifier:v5];
  }

  else
  {
    v7 = [a2 layerName];
    _CUILog(4, "CoreUI: Error: Found a layer reference with no name entry for %@", v8, v9, v10, v11, v12, v13, v7);
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CUISingleNamedAssetCreator;
  [(CUISingleNamedAssetCreator *)&v3 dealloc];
}

void __54__CUISingleNamedAssetCreator__finalizeNameIdentifiers__block_invoke_4(uint64_t a1, void *a2)
{
  v4 = [*(*(a1 + 32) + 80) objectForKey:{objc_msgSend(*(a1 + 40), "name")}];
  if (v4)
  {
    v5 = [v4 unsignedIntegerValue];

    [a2 setThemeIdentifier:v5];
  }

  else
  {
    v6 = [*(a1 + 40) name];
    _CUILog(4, "CoreUI: Error: Found a  mipa reference with no name entry for %@", v7, v8, v9, v10, v11, v12, v6);
  }
}

- (void)setCompressionQuality:(double)a3
{
  [(CUISingleNamedAssetCreator *)self setFlattenedLossyCompressionQuality:?];

  [(CUISingleNamedAssetCreator *)self setLayersLossyCompressionQuality:a3];
}

- (CUISingleNamedAssetCreator)initWithOutputURL:(id)a3 versionString:(id)a4
{
  v9.receiver = self;
  v9.super_class = CUISingleNamedAssetCreator;
  v6 = [(CUISingleNamedAssetCreator *)&v9 init];
  if (v6)
  {
    v7 = -[CUIMutableCommonAssetStorage initWithPath:]([CUISingleNamedAssetMutableStorage alloc], "initWithPath:", [a3 path]);
    v6->_store = &v7->super;
    if (v7)
    {
      [(CUIMutableCommonAssetStorage *)[(CUISingleNamedAssetCreator *)v6 store] setUseBitmapIndex:0];
      -[CUIMutableCommonAssetStorage setVersionString:](-[CUISingleNamedAssetCreator store](v6, "store"), "setVersionString:", [a4 UTF8String]);
      [(CUISingleNamedAssetCreator *)v6 setGenerators:+[NSMutableArray array]];
      [(CUISingleNamedAssetCreator *)v6 setNames:+[NSMutableArray array]];
      *&v6->_radiosityCompressionQuaility = xmmword_18E020140;
      v6->_layersCompressionQuality = 0.75;
      v6->_compressionType = 3;
      v6->_targetPlatform = 1;
      *&v6->_generateFlattenedImages = 257;
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (BOOL)updateBitmapIndex
{
  v2 = [(CUISingleNamedAssetCreator *)self store];

  return [(CUIMutableCommonAssetStorage *)v2 useBitmapIndex];
}

- (void)setUpdateBitmapIndex:(BOOL)a3
{
  v3 = a3;
  v4 = [(CUISingleNamedAssetCreator *)self store];

  [(CUIMutableCommonAssetStorage *)v4 setUseBitmapIndex:v3];
}

- (id)_defaultBaseKeyWithScale:(int64_t)a3
{
  v4 = 0xB5000200550001;
  v5 = 12;
  v6 = a3;
  v7 = 0;
  return [[CUIRenditionKey alloc] initWithKeyList:&v4];
}

- (id)_iconStackBaseKeyWithScale:(int64_t)a3
{
  v4 = 0xF5000200550001;
  v5 = 12;
  v6 = a3;
  v7 = 0;
  return [[CUIRenditionKey alloc] initWithKeyList:&v4];
}

- (id)_iconGroupBaseKeyWithScale:(int64_t)a3
{
  v4 = 0xF6000200550001;
  v5 = 12;
  v6 = a3;
  v7 = 0;
  return [[CUIRenditionKey alloc] initWithKeyList:&v4];
}

- (id)_flattenedImageBaseKeyWithScale:(int64_t)a3
{
  v4 = 0xD0000200550001;
  v5 = 12;
  v6 = a3;
  v7 = 0;
  return [[CUIRenditionKey alloc] initWithKeyList:&v4];
}

- (id)_radiosityImageBaseKeyWithScale:(int64_t)a3
{
  v4 = 0xD1000200550001;
  v5 = 12;
  v6 = a3;
  v7 = 0;
  return [[CUIRenditionKey alloc] initWithKeyList:&v4];
}

- (id)_colorBaseKeyWithScale:(int64_t)a3
{
  v4 = 0xD9000200550001;
  v5 = 12;
  v6 = a3;
  v7 = 0;
  return [[CUIRenditionKey alloc] initWithKeyList:&v4];
}

- (id)_textureBaseKeyWithScale:(int64_t)a3
{
  v4 = 0x200290001;
  v5 = 12;
  v6 = a3;
  v7 = 0;
  return [[CUIRenditionKey alloc] initWithKeyList:&v4];
}

- (id)_textureImageBaseKeyWithScale:(int64_t)a3
{
  v4 = 0xB5000200290001;
  v5 = 12;
  v6 = a3;
  v7 = 0;
  return [[CUIRenditionKey alloc] initWithKeyList:&v4];
}

- (id)_vectorImageBaseKeyWithScale:(int64_t)a3
{
  v4 = 0x2A000200550001;
  v5 = 12;
  v6 = a3;
  v7 = 0;
  return [[CUIRenditionKey alloc] initWithKeyList:&v4];
}

- (id)_gradientBaseKeyWithScale:(int64_t)a3
{
  v4 = 0xF7000200550001;
  v5 = 12;
  v6 = a3;
  v7 = 0;
  return [[CUIRenditionKey alloc] initWithKeyList:&v4];
}

- (id)_generatorForName:(id)a3
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __48__CUISingleNamedAssetCreator__generatorForName___block_invoke;
  v6[3] = &unk_1E7249830;
  v6[4] = a3;
  v4 = [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] indexOfObjectPassingTest:v6];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] objectAtIndexedSubscript:v4];
  }
}

id __48__CUISingleNamedAssetCreator__generatorForName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = *(a1 + 32);

  return [v3 isEqualToString:v4];
}

- (id)_addImage:(CGImage *)a3 withBaseKey:(id)a4 name:(id)a5 atScale:(int64_t)a6
{
  Width = CGImageGetWidth(a3);
  v12 = Width;
  Height = CGImageGetHeight(a3);
  AlphaInfo = CGImageGetAlphaInfo(a3);
  v14 = [[CUICatalogCSIGenerator alloc] initWithCanvasSize:1 sliceCount:10 layout:Width, Height];
  if ([(CUISingleNamedAssetCreator *)self checkForMonochrome])
  {
    IsMonochrome = CUIImageIsMonochrome(a3);
  }

  else
  {
    ColorSpace = CGImageGetColorSpace(a3);
    IsMonochrome = CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelMonochrome;
  }

  v17 = self->_allowsWideGamutImages && CUIImageIsWideGamut(a3);
  [(CSIGenerator *)v14 setTargetPlatform:[(CUISingleNamedAssetCreator *)self targetPlatform]];
  [(CUICatalogCSIGenerator *)v14 setBaseKey:a4];
  [(CSIGenerator *)v14 setName:a5];
  [(CSIGenerator *)v14 setAllowsPaletteImageCompression:[(CUISingleNamedAssetCreator *)self allowsPaletteImageCompression]];
  if (IsMonochrome)
  {
    v18 = 2;
  }

  else
  {
    v18 = 1;
  }

  if (IsMonochrome)
  {
    v19 = 6;
  }

  else
  {
    v19 = 4;
  }

  if (v17)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  [(CSIGenerator *)v14 setColorSpaceID:v20];
  if (self->_allowsWideGamutImages)
  {
    [(CUIRenditionKey *)[(CUICatalogCSIGenerator *)v14 baseKey] setThemeDisplayGamut:1];
  }

  [(CSIGenerator *)v14 setScaleFactor:a6];
  [(CUIRenditionKey *)[(CUICatalogCSIGenerator *)v14 baseKey] setThemeScale:a6];
  v21 = [[CSIBitmapWrapper alloc] initWithPixelWidth:Width pixelHeight:Height];
  v22 = v21;
  if (v17)
  {
    if (IsMonochrome)
    {
      v23 = 1195454774;
    }

    else
    {
      v23 = 1380401751;
    }

    if (IsMonochrome)
    {
      v24 = 6;
    }

    else
    {
      v24 = 4;
    }
  }

  else
  {
    if (IsMonochrome)
    {
      v23 = 1195456544;
    }

    else
    {
      v23 = 1095911234;
    }

    if (IsMonochrome)
    {
      v24 = 2;
    }

    else
    {
      v24 = 1;
    }
  }

  [(CSIBitmapWrapper *)v21 setPixelFormat:v23];
  [(CSIBitmapWrapper *)v22 setColorSpaceID:v24];
  [(CSIBitmapWrapper *)v22 setSourceAlphaInfo:AlphaInfo];
  if ((((self->_compressionType & 0xFFFFFFFFFFFFFFFELL) != 4) & IsMonochrome) == 0)
  {
    [(CSIGenerator *)v14 setCompressionType:?];
    [(CUISingleNamedAssetCreator *)self layersLossyCompressionQuality];
    [(CSIGenerator *)v14 setCompressionQuality:?];
  }

  [(CSIGenerator *)v14 addBitmap:v22];
  v25 = [(CSIBitmapWrapper *)v22 bitmapContext];

  v34.origin.x = 0.0;
  v34.origin.y = 0.0;
  v34.size.width = v12;
  v34.size.height = Height;
  CGContextDrawImage(v25, v34, a3);
  [(CSIGenerator *)v14 addSliceRect:0.0, 0.0, v12, Height];
  memset(v31, 0, sizeof(v31));
  v32 = v12;
  v33 = Height;
  [(CSIGenerator *)v14 addMetrics:v31];
  if (IsMonochrome)
  {
    v26 = 1195456544;
  }

  else
  {
    v26 = 1095911234;
  }

  if (IsMonochrome)
  {
    v27 = 1195454774;
  }

  else
  {
    v27 = 1380401751;
  }

  if (v17)
  {
    v28 = v27;
  }

  else
  {
    v28 = v26;
  }

  [(CSIGenerator *)v14 setPixelFormat:v28];
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] addObject:v14];

  return v14;
}

- (void)addImage:(CGImage *)a3 withName:(id)a4 atScale:(int64_t)a5
{
  [(CUISingleNamedAssetCreator *)self _addImage:a3 withBaseKey:[(CUISingleNamedAssetCreator *)self _defaultBaseKeyWithScale:a5] name:a4 atScale:a5];
  v7 = [(CUISingleNamedAssetCreator *)self names];

  [(NSMutableArray *)v7 addObject:a4];
}

- (void)_addImageAsJPEG:(CGImage *)a3 withBaseKey:(id)a4 withName:(id)a5 atScale:(int64_t)a6
{
  if (self->_allowsWideGamutImages)
  {
    DisplayP3 = _CUIColorSpaceGetDisplayP3();
    a3 = CUIConvertDeepImageTo8(a3, DisplayP3);
  }

  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
  v13 = CGImageDestinationCreateWithData(Mutable, @"public.jpeg", 1uLL, 0);
  v14 = [NSDictionary alloc];
  flattenedCompressionQuality = self->_flattenedCompressionQuality;
  *&flattenedCompressionQuality = flattenedCompressionQuality;
  v16 = [v14 initWithObjectsAndKeys:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", flattenedCompressionQuality), kCGImageDestinationLossyCompressionQuality, 0, 0}];
  CGImageDestinationAddImage(v13, a3, v16);
  if (CGImageDestinationFinalize(v13))
  {
    v17 = [[CUICatalogCSIGenerator alloc] initWithRawData:Mutable pixelFormat:1246774599 layout:10];
    [(CUICatalogCSIGenerator *)v17 setBaseKey:a4];
    [(CUIRenditionKey *)[(CUICatalogCSIGenerator *)v17 baseKey] setThemeScale:a6];
    [(CSIGenerator *)v17 setScaleFactor:a6];
    [(CSIGenerator *)v17 setName:a5];
    if (self->_allowsWideGamutImages)
    {
      [(CUIRenditionKey *)[(CUICatalogCSIGenerator *)v17 baseKey] setThemeDisplayGamut:1];
    }

    [(CSIGenerator *)v17 setAllowsPaletteImageCompression:[(CUISingleNamedAssetCreator *)self allowsPaletteImageCompression]];
    [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] addObject:v17];
  }

  CFRelease(v13);
  CFRelease(Mutable);

  if (self->_allowsWideGamutImages)
  {

    CGImageRelease(a3);
  }
}

- (void)addImageAsJPEG:(CGImage *)a3 withName:(id)a4 atScale:(int64_t)a5
{
  [(CUISingleNamedAssetCreator *)self _addImageAsJPEG:a3 withBaseKey:[(CUISingleNamedAssetCreator *)self _defaultBaseKeyWithScale:a5] withName:a4 atScale:a5];
  v7 = [(CUISingleNamedAssetCreator *)self names];

  [(NSMutableArray *)v7 addObject:a4];
}

- (void)addColor:(CGColor *)a3 withName:(id)a4 atScale:(int64_t)a5
{
  v20[0] = kCGColorSpaceSRGB;
  v20[1] = kCGColorSpaceGenericGrayGamma2_2;
  v21[0] = &unk_1F00F7B38;
  v21[1] = &unk_1F00F7B50;
  v20[2] = kCGColorSpaceDisplayP3;
  v20[3] = kCGColorSpaceExtendedSRGB;
  v21[2] = &unk_1F00F7B68;
  v21[3] = &unk_1F00F7B80;
  v20[4] = kCGColorSpaceExtendedLinearSRGB;
  v20[5] = kCGColorSpaceExtendedGray;
  v21[4] = &unk_1F00F7B98;
  v21[5] = &unk_1F00F7B50;
  v10 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:6];
  Components = CGColorGetComponents(a3);
  v12 = objc_alloc_init(NSMutableArray);
  ColorSpace = CGColorGetColorSpace(a3);
  v14 = [(NSDictionary *)v10 objectForKey:CGColorSpaceGetName(ColorSpace)];
  if (!v14)
  {
    [CUISingleNamedAssetCreator addColor:a3 withName:a2 atScale:self];
  }

  v15 = [v14 intValue];
  NumberOfComponents = CGColorGetNumberOfComponents(a3);
  if (NumberOfComponents)
  {
    v17 = NumberOfComponents;
    do
    {
      v18 = *Components++;
      [v12 addObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v18)}];
      --v17;
    }

    while (v17);
  }

  v19 = [[CUICatalogCSIGenerator alloc] initWithColorNamed:a4 colorSpaceID:v15 components:v12];

  [(CUICatalogCSIGenerator *)v19 setBaseKey:[(CUISingleNamedAssetCreator *)self _colorBaseKeyWithScale:a5]];
  [(CUIRenditionKey *)[(CUICatalogCSIGenerator *)v19 baseKey] setThemeScale:a5];
  [(CSIGenerator *)v19 setScaleFactor:a5];
  [(CSIGenerator *)v19 setName:a4];
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] addObject:v19];
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self names] addObject:a4];
}

- (void)addGradient:(id)a3 withStops:(id)a4 ofType:(int64_t)a5 startPoint:(CGPoint)a6 endPoint:(CGPoint)a7 withName:(id)a8 atScale:(int64_t)a9
{
  y = a7.y;
  x = a7.x;
  v13 = a6.y;
  v14 = a6.x;
  v19 = [a3 count];
  if (v19 != [a4 count])
  {
    [CUISingleNamedAssetCreator addGradient:a2 withStops:self ofType:? startPoint:? endPoint:? withName:? atScale:?];
  }

  v20 = [a3 count];
  v26 = objc_alloc_init(NSMutableArray);
  if (v20)
  {
    for (i = 0; i != v20; ++i)
    {
      v22 = [a3 objectAtIndex:i];
      v23 = [NSString stringWithFormat:@"%@/Gradient Color %d", a8, i];
      [(CUISingleNamedAssetCreator *)self addColor:v22 withName:v23 atScale:a9];
      [v26 addObject:v23];
    }
  }

  v24 = [[CUICatalogCSIGenerator alloc] initWithGradientNamed:a8 type:a5 startPoint:v26 endPoint:a4 colorNames:v14 colorStops:v13, x, y];
  [(CUICatalogCSIGenerator *)v24 setBaseKey:[(CUISingleNamedAssetCreator *)self _gradientBaseKeyWithScale:a9]];
  [(CUIRenditionKey *)[(CUICatalogCSIGenerator *)v24 baseKey] setThemeScale:a9];
  [(CSIGenerator *)v24 setScaleFactor:a9];
  [(CSIGenerator *)v24 setName:a8];
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] addObject:v24];
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self names] addObject:a8];
}

- (void)addSVGDocument:(CGSVGDocument *)a3 withName:(id)a4 atScale:(int64_t)a5
{
  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
  CGSVGDocumentWriteToData();
  v10 = [[CUICatalogCSIGenerator alloc] initWithRawData:Mutable pixelFormat:1145132097 layout:9];
  v9 = [(CUISingleNamedAssetCreator *)self _vectorImageBaseKeyWithScale:a5];
  [(CSIGenerator *)v10 setTargetPlatform:[(CUISingleNamedAssetCreator *)self targetPlatform]];
  [(CSIGenerator *)v10 setIsVectorBased:1];
  [(CUICatalogCSIGenerator *)v10 setBaseKey:v9];
  [(CUIRenditionKey *)[(CUICatalogCSIGenerator *)v10 baseKey] setThemeScale:a5];
  [(CSIGenerator *)v10 setScaleFactor:a5];
  [(CSIGenerator *)v10 setName:a4];
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] addObject:v10];
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self names] addObject:a4];
  CFRelease(Mutable);
}

- (void)addTexture:(id)a3 withName:(id)a4 atScale:(int64_t)a5
{
  memset(v35, 0, sizeof(v35));
  v9 = -[CSIGenerator initWithTextureForPixelFormat:]([CUICatalogCSIGenerator alloc], "initWithTextureForPixelFormat:", CUIConvertFromTXRPixelFormat([a3 pixelFormat]));
  v10 = [(CUISingleNamedAssetCreator *)self _textureBaseKeyWithScale:a5];
  v11 = [(CUISingleNamedAssetCreator *)self _textureImageBaseKeyWithScale:a5];
  [(CSIGenerator *)v9 setTargetPlatform:[(CUISingleNamedAssetCreator *)self targetPlatform]];
  [(CSIGenerator *)v9 setCubemap:0];
  [(CSIGenerator *)v9 addMipReference:v11];
  [(CUICatalogCSIGenerator *)v9 setBaseKey:v10];
  [(CUIRenditionKey *)[(CUICatalogCSIGenerator *)v9 baseKey] setThemeScale:a5];
  [(CSIGenerator *)v9 setScaleFactor:a5];
  [a3 dimensions];
  v13 = v12;
  [a3 dimensions];
  v15 = v14;
  [(CSIGenerator *)v9 setName:a4];
  [a3 dimensions];
  v17 = v16;
  [a3 dimensions];
  [(CSIGenerator *)v9 setSize:v17, v18];
  -[CSIGenerator setTextureFormat:](v9, "setTextureFormat:", CUIConvertFromTXRPixelFormat([a3 pixelFormat]));
  v36 = v13;
  v37 = v15;
  [(CSIGenerator *)v9 addMetrics:v35];
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] addObject:v9];
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self names] addObject:a4];

  v19 = [CUICatalogCSIGenerator alloc];
  [a3 dimensions];
  v21 = v20;
  [a3 dimensions];
  v23 = -[CSIGenerator initWithTextureImageWithSize:forPixelFormat:cubeMap:](v19, "initWithTextureImageWithSize:forPixelFormat:cubeMap:", CUIConvertFromTXRPixelFormat([a3 pixelFormat]), 0, v21, v22);
  [(CUICatalogCSIGenerator *)v23 setBaseKey:v11];
  [(CSIGenerator *)v23 setScaleFactor:a5];
  v34 = a4;
  [(CSIGenerator *)v23 setName:a4];
  v24 = [objc_msgSend(a3 "mipmapLevels")];
  if ([objc_msgSend(v24 "elements")])
  {
    v25 = 0;
    do
    {
      v26 = [objc_msgSend(objc_msgSend(objc_msgSend(v24 "elements")];
      v27 = [objc_msgSend(v26 "buffer")];
      v28 = [CSIBitmapWrapper alloc];
      [a3 dimensions];
      v30 = v29;
      [a3 dimensions];
      v32 = -[CSIBitmapWrapper initWithCGImage:width:height:texturePixelFormat:](v28, "initWithCGImage:width:height:texturePixelFormat:", 0, v30, v31, CUIConvertFromTXRPixelFormat([a3 pixelFormat]));
      [(CSIBitmapWrapper *)v32 setSourceAlphaInfo:0];
      -[CSIBitmapWrapper setRowbytes:](v32, "setRowbytes:", [v26 bytesPerRow]);
      [(CSIBitmapWrapper *)v32 setTargetPlatform:[(CUISingleNamedAssetCreator *)self targetPlatform]];
      [(CSIBitmapWrapper *)v32 setPixelFormat:[(CSIGenerator *)v23 pixelFormat]];
      [(CSIBitmapWrapper *)v32 setTextureInterpretation:0];
      v33 = [[NSData alloc] initWithBytesNoCopy:objc_msgSend(v27 length:"bytes") freeWhenDone:{objc_msgSend(v26, "bytesPerImage"), 0}];
      [(CSIBitmapWrapper *)v32 setPixelData:v33];

      [(CSIGenerator *)v23 addBitmap:v32];
      ++v25;
    }

    while (v25 < [objc_msgSend(v24 "elements")]);
  }

  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] addObject:v23];
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self names] addObject:v34];
}

- (void)_addLayerStackWithSize:(CGSize)a3 type:(int64_t)a4 stackData:(id)a5 name:(id)a6 atScale:(int64_t)a7 withRenderingProperties:(id)a8
{
  v15 = [[CUICatalogCSIGenerator alloc] initWithLayerStackData:a5 type:a4 withCanvasSize:1 isOpaque:self->_allowsWideGamutImages allowsWide:a7 atScale:a3.width, a3.height];
  [(CSIGenerator *)v15 setTargetPlatform:[(CUISingleNamedAssetCreator *)self targetPlatform]];
  if (a4 == 1002)
  {
    v13 = [(CUISingleNamedAssetCreator *)self _defaultBaseKeyWithScale:a7];
    v14 = @"public.layeredicon";
  }

  else if (a4 == 1019)
  {
    v13 = [(CUISingleNamedAssetCreator *)self _iconStackBaseKeyWithScale:a7];
    v14 = @"public.layeredimage";
  }

  else
  {
    v13 = [(CUISingleNamedAssetCreator *)self _iconGroupBaseKeyWithScale:a7];
    v14 = @"public.layeredgroup";
  }

  [(CUICatalogCSIGenerator *)v15 setBaseKey:v13];
  [(CSIGenerator *)v15 setUtiType:v14];
  [(CUIRenditionKey *)[(CUICatalogCSIGenerator *)v15 baseKey] setThemeScale:a7];
  if (self->_allowsWideGamutImages)
  {
    [(CUIRenditionKey *)[(CUICatalogCSIGenerator *)v15 baseKey] setThemeDisplayGamut:1];
  }

  [(CSIGenerator *)v15 setName:a6];
  [(CSIGenerator *)v15 setColorSpaceID:1];
  [(CSIGenerator *)v15 setScaleFactor:a7];
  [(CSIGenerator *)v15 setRenditionProperties:a8];
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] addObject:v15];
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self names] addObject:a6];
  if (a4 != 1020)
  {
    [(CUISingleNamedAssetCreator *)self setPrimaryName:a6];
    [(CUISingleNamedAssetCreator *)self setPrimaryIndex:[(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] indexOfObject:v15]];
  }
}

- (id)_generatorWithName:(id)a3
{
  if ([(CUISingleNamedAssetCreator *)self primaryName]&& [(NSString *)[(CUISingleNamedAssetCreator *)self primaryName] isEqualToString:a3])
  {
    v5 = [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] objectAtIndexedSubscript:[(CUISingleNamedAssetCreator *)self primaryIndex]];
  }

  else
  {
    v5 = [(CUISingleNamedAssetCreator *)self _generatorForName:a3];
  }

  v6 = v5;
  if (!v5)
  {
    [+[NSException exceptionWithName:reason:userInfo:](NSException raise:NSInvalidArgumentException];
  }

  return v6;
}

- (void)addLayerReference:(id)a3 forImage:(CGImage *)a4 toLayerStackWithName:(id)a5 atScale:(int64_t)a6
{
  v9 = [(CUISingleNamedAssetCreator *)self _generatorWithName:a5];

  [v9 addLayerReference:a3 withImage:a4 atScale:a6];
}

- (void)addLayerReference:(id)a3 forColorToLayerStackWithName:(id)a4 atScale:(int64_t)a5
{
  v8 = [(CUISingleNamedAssetCreator *)self _generatorWithName:a4];
  [a3 setReferenceKey:{-[CUISingleNamedAssetCreator _colorBaseKeyWithScale:](self, "_colorBaseKeyWithScale:", a5)}];

  [v8 addLayerReference:a3];
}

- (void)addLayerReference:(id)a3 forSVGDocumentToLayerStackWithName:(id)a4 atScale:(int64_t)a5
{
  v8 = [(CUISingleNamedAssetCreator *)self _generatorWithName:a4];
  [a3 setReferenceKey:{-[CUISingleNamedAssetCreator _vectorImageBaseKeyWithScale:](self, "_vectorImageBaseKeyWithScale:", a5)}];

  [v8 addLayerReference:a3];
}

- (void)addLayerReference:(id)a3 forGradientToLayerStackWithName:(id)a4 atScale:(int64_t)a5
{
  v8 = [(CUISingleNamedAssetCreator *)self _generatorWithName:a4];
  [a3 setReferenceKey:{-[CUISingleNamedAssetCreator _gradientBaseKeyWithScale:](self, "_gradientBaseKeyWithScale:", a5)}];

  [v8 addLayerReference:a3];
}

- (void)addLayerReference:(id)a3 forGroupToLayerStackWithName:(id)a4 atScale:(int64_t)a5
{
  v8 = [(CUISingleNamedAssetCreator *)self _generatorWithName:a4];
  [a3 setReferenceKey:{-[CUISingleNamedAssetCreator _iconGroupBaseKeyWithScale:](self, "_iconGroupBaseKeyWithScale:", a5)}];

  [v8 addLayerReference:a3];
}

- (void)addFlattenedImage:(CGImage *)a3 forLayerStackWithName:(id)a4 atScale:(int64_t)a5
{
  v9 = [(CUISingleNamedAssetCreator *)self _generatorWithName:a4];
  Width = CGImageGetWidth(a3);
  Height = CGImageGetHeight(a3);
  [v9 size];
  if (v13 != Height && v12 != Width)
  {
    [+[NSException exceptionWithName:reason:userInfo:](NSException raise:NSInvalidArgumentException];
  }

  [(CUISingleNamedAssetCreator *)self _addImage:a3 withBaseKey:[(CUISingleNamedAssetCreator *)self _flattenedImageBaseKeyWithScale:a5] name:a4 atScale:a5];
  v15 = [CUINamedLayerStack createRadiosityImageWithImage:a3 displayScale:a5];
  [(CUISingleNamedAssetCreator *)self _addImage:v15 withBaseKey:[(CUISingleNamedAssetCreator *)self _radiosityImageBaseKeyWithScale:a5] name:a4 atScale:a5];

  CGImageRelease(v15);
}

- (BOOL)_extractFlattenedImages:(id *)a3
{
  v4 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __54__CUISingleNamedAssetCreator__extractFlattenedImages___block_invoke;
  v7[3] = &unk_1E7249880;
  v7[4] = self;
  v7[5] = v4;
  v7[6] = v5;
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] enumerateObjectsUsingBlock:v7];
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] addObjectsFromArray:v4];
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] addObjectsFromArray:v5];
  return 1;
}

void __54__CUISingleNamedAssetCreator__extractFlattenedImages___block_invoke(id *a1, void *a2)
{
  if ([a2 flattenedBitmap])
  {
    Image = CGBitmapContextCreateImage([objc_msgSend(a2 "flattenedBitmap")]);
    if ([a1[4] compressionType] == 4 || objc_msgSend(a1[4], "compressionType") == 5)
    {
      v5 = [a1[4] _addImage:Image withBaseKey:objc_msgSend(a1[4] name:"_flattenedImageBaseKeyWithScale:" atScale:{objc_msgSend(a2, "scaleFactor")), objc_msgSend(objc_msgSend(a2, "name"), "stringByAppendingString:", @"-Flattened", objc_msgSend(a2, "scaleFactor")}];
      [v5 setBaseKey:{objc_msgSend(a1[4], "_flattenedImageBaseKeyWithScale:", objc_msgSend(a2, "scaleFactor"))}];
      [objc_msgSend(v5 "baseKey")];
      [objc_msgSend(v5 "baseKey")];
      [v5 setScaleFactor:{objc_msgSend(a2, "scaleFactor")}];
      ColorSpace = CGImageGetColorSpace(Image);
      if (CGColorSpaceIsWideGamutRGB(ColorSpace))
      {
        v7 = 3;
      }

      else
      {
        v7 = 1;
      }

      [v5 setColorSpaceID:v7];
      [v5 setName:{objc_msgSend(objc_msgSend(a2, "name"), "stringByAppendingString:", @"-Flattened"}];
      if (*(a1[4] + 88) == 1)
      {
        [objc_msgSend(v5 "baseKey")];
      }

      [a1[5] addObject:v5];
    }

    else
    {
      v8 = [NSDictionary alloc];
      v9 = *(a1[4] + 7);
      *&v9 = v9;
      v10 = [v8 initWithObjectsAndKeys:{+[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v9), kCGImageDestinationLossyCompressionQuality, 0, 0}];
      Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
      v12 = CGImageDestinationCreateWithData(Mutable, @"public.jpeg", 1uLL, 0);
      CGImageDestinationAddImage(v12, Image, v10);

      if (CGImageDestinationFinalize(v12))
      {
        v13 = [[CUICatalogCSIGenerator alloc] initWithRawData:Mutable pixelFormat:1246774599 layout:10];
        -[CUICatalogCSIGenerator setBaseKey:](v13, "setBaseKey:", [a1[4] _flattenedImageBaseKeyWithScale:{objc_msgSend(a2, "scaleFactor")}]);
        -[CUIRenditionKey setThemeIdentifier:](-[CUICatalogCSIGenerator baseKey](v13, "baseKey"), "setThemeIdentifier:", [objc_msgSend(a2 "baseKey")]);
        -[CUIRenditionKey setThemeScale:](-[CUICatalogCSIGenerator baseKey](v13, "baseKey"), "setThemeScale:", [a2 scaleFactor]);
        -[CSIGenerator setScaleFactor:](v13, "setScaleFactor:", [a2 scaleFactor]);
        v14 = CGImageGetColorSpace(Image);
        if (CGColorSpaceIsWideGamutRGB(v14))
        {
          v15 = 3;
        }

        else
        {
          v15 = 1;
        }

        [(CSIGenerator *)v13 setColorSpaceID:v15];
        -[CSIGenerator setName:](v13, "setName:", [objc_msgSend(a2 "name")]);
        if (*(a1[4] + 88) == 1)
        {
          [(CUIRenditionKey *)[(CUICatalogCSIGenerator *)v13 baseKey] setThemeDisplayGamut:1];
        }

        [a1[5] addObject:v13];
      }

      CFRelease(Mutable);
      CFRelease(v12);
    }

    v16 = +[CUINamedLayerStack createRadiosityImageWithImage:displayScale:](CUINamedLayerStack, "createRadiosityImageWithImage:displayScale:", Image, [a2 scaleFactor]);
    Width = CGImageGetWidth(v16);
    Height = CGImageGetHeight(v16);
    v19 = [[CUICatalogCSIGenerator alloc] initWithCanvasSize:1 sliceCount:10 layout:Width, Height];
    [objc_opt_self() setCompressionType:6];
    -[CSIGenerator setTargetPlatform:](v19, "setTargetPlatform:", [a1[4] targetPlatform]);
    -[CUICatalogCSIGenerator setBaseKey:](v19, "setBaseKey:", [a1[4] _radiosityImageBaseKeyWithScale:{objc_msgSend(a2, "scaleFactor")}]);
    -[CUIRenditionKey setThemeIdentifier:](-[CUICatalogCSIGenerator baseKey](v19, "baseKey"), "setThemeIdentifier:", [objc_msgSend(a2 "baseKey")]);
    -[CUIRenditionKey setThemeScale:](-[CUICatalogCSIGenerator baseKey](v19, "baseKey"), "setThemeScale:", [a2 scaleFactor]);
    -[CSIGenerator setScaleFactor:](v19, "setScaleFactor:", [a2 scaleFactor]);
    if (*(a1[4] + 88) == 1)
    {
      [(CUIRenditionKey *)[(CUICatalogCSIGenerator *)v19 baseKey] setThemeDisplayGamut:1];
    }

    v20 = CGImageGetColorSpace(v16);
    if (CGColorSpaceIsWideGamutRGB(v20))
    {
      v21 = 3;
    }

    else
    {
      v21 = 1;
    }

    [(CSIGenerator *)v19 setColorSpaceID:v21];
    -[CSIGenerator setName:](v19, "setName:", [objc_msgSend(a2 "name")]);
    v22 = [[CSIBitmapWrapper alloc] initWithPixelWidth:Width pixelHeight:Height];
    [(CSIBitmapWrapper *)v22 setColorSpaceID:[(CSIGenerator *)v19 colorSpaceID]];
    [(CSIBitmapWrapper *)v22 setSourceAlphaInfo:2];
    v23 = [(CSIBitmapWrapper *)v22 bitmapContext];
    v27.origin.x = 0.0;
    v27.origin.y = 0.0;
    v27.size.width = Width;
    v27.size.height = Height;
    CGContextDrawImage(v23, v27, v16);
    [(CSIGenerator *)v19 addBitmap:v22];
    [(CSIGenerator *)v19 addSliceRect:0.0, 0.0, Width, Height];
    memset(v24, 0, sizeof(v24));
    v25 = Width;
    v26 = Height;
    [(CSIGenerator *)v19 addMetrics:v24];
    [a1[6] addObject:v19];

    CGImageRelease(v16);
    CGImageRelease(Image);
  }
}

- (BOOL)_distillNameEntries:(id *)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __50__CUISingleNamedAssetCreator__distillNameEntries___block_invoke;
  v4[3] = &unk_1E7249858;
  v4[4] = self;
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self names] enumerateObjectsUsingBlock:v4];
  return 1;
}

id __50__CUISingleNamedAssetCreator__distillNameEntries___block_invoke(uint64_t a1, void *a2)
{
  v4 = [objc_msgSend(*(*(a1 + 32) + 80) objectForKey:{a2), "unsignedIntegerValue"}];
  LODWORD(v7) = 12;
  WORD2(v7) = 17;
  HIWORD(v7) = v4;
  LODWORD(v8) = 0;
  return [objc_msgSend(*(a1 + 32) "store")];
}

- (BOOL)writeFlattenedImageToOutput:(id)a3 error:(id *)a4
{
  if (![(CUISingleNamedAssetCreator *)self _extractFlattenedImages:a4])
  {
    return 0;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [(CUISingleNamedAssetCreator *)self generators];
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v16;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v16 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = *(*(&v15 + 1) + 8 * i);
      if ([objc_msgSend(v11 "name")])
      {
        v13 = [v11 rawData];
        v12 = 1;
        [v13 writeToURL:a3 atomically:1];
        return v12;
      }
    }

    v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    v12 = 0;
    if (v8)
    {
      continue;
    }

    break;
  }

  return v12;
}

- (id)_keyDataFromKey:(const _renditionkeytoken *)a3
{
  *v13 = 0u;
  v4 = [(CUISingleNamedAssetCreator *)self _keyFormat:0];
  var2 = v4->var2;
  if (var2 < 0x16)
  {
    v6 = &v12;
  }

  else
  {
    v6 = malloc_type_calloc(var2, 2uLL, 0x1000040BDFB0063uLL);
  }

  CUIFillCARKeyArrayForRenditionKey(v6, a3, v4);
  v7 = v4->var2;
  v8 = [NSData alloc];
  v9 = 2 * v4->var2;
  if (v7 < 0x16)
  {
    v10 = [v8 initWithBytes:v6 length:v9];
  }

  else
  {
    v10 = [v8 initWithBytesNoCopy:v6 length:v9 freeWhenDone:1];
  }

  return v10;
}

- (BOOL)_distillRenditions:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v9[3] = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __49__CUISingleNamedAssetCreator__distillRenditions___block_invoke;
  v8[3] = &unk_1E72498D0;
  v8[4] = self;
  v8[5] = &v10;
  v8[6] = v9;
  v8[7] = &v14;
  [(NSMutableArray *)[(CUISingleNamedAssetCreator *)self generators] enumerateObjectsUsingBlock:v8];
  v5 = [(CUISingleNamedAssetCreator *)self store];
  [(CUIMutableCommonAssetStorage *)v5 setRenditionCount:*(v11 + 6)];
  v6 = *(v15 + 24);
  if (a3 && (v15[3] & 1) != 0)
  {
    *a3 = [NSError errorWithDomain:NSCocoaErrorDomain code:0 userInfo:[NSDictionary dictionaryWithObject:@"Error while distilling rendition" forKey:NSLocalizedDescriptionKey]];
    v6 = *(v15 + 24);
  }

  _Block_object_dispose(v9, 8);
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(&v14, 8);
  return (v6 & 1) == 0;
}

id __49__CUISingleNamedAssetCreator__distillRenditions___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = [*(a1 + 32) _keyDataFromKey:{objc_msgSend(objc_msgSend(a2, "baseKey"), "keyList")}];
  result = [a2 CSIRepresentationWithCompression:1];
  if (v7)
  {
    v9 = result == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    *(*(*(a1 + 56) + 8) + 24) = 1;
    *a4 = 1;
  }

  else
  {
    v10 = result;
    [objc_msgSend(*(a1 + 32) "store")];
    ++*(*(*(a1 + 40) + 8) + 24);
    result = [v10 length];
    *(*(*(a1 + 48) + 8) + 24) += result;
  }

  return result;
}

- (BOOL)distillAndSave:(id *)a3
{
  [(CUISingleNamedAssetCreator *)self _configureDefaultStorageParameters];
  [(CUISingleNamedAssetCreator *)self _finalizeNameIdentifiers];
  if ([(CUISingleNamedAssetCreator *)self generateFlattenedImages]&& ![(CUISingleNamedAssetCreator *)self _extractFlattenedImages:a3]|| ![(CUISingleNamedAssetCreator *)self _distillNameEntries:a3]|| ![(CUISingleNamedAssetCreator *)self _distillRenditions:a3])
  {
    return 0;
  }

  v5 = [(CUISingleNamedAssetCreator *)self store];

  return [(CUIMutableCommonAssetStorage *)v5 writeToDiskAndCompact:1];
}

- (void)setThinningArguments:(id)a3
{
  v4 = [(CUISingleNamedAssetCreator *)self store];

  [(CUIMutableCommonAssetStorage *)v4 setThinningArguments:a3];
}

- (id)addGradient:(uint64_t)a1 withStops:(uint64_t)a2 ofType:startPoint:endPoint:withName:atScale:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = +[NSAssertionHandler currentHandler];

  return [(NSAssertionHandler *)v4 handleFailureInMethod:a1 object:a2 file:@"CUISingleNamedAssetCreator.m" lineNumber:586 description:@"[CUISingleNamedAssetCreator addGradient:ofType:withStops:startPoint:endPoint:withName:atScale:] called with non matching colors.count !+ stops.count"];
}

@end