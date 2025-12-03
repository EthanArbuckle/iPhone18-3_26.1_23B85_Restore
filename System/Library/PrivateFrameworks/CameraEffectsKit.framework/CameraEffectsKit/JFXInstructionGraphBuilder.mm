@interface JFXInstructionGraphBuilder
+ (double)JFX_scaleForMediaSize:(CGSize)size mediaContentMode:(int)mode clipAspectRatio:(double)ratio outputSize:(CGSize)outputSize outputContentMode:(int)contentMode;
+ (id)JFX_maskNode:(id)node maskRect:(CGRect)rect basisSize:(CGSize)size;
+ (id)JFX_transformNode:(id)node scale:(double)scale;
- (CGAffineTransform)JFX_calculateCompositeNodeTransformForCropWithCompositeNodeOutputSize:(SEL)size mediaScale:(CGSize)scale;
- (CGSize)frameSize;
- (CGSize)outputSize;
- (JFXInstructionGraphBuilder)initWithOutputSize:(CGSize)size frameSize:(CGSize)frameSize outputColorSpace:(id)space;
- (id)JFX_applyCustomRenderingPropertiesToInputNode:(id)node customRendererProperties:(id)properties transformAnimation:(id)animation transformAnimationContentMode:(int)mode mediaScale:(double)scale;
- (id)JFX_mediaTransformAnimationForPlayableElement:(id)element liveTransform:(PVTransformAnimationInfo *)transform;
- (id)_buildTestXFormAnimation:(id *)animation baseTransform:(CGAffineTransform *)transform clipNaturalSize:(CGSize)size;
- (id)_sourceNodeForStillMediaItem:(id)item sourceTransform:(CGAffineTransform *)transform transformAnimation:(id)animation transformAnimationContentMode:(int)mode presentationRange:(id *)range;
- (id)_sourceNodeForVideoMediaItem:(id)item sourceTransform:(CGAffineTransform *)transform compositionTrackID:(int)d transformAnimation:(id)animation transformAnimationContentMode:(int)mode;
- (id)applyEffectStack:(id)stack presentationRange:(id *)range toInput:(id)input;
- (id)applyEffectStack:(id)stack toInput:(id)input;
- (id)blendNodeForClipSourceNodes:(id)nodes;
- (id)instructionGraphForPlayableElement:(id)element presentationTimeRange:(id *)range sourceTransform:(CGAffineTransform *)transform compositionTrackID:(int)d liveTransform:(PVTransformAnimationInfo *)liveTransform excludingEffectType:(int)type customRendererProperties:(id)properties;
- (id)sourceNodeForGeneratorEffect:(id)effect effectRange:(id *)range;
- (id)sourceNodeForImageBuffer:(id)buffer sourceTransform:(CGAffineTransform *)transform;
- (id)sourceNodeForMediaItem:(id)item sourceTransform:(CGAffineTransform *)transform compositionTrackID:(int)d transformAnimation:(id)animation transformAnimationContentMode:(int)mode presentationTimeRange:(id *)range mediaScale:(double)scale playableAspectRatio:(int64_t)self0 playableAspectRatioPreservationMode:(int64_t)self1;
@end

@implementation JFXInstructionGraphBuilder

- (JFXInstructionGraphBuilder)initWithOutputSize:(CGSize)size frameSize:(CGSize)frameSize outputColorSpace:(id)space
{
  height = frameSize.height;
  width = frameSize.width;
  v8 = size.height;
  v9 = size.width;
  spaceCopy = space;
  v15.receiver = self;
  v15.super_class = JFXInstructionGraphBuilder;
  v12 = [(JFXInstructionGraphBuilder *)&v15 init];
  v13 = v12;
  if (v12)
  {
    v12->_renderingIntent = 0;
    v12->_outputSize.width = v9;
    v12->_outputSize.height = v8;
    v12->_frameSize.width = width;
    v12->_frameSize.height = height;
    objc_storeStrong(&v12->_outputColorSpace, space);
  }

  return v13;
}

- (id)sourceNodeForMediaItem:(id)item sourceTransform:(CGAffineTransform *)transform compositionTrackID:(int)d transformAnimation:(id)animation transformAnimationContentMode:(int)mode presentationTimeRange:(id *)range mediaScale:(double)scale playableAspectRatio:(int64_t)self0 playableAspectRatioPreservationMode:(int64_t)self1
{
  v12 = *&mode;
  v14 = *&d;
  itemCopy = item;
  animationCopy = animation;
  mediaType = [itemCopy mediaType];
  if (mediaType == 2)
  {
    v22 = *&transform->c;
    v27 = *&transform->a;
    v28 = v22;
    v29 = *&transform->tx;
    v23 = *&range->var0.var3;
    v26[0] = *&range->var0.var0;
    v26[1] = v23;
    v26[2] = *&range->var1.var1;
    v21 = [(JFXInstructionGraphBuilder *)self _sourceNodeForStillMediaItem:itemCopy sourceTransform:&v27 transformAnimation:animationCopy transformAnimationContentMode:v12 presentationRange:v26];
    goto LABEL_5;
  }

  if (mediaType == 1)
  {
    v20 = *&transform->c;
    v27 = *&transform->a;
    v28 = v20;
    v29 = *&transform->tx;
    v21 = [(JFXInstructionGraphBuilder *)self _sourceNodeForVideoMediaItem:itemCopy sourceTransform:&v27 compositionTrackID:v14 transformAnimation:animationCopy transformAnimationContentMode:v12];
LABEL_5:
    v24 = v21;
    goto LABEL_7;
  }

  v24 = 0;
LABEL_7:

  return v24;
}

- (id)sourceNodeForImageBuffer:(id)buffer sourceTransform:(CGAffineTransform *)transform
{
  v5 = MEMORY[0x277D41630];
  bufferCopy = buffer;
  v7 = [v5 alloc];
  v8 = *&transform->c;
  v11[0] = *&transform->a;
  v11[1] = v8;
  v11[2] = *&transform->tx;
  v9 = [v7 initWithPVImageBuffer:bufferCopy transform:v11];

  return v9;
}

- (id)sourceNodeForGeneratorEffect:(id)effect effectRange:(id *)range
{
  renderEffect = [effect renderEffect];
  v6 = *&range->var0.var3;
  v9[0] = *&range->var0.var0;
  v9[1] = v6;
  v9[2] = *&range->var1.var1;
  [renderEffect setEffectRange:v9];
  v7 = [MEMORY[0x277D41628] newGeneratorNode:renderEffect];

  return v7;
}

- (id)applyEffectStack:(id)stack presentationRange:(id *)range toInput:(id)input
{
  v31 = *MEMORY[0x277D85DE8];
  stackCopy = stack;
  inputCopy = input;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [stackCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
  v10 = inputCopy;
  if (v9)
  {
    v11 = v9;
    v12 = *v27;
    v10 = inputCopy;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(stackCopy);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if (([v14 isNone] & 1) == 0)
        {
          renderEffect = [v14 renderEffect];

          if (renderEffect)
          {
            renderEffect2 = [v14 renderEffect];
            if ((range->var0.var2 & 1) != 0 && (range->var1.var2 & 1) != 0 && !range->var1.var3 && (range->var1.var0 & 0x8000000000000000) == 0)
            {
              if (v14)
              {
                v17 = *&range->var0.var3;
                v20 = *&range->var0.var0;
                v21 = v17;
                v22 = *&range->var1.var1;
                [v14 rangeForPresentationRange:&v20];
              }

              else
              {
                v24 = 0u;
                v25 = 0u;
                v23 = 0u;
              }

              v20 = v23;
              v21 = v24;
              v22 = v25;
              [renderEffect2 setEffectRange:&v20];
            }

            v18 = [MEMORY[0x277D41620] newEffectNodeToFilterInput:v10 effect:renderEffect2];

            v10 = v18;
          }
        }
      }

      v11 = [stackCopy countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  return v10;
}

- (id)applyEffectStack:(id)stack toInput:(id)input
{
  v4 = *(MEMORY[0x277CC08C8] + 16);
  v7[0] = *MEMORY[0x277CC08C8];
  v7[1] = v4;
  v7[2] = *(MEMORY[0x277CC08C8] + 32);
  v5 = [(JFXInstructionGraphBuilder *)self applyEffectStack:stack presentationRange:v7 toInput:input];

  return v5;
}

- (id)blendNodeForClipSourceNodes:(id)nodes
{
  v23 = *MEMORY[0x277D85DE8];
  nodesCopy = nodes;
  v4 = objc_opt_new();
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = nodesCopy;
  v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(obj);
        }

        [v4 setInputNode:*(*(&v18 + 1) + 8 * i) forInputID:v8];
        v11 = objc_alloc(MEMORY[0x277D41698]);
        LODWORD(v12) = 1.0;
        v13 = [v11 initWithOpacity:0 mode:v12];
        v14 = [MEMORY[0x277CCABB0] numberWithInt:v8];
        [v5 setObject:v13 forKey:v14];

        v8 = (v8 + 1);
      }

      v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = [MEMORY[0x277D415F8] newEffectWithID:*MEMORY[0x277D416E0]];
  [v15 setInspectableProperty:v5 forKey:*MEMORY[0x277D41A80]];
  [v4 setEffect:v15];

  return v4;
}

- (id)JFX_mediaTransformAnimationForPlayableElement:(id)element liveTransform:(PVTransformAnimationInfo *)transform
{
  elementCopy = element;
  transformAnimation = [elementCopy transformAnimation];
  animationData = [transformAnimation animationData];
  v8 = [animationData count];

  if (v8)
  {
    if (!transform)
    {
      transformAnimation2 = [elementCopy transformAnimation];
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v11 = [standardUserDefaults BOOLForKey:@"noPanZoomAnchoring"];

  if (v11)
  {
    v12 = 0;
    goto LABEL_10;
  }

  if (transform)
  {
LABEL_7:
    transformAnimation2 = [objc_alloc(MEMORY[0x277D416B0]) initWithLiveTransform:transform];
    goto LABEL_8;
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  PVTransformAnimationInfoIdentity();
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  transformAnimation2 = [objc_alloc(MEMORY[0x277D416B0]) initWithAnimationInfo:v14];
LABEL_8:
  v12 = transformAnimation2;
  if (transformAnimation2)
  {
    [transformAnimation2 setAspectRatio:{multiplierForAspectRatio(objc_msgSend(elementCopy, "playableAspectRatio"))}];
  }

LABEL_10:

  return v12;
}

- (id)instructionGraphForPlayableElement:(id)element presentationTimeRange:(id *)range sourceTransform:(CGAffineTransform *)transform compositionTrackID:(int)d liveTransform:(PVTransformAnimationInfo *)liveTransform excludingEffectType:(int)type customRendererProperties:(id)properties
{
  v76 = *MEMORY[0x277D85DE8];
  elementCopy = element;
  propertiesCopy = properties;
  [(JFXInstructionGraphBuilder *)self outputSize];
  v15 = v14;
  v17 = v16;
  [elementCopy playableMediaSizeWithTransform];
  v19 = v18;
  v21 = v20;
  playableMediaContentMode = [elementCopy playableMediaContentMode];
  v23 = multiplierForAspectRatio([elementCopy playableAspectRatio]);
  v24 = 0;
  v25 = 1.0;
  v63 = PVViewContentModeFromAspectRatioPreservationMode([elementCopy playableAspectRatioPreservationMode]);
  if (v63 && fabs(v23) >= 0.0000001)
  {
    v26 = sizeForAspectRatio([elementCopy playableAspectRatio]);
    if (v17)
    {
      v28 = v17;
      v29 = v15;
      do
      {
        v30 = v28;
        v28 = v29 % v28;
        v29 = v30;
      }

      while (v28);
    }

    else
    {
      v30 = v15;
    }

    if (v27)
    {
      v31 = v27;
      v32 = v26;
      do
      {
        v33 = v31;
        v31 = v32 % v31;
        v32 = v33;
      }

      while (v31);
    }

    else
    {
      v33 = v26;
    }

    if (v15 / v30 == v26 / v33 && v17 / v30 == v27 / v33)
    {
      v24 = 0;
    }

    else
    {
      [objc_opt_class() JFX_scaleForMediaSize:playableMediaContentMode mediaContentMode:14 clipAspectRatio:v19 outputSize:v21 outputContentMode:{v23, v15, v17}];
      v25 = v34;
      v24 = 1;
    }
  }

  v35 = [(JFXInstructionGraphBuilder *)self JFX_mediaTransformAnimationForPlayableElement:elementCopy liveTransform:liveTransform];
  v36 = [elementCopy playableEffectsOfType:2];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v37 = [v36 countByEnumeratingWithState:&v71 objects:v75 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v72;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v72 != v39)
        {
          objc_enumerationMutation(v36);
        }

        [*(*(&v71 + 1) + 8 * i) setTransformAnimation:v35];
      }

      v38 = [v36 countByEnumeratingWithState:&v71 objects:v75 count:16];
    }

    while (v38);
  }

  mediaItem = [elementCopy mediaItem];
  playableAspectRatio = [elementCopy playableAspectRatio];
  playableAspectRatioPreservationMode = [elementCopy playableAspectRatioPreservationMode];
  v44 = *&transform->c;
  v68 = *&transform->a;
  v69 = v44;
  v70 = *&transform->tx;
  v45 = *&range->var0.var3;
  v67[0] = *&range->var0.var0;
  v67[1] = v45;
  v67[2] = *&range->var1.var1;
  v46 = [(JFXInstructionGraphBuilder *)self sourceNodeForMediaItem:mediaItem sourceTransform:&v68 compositionTrackID:d transformAnimation:v35 transformAnimationContentMode:14 presentationTimeRange:v67 mediaScale:v25 playableAspectRatio:playableAspectRatio playableAspectRatioPreservationMode:playableAspectRatioPreservationMode];

  v47 = v46;
  if ([elementCopy shouldRenderVideoAsBlack])
  {
    v48 = [MEMORY[0x277D415F8] newEffectWithID:*MEMORY[0x277D41720]];
    blackColor = [MEMORY[0x277D75348] blackColor];
    [v48 setInspectableProperty:blackColor forKey:*MEMORY[0x277D41AF0]];

    v50 = *&range->var0.var3;
    v68 = *&range->var0.var0;
    v69 = v50;
    v70 = *&range->var1.var1;
    [v48 setEffectRange:&v68];
    v51 = [MEMORY[0x277D41620] newEffectNodeToFilterInput:v47 effect:v48];
    v52 = v47;
    goto LABEL_60;
  }

  v53 = v47;
  if (v24)
  {
    v53 = [objc_opt_class() JFX_transformNode:v47 scale:v25];
  }

  v54 = [(JFXInstructionGraphBuilder *)self JFX_applyCustomRenderingPropertiesToInputNode:v53 customRendererProperties:propertiesCopy transformAnimation:v35 transformAnimationContentMode:14 mediaScale:v25];

  if (type)
  {
    [elementCopy playableEffectStackExcludingType:?];
  }

  else
  {
    [elementCopy playableEffectStack];
  }
  v48 = ;
  v55 = *&range->var0.var3;
  v68 = *&range->var0.var0;
  v69 = v55;
  v70 = *&range->var1.var1;
  v56 = [(JFXInstructionGraphBuilder *)self applyEffectStack:v48 presentationRange:&v68 toInput:v54];

  if (v24)
  {
    v57 = v17 * v23;
    v58 = v15;
    if (v63)
    {
      if (v63 > 2)
      {
        v58 = v15;
        if (v63 != 3)
        {
          v58 = v15;
          if (v63 != 13)
          {
            v58 = v23;
            if (v63 == 14)
            {
              v58 = v17 * v23;
            }
          }
        }

        goto LABEL_43;
      }

      if (v63 == 1)
      {
        if (v15 <= v17)
        {
          v59 = v17;
          if (v57 < v15)
          {
            v59 = v15 / v23;
          }
        }

        else
        {
          v59 = v15 / v23;
          if (v15 / v23 < v17)
          {
            v59 = v17;
          }
        }

        goto LABEL_42;
      }

      v58 = v23;
      if (v63 == 2)
      {
        v59 = v15 / v23;
        if (v15 / v23 > v17)
        {
          v59 = v17;
        }

LABEL_42:
        v58 = v23 * v59;
      }
    }

LABEL_43:
    v60 = [objc_opt_class() JFX_transformNode:v56 scale:v58 / v57];

    if (!v63)
    {
      goto LABEL_49;
    }

    v61 = 1.0;
    if (v63 <= 2)
    {
      if (v63 == 1)
      {
        if (v15 <= v17)
        {
          v61 = v17;
          if (v57 < v15)
          {
            v61 = v15 / v23;
          }
        }

        else
        {
          v61 = v15 / v23;
          if (v15 / v23 < v17)
          {
            v61 = v17;
          }
        }
      }

      else
      {
        if (v63 != 2)
        {
          goto LABEL_58;
        }

        if (v15 / v23 <= v17)
        {
          v61 = v15 / v23;
        }

        else
        {
          v61 = v17;
        }
      }

      v23 = v23 * v61;
      goto LABEL_58;
    }

    switch(v63)
    {
      case 3:
LABEL_49:
        v23 = v15;
        break;
      case 13:
        v61 = v15 / v23;
        v23 = v15;
        goto LABEL_58;
      case 14:
        v23 = v17 * v23;
        break;
      default:
LABEL_58:
        v56 = [objc_opt_class() JFX_maskNode:v60 maskRect:(v15 - v23) * 0.5 + 0.0 basisSize:{(v17 - v61) * 0.5 + 0.0, v23, v61, v15, v17}];

        goto LABEL_59;
    }

    v61 = v17;
    goto LABEL_58;
  }

LABEL_59:
  v52 = v56;
  v51 = v52;
LABEL_60:

  return v51;
}

+ (double)JFX_scaleForMediaSize:(CGSize)size mediaContentMode:(int)mode clipAspectRatio:(double)ratio outputSize:(CGSize)outputSize outputContentMode:(int)contentMode
{
  v7 = 1.0;
  if (mode != contentMode && mode && contentMode)
  {
    if (mode <= 2)
    {
      if (mode == 1)
      {
        if (outputSize.width <= outputSize.height)
        {
          v13 = outputSize.height / size.height;
          if (size.width * (outputSize.height / size.height) < outputSize.width)
          {
            v13 = outputSize.width / size.width;
          }
        }

        else
        {
          v13 = outputSize.width / size.width;
          if (size.height * (outputSize.width / size.width) < outputSize.height)
          {
            v13 = outputSize.height / size.height;
          }
        }

        size.width = size.width * v13;
        size.height = size.height * v13;
LABEL_27:
        v14 = size.width / ratio;
        if (v14 <= size.height)
        {
          height = v14;
        }

        else
        {
          height = size.height;
        }

LABEL_30:
        width = height * ratio;
        goto LABEL_31;
      }

      if (mode == 2)
      {
        if (size.height * (outputSize.width / size.width) <= outputSize.height)
        {
          v10 = outputSize.width / size.width;
        }

        else
        {
          v10 = outputSize.height / size.height;
        }

        v11 = size.width * v10;
        v12 = size.height * v10;
        if (v11 <= size.height * v10)
        {
          height = size.height * v10;
          if (v12 * ratio < v11)
          {
            height = v11 / ratio;
          }
        }

        else
        {
          height = v11 / ratio;
          if (v11 / ratio < v12)
          {
            height = v12;
          }
        }

        goto LABEL_30;
      }
    }

    else
    {
      switch(mode)
      {
        case 3:
          height = outputSize.height;
          width = outputSize.width;
          goto LABEL_31;
        case 13:
          width = outputSize.width;
          height = outputSize.width / ratio;
          goto LABEL_31;
        case 14:
          width = outputSize.height * ratio;
          height = outputSize.height;
          goto LABEL_31;
      }
    }

    height = 1.0;
    width = ratio;
    if ((mode - 4) < 9)
    {
LABEL_31:
      if (contentMode > 2)
      {
        switch(contentMode)
        {
          case 3:
            ratio = outputSize.width;
            break;
          case 13:
            return outputSize.width / ratio / height;
          case 14:
            ratio = outputSize.height * ratio;
            break;
        }

        return ratio / width;
      }

      if (contentMode == 1)
      {
        if (outputSize.width <= outputSize.height)
        {
          v15 = outputSize.height;
          if (outputSize.height * ratio < outputSize.width)
          {
            v15 = outputSize.width / ratio;
          }
        }

        else
        {
          v15 = outputSize.width / ratio;
          if (outputSize.width / ratio < outputSize.height)
          {
            v15 = outputSize.height;
          }
        }
      }

      else
      {
        if (contentMode != 2)
        {
          return ratio / width;
        }

        v15 = outputSize.width / ratio;
        if (outputSize.width / ratio > outputSize.height)
        {
          v15 = outputSize.height;
        }
      }

      ratio = v15 * ratio;
      return ratio / width;
    }

    goto LABEL_27;
  }

  return v7;
}

+ (id)JFX_transformNode:(id)node scale:(double)scale
{
  nodeCopy = node;
  v6 = nodeCopy;
  if (fabs(scale + -1.0) >= 0.0001)
  {
    memset(&v10, 0, sizeof(v10));
    CGAffineTransformMakeScale(&v10, scale, scale);
    v9 = v10;
    v7 = [MEMORY[0x277D41658] newTransformNode:v6 transform:&v9];
    [v7 setIsDebugDrawingEnabled:JFX_isDrawInstructionGraphNodesEnabled()];
  }

  else
  {
    v7 = nodeCopy;
  }

  return v7;
}

+ (id)JFX_maskNode:(id)node maskRect:(CGRect)rect basisSize:(CGSize)size
{
  v5 = [MEMORY[0x277D41640] newMaskNode:node normalizedMaskRect:{rect.origin.x / size.width, rect.origin.y / size.height, rect.size.width / size.width, rect.size.height / size.height}];
  [v5 setIsDebugDrawingEnabled:JFX_isDrawInstructionGraphNodesEnabled()];

  return v5;
}

- (id)JFX_applyCustomRenderingPropertiesToInputNode:(id)node customRendererProperties:(id)properties transformAnimation:(id)animation transformAnimationContentMode:(int)mode mediaScale:(double)scale
{
  v8 = *&mode;
  v36[2] = *MEMORY[0x277D85DE8];
  nodeCopy = node;
  propertiesCopy = properties;
  animationCopy = animation;
  v15 = nodeCopy;
  v16 = v15;
  if (propertiesCopy)
  {
    v17 = [propertiesCopy objectForKeyedSubscript:@"JFXCustomRenderingPropertiesKey_Animoji"];

    v16 = v15;
    if (v17)
    {
      v18 = [propertiesCopy objectForKeyedSubscript:@"JFXCustomRenderingPropertiesKey_Animoji"];
      metadata = [v18 metadata];
      v20 = [metadata objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_RenderSize"];
      [v20 CGSizeValue];
      v22 = v21;
      v24 = v23;

      v25 = MEMORY[0x277D41648];
      renderingDelegate = [v18 renderingDelegate];
      metadata2 = [v18 metadata];
      v28 = [v25 newSourceCompositeNodeWithDelegate:renderingDelegate inputs:0 userContext:metadata2 outputSize:1111970369 outputFormat:v22, v24];

      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      [(JFXInstructionGraphBuilder *)self JFX_calculateCompositeNodeTransformForCropWithCompositeNodeOutputSize:v22 mediaScale:v24, scale];
      v32[0] = v33;
      v32[1] = v34;
      v32[2] = v35;
      [v28 setTransform:v32];
      sRGBColorSpace = [MEMORY[0x277D415E0] sRGBColorSpace];
      [v28 setColorSpace:sRGBColorSpace];

      [v28 setTransformAnimationContentMode:v8];
      [v28 setTransformAnimation:animationCopy];
      v36[0] = v15;
      v36[1] = v28;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
      v16 = [(JFXInstructionGraphBuilder *)self blendNodeForClipSourceNodes:v30];
    }
  }

  return v16;
}

- (CGAffineTransform)JFX_calculateCompositeNodeTransformForCropWithCompositeNodeOutputSize:(SEL)size mediaScale:(CGSize)scale
{
  height = scale.height;
  width = scale.width;
  v8 = MEMORY[0x277CBF2C0];
  v24 = *(MEMORY[0x277CBF2C0] + 16);
  v25 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v24;
  v23 = *(v8 + 32);
  *&retstr->tx = v23;
  result = [(JFXInstructionGraphBuilder *)self outputSize];
  v12 = v11;
  v13 = v10;
  v14 = v11 == width && v10 == height;
  if (!v14 || fabs(a5 + -1.0) >= 0.0001)
  {
    [(JFXInstructionGraphBuilder *)self outputSize];
    v16 = v15 / height;
    [(JFXInstructionGraphBuilder *)self outputSize];
    v18 = v17 / width;
    if (v16 >= v18)
    {
      v18 = v16;
    }

    v19 = v18;
    v20 = v19 * a5;
    memset(&v34, 0, sizeof(v34));
    CGAffineTransformMakeScale(&v34, v20, v20);
    CGRectForInnerSizeCenteredInOuterSize(v12, v13, vmlaq_n_f64(vmulq_n_f64(*&v34.c, height), *&v34.a, width).f64[0]);
    v33 = 0;
    memset(&v32, 0, sizeof(v32));
    PVTransformAnimationInfoForLiveCapture();
    *&t1.a = v25;
    *&t1.c = v24;
    *&t1.tx = v23;
    t2 = v34;
    CGAffineTransformConcat(retstr, &t1, &t2);
    t1 = v32;
    v30 = v33;
    CGAffineTransformFromPVAnimInfo();
    v21 = *&retstr->c;
    *&v28.a = *&retstr->a;
    *&v28.c = v21;
    *&v28.tx = *&retstr->tx;
    result = CGAffineTransformConcat(&t1, &v28, &t2);
    v22 = *&t1.c;
    *&retstr->a = *&t1.a;
    *&retstr->c = v22;
    *&retstr->tx = *&t1.tx;
  }

  return result;
}

- (id)_sourceNodeForVideoMediaItem:(id)item sourceTransform:(CGAffineTransform *)transform compositionTrackID:(int)d transformAnimation:(id)animation transformAnimationContentMode:(int)mode
{
  v7 = *&mode;
  v8 = *&d;
  v11 = MEMORY[0x277D41650];
  animationCopy = animation;
  itemCopy = item;
  playableMediaContentMode = [itemCopy playableMediaContentMode];
  [itemCopy naturalSize];
  v16 = v15;
  v18 = v17;

  v19 = [v11 newSourceTrackNode:v8 animation:animationCopy fillMode:playableMediaContentMode clipNaturalSize:{v16, v18}];
  v20 = *&transform->c;
  v22[0] = *&transform->a;
  v22[1] = v20;
  v22[2] = *&transform->tx;
  [v19 setTransform:v22];
  [v19 setTransformAnimationContentMode:v7];

  return v19;
}

- (id)_sourceNodeForStillMediaItem:(id)item sourceTransform:(CGAffineTransform *)transform transformAnimation:(id)animation transformAnimationContentMode:(int)mode presentationRange:(id *)range
{
  v7 = *&mode;
  itemCopy = item;
  animationCopy = animation;
  assetURL = [itemCopy assetURL];
  if ([itemCopy mediaState] == 3)
  {
    v14 = [assetURL URLByAppendingPathComponent:@"trash"];

    assetURL = v14;
  }

  v15 = [objc_alloc(MEMORY[0x277D41638]) initWithURL:assetURL animation:animationCopy isExporting:self->_renderingIntent == 1 imageDelegate:itemCopy renderingIntent:self->_renderingIntent fillMode:{objc_msgSend(itemCopy, "playableMediaContentMode")}];

  v16 = *&transform->c;
  v18[0] = *&transform->a;
  v18[1] = v16;
  v18[2] = *&transform->tx;
  [v15 setTransform:v18];
  [v15 setTransformAnimationContentMode:v7];

  return v15;
}

- (id)_buildTestXFormAnimation:(id *)animation baseTransform:(CGAffineTransform *)transform clipNaturalSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v36 = *&animation->var0.var0;
  var3 = animation->var0.var3;
  tx = transform->tx;
  ty = transform->ty;
  v12 = sqrt(transform->d * transform->d + transform->a * transform->a);
  v13 = JFXLog_DebugComposition();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [JFXInstructionGraphBuilder _buildTestXFormAnimation:transform baseTransform:v13 clipNaturalSize:?];
  }

  *&range.start.value = v36;
  range.start.epoch = var3;
  *&range.duration.value = tx;
  *&range.duration.timescale = ty;
  *&range.duration.epoch = v12;
  v35 = 0;
  v14 = [MEMORY[0x277CCAE60] valueWithPVTransformAnimationInfo:&range];
  [v9 addObject:v14];
  var0 = animation->var1.var0;
  v16 = animation->var0.var0;
  v17 = *&animation->var0.var1;
  memset(&v32, 0, sizeof(v32));
  v18 = *&animation->var0.var0;
  v19 = *&animation->var0.var3;
  v33 = v17;
  *&range.start.value = v18;
  v20 = *&animation->var1.var1;
  *&range.start.epoch = v19;
  *&range.duration.timescale = v20;
  CMTimeRangeGetEnd(&v32, &range);
  v21 = v16 + 1;
  range.start.value = v16 + 1;
  *&range.start.timescale = v33;
  v31 = v32;
  if (CMTimeCompare(&range.start, &v31) < 0)
  {
    v22 = var0;
    v23 = 0.2 / var0;
    v24 = 0.1 / v22;
    do
    {
      v25 = v21 - animation->var0.var0;
      v26 = ty + v21 * v24;
      v27 = tx + v21 * v24;
      if (height <= width)
      {
        v26 = ty;
      }

      else
      {
        v27 = tx;
      }

      *&range.start.timescale = v33;
      range.start.value = v21;
      *&range.duration.value = v27;
      *&range.duration.timescale = v26;
      *&range.duration.epoch = v12 + v25 * v23;
      v35 = 0;
      v28 = [MEMORY[0x277CCAE60] valueWithPVTransformAnimationInfo:&range];
      [v9 addObject:v28];

      range.start.value = ++v21;
      *&range.start.timescale = v33;
      v31 = v32;
    }

    while (CMTimeCompare(&range.start, &v31) < 0);
  }

  v29 = [objc_alloc(MEMORY[0x277D416B0]) initWithAnimation:v9];

  return v29;
}

- (CGSize)outputSize
{
  width = self->_outputSize.width;
  height = self->_outputSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)frameSize
{
  width = self->_frameSize.width;
  height = self->_frameSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)_buildTestXFormAnimation:(_OWORD *)a1 baseTransform:(NSObject *)a2 clipNaturalSize:.cold.1(_OWORD *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = a1[1];
  *&v5.a = *a1;
  *&v5.c = v3;
  *&v5.tx = a1[2];
  v4 = NSStringFromCGAffineTransform(&v5);
  LODWORD(v5.a) = 138412290;
  *(&v5.a + 4) = v4;
  _os_log_debug_impl(&dword_242A3B000, a2, OS_LOG_TYPE_DEBUG, "newInstructionGraphNodeToShowImageWithClip: clipTransform = %@", &v5, 0xCu);
}

@end