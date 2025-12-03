@interface JFXEffectsPreviewGenerationRequest
+ (CGRect)JT_centerRect:(CGRect)result aspectRatio:(double)ratio;
+ (PVTransformAnimationInfo)centerAnimationInfoForOutputSize:(SEL)size imageRect:(CGSize)rect;
- (CGAffineTransform)JFX_scaleToFitSize:(SEL)size withTransform:(CGSize)transform;
- (CGAffineTransform)_scaleAndTransformToFitSize:(SEL)size;
- (CGAffineTransform)sourceTransform;
- (CGAffineTransform)userSourceTransform;
- (CGSize)frameSize;
- (CGSize)outputSize;
- (JFXEffectsPreviewGenerationRequest)initWithInput:(id)input effectStack:(id)stack outputSize:(CGSize)size frameSize:(CGSize)frameSize renderTime:(id *)time;
- (JFXEffectsPreviewGenerationRequest)initWithInputGenerator:(id)generator effectStack:(id)stack outputSize:(CGSize)size frameSize:(CGSize)frameSize renderTime:(id *)time;
- (PVTransformAnimationInfo)animationTransformInfo;
- (id)generatorJobWithGraphBuilder:(id)builder;
- (id)placeholderGeneratorBackground;
- (id)sourceIGNodeUsingGraphBuilder:(id)builder includeAnimoji:(BOOL)animoji;
- (void)centerAnimationInfo;
- (void)setAnimationTransformInfo:(PVTransformAnimationInfo *)info;
- (void)setTransformAnimationInfo:(PVTransformAnimationInfo *)info scaleToOutput:(BOOL)output;
- (void)setUserSourceTransform:(CGAffineTransform *)transform;
@end

@implementation JFXEffectsPreviewGenerationRequest

+ (PVTransformAnimationInfo)centerAnimationInfoForOutputSize:(SEL)size imageRect:(CGSize)rect
{
  [objc_opt_class() JT_centerRect:a5.origin.x aspectRatio:{a5.origin.y, a5.size.width, a5.size.height, rect.width / rect.height}];
  v7 = v6;
  v9 = v8;
  *&retstr->time.value = 0u;
  *&retstr->time.epoch = 0u;
  *&retstr->translation.y = 0u;
  retstr->rotation = 0.0;
  result = PVTransformAnimationInfoIdentity();
  retstr->translation.x = -v7;
  retstr->translation.y = -v9;
  return result;
}

- (void)centerAnimationInfo
{
  image = [(JFXEffectsPreviewGenerationRequest *)self image];
  [image size];
  v5 = v4;
  v7 = v6;
  [(JFXEffectsPreviewGenerationRequest *)self userSourceTransform];
  CGSizeApplyAffineTransformWithPositiveResult(&v11, v5, v7);

  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  v8 = objc_opt_class();
  [(JFXEffectsPreviewGenerationRequest *)self outputSize];
  if (v8)
  {
    [v8 centerAnimationInfoForOutputSize:? imageRect:?];
  }

  else
  {
    v14 = 0;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  v9[0] = v11;
  v9[1] = v12;
  v9[2] = v13;
  v10 = v14;
  [(JFXEffectsPreviewGenerationRequest *)self setAnimationTransformInfo:v9];
}

+ (CGRect)JT_centerRect:(CGRect)result aspectRatio:(double)ratio
{
  height = result.size.height;
  if (result.size.width / result.size.height >= ratio)
  {
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = result.size.height * ratio;
    v5 = (result.size.width - v7) * 0.5;
    result.size.width = v7;
  }

  else
  {
    v5 = *MEMORY[0x277CBF3A0];
    result.size.height = result.size.width / ratio;
    v6 = (height - result.size.width / ratio) * 0.5;
  }

  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (JFXEffectsPreviewGenerationRequest)initWithInput:(id)input effectStack:(id)stack outputSize:(CGSize)size frameSize:(CGSize)frameSize renderTime:(id *)time
{
  height = frameSize.height;
  width = frameSize.width;
  v10 = size.height;
  v11 = size.width;
  inputCopy = input;
  stackCopy = stack;
  v30.receiver = self;
  v30.super_class = JFXEffectsPreviewGenerationRequest;
  v17 = [(JFXEffectsPreviewGenerationRequest *)&v30 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_image, input);
    generatorEffect = v18->_generatorEffect;
    v18->_generatorEffect = 0;

    v18->_outputSize.width = v11;
    v18->_outputSize.height = v10;
    v18->_frameSize.width = width;
    v18->_frameSize.height = height;
    objc_storeStrong(&v18->_effectStack, stack);
    pickerPreviewEffectList = v18->_pickerPreviewEffectList;
    v18->_pickerPreviewEffectList = 0;

    v21 = *&time->var0;
    v18->_renderTime.epoch = time->var3;
    *&v18->_renderTime.value = v21;
    PVTransformAnimationInfoIdentity();
    *&v18->_animationTransformInfo.time.value = v26;
    *&v18->_animationTransformInfo.time.epoch = v27;
    *&v18->_animationTransformInfo.translation.y = v28;
    v18->_animationTransformInfo.rotation = v29;
    *&v18->_highQuality = 256;
    v18->_childCode = 0;
    *&v18->_priority = 0xFFFFFFFF00000001;
    customRenderingProperties = v18->_customRenderingProperties;
    v18->_customRenderingProperties = 0;

    v23 = MEMORY[0x277CBF2C0];
    v24 = *(MEMORY[0x277CBF2C0] + 16);
    *&v18->_userSourceTransform.a = *MEMORY[0x277CBF2C0];
    *&v18->_userSourceTransform.c = v24;
    *&v18->_userSourceTransform.tx = *(v23 + 32);
  }

  return v18;
}

- (JFXEffectsPreviewGenerationRequest)initWithInputGenerator:(id)generator effectStack:(id)stack outputSize:(CGSize)size frameSize:(CGSize)frameSize renderTime:(id *)time
{
  height = frameSize.height;
  width = frameSize.width;
  v10 = size.height;
  v11 = size.width;
  generatorCopy = generator;
  stackCopy = stack;
  v30.receiver = self;
  v30.super_class = JFXEffectsPreviewGenerationRequest;
  v17 = [(JFXEffectsPreviewGenerationRequest *)&v30 init];
  v18 = v17;
  if (v17)
  {
    image = v17->_image;
    v17->_image = 0;

    objc_storeStrong(&v18->_generatorEffect, generator);
    v18->_outputSize.width = v11;
    v18->_outputSize.height = v10;
    v18->_frameSize.width = width;
    v18->_frameSize.height = height;
    objc_storeStrong(&v18->_effectStack, stack);
    pickerPreviewEffectList = v18->_pickerPreviewEffectList;
    v18->_pickerPreviewEffectList = 0;

    v21 = *&time->var0;
    v18->_renderTime.epoch = time->var3;
    *&v18->_renderTime.value = v21;
    PVTransformAnimationInfoIdentity();
    *&v18->_animationTransformInfo.time.value = v26;
    *&v18->_animationTransformInfo.time.epoch = v27;
    *&v18->_animationTransformInfo.translation.y = v28;
    v18->_animationTransformInfo.rotation = v29;
    *&v18->_highQuality = 256;
    v18->_childCode = 0;
    *&v18->_priority = 0xFFFFFFFF00000001;
    customRenderingProperties = v18->_customRenderingProperties;
    v18->_customRenderingProperties = 0;

    v23 = MEMORY[0x277CBF2C0];
    v24 = *(MEMORY[0x277CBF2C0] + 16);
    *&v18->_userSourceTransform.a = *MEMORY[0x277CBF2C0];
    *&v18->_userSourceTransform.c = v24;
    *&v18->_userSourceTransform.tx = *(v23 + 32);
  }

  return v18;
}

- (id)placeholderGeneratorBackground
{
  if (placeholderGeneratorBackground_onceToken != -1)
  {
    [JFXEffectsPreviewGenerationRequest placeholderGeneratorBackground];
  }

  v3 = placeholderGeneratorBackground_sTempGeneratorInputImage;

  return v3;
}

void __68__JFXEffectsPreviewGenerationRequest_placeholderGeneratorBackground__block_invoke()
{
  v6.width = 1.0;
  v6.height = 1.0;
  UIGraphicsBeginImageContextWithOptions(v6, 0, 0.0);
  CurrentContext = UIGraphicsGetCurrentContext();
  v1 = [MEMORY[0x277D75348] clearColor];
  [v1 setFill];

  v7.origin.x = 0.0;
  v7.origin.y = 0.0;
  v7.size.width = 1.0;
  v7.size.height = 1.0;
  CGContextFillRect(CurrentContext, v7);
  v4 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v2 = [MEMORY[0x277D41618] imageWithUIImage:v4];
  v3 = placeholderGeneratorBackground_sTempGeneratorInputImage;
  placeholderGeneratorBackground_sTempGeneratorInputImage = v2;
}

- (CGAffineTransform)sourceTransform
{
  v5 = MEMORY[0x277CBF2C0];
  v6 = *(MEMORY[0x277CBF2C0] + 16);
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v6;
  *&retstr->tx = *(v5 + 32);
  generatorEffect = [(JFXEffectsPreviewGenerationRequest *)self generatorEffect];

  if (generatorEffect)
  {
    generatorEffect2 = [(JFXEffectsPreviewGenerationRequest *)self generatorEffect];
    renderEffect = [generatorEffect2 renderEffect];
    effectType = [renderEffect effectType];
    v11 = [effectType isEqual:*MEMORY[0x277D419E0]];

    if ((v11 & 1) == 0)
    {
      placeholderGeneratorBackground = [(JFXEffectsPreviewGenerationRequest *)self placeholderGeneratorBackground];
      [placeholderGeneratorBackground size];
      v15 = v14;
      v17 = v16;
      [(JFXEffectsPreviewGenerationRequest *)self userSourceTransform];
      [(JFXEffectsPreviewGenerationRequest *)self JFX_scaleToFitSize:v24 withTransform:v15, v17];
    }
  }

  else
  {
    image = [(JFXEffectsPreviewGenerationRequest *)self image];

    if (image)
    {
      image2 = [(JFXEffectsPreviewGenerationRequest *)self image];
      [image2 size];
      v21 = v20;
      v23 = v22;

      [(JFXEffectsPreviewGenerationRequest *)self userSourceTransform];
      return [(JFXEffectsPreviewGenerationRequest *)self JFX_scaleToFitSize:v24 withTransform:v21, v23];
    }
  }

  return result;
}

- (id)sourceIGNodeUsingGraphBuilder:(id)builder includeAnimoji:(BOOL)animoji
{
  animojiCopy = animoji;
  v67[1] = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  generatorEffect = [(JFXEffectsPreviewGenerationRequest *)self generatorEffect];

  if (generatorEffect)
  {
    generatorEffect2 = [(JFXEffectsPreviewGenerationRequest *)self generatorEffect];
    renderEffect = [generatorEffect2 renderEffect];
    effectType = [renderEffect effectType];
    v11 = [effectType isEqual:*MEMORY[0x277D419E0]];

    if (v11)
    {
      generatorEffect3 = [(JFXEffectsPreviewGenerationRequest *)self generatorEffect];
      v62 = *kDefaultEffectPreviewAnimationRange;
      v63 = *&kDefaultEffectPreviewAnimationRange[16];
      v64 = *&kDefaultEffectPreviewAnimationRange[32];
      v13 = [builderCopy sourceNodeForGeneratorEffect:generatorEffect3 effectRange:&v62];
    }

    else
    {
      v63 = 0u;
      v64 = 0u;
      v62 = 0u;
      [(JFXEffectsPreviewGenerationRequest *)self sourceTransform];
      placeholderGeneratorBackground = [(JFXEffectsPreviewGenerationRequest *)self placeholderGeneratorBackground];
      v59 = v62;
      v60 = v63;
      v61 = v64;
      v46 = [builderCopy sourceNodeForImageBuffer:placeholderGeneratorBackground sourceTransform:&v59];

      generatorEffect4 = [(JFXEffectsPreviewGenerationRequest *)self generatorEffect];
      v67[0] = generatorEffect4;
      v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:1];
      v59 = *kDefaultEffectPreviewAnimationRange;
      v60 = *&kDefaultEffectPreviewAnimationRange[16];
      v61 = *&kDefaultEffectPreviewAnimationRange[32];
      v13 = [builderCopy applyEffectStack:v48 presentationRange:&v59 toInput:v46];
    }
  }

  else
  {
    image = [(JFXEffectsPreviewGenerationRequest *)self image];

    if (image)
    {
      v63 = 0uLL;
      v64 = 0uLL;
      v62 = 0uLL;
      [(JFXEffectsPreviewGenerationRequest *)self sourceTransform];
      v15 = objc_alloc(MEMORY[0x277D41630]);
      image2 = [(JFXEffectsPreviewGenerationRequest *)self image];
      v59 = v62;
      v60 = v63;
      v61 = v64;
      v17 = [v15 initWithPVImageBuffer:image2 transform:&v59];

      customRenderingProperties = [(JFXEffectsPreviewGenerationRequest *)self customRenderingProperties];
      v19 = [customRenderingProperties objectForKeyedSubscript:@"JFXCustomRenderingPropertiesKey_Animoji"];

      if (!animojiCopy || ([v19 metadata], v20 = objc_claimAutoreleasedReturnValue(), v21 = v20 == 0, v20, v21))
      {
        v13 = v17;
      }

      else
      {
        *&v59 = 0;
        *(&v59 + 1) = &v59;
        *&v60 = 0x3032000000;
        *(&v60 + 1) = __Block_byref_object_copy__25;
        *&v61 = __Block_byref_object_dispose__25;
        *(&v61 + 1) = 0;
        effectStack = [(JFXEffectsPreviewGenerationRequest *)self effectStack];
        v58[0] = MEMORY[0x277D85DD0];
        v58[1] = 3221225472;
        v58[2] = __83__JFXEffectsPreviewGenerationRequest_sourceIGNodeUsingGraphBuilder_includeAnimoji___block_invoke;
        v58[3] = &unk_278D7D140;
        v58[4] = &v59;
        [effectStack enumerateObjectsUsingBlock:v58];

        if (*(*(&v59 + 1) + 40))
        {
          metadata = [v19 metadata];
          v24 = [metadata mutableCopy];

          [v24 setObject:*(*(&v59 + 1) + 40) forKeyedSubscript:@"JFXAnimojiRendererMetadata_Effect"];
          v51 = [v24 objectForKeyedSubscript:@"JFXAnimojiRendererMetadata_RenderSize"];
          [v51 CGSizeValue];
          v27 = v26;
          v28 = v25;
          if (v26 == *MEMORY[0x277CBF3A8] && v25 == *(MEMORY[0x277CBF3A8] + 8))
          {
            image3 = [(JFXEffectsPreviewGenerationRequest *)self image];
            [image3 size];
            v27 = v30;
            v28 = v31;
          }

          v32 = MEMORY[0x277D41648];
          renderingDelegate = [v19 renderingDelegate];
          v34 = [v32 newSourceCompositeNodeWithDelegate:renderingDelegate inputs:0 userContext:v24 outputSize:1111970369 outputFormat:v27, v28];

          sRGBColorSpace = [MEMORY[0x277D415E0] sRGBColorSpace];
          [v34 setColorSpace:sRGBColorSpace];

          v36 = *(MEMORY[0x277CBF2C0] + 16);
          v52 = *MEMORY[0x277CBF2C0];
          v53 = v36;
          v54 = *(MEMORY[0x277CBF2C0] + 32);
          [(JFXEffectsPreviewGenerationRequest *)self JFX_scaleToFitSize:&v52 withTransform:v27, v28];
          v52 = v55;
          v53 = v56;
          v54 = v57;
          [v34 setTransform:&v52];
          v37 = [MEMORY[0x277D415F8] newEffectWithID:*MEMORY[0x277D416E0]];
          v38 = objc_alloc(MEMORY[0x277D41698]);
          LODWORD(v39) = 1.0;
          v40 = [v38 initWithOpacity:0 mode:v39];
          v41 = objc_alloc(MEMORY[0x277D41698]);
          LODWORD(v42) = 1.0;
          v43 = [v41 initWithOpacity:0 mode:v42];
          v65[0] = &unk_28556D758;
          v65[1] = &unk_28556D770;
          v66[0] = v40;
          v66[1] = v43;
          v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
          [v37 setInspectableProperty:v44 forKey:*MEMORY[0x277D41A80]];
          v13 = objc_opt_new();
          [v13 setEffect:v37];
          [v13 setInputNode:v17 forInputID:0];
          [v13 setInputNode:v34 forInputID:1];
        }

        else
        {
          v13 = v17;
        }

        _Block_object_dispose(&v59, 8);
      }
    }

    else
    {
      v63 = 0uLL;
      v64 = 0uLL;
      v62 = 0uLL;
      [(JFXEffectsPreviewGenerationRequest *)self sourceTransform];
      placeholderGeneratorBackground2 = [(JFXEffectsPreviewGenerationRequest *)self placeholderGeneratorBackground];
      v59 = v62;
      v60 = v63;
      v61 = v64;
      v13 = [builderCopy sourceNodeForImageBuffer:placeholderGeneratorBackground2 sourceTransform:&v59];
    }
  }

  return v13;
}

void __83__JFXEffectsPreviewGenerationRequest_sourceIGNodeUsingGraphBuilder_includeAnimoji___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 type] == 7)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (id)generatorJobWithGraphBuilder:(id)builder
{
  v44 = *MEMORY[0x277D85DE8];
  builderCopy = builder;
  v27 = [JFXEffectsPreviewGenerationRequest sourceIGNodeUsingGraphBuilder:"sourceIGNodeUsingGraphBuilder:includeAnimoji:" includeAnimoji:?];
  customRenderingProperties = [(JFXEffectsPreviewGenerationRequest *)self customRenderingProperties];
  v25 = [customRenderingProperties objectForKeyedSubscript:@"JFXCustomRenderingPropertiesKey_Animoji"];

  v29 = [builderCopy applyEffectStack:self->_effectStack toInput:v27];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  pickerPreviewEffectList = [(JFXEffectsPreviewGenerationRequest *)self pickerPreviewEffectList];
  if (pickerPreviewEffectList && (-[JFXEffectsPreviewGenerationRequest pickerPreviewEffectList](self, "pickerPreviewEffectList"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 count], v7, pickerPreviewEffectList, v8))
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    pickerPreviewEffectList2 = [(JFXEffectsPreviewGenerationRequest *)self pickerPreviewEffectList];
    v10 = [pickerPreviewEffectList2 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v10)
    {
      v11 = *v39;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v39 != v11)
          {
            objc_enumerationMutation(pickerPreviewEffectList2);
          }

          v42 = *(*(&v38 + 1) + 8 * i);
          v13 = v42;
          v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v42 count:{1, v25}];
          v15 = [builderCopy applyEffectStack:v14 toInput:v29];

          [v4 addObject:v15];
          [v5 addObject:v13];
        }

        v10 = [pickerPreviewEffectList2 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v10);
    }
  }

  else if (v29)
  {
    effectStack = [(JFXEffectsPreviewGenerationRequest *)self effectStack];
    if (effectStack && (-[JFXEffectsPreviewGenerationRequest effectStack](self, "effectStack"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 count], v17, effectStack, v18))
    {
      effectStack2 = [(JFXEffectsPreviewGenerationRequest *)self effectStack];
      lastObject = [effectStack2 lastObject];
    }

    else
    {
      effectStack2 = +[JFXEffectFactory sharedInstance];
      lastObject = [effectStack2 createEffectForType:1 fromID:*MEMORY[0x277D419C8] withProperties:0];
    }

    v21 = lastObject;

    [v4 addObject:v29];
    [v5 addObject:v21];
  }

  if ([v25 animojiTapPoint])
  {
    v32 = 0;
    v33 = &v32;
    v34 = 0x3032000000;
    v35 = __Block_byref_object_copy__25;
    v36 = __Block_byref_object_dispose__25;
    v37 = 0;
    effectStack3 = [(JFXEffectsPreviewGenerationRequest *)self effectStack];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __67__JFXEffectsPreviewGenerationRequest_generatorJobWithGraphBuilder___block_invoke;
    v31[3] = &unk_278D7D140;
    v31[4] = &v32;
    [effectStack3 enumerateObjectsUsingBlock:v31];

    if (v33[5])
    {
      [v4 addObject:v27];
      [v5 addObject:v33[5]];
    }

    _Block_object_dispose(&v32, 8);
  }

  v23 = [[JFXEffectsPreviewGeneratorJob alloc] initWithRenderOutputs:v4 callbackKeys:v5];

  return v23;
}

void __67__JFXEffectsPreviewGenerationRequest_generatorJobWithGraphBuilder___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  if ([v7 type] == 7)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)setTransformAnimationInfo:(PVTransformAnimationInfo *)info scaleToOutput:(BOOL)output
{
  outputCopy = output;
  v6 = *&info->time.epoch;
  v7[0] = *&info->time.value;
  v7[1] = v6;
  v7[2] = *&info->translation.y;
  rotation = info->rotation;
  [(JFXEffectsPreviewGenerationRequest *)self setAnimationTransformInfo:v7];
  [(JFXEffectsPreviewGenerationRequest *)self setScaleAnimationTransformInfoToOutputSize:outputCopy];
}

- (CGAffineTransform)_scaleAndTransformToFitSize:(SEL)size
{
  height = a4.height;
  width = a4.width;
  *&retstr->c = 0u;
  *&retstr->tx = 0u;
  *&retstr->a = 0u;
  [(JFXEffectsPreviewGenerationRequest *)self userSourceTransform];
  return [(JFXEffectsPreviewGenerationRequest *)self JFX_scaleToFitSize:&v8 withTransform:width, height];
}

- (CGAffineTransform)JFX_scaleToFitSize:(SEL)size withTransform:(CGSize)transform
{
  v8 = MEMORY[0x277CBF2C0];
  v23 = *(MEMORY[0x277CBF2C0] + 16);
  v24 = *MEMORY[0x277CBF2C0];
  *&retstr->a = *MEMORY[0x277CBF2C0];
  *&retstr->c = v23;
  v22 = *(v8 + 32);
  *&retstr->tx = v22;
  v9 = transform.height * a5->c + a5->a * transform.width;
  v10 = transform.height * a5->d + a5->b * transform.width;
  [(JFXEffectsPreviewGenerationRequest *)self outputSize];
  v12 = v11 / fabs(v10);
  [(JFXEffectsPreviewGenerationRequest *)self outputSize];
  v14 = v13 / fabs(v9);
  if (v12 >= v14)
  {
    v14 = v12;
  }

  v15 = v14;
  memset(&v28, 0, sizeof(v28));
  CGAffineTransformMakeScale(&v28, v15, v15);
  *&t1.a = v24;
  *&t1.c = v23;
  *&t1.tx = v22;
  v16 = *&a5->c;
  *&t2.a = *&a5->a;
  *&t2.c = v16;
  *&t2.tx = *&a5->tx;
  CGAffineTransformConcat(retstr, &t1, &t2);
  [(JFXEffectsPreviewGenerationRequest *)self animationTransformInfo];
  CGAffineTransformFromPVAnimInfo();
  v17 = *&retstr->c;
  *&v25.a = *&retstr->a;
  *&v25.c = v17;
  *&v25.tx = *&retstr->tx;
  CGAffineTransformConcat(&t1, &v25, &t2);
  v18 = *&t1.c;
  *&retstr->a = *&t1.a;
  *&retstr->c = v18;
  *&retstr->tx = *&t1.tx;
  result = [(JFXEffectsPreviewGenerationRequest *)self scaleAnimationTransformInfoToOutputSize];
  if (result)
  {
    v20 = *&retstr->c;
    *&t2.a = *&retstr->a;
    *&t2.c = v20;
    *&t2.tx = *&retstr->tx;
    v25 = v28;
    result = CGAffineTransformConcat(&t1, &t2, &v25);
    v21 = *&t1.c;
    *&retstr->a = *&t1.a;
    *&retstr->c = v21;
    *&retstr->tx = *&t1.tx;
  }

  return result;
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

- (CGAffineTransform)userSourceTransform
{
  v3 = *&self[2].ty;
  *&retstr->a = *&self[2].d;
  *&retstr->c = v3;
  *&retstr->tx = *&self[3].b;
  return self;
}

- (void)setUserSourceTransform:(CGAffineTransform *)transform
{
  v3 = *&transform->a;
  v4 = *&transform->c;
  *&self->_userSourceTransform.tx = *&transform->tx;
  *&self->_userSourceTransform.c = v4;
  *&self->_userSourceTransform.a = v3;
}

- (PVTransformAnimationInfo)animationTransformInfo
{
  v3 = *&self[3].time.epoch;
  *&retstr->time.value = *&self[3].time.value;
  *&retstr->time.epoch = v3;
  *&retstr->translation.y = *&self[3].translation.y;
  retstr->rotation = self[3].rotation;
  return self;
}

- (void)setAnimationTransformInfo:(PVTransformAnimationInfo *)info
{
  v3 = *&info->time.value;
  v4 = *&info->time.epoch;
  v5 = *&info->translation.y;
  self->_animationTransformInfo.rotation = info->rotation;
  *&self->_animationTransformInfo.translation.y = v5;
  *&self->_animationTransformInfo.time.epoch = v4;
  *&self->_animationTransformInfo.time.value = v3;
}

@end