@interface JFXCapturePreviewRequestBuilder
- (JFXCapturePreviewRequestBuilder)initWithPreviewProperties:(id)properties outputColorSpace:(id)space;
- (PVTransformAnimationInfo)requestTransformAnimation;
- (id)JFX_getEffectsOfType:(id)type ofType:(int)ofType;
- (id)JFX_visibleEffects:(id)effects;
- (id)createPVRenderRequestUsingAnimojiRenderer:(id)renderer metadataValidator:(id)validator additionalTransform:(CGAffineTransform *)transform effectStack:(id)stack animojiTapPoint:(BOOL)point animojiUsesInterfaceOrientation:(BOOL)orientation requestHandler:(id *)handler;
- (void)setRequestTransformAnimation:(PVTransformAnimationInfo *)animation;
@end

@implementation JFXCapturePreviewRequestBuilder

- (JFXCapturePreviewRequestBuilder)initWithPreviewProperties:(id)properties outputColorSpace:(id)space
{
  propertiesCopy = properties;
  spaceCopy = space;
  v17.receiver = self;
  v17.super_class = JFXCapturePreviewRequestBuilder;
  v8 = [(JFXCapturePreviewRequestBuilder *)&v17 init];
  v9 = *(v8 + 3);
  *(v8 + 3) = propertiesCopy;
  v10 = propertiesCopy;

  PVTransformAnimationInfoIdentity();
  *(v8 + 40) = v13;
  *(v8 + 56) = v14;
  *(v8 + 72) = v15;
  *(v8 + 11) = v16;
  *(v8 + 8) = 0;
  v11 = *(v8 + 4);
  *(v8 + 4) = spaceCopy;

  return v8;
}

- (id)createPVRenderRequestUsingAnimojiRenderer:(id)renderer metadataValidator:(id)validator additionalTransform:(CGAffineTransform *)transform effectStack:(id)stack animojiTapPoint:(BOOL)point animojiUsesInterfaceOrientation:(BOOL)orientation requestHandler:(id *)handler
{
  orientationCopy = orientation;
  pointCopy = point;
  v167[4] = *MEMORY[0x277D85DE8];
  rendererCopy = renderer;
  validatorCopy = validator;
  stackCopy = stack;
  previewProperties = [(JFXCapturePreviewRequestBuilder *)self previewProperties];
  cameraFrameSet = [previewProperties cameraFrameSet];

  if (!cameraFrameSet || ((v131 = transform, [cameraFrameSet metadataDict], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "objectForKey:", @"PVFrameSetMetadataOriginalBufferSizeKey"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "CGSizeValue"), v23 = v22, v25 = v24, v21, v20, v23 == *MEMORY[0x277CBF3A8]) ? (v26 = v25 == *(MEMORY[0x277CBF3A8] + 8)) : (v26 = 0), v26))
  {
    v51 = 0;
    goto LABEL_62;
  }

  v128 = validatorCopy;
  colorImageBuffer = [cameraFrameSet colorImageBuffer];
  metadataDict = [cameraFrameSet metadataDict];
  v28 = [metadataDict objectForKey:@"PVFrameSetMetadataARMetadataKey"];

  faceAnchor = [v28 faceAnchor];
  v133 = v28;
  arFrame = [v28 arFrame];
  previewProperties2 = [(JFXCapturePreviewRequestBuilder *)self previewProperties];
  [previewProperties2 renderOutputSize];
  v31 = v30;
  v33 = v32;

  v34 = [cameraFrameSet metadataObjectForKey:*MEMORY[0x277D41A00]];
  selfCopy = self;
  captureVideoOrientation = [v34 captureVideoOrientation];
  v120 = v34;
  interfaceOrientation = [v34 interfaceOrientation];
  v121 = cameraFrameSet;
  v38 = [cameraFrameSet metadataObjectForKey:@"PVFrameSetMetadataDeviceOrientationkey"];
  integerValue = [v38 integerValue];

  v129 = objc_opt_new();
  v134 = selfCopy;
  v40 = [(JFXCapturePreviewRequestBuilder *)selfCopy JFX_getEffectsOfType:stackCopy ofType:7];
  firstObject = [v40 firstObject];

  v119 = firstObject;
  if (rendererCopy && firstObject)
  {
    if (arFrame)
    {
      if (orientationCopy)
      {
        v42 = interfaceOrientation;
      }

      else
      {
        v42 = integerValue;
      }

      v43 = ((captureVideoOrientation - 5) < 0xFFFFFFFFFFFFFFFELL) ^ ((v42 - 3) < 2);
      if (v43)
      {
        v44 = v25;
      }

      else
      {
        v44 = v23;
      }

      if (!v43)
      {
        v23 = v25;
      }

      [v128 validateFaceTrackedARFrame:?];
      v167[0] = v133;
      v166[0] = @"JFXAnimojiRendererMetadata_JFXARMetadata";
      v166[1] = @"JFXAnimojiRendererMetadata_RenderSize";
      *v155 = v23;
      *&v155[1] = v44;
      [MEMORY[0x277CCAE60] valueWithBytes:v155 objCType:"{CGSize=dd}"];
      v122 = integerValue;
      v46 = v45 = interfaceOrientation;
      v167[1] = v46;
      v166[2] = @"JFXAnimojiRendererMetadata_AVCaptureVideoOrientation";
      v47 = [MEMORY[0x277CCABB0] numberWithInteger:captureVideoOrientation];
      v167[2] = v47;
      v166[3] = @"JFXAnimojiRendererMetadata_UIInterfaceOrientation";
      v48 = [MEMORY[0x277CCABB0] numberWithInteger:v42];
      v167[3] = v48;
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v167 forKeys:v166 count:4];

      interfaceOrientation = v45;
      integerValue = v122;
      v50 = [JFXCustomRenderProperties newCustomRenderProperties:rendererCopy metadata:v49];
      [v50 setAnimojiTapPoint:pointCopy];
      [v129 setObject:v50 forKeyedSubscript:@"JFXCustomRenderingPropertiesKey_Animoji"];
      v134->_logged_render_request_failure_animoji = 0;
    }

    else if (!v134->_logged_render_request_failure_animoji)
    {
      v52 = JFXLog_animoji();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [JFXCapturePreviewRequestBuilder createPVRenderRequestUsingAnimojiRenderer:firstObject metadataValidator:v52 additionalTransform:? effectStack:? animojiTapPoint:? animojiUsesInterfaceOrientation:? requestHandler:?];
      }

      v134->_logged_render_request_failure_animoji = 1;
    }
  }

  v53 = [(JFXCapturePreviewRequestBuilder *)v134 JFX_getEffectsOfType:stackCopy ofType:2];
  v127 = v53;
  v125 = rendererCopy;
  if ([v53 count])
  {
    if (![v133 hasTrackedFace])
    {
      v54 = stackCopy;
      calculateFaceTrackingTransform = 0;
LABEL_32:
      v147 = 0u;
      v148 = 0u;
      v145 = 0u;
      v146 = 0u;
      v67 = v53;
      v68 = [v67 countByEnumeratingWithState:&v145 objects:v160 count:16];
      if (v68)
      {
        v69 = v68;
        v70 = *v146;
        do
        {
          for (i = 0; i != v69; ++i)
          {
            if (*v146 != v70)
            {
              objc_enumerationMutation(v67);
            }

            v72 = *(*(&v145 + 1) + 8 * i);
            if (([v72 isEditingFaceTrackingTransforms] & 1) == 0)
            {
              [v72 setFaceTrackingTransform:calculateFaceTrackingTransform];
            }
          }

          v69 = [v67 countByEnumeratingWithState:&v145 objects:v160 count:16];
        }

        while (v69);
      }

      stackCopy = v54;
      goto LABEL_42;
    }

    v123 = integerValue;
    if (arFrame)
    {
      v54 = stackCopy;
      [v128 validateFaceTrackedARFrame:arFrame];
      v165[0] = arFrame;
      v164[0] = @"JFXFaceTrackingRendererMetadata_ARFrame";
      v164[1] = @"JFXFaceTrackingRendererMetadata_OriginalBufferSize";
      *v154 = v31;
      *&v154[1] = v33;
      v55 = [MEMORY[0x277CCAE60] valueWithBytes:v154 objCType:"{CGSize=dd}"];
      v165[1] = v55;
      v164[2] = @"JFXFaceTrackingRendererMetadata_AVCaptureVideoOrientation";
      v56 = [MEMORY[0x277CCABB0] numberWithInteger:captureVideoOrientation];
      v165[2] = v56;
      v164[3] = @"JFXFaceTrackingRendererMetadata_UIInterfaceOrientation";
      v57 = [MEMORY[0x277CCABB0] numberWithInteger:interfaceOrientation];
      v165[3] = v57;
      v164[4] = @"JFXFaceTrackingRendererMetadata_DeviceInterfaceOrientation";
      v58 = v123;
      v59 = [MEMORY[0x277CCABB0] numberWithInteger:v123];
      v165[4] = v59;
      v60 = MEMORY[0x277CBEAC0];
      v61 = v165;
      v62 = v164;
    }

    else
    {
      v54 = stackCopy;
      if (!faceAnchor)
      {
        v151 = 0u;
        v152 = 0u;
        v149 = 0u;
        v150 = 0u;
        v105 = v53;
        v106 = [v105 countByEnumeratingWithState:&v149 objects:v161 count:16];
        v107 = v134;
        if (v106)
        {
          v108 = v106;
          v109 = *v150;
          v117 = 138543618;
          do
          {
            for (j = 0; j != v108; ++j)
            {
              if (*v150 != v109)
              {
                objc_enumerationMutation(v105);
              }

              v111 = *(*(&v149 + 1) + 8 * j);
              trackingProps = [v111 trackingProps];
              currentTrackingType = [trackingProps currentTrackingType];

              if ((currentTrackingType - 1) <= 1 && !v107->_logged_render_request_failure_facetracking)
              {
                v114 = JFXLog_facetracking();
                if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                {
                  v115 = NSStringFromJFXEffectType([v111 type]);
                  displayName = [v111 displayName];
                  *buf = 138543618;
                  *&buf[4] = v115;
                  *&buf[12] = 2114;
                  *&buf[14] = displayName;
                  _os_log_error_impl(&dword_242A3B000, v114, OS_LOG_TYPE_ERROR, "Unable to build render request with effect - type: %{public}@, name: %{public}@", buf, 0x16u);

                  v107 = v134;
                }
              }
            }

            v108 = [v105 countByEnumeratingWithState:&v149 objects:v161 count:16];
          }

          while (v108);
        }

        v107->_logged_render_request_failure_facetracking = 1;
        v58 = v123;
        goto LABEL_31;
      }

      v163[0] = faceAnchor;
      v162[0] = @"JFXFaceTrackingRendererMetadata_JFXFaceAnchor";
      v162[1] = @"JFXFaceTrackingRendererMetadata_OriginalBufferSize";
      *v153 = v31;
      *&v153[1] = v33;
      v55 = [MEMORY[0x277CCAE60] valueWithBytes:v153 objCType:"{CGSize=dd}"];
      v163[1] = v55;
      v162[2] = @"JFXFaceTrackingRendererMetadata_AVCaptureVideoOrientation";
      v56 = [MEMORY[0x277CCABB0] numberWithInteger:captureVideoOrientation];
      v163[2] = v56;
      v162[3] = @"JFXFaceTrackingRendererMetadata_UIInterfaceOrientation";
      v57 = [MEMORY[0x277CCABB0] numberWithInteger:interfaceOrientation];
      v163[3] = v57;
      v162[4] = @"JFXFaceTrackingRendererMetadata_DeviceInterfaceOrientation";
      v58 = v123;
      v59 = [MEMORY[0x277CCABB0] numberWithInteger:v123];
      v163[4] = v59;
      v60 = MEMORY[0x277CBEAC0];
      v61 = v163;
      v62 = v162;
    }

    v64 = [v60 dictionaryWithObjects:v61 forKeys:v62 count:5];
    v65 = [JFXCustomRenderProperties newCustomRenderProperties:0 metadata:v64];

    [v129 setObject:v65 forKeyedSubscript:@"JFXCustomRenderingPropertiesKey_FaceTracking"];
    v134->_logged_render_request_failure_facetracking = 0;

LABEL_31:
    v66 = [[JFXFaceTrackingTransformCalculator alloc] initWithARMetaData:v133 outputSize:v58 playableInterfaceOrientation:v31, v33];
    calculateFaceTrackingTransform = [(JFXFaceTrackingTransformCalculator *)v66 calculateFaceTrackingTransform];

    v53 = v127;
    goto LABEL_32;
  }

LABEL_42:
  v117 = [(JFXCapturePreviewRequestBuilder *)v134 JFX_visibleEffects:stackCopy, v117];
  v74 = [JFXEffectsPreviewGenerationRequest alloc];
  previewProperties3 = [(JFXCapturePreviewRequestBuilder *)v134 previewProperties];
  [previewProperties3 renderOutputSize];
  v77 = v76;
  v79 = v78;
  previewProperties4 = [(JFXCapturePreviewRequestBuilder *)v134 previewProperties];
  [previewProperties4 frameSize];
  v82 = v81;
  v84 = v83;
  previewProperties5 = [(JFXCapturePreviewRequestBuilder *)v134 previewProperties];
  v86 = previewProperties5;
  if (previewProperties5)
  {
    [previewProperties5 renderTime];
  }

  else
  {
    memset(buf, 0, 24);
  }

  v118 = [(JFXEffectsPreviewGenerationRequest *)v74 initWithInput:colorImageBuffer effectStack:v117 outputSize:buf frameSize:v77 renderTime:v79, v82, v84];

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v124 = stackCopy;
  v87 = stackCopy;
  v88 = [v87 countByEnumeratingWithState:&v141 objects:v159 count:16];
  if (v88)
  {
    v89 = v88;
    v90 = *v142;
    v91 = *MEMORY[0x277D41AD8];
    do
    {
      for (k = 0; k != v89; ++k)
      {
        if (*v142 != v90)
        {
          objc_enumerationMutation(v87);
        }

        v93 = *(*(&v141 + 1) + 8 * k);
        v94 = [v93 parameterForKey:{v91, v118}];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          [v93 setRenderSize:{v31, v33}];
          [v93 setPlayableAspectRatio:{aspectRatioForSize(v31, v33)}];
        }

        if ([v93 type] == 1)
        {
          outputColorSpace = [(JFXCapturePreviewRequestBuilder *)v134 outputColorSpace];
          isHDRSpace = [outputColorSpace isHDRSpace];

          if (isHDRSpace)
          {
            [v93 setHDR:1];
          }
        }
      }

      v89 = [v87 countByEnumeratingWithState:&v141 objects:v159 count:16];
    }

    while (v89);
  }

  [(JFXEffectsPreviewGenerationRequest *)v118 setCustomRenderingProperties:v129];
  v97 = *&v131->c;
  *buf = *&v131->a;
  *&buf[16] = v97;
  v157 = *&v131->tx;
  [(JFXEffectsPreviewGenerationRequest *)v118 setUserSourceTransform:buf];
  [(JFXCapturePreviewRequestBuilder *)v134 requestTransformAnimation];
  *buf = v137;
  *&buf[16] = v138;
  v157 = v139;
  v158 = v140;
  [(JFXEffectsPreviewGenerationRequest *)v118 setAnimationTransformInfo:buf];
  previewProperties6 = [(JFXCapturePreviewRequestBuilder *)v134 previewProperties];
  renderRequiresCrop = [previewProperties6 renderRequiresCrop];

  if (renderRequiresCrop)
  {
    previewProperties7 = [(JFXCapturePreviewRequestBuilder *)v134 previewProperties];
    [previewProperties7 frameSize];

    v158 = 0;
    v157 = 0u;
    memset(buf, 0, sizeof(buf));
    PVTransformAnimationInfoForLiveCapture();
    v135[0] = *buf;
    v135[1] = *&buf[16];
    v135[2] = v157;
    v136 = v158;
    [(JFXEffectsPreviewGenerationRequest *)v118 setTransformAnimationInfo:v135 scaleToOutput:0];
  }

  v101 = [[JFXEffectsPreviewRequestHandler alloc] initWithRequest:v118];
  outputColorSpace2 = [(JFXCapturePreviewRequestBuilder *)v134 outputColorSpace];
  v51 = [(JFXEffectsPreviewRequestHandler *)v101 buildPVRenderRequestWithOutputColorSpace:outputColorSpace2];

  cameraFrameSet = v121;
  [v51 setUserContext:v121];
  rendererCopy = v125;
  validatorCopy = v128;
  if (handler)
  {
    v103 = v101;
    *handler = v101;
  }

  stackCopy = v124;
LABEL_62:

  return v51;
}

- (id)JFX_getEffectsOfType:(id)type ofType:(int)ofType
{
  typeCopy = type;
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__JFXCapturePreviewRequestBuilder_JFX_getEffectsOfType_ofType___block_invoke;
  v9[3] = &unk_278D7A998;
  ofTypeCopy = ofType;
  v7 = v6;
  v10 = v7;
  [typeCopy enumerateObjectsUsingBlock:v9];

  return v7;
}

void __63__JFXCapturePreviewRequestBuilder_JFX_getEffectsOfType_ofType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 type] == *(a1 + 40))
  {
    [*(a1 + 32) addObject:v3];
  }
}

- (id)JFX_visibleEffects:(id)effects
{
  v3 = MEMORY[0x277CCAC30];
  effectsCopy = effects;
  v5 = [v3 predicateWithBlock:&__block_literal_global_16];
  v6 = [effectsCopy filteredArrayUsingPredicate:v5];

  return v6;
}

- (PVTransformAnimationInfo)requestTransformAnimation
{
  v3 = *&self[1].time.value;
  *&retstr->time.value = *&self->scale;
  *&retstr->time.epoch = v3;
  *&retstr->translation.y = *&self[1].time.epoch;
  retstr->rotation = self[1].translation.y;
  return self;
}

- (void)setRequestTransformAnimation:(PVTransformAnimationInfo *)animation
{
  v3 = *&animation->time.value;
  v4 = *&animation->time.epoch;
  v5 = *&animation->translation.y;
  self->_requestTransformAnimation.rotation = animation->rotation;
  *&self->_requestTransformAnimation.translation.y = v5;
  *&self->_requestTransformAnimation.time.epoch = v4;
  *&self->_requestTransformAnimation.time.value = v3;
}

- (void)createPVRenderRequestUsingAnimojiRenderer:(void *)a1 metadataValidator:(NSObject *)a2 additionalTransform:effectStack:animojiTapPoint:animojiUsesInterfaceOrientation:requestHandler:.cold.1(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = NSStringFromJFXEffectType([a1 type]);
  v5 = [a1 displayName];
  v6 = 138543618;
  v7 = v4;
  v8 = 2114;
  v9 = v5;
  _os_log_error_impl(&dword_242A3B000, a2, OS_LOG_TYPE_ERROR, "Unable to build render request with effect - type: %{public}@, name: %{public}@", &v6, 0x16u);
}

@end