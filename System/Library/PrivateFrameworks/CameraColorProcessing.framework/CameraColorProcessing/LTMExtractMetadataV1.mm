@interface LTMExtractMetadataV1
+ (BOOL)extractCCMFromMetadata:(id)metadata toDriverInput:(sRefDriverInputs_SOFTISP *)input;
+ (BOOL)getTileStatsRegion:(id)region validBufferRect:(id)rect toDriverInput:(sRefDriverInputs_SOFTISP *)input;
+ (int)extractAWBMetadataFromMetadata:(id)metadata validBufferRect:(id)rect toDriverInput:(sRefDriverInputs_SOFTISP *)input;
+ (void)extractRectanglesFrom:(id)from inputBufferRect:(id)rect validBufferRect:(id)bufferRect ltmGeometry:(id)geometry;
- (BOOL)extractFrom:(id)from toDriverInput:(sRefDriverInputs_SOFTISP *)input ltmGeometry:(id)geometry;
- (LTMExtractMetadataV1)init;
- (float)extractHRGainDownRatioFrom:(id)from;
@end

@implementation LTMExtractMetadataV1

- (LTMExtractMetadataV1)init
{
  if ([LTMExtractMetadataV1 init]::onceToken != -1)
  {
    [LTMExtractMetadataV1 init];
  }

  v8.receiver = self;
  v8.super_class = LTMExtractMetadataV1;
  v3 = [(LTMExtractMetadataV1 *)&v8 init];
  v4 = v3;
  if (v3)
  {
    *&v3->_forceDisableLTMHazeCorrection = 0;
    *&v3->_forceDisableLTMFaceBoost = 0;
    *&v3->_faceBiasScaler = xmmword_1C9335BC0;
    v5 = v3;
  }

  else
  {
    FigDebugAssert3();
    v7 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return v4;
}

- (BOOL)extractFrom:(id)from toDriverInput:(sRefDriverInputs_SOFTISP *)input ltmGeometry:(id)geometry
{
  fromCopy = from;
  geometryCopy = geometry;
  v146 = fromCopy;
  inMetaData = [fromCopy inMetaData];
  validBufferRect = [fromCopy validBufferRect];
  inputBufferRect = [fromCopy inputBufferRect];
  v8 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E69910C8]];
  v141 = v8;
  v9 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E69910C0]];
  v143 = v9;
  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    FigDebugAssert3();
    v133 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT);
    goto LABEL_132;
  }

  unsignedIntValue = [v8 unsignedIntValue];
  unsignedIntValue2 = [v143 unsignedIntValue];
  if (!validBufferRect)
  {
    goto LABEL_10;
  }

  v13 = [validBufferRect objectForKeyedSubscript:@"Width"];
  if (![v13 intValue])
  {

LABEL_10:
    v152[0] = @"X";
    v152[1] = @"Y";
    v153[0] = &unk_1F48E6600;
    v153[1] = &unk_1F48E6600;
    v152[2] = @"Width";
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:unsignedIntValue];
    v153[2] = v16;
    v152[3] = @"Height";
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:unsignedIntValue2];
    v153[3] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v153 forKeys:v152 count:4];

    validBufferRect = v18;
    goto LABEL_11;
  }

  v14 = [validBufferRect objectForKeyedSubscript:@"Height"];
  intValue = [v14 intValue];

  if (!intValue)
  {
    goto LABEL_10;
  }

LABEL_11:
  [geometryCopy inputTextureSize];
  if (v19 == 0.0 || ([geometryCopy inputTextureSize], v20 == 0.0))
  {
    FigDebugAssert3();
    v133 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT);
LABEL_132:
    v123 = v146;
    v125 = v141;
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    goto LABEL_134;
  }

  v21 = [validBufferRect objectForKeyedSubscript:@"Width"];
  [v21 floatValue];
  v23 = v22;
  v24 = [validBufferRect objectForKeyedSubscript:@"X"];
  [v24 floatValue];
  v26 = v25;
  [geometryCopy inputTextureSize];
  v28 = (v23 + (v26 * 2.0)) / v27;
  *&v28 = v28;
  [geometryCopy setInputTextureDownsampleRatio:v28];

  [LTMExtractMetadataV1 extractRectanglesFrom:inMetaData inputBufferRect:inputBufferRect validBufferRect:validBufferRect ltmGeometry:geometryCopy];
  *&input->faceInfo.primaryFaceIndex = 0;
  input->faceInfo.rectArray[8] = 0u;
  input->faceInfo.rectArray[9] = 0u;
  input->faceInfo.rectArray[6] = 0u;
  input->faceInfo.rectArray[7] = 0u;
  input->faceInfo.rectArray[4] = 0u;
  input->faceInfo.rectArray[5] = 0u;
  input->faceInfo.rectArray[2] = 0u;
  input->faceInfo.rectArray[3] = 0u;
  input->faceInfo.rectArray[0] = 0u;
  input->faceInfo.rectArray[1] = 0u;
  v29 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6990FB8]];
  v147 = v29;
  if (!v29 || ([v29 objectForKeyedSubscript:*MEMORY[0x1E6990E98]], (v30 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v148 = 0;
    goto LABEL_34;
  }

  v148 = v30;
  v31 = [v30 objectForKeyedSubscript:*MEMORY[0x1E6990EC0]];
  v32 = v31;
  if (!v31 || ![v31 count] || ((v33 = objc_msgSend(v32, "count"), v33 >= 0xA) ? (v34 = 10) : (v34 = v33), input->faceInfo.numFaces = v34, !v33))
  {
LABEL_29:
    v49 = [v32 sortedArrayUsingComparator:&__block_literal_global_29];
    v50 = v49;
    if (v49 && [v49 count])
    {
      v51 = [v50 objectAtIndexedSubscript:0];
      v52 = [v51 objectForKeyedSubscript:@"Index"];
      input->faceInfo.primaryFaceIndex = [v52 intValue];
    }

LABEL_34:
    input->forceDisableFaceBoost = self->_forceDisableLTMFaceBoost;
    v53 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6991158]];
    v54 = v53;
    if (!v53)
    {
      goto LABEL_133;
    }

    input->gainDigi = [v53 intValue];
    v55 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6991090]];

    if (!v55)
    {
      goto LABEL_133;
    }

    input->luxLevel = [v55 intValue];
    v56 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6990ED8]];

    if (!v56)
    {
      goto LABEL_133;
    }

    input->gainAnal.v16 = [v56 unsignedShortValue];
    v57 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6990FC8]];

    if (!v57)
    {
      goto LABEL_133;
    }

    [v57 doubleValue];
    input->exposureTime = (v58 * 1000000.0);
    v59 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6991170]];

    if (!v59)
    {
      goto LABEL_133;
    }

    input->gainDigiSensor.v16 = [v59 unsignedShortValue];
    v60 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E69910F0]];
    bOOLValue = [v60 BOOLValue];
    v62 = MEMORY[0x1E6990F88];
    v63 = MEMORY[0x1E69910E8];
    if (bOOLValue)
    {
    }

    else
    {
      isSIFR = [v146 isSIFR];

      if ((isSIFR & 1) == 0)
      {
        input->bracketingMode = 15;
        v65 = [inMetaData objectForKeyedSubscript:*v62];

        if (v65)
        {
          [v65 floatValue];
          v73 = exp2f(-v72);
          v68 = 0;
          v69 = 0;
          v67 = vcvts_n_u32_f32(v73, 8uLL);
        }

        else
        {
          v68 = 0;
          v69 = 0;
          v67 = 256;
        }

        goto LABEL_48;
      }
    }

    input->bracketingMode = 15;
    v65 = [inMetaData objectForKeyedSubscript:*v63];

    if (!v65)
    {
      v70 = 0;
      v68 = 1;
      v69 = 1;
      v71 = 1;
LABEL_49:
      input->isSIFRFrame = v68;
      v74 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6991038]];
      input->HROn = [v74 BOOLValue];

      if (input->HROn && !self->_forceDisableHR)
      {
        v76 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6991040]];

        if (!v76)
        {
          goto LABEL_133;
        }

        unsignedShortValue = [v76 unsignedShortValue];
        v70 = v76;
      }

      else
      {
        unsignedShortValue = 4096;
      }

      input->hrGainDownRatio = unsignedShortValue;
      v77 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6990FC0]];

      if (v77)
      {
        [v77 floatValue];
        v79 = v78;
        if (v69)
        {
          v80 = [inMetaData objectForKeyedSubscript:*v63];
          [v80 floatValue];
          v79 = v79 - v81;
        }

        v82 = [inMetaData objectForKeyedSubscript:*v62];

        if (v82)
        {
          [v82 floatValue];
          v79 = v79 - v83;
        }

        input->expBias = vcvts_n_s32_f32(exp2f(v79), 8uLL);
        v84 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E69910D0]];

        if (v84)
        {
          [v84 floatValue];
          input->realizedExpBias = vcvts_n_s32_f32(v85, 8uLL);
        }

        else
        {
          v71 = 1;
        }

        v86 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6990FD0]];

        if (v86)
        {
          [v86 floatValue];
          input->ev0Ratio = vcvts_n_s32_f32(v87, 8uLL);
        }

        else
        {
          v71 = 1;
        }

        v88 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E69910A8]];
        if ([v88 isEqual:*MEMORY[0x1E6990CA0]])
        {
          v89 = 2;
        }

        else if ([v88 isEqual:*MEMORY[0x1E6990CA8]])
        {
          v89 = 2;
        }

        else
        {
          v89 = 0;
        }

        input->channel = v89;
        v90 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6991028]];
        input->flashStatus = [v90 BOOLValue];

        input->ltmProcMode = [v146 digitalFlash];
        v91 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6990FE0]];

        if (v91)
        {
          [v91 floatValue];
          input->faceExpRatioFiltered = v92;
        }

        else
        {
          v71 = 1;
        }

        if (self->_forceDisableLTMFaceExposureRatio)
        {
          input->faceExpRatioFiltered = 1.0;
        }

        if (!v71 || [LTMExtractMetadataV1 extractFromRawMetadata:inMetaData toDriverInput:input])
        {
          if (![LTMExtractMetadataV1 extractCCMFromMetadata:inMetaData toDriverInput:input])
          {
            v138 = v140;
            LODWORD(v136) = 0;
            FigDebugAssert3();
          }

          v138 = [LTMExtractMetadataV1 isLocalCCMEnabled:input, v136, v138];
          input->useSpatialCCM = v138;
          if (v138)
          {
            v94 = [LTMExtractMetadataV1 extractAWBMetadataFromMetadata:inMetaData validBufferRect:validBufferRect toDriverInput:input];
            if (v94)
            {
              input->useSpatialCCM = 0;
              v139 = v140;
              LODWORD(v137) = v94;
              FigDebugAssert3();
            }
          }

          input->overflowDGain = 256;
          input->hdrRatio = 256;
          input->panoExpRatio = 0;
          v95 = 1;
          input->bLTMSingleFrameMode = 1;
          input->isHLGMode = 0;
          input->gammaCurve = 0;
          input->useHighlightCompression = 0;
          input->highlightCompressionGain = 1.0;
          if ((v69 & 1) == 0)
          {
            v96 = [inMetaData objectForKeyedSubscript:*MEMORY[0x1E6990E18]];
            [v96 floatValue];
            v95 = v97 < -1.0;
          }

          if ([v146 isAdaptiveHighlightCompressionEnabled])
          {
            if (input->HROn)
            {
              LOBYTE(forceDisableHR) = self->_forceDisableHR;
              input->softIspDGain = input->gainDigi * 0.0039062;
              p_softIspDGain = &input->softIspDGain;
              input->useAdaptiveHighlightCompression = 1;
              goto LABEL_87;
            }

            input->softIspDGain = input->gainDigi * 0.0039062;
            p_softIspDGain = &input->softIspDGain;
            input->useAdaptiveHighlightCompression = 1;
          }

          else
          {
            if ([v146 isHighlightCompressionEnabled] && input->HROn)
            {
              forceDisableHR = self->_forceDisableHR;
              if (!forceDisableHR && !v95)
              {
                forceHighlightCompressionForEveryFrame = self->_forceHighlightCompressionForEveryFrame;
                input->softIspDGain = input->gainDigi * 0.0039062;
                p_softIspDGain = &input->softIspDGain;
                input->hardIspDGain = 1.0;
                p_hardIspDGain = &input->hardIspDGain;
                if (!forceHighlightCompressionForEveryFrame)
                {
                  goto LABEL_100;
                }

                goto LABEL_88;
              }

              input->softIspDGain = input->gainDigi * 0.0039062;
              p_softIspDGain = &input->softIspDGain;
LABEL_87:
              *(p_softIspDGain - 1) = 1.0;
              p_hardIspDGain = p_softIspDGain - 1;
              if (forceDisableHR)
              {
                goto LABEL_100;
              }

LABEL_88:
              AuxCompute_CalcExposureRatio(input);
              if (input->useAdaptiveHighlightCompression)
              {
                v102 = v101;
                hardIspDGain = input->hardIspDGain;
                v104 = 1.0;
                if (v95)
                {
                  [v146 minimumAdaptiveHC_SIFR];
                  v104 = v105;
                }

                [v146 adaptiveHCSlope];
                v107 = fmaxf(v104, fminf((v102 / hardIspDGain) / v106, 4.0));
                if (v107 > 1.0)
                {
                  input->useHighlightCompression = 1;
                  input->highlightCompressionGain = v107;
                }
              }

              else
              {
                input->useHighlightCompression = 1;
                input->highlightCompressionGain = 2.0;
              }

LABEL_100:
              v108 = *p_softIspDGain;
              [v146 ispDGainThreshold];
              if (v108 > v109)
              {
                [v146 ispDGainThreshold];
                input->hardIspDGain = (input->gainDigi * 0.0039062) / v110;
                input->softIspDGain = v110;
              }

              AuxCompute_CalcExposureRatio(input);
              v112 = v111 / *p_hardIspDGain;
              if (v112 > 80.0)
              {
                v113 = *p_hardIspDGain * (v112 / 80.0);
                v114 = (input->gainDigi * 0.0039062) / v113;
                input->hardIspDGain = v113;
                input->softIspDGain = v114;
              }

              AuxCompute_CalcExposureRatio(input);
              input->LTMHazeCorrectionOff = self->_forceDisableLTMHazeCorrection;
              input->useBt709 = self->_forceUseBt709;
              if ([v146 doAdaptiveFaceBiasScaler])
              {
                v115 = input->gainAnal.v16;
                v116 = input->gainDigiSensor.v16;
                gainDigi = input->gainDigi;
                faceBiasThreshold = self->_faceBiasThreshold;
                faceBiasThresholdMin = self->_faceBiasThresholdMin;
                faceBiasScaler = self->_faceBiasScaler;
                faceBiasScalerMin = self->_faceBiasScalerMin;
                if (faceBiasThreshold <= faceBiasThresholdMin)
                {
                  FigDebugAssert3();
                }

                if (faceBiasScaler <= faceBiasScalerMin)
                {
                  FigDebugAssert3();
                }

                v122 = (vcvts_n_f32_u32(v115, 8uLL) * vcvts_n_f32_u32(v116, 8uLL)) * (gainDigi * 0.0039062);
                v123 = v146;
                if (v122 < faceBiasThreshold)
                {
                  v124 = geometryCopy;
                  v125 = v141;
                  v127 = v147;
                  v126 = v148;
                  if (v122 <= faceBiasThresholdMin)
                  {
                    faceBiasScaler = faceBiasScalerMin;
                  }

                  else
                  {
                    faceBiasScaler = faceBiasScalerMin + (((faceBiasScaler - faceBiasScalerMin) / (faceBiasThreshold - faceBiasThresholdMin)) * (v122 - faceBiasThresholdMin));
                  }

                  goto LABEL_114;
                }
              }

              else
              {
                faceBiasScaler = 0.08;
                v123 = v146;
              }

              v124 = geometryCopy;
              v125 = v141;
              v127 = v147;
              v126 = v148;
LABEL_114:
              *&input[1].flashMixPercentage[400] = faceBiasScaler;
              input->useHazeCorrection = 0;
              input[1].flashMixPercentage[402] = 0;

              v128 = 1;
              goto LABEL_115;
            }

            input->softIspDGain = input->gainDigi * 0.0039062;
            p_softIspDGain = &input->softIspDGain;
          }

          *(p_softIspDGain - 1) = 1.0;
          p_hardIspDGain = p_softIspDGain - 1;
          goto LABEL_100;
        }

        FigDebugAssert3();
        v134 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v134, OS_LOG_TYPE_DEFAULT);
        v123 = v146;
        v125 = v141;
        fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_134:
        v128 = 0;
        v124 = geometryCopy;
        goto LABEL_115;
      }

LABEL_133:
      FigDebugAssert3();
      v135 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT);
      v123 = v146;
      v125 = v141;
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      goto LABEL_134;
    }

    [v65 floatValue];
    v67 = vcvts_n_u32_f32(exp2f(-v66), 8uLL);
    v68 = 1;
    v69 = 1;
LABEL_48:
    v71 = 0;
    input->bracketingExpRatio = v67;
    v70 = v65;
    goto LABEL_49;
  }

  v35 = 0;
  v36 = *MEMORY[0x1E69910D8];
  v37 = unsignedIntValue;
  v38 = unsignedIntValue2;
  if (v34 <= 1)
  {
    v39 = 1;
  }

  else
  {
    v39 = v34;
  }

  p_height = &input->faceInfo.rectArray[0].height;
  while (1)
  {
    v41 = [v32 objectAtIndexedSubscript:v35];
    v42 = [v41 mutableCopy];

    if (!v42)
    {
      FigDebugAssert3();
      v131 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v131, OS_LOG_TYPE_DEFAULT);
      v123 = v146;
      v125 = v141;
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      v124 = geometryCopy;
      goto LABEL_123;
    }

    v43 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v35];
    [v42 setObject:v43 forKeyedSubscript:@"Index"];

    v44 = [v42 objectForKeyedSubscript:v36];
    v45 = v44;
    if (!v44 || !CGRectMakeWithDictionaryRepresentation(v44, &rect))
    {
      break;
    }

    v46 = (rect.origin.y * v38);
    height = rect.size.height;
    v48 = (rect.size.width * v37);
    *(p_height - 3) = (rect.origin.x * v37);
    *(p_height - 2) = v46;
    *(p_height - 1) = v48;
    *p_height = (height * v38);

    ++v35;
    p_height += 4;
    if (v39 == v35)
    {
      goto LABEL_29;
    }
  }

  FigDebugAssert3();
  v132 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  os_log_type_enabled(v132, OS_LOG_TYPE_DEFAULT);
  v123 = v146;
  fig_log_call_emit_and_clean_up_after_send_and_compose();

  v124 = geometryCopy;
  v125 = v141;
LABEL_123:

  v128 = 0;
LABEL_115:

  return v128;
}

uint64_t __62__LTMExtractMetadataV1_extractFrom_toDriverInput_ltmGeometry___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 valueForKey:@"Rect"];
  if (!v6 || ([v5 valueForKey:@"Rect"], (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    FigDebugAssert3();
    v7 = 0;
LABEL_11:
    v10 = 0;
    goto LABEL_8;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v6, &rect) || !CGRectMakeWithDictionaryRepresentation(v7, &v12))
  {
    FigDebugAssert3();
    goto LABEL_11;
  }

  v8 = rect.size.width * rect.size.height;
  v9 = v12.size.width * v12.size.height;
  if (v8 <= v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

LABEL_8:

  return v10;
}

+ (void)extractRectanglesFrom:(id)from inputBufferRect:(id)rect validBufferRect:(id)bufferRect ltmGeometry:(id)geometry
{
  fromCopy = from;
  rectCopy = rect;
  bufferRectCopy = bufferRect;
  geometryCopy = geometry;
  if (+[LTMExtractMetadataV1 extractRectanglesFrom:inputBufferRect:validBufferRect:ltmGeometry:]::onceToken != -1)
  {
    +[LTMExtractMetadataV1 extractRectanglesFrom:inputBufferRect:validBufferRect:ltmGeometry:];
  }

  v11 = [bufferRectCopy objectForKeyedSubscript:@"X"];
  unsignedIntValue = [v11 unsignedIntValue];
  [geometryCopy inputTextureDownsampleRatio];
  v14 = v13;
  v15 = [bufferRectCopy objectForKeyedSubscript:@"Y"];
  unsignedIntValue2 = [v15 unsignedIntValue];
  [geometryCopy inputTextureDownsampleRatio];
  v18 = v17;
  v19 = [bufferRectCopy objectForKeyedSubscript:@"Width"];
  unsignedIntValue3 = [v19 unsignedIntValue];
  [geometryCopy inputTextureDownsampleRatio];
  v22 = v21;
  v23 = [bufferRectCopy objectForKeyedSubscript:@"Height"];
  unsignedIntValue4 = [v23 unsignedIntValue];
  [geometryCopy inputTextureDownsampleRatio];
  v26 = v25;

  if (rectCopy || (v78 = *MEMORY[0x1E695F050], v79 = *(MEMORY[0x1E695F050] + 16), CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent(), (CGRectIfPresent & FigCFDictionaryGetCGRectIfPresent() & 1) == 0))
  {
    [geometryCopy setDeepZoomOrigin:{0.0, 0.0}];
  }

  else
  {
    [geometryCopy setDeepZoomOrigin:v78];
    [geometryCopy inputTextureDownsampleRatio];
    v28 = *(&v79 + 1);
    v29 = v28 / *(&v79 + 1);
    *&v31 = v30 / v29;
    [geometryCopy setInputTextureDownsampleRatio:v31];
  }

  v32 = [fromCopy objectForKeyedSubscript:*MEMORY[0x1E6990DA0]];
  v33 = v32;
  v34 = (unsignedIntValue / v14);
  v35 = (unsignedIntValue2 / v18);
  v36 = (unsignedIntValue3 / v22);
  v37 = (unsignedIntValue4 / v26);
  v75 = v34;
  v38 = v35;
  v39 = v36;
  v40 = v37;
  if (v32)
  {
    v38 = v35;
    v39 = v36;
    v40 = v37;
    if (CGRectMakeWithDictionaryRepresentation(v32, &rect))
    {
      v41 = [fromCopy objectForKeyedSubscript:*MEMORY[0x1E69910C8]];
      unsignedIntValue5 = [v41 unsignedIntValue];

      v43 = [fromCopy objectForKeyedSubscript:*MEMORY[0x1E69910C0]];
      unsignedIntValue6 = [v43 unsignedIntValue];

      x = rect.origin.x;
      [geometryCopy deepZoomOrigin];
      v73 = v45;
      [geometryCopy inputTextureDownsampleRatio];
      v47 = v46;
      y = rect.origin.y;
      [geometryCopy deepZoomOrigin];
      v49 = v48;
      [geometryCopy inputTextureDownsampleRatio];
      v51 = v50;
      width = rect.size.width;
      [geometryCopy inputTextureDownsampleRatio];
      v53 = v52;
      height = rect.size.height;
      [geometryCopy inputTextureDownsampleRatio];
      v34 = round(-(v73 - x * unsignedIntValue5) / v47);
      v38 = round(-(v49 - y * unsignedIntValue6) / v51);
      v39 = round(width * unsignedIntValue5 / v53);
      v40 = round(height * unsignedIntValue6 / v55);
    }
  }

  [geometryCopy inputTextureSize];
  v57 = v56;
  [geometryCopy inputTextureSize];
  v59 = v57 / v58;
  *&v58 = v39 / v40;
  if (v59 <= *&v58)
  {
    v60 = v40 * v59;
    v61 = v40;
  }

  else
  {
    v60 = v39;
    v61 = v39 / v59;
  }

  if (v60 >= 16.0)
  {
    v62 = v60;
  }

  else
  {
    v62 = 16.0;
  }

  v63 = 8.0;
  if (v61 >= 16.0)
  {
    v64 = v60 < 16.0;
    if (fmax(v40 - v61, v39 - v62) > 2.0)
    {
      v64 = 1;
    }

    if (!v64)
    {
      v62 = v39;
      v61 = v40;
    }

    v63 = v61 * 0.5;
  }

  v65 = round(v62 * 0.5);
  v66 = round(v63);
  v67 = v65 + v65;
  v68 = v66 + v66;
  v69 = round((v34 + (v39 - (v65 + v65)) * 0.5) * 0.5);
  v70 = round((v38 + (v40 - v68) * 0.5) * 0.5);
  [geometryCopy setCropRect:v69 + v69 sourceRect:{v70 + v70, v67, v68, v75, v35, v36, v37}];
}

+ (int)extractAWBMetadataFromMetadata:(id)metadata validBufferRect:(id)rect toDriverInput:(sRefDriverInputs_SOFTISP *)input
{
  metadataCopy = metadata;
  rectCopy = rect;
  v8 = [metadataCopy objectForKeyedSubscript:@"SpatialCCMOutputMetadata"];
  if (![LTMExtractMetadataV1 getTileStatsRegion:metadataCopy validBufferRect:rectCopy toDriverInput:input])
  {
    FigDebugAssert3();
    v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v37 = -1;
    goto LABEL_27;
  }

  if (v8)
  {
    v9 = [v8 objectForKeyedSubscript:@"FdAWBChistMixFactor"];
    v10 = v9;
    if (v9 && (input->fdAWBChistMixFactor = [v9 intValue], objc_msgSend(v8, "objectForKeyedSubscript:", @"AwbColorspace"), v11 = objc_claimAutoreleasedReturnValue(), v10, v11) && (input->awbColorspace = objc_msgSend(v11, "unsignedCharValue"), objc_msgSend(v8, "objectForKeyedSubscript:", @"IsLEDMainFlashforAWB"), v12 = objc_claimAutoreleasedReturnValue(), v11, v12))
    {
      input->isLEDMainFlashforAWB = [v12 BOOLValue];
      v13 = [v8 objectForKeyedSubscript:@"AwbGainsSkinOnly"];
      v14 = v13;
      if (v13)
      {
        v15 = [v13 objectAtIndexedSubscript:0];
        *(&input->awbGains.b.v16 + 1) = [v15 intValue];

        v16 = [v14 objectAtIndexedSubscript:3];
        *(&input->awbGainsSkinOnly.gb.v16 + 1) = [v16 intValue];

        v17 = [v8 objectForKeyedSubscript:@"AwbGainsFlashProj"];

        if (v17)
        {
          v18 = [v17 objectAtIndexedSubscript:0];
          *(&input->awbGainsSkinOnly.b.v16 + 1) = [v18 intValue];

          v19 = [v17 objectAtIndexedSubscript:3];
          *(&input->awbGainsFlashProj.gb.v16 + 1) = [v19 intValue];

          v20 = [v8 objectForKeyedSubscript:@"FlashProjMixWeighting"];

          if (v20)
          {
            [v20 floatValue];
            input->flashProjMixWeighting = v21;
            goto LABEL_20;
          }

          FigDebugAssert3();
          v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
          v35 = rectCopy;
          fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_35:
          v37 = -1;
          goto LABEL_28;
        }
      }

      FigDebugAssert3();
      v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
      v35 = rectCopy;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      FigDebugAssert3();
      v12 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
      v35 = rectCopy;
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    goto LABEL_35;
  }

  v17 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990F40]];
  v20 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990F38]];
  v22 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990F28]];
  v23 = v22;
  if (v17)
  {
    v24 = v20 == 0;
  }

  else
  {
    v24 = 1;
  }

  if (v24 || v22 == 0)
  {
    input->fdAWBChistMixFactor = 0;
    v26 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990EF8]];
    *(&input->awbGains.b.v16 + 1) = [v26 unsignedShortValue];

    v27 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990EE8]];
    *(&input->awbGainsSkinOnly.gb.v16 + 1) = [v27 unsignedShortValue];
  }

  else
  {
    input->fdAWBChistMixFactor = [v17 unsignedIntValue];
    *(&input->awbGains.b.v16 + 1) = [v20 unsignedShortValue];
    *(&input->awbGainsSkinOnly.gb.v16 + 1) = [v23 unsignedShortValue];
  }

LABEL_20:
  v28 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990EF8]];
  *(&input->isLEDMainFlashforAWB + 1) = [v28 unsignedShortValue];

  v29 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990EE8]];
  *(&input->awbGains.gb.v16 + 1) = [v29 unsignedShortValue];

  flashMixPercentage = input->flashMixPercentage;
  bzero(flashMixPercentage, 0x400uLL);
  v31 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6991010]];
  v32 = v31;
  if (!v31)
  {
    v37 = 0;
LABEL_27:
    v35 = rectCopy;
    goto LABEL_28;
  }

  bytes = [v31 bytes];
  v34 = 0;
  v35 = rectCopy;
  do
  {
    for (i = 0; i != 16; ++i)
    {
      flashMixPercentage[i] = *(bytes + i * 2);
    }

    ++v34;
    bytes += 64;
    flashMixPercentage += 16;
  }

  while (v34 != 16);

  v37 = 0;
LABEL_28:

  return v37;
}

+ (BOOL)getTileStatsRegion:(id)region validBufferRect:(id)rect toDriverInput:(sRefDriverInputs_SOFTISP *)input
{
  regionCopy = region;
  rectCopy = rect;
  if (+[LTMExtractMetadataV1 getTileStatsRegion:validBufferRect:toDriverInput:]::onceToken != -1)
  {
    +[LTMExtractMetadataV1 getTileStatsRegion:validBufferRect:toDriverInput:];
  }

  v49 = rectCopy;
  if (regionCopy)
  {
    v9 = [regionCopy objectForKeyedSubscript:@"SpatialCCMOutputMetadata"];
    v10 = [rectCopy objectForKeyedSubscript:@"Width"];
    intValue = [v10 intValue];

    v11 = [rectCopy objectForKeyedSubscript:@"Height"];
    intValue2 = [v11 intValue];

    v12 = [rectCopy objectForKeyedSubscript:@"X"];
    intValue3 = [v12 intValue];

    v14 = [rectCopy objectForKeyedSubscript:@"Y"];
    v48 = v9;
    intValue4 = [v14 intValue];

    v16 = *MEMORY[0x1E69910C8];
    v17 = [regionCopy objectForKeyedSubscript:*MEMORY[0x1E69910C8]];
    width = [v17 unsignedIntValue];

    v19 = *MEMORY[0x1E69910C0];
    v20 = [regionCopy objectForKeyedSubscript:*MEMORY[0x1E69910C0]];
    height = [v20 unsignedIntValue];

    v22 = [regionCopy objectForKeyedSubscript:*MEMORY[0x1E6991148]];
    v23 = v22;
    if (v22 && CGRectMakeWithDictionaryRepresentation(v22, &rect))
    {
      width = rect.size.width;
      height = rect.size.height;
    }

    v24 = [regionCopy objectForKeyedSubscript:*MEMORY[0x1E6990DA0]];
    v25 = v24;
    if (v24 && CGRectMakeWithDictionaryRepresentation(v24, &v52))
    {
      v26 = [regionCopy objectForKeyedSubscript:v16];
      unsignedIntValue = [v26 unsignedIntValue];

      v28 = [regionCopy objectForKeyedSubscript:v19];
      unsignedIntValue2 = [v28 unsignedIntValue];

      intValue2 = (v52.size.height * unsignedIntValue2);
      intValue = (v52.size.width * unsignedIntValue);
      intValue3 = (v52.origin.x * unsignedIntValue);
      intValue4 = (v52.origin.y * unsignedIntValue2);
    }

    v30 = sqrtf((height * width) / 199580.0);
    if (v30 <= 8.0 || v30 > 12.0)
    {
      if (v30 <= 12.0)
      {
        v32 = 8;
      }

      else
      {
        v32 = 16;
      }
    }

    else
    {
      v32 = 12;
    }

    v33 = (intValue3 / v32);
    v34 = (intValue4 / v32);
    v35 = (intValue / v32);
    v36 = (intValue2 / v32);
    v37 = v35 * 0.975 * 0.03125;
    if (v37 < 2.0)
    {
      v37 = 2.0;
    }

    v38 = v36 * 0.975 * 0.03125;
    if (v38 < 2.0)
    {
      v38 = 2.0;
    }

    v39 = v38;
    v40 = (32 * v37 + 32) & 0x1FFFC0;
    v41 = v33 + floor((v35 - v40) * 0.25) * 2.0;
    if (v41 < 0.0)
    {
      v41 = 0.0;
    }

    v42 = v32;
    input->tileStatsRegion.x = (v41 * v32);
    v43 = ((32 * v39 + 32) & 0x1FFFC0);
    v44 = v34 + floor((v36 - v43) * 0.25) * 2.0;
    if (v44 < 0.0)
    {
      v44 = 0.0;
    }

    input->tileStatsRegion.y = (v44 * v42);
    v45 = v33 + v35;
    if (v45 > v40)
    {
      v45 = v40;
    }

    input->tileStatsRegion.width = (v45 * v42);
    v46 = v34 + v36;
    if (v34 + v36 > v43)
    {
      v46 = ((32 * v39 + 32) & 0x1FFFC0);
    }

    input->tileStatsRegion.height = (v46 * v42);

    rectCopy = v49;
  }

  else
  {
    FigDebugAssert3();
  }

  return regionCopy != 0;
}

- (float)extractHRGainDownRatioFrom:(id)from
{
  fromCopy = from;
  v4 = 1.0;
  if ([fromCopy cmi_BOOLValueForKey:*MEMORY[0x1E6991038] defaultValue:0 found:0])
  {
    v5 = [fromCopy objectForKeyedSubscript:*MEMORY[0x1E6991040]];
    v6 = v5;
    if (v5)
    {
      v4 = vcvts_n_f32_u32([v5 unsignedShortValue], 0xCuLL);
    }

    else
    {
      FigDebugAssert3();
      v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v4;
}

+ (BOOL)extractCCMFromMetadata:(id)metadata toDriverInput:(sRefDriverInputs_SOFTISP *)input
{
  metadataCopy = metadata;
  v6 = [metadataCopy objectForKeyedSubscript:*MEMORY[0x1E6990F98]];
  v7 = v6;
  if (v6 && (v8 = [v6 bytes], v9 = objc_msgSend(v7, "length"), v8) && v9 == 36)
  {
    for (i = 0; i != 9; ++i)
    {
      input->ccm.coeff[i].v16 = vcvts_n_s32_f32(*(v8 + 4 * i), 0xCuLL);
    }

    v11 = 1;
  }

  else
  {
    FigDebugAssert3();
    v12 = 0;
    v13 = xmmword_1C932FAF0;
    v14 = &input->ccm.coeff[1];
    v15 = vdupq_n_s64(9uLL);
    v16 = vdupq_n_s64(2uLL);
    do
    {
      if (vmovn_s64(vcgtq_u64(v15, v13)).u8[0])
      {
        v14[-1].v16 = (v12 / 3u == v12 % 3u) << 12;
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(9uLL), *&v13)).i32[1])
      {
        v14->v16 = ((v12 | 1u) / 3 == (v12 | 1u) % 3) << 12;
      }

      v12 += 2;
      v13 = vaddq_s64(v13, v16);
      v14 += 2;
    }

    while (v12 != 10);
    v11 = 0;
  }

  return v11;
}

@end