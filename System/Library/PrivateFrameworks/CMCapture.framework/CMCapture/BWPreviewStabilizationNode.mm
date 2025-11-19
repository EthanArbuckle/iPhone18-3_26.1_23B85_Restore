@interface BWPreviewStabilizationNode
- (BWPreviewStabilizationNode)initWithCameraInfoByPortType:(id)a3 forStillImagePreview:(BOOL)a4 updateFinalCropRectWithStabilizationShift:(BOOL)a5 minimumSupportedUIZoomFactor:(float)a6;
- (void)dealloc;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
@end

@implementation BWPreviewStabilizationNode

- (BWPreviewStabilizationNode)initWithCameraInfoByPortType:(id)a3 forStillImagePreview:(BOOL)a4 updateFinalCropRectWithStabilizationShift:(BOOL)a5 minimumSupportedUIZoomFactor:(float)a6
{
  v7 = a5;
  v8 = a4;
  v38.receiver = self;
  v38.super_class = BWPreviewStabilizationNode;
  v10 = [(BWNode *)&v38 init];
  v11 = v10;
  if (!a3)
  {
    [BWPreviewStabilizationNode initWithCameraInfoByPortType:forStillImagePreview:updateFinalCropRectWithStabilizationShift:minimumSupportedUIZoomFactor:];
LABEL_19:

    return 0;
  }

  if (!v10)
  {
    return v11;
  }

  v31 = __PAIR64__(v8, v7);
  v12 = [[BWNodeInput alloc] initWithMediaType:1986618469 node:v10];
  [(BWNodeInput *)v12 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeInput *)v12 setPassthroughMode:1];
  [(BWNode *)v11 addInput:v12];
  v13 = [[BWNodeOutput alloc] initWithMediaType:1986618469 node:v11];
  [(BWNodeOutput *)v13 setFormatRequirements:objc_alloc_init(BWVideoFormatRequirements)];
  [(BWNodeOutput *)v13 setPassthroughMode:1];
  v32 = v11;
  [(BWNode *)v11 addOutput:v13];
  v14 = [MEMORY[0x1E695DF90] dictionary];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v15 = [a3 allKeys];
  v16 = [v15 countByEnumeratingWithState:&v34 objects:v33 count:16];
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v18 = *v35;
  v19 = *off_1E7989F18;
  v20 = *off_1E7989E50;
  while (2)
  {
    for (i = 0; i != v17; ++i)
    {
      if (*v35 != v18)
      {
        objc_enumerationMutation(v15);
      }

      v22 = *(*(&v34 + 1) + 8 * i);
      v23 = [MEMORY[0x1E695DF90] dictionary];
      v24 = [objc_msgSend(a3 objectForKeyedSubscript:{v22), "objectForKeyedSubscript:", v19}];
      if (!v24)
      {
        [BWPreviewStabilizationNode initWithCameraInfoByPortType:forStillImagePreview:updateFinalCropRectWithStabilizationShift:minimumSupportedUIZoomFactor:];
LABEL_18:
        v11 = v32;
        goto LABEL_19;
      }

      [v23 setObject:v24 forKeyedSubscript:v19];
      v25 = [objc_msgSend(a3 objectForKeyedSubscript:{v22), "objectForKeyedSubscript:", v20}];
      if (!v25)
      {
        [BWPreviewStabilizationNode initWithCameraInfoByPortType:forStillImagePreview:updateFinalCropRectWithStabilizationShift:minimumSupportedUIZoomFactor:];
        goto LABEL_18;
      }

      [v23 setObject:v25 forKeyedSubscript:v20];
      [v14 setObject:v23 forKeyedSubscript:v22];
    }

    v17 = [v15 countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v17)
    {
      continue;
    }

    break;
  }

LABEL_12:
  v26 = [[BWPreviewGyroStabilization alloc] initForStillImagePreview:HIDWORD(v31)];
  v11 = v32;
  v32->_previewStabilization = v26;
  if (!v26)
  {
    [BWPreviewStabilizationNode initWithCameraInfoByPortType:forStillImagePreview:updateFinalCropRectWithStabilizationShift:minimumSupportedUIZoomFactor:];
    goto LABEL_19;
  }

  v32->_staticParametersByPortType = v14;
  v32->_updateFinalCropRectWithStabilizationShift = v31;
  v27 = 5.0;
  if (a6 > 0.0)
  {
    v27 = a6;
  }

  v32->_minimumSupportedUIZoomFactor = v27;
  v32->_photoModeFullStrengthUIZoomFactor = v27 + 0.2;
  v32->_stabilizeFallbackCamera = 1;
  v32->_stabilizationEnterRampFrameCount = 50;
  v32->_stabilizationExitRampFrameCount = 25;
  v32->_stabilizationCameraFallbackRampFrameCount = 7;
  v32->_stabilizationGraphStopRampOffFrameCount = 15;
  v32->_enableStabilizationTransitionRamps = 1;
  v32->_stabilizationCameraFallbackRampEnabled = 1;
  v28 = [BWRamp alloc];
  v32->_stabilizationTransitionRamp = -[BWRamp initWithName:](v28, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"StabilizationTransitionRamp"]);
  v29 = [BWRamp alloc];
  v32->_stabilizationCameraFallbackRamp = -[BWRamp initWithName:](v29, "initWithName:", [MEMORY[0x1E696AEC0] stringWithFormat:@"StabilizationCameraFallbackRamp"]);
  v32->_isStillImagePreview = BYTE4(v31);
  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWPreviewStabilizationNode;
  [(BWNode *)&v3 dealloc];
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  v106 = 0;
  cf = 0;
  v5 = *off_1E798A0D8;
  v6 = [(NSDictionary *)self->_staticParametersByPortType objectForKeyedSubscript:*off_1E798A0D8, a4];
  v7 = *off_1E7989E50;
  [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E7989E50), "floatValue"}];
  if (v8 == 0.0)
  {
    [BWPreviewStabilizationNode renderSampleBuffer:forInput:];
  }

  else
  {
    v9 = v8;
    v10 = CMGetAttachment(a3, @"LastRecommendedMasterSelectionReason", 0);
    if (v10)
    {
      v11 = v10;
      self->_lastRecommendedMasterSelectionReason = [v10 intValue];
      lastRecommendedMasterSelectionReason = [v11 intValue];
    }

    else
    {
      lastRecommendedMasterSelectionReason = self->_lastRecommendedMasterSelectionReason;
    }

    v13 = CMGetAttachment(a3, @"RecommendedMasterPortType", 0);
    if (v13)
    {
      v14 = v13;

      self->_lastRecommendedMasterPortType = v14;
    }

    BWOverCaptureSampleBufferUnpackAndRetain(a3, 0, &cf, &v106, 0, 0);
    v15 = v106;
    if (v106)
    {
      if (cf)
      {
        v16 = cf;
      }

      else
      {
        v16 = v106;
      }

      v17 = CMGetAttachment(v16, @"TotalZoomFactor", 0);
      if (v17)
      {
        [v17 floatValue];
        v19 = v18;
      }

      else
      {
        v19 = 1.0;
      }

      isStillImagePreview = 0;
      if (cf)
      {
        if (self->_stabilizeFallbackCamera && lastRecommendedMasterSelectionReason == 1)
        {
          isStillImagePreview = 0;
          if (![(NSString *)self->_lastRecommendedMasterPortType isEqualToString:v5]&& v19 > v9)
          {
            isStillImagePreview = self->_isStillImagePreview;
            if (self->_isStillImagePreview)
            {
              v15 = cf;
            }
          }
        }
      }

      key = *off_1E798A3C8;
      v21 = CMGetAttachment(v15, *off_1E798A3C8, 0);
      if (v21)
      {
        v22 = v21;
        v96 = v7;
        v23 = *off_1E798B540;
        v24 = [v21 objectForKeyedSubscript:*off_1E798B540];
        [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_staticParametersByPortType objectForKeyedSubscript:{v24), "objectForKeyedSubscript:", *off_1E7989F18), "floatValue"}];
        v26 = v25;
        v100 = *MEMORY[0x1E695EFF8];
        v104 = *MEMORY[0x1E695EFF8];
        ImageBuffer = CMSampleBufferGetImageBuffer(v15);
        Width = CVPixelBufferGetWidth(ImageBuffer);
        v29 = CMSampleBufferGetImageBuffer(v15);
        Height = CVPixelBufferGetHeight(v29);
        v97 = Width;
        LODWORD(v31) = v26;
        if ([(BWPreviewGyroStabilization *)self->_previewStabilization computeStabilizationShiftUsingMetadata:v22 pixelBufferDimensions:Width | (Height << 32) pixelSizeInMicrons:&v104 stabilizationShiftOut:v31])
        {
          [BWPreviewStabilizationNode renderSampleBuffer:forInput:];
        }

        else
        {
          v32 = CMGetAttachment(a3, @"UIZoomFactor", 0);
          if (v32)
          {
            [v32 floatValue];
            v34 = v33;
          }

          else
          {
            v34 = 1.0;
          }

          minimumSupportedUIZoomFactor = self->_minimumSupportedUIZoomFactor;
          v36 = [v24 isEqual:v5];
          v95 = Height;
          if (v34 >= minimumSupportedUIZoomFactor && ((v36 & 1) != 0 || self->_stabilizeFallbackCamera && lastRecommendedMasterSelectionReason == 1) && !self->_rampOffStabilizationForGraphStop)
          {
            if (!self->_lastStabilizingEnabled && self->_enableStabilizationTransitionRamps)
            {
              v92 = 0;
              if ([(BWRamp *)self->_stabilizationTransitionRamp isRamping])
              {
                [(BWRamp *)self->_stabilizationTransitionRamp currentValue];
                v92 = v93;
                [(BWRamp *)self->_stabilizationTransitionRamp reset];
              }

              LODWORD(v91) = 1.0;
              LODWORD(v90) = v92;
              [(BWRamp *)self->_stabilizationTransitionRamp startRampFrom:self->_stabilizationEnterRampFrameCount to:2 iterations:v90 shape:v91];
            }

            if ([(BWRamp *)self->_stabilizationTransitionRamp isRamping])
            {
              [(BWRamp *)self->_stabilizationTransitionRamp updateRampForNextIteration];
              v104 = vmulq_n_f64(v104, v94);
            }

            v41 = 1;
          }

          else
          {
            if (self->_lastStabilizingEnabled && self->_enableStabilizationTransitionRamps)
            {
              v38 = 1.0;
              if ([(BWRamp *)self->_stabilizationTransitionRamp isRamping])
              {
                [(BWRamp *)self->_stabilizationTransitionRamp currentValue];
                v38 = v39;
                [(BWRamp *)self->_stabilizationTransitionRamp reset];
              }

              if (self->_rampOffStabilizationForGraphStop)
              {
                v40 = &OBJC_IVAR___BWPreviewStabilizationNode__stabilizationGraphStopRampOffFrameCount;
              }

              else
              {
                v40 = &OBJC_IVAR___BWPreviewStabilizationNode__stabilizationExitRampFrameCount;
              }

              *&v37 = v38;
              [(BWRamp *)self->_stabilizationTransitionRamp startRampFrom:*(&self->super.super.isa + *v40) to:2 iterations:v37 shape:0.0];
            }

            if ([(BWRamp *)self->_stabilizationTransitionRamp isRamping])
            {
              [(BWRamp *)self->_stabilizationTransitionRamp updateRampForNextIteration];
              v41 = 0;
              v43 = vmulq_n_f64(v104, v42);
            }

            else
            {
              v41 = 0;
              v43 = v100;
            }

            v104 = v43;
          }

          v44.x = v104.f64[0];
          if (self->_isStillImagePreview)
          {
            v45 = ((v34 - self->_minimumSupportedUIZoomFactor) / 0.2);
            if (v45 > 1.0)
            {
              v45 = 1.0;
            }

            v46 = fmax(v45, 0.0);
            v47 = v46;
            v44.x = v104.f64[0] * v47;
            v104.f64[0] = v104.f64[0] * v47;
            v104.f64[1] = v104.f64[1] * v47;
            if (isStillImagePreview)
            {
              v48 = CMGetAttachment(v106, key, 0);
              v49 = CMGetAttachment(cf, key, 0);
              v50 = [v48 objectForKeyedSubscript:v23];
              v51 = [v49 objectForKeyedSubscript:v23];
              [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_staticParametersByPortType objectForKeyedSubscript:{v50), "objectForKeyedSubscript:", v96), "floatValue"}];
              v53 = v52;
              v54 = *off_1E798B508;
              [objc_msgSend(v48 objectForKeyedSubscript:{*off_1E798B508), "floatValue"}];
              if (v55 == 0.0)
              {
                v56 = 1.0;
              }

              else
              {
                v56 = v55;
              }

              v57 = v56 * v53;
              [objc_msgSend(-[NSDictionary objectForKeyedSubscript:](self->_staticParametersByPortType objectForKeyedSubscript:{v51, v24), "objectForKeyedSubscript:", v96), "floatValue"}];
              v59 = v58;
              [objc_msgSend(v49 objectForKeyedSubscript:{v54), "floatValue"}];
              if (v60 == 0.0)
              {
                v61 = 1.0;
              }

              else
              {
                v61 = v60;
              }

              v62 = v61 * v59;
              v44 = vmulq_n_f64(v104, (v57 / v62));
              v104 = v44;
            }

            v63 = MEMORY[0x1E695EFF8];
            if (self->_stabilizationCameraFallbackRampEnabled)
            {
              if (([v24 isEqualToString:self->_lastPortType] & 1) == 0 && self->_stabilizeFallbackCamera && lastRecommendedMasterSelectionReason == 1 && v19 > v9 && self->_isStillImagePreview)
              {
                if ([(BWRamp *)self->_stabilizationCameraFallbackRamp isRamping])
                {
                  [(BWRamp *)self->_stabilizationCameraFallbackRamp reset];
                }

                LODWORD(v89) = 1.0;
                [(BWRamp *)self->_stabilizationCameraFallbackRamp startRampFrom:self->_stabilizationCameraFallbackRampFrameCount to:0 iterations:0.0 shape:v89];
                self->_lastTranslationBeforeCameraFallbackRampStart = self->_appliedTranslation;
              }

              if ([(BWRamp *)self->_stabilizationCameraFallbackRamp isRamping])
              {
                [(BWRamp *)self->_stabilizationCameraFallbackRamp updateRampForNextIteration];
                v44 = vmlaq_n_f64(vmulq_n_f64(v104, v64), self->_lastTranslationBeforeCameraFallbackRampStart, 1.0 - v64);
                v104 = v44;
              }

              else
              {
                v44.x = v104.f64[0];
              }
            }
          }

          else
          {
            v63 = MEMORY[0x1E695EFF8];
          }

          v65 = v104.f64[1];
          if (v44.x != *v63 || v104.f64[1] != v63[1])
          {
            if (self->_updateFinalCropRectWithStabilizationShift)
            {
              v66 = CMGetAttachment(v106, key, 0);
              rect = *ymmword_1AD056718;
              CGRectMakeWithDictionaryRepresentation([v66 objectForKeyedSubscript:*off_1E798A5C8], &rect);
              v67 = CMSampleBufferGetImageBuffer(a3);
              v68 = *(MEMORY[0x1E695F058] + 8);
              v102.origin.x = *MEMORY[0x1E695F058];
              v102.origin.y = v68;
              v102.size.width = CVPixelBufferGetWidth(v67);
              v102.size.height = CVPixelBufferGetHeight(v67);
              CGRectMakeWithDictionaryRepresentation([v66 objectForKeyedSubscript:*off_1E798B7A0], &v102);
              FigCaptureMetadataUtilitiesNormalizeCropRect(v102.origin.x, v102.origin.y, v102.size.width, v102.size.height);
              v73 = v72;
              v74 = v69;
              v75 = v70;
              v76 = v71;
              v77 = rect.origin.x + v104.f64[0] / v97;
              v78 = rect.origin.y + v104.f64[1] / v95;
              rect.origin.x = v77;
              rect.origin.y = v78;
              v79 = rect.size.width;
              if (v70 < rect.size.width)
              {
                v79 = v70;
              }

              v80 = fmax(v79, 0.0);
              if (v71 >= rect.size.height)
              {
                v81 = rect.size.height;
              }

              else
              {
                v81 = v71;
              }

              keya = fmax(v81, 0.0);
              v82 = v73;
              MinX = CGRectGetMinX(*(&v69 - 1));
              v107.origin.x = v73;
              v107.origin.y = v74;
              v107.size.width = v75;
              v107.size.height = v76;
              v84 = CGRectGetMaxX(v107) - v80;
              if (v84 >= v77)
              {
                v84 = v77;
              }

              if (MinX < v84)
              {
                MinX = v84;
              }

              v108.origin.x = v73;
              v108.origin.y = v74;
              v108.size.width = v75;
              v108.size.height = v76;
              MinY = CGRectGetMinY(v108);
              v109.origin.x = v73;
              v109.origin.y = v74;
              v109.size.width = v75;
              v109.size.height = v76;
              v86 = CGRectGetMaxY(v109) - keya;
              if (v86 >= v78)
              {
                v86 = v78;
              }

              if (MinY >= v86)
              {
                v87 = MinY;
              }

              else
              {
                v87 = v86;
              }

              rect.origin.x = MinX;
              rect.origin.y = v87;
              rect.size.width = v80;
              rect.size.height = keya;
              FigCFDictionarySetCGRect();
            }

            else
            {
              DictionaryRepresentation = CGPointCreateDictionaryRepresentation(v44);
              CMSetAttachment(v106, *off_1E798A428, DictionaryRepresentation, 1u);
              if (DictionaryRepresentation)
              {
                CFRelease(DictionaryRepresentation);
              }
            }
          }

          self->_lastStabilizingEnabled = v41;
          self->_appliedTranslation = v104;

          self->_lastPortType = v24;
        }
      }

      else
      {
        [BWPreviewStabilizationNode renderSampleBuffer:forInput:];
      }
    }

    else
    {
      [BWPreviewStabilizationNode renderSampleBuffer:forInput:];
    }
  }

  if (v106)
  {
    CFRelease(v106);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
}

- (uint64_t)initWithCameraInfoByPortType:forStillImagePreview:updateFinalCropRectWithStabilizationShift:minimumSupportedUIZoomFactor:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:forStillImagePreview:updateFinalCropRectWithStabilizationShift:minimumSupportedUIZoomFactor:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:forStillImagePreview:updateFinalCropRectWithStabilizationShift:minimumSupportedUIZoomFactor:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithCameraInfoByPortType:forStillImagePreview:updateFinalCropRectWithStabilizationShift:minimumSupportedUIZoomFactor:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end