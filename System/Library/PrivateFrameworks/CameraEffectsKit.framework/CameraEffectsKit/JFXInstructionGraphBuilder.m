@interface JFXInstructionGraphBuilder
+ (double)JFX_scaleForMediaSize:(CGSize)a3 mediaContentMode:(int)a4 clipAspectRatio:(double)a5 outputSize:(CGSize)a6 outputContentMode:(int)a7;
+ (id)JFX_maskNode:(id)a3 maskRect:(CGRect)a4 basisSize:(CGSize)a5;
+ (id)JFX_transformNode:(id)a3 scale:(double)a4;
- (CGAffineTransform)JFX_calculateCompositeNodeTransformForCropWithCompositeNodeOutputSize:(SEL)a3 mediaScale:(CGSize)a4;
- (CGSize)frameSize;
- (CGSize)outputSize;
- (JFXInstructionGraphBuilder)initWithOutputSize:(CGSize)a3 frameSize:(CGSize)a4 outputColorSpace:(id)a5;
- (id)JFX_applyCustomRenderingPropertiesToInputNode:(id)a3 customRendererProperties:(id)a4 transformAnimation:(id)a5 transformAnimationContentMode:(int)a6 mediaScale:(double)a7;
- (id)JFX_mediaTransformAnimationForPlayableElement:(id)a3 liveTransform:(PVTransformAnimationInfo *)a4;
- (id)_buildTestXFormAnimation:(id *)a3 baseTransform:(CGAffineTransform *)a4 clipNaturalSize:(CGSize)a5;
- (id)_sourceNodeForStillMediaItem:(id)a3 sourceTransform:(CGAffineTransform *)a4 transformAnimation:(id)a5 transformAnimationContentMode:(int)a6 presentationRange:(id *)a7;
- (id)_sourceNodeForVideoMediaItem:(id)a3 sourceTransform:(CGAffineTransform *)a4 compositionTrackID:(int)a5 transformAnimation:(id)a6 transformAnimationContentMode:(int)a7;
- (id)applyEffectStack:(id)a3 presentationRange:(id *)a4 toInput:(id)a5;
- (id)applyEffectStack:(id)a3 toInput:(id)a4;
- (id)blendNodeForClipSourceNodes:(id)a3;
- (id)instructionGraphForPlayableElement:(id)a3 presentationTimeRange:(id *)a4 sourceTransform:(CGAffineTransform *)a5 compositionTrackID:(int)a6 liveTransform:(PVTransformAnimationInfo *)a7 excludingEffectType:(int)a8 customRendererProperties:(id)a9;
- (id)sourceNodeForGeneratorEffect:(id)a3 effectRange:(id *)a4;
- (id)sourceNodeForImageBuffer:(id)a3 sourceTransform:(CGAffineTransform *)a4;
- (id)sourceNodeForMediaItem:(id)a3 sourceTransform:(CGAffineTransform *)a4 compositionTrackID:(int)a5 transformAnimation:(id)a6 transformAnimationContentMode:(int)a7 presentationTimeRange:(id *)a8 mediaScale:(double)a9 playableAspectRatio:(int64_t)a10 playableAspectRatioPreservationMode:(int64_t)a11;
@end

@implementation JFXInstructionGraphBuilder

- (JFXInstructionGraphBuilder)initWithOutputSize:(CGSize)a3 frameSize:(CGSize)a4 outputColorSpace:(id)a5
{
  height = a4.height;
  width = a4.width;
  v8 = a3.height;
  v9 = a3.width;
  v11 = a5;
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
    objc_storeStrong(&v12->_outputColorSpace, a5);
  }

  return v13;
}

- (id)sourceNodeForMediaItem:(id)a3 sourceTransform:(CGAffineTransform *)a4 compositionTrackID:(int)a5 transformAnimation:(id)a6 transformAnimationContentMode:(int)a7 presentationTimeRange:(id *)a8 mediaScale:(double)a9 playableAspectRatio:(int64_t)a10 playableAspectRatioPreservationMode:(int64_t)a11
{
  v12 = *&a7;
  v14 = *&a5;
  v17 = a3;
  v18 = a6;
  v19 = [v17 mediaType];
  if (v19 == 2)
  {
    v22 = *&a4->c;
    v27 = *&a4->a;
    v28 = v22;
    v29 = *&a4->tx;
    v23 = *&a8->var0.var3;
    v26[0] = *&a8->var0.var0;
    v26[1] = v23;
    v26[2] = *&a8->var1.var1;
    v21 = [(JFXInstructionGraphBuilder *)self _sourceNodeForStillMediaItem:v17 sourceTransform:&v27 transformAnimation:v18 transformAnimationContentMode:v12 presentationRange:v26];
    goto LABEL_5;
  }

  if (v19 == 1)
  {
    v20 = *&a4->c;
    v27 = *&a4->a;
    v28 = v20;
    v29 = *&a4->tx;
    v21 = [(JFXInstructionGraphBuilder *)self _sourceNodeForVideoMediaItem:v17 sourceTransform:&v27 compositionTrackID:v14 transformAnimation:v18 transformAnimationContentMode:v12];
LABEL_5:
    v24 = v21;
    goto LABEL_7;
  }

  v24 = 0;
LABEL_7:

  return v24;
}

- (id)sourceNodeForImageBuffer:(id)a3 sourceTransform:(CGAffineTransform *)a4
{
  v5 = MEMORY[0x277D41630];
  v6 = a3;
  v7 = [v5 alloc];
  v8 = *&a4->c;
  v11[0] = *&a4->a;
  v11[1] = v8;
  v11[2] = *&a4->tx;
  v9 = [v7 initWithPVImageBuffer:v6 transform:v11];

  return v9;
}

- (id)sourceNodeForGeneratorEffect:(id)a3 effectRange:(id *)a4
{
  v5 = [a3 renderEffect];
  v6 = *&a4->var0.var3;
  v9[0] = *&a4->var0.var0;
  v9[1] = v6;
  v9[2] = *&a4->var1.var1;
  [v5 setEffectRange:v9];
  v7 = [MEMORY[0x277D41628] newGeneratorNode:v5];

  return v7;
}

- (id)applyEffectStack:(id)a3 presentationRange:(id *)a4 toInput:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
  v10 = v8;
  if (v9)
  {
    v11 = v9;
    v12 = *v27;
    v10 = v8;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v27 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v26 + 1) + 8 * i);
        if (([v14 isNone] & 1) == 0)
        {
          v15 = [v14 renderEffect];

          if (v15)
          {
            v16 = [v14 renderEffect];
            if ((a4->var0.var2 & 1) != 0 && (a4->var1.var2 & 1) != 0 && !a4->var1.var3 && (a4->var1.var0 & 0x8000000000000000) == 0)
            {
              if (v14)
              {
                v17 = *&a4->var0.var3;
                v20 = *&a4->var0.var0;
                v21 = v17;
                v22 = *&a4->var1.var1;
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
              [v16 setEffectRange:&v20];
            }

            v18 = [MEMORY[0x277D41620] newEffectNodeToFilterInput:v10 effect:v16];

            v10 = v18;
          }
        }
      }

      v11 = [v7 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v11);
  }

  return v10;
}

- (id)applyEffectStack:(id)a3 toInput:(id)a4
{
  v4 = *(MEMORY[0x277CC08C8] + 16);
  v7[0] = *MEMORY[0x277CC08C8];
  v7[1] = v4;
  v7[2] = *(MEMORY[0x277CC08C8] + 32);
  v5 = [(JFXInstructionGraphBuilder *)self applyEffectStack:a3 presentationRange:v7 toInput:a4];

  return v5;
}

- (id)blendNodeForClipSourceNodes:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v3;
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

- (id)JFX_mediaTransformAnimationForPlayableElement:(id)a3 liveTransform:(PVTransformAnimationInfo *)a4
{
  v5 = a3;
  v6 = [v5 transformAnimation];
  v7 = [v6 animationData];
  v8 = [v7 count];

  if (v8)
  {
    if (!a4)
    {
      v9 = [v5 transformAnimation];
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v10 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v11 = [v10 BOOLForKey:@"noPanZoomAnchoring"];

  if (v11)
  {
    v12 = 0;
    goto LABEL_10;
  }

  if (a4)
  {
LABEL_7:
    v9 = [objc_alloc(MEMORY[0x277D416B0]) initWithLiveTransform:a4];
    goto LABEL_8;
  }

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  PVTransformAnimationInfoIdentity();
  memset(v14, 0, sizeof(v14));
  v15 = 0;
  v9 = [objc_alloc(MEMORY[0x277D416B0]) initWithAnimationInfo:v14];
LABEL_8:
  v12 = v9;
  if (v9)
  {
    [v9 setAspectRatio:{multiplierForAspectRatio(objc_msgSend(v5, "playableAspectRatio"))}];
  }

LABEL_10:

  return v12;
}

- (id)instructionGraphForPlayableElement:(id)a3 presentationTimeRange:(id *)a4 sourceTransform:(CGAffineTransform *)a5 compositionTrackID:(int)a6 liveTransform:(PVTransformAnimationInfo *)a7 excludingEffectType:(int)a8 customRendererProperties:(id)a9
{
  v76 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v66 = a9;
  [(JFXInstructionGraphBuilder *)self outputSize];
  v15 = v14;
  v17 = v16;
  [v13 playableMediaSizeWithTransform];
  v19 = v18;
  v21 = v20;
  v22 = [v13 playableMediaContentMode];
  v23 = multiplierForAspectRatio([v13 playableAspectRatio]);
  v24 = 0;
  v25 = 1.0;
  v63 = PVViewContentModeFromAspectRatioPreservationMode([v13 playableAspectRatioPreservationMode]);
  if (v63 && fabs(v23) >= 0.0000001)
  {
    v26 = sizeForAspectRatio([v13 playableAspectRatio]);
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
      [objc_opt_class() JFX_scaleForMediaSize:v22 mediaContentMode:14 clipAspectRatio:v19 outputSize:v21 outputContentMode:{v23, v15, v17}];
      v25 = v34;
      v24 = 1;
    }
  }

  v35 = [(JFXInstructionGraphBuilder *)self JFX_mediaTransformAnimationForPlayableElement:v13 liveTransform:a7];
  v36 = [v13 playableEffectsOfType:2];
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

  v41 = [v13 mediaItem];
  v42 = [v13 playableAspectRatio];
  v43 = [v13 playableAspectRatioPreservationMode];
  v44 = *&a5->c;
  v68 = *&a5->a;
  v69 = v44;
  v70 = *&a5->tx;
  v45 = *&a4->var0.var3;
  v67[0] = *&a4->var0.var0;
  v67[1] = v45;
  v67[2] = *&a4->var1.var1;
  v46 = [(JFXInstructionGraphBuilder *)self sourceNodeForMediaItem:v41 sourceTransform:&v68 compositionTrackID:a6 transformAnimation:v35 transformAnimationContentMode:14 presentationTimeRange:v67 mediaScale:v25 playableAspectRatio:v42 playableAspectRatioPreservationMode:v43];

  v47 = v46;
  if ([v13 shouldRenderVideoAsBlack])
  {
    v48 = [MEMORY[0x277D415F8] newEffectWithID:*MEMORY[0x277D41720]];
    v49 = [MEMORY[0x277D75348] blackColor];
    [v48 setInspectableProperty:v49 forKey:*MEMORY[0x277D41AF0]];

    v50 = *&a4->var0.var3;
    v68 = *&a4->var0.var0;
    v69 = v50;
    v70 = *&a4->var1.var1;
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

  v54 = [(JFXInstructionGraphBuilder *)self JFX_applyCustomRenderingPropertiesToInputNode:v53 customRendererProperties:v66 transformAnimation:v35 transformAnimationContentMode:14 mediaScale:v25];

  if (a8)
  {
    [v13 playableEffectStackExcludingType:?];
  }

  else
  {
    [v13 playableEffectStack];
  }
  v48 = ;
  v55 = *&a4->var0.var3;
  v68 = *&a4->var0.var0;
  v69 = v55;
  v70 = *&a4->var1.var1;
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

+ (double)JFX_scaleForMediaSize:(CGSize)a3 mediaContentMode:(int)a4 clipAspectRatio:(double)a5 outputSize:(CGSize)a6 outputContentMode:(int)a7
{
  v7 = 1.0;
  if (a4 != a7 && a4 && a7)
  {
    if (a4 <= 2)
    {
      if (a4 == 1)
      {
        if (a6.width <= a6.height)
        {
          v13 = a6.height / a3.height;
          if (a3.width * (a6.height / a3.height) < a6.width)
          {
            v13 = a6.width / a3.width;
          }
        }

        else
        {
          v13 = a6.width / a3.width;
          if (a3.height * (a6.width / a3.width) < a6.height)
          {
            v13 = a6.height / a3.height;
          }
        }

        a3.width = a3.width * v13;
        a3.height = a3.height * v13;
LABEL_27:
        v14 = a3.width / a5;
        if (v14 <= a3.height)
        {
          height = v14;
        }

        else
        {
          height = a3.height;
        }

LABEL_30:
        width = height * a5;
        goto LABEL_31;
      }

      if (a4 == 2)
      {
        if (a3.height * (a6.width / a3.width) <= a6.height)
        {
          v10 = a6.width / a3.width;
        }

        else
        {
          v10 = a6.height / a3.height;
        }

        v11 = a3.width * v10;
        v12 = a3.height * v10;
        if (v11 <= a3.height * v10)
        {
          height = a3.height * v10;
          if (v12 * a5 < v11)
          {
            height = v11 / a5;
          }
        }

        else
        {
          height = v11 / a5;
          if (v11 / a5 < v12)
          {
            height = v12;
          }
        }

        goto LABEL_30;
      }
    }

    else
    {
      switch(a4)
      {
        case 3:
          height = a6.height;
          width = a6.width;
          goto LABEL_31;
        case 13:
          width = a6.width;
          height = a6.width / a5;
          goto LABEL_31;
        case 14:
          width = a6.height * a5;
          height = a6.height;
          goto LABEL_31;
      }
    }

    height = 1.0;
    width = a5;
    if ((a4 - 4) < 9)
    {
LABEL_31:
      if (a7 > 2)
      {
        switch(a7)
        {
          case 3:
            a5 = a6.width;
            break;
          case 13:
            return a6.width / a5 / height;
          case 14:
            a5 = a6.height * a5;
            break;
        }

        return a5 / width;
      }

      if (a7 == 1)
      {
        if (a6.width <= a6.height)
        {
          v15 = a6.height;
          if (a6.height * a5 < a6.width)
          {
            v15 = a6.width / a5;
          }
        }

        else
        {
          v15 = a6.width / a5;
          if (a6.width / a5 < a6.height)
          {
            v15 = a6.height;
          }
        }
      }

      else
      {
        if (a7 != 2)
        {
          return a5 / width;
        }

        v15 = a6.width / a5;
        if (a6.width / a5 > a6.height)
        {
          v15 = a6.height;
        }
      }

      a5 = v15 * a5;
      return a5 / width;
    }

    goto LABEL_27;
  }

  return v7;
}

+ (id)JFX_transformNode:(id)a3 scale:(double)a4
{
  v5 = a3;
  v6 = v5;
  if (fabs(a4 + -1.0) >= 0.0001)
  {
    memset(&v10, 0, sizeof(v10));
    CGAffineTransformMakeScale(&v10, a4, a4);
    v9 = v10;
    v7 = [MEMORY[0x277D41658] newTransformNode:v6 transform:&v9];
    [v7 setIsDebugDrawingEnabled:JFX_isDrawInstructionGraphNodesEnabled()];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

+ (id)JFX_maskNode:(id)a3 maskRect:(CGRect)a4 basisSize:(CGSize)a5
{
  v5 = [MEMORY[0x277D41640] newMaskNode:a3 normalizedMaskRect:{a4.origin.x / a5.width, a4.origin.y / a5.height, a4.size.width / a5.width, a4.size.height / a5.height}];
  [v5 setIsDebugDrawingEnabled:JFX_isDrawInstructionGraphNodesEnabled()];

  return v5;
}

- (id)JFX_applyCustomRenderingPropertiesToInputNode:(id)a3 customRendererProperties:(id)a4 transformAnimation:(id)a5 transformAnimationContentMode:(int)a6 mediaScale:(double)a7
{
  v8 = *&a6;
  v36[2] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = v12;
  v16 = v15;
  if (v13)
  {
    v17 = [v13 objectForKeyedSubscript:@"JFXCustomRenderingPropertiesKey_Animoji"];

    v16 = v15;
    if (v17)
    {
      v18 = [v13 objectForKeyedSubscript:@"JFXCustomRenderingPropertiesKey_Animoji"];
      v19 = [v18 metadata];
      v20 = [v19 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_RenderSize"];
      [v20 CGSizeValue];
      v22 = v21;
      v24 = v23;

      v25 = MEMORY[0x277D41648];
      v26 = [v18 renderingDelegate];
      v27 = [v18 metadata];
      v28 = [v25 newSourceCompositeNodeWithDelegate:v26 inputs:0 userContext:v27 outputSize:1111970369 outputFormat:v22, v24];

      v34 = 0u;
      v35 = 0u;
      v33 = 0u;
      [(JFXInstructionGraphBuilder *)self JFX_calculateCompositeNodeTransformForCropWithCompositeNodeOutputSize:v22 mediaScale:v24, a7];
      v32[0] = v33;
      v32[1] = v34;
      v32[2] = v35;
      [v28 setTransform:v32];
      v29 = [MEMORY[0x277D415E0] sRGBColorSpace];
      [v28 setColorSpace:v29];

      [v28 setTransformAnimationContentMode:v8];
      [v28 setTransformAnimation:v14];
      v36[0] = v15;
      v36[1] = v28;
      v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
      v16 = [(JFXInstructionGraphBuilder *)self blendNodeForClipSourceNodes:v30];
    }
  }

  return v16;
}

- (CGAffineTransform)JFX_calculateCompositeNodeTransformForCropWithCompositeNodeOutputSize:(SEL)a3 mediaScale:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
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

- (id)_sourceNodeForVideoMediaItem:(id)a3 sourceTransform:(CGAffineTransform *)a4 compositionTrackID:(int)a5 transformAnimation:(id)a6 transformAnimationContentMode:(int)a7
{
  v7 = *&a7;
  v8 = *&a5;
  v11 = MEMORY[0x277D41650];
  v12 = a6;
  v13 = a3;
  v14 = [v13 playableMediaContentMode];
  [v13 naturalSize];
  v16 = v15;
  v18 = v17;

  v19 = [v11 newSourceTrackNode:v8 animation:v12 fillMode:v14 clipNaturalSize:{v16, v18}];
  v20 = *&a4->c;
  v22[0] = *&a4->a;
  v22[1] = v20;
  v22[2] = *&a4->tx;
  [v19 setTransform:v22];
  [v19 setTransformAnimationContentMode:v7];

  return v19;
}

- (id)_sourceNodeForStillMediaItem:(id)a3 sourceTransform:(CGAffineTransform *)a4 transformAnimation:(id)a5 transformAnimationContentMode:(int)a6 presentationRange:(id *)a7
{
  v7 = *&a6;
  v11 = a3;
  v12 = a5;
  v13 = [v11 assetURL];
  if ([v11 mediaState] == 3)
  {
    v14 = [v13 URLByAppendingPathComponent:@"trash"];

    v13 = v14;
  }

  v15 = [objc_alloc(MEMORY[0x277D41638]) initWithURL:v13 animation:v12 isExporting:self->_renderingIntent == 1 imageDelegate:v11 renderingIntent:self->_renderingIntent fillMode:{objc_msgSend(v11, "playableMediaContentMode")}];

  v16 = *&a4->c;
  v18[0] = *&a4->a;
  v18[1] = v16;
  v18[2] = *&a4->tx;
  [v15 setTransform:v18];
  [v15 setTransformAnimationContentMode:v7];

  return v15;
}

- (id)_buildTestXFormAnimation:(id *)a3 baseTransform:(CGAffineTransform *)a4 clipNaturalSize:(CGSize)a5
{
  height = a5.height;
  width = a5.width;
  v9 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v36 = *&a3->var0.var0;
  var3 = a3->var0.var3;
  tx = a4->tx;
  ty = a4->ty;
  v12 = sqrt(a4->d * a4->d + a4->a * a4->a);
  v13 = JFXLog_DebugComposition();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [JFXInstructionGraphBuilder _buildTestXFormAnimation:a4 baseTransform:v13 clipNaturalSize:?];
  }

  *&range.start.value = v36;
  range.start.epoch = var3;
  *&range.duration.value = tx;
  *&range.duration.timescale = ty;
  *&range.duration.epoch = v12;
  v35 = 0;
  v14 = [MEMORY[0x277CCAE60] valueWithPVTransformAnimationInfo:&range];
  [v9 addObject:v14];
  var0 = a3->var1.var0;
  v16 = a3->var0.var0;
  v17 = *&a3->var0.var1;
  memset(&v32, 0, sizeof(v32));
  v18 = *&a3->var0.var0;
  v19 = *&a3->var0.var3;
  v33 = v17;
  *&range.start.value = v18;
  v20 = *&a3->var1.var1;
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
      v25 = v21 - a3->var0.var0;
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