@interface CSIGenerator
+ (void)initialize;
+ (void)setFileEncoding:(int)a3;
- ($01BB1521EC52D44A8E7628F5261DCEC8)alignmentRectInsets;
- (CGPoint)namedgradientEndPoint;
- (CGPoint)namedgradientStartPoint;
- (CGRect)alphaCroppedFrame;
- (CGSize)originalUncroppedSize;
- (CGSize)physicalSizeInMeters;
- (CGSize)size;
- (CSIGenerator)initWithCanvasSize:(CGSize)a3 sliceCount:(unsigned int)a4 layout:(signed __int16)a5;
- (CSIGenerator)initWithColorNamed:(id)a3 colorSpaceID:(unint64_t)a4 components:(id)a5;
- (CSIGenerator)initWithColorNamed:(id)a3 colorSpaceID:(unint64_t)a4 components:(id)a5 linkedToSystemColorWithName:(id)a6;
- (CSIGenerator)initWithExternalReference:(id)a3 tags:(id)a4;
- (CSIGenerator)initWithGradientNamed:(id)a3 type:(int64_t)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 colorNames:(id)a7 colorStops:(id)a8;
- (CSIGenerator)initWithInternalReferenceRect:(CGRect)a3 layout:(signed __int16)a4;
- (CSIGenerator)initWithLayerStackData:(id)a3 type:(int64_t)a4 withCanvasSize:(CGSize)a5;
- (CSIGenerator)initWithModelAsset:(id)a3;
- (CSIGenerator)initWithModelMesh:(id)a3;
- (CSIGenerator)initWithModelSubmesh:(id)a3;
- (CSIGenerator)initWithMultisizeImageSetNamed:(id)a3 sizesByIndex:(id)a4;
- (CSIGenerator)initWithNameList:(id)a3;
- (CSIGenerator)initWithRawData:(id)a3 pixelFormat:(unsigned int)a4 layout:(signed __int16)a5;
- (CSIGenerator)initWithShapeEffectPreset:(id)a3 forScaleFactor:(unsigned int)a4;
- (CSIGenerator)initWithTextStyleNamed:(id)a3 fontName:(id)a4 fontSize:(double)a5 maxPointSize:(double)a6 minPointSize:(double)a7 scalingStyle:(signed __int16)a8 alignment:(signed __int16)a9;
- (CSIGenerator)initWithTextureForPixelFormat:(int64_t)a3;
- (CSIGenerator)initWithTextureImageWithSize:(CGSize)a3 forPixelFormat:(int64_t)a4 cubeMap:(BOOL)a5;
- (__n128)setTransformation:(__n128)a3;
- (id)CSIRepresentationWithCompression:(BOOL)a3;
- (id)_addNodes:(uint64_t)a3 toNodeList:;
- (id)_updateCompressionInfoFor:(id)result;
- (id)formatCSIHeader:(id)result;
- (size_t)writeMultisizeImageSetToData:(uint64_t)a1;
- (uint64_t)_shouldUseCompactCompressionForBitmap:(uint64_t)result;
- (uint64_t)writeBitmap:(void *)a3 toData:(uint64_t)a4 compress:;
- (uint64_t)writeColorToData:(uint64_t)a1;
- (uint64_t)writeExternalLinkToData:(uint64_t)a1;
- (uint64_t)writeGradientToData:(id *)a1;
- (uint64_t)writeNamedGradientToData:(uint64_t)a1;
- (uint64_t)writeRawDataToData:(uint64_t)result;
- (uint64_t)writeRecognitionObjectToData:(uint64_t)result;
- (uint64_t)writeResourcesToData:(uint64_t)a1;
- (uint64_t)writeTextStyleToData:(CFStringRef *)a1;
- (uint64_t)writeTextureToData:(uint64_t)a1;
- (void)addBitmap:(id)a3;
- (void)addMetrics:(id *)a3;
- (void)addSliceRect:(CGRect)a3;
- (void)dealloc;
- (void)setCompressionQuality:(double)a3;
- (void)setCompressionType:(int64_t)a3;
- (void)setTargetPlatform:(int64_t)a3;
@end

@implementation CSIGenerator

- (CGPoint)namedgradientEndPoint
{
  x = self->_namedgradatientEndPoint.x;
  y = self->_namedgradatientEndPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)namedgradientStartPoint
{
  x = self->_namedgradientStartPoint.x;
  y = self->_namedgradientStartPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CSIGenerator;
  [(CSIGenerator *)&v3 dealloc];
}

+ (void)initialize
{
  v19 = 0;
  __SetBoolConfigFromEnvironment(&__coreThemeLoggingEnabled, "CoreThemeLoggingEnabled");
  __SetBoolConfigFromEnvironment(&__loggingEnabled, "CoreUI_LogCompressionStats");
  if (getenv("CoreUI_USELZVN"))
  {
    __SetBoolConfigFromEnvironment(&v19, "CoreUI_USELZVN");
    if (getenv("CoreUI_USELZVN"))
    {
      _CUILog(1, "CoreUI: CoreUI_USELZVN is depreciated use the environment variable CoreUI_COMPRESSION instead", v2, v3, v4, v5, v6, v7, v18);
    }

    __environmentRequestedCompression = v19;
  }

  else
  {
    v8 = getenv("CoreUI_COMPRESSION");
    if (v8)
    {
      v9 = v8;
      if (!strncasecmp(v8, "lzw", 3uLL))
      {
        __environmentRequestedCompression = 0;
      }

      else
      {
        if (!strncasecmp(v9, "lzvn", 4uLL))
        {
          v16 = &OBJC_IVAR___CSIBitmapWrapper__targetPlatform;
          v17 = 1;
        }

        else
        {
          if (strncasecmp(v9, "lzfse", 5uLL))
          {
            _CUILog(4, "CoreUI: Unknown value passed to environment variable '%s' ignoring", v10, v11, v12, v13, v14, v15, "CoreUI_COMPRESSION");
            return;
          }

          v16 = &OBJC_IVAR___CSIBitmapWrapper__targetPlatform;
          v17 = 2;
        }

        v16[726] = v17;
      }
    }
  }
}

+ (void)setFileEncoding:(int)a3
{
  if (!getenv("CoreUI_USELZVN") && !getenv("CoreUI_COMPRESSION"))
  {
    __environmentRequestedCompression = a3;
  }
}

- (CSIGenerator)initWithCanvasSize:(CGSize)a3 sliceCount:(unsigned int)a4 layout:(signed __int16)a5
{
  v5 = a5;
  height = a3.height;
  width = a3.width;
  v12.receiver = self;
  v12.super_class = CSIGenerator;
  v9 = [(CSIGenerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_size.width = width;
    v9->_size.height = height;
    v9->_layout = v5;
    if (v5 != 6)
    {
      v9->_slices = [[NSMutableArray alloc] initWithCapacity:a4];
      v10->_bitmaps = [[NSMutableArray alloc] initWithCapacity:1];
      v10->_metrics = [[NSMutableArray alloc] initWithCapacity:2];
    }

    v10->_layerReferences = objc_alloc_init(NSMutableArray);
    v10->_blendMode = 0;
    v10->_opacity = 1.0;
    v10->_pixelFormat = 1095911234;
    *&v10->_allowsMultiPassEncoding = 257;
    *&v10->_allowsPaletteImageCompression = 0;
  }

  return v10;
}

- (CSIGenerator)initWithShapeEffectPreset:(id)a3 forScaleFactor:(unsigned int)a4
{
  v9.receiver = self;
  v9.super_class = CSIGenerator;
  v6 = [(CSIGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_size = NSZeroSize;
    v6->_layout = 7;
    v6->_scaleFactor = a4;
    [(CSIGenerator *)v6 setEffectPreset:a3];
    v7->_blendMode = 0;
    v7->_opacity = 1.0;
    v7->_pixelFormat = 1095911234;
    *&v7->_allowsMultiPassEncoding = 257;
    *&v7->_allowsPaletteImageCompression = 0;
  }

  return v7;
}

- (CSIGenerator)initWithNameList:(id)a3
{
  v7.receiver = self;
  v7.super_class = CSIGenerator;
  v4 = [(CSIGenerator *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_layout = 1005;
    v4->_scaleFactor = 1;
    v4->_containedNamedElements = a3;
  }

  return v5;
}

- (CSIGenerator)initWithRawData:(id)a3 pixelFormat:(unsigned int)a4 layout:(signed __int16)a5
{
  if (a4 <= 1246774598)
  {
    if (a4 == 1145132097)
    {
      goto LABEL_9;
    }

    v9 = 1212500294;
  }

  else
  {
    if (a4 == 1246774599 || a4 == 1346651680)
    {
      goto LABEL_9;
    }

    v9 = 1398163232;
  }

  if (a4 != v9)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:a2 file:self lineNumber:@"CSIGenerator.m" description:293, @"initWithRawData is only supported for SVG/PDF/JPEG/HEIGF and Raw data for now"];
  }

LABEL_9:
  v13.receiver = self;
  v13.super_class = CSIGenerator;
  v10 = [(CSIGenerator *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_layout = a5;
    v10->_scaleFactor = 0;
    v10->_pixelFormat = a4;
    v10->_rawData = a3;
    *&v11->_allowsMultiPassEncoding = 257;
    *&v11->_allowsPaletteImageCompression = 0;
    v11->_opacity = 1.0;
    if (a4 == 1246774599 || a4 == 1212500294)
    {
      v11->_slices = objc_alloc_init(NSMutableArray);
      v11->_bitmaps = objc_alloc_init(NSMutableArray);
      v11->_metrics = objc_alloc_init(NSMutableArray);
    }
  }

  return v11;
}

- (CSIGenerator)initWithExternalReference:(id)a3 tags:(id)a4
{
  v9.receiver = self;
  v9.super_class = CSIGenerator;
  v6 = [(CSIGenerator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    v6->_size = NSZeroSize;
    v6->_layout = 1001;
    v6->_blendMode = 0;
    v6->_opacity = 1.0;
    v6->_pixelFormat = 1095911234;
    *&v6->_allowsMultiPassEncoding = 257;
    *&v6->_allowsPaletteImageCompression = 0;
    v6->_assetPackIdentifier = a3;
    v7->_externalTags = a4;
  }

  return v7;
}

- (CSIGenerator)initWithLayerStackData:(id)a3 type:(int64_t)a4 withCanvasSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CSIGenerator;
  v9 = [(CSIGenerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_size.width = width;
    v9->_size.height = height;
    v9->_layout = v7;
    v9->_blendMode = 0;
    v9->_opacity = 1.0;
    v9->_pixelFormat = 1145132097;
    *&v9->_allowsMultiPassEncoding = 257;
    *&v9->_allowsPaletteImageCompression = 0;
    v9->_metrics = objc_alloc_init(NSMutableArray);
    v10->_layerReferences = objc_alloc_init(NSMutableArray);
    v10->_rawData = a3;
  }

  return v10;
}

- (CSIGenerator)initWithTextureForPixelFormat:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CSIGenerator;
  v4 = [(CSIGenerator *)&v7 init];
  v5 = v4;
  if (v4)
  {
    v4->_layout = 1007;
    v4->_textureFormat = a3;
    v4->_pixelFormat = 1095911234;
    v4->_opacity = 1.0;
    *&v4->_allowsMultiPassEncoding = 257;
    *&v4->_allowsPaletteImageCompression = 0;
    v4->_mipReferences = objc_alloc_init(NSMutableArray);
  }

  return v5;
}

- (CSIGenerator)initWithTextureImageWithSize:(CGSize)a3 forPixelFormat:(int64_t)a4 cubeMap:(BOOL)a5
{
  v5 = a5;
  height = a3.height;
  width = a3.width;
  v14.receiver = self;
  v14.super_class = CSIGenerator;
  v9 = [(CSIGenerator *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_size.width = width;
    v9->_size.height = height;
    v9->_layout = 1008;
    v9->_textureFormat = a4;
    v9->_pixelFormat = 1095911234;
    v9->_opacity = 1.0;
    v9->_isCubeMap = v5;
    v11 = [NSMutableArray alloc];
    if (v5)
    {
      v12 = 6;
    }

    else
    {
      v12 = 1;
    }

    v10->_bitmaps = [v11 initWithCapacity:v12];
    *&v10->_allowsPaletteImageCompression = 0;
  }

  return v10;
}

- (CSIGenerator)initWithInternalReferenceRect:(CGRect)a3 layout:(signed __int16)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = [(CSIGenerator *)self initWithCanvasSize:1 sliceCount:1003 layout:a3.size.width, a3.size.height];
  v10 = v9;
  if (v9)
  {
    v9->_externalReferenceFrame.origin.x = x;
    v9->_externalReferenceFrame.origin.y = y;
    v9->_externalReferenceFrame.size.width = width;
    v9->_externalReferenceFrame.size.height = height;

    v10->_slices = objc_alloc_init(NSMutableArray);
    v10->_metrics = objc_alloc_init(NSMutableArray);
    v10->_layerReferences = objc_alloc_init(NSMutableArray);
    v10->_blendMode = 0;
    v10->_opacity = 1.0;
    v10->_pixelFormat = 1095911234;
    *&v10->_allowsMultiPassEncoding = 257;
    *&v10->_allowsPaletteImageCompression = 0;
    v10->_linkLayout = a4;
  }

  return v10;
}

- (CSIGenerator)initWithColorNamed:(id)a3 colorSpaceID:(unint64_t)a4 components:(id)a5
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = CSIGenerator;
  v8 = [(CSIGenerator *)&v10 init];
  if (v8)
  {
    v8->_name = a3;
    v8->_colorComponents = a5;
    v8->_colorSpaceID = v6;
    v8->_layout = 1009;
  }

  return v8;
}

- (CSIGenerator)initWithColorNamed:(id)a3 colorSpaceID:(unint64_t)a4 components:(id)a5 linkedToSystemColorWithName:(id)a6
{
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CSIGenerator;
  v10 = [(CSIGenerator *)&v12 init];
  if (v10)
  {
    v10->_name = a3;
    v10->_colorComponents = a5;
    v10->_colorSpaceID = v8;
    v10->_layout = 1009;
    v10->_systemColorName = a6;
  }

  return v10;
}

- (CSIGenerator)initWithGradientNamed:(id)a3 type:(int64_t)a4 startPoint:(CGPoint)a5 endPoint:(CGPoint)a6 colorNames:(id)a7 colorStops:(id)a8
{
  y = a6.y;
  x = a6.x;
  v13 = a5.y;
  v14 = a5.x;
  v25.receiver = self;
  v25.super_class = CSIGenerator;
  v16 = [(CSIGenerator *)&v25 init];
  if (v16)
  {
    v16->_name = a3;
    v16->_layout = 1021;
    v16->_namedgradientType = a4;
    v16->_namedgradientStartPoint.x = v14;
    v16->_namedgradientStartPoint.y = v13;
    v16->_namedgradatientEndPoint.x = x;
    v16->_namedgradatientEndPoint.y = y;
    v16->_namedgradientStops = a8;
    v16->_namedgradationColors = a7;
    v17 = [(NSArray *)v16->_namedgradientStops count];
    if (v17 != [(NSArray *)v16->_namedgradationColors count])
    {

      _CUILog(4, "CoreUI: stops count != colornames count '%s' ignoring", v18, v19, v20, v21, v22, v23, a3);
      return 0;
    }
  }

  return v16;
}

- (CSIGenerator)initWithTextStyleNamed:(id)a3 fontName:(id)a4 fontSize:(double)a5 maxPointSize:(double)a6 minPointSize:(double)a7 scalingStyle:(signed __int16)a8 alignment:(signed __int16)a9
{
  v18.receiver = self;
  v18.super_class = CSIGenerator;
  v16 = [(CSIGenerator *)&v18 init];
  if (v16)
  {
    v16->_name = a3;
    v16->_fontName = a4;
    v16->_fontSize = a5;
    v16->_maxPointSize = a6;
    v16->_minPointSize = a7;
    v16->_scalingStyle = a8;
    v16->_alignment = a9;
    v16->_layout = 1015;
  }

  return v16;
}

- (CSIGenerator)initWithMultisizeImageSetNamed:(id)a3 sizesByIndex:(id)a4
{
  v8.receiver = self;
  v8.super_class = CSIGenerator;
  v6 = [(CSIGenerator *)&v8 init];
  if (v6)
  {
    v6->_name = a3;
    v6->_sizesByIndex = a4;
    v6->_layout = 1010;
  }

  return v6;
}

- (CSIGenerator)initWithModelAsset:(id)a3
{
  v6.receiver = self;
  v6.super_class = CSIGenerator;
  v4 = [(CSIGenerator *)&v6 init];
  if (v4)
  {
    v4->_modelAsset = a3;
    v4->_layout = 1011;
    v4->_meshReferences = objc_alloc_init(NSMutableArray);
  }

  return v4;
}

- (CSIGenerator)initWithModelMesh:(id)a3
{
  v6.receiver = self;
  v6.super_class = CSIGenerator;
  v4 = [(CSIGenerator *)&v6 init];
  if (v4)
  {
    v4->_modelMesh = a3;
    v4->_layout = 1012;
    v4->_submeshReferences = objc_alloc_init(NSMutableArray);
  }

  return v4;
}

- (CSIGenerator)initWithModelSubmesh:(id)a3
{
  v6.receiver = self;
  v6.super_class = CSIGenerator;
  v4 = [(CSIGenerator *)&v6 init];
  if (v4)
  {
    v4->_modelSubmesh = a3;
    v4->_layout = 1016;
  }

  return v4;
}

- (void)setCompressionQuality:(double)a3
{
  self->_compressionQuality = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  bitmaps = self->_bitmaps;
  v5 = [(NSMutableArray *)bitmaps countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(bitmaps);
        }

        [CSIGenerator _updateCompressionInfoFor:?];
      }

      v6 = [(NSMutableArray *)bitmaps countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setCompressionType:(int64_t)a3
{
  self->_compressionType = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  bitmaps = self->_bitmaps;
  v5 = [(NSMutableArray *)bitmaps countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(bitmaps);
        }

        [CSIGenerator _updateCompressionInfoFor:?];
      }

      v6 = [(NSMutableArray *)bitmaps countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)setTargetPlatform:(int64_t)a3
{
  self->_targetPlatform = a3;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  bitmaps = self->_bitmaps;
  v5 = [(NSMutableArray *)bitmaps countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(bitmaps);
        }

        [CSIGenerator _updateCompressionInfoFor:?];
      }

      v6 = [(NSMutableArray *)bitmaps countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)addSliceRect:(CGRect)a3
{
  slices = self->_slices;
  v4 = [NSValue valueWithRect:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  [(NSMutableArray *)slices addObject:v4];
}

- (void)addMetrics:(id *)a3
{
  var1 = a3->var1;
  v7[0] = a3->var0;
  v7[1] = var1;
  v7[2] = a3->var2;
  v6[0] = CSIIllegalMetrics;
  v6[1] = unk_18E021298;
  v6[2] = xmmword_18E0212A8;
  if (!CSIEqualMetrics(v7, v6))
  {
    [(NSMutableArray *)self->_metrics addObject:[NSValue valueWithBytes:a3 objCType:"{?={CGSize=dd}{CGSize=dd}{CGSize=dd}}"]];
  }
}

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)physicalSizeInMeters
{
  width = self->_physicalSizeInMeters.width;
  height = self->_physicalSizeInMeters.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)originalUncroppedSize
{
  width = self->_originalUncroppedSize.width;
  height = self->_originalUncroppedSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)alphaCroppedFrame
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

- (__n128)setTransformation:(__n128)a3
{
  result[33] = a2;
  result[34] = a3;
  result[35] = a4;
  result[36] = a5;
  return result;
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)alignmentRectInsets
{
  top = self->_alignmentRectInsets.top;
  left = self->_alignmentRectInsets.left;
  bottom = self->_alignmentRectInsets.bottom;
  right = self->_alignmentRectInsets.right;
  result.var3 = right;
  result.var2 = bottom;
  result.var1 = left;
  result.var0 = top;
  return result;
}

- (uint64_t)_shouldUseCompactCompressionForBitmap:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_35();
    if ([v3 compressionType] == 3 && objc_msgSend(v2, "pixelFormat") == 1095911234)
    {
      v4 = [v1 sourceAlphaInfo] == 5 || objc_msgSend(v1, "sourceAlphaInfo") == 6 || objc_msgSend(v1, "sourceAlphaInfo") == 0;
    }

    else
    {
      v4 = 0;
    }

    return [v1 allowsCompactCompression] & v4;
  }

  return result;
}

- (id)_updateCompressionInfoFor:(id)result
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_35();
  if ([v3 compressionType] == 3)
  {
    v4 = [v2 allowsHevcCompression];
    if ([v2 pixelFormat] == 1195456544 && !v4)
    {
      v5 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    [v2 pixelFormat];
  }

  if (([CSIGenerator _shouldUseCompactCompressionForBitmap:v2]& 1) != 0)
  {
    v5 = 7;
  }

  else
  {
    v5 = [v2 compressionType];
  }

LABEL_6:
  [v1 setCompressionType:v5];
  [v1 setTargetPlatform:{objc_msgSend(v2, "targetPlatform")}];
  [v2 compressionQuality];
  [v1 setCompressionQuality:?];
  [v2 allowsPaletteImageCompression];
  [OUTLINED_FUNCTION_15_0() setAllowsPaletteImageCompression:?];
  [v2 allowsHevcCompression];
  [OUTLINED_FUNCTION_15_0() setAllowsHevcCompression:?];
  [v2 allowsDeepmapImageCompression];
  [OUTLINED_FUNCTION_15_0() setAllowsDeepmapImageCompression:?];
  [v2 allowsDeepmap2ImageCompression];
  v6 = OUTLINED_FUNCTION_15_0();

  return [v6 setAllowsDeepmap2ImageCompression:?];
}

- (void)addBitmap:(id)a3
{
  [a3 setName:{-[CSIGenerator name](self, "name")}];
  [CSIGenerator _updateCompressionInfoFor:?];
  bitmaps = self->_bitmaps;

  [(NSMutableArray *)bitmaps addObject:a3];
}

- (id)formatCSIHeader:(id)result
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_35();
  *v4 = 0x143545349;
  if (v3[88])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (v3[89])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  *(v4 + 8) = v6 | v5;
  *(v4 + 28) &= 0xFu;
  v7 = [v3 templateRenderingMode];
  if (v7 == 1)
  {
    v8 = 8;
    goto LABEL_12;
  }

  if (v7 == 2)
  {
    v8 = 16;
LABEL_12:
    *(v1 + 8) |= v8;
  }

  if ([v2 optOutOfThinning])
  {
    *(v1 + 8) |= 0x20u;
  }

  if ([v2 preserveForArchiveOnly])
  {
    *(v1 + 8) |= 0x200u;
  }

  if ([v2 preservedVectorRepresentation])
  {
    *(v1 + 8) |= 0x100u;
  }

  if ([v2 isFlippable])
  {
    *(v1 + 8) |= 0x40u;
  }

  if ([v2 isTintable])
  {
    *(v1 + 8) |= 0x80u;
  }

  *(v1 + 12) = vcvt_u32_f32(vrndx_f32(vcvt_f32_f64(*(v2 + 8))));
  *(v1 + 20) = 100 * *(v2 + 140);
  *(v1 + 24) = *(v2 + 192);
  v9 = *(v2 + 192);
  switch(v9)
  {
    case 1095911234:
    case 1195454774:
      goto LABEL_33;
    case 1195456544:
      v17 = *(v1 + 28) & 0xFFFFFFF0 | 2;
      break;
    case 1380401751:
    case 1398163232:
LABEL_33:
      v17 = *(v1 + 28) & 0xFFFFFFF0 | *(v2 + 136) & 0xF;
      break;
    default:
      v17 = *(v1 + 28);
      break;
  }

  *(v1 + 28) = v17 & 0xF;
  if ([v2 modtime])
  {
    [objc_msgSend(v2 "modtime")];
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  *(v1 + 32) = v13;
  *(v1 + 36) = *(v2 + 138);
  v14 = *(v2 + 24);
  if (v14)
  {
    v15 = [v14 UTF8String];
  }

  else
  {
    v15 = "CoreStructuredImage";
  }

  strncpy((v1 + 40), v15, 0x7FuLL);
  *(v1 + 168) = 0;
  result = [*(v2 + 64) count];
  if (result <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = result;
  }

  *(v1 + 172) = v16;
  return result;
}

- (uint64_t)writeResourcesToData:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = a1;
  v297 = 0;
  v296 = 0;
  if ([*(a1 + 56) count] == 9 && objc_msgSend(*(v3 + 64), "count") && (objc_msgSend(objc_msgSend(*(v3 + 56), "objectAtIndex:", 4), "rectValue"), v4 == objc_msgSend(objc_msgSend(*(v3 + 64), "objectAtIndex:", 0), "width")) && (objc_msgSend(objc_msgSend(*(v3 + 56), "objectAtIndex:", 4), "rectValue"), v5 == objc_msgSend(objc_msgSend(*(v3 + 64), "objectAtIndex:", 0), "height")) && ((objc_msgSend(objc_msgSend(*(v3 + 56), "objectAtIndex:", 0), "rectValue"), v7 = v6, v9 = v8, objc_msgSend(objc_msgSend(*(v3 + 56), "objectAtIndex:", 1), "rectValue"), v260 = v10, v12 = v11, objc_msgSend(objc_msgSend(*(v3 + 56), "objectAtIndex:", 2), "rectValue"), v249 = v13, v255 = v14, objc_msgSend(objc_msgSend(*(v3 + 56), "objectAtIndex:", 3), "rectValue"), v235 = v15, obj = v16, objc_msgSend(objc_msgSend(*(v3 + 56), "objectAtIndex:", 4), "rectValue"), objc_msgSend(objc_msgSend(*(v3 + 56), "objectAtIndex:", 5), "rectValue"), v231 = v17, v19 = v18, objc_msgSend(objc_msgSend(*(v3 + 56), "objectAtIndex:", 6), "rectValue"), v21 = v20, v23 = v22, objc_msgSend(objc_msgSend(*(v3 + 56), "objectAtIndex:", 7), "rectValue"), v25 = v24, v27 = v26, objc_msgSend(objc_msgSend(*(v3 + 56), "objectAtIndex:", 8), "rectValue"), v9 == 0.0) || v7 == 0.0) && (v12 == 0.0 || *&v260 == 0.0) && (*&v255 == 0.0 || *&v249 == 0.0) && (*&obj == 0.0 || *&v235 == 0.0) && (v19 == 0.0 || v231 == 0.0) && (v23 == 0.0 || v21 == 0.0) && (v27 == 0.0 || v25 == 0.0) && (v29 == 0.0 || v28 == 0.0))
  {
    v30 = *(v3 + 56);
  }

  else
  {
    v30 = [*(v3 + 56) sortedArrayUsingFunction:__sliceSort context:0];
  }

  v31 = [v30 count];
  v296 = v31;
  if (v31)
  {
    LODWORD(v297) = 1001;
    HIDWORD(v297) = (16 * v31) | 4;
    OUTLINED_FUNCTION_5_0();
    v32 = [a2 appendBytes:&v296 length:4];
    v294 = 0u;
    v295 = 0u;
    v292 = 0u;
    v293 = 0u;
    v34 = OUTLINED_FUNCTION_12_0(v32, v33, &v292, v299);
    if (v34)
    {
      v35 = v34;
      v36 = *v293;
      v37 = 12;
      do
      {
        for (i = 0; i != v35; i = i + 1)
        {
          if (*v293 != v36)
          {
            objc_enumerationMutation(v30);
          }

          [*(*(&v292 + 1) + 8 * i) rectValue];
          *v43.i64 = OUTLINED_FUNCTION_11_0(v39, v40, v41, v42);
          *v265 = vcvtq_u32_f32(v43);
          v44 = [a2 appendBytes:v265 length:16];
        }

        v37 += 16 * v35;
        v35 = OUTLINED_FUNCTION_12_0(v44, v45, &v292, v299);
      }

      while (v35);
    }

    else
    {
      v37 = 12;
    }
  }

  else
  {
    v37 = 0;
  }

  v232 = sel_writeResourcesToData_;
  v46 = [*(v3 + 72) count];
  v291 = v46;
  if (v46)
  {
    LODWORD(v297) = 1003;
    HIDWORD(v297) = (24 * v46) | 4;
    OUTLINED_FUNCTION_5_0();
    v47 = [a2 appendBytes:&v291 length:4];
    v37 += 12;
    v289 = 0u;
    v290 = 0u;
    v287 = 0u;
    v288 = 0u;
    v48 = *(v3 + 72);
    v56 = OUTLINED_FUNCTION_22_0(v47, v49, v50, v51, v52, v53, v54, v55, v227, sel_writeResourcesToData_, v235, v239, obj, v249, v255, v260, *v265, *&v265[8], *&v265[16], *&v265[24], *&v265[32], *&v265[40], *&v265[48], *&v265[56], *&v265[64], v266, v267, *(&v267 + 1), v268, *(&v268 + 1), v269, *(&v269 + 1), v270, *(&v270 + 1), v271, *(&v271 + 1), v272, *(&v272 + 1), v273, *(&v273 + 1), v274, *(&v274 + 1), v275, *(&v275 + 1), v276, *(&v276 + 1), v277, *(&v277 + 1), v278, *(&v278 + 1), v279, *(&v279 + 1), v280, *(&v280 + 1), v281, *(&v281 + 1), v282, *(&v282 + 1), v283, v284, v285.i64[0], v285.i64[1], v286);
    if (v56)
    {
      v57 = v56;
      do
      {
        for (j = 0; j != v57; j = j + 1)
        {
          OUTLINED_FUNCTION_16_0();
          if (!_ZF)
          {
            objc_enumerationMutation(v48);
          }

          v60 = *(*(&v287 + 1) + 8 * j);
          memset(v265, 0, 48);
          [v60 getValue:v265];
          v61 = vcvtq_s32_f32(vrndxq_f32(vcvt_hight_f32_f64(vcvt_f32_f64(*v265), *&v265[16])));
          v285 = vtrn1q_s32(v61, vextq_s8(v61, v61, 0xCuLL));
          v62 = vcvt_s32_f32(vrndx_f32(vcvt_f32_f64(*&v265[32])));
          v286 = v62;
          if (*(v3 + 456) == 1)
          {
            v63 = vmaxq_s32(v61, 0);
            v285 = vtrn1q_s32(v63, vextq_s8(v63, v63, 0xCuLL));
            v286 = vmax_s32(v62, 0);
          }

          v64 = [a2 appendBytes:&v285 length:24];
        }

        v37 += 24 * v57;
        v57 = OUTLINED_FUNCTION_22_0(v64, v65, v66, v67, v68, v69, v70, v71, v227, v232, v235, v239, obj, v250, v256, v261, *v265, *&v265[8], *&v265[16], *&v265[24], *&v265[32], *&v265[40], *&v265[48], *&v265[56], *&v265[64], v266, v267, *(&v267 + 1), v268, *(&v268 + 1), v269, *(&v269 + 1), v270, *(&v270 + 1), v271, *(&v271 + 1), v272, *(&v272 + 1), v273, *(&v273 + 1), v274, *(&v274 + 1), v275, *(&v275 + 1), v276, *(&v276 + 1), v277, *(&v277 + 1), v278, *(&v278 + 1), v279, *(&v279 + 1), v280, *(&v280 + 1), v281, *(&v281 + 1), v282, *(&v282 + 1), v283, v284, v285.i64[0], v285.i64[1], v286);
      }

      while (v57);
    }
  }

  v72 = [*(v3 + 80) count];
  v73 = v72;
  v257 = a2;
  v262 = v3;
  if (*(v3 + 138) == 1003)
  {
    v74 = objc_alloc_init(NSMutableData);
    *&v265[26] = 0;
    *v265 = 1229868107;
    *&v75 = OUTLINED_FUNCTION_18_0(*(v3 + 224), *(v3 + 240)).u64[0];
    *&v265[24] = *(v3 + 256);
    if (v73 != 1)
    {
      [+[NSAssertionHandler handleFailureInMethod:v75]object:"handleFailureInMethod:object:file:lineNumber:description:" file:v232 lineNumber:v3 description:@"CSIGenerator.m", 938, @"We need to have at 1 and only 1 reference file here"];
    }

    v76 = [objc_msgSend(objc_msgSend(*(v3 + 80) "firstObject")];
    v77 = CUIRenditionKeyTokenCount(v76);
    v78 = (4 * v77 + 4);
    *&v265[26] = 4 * v77 + 4;
    [OUTLINED_FUNCTION_14_0() appendBytes:? length:?];
    [v74 appendBytes:v76 length:v78];
    HIDWORD(v297) = OUTLINED_FUNCTION_27_0(1010);
    OUTLINED_FUNCTION_5_0();
    [a2 appendData:v74];
    v37 += [v74 length] + 8;
  }

  else if (v72)
  {
    v284 = 0;
    v285.i64[0] = 0;
    v283 = 0;
    v79 = objc_alloc_init(NSMutableData);
    v285.i32[1] = 0;
    v285.i32[0] = [*(v3 + 80) count];
    v80 = [v79 appendBytes:&v285 length:8];
    v281 = 0u;
    v282 = 0u;
    v279 = 0u;
    v280 = 0u;
    v81 = *(v3 + 80);
    v89 = OUTLINED_FUNCTION_25_0(v80, v82, v83, v84, v85, v86, v87, v88, v227, v232, v235, v239, obj, v37, a2, v3, *v265, *&v265[8], *&v265[16], *&v265[24], *&v265[32], *&v265[40], *&v265[48], *&v265[56], *&v265[64], v266, v267, *(&v267 + 1), v268, *(&v268 + 1), v269, *(&v269 + 1), v270, *(&v270 + 1), v271, *(&v271 + 1), v272, *(&v272 + 1), v273, *(&v273 + 1), v274, *(&v274 + 1), v275, *(&v275 + 1), v276, *(&v276 + 1), v277, *(&v277 + 1), v278, *(&v278 + 1), 0);
    if (v89)
    {
      v90 = v89;
      do
      {
        for (k = 0; k != v90; k = k + 1)
        {
          OUTLINED_FUNCTION_16_0();
          if (!_ZF)
          {
            objc_enumerationMutation(v81);
          }

          v92 = *(*(&v279 + 1) + 8 * k);
          memset(v265, 0, 32);
          [v92 frame];
          *v97.i64 = OUTLINED_FUNCTION_11_0(v93, v94, v95, v96);
          *&v98 = vcvtq_s32_f32(v97).u64[0];
          *(&v98 + 1) = vcvtq_u32_f32(v97).i64[1];
          *&v265[4] = v98;
          [v92 opacity];
          *&v99 = v99;
          *&v265[24] = LODWORD(v99);
          *&v265[20] = [v92 blendMode];
          *v265 = 0;
          [v92 fixedFrame];
          OUTLINED_FUNCTION_4_0();
          v100 = [objc_msgSend(v92 "referenceKey")];
          *&v265[28] = 4 * CUIRenditionKeyTokenCount(v100) + 4;
          [v79 appendBytes:v265 length:32];
          v101 = [v79 appendBytes:v100 length:*&v265[28]];
        }

        v90 = OUTLINED_FUNCTION_25_0(v101, v102, v103, v104, v105, v106, v107, v108, v228, v233, v236, v240, obja, v251, v258, v263, *v265, *&v265[8], *&v265[16], *&v265[24], *&v265[32], *&v265[40], *&v265[48], *&v265[56], *&v265[64], v266, v267, *(&v267 + 1), v268, *(&v268 + 1), v269, *(&v269 + 1), v270, *(&v270 + 1), v271, *(&v271 + 1), v272, *(&v272 + 1), v273, *(&v273 + 1), v274, *(&v274 + 1), v275, *(&v275 + 1), v276, *(&v276 + 1), v277, *(&v277 + 1), v278, *(&v278 + 1), v279);
      }

      while (v90);
    }

    LODWORD(v297) = 1012;
    HIDWORD(v297) = [v79 length];
    OUTLINED_FUNCTION_5_0();
    [a2 appendData:v79];
    v109 = [v79 length];

    v110 = objc_alloc_init(NSMutableData);
    HIDWORD(v284) = 0;
    LODWORD(v284) = [*(v3 + 80) count];
    v111 = [v110 appendBytes:&v284 length:8];
    v277 = 0u;
    v278 = 0u;
    v275 = 0u;
    v276 = 0u;
    v112 = *(v3 + 80);
    v120 = OUTLINED_FUNCTION_19_0(v111, v113, v114, v115, v116, v117, v118, v119, v228, v233, v236, v240, obja, v251, v258, v263, *v265, *&v265[8], *&v265[16], *&v265[24], *&v265[32], *&v265[40], *&v265[48], *&v265[56], *&v265[64], v266, v267, *(&v267 + 1), v268, *(&v268 + 1), v269, *(&v269 + 1), v270, *(&v270 + 1), v271, *(&v271 + 1), v272, *(&v272 + 1), v273, *(&v273 + 1), v274, *(&v274 + 1), 0);
    if (v120)
    {
      v121 = v120;
      do
      {
        for (m = 0; m != v121; m = m + 1)
        {
          OUTLINED_FUNCTION_16_0();
          if (!_ZF)
          {
            objc_enumerationMutation(v112);
          }

          v123 = *(*(&v275 + 1) + 8 * m);
          *&v265[8] = 0;
          *v265 = 0;
          [v123 hasLightingEffects];
          OUTLINED_FUNCTION_4_0();
          if ([v123 gathersSpecularByElement])
          {
            v124 = 2;
          }

          else
          {
            v124 = 0;
          }

          *v265 = *v265 & 0xFFFFFFFD | v124;
          [v123 blurStrength];
          *&v265[4] = v125;
          v126 = [v123 gradientOrColorName];
          if ([(__CFString *)v126 length])
          {
            MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(v126);
            v128 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x53EDDE0FuLL);
            CFStringGetFileSystemRepresentation(v126, v128, MaximumSizeOfFileSystemRepresentation);
            v129 = MaximumSizeOfFileSystemRepresentation;
            v3 = v264;
            v130 = strnlen(v128, v129) + 1;
          }

          else
          {
            v130 = 1;
            v128 = malloc_type_malloc(1uLL, 0x8704440FuLL);
            *v128 = 0;
          }

          *&v265[8] = v130;
          [v110 appendBytes:v265 length:12];
          v131 = [v110 appendBytes:v128 length:*&v265[8]];
          if (v128)
          {
            free(v128);
          }
        }

        v121 = OUTLINED_FUNCTION_19_0(v131, v132, v133, v134, v135, v136, v137, v138, v229, v234, v237, v241, objb, v252, v259, v264, *v265, *&v265[8], *&v265[16], *&v265[24], *&v265[32], *&v265[40], *&v265[48], *&v265[56], *&v265[64], v266, v267, *(&v267 + 1), v268, *(&v268 + 1), v269, *(&v269 + 1), v270, *(&v270 + 1), v271, *(&v271 + 1), v272, *(&v272 + 1), v273, *(&v273 + 1), v274, *(&v274 + 1), v275);
      }

      while (v121);
    }

    LODWORD(v297) = 1020;
    v139 = [v110 length];
    HIDWORD(v297) = v139;
    OUTLINED_FUNCTION_8_0(v139, v140, &v297);
    [OUTLINED_FUNCTION_17_0() appendData:?];
    v141 = [v110 length];

    v142 = objc_alloc_init(NSMutableData);
    HIDWORD(v283) = 0;
    LODWORD(v283) = [*(v3 + 80) count];
    v143 = [v142 appendBytes:&v283 length:8];
    v273 = 0u;
    v274 = 0u;
    v271 = 0u;
    v272 = 0u;
    v144 = *(v3 + 80);
    v152 = OUTLINED_FUNCTION_26_0(v143, v145, v146, v147, v148, v149, v150, v151, v229, v234, v237, v241, objb, v252, v259, v264, *v265, *&v265[8], *&v265[16], *&v265[24], *&v265[32], *&v265[40], *&v265[48], *&v265[56], *&v265[64], v266, v267, *(&v267 + 1), v268, *(&v268 + 1), v269, *(&v269 + 1), v270, *(&v270 + 1), 0);
    if (v152)
    {
      v153 = v152;
      do
      {
        for (n = 0; n != v153; n = n + 1)
        {
          OUTLINED_FUNCTION_16_0();
          if (!_ZF)
          {
            objc_enumerationMutation(v144);
          }

          v155 = *(*(&v271 + 1) + 8 * n);
          memset(v265, 0, 20);
          [v155 hasSpecular];
          OUTLINED_FUNCTION_4_0();
          [v155 translucency];
          *&v156 = v156;
          *&v265[4] = LODWORD(v156);
          [v155 shadowOpacity];
          *&v157 = v157;
          *&v265[12] = LODWORD(v157);
          *&v265[8] = [v155 shadowStyle];
          *&v265[16] = 0;
          v158 = [v142 appendBytes:v265 length:20];
        }

        v153 = OUTLINED_FUNCTION_26_0(v158, v159, v160, v161, v162, v163, v164, v165, v230, v232, v238, v242, objc, v253, v257, v262, *v265, *&v265[8], *&v265[16], *&v265[24], *&v265[32], *&v265[40], *&v265[48], *&v265[56], *&v265[64], v266, v267, *(&v267 + 1), v268, *(&v268 + 1), v269, *(&v269 + 1), v270, *(&v270 + 1), v271);
      }

      while (v153);
    }

    LODWORD(v297) = 1021;
    HIDWORD(v297) = [v142 length];
    a2 = v257;
    [v257 appendBytes:&v297 length:8];
    [v257 appendData:v142];
    v37 = v141 + v109 + v253 + [v142 length] + 24;
  }

  v297 = 0x8000003ECLL;
  OUTLINED_FUNCTION_5_0();
  v284 = 0;
  [v3 opacity];
  *&v166 = v166;
  HIDWORD(v284) = LODWORD(v166);
  LODWORD(v284) = [v3 blendMode];
  [a2 appendBytes:&v284 length:8];
  if ([*(v3 + 32) length])
  {
    v167 = CFStringGetMaximumSizeOfFileSystemRepresentation(*(v3 + 32));
    v168 = malloc_type_malloc(v167, 0x51437AEAuLL);
    CFStringGetFileSystemRepresentation(*(v3 + 32), v168, v167);
    v169 = strnlen(v168, v167);
    *v265 = (v169 + 1);
    LODWORD(v297) = 1005;
    HIDWORD(v297) = v169 + 9;
    OUTLINED_FUNCTION_5_0();
    [a2 appendBytes:v265 length:8];
    [a2 appendBytes:v168 length:*v265];
    v170 = v37 + *v265 + 32;
    free(v168);
  }

  else
  {
    v170 = v37 + 16;
  }

  v171 = [*(v3 + 504) count];
  if (v171)
  {
    v173 = [objc_msgSend(*(v3 + 504) "allKeys")];
    v267 = 0u;
    v268 = 0u;
    v269 = 0u;
    v270 = 0u;
    objd = v173;
    v171 = [v173 countByEnumeratingWithState:&v267 objects:v298 count:16];
    if (v171)
    {
      v174 = v171;
      v175 = 0;
      v176 = 0;
      v177 = 0;
      v254 = *v268;
      __asm { FMOV            V0.2D, #1.0 }

      v243 = *(&_Q0 + 1);
      do
      {
        v182 = 0;
        do
        {
          if (*v268 != v254)
          {
            objc_enumerationMutation(objd);
          }

          v183 = *(*(&v267 + 1) + 8 * v182);
          v184 = [*(v3 + 504) objectForKey:v183];
          v185 = CFStringGetMaximumSizeOfFileSystemRepresentation(v183);
          v186 = malloc_type_malloc(v185, 0x10FB8C29uLL);
          CFStringGetFileSystemRepresentation(v183, v186, v185);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v175 = CFStringGetMaximumSizeOfFileSystemRepresentation(v184);
            v187 = malloc_type_malloc(v175, 0x5F930FEuLL);
            v188 = OUTLINED_FUNCTION_10_0();
            CFStringGetFileSystemRepresentation(v188, v189, v175);
            v176 = 0;
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v190 = [(__CFString *)v184 objCType];
              if (*v190 == 100 && !v190[1])
              {
                v187 = malloc_type_malloc(8uLL, 0x26DC55A7uLL);
                [(__CFString *)v184 doubleValue];
                *v187 = v196;
                v176 = 2;
              }

              else
              {
                v187 = malloc_type_malloc(8uLL, 0x79B03525uLL);
                *v187 = [(__CFString *)v184 longLongValue];
                v176 = 1;
              }

              v175 = 8;
            }

            else
            {
              v191 = CFGetTypeID(v184);
              if (v191 == CGColorGetTypeID())
              {
                v187 = malloc_type_malloc(0x20uLL, 0xE5115729uLL);
                NumberOfComponents = CGColorGetNumberOfComponents(v184);
                Components = CGColorGetComponents(v184);
                if (NumberOfComponents - 2 < 2)
                {
                  v194 = *Components;
                  *(&v195 + 1) = v243;
                  *&v195 = Components[2];
                }

                else if (NumberOfComponents == 4)
                {
                  v194 = *Components;
                  v195 = *(Components + 1);
                }

                else
                {
                  v194 = 0uLL;
                  v195 = 0uLL;
                  if (NumberOfComponents == 1)
                  {
                    v194 = vdupq_lane_s64(*Components, 0);
                    *(&v195 + 1) = v243;
                    *&v195 = *Components;
                  }
                }

                *v187 = v194;
                v187[1] = v195;
                v177 = 1;
                v176 = 3;
                v175 = 32;
              }

              else
              {
                v187 = 0;
              }
            }
          }

          if (v185 < 1 || v175 < 1)
          {
            v3 = v262;
            [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:v232 file:v262 lineNumber:@"CSIGenerator.m" description:1204, @"[CSIGenerator writeResourcesToData:] writing renditionProperties key must be a string, value can only be string, NSNumber or CGColorRef"];
            free(v186);
            if (v187)
            {
              free(v187);
            }
          }

          else
          {
            *&v265[8] = v175;
            *&v265[12] = v176;
            *&v265[16] = v177 & 0xF;
            *v265 = 0;
            *&v265[4] = v185;
            LODWORD(v297) = 1016;
            HIDWORD(v297) = v185 + v175 + 20;
            [v257 appendBytes:&v297 length:8];
            [v257 appendBytes:v265 length:20];
            [v257 appendBytes:v186 length:v185];
            [v257 appendBytes:v187 length:v175];
            v170 += *&v265[4] + *&v265[8] + 28;
            free(v187);
            free(v186);
            v175 = 0;
            v3 = v262;
          }

          v182 = v182 + 1;
        }

        while (v174 != v182);
        v171 = [objd countByEnumeratingWithState:&v267 objects:v298 count:16];
        v174 = v171;
      }

      while (v171);
    }
  }

  v198 = *(v3 + 40);
  v199 = vmovn_s64(vceqq_f64(v198, CGSizeZero));
  if ((v199.i32[0] & v199.i32[1] & 1) == 0)
  {
    *v265 = 0;
    *&v265[4] = vcvt_f32_f64(v198);
    v297 = 0xC000003F7;
    OUTLINED_FUNCTION_8_0(v171, v172, &v297);
    [OUTLINED_FUNCTION_9_0() appendBytes:? length:?];
    v170 += 20;
  }

  v200 = *(v3 + 196);
  if (!v200)
  {
    v200 = 1;
    *(v3 + 196) = 1;
  }

  *v265 = v200;
  v297 = 0x4000003EELL;
  OUTLINED_FUNCTION_3_0();
  [OUTLINED_FUNCTION_9_0() appendBytes:? length:?];
  v201 = *(v3 + 528);
  v202 = *(v3 + 544);
  v203 = *(v3 + 560);
  v204 = *(v3 + 576);
  if ((vminvq_u32(vandq_s8(vandq_s8(vceqzq_f32(v202), vceqzq_f32(v201)), vandq_s8(vceqzq_f32(v203), vceqzq_f32(v204)))) & 0x80000000) != 0)
  {
    v205 = v170 + 12;
  }

  else
  {
    *v265 = 0;
    *&v265[4] = v201;
    *&v265[20] = v202;
    *&v265[36] = v203;
    *&v265[52] = v204;
    v297 = 0x44000003F9;
    OUTLINED_FUNCTION_3_0();
    [OUTLINED_FUNCTION_9_0() appendBytes:? length:?];
    v205 = v170 + 88;
  }

  if (*(v3 + 200))
  {
    *v265 = *(v3 + 200);
    v297 = 0x4000003EFLL;
    OUTLINED_FUNCTION_3_0();
    [OUTLINED_FUNCTION_9_0() appendBytes:? length:?];
    v205 += 12;
  }

  if (!CGRectIsEmpty(*(v3 + 280)))
  {
    *v265 = 1011;
    OUTLINED_FUNCTION_18_0(*(v3 + 264), *(v3 + 280));
    *&v265[24] = vmovn_s64(vcvtq_u64_f64(*(v3 + 296)));
    v297 = 0x20000003F3;
    OUTLINED_FUNCTION_3_0();
    [OUTLINED_FUNCTION_9_0() appendBytes:? length:?];
    v205 += 40;
  }

  v206 = *(v3 + 138);
  if (v206 == 1005)
  {
    v285.i32[0] = 0;
    v207 = objc_alloc_init(NSMutableData);
    *v265 = [*(v3 + 312) count];
    [OUTLINED_FUNCTION_14_0() appendBytes:? length:?];
    if (*v265)
    {
      v208 = 0;
      do
      {
        v209 = CFStringGetMaximumSizeOfFileSystemRepresentation([*(v3 + 312) objectAtIndex:v208]);
        v210 = malloc_type_malloc(v209, 0x1791A74EuLL);
        CFStringGetFileSystemRepresentation([*(v3 + 312) objectAtIndex:v208], v210, v209);
        v211 = OUTLINED_FUNCTION_10_0();
        v285.i32[0] = strnlen(v211, v212);
        [v207 appendBytes:&v285 length:4];
        [v207 appendBytes:v210 length:v285.u32[0]];
        free(v210);
        ++v208;
      }

      while (v208 < *v265);
    }

    HIDWORD(v297) = OUTLINED_FUNCTION_27_0(1013);
    OUTLINED_FUNCTION_3_0();
    [OUTLINED_FUNCTION_7_0() appendData:?];
    v205 += [v207 length] + 8;

    v206 = *(v3 + 138);
  }

  if (v206 == 1007)
  {
    v213 = objc_alloc_init(NSMutableData);
    v214 = [v3 textureInterpretation];
    v215 = *(v3 + 368);
    *&v265[4] = v214;
    *&v265[8] = v215;
    *v265 = 0;
    [OUTLINED_FUNCTION_14_0() appendBytes:? length:?];
    HIDWORD(v297) = OUTLINED_FUNCTION_27_0(1014);
    OUTLINED_FUNCTION_3_0();
    [OUTLINED_FUNCTION_7_0() appendData:?];
    v205 += [v213 length] + 8;
  }

  if ([*(v3 + 632) count] || *(v3 + 640))
  {
    v216 = objc_alloc_init(NSMutableData);
    v217 = [*(v3 + 632) count];
    v218 = v217;
    v219 = *(v3 + 640);
    *v265 = 3;
    *&v265[4] = v219;
    *&v265[8] = *(v3 + 644);
    *&v265[16] = *(v3 + 652);
    v220 = vcvt_hight_f32_f64(vcvt_f32_f64(*(v3 + 656)), *(v3 + 672));
    *&v265[20] = vextq_s8(v220, v220, 4uLL);
    if (*(v3 + 688) == 1)
    {
      *v265 = 7;
    }

    *&v265[36] = v217;
    [OUTLINED_FUNCTION_14_0() appendBytes:? length:?];
    if (v218 >= 1)
    {
      for (ii = 0; ii != v218; ++ii)
      {
        v285.i64[0] = ii;
        v285.i32[1] = [objc_msgSend(*(v3 + 632) objectAtIndex:{ii), "intValue"}];
        [v216 appendBytes:&v285 length:8];
      }
    }

    HIDWORD(v297) = OUTLINED_FUNCTION_27_0(1018);
    OUTLINED_FUNCTION_3_0();
    [OUTLINED_FUNCTION_7_0() appendData:?];
    v222 = [v216 length];

    v223 = objc_alloc_init(NSMutableData);
    v285.i32[1] = *(v3 + 104);
    v285.i32[0] = 1;
    v285.i32[2] = *(v3 + 112) | (2 * *(v3 + 113));
    [v223 appendBytes:&v285 length:12];
    v283 = 1019;
    v224 = [v223 length];
    HIDWORD(v283) = v224;
    OUTLINED_FUNCTION_8_0(v224, v225, &v283);
    [OUTLINED_FUNCTION_7_0() appendData:?];
    v205 += [v223 length] + v222 + 16;
  }

  return v205;
}

- (uint64_t)writeBitmap:(void *)a3 toData:(uint64_t)a4 compress:
{
  v4 = a1;
  if (a1)
  {
    v27 = 0;
    v24 = 0;
    v21 = 0;
    v7 = [a2 compressedData:a4 usedEncoding:&v21 + 4 andRowChunkSize:&v21];
    v8 = [v7 count];
    v26 = 1128614989;
    v28 = HIDWORD(v21);
    v29 = 0;
    v22 = 1128416075;
    v23 = 0;
    v25 = 0;
    if ([v4 allowsMultiPassEncoding] && (!objc_msgSend(a2, "sourceAlphaInfo") || objc_msgSend(a2, "sourceAlphaInfo") == 6 || objc_msgSend(a2, "sourceAlphaInfo") == 5))
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    if (v8 > 1)
    {
      v27 = v9 | 1;
      v29 = v8;
      v4 = 16;
      [a3 appendBytes:&v26 length:16];
      v13 = 0;
      v14 = v21;
      v15 = v21;
      do
      {
        v16 = [v7 objectAtIndex:v13];
        v17 = [v16 length];
        v24 = v15;
        v25 = v17;
        [a3 appendBytes:&v22 length:20];
        [a3 appendData:v16];
        v18 = v25;
        v19 = v14 + v15;
        if (v14 + v15 > [a2 height])
        {
          v15 = [a2 height] - v14;
        }

        v4 += v18 + 20;
        ++v13;
        v14 = v19;
      }

      while (v8 != v13);
    }

    else
    {
      v27 = v9;
      v10 = [v7 lastObject];
      if (v10)
      {
        v11 = v10;
        v12 = [v10 length];
        v29 += v12;
        [a3 appendBytes:&v26 length:16];
        [a3 appendData:v11];
        return v29 + 16;
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

- (id)_addNodes:(uint64_t)a3 toNodeList:
{
  if (result)
  {
    v5 = result;
    result = [a2 count];
    if (result)
    {
      v6 = [a2 objectAtIndex:0];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0)
      {
        v11 = [v6 isColorStop];
        isKindOfClass = [v6 isOpacityStop];
        v12 = isKindOfClass;
        if (isKindOfClass & 1) != 0 || (v11)
        {
          goto LABEL_7;
        }

        isKindOfClass = [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:sel__addNodes_toNodeList_ file:v5 lineNumber:@"CSIGenerator.m" description:1576, @"Unsupported gradient nodes: %@", a2];
      }

      v11 = 0;
      v12 = 0;
LABEL_7:
      result = OUTLINED_FUNCTION_20_0(isKindOfClass, v8, v9, v10);
      if (!result)
      {
        return result;
      }

      v13 = result;
      v14 = MEMORY[0];
      v41 = 0;
      do
      {
        v15 = 0;
        v16 = (a3 + 32 + 72 * v41);
        v41 += v13;
        do
        {
          if (MEMORY[0] != v14)
          {
            objc_enumerationMutation(a2);
          }

          v17 = *v15;
          if (v11)
          {
            [*v15 colorLocation];
            v19 = v18;
            [v17 gradientColor];
            v21 = v20;
            v23 = v22;
            v25 = v24;
            v27 = v26;
            OUTLINED_FUNCTION_10_0();
            v28 = objc_opt_respondsToSelector();
            if (v28)
            {
              v28 = [v17 leadOutColor];
              v36 = 1129270340;
              goto LABEL_22;
            }

            v36 = 1129270354;
          }

          else if (v12)
          {
            [*v15 opacityLocation];
            v19 = v37;
            [v17 opacity];
            v27 = v38;
            v28 = objc_opt_respondsToSelector();
            v21 = 0;
            if (v28)
            {
              v28 = [v17 leadOutOpacity];
              v35 = v39;
              v23 = 0;
              v25 = 0;
              v32 = 0;
              v33 = 0;
              v36 = 1330660164;
              v34 = 0;
              goto LABEL_22;
            }

            v36 = 1330660180;
            v23 = 0;
            v25 = 0;
          }

          else
          {
            v28 = [*v15 floatValue];
            v19 = v40;
            v21 = 0;
            v23 = 0;
            v36 = 1296647248;
            v25 = 0;
            v27 = 0;
          }

          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
LABEL_22:
          *(v16 - 8) = v36;
          *(v16 - 7) = v19;
          *(v16 - 3) = v21;
          *(v16 - 2) = v23;
          *(v16 - 1) = v25;
          *v16 = v27;
          v16[1] = v32;
          v16[2] = v33;
          ++v15;
          v16[3] = v34;
          v16[4] = v35;
          v16 += 9;
          v13 = v13 - 1;
        }

        while (v13);
        result = OUTLINED_FUNCTION_20_0(v28, v29, v30, v31);
        v13 = result;
      }

      while (result);
    }
  }

  return result;
}

- (uint64_t)writeGradientToData:(id *)a1
{
  if (!a1)
  {
    return 0;
  }

  v3 = [a1[18] evaluator];
  v19 = [v3 colorStops];
  v20 = [v3 colorMidpointLocations];
  v21 = [v3 opacityStops];
  v22 = [v3 opacityMidpointLocations];
  v4 = [v19 count];
  v5 = [v20 count];
  v6 = [v21 count];
  v7 = [v22 count];
  v8 = 72 * (v5 + v4 + v6 + v7);
  v9 = v8 + 80;
  OUTLINED_FUNCTION_13_0();
  v11 = malloc_type_calloc(v8 + 80, 1uLL, v10);
  *v11 = 1196572996;
  v11[4] = 2;
  v11[2] = v8;
  v11[3] = [a1[18] gradientStyle];
  [a1[18] drawingAngle];
  *&v12 = v12;
  v11[14] = LODWORD(v12);
  [v3 smoothingCoefficient];
  *&v13 = v13;
  v11[15] = LODWORD(v13);
  v11[1] = [v3 isDithered];
  [v3 fillColor];
  *(v11 + 3) = v14;
  *(v11 + 4) = v15;
  *(v11 + 5) = v16;
  *(v11 + 6) = v17;
  v11[5] = [v3 blendMode];
  v11[16] = v4;
  v11[17] = v5;
  v11[18] = v6;
  v11[19] = v7;
  [(CSIGenerator *)a1 _addNodes:v19 toNodeList:(v11 + 20)];
  [(CSIGenerator *)a1 _addNodes:v20 toNodeList:&v11[18 * v4 + 20]];
  [(CSIGenerator *)a1 _addNodes:v21 toNodeList:&v11[18 * v5 + 20 + 18 * v4]];
  [(CSIGenerator *)a1 _addNodes:v22 toNodeList:&v11[18 * v5 + 20 + 18 * v4 + 18 * v6]];
  [a2 appendBytes:v11 length:v8 + 80];
  free(v11);
  return v9;
}

- (uint64_t)writeColorToData:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_35();
  v4 = [objc_msgSend(v3 "colorComponents")];
  v5 = 8 * v4;
  v6 = v5 + 16;
  OUTLINED_FUNCTION_13_0();
  v8 = malloc_type_calloc(v5 + 16, 1uLL, v7);
  v9 = *(v8 + 8);
  *v8 = 0x1434F4C52;
  v8[2] = v9;
  v8[3] = v4;
  if (v4)
  {
    for (i = 0; i != v4; *&v8[2 * i++ + 4] = v11)
    {
      [objc_msgSend(objc_msgSend(v2 "colorComponents")];
    }
  }

  *(v8 + 8) = [v2 colorSpaceID];
  if ([v2[48] length])
  {
    v8[2] = v8[2] & 0xFFFFF8FF | 0x100;
  }

  [OUTLINED_FUNCTION_7_0() appendBytes:? length:?];
  free(v8);
  if ([v2[48] length])
  {
    v12 = [v2[48] UTF8String];
    v13 = strlen(v12);
    OUTLINED_FUNCTION_24_0(v13, v14, v15, v16, v17, v18, v19, v20, 0x1434F4C52, v22);
    [v1 appendBytes:v12 length:v23];
    return v5 + v23 + 28;
  }

  return v6;
}

- (uint64_t)writeNamedGradientToData:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_35();
  v5 = [objc_msgSend(v4 "namedgradationColors")];
  v6 = 32;
  v7 = malloc_type_calloc(0x20uLL, 1uLL, 0x2181299CuLL);
  v7[3] = 0.0;
  *v7 = 51026.0;
  *(v7 + 1) = v5;
  [v2 namedgradientStartPoint];
  *&v8 = v8;
  v7[4] = *&v8;
  [v2 namedgradientStartPoint];
  v10 = v9;
  v7[5] = v10;
  [v2 namedgradientEndPoint];
  *&v11 = v11;
  v7[6] = *&v11;
  [v2 namedgradientEndPoint];
  v13 = v12;
  v7[7] = v13;
  *(v7 + 2) = [v2 namedgradientType];
  [OUTLINED_FUNCTION_7_0() appendBytes:? length:?];
  free(v7);
  if (v5)
  {
    v14 = 0;
    v6 = 32;
    do
    {
      v23 = 0;
      MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation([objc_msgSend(v2 "namedgradationColors")]);
      v16 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation + 1, 0x75C30243uLL);
      OUTLINED_FUNCTION_23(v16);
      [objc_msgSend(objc_msgSend(v2 "namedgradientStops")];
      LODWORD(v23) = v17;
      v18 = OUTLINED_FUNCTION_10_0();
      v20 = strnlen(v18, v19);
      HIDWORD(v23) = v20 + 1;
      OUTLINED_FUNCTION_8_0(v20, v21, &v23);
      [v1 appendBytes:v3 length:HIDWORD(v23)];
      v6 += HIDWORD(v23) + 8;
      free(v3);
      ++v14;
    }

    while (v5 != v14);
  }

  return v6;
}

- (uint64_t)writeTextStyleToData:(CFStringRef *)a1
{
  if (!a1)
  {
    return 0;
  }

  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(a1[58]);
  v3 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0xD1F32978uLL);
  CFStringGetFileSystemRepresentation(a1[58], v3, MaximumSizeOfFileSystemRepresentation);
  v4 = strnlen(v3, MaximumSizeOfFileSystemRepresentation) + 1;
  v5 = v4 + 32;
  OUTLINED_FUNCTION_13_0();
  v7 = malloc_type_calloc(v4 + 32, 1uLL, v6);
  *v7 = 0x15354594CLL;
  *(v7 + 2) = [(CFStringRef *)a1 scalingStyle];
  [(CFStringRef *)a1 fontSize];
  *&v8 = v8;
  *(v7 + 3) = LODWORD(v8);
  [(CFStringRef *)a1 maxPointSize];
  *&v9 = v9;
  *(v7 + 4) = LODWORD(v9);
  [(CFStringRef *)a1 minPointSize];
  *&v10 = v10;
  *(v7 + 5) = LODWORD(v10);
  *(v7 + 6) = [(CFStringRef *)a1 alignment];
  *(v7 + 7) = v4;
  strcpy(v7 + 32, v3);
  [OUTLINED_FUNCTION_17_0() appendBytes:? length:?];
  free(v3);
  free(v7);
  return v5;
}

- (size_t)writeMultisizeImageSetToData:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_35();
  v3 = [objc_msgSend(objc_msgSend(v2 "sizesByIndex")];
  v4 = [v3 count];
  v5 = 12 * v4 + 12;
  OUTLINED_FUNCTION_13_0();
  v7 = malloc_type_calloc(v5, 1uLL, v6);
  v8 = v7;
  *v7 = 0x14D534953;
  v7[2] = v4;
  if (v4)
  {
    v9 = 0;
    v10 = v4;
    v11 = v7 + 5;
    do
    {
      v12 = [v3 objectAtIndex:v9];
      [objc_msgSend(objc_msgSend(v1 "sizesByIndex")];
      *(v11 - 2) = v13;
      *(v11 - 1) = v14;
      *v11 = [v12 integerValue];
      v11 += 3;
      ++v9;
    }

    while (v10 != v9);
  }

  [OUTLINED_FUNCTION_17_0() appendBytes:? length:?];
  free(v8);
  return v5;
}

- (uint64_t)writeRawDataToData:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  OUTLINED_FUNCTION_35();
  LODWORD(v24) = 1380013892;
  v4 = *(v3 + 192);
  v5 = v4 == 1398163232 || v4 == 1145132097;
  if (!v5 || ((v6 = *(v2 + 138), (v6 - 1000) <= 0x11) ? (v7 = ((1 << (v6 + 24)) & 0x24001) == 0) : (v7 = 1), (v7 || *(v2 + 328) != 2) && (v4 == 1398163232 ? (v8 = v6 == 9) : (v8 = 0), !v8)))
  {
    v9 = (v2 + 152);
LABEL_21:
    v14 = 0;
    v15 = 0;
    v12 = *v9;
    goto LABEL_22;
  }

  v10 = *(v2 + 152);
  v9 = (v2 + 152);
  v11 = CUICompressedDataWithLZFSE(v10);
  v12 = v11;
  if (!v11 || (v13 = -[__CFData length](v11, "length", 1380013892), v13 >= [*v9 length]))
  {

    goto LABEL_21;
  }

  v14 = 1;
  v15 = 1;
LABEL_22:
  HIDWORD(v24) = v14;
  v16 = [v12 length];
  OUTLINED_FUNCTION_24_0(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26);
  [v1 appendData:v12];
  if (v15)
  {
  }

  return v27 + 12;
}

- (uint64_t)writeExternalLinkToData:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v32 = 1008;
  v33 = 1163414603;
  v34 = [*(a1 + 216) count];
  [a2 appendBytes:&v33 length:12];
  if (![*(a1 + 208) length])
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInMethod:"handleFailureInMethod:object:file:lineNumber:description:" object:sel_writeExternalLinkToData_ file:a1 lineNumber:@"CSIGenerator.m" description:1881, @"We must have an assetpack identifier or none of this will work"];
  }

  MaximumSizeOfFileSystemRepresentation = CFStringGetMaximumSizeOfFileSystemRepresentation(*(a1 + 208));
  v6 = malloc_type_malloc(MaximumSizeOfFileSystemRepresentation, 0x23C4829DuLL);
  CFStringGetFileSystemRepresentation(*(a1 + 208), v6, MaximumSizeOfFileSystemRepresentation);
  v7 = OUTLINED_FUNCTION_1_0();
  v9 = strnlen(v7, v8);
  HIDWORD(v32) = v9 + 1;
  OUTLINED_FUNCTION_8_0(v9, v10, &v32);
  [OUTLINED_FUNCTION_7_0() appendBytes:? length:?];
  v11 = HIDWORD(v32) + 20;
  free(v6);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v12 = *(a1 + 216);
  v15 = OUTLINED_FUNCTION_12_0(v13, v14, &v28, v35);
  if (v15)
  {
    v16 = v15;
    v17 = *v29;
    do
    {
      v18 = 0;
      do
      {
        if (*v29 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v19 = CFStringGetMaximumSizeOfFileSystemRepresentation(*(*(&v28 + 1) + 8 * v18));
        v20 = malloc_type_malloc(v19, 0x1213F948uLL);
        OUTLINED_FUNCTION_23(v20);
        LODWORD(v32) = 1008;
        v21 = OUTLINED_FUNCTION_10_0();
        v23 = strnlen(v21, v22);
        HIDWORD(v32) = v23 + 1;
        OUTLINED_FUNCTION_8_0(v23, v24, &v32);
        [a2 appendBytes:v2 length:HIDWORD(v32)];
        v11 += HIDWORD(v32) + 8;
        free(v2);
        v18 = v18 + 1;
      }

      while (v16 != v18);
      v16 = OUTLINED_FUNCTION_12_0(v25, v26, &v28, v35);
    }

    while (v16);
  }

  return v11;
}

- (uint64_t)writeTextureToData:(uint64_t)a1
{
  if (!a1)
  {
    return 0;
  }

  v24 = 1415074898;
  v25 = *(a1 + 344);
  v26 = 0x100000001;
  if (*(a1 + 336))
  {
    v4 = 5;
  }

  else
  {
    v4 = 1;
  }

  v27 = v4;
  v28 = [*(a1 + 360) count];
  v5 = 24;
  v6 = [a2 appendBytes:&v24 length:24];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = *(a1 + 360);
  v9 = OUTLINED_FUNCTION_12_0(v6, v8, &v20, v29);
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    v5 = 24;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = CUIRenditionKeyTokenCount([*(*(&v20 + 1) + 8 * i) keyList]);
        v14 = (4 * v13 + 4);
        v19 = v14;
        OUTLINED_FUNCTION_8_0(v13, v15, &v19);
        v16 = [OUTLINED_FUNCTION_17_0() appendBytes:? length:?];
        v5 += v14 + 8;
      }

      v10 = OUTLINED_FUNCTION_12_0(v16, v17, &v20, v29);
    }

    while (v10);
  }

  return v5;
}

- (uint64_t)writeRecognitionObjectToData:(uint64_t)result
{
  if (result)
  {
    OUTLINED_FUNCTION_35();
    v3 = +[NSMutableData dataWithCapacity:](NSMutableData, "dataWithCapacity:", [*(v2 + 152) length] + 4);
    [(NSMutableData *)v3 appendBytes:v1 + 512 length:4];
    [(NSMutableData *)v3 appendData:*(v1 + 152)];

    *(v1 + 152) = [(NSMutableData *)v3 copy];

    return [CSIGenerator writeRawDataToData:v1];
  }

  return result;
}

- (id)CSIRepresentationWithCompression:(BOOL)a3
{
  v82 = a3;
  v5 = +[NSMutableData data];
  bzero(v87, 0xB0uLL);
  [CSIGenerator formatCSIHeader:?];
  if (self)
  {
    v6 = 4 * (v87[43] + 1);
    [v5 appendBytes:v87 length:176];
    [v5 increaseLengthBy:v6];
  }

  self->_rowbytes = 0;
  layout = self->_layout;
  switch(self->_layout)
  {
    case 0x3E8:
    case 0x3EA:
    case 0x3FA:
    case 0x3FB:
    case 0x3FC:
      goto LABEL_4;
    case 0x3E9:
      v43 = OUTLINED_FUNCTION_1_0();
      [(CSIGenerator *)v43 writeResourcesToData:v44];
      v45 = OUTLINED_FUNCTION_0_0();
      v11 = [(CSIGenerator *)v45 writeExternalLinkToData:v46];
      goto LABEL_5;
    case 0x3EB:
    case 0x3ED:
    case 0x3EE:
      v37 = OUTLINED_FUNCTION_1_0();
      v3 = [(CSIGenerator *)v37 writeResourcesToData:v38];
      *([v5 mutableBytes] + 22) = 0;
      goto LABEL_6;
    case 0x3EC:
    case 0x3F0:
    case 0x3F5:
    case 0x3F9:
      goto LABEL_9;
    case 0x3EF:
      v39 = OUTLINED_FUNCTION_1_0();
      [(CSIGenerator *)v39 writeResourcesToData:v40];
      v41 = OUTLINED_FUNCTION_0_0();
      v11 = [(CSIGenerator *)v41 writeTextureToData:v42];
      goto LABEL_5;
    case 0x3F1:
      v61 = OUTLINED_FUNCTION_1_0();
      [(CSIGenerator *)v61 writeResourcesToData:v62];
      v63 = OUTLINED_FUNCTION_0_0();
      v11 = [CSIGenerator writeColorToData:v63];
      goto LABEL_5;
    case 0x3F2:
      v69 = OUTLINED_FUNCTION_1_0();
      [(CSIGenerator *)v69 writeResourcesToData:v70];
      v71 = OUTLINED_FUNCTION_0_0();
      v11 = [CSIGenerator writeMultisizeImageSetToData:v71];
      goto LABEL_5;
    case 0x3F3:
      v64 = OUTLINED_FUNCTION_1_0();
      v3 = [(CSIGenerator *)v64 writeResourcesToData:v65];
      v52 = [[_CUIThemeModelAssetRendition alloc] initForArchiving:self->_modelAsset withMeshRenditionKeys:self->_meshReferences];
      goto LABEL_37;
    case 0x3F4:
      v53 = OUTLINED_FUNCTION_1_0();
      v3 = [(CSIGenerator *)v53 writeResourcesToData:v54];
      v52 = [[_CUIThemeModelMeshRendition alloc] initForArchiving:self->_modelMesh withSubmeshRenditionKeys:self->_submeshReferences];
      goto LABEL_37;
    case 0x3F6:
      v58 = OUTLINED_FUNCTION_1_0();
      [(CSIGenerator *)v58 writeResourcesToData:v59];
      v60 = OUTLINED_FUNCTION_0_0();
      v11 = [CSIGenerator writeRecognitionObjectToData:v60];
      goto LABEL_5;
    case 0x3F7:
      v55 = OUTLINED_FUNCTION_1_0();
      [(CSIGenerator *)v55 writeResourcesToData:v56];
      v57 = OUTLINED_FUNCTION_0_0();
      v11 = [CSIGenerator writeTextStyleToData:v57];
      goto LABEL_5;
    case 0x3F8:
      v50 = OUTLINED_FUNCTION_1_0();
      v3 = [(CSIGenerator *)v50 writeResourcesToData:v51];
      v52 = [[_CUIThemeModelSubmeshRendition alloc] initForArchiving:self->_modelSubmesh];
LABEL_37:
      v66 = v52;
      v67 = [v52 writeToData:v5];

      v68 = [v5 mutableBytes];
      v68[44] = 0;
      v68[45] = v67;
      goto LABEL_6;
    case 0x3FD:
      v47 = OUTLINED_FUNCTION_1_0();
      [(CSIGenerator *)v47 writeResourcesToData:v48];
      v49 = OUTLINED_FUNCTION_0_0();
      v11 = [CSIGenerator writeNamedGradientToData:v49];
      goto LABEL_5;
    default:
      if (layout == 7)
      {
        v72 = OUTLINED_FUNCTION_1_0();
        v3 = [(CSIGenerator *)v72 writeResourcesToData:v73];
        [v5 appendData:{-[CUIShapeEffectPreset CUIEffectDataRepresentation](self->_effectPreset, "CUIEffectDataRepresentation")}];
        v74 = [v5 mutableBytes];
        v74[44] = 0;
        v74[45] = [v5 length];
        goto LABEL_6;
      }

      if (layout == 6)
      {
        v75 = OUTLINED_FUNCTION_1_0();
        [(CSIGenerator *)v75 writeResourcesToData:v76];
        v77 = OUTLINED_FUNCTION_0_0();
        v11 = [(CSIGenerator *)v77 writeGradientToData:v78];
        goto LABEL_5;
      }

LABEL_9:
      if (self->_rawData)
      {
LABEL_4:
        v8 = OUTLINED_FUNCTION_1_0();
        [(CSIGenerator *)v8 writeResourcesToData:v9];
        v10 = OUTLINED_FUNCTION_0_0();
        v11 = [CSIGenerator writeRawDataToData:v10];
LABEL_5:
        v12 = v11;
        v13 = [v5 mutableBytes];
        v13[44] = 0;
        v13[45] = v12;
LABEL_6:
        *([v5 mutableBytes] + 42) = v3;
        return v5;
      }

      v80 = v5;
      v14 = [(NSMutableArray *)self->_bitmaps count];
      v81 = &v79;
      v15 = v14 + 1;
      v16 = (&v79 - ((8 * v14 + 23) & 0xFFFFFFFFFFFFFFF0));
      v17 = +[NSMutableData data];
      v79 = v15;
      bzero(v16, 8 * v15);
      v85 = 0u;
      v86 = 0u;
      v83 = 0u;
      v84 = 0u;
      v18 = self;
      bitmaps = self->_bitmaps;
      v20 = OUTLINED_FUNCTION_21_0();
      if (!v20)
      {
LABEL_18:
        p_isa = &v18->super.isa;
        v18->_rowbytes = [-[NSMutableArray firstObject](v18->_bitmaps "firstObject")];
        v5 = v80;
        v3 = [(CSIGenerator *)v18 writeResourcesToData:v80];
        [v5 appendData:v17];
        v28 = [v5 mutableBytes];
        v29 = [objc_msgSend(p_isa[8] "firstObject")];
        v30 = [objc_msgSend(p_isa[8] "firstObject")];
        if ([p_isa colorSpaceID] != v30 || v29 != objc_msgSend(p_isa, "pixelFormat"))
        {
          v31 = v28[7] & 0xFFFFFFF0 | v30 & 0xF;
          v28[6] = v29;
          v28[7] = v31;
        }

        v32 = v79;
        if (v79)
        {
          v33 = 0;
          v34 = v28 + 44;
          do
          {
            *v34++ = v33;
            v35 = *v16;
            v16 += 2;
            v33 += v35;
            --v32;
          }

          while (v32);
        }

        goto LABEL_6;
      }

      v21 = v20;
      v22 = 0;
      v23 = *v84;
LABEL_12:
      v24 = 0;
      v25 = v22;
      while (1)
      {
        if (*v84 != v23)
        {
          objc_enumerationMutation(bitmaps);
        }

        v26 = [(CSIGenerator *)v18 writeBitmap:v17 toData:v82 compress:?];
        if (!v26)
        {
          return 0;
        }

        v22 = v25 + 1;
        *&v16[2 * v25] = v26;
        v24 = v24 + 1;
        ++v25;
        if (v21 == v24)
        {
          v21 = OUTLINED_FUNCTION_21_0();
          if (!v21)
          {
            goto LABEL_18;
          }

          goto LABEL_12;
        }
      }
  }
}

@end