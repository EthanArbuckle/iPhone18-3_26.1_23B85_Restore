@interface TDNamedAssetImportInfo
- ($01BB1521EC52D44A8E7628F5261DCEC8)sliceInsets;
- (CGPoint)gradientEndPoint;
- (CGPoint)gradientStartPoint;
- (CGRect)alignmentRect;
- (CGSize)canvasSize;
- (CGSize)physicalSizeInMeters;
- (CGSize)resizableSliceSize;
- (TDNamedAssetImportInfo)init;
- (__n128)setTransformation:(__n128)a3;
- (__n128)transformation;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)renditionSubtype;
- (uint64_t)verify;
- (void)dealloc;
- (void)verify;
@end

@implementation TDNamedAssetImportInfo

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[TDNamedAssetImportInfo allocWithZone:?]];
  [(TDNamedAssetImportInfo *)v4 setName:[(TDNamedAssetImportInfo *)self name]];
  [(TDNamedAssetImportInfo *)v4 setNameIdentifier:[(TDNamedAssetImportInfo *)self nameIdentifier]];
  [(TDNamedAssetImportInfo *)v4 setFileURL:[(TDNamedAssetImportInfo *)self fileURL]];
  [(TDNamedAssetImportInfo *)v4 setModificationDate:[(TDNamedAssetImportInfo *)self modificationDate]];
  [(TDNamedAssetImportInfo *)v4 setIdiom:[(TDNamedAssetImportInfo *)self idiom]];
  [(TDNamedAssetImportInfo *)v4 setSubtype:[(TDNamedAssetImportInfo *)self subtype]];
  [(TDNamedAssetImportInfo *)v4 setScaleFactor:[(TDNamedAssetImportInfo *)self scaleFactor]];
  [(TDNamedAssetImportInfo *)self sliceInsets];
  [(TDNamedAssetImportInfo *)v4 setSliceInsets:?];
  [(TDNamedAssetImportInfo *)v4 setRenditionType:[(TDNamedAssetImportInfo *)self renditionType]];
  [(TDNamedAssetImportInfo *)v4 setResizingMode:[(TDNamedAssetImportInfo *)self resizingMode]];
  [(TDNamedAssetImportInfo *)self resizableSliceSize];
  [(TDNamedAssetImportInfo *)v4 setResizableSliceSize:?];
  [(TDNamedAssetImportInfo *)v4 setPreservesVectorRepresentation:[(TDNamedAssetImportInfo *)self preservesVectorRepresentation]];
  [(TDNamedAssetImportInfo *)v4 setIsTemplate:[(TDNamedAssetImportInfo *)self isTemplate]];
  [(TDNamedAssetImportInfo *)v4 setTemplateRenderingMode:[(TDNamedAssetImportInfo *)self templateRenderingMode]];
  [(TDNamedAssetImportInfo *)v4 setOptOutOfThinning:[(TDNamedAssetImportInfo *)self optOutOfThinning]];
  [(TDNamedAssetImportInfo *)v4 setPreserveForArchiveOnly:[(TDNamedAssetImportInfo *)self preserveForArchiveOnly]];
  [(TDNamedAssetImportInfo *)self alignmentRect];
  [(TDNamedAssetImportInfo *)v4 setAlignmentRect:?];
  [(TDNamedAssetImportInfo *)v4 setSizeClassHorizontal:[(TDNamedAssetImportInfo *)self sizeClassHorizontal]];
  [(TDNamedAssetImportInfo *)v4 setSizeClassVertical:[(TDNamedAssetImportInfo *)self sizeClassVertical]];
  [(TDNamedAssetImportInfo *)v4 setDisplayGamut:[(TDNamedAssetImportInfo *)self displayGamut]];
  [(TDNamedAssetImportInfo *)v4 setLayoutDirection:[(TDNamedAssetImportInfo *)self layoutDirection]];
  [(TDNamedAssetImportInfo *)v4 setIsFlippable:[(TDNamedAssetImportInfo *)self isFlippable]];
  [(TDNamedAssetImportInfo *)v4 setMemoryClass:[(TDNamedAssetImportInfo *)self memoryClass]];
  [(TDNamedAssetImportInfo *)v4 setGraphicsFeatureSetClass:[(TDNamedAssetImportInfo *)self graphicsFeatureSetClass]];
  [(TDNamedAssetImportInfo *)v4 setCompressionType:[(TDNamedAssetImportInfo *)self compressionType]];
  [(TDNamedAssetImportInfo *)self lossyCompressionQuality];
  [(TDNamedAssetImportInfo *)v4 setLossyCompressionQuality:?];
  [(TDNamedAssetImportInfo *)v4 setTags:[(TDNamedAssetImportInfo *)self tags]];
  [(TDNamedAssetImportInfo *)v4 setUniversalTypeIdentifier:[(TDNamedAssetImportInfo *)self universalTypeIdentifier]];
  [(TDNamedAssetImportInfo *)v4 setContainedImageNames:[(NSArray *)[(TDNamedAssetImportInfo *)self containedImageNames] copy]];
  [(TDNamedAssetImportInfo *)self canvasSize];
  [(TDNamedAssetImportInfo *)v4 setCanvasSize:?];
  [(TDNamedAssetImportInfo *)self physicalSizeInMeters];
  [(TDNamedAssetImportInfo *)v4 setPhysicalSizeInMeters:?];
  [(TDNamedAssetImportInfo *)v4 setLayerReferences:[(TDNamedAssetImportInfo *)self layerReferences]];
  [(TDNamedAssetImportInfo *)v4 setTextureWidth:[(TDNamedAssetImportInfo *)self textureWidth]];
  [(TDNamedAssetImportInfo *)v4 setTextureHeight:[(TDNamedAssetImportInfo *)self textureHeight]];
  [(TDNamedAssetImportInfo *)v4 setTextureDepth:[(TDNamedAssetImportInfo *)self textureDepth]];
  [(TDNamedAssetImportInfo *)v4 setCubeMap:[(TDNamedAssetImportInfo *)self cubeMap]];
  [(TDNamedAssetImportInfo *)v4 setArrayIndex:[(TDNamedAssetImportInfo *)self arrayIndex]];
  [(TDNamedAssetImportInfo *)v4 setTexturePixelFormat:[(TDNamedAssetImportInfo *)self texturePixelFormat]];
  [(TDNamedAssetImportInfo *)v4 setTextureInterpretation:[(TDNamedAssetImportInfo *)self textureInterpretation]];
  [(TDNamedAssetImportInfo *)v4 setTextureInfos:[(NSArray *)[(TDNamedAssetImportInfo *)self textureInfos] copy]];
  [(TDNamedAssetImportInfo *)v4 setColorSpaceID:[(TDNamedAssetImportInfo *)self colorSpaceID]];
  [(TDNamedAssetImportInfo *)v4 setColorComponents:[(TDNamedAssetImportInfo *)self colorComponents]];
  [(TDNamedAssetImportInfo *)v4 setColorNames:[(TDNamedAssetImportInfo *)self colorNames]];
  [(TDNamedAssetImportInfo *)v4 setColorStops:[(TDNamedAssetImportInfo *)self colorStops]];
  [(TDNamedAssetImportInfo *)v4 setGradientType:[(TDNamedAssetImportInfo *)self gradientType]];
  [(TDNamedAssetImportInfo *)self gradientStartPoint];
  [(TDNamedAssetImportInfo *)v4 setGradientStartPoint:?];
  [(TDNamedAssetImportInfo *)self gradientEndPoint];
  [(TDNamedAssetImportInfo *)v4 setGradientEndPoint:?];
  [(TDNamedAssetImportInfo *)v4 setIconSize:[(NSValue *)[(TDNamedAssetImportInfo *)self iconSize] copy]];
  [(TDNamedAssetImportInfo *)v4 setFontName:[(TDNamedAssetImportInfo *)self fontName]];
  [(TDNamedAssetImportInfo *)v4 setForegroundColorName:[(TDNamedAssetImportInfo *)self foregroundColorName]];
  [(TDNamedAssetImportInfo *)v4 setBackgroundColorName:[(TDNamedAssetImportInfo *)self backgroundColorName]];
  [(TDNamedAssetImportInfo *)v4 setBackgroundColorSpaceID:[(TDNamedAssetImportInfo *)self backgroundColorSpaceID]];
  [(TDNamedAssetImportInfo *)v4 setBackgroundColorComponents:[(TDNamedAssetImportInfo *)self backgroundColorComponents]];
  [(TDNamedAssetImportInfo *)v4 setTextAlignment:[(TDNamedAssetImportInfo *)self textAlignment]];
  [(TDNamedAssetImportInfo *)v4 setScalingStyle:[(TDNamedAssetImportInfo *)self scalingStyle]];
  [(TDNamedAssetImportInfo *)self maxPointSize];
  [(TDNamedAssetImportInfo *)v4 setMaxPointSize:?];
  [(TDNamedAssetImportInfo *)self minPointSize];
  [(TDNamedAssetImportInfo *)v4 setMinPointSize:?];
  [(TDNamedAssetImportInfo *)v4 setAppearanceName:[(TDNamedAssetImportInfo *)self appearanceName]];
  [(TDNamedAssetImportInfo *)v4 setAppearanceIdentifier:[(TDNamedAssetImportInfo *)self appearanceIdentifier]];
  [(TDNamedAssetImportInfo *)v4 setLocalizationName:[(TDNamedAssetImportInfo *)self localizationName]];
  [(TDNamedAssetImportInfo *)v4 setLocalizationIdentifier:[(TDNamedAssetImportInfo *)self localizationIdentifier]];
  [(TDNamedAssetImportInfo *)self transformation];
  [(TDNamedAssetImportInfo *)v4 setTransformation:?];
  [(TDNamedAssetImportInfo *)v4 setObjectVersion:[(TDNamedAssetImportInfo *)self objectVersion]];
  [(TDNamedAssetImportInfo *)v4 setGenerateFallbackIcon:[(TDNamedAssetImportInfo *)self generateFallbackIcon]];
  return v4;
}

- (TDNamedAssetImportInfo)init
{
  v4.receiver = self;
  v4.super_class = TDNamedAssetImportInfo;
  v2 = [(TDNamedAssetImportInfo *)&v4 init];
  [(TDNamedAssetImportInfo *)v2 setResizingMode:1];
  [(TDNamedAssetImportInfo *)v2 setGenerateFallbackIcon:1];
  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = TDNamedAssetImportInfo;
  [(TDNamedAssetImportInfo *)&v3 dealloc];
}

- (void)verify
{
  if ([(TDNamedAssetImportInfo *)self preserveForArchiveOnly])
  {
    if ([(TDNamedAssetImportInfo *)self renditionType]== 1007)
    {
      [TDNamedAssetImportInfo verify];
    }

    if ([(TDNamedAssetImportInfo *)self renditionType]== 1017)
    {
      [TDNamedAssetImportInfo verify];
    }

    if ([(TDNamedAssetImportInfo *)self renditionType]== 1002)
    {
      [TDNamedAssetImportInfo verify];
    }

    if ([(TDNamedAssetImportInfo *)self renditionType]== 1018)
    {
      [TDNamedAssetImportInfo verify];
    }

    if ([(TDNamedAssetImportInfo *)self renditionType]== 1004)
    {
      [TDNamedAssetImportInfo verify];
    }
  }
}

- (int64_t)renditionSubtype
{
  if ([(TDNamedAssetImportInfo *)self resizingMode])
  {
    if ([(TDNamedAssetImportInfo *)self resizingMode]== 1)
    {
      v3 = [(TDNamedAssetImportInfo *)self renditionType];
      if (v3 < 4)
      {
        v4 = &unk_247A49448;
        return v4[v3];
      }
    }
  }

  else
  {
    v3 = [(TDNamedAssetImportInfo *)self renditionType];
    if (v3 < 4)
    {
      v4 = &unk_247A49428;
      return v4[v3];
    }
  }

  return 0;
}

- (id)description
{
  v60.receiver = self;
  v60.super_class = TDNamedAssetImportInfo;
  v59 = [(TDNamedAssetImportInfo *)&v60 description];
  [(TDNamedAssetImportInfo *)self sliceInsets];
  v58 = [MEMORY[0x277CCACA8] stringWithFormat:@"\nEdge insets top: %f left: %f bottom: %f right: %f", v3, v4, v5, v6];
  [(TDNamedAssetImportInfo *)self resizableSliceSize];
  v57 = NSStringFromSize(v61);
  v7 = [(TDNamedAssetImportInfo *)self displayGamut];
  if ([(TDNamedAssetImportInfo *)self layoutDirection]== 5)
  {
    v8 = @"Left to Right";
  }

  else
  {
    v9 = [(TDNamedAssetImportInfo *)self layoutDirection];
    v8 = @"Any direction";
    if (v9 == 4)
    {
      v8 = @"Right to Left";
    }
  }

  v53 = v8;
  v10 = @"P3";
  if (!v7)
  {
    v10 = @"sRGB";
  }

  v50 = v10;
  v56 = MEMORY[0x277CCACA8];
  v55 = [(TDNamedAssetImportInfo *)self name];
  v54 = [(TDNamedAssetImportInfo *)self nameIdentifier];
  v52 = [(TDNamedAssetImportInfo *)self appearanceName];
  v51 = [(TDNamedAssetImportInfo *)self appearanceIdentifier];
  v49 = [(TDNamedAssetImportInfo *)self localizationName];
  v48 = [(TDNamedAssetImportInfo *)self localizationIdentifier];
  v47 = [(NSURL *)[(TDNamedAssetImportInfo *)self fileURL] description];
  v46 = [(NSDate *)[(TDNamedAssetImportInfo *)self modificationDate] description];
  v45 = [(TDNamedAssetImportInfo *)self idiom];
  v44 = [(TDNamedAssetImportInfo *)self subtype];
  v43 = [(TDNamedAssetImportInfo *)self scaleFactor];
  v42 = [(TDNamedAssetImportInfo *)self renditionType];
  v41 = [(TDNamedAssetImportInfo *)self resizingMode];
  v40 = [(TDNamedAssetImportInfo *)self isTemplate];
  v39 = [(TDNamedAssetImportInfo *)self preservesVectorRepresentation];
  v38 = [(TDNamedAssetImportInfo *)self templateRenderingMode];
  v37 = [(TDNamedAssetImportInfo *)self optOutOfThinning];
  [(TDNamedAssetImportInfo *)self alignmentRect];
  v36 = NSStringFromRect(v63);
  v35 = [(TDNamedAssetImportInfo *)self sizeClassHorizontal];
  v34 = [(TDNamedAssetImportInfo *)self sizeClassVertical];
  v33 = [(TDNamedAssetImportInfo *)self isFlippable];
  v32 = [(TDNamedAssetImportInfo *)self memoryClass];
  v31 = [(TDNamedAssetImportInfo *)self graphicsFeatureSetClass];
  v30 = [(TDNamedAssetImportInfo *)self compressionType];
  [(TDNamedAssetImportInfo *)self lossyCompressionQuality];
  v12 = v11;
  v29 = [(NSSet *)[(TDNamedAssetImportInfo *)self tags] description];
  v28 = [(TDNamedAssetImportInfo *)self universalTypeIdentifier];
  v27 = [(NSArray *)[(TDNamedAssetImportInfo *)self containedImageNames] description];
  [(TDNamedAssetImportInfo *)self canvasSize];
  v26 = NSStringFromSize(v62);
  v25 = [(NSArray *)[(TDNamedAssetImportInfo *)self layerReferences] description];
  v24 = [(TDNamedAssetImportInfo *)self renditionSubtype];
  v13 = [(TDNamedAssetImportInfo *)self compressionType];
  v14 = [(TDNamedAssetImportInfo *)self cubeMap];
  v15 = [(TDNamedAssetImportInfo *)self textureWidth];
  v16 = [(TDNamedAssetImportInfo *)self textureHeight];
  v17 = [(TDNamedAssetImportInfo *)self texturePixelFormat];
  v18 = [(TDNamedAssetImportInfo *)self textureInfos];
  v19 = [(NSValue *)[(TDNamedAssetImportInfo *)self iconSize] description];
  v20 = [(TDNamedAssetImportInfo *)self fontName];
  [(TDNamedAssetImportInfo *)self fontSize];
  v22 = [v56 stringWithFormat:@"\n\tname: %@ \n\tnameIdentifier: %d \n\tappearance: %@ \n\tappearanceIdentifier: %d \n\tlocalization: %@ \n\tlocalizationIdentifier: %d \n\tfileURL: %@ \n\tmodificationDate: %@   \n\tidiom: %d \n\tsubtype: %d \n\tscaleFactor: %d \n\tsliceInsets: %@ \n\trenditionType: %d  \n\tresizingMode: %d \n\tresizableSliceSize: %@    \n\tisTemplate: %d \n\tpreservesVectorRepresentation: %d\n\ttemplateRenderingMode: %d \n\toptOutOfThinning: %d \n\talignmentRect: %@ \n\tsizeClassHorizontal: %d \n\tsizeClassVertical: %d  \n\tdisplayGamut: %@ \n\tlayoutDirection: %@   \n\tisFlippable: %d   \n\tmemoryClass: %d \n\tgraphicsFeatureSetClass: %d \n\tcompressionType: %d \n\tlossyCompressionQuality: %f    \n\ttags: %@ \n\tuniversalTypeIdentifier: %@ \n\tcontainedImageNames: %@    \n\tcanvasSize: %@ \n\tlayerReferences: %@ \n\trenditionSubtype: %d \n\tcompressionType: %d\n\tcubeMap: %d\n\ttextureWidth: %d\n\ttextureHeight: %d\n\ttexturePixelFormat: %d textureImportInfos:%@ \n\ticonSize: %@\n\tfontName: %@\n\tfontSize: %d\n\tcolorSpaceId: %d", v55, v54, v52, v51, v49, v48, v47, v46, v45, v44, v43, v58, v42, v41, v57, v40, v39, v38, v37, v36, v35, v34, v50, v53, v33, v32, v31, v30, v12, v29, v28, v27, v26, v25, v24, v13, v14, v15, v16, v17, v18, v19, v20, v21, -[TDNamedAssetImportInfo colorSpaceID](self, "colorSpaceID")];
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%@  %@", v59, v22];
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)sliceInsets
{
  top = self->_sliceInsets.top;
  left = self->_sliceInsets.left;
  bottom = self->_sliceInsets.bottom;
  right = self->_sliceInsets.right;
  result.var3 = right;
  result.var2 = bottom;
  result.var1 = left;
  result.var0 = top;
  return result;
}

- (CGSize)resizableSliceSize
{
  width = self->_resizableSliceSize.width;
  height = self->_resizableSliceSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)alignmentRect
{
  x = self->_alignmentRect.origin.x;
  y = self->_alignmentRect.origin.y;
  width = self->_alignmentRect.size.width;
  height = self->_alignmentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
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

- (__n128)transformation
{
  result = *(a1 + 592);
  v2 = *(a1 + 608);
  v3 = *(a1 + 624);
  v4 = *(a1 + 640);
  return result;
}

- (__n128)setTransformation:(__n128)a3
{
  result[37] = a2;
  result[38] = a3;
  result[39] = a4;
  result[40] = a5;
  return result;
}

- (CGSize)canvasSize
{
  width = self->_canvasSize.width;
  height = self->_canvasSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)gradientStartPoint
{
  x = self->_gradientStartPoint.x;
  y = self->_gradientStartPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (CGPoint)gradientEndPoint
{
  x = self->_gradientEndPoint.x;
  y = self->_gradientEndPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

- (uint64_t)verify
{
  OUTLINED_FUNCTION_2();
  [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  return [v1 handleFailureInMethod:v0 object:? file:? lineNumber:? description:?];
}

@end