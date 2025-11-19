@interface JFXCapturePreviewRequestBuilder
- (JFXCapturePreviewRequestBuilder)initWithPreviewProperties:(id)a3 outputColorSpace:(id)a4;
- (PVTransformAnimationInfo)requestTransformAnimation;
- (id)JFX_getEffectsOfType:(id)a3 ofType:(int)a4;
- (id)JFX_visibleEffects:(id)a3;
- (id)createPVRenderRequestUsingAnimojiRenderer:(id)a3 metadataValidator:(id)a4 additionalTransform:(CGAffineTransform *)a5 effectStack:(id)a6 animojiTapPoint:(BOOL)a7 animojiUsesInterfaceOrientation:(BOOL)a8 requestHandler:(id *)a9;
- (void)setRequestTransformAnimation:(PVTransformAnimationInfo *)a3;
@end

@implementation JFXCapturePreviewRequestBuilder

- (JFXCapturePreviewRequestBuilder)initWithPreviewProperties:(id)a3 outputColorSpace:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = JFXCapturePreviewRequestBuilder;
  v8 = [(JFXCapturePreviewRequestBuilder *)&v17 init];
  v9 = *(v8 + 3);
  *(v8 + 3) = v6;
  v10 = v6;

  PVTransformAnimationInfoIdentity();
  *(v8 + 40) = v13;
  *(v8 + 56) = v14;
  *(v8 + 72) = v15;
  *(v8 + 11) = v16;
  *(v8 + 8) = 0;
  v11 = *(v8 + 4);
  *(v8 + 4) = v7;

  return v8;
}

- (id)createPVRenderRequestUsingAnimojiRenderer:(id)a3 metadataValidator:(id)a4 additionalTransform:(CGAffineTransform *)a5 effectStack:(id)a6 animojiTapPoint:(BOOL)a7 animojiUsesInterfaceOrientation:(BOOL)a8 requestHandler:(id *)a9
{
  v9 = a8;
  v10 = a7;
  v167[4] = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a6;
  v18 = [(JFXCapturePreviewRequestBuilder *)self previewProperties];
  v19 = [v18 cameraFrameSet];

  if (!v19 || ((v131 = a5, [v19 metadataDict], v20 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v20, "objectForKey:", @"PVFrameSetMetadataOriginalBufferSizeKey"), v21 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v21, "CGSizeValue"), v23 = v22, v25 = v24, v21, v20, v23 == *MEMORY[0x277CBF3A8]) ? (v26 = v25 == *(MEMORY[0x277CBF3A8] + 8)) : (v26 = 0), v26))
  {
    v51 = 0;
    goto LABEL_62;
  }

  v128 = v16;
  v132 = [v19 colorImageBuffer];
  v27 = [v19 metadataDict];
  v28 = [v27 objectForKey:@"PVFrameSetMetadataARMetadataKey"];

  v126 = [v28 faceAnchor];
  v133 = v28;
  v130 = [v28 arFrame];
  v29 = [(JFXCapturePreviewRequestBuilder *)self previewProperties];
  [v29 renderOutputSize];
  v31 = v30;
  v33 = v32;

  v34 = [v19 metadataObjectForKey:*MEMORY[0x277D41A00]];
  v35 = self;
  v36 = [v34 captureVideoOrientation];
  v120 = v34;
  v37 = [v34 interfaceOrientation];
  v121 = v19;
  v38 = [v19 metadataObjectForKey:@"PVFrameSetMetadataDeviceOrientationkey"];
  v39 = [v38 integerValue];

  v129 = objc_opt_new();
  v134 = v35;
  v40 = [(JFXCapturePreviewRequestBuilder *)v35 JFX_getEffectsOfType:v17 ofType:7];
  v41 = [v40 firstObject];

  v119 = v41;
  if (v15 && v41)
  {
    if (v130)
    {
      if (v9)
      {
        v42 = v37;
      }

      else
      {
        v42 = v39;
      }

      v43 = ((v36 - 5) < 0xFFFFFFFFFFFFFFFELL) ^ ((v42 - 3) < 2);
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
      v122 = v39;
      v46 = v45 = v37;
      v167[1] = v46;
      v166[2] = @"JFXAnimojiRendererMetadata_AVCaptureVideoOrientation";
      v47 = [MEMORY[0x277CCABB0] numberWithInteger:v36];
      v167[2] = v47;
      v166[3] = @"JFXAnimojiRendererMetadata_UIInterfaceOrientation";
      v48 = [MEMORY[0x277CCABB0] numberWithInteger:v42];
      v167[3] = v48;
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v167 forKeys:v166 count:4];

      v37 = v45;
      v39 = v122;
      v50 = [JFXCustomRenderProperties newCustomRenderProperties:v15 metadata:v49];
      [v50 setAnimojiTapPoint:v10];
      [v129 setObject:v50 forKeyedSubscript:@"JFXCustomRenderingPropertiesKey_Animoji"];
      v134->_logged_render_request_failure_animoji = 0;
    }

    else if (!v134->_logged_render_request_failure_animoji)
    {
      v52 = JFXLog_animoji();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        [JFXCapturePreviewRequestBuilder createPVRenderRequestUsingAnimojiRenderer:v41 metadataValidator:v52 additionalTransform:? effectStack:? animojiTapPoint:? animojiUsesInterfaceOrientation:? requestHandler:?];
      }

      v134->_logged_render_request_failure_animoji = 1;
    }
  }

  v53 = [(JFXCapturePreviewRequestBuilder *)v134 JFX_getEffectsOfType:v17 ofType:2];
  v127 = v53;
  v125 = v15;
  if ([v53 count])
  {
    if (![v133 hasTrackedFace])
    {
      v54 = v17;
      v63 = 0;
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
              [v72 setFaceTrackingTransform:v63];
            }
          }

          v69 = [v67 countByEnumeratingWithState:&v145 objects:v160 count:16];
        }

        while (v69);
      }

      v17 = v54;
      goto LABEL_42;
    }

    v123 = v39;
    if (v130)
    {
      v54 = v17;
      [v128 validateFaceTrackedARFrame:v130];
      v165[0] = v130;
      v164[0] = @"JFXFaceTrackingRendererMetadata_ARFrame";
      v164[1] = @"JFXFaceTrackingRendererMetadata_OriginalBufferSize";
      *v154 = v31;
      *&v154[1] = v33;
      v55 = [MEMORY[0x277CCAE60] valueWithBytes:v154 objCType:"{CGSize=dd}"];
      v165[1] = v55;
      v164[2] = @"JFXFaceTrackingRendererMetadata_AVCaptureVideoOrientation";
      v56 = [MEMORY[0x277CCABB0] numberWithInteger:v36];
      v165[2] = v56;
      v164[3] = @"JFXFaceTrackingRendererMetadata_UIInterfaceOrientation";
      v57 = [MEMORY[0x277CCABB0] numberWithInteger:v37];
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
      v54 = v17;
      if (!v126)
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
              v112 = [v111 trackingProps];
              v113 = [v112 currentTrackingType];

              if ((v113 - 1) <= 1 && !v107->_logged_render_request_failure_facetracking)
              {
                v114 = JFXLog_facetracking();
                if (os_log_type_enabled(v114, OS_LOG_TYPE_ERROR))
                {
                  v115 = NSStringFromJFXEffectType([v111 type]);
                  v116 = [v111 displayName];
                  *buf = 138543618;
                  *&buf[4] = v115;
                  *&buf[12] = 2114;
                  *&buf[14] = v116;
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

      v163[0] = v126;
      v162[0] = @"JFXFaceTrackingRendererMetadata_JFXFaceAnchor";
      v162[1] = @"JFXFaceTrackingRendererMetadata_OriginalBufferSize";
      *v153 = v31;
      *&v153[1] = v33;
      v55 = [MEMORY[0x277CCAE60] valueWithBytes:v153 objCType:"{CGSize=dd}"];
      v163[1] = v55;
      v162[2] = @"JFXFaceTrackingRendererMetadata_AVCaptureVideoOrientation";
      v56 = [MEMORY[0x277CCABB0] numberWithInteger:v36];
      v163[2] = v56;
      v162[3] = @"JFXFaceTrackingRendererMetadata_UIInterfaceOrientation";
      v57 = [MEMORY[0x277CCABB0] numberWithInteger:v37];
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
    v63 = [(JFXFaceTrackingTransformCalculator *)v66 calculateFaceTrackingTransform];

    v53 = v127;
    goto LABEL_32;
  }

LABEL_42:
  v73 = [(JFXCapturePreviewRequestBuilder *)v134 JFX_visibleEffects:v17, v117];
  v74 = [JFXEffectsPreviewGenerationRequest alloc];
  v75 = [(JFXCapturePreviewRequestBuilder *)v134 previewProperties];
  [v75 renderOutputSize];
  v77 = v76;
  v79 = v78;
  v80 = [(JFXCapturePreviewRequestBuilder *)v134 previewProperties];
  [v80 frameSize];
  v82 = v81;
  v84 = v83;
  v85 = [(JFXCapturePreviewRequestBuilder *)v134 previewProperties];
  v86 = v85;
  if (v85)
  {
    [v85 renderTime];
  }

  else
  {
    memset(buf, 0, 24);
  }

  v118 = [(JFXEffectsPreviewGenerationRequest *)v74 initWithInput:v132 effectStack:v73 outputSize:buf frameSize:v77 renderTime:v79, v82, v84];

  v143 = 0u;
  v144 = 0u;
  v141 = 0u;
  v142 = 0u;
  v124 = v17;
  v87 = v17;
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
          v95 = [(JFXCapturePreviewRequestBuilder *)v134 outputColorSpace];
          v96 = [v95 isHDRSpace];

          if (v96)
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
  v98 = [(JFXCapturePreviewRequestBuilder *)v134 previewProperties];
  v99 = [v98 renderRequiresCrop];

  if (v99)
  {
    v100 = [(JFXCapturePreviewRequestBuilder *)v134 previewProperties];
    [v100 frameSize];

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
  v102 = [(JFXCapturePreviewRequestBuilder *)v134 outputColorSpace];
  v51 = [(JFXEffectsPreviewRequestHandler *)v101 buildPVRenderRequestWithOutputColorSpace:v102];

  v19 = v121;
  [v51 setUserContext:v121];
  v15 = v125;
  v16 = v128;
  if (a9)
  {
    v103 = v101;
    *a9 = v101;
  }

  v17 = v124;
LABEL_62:

  return v51;
}

- (id)JFX_getEffectsOfType:(id)a3 ofType:(int)a4
{
  v5 = a3;
  v6 = objc_opt_new();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __63__JFXCapturePreviewRequestBuilder_JFX_getEffectsOfType_ofType___block_invoke;
  v9[3] = &unk_278D7A998;
  v11 = a4;
  v7 = v6;
  v10 = v7;
  [v5 enumerateObjectsUsingBlock:v9];

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

- (id)JFX_visibleEffects:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v4 = a3;
  v5 = [v3 predicateWithBlock:&__block_literal_global_16];
  v6 = [v4 filteredArrayUsingPredicate:v5];

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

- (void)setRequestTransformAnimation:(PVTransformAnimationInfo *)a3
{
  v3 = *&a3->time.value;
  v4 = *&a3->time.epoch;
  v5 = *&a3->translation.y;
  self->_requestTransformAnimation.rotation = a3->rotation;
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