@interface LTMExtractMetadataV2
+ (BOOL)extractCCMFromMetadata:(id)a3 toDriverInput:(sRefDriverInputs_SOFTISP *)a4;
+ (BOOL)getTileStatsRegion:(id)a3 validBufferRect:(id)a4 ltmGeometryData:(id)a5 toDriverInput:(sRefDriverInputs_SOFTISP *)a6;
+ (int)extractAWBMetadataFromMetadata:(id)a3 validBufferRect:(id)a4 ltmGeometryData:(id)a5 toDriverInput:(sRefDriverInputs_SOFTISP *)a6;
+ (void)extractRectanglesFrom:(id)a3 inputBufferRect:(id)a4 validBufferRect:(id)a5 ltmGeometry:(id)a6;
- (BOOL)extractFrom:(id)a3 toDriverInput:(sRefDriverInputs_SOFTISP *)a4 ltmGeometry:(id)a5;
- (LTMExtractMetadataV2)init;
- (float)extractHRGainDownRatioFrom:(id)a3;
@end

@implementation LTMExtractMetadataV2

- (LTMExtractMetadataV2)init
{
  if ([LTMExtractMetadataV2 init]::onceToken != -1)
  {
    [LTMExtractMetadataV2 init];
  }

  v8.receiver = self;
  v8.super_class = LTMExtractMetadataV2;
  v3 = [(LTMExtractMetadataV2 *)&v8 init];
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

- (BOOL)extractFrom:(id)a3 toDriverInput:(sRefDriverInputs_SOFTISP *)a4 ltmGeometry:(id)a5
{
  v7 = a3;
  v166 = a5;
  if ([LTMExtractMetadataV2 extractFrom:toDriverInput:ltmGeometry:]::onceToken != -1)
  {
    [LTMExtractMetadataV2 extractFrom:toDriverInput:ltmGeometry:];
  }

  v164 = v7;
  v169 = [v7 inMetaData];
  dict = [v7 validBufferRect];
  v159 = [v7 inputBufferRect];
  v8 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v8;
  v9 = [v169 objectForKeyedSubscript:*MEMORY[0x1E6991108]];
  v162 = [v9 intValue];

  v161 = [v169 objectForKeyedSubscript:*MEMORY[0x1E69910C8]];
  v10 = [v169 objectForKeyedSubscript:*MEMORY[0x1E69910C0]];
  v160 = v10;
  if (!v161 || !v10)
  {
    FigDebugAssert3();
    v150 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT);
    goto LABEL_141;
  }

  v11 = [v161 unsignedIntValue];
  v12 = [v160 unsignedIntValue];
  [v166 setRawSensorWidth:v11];
  [v166 setRawSensorHeight:v12];
  if (!dict)
  {
    goto LABEL_10;
  }

  v13 = [(__CFDictionary *)dict objectForKeyedSubscript:@"Width"];
  if (![v13 intValue])
  {

LABEL_10:
    v171[0] = @"X";
    v171[1] = @"Y";
    v172[0] = &unk_1F48E6618;
    v172[1] = &unk_1F48E6618;
    v171[2] = @"Width";
    v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v11];
    v172[2] = v16;
    v171[3] = @"Height";
    v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
    v172[3] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v172 forKeys:v171 count:4];

    dict = v18;
    goto LABEL_11;
  }

  v14 = [(__CFDictionary *)dict objectForKeyedSubscript:@"Height"];
  v15 = [v14 intValue];

  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_11:
  [v166 inputTextureSize];
  if (v19 == 0.0 || ([v166 inputTextureSize], v20 == 0.0))
  {
    FigDebugAssert3();
    v150 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT);
LABEL_141:
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    goto LABEL_143;
  }

  v21 = [(__CFDictionary *)dict objectForKeyedSubscript:@"Width"];
  [v21 floatValue];
  v23 = v22;
  v24 = [(__CFDictionary *)dict objectForKeyedSubscript:@"X"];
  [v24 floatValue];
  v26 = v25;
  [v166 inputTextureSize];
  v28 = (v23 + (v26 * 2.0)) / v27;
  *&v28 = v28;
  [v166 setInputTextureDownsampleRatio:v28];

  if (!CGRectMakeWithDictionaryRepresentation(dict, &rect))
  {
    FigDebugAssert3();
    v145 = 0;
    goto LABEL_123;
  }

  [v166 inputTextureDownsampleRatio];
  [v166 inputTextureDownsampleRatio];
  width = rect.size.width;
  [v166 inputTextureDownsampleRatio];
  v31 = v30;
  height = rect.size.height;
  [v166 inputTextureDownsampleRatio];
  v34 = v33;
  [LTMExtractMetadataV2 extractRectanglesFrom:v169 inputBufferRect:v159 validBufferRect:dict ltmGeometry:v166];
  [v166 cropRect];
  v36 = v35;
  [v166 cropRect];
  v38 = v37;
  *&a4->faceInfo.primaryFaceIndex = 0;
  a4->faceInfo.rectArray[8] = 0u;
  a4->faceInfo.rectArray[9] = 0u;
  a4->faceInfo.rectArray[6] = 0u;
  a4->faceInfo.rectArray[7] = 0u;
  a4->faceInfo.rectArray[4] = 0u;
  a4->faceInfo.rectArray[5] = 0u;
  a4->faceInfo.rectArray[2] = 0u;
  a4->faceInfo.rectArray[3] = 0u;
  a4->faceInfo.rectArray[0] = 0u;
  a4->faceInfo.rectArray[1] = 0u;
  v39 = [v169 objectForKeyedSubscript:*MEMORY[0x1E6990FB8]];
  v167 = v39;
  if (v39 && ([v39 objectForKeyedSubscript:*MEMORY[0x1E6990E98]], (v40 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v168 = v40;
    v41 = [v40 objectForKeyedSubscript:*MEMORY[0x1E6990EC0]];
    v42 = v41;
    if (v41 && [v41 count])
    {
      v43 = [v42 count];
      v44 = v43 >= 0xA ? 10 : v43;
      a4->faceInfo.numFaces = v44;
      if (v43)
      {
        v45 = 0;
        v46 = width / v31;
        v47 = *MEMORY[0x1E69910D8];
        if (v44 <= 1)
        {
          v48 = 1;
        }

        else
        {
          v48 = v44;
        }

        p_height = &a4->faceInfo.rectArray[0].height;
        v50 = MEMORY[0x1E695EFD0];
        v51 = height / v34;
        while (1)
        {
          v52 = v42;
          v53 = [v42 objectAtIndexedSubscript:v45];
          v54 = [v53 mutableCopy];

          if (!v54)
          {
            FigDebugAssert3();
            v148 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();

            v151 = v167;
            goto LABEL_131;
          }

          v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v45];
          [v54 setObject:v55 forKeyedSubscript:@"Index"];

          v56 = [v54 objectForKeyedSubscript:v47];
          v57 = v56;
          if (!v56 || !CGRectMakeWithDictionaryRepresentation(v56, &v170))
          {
            break;
          }

          x = v170.origin.x;
          y = v170.origin.y;
          v60 = v170.size.width;
          v61 = v170.size.height;
          if (v162 == 2324)
          {
            v62 = v50[1];
            *&v173.a = *v50;
            *&v173.c = v62;
            *&v173.tx = v50[2];
          }

          else if (v166)
          {
            [v166 sensorSpaceToValidBufferSpaceTransform];
          }

          else
          {
            memset(&v173, 0, sizeof(v173));
          }

          v175.origin.x = x;
          v175.origin.y = y;
          v175.size.width = v60;
          v175.size.height = v61;
          v176 = CGRectApplyAffineTransform(v175, &v173);
          v63 = (v46 * v176.origin.x);
          v64 = (v51 * v176.origin.y);
          *(p_height - 3) = v63;
          *(p_height - 2) = v64;
          v65 = (v46 * v176.size.width);
          v66 = (v51 * v176.size.height);
          *(p_height - 1) = v65;
          *p_height = v66;
          if (v36 < v38)
          {
            *(p_height - 3) = v64;
            *(p_height - 2) = v63;
            *(p_height - 1) = v66;
            *p_height = v65;
          }

          ++v45;
          p_height += 4;
          v42 = v52;
          if (v48 == v45)
          {
            goto LABEL_37;
          }
        }

        FigDebugAssert3();
        v149 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();

        v151 = v167;
LABEL_131:

        goto LABEL_143;
      }
    }

LABEL_37:
    v67 = v42;
    v68 = [v42 sortedArrayUsingComparator:&__block_literal_global_33];
    v69 = v68;
    if (v68 && [v68 count])
    {
      v70 = [v69 objectAtIndexedSubscript:0];
      v71 = [v70 objectForKeyedSubscript:@"Index"];
      a4->faceInfo.primaryFaceIndex = [v71 intValue];
    }
  }

  else
  {
    v168 = 0;
  }

  a4->forceDisableFaceBoost = self->_forceDisableLTMFaceBoost;
  v72 = [v169 objectForKeyedSubscript:*MEMORY[0x1E6991158]];
  v73 = v72;
  if (!v72)
  {
    goto LABEL_142;
  }

  a4->gainDigi = [v72 intValue];
  v74 = [v169 objectForKeyedSubscript:*MEMORY[0x1E6991090]];

  if (!v74)
  {
    goto LABEL_142;
  }

  a4->luxLevel = [v74 intValue];
  v75 = [v169 objectForKeyedSubscript:*MEMORY[0x1E6990ED8]];

  if (!v75)
  {
    goto LABEL_142;
  }

  a4->gainAnal.v16 = [v75 unsignedShortValue];
  v76 = [v169 objectForKeyedSubscript:*MEMORY[0x1E6990FC8]];

  if (!v76)
  {
    goto LABEL_142;
  }

  [v76 doubleValue];
  a4->exposureTime = (v77 * 1000000.0);
  v78 = [v169 objectForKeyedSubscript:*MEMORY[0x1E6991170]];

  if (!v78)
  {
    goto LABEL_142;
  }

  a4->gainDigiSensor.v16 = [v78 unsignedShortValue];
  v79 = [v169 objectForKeyedSubscript:*MEMORY[0x1E69910F0]];
  v80 = [v79 BOOLValue];
  v81 = MEMORY[0x1E6990F88];
  v82 = MEMORY[0x1E69910E8];
  if (v80)
  {
  }

  else
  {
    v83 = [v164 isSIFR];

    if ((v83 & 1) == 0)
    {
      a4->bracketingMode = 15;
      v84 = [v169 objectForKeyedSubscript:*v81];

      if (v84)
      {
        [v84 floatValue];
        v92 = exp2f(-v91);
        v87 = 0;
        v88 = 0;
        v86 = vcvts_n_u32_f32(v92, 8uLL);
      }

      else
      {
        v87 = 0;
        v88 = 0;
        v86 = 256;
      }

      goto LABEL_56;
    }
  }

  a4->bracketingMode = 15;
  v84 = [v169 objectForKeyedSubscript:*v82];

  if (v84)
  {
    [v84 floatValue];
    v86 = vcvts_n_u32_f32(exp2f(-v85), 8uLL);
    v87 = 1;
    v88 = 1;
LABEL_56:
    v90 = 0;
    a4->bracketingExpRatio = v86;
    v89 = v84;
    goto LABEL_57;
  }

  v89 = 0;
  v87 = 1;
  v88 = 1;
  v90 = 1;
LABEL_57:
  a4->isSIFRFrame = v87;
  v93 = [v169 objectForKeyedSubscript:*MEMORY[0x1E6991038]];
  a4->HROn = [v93 BOOLValue];

  if (a4->HROn && !self->_forceDisableHR)
  {
    v95 = [v169 objectForKeyedSubscript:*MEMORY[0x1E6991040]];

    if (!v95)
    {
LABEL_142:
      FigDebugAssert3();
      v153 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v153, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      goto LABEL_143;
    }

    v94 = [v95 unsignedShortValue];
    v89 = v95;
  }

  else
  {
    v94 = 4096;
  }

  a4->hrGainDownRatio = v94;
  v96 = [v169 objectForKeyedSubscript:*MEMORY[0x1E6990FC0]];

  if (!v96)
  {
    goto LABEL_142;
  }

  [v96 floatValue];
  v98 = v97;
  if (v88)
  {
    v99 = [v169 objectForKeyedSubscript:*v82];
    [v99 floatValue];
    v98 = v98 - v100;
  }

  v101 = [v169 objectForKeyedSubscript:*v81];

  if (v101)
  {
    [v101 floatValue];
    v98 = v98 - v102;
  }

  a4->expBias = vcvts_n_s32_f32(exp2f(v98), 8uLL);
  v103 = [v169 objectForKeyedSubscript:*MEMORY[0x1E69910D0]];

  if (v103)
  {
    [v103 floatValue];
    a4->realizedExpBias = vcvts_n_s32_f32(v104, 8uLL);
  }

  else
  {
    v90 = 1;
  }

  v105 = [v169 objectForKeyedSubscript:*MEMORY[0x1E6990FD0]];

  if (v105)
  {
    [v105 floatValue];
    a4->ev0Ratio = vcvts_n_s32_f32(v106, 8uLL);
  }

  else
  {
    v90 = 1;
  }

  v107 = [v169 objectForKeyedSubscript:*MEMORY[0x1E69910A8]];
  if ([v107 isEqual:*MEMORY[0x1E6990CA0]])
  {
    v108 = 2;
  }

  else if ([v107 isEqual:*MEMORY[0x1E6990CA8]])
  {
    v108 = 2;
  }

  else
  {
    v108 = 0;
  }

  a4->channel = v108;
  v109 = [v169 objectForKeyedSubscript:*MEMORY[0x1E6991028]];
  a4->flashStatus = [v109 BOOLValue];

  a4->ltmProcMode = [v164 digitalFlash];
  v110 = [v169 objectForKeyedSubscript:*MEMORY[0x1E6990FE0]];

  if (v110)
  {
    [v110 floatValue];
    a4->faceExpRatioFiltered = v111;
  }

  else
  {
    v90 = 1;
  }

  if (self->_forceDisableLTMFaceExposureRatio)
  {
    a4->faceExpRatioFiltered = 1.0;
  }

  if (v90 && ![LTMExtractMetadataV2 extractFromRawMetadata:v169 toDriverInput:a4])
  {
    FigDebugAssert3();
    v152 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_143:
    v145 = 0;
    goto LABEL_123;
  }

  if (![LTMExtractMetadataV2 extractCCMFromMetadata:v169 toDriverInput:a4])
  {
    v156 = v158;
    LODWORD(v154) = 0;
    FigDebugAssert3();
  }

  v112 = [LTMExtractMetadataV2 isLocalCCMEnabled:a4, v154, v156];
  a4->useSpatialCCM = v112;
  if (v112)
  {
    v113 = [LTMExtractMetadataV2 extractAWBMetadataFromMetadata:v169 validBufferRect:dict ltmGeometryData:v166 toDriverInput:a4];
    if (v113)
    {
      a4->useSpatialCCM = 0;
      v157 = v158;
      LODWORD(v155) = v113;
      FigDebugAssert3();
    }
  }

  a4->overflowDGain = 256;
  a4->hdrRatio = 256;
  a4->panoExpRatio = 0;
  v114 = 1;
  a4->bLTMSingleFrameMode = 1;
  a4->isHLGMode = 0;
  a4->gammaCurve = 0;
  a4->useHighlightCompression = 0;
  a4->highlightCompressionGain = 1.0;
  if ((v88 & 1) == 0)
  {
    v115 = [v169 objectForKeyedSubscript:*MEMORY[0x1E6990E18]];
    [v115 floatValue];
    v114 = v116 < -1.0;
  }

  if ([v164 isAdaptiveHighlightCompressionEnabled])
  {
    v117 = v164;
    if (!a4->HROn)
    {
      a4->softIspDGain = a4->gainDigi * 0.0039062;
      p_softIspDGain = &a4->softIspDGain;
      a4->useAdaptiveHighlightCompression = 1;
      a4->hardIspDGain = 1.0;
      p_hardIspDGain = &a4->hardIspDGain;
      goto LABEL_108;
    }

    LOBYTE(forceDisableHR) = self->_forceDisableHR;
    a4->softIspDGain = a4->gainDigi * 0.0039062;
    p_softIspDGain = &a4->softIspDGain;
    a4->useAdaptiveHighlightCompression = 1;
    goto LABEL_95;
  }

  if (![v164 isHighlightCompressionEnabled] || !a4->HROn)
  {
    a4->softIspDGain = a4->gainDigi * 0.0039062;
    p_softIspDGain = &a4->softIspDGain;
    a4->hardIspDGain = 1.0;
    p_hardIspDGain = &a4->hardIspDGain;
LABEL_106:
    v117 = v164;
    goto LABEL_108;
  }

  v117 = v164;
  forceDisableHR = self->_forceDisableHR;
  if (forceDisableHR || v114)
  {
    a4->softIspDGain = a4->gainDigi * 0.0039062;
    p_softIspDGain = &a4->softIspDGain;
LABEL_95:
    *(p_softIspDGain - 1) = 1.0;
    p_hardIspDGain = p_softIspDGain - 1;
    if (forceDisableHR)
    {
      goto LABEL_108;
    }

    goto LABEL_96;
  }

  forceHighlightCompressionForEveryFrame = self->_forceHighlightCompressionForEveryFrame;
  a4->softIspDGain = a4->gainDigi * 0.0039062;
  p_softIspDGain = &a4->softIspDGain;
  a4->hardIspDGain = 1.0;
  p_hardIspDGain = &a4->hardIspDGain;
  if (!forceHighlightCompressionForEveryFrame)
  {
    goto LABEL_108;
  }

LABEL_96:
  AuxCompute_CalcExposureRatio(a4);
  if (!a4->useAdaptiveHighlightCompression)
  {
    a4->useHighlightCompression = 1;
    a4->highlightCompressionGain = 2.0;
    goto LABEL_106;
  }

  v122 = v121;
  hardIspDGain = a4->hardIspDGain;
  v124 = 1.0;
  v117 = v164;
  if (v114)
  {
    [v164 minimumAdaptiveHC_SIFR];
    v124 = v125;
  }

  [v164 adaptiveHCSlope];
  v127 = fmaxf(v124, fminf((v122 / hardIspDGain) / v126, 4.0));
  if (v127 > 1.0)
  {
    a4->useHighlightCompression = 1;
    a4->highlightCompressionGain = v127;
  }

LABEL_108:
  v128 = *p_softIspDGain;
  [v117 ispDGainThreshold];
  if (v128 > v129)
  {
    [v164 ispDGainThreshold];
    a4->hardIspDGain = (a4->gainDigi * 0.0039062) / v130;
    a4->softIspDGain = v130;
  }

  AuxCompute_CalcExposureRatio(a4);
  v132 = v131 / *p_hardIspDGain;
  if (v132 > 80.0)
  {
    v133 = *p_hardIspDGain * (v132 / 80.0);
    v134 = (a4->gainDigi * 0.0039062) / v133;
    a4->hardIspDGain = v133;
    a4->softIspDGain = v134;
  }

  AuxCompute_CalcExposureRatio(a4);
  a4->LTMHazeCorrectionOff = self->_forceDisableLTMHazeCorrection;
  a4->useBt709 = self->_forceUseBt709;
  if ([v164 doAdaptiveFaceBiasScaler])
  {
    v135 = a4->gainAnal.v16;
    v136 = a4->gainDigiSensor.v16;
    gainDigi = a4->gainDigi;
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

    v142 = (vcvts_n_f32_u32(v135, 8uLL) * vcvts_n_f32_u32(v136, 8uLL)) * (gainDigi * 0.0039062);
    if (v142 < faceBiasThreshold)
    {
      v144 = v167;
      v143 = v168;
      if (v142 <= faceBiasThresholdMin)
      {
        faceBiasScaler = faceBiasScalerMin;
      }

      else
      {
        faceBiasScaler = faceBiasScalerMin + (((faceBiasScaler - faceBiasScalerMin) / (faceBiasThreshold - faceBiasThresholdMin)) * (v142 - faceBiasThresholdMin));
      }

      goto LABEL_122;
    }
  }

  else
  {
    faceBiasScaler = 0.08;
  }

  v144 = v167;
  v143 = v168;
LABEL_122:
  *&a4[1].flashMixPercentage[400] = faceBiasScaler;
  a4->useHazeCorrection = 0;
  a4[1].flashMixPercentage[402] = 0;

  v145 = 1;
LABEL_123:

  return v145;
}

uint64_t __62__LTMExtractMetadataV2_extractFrom_toDriverInput_ltmGeometry___block_invoke_30(uint64_t a1, void *a2, void *a3)
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

+ (void)extractRectanglesFrom:(id)a3 inputBufferRect:(id)a4 validBufferRect:(id)a5 ltmGeometry:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (+[LTMExtractMetadataV2 extractRectanglesFrom:inputBufferRect:validBufferRect:ltmGeometry:]::onceToken != -1)
  {
    +[LTMExtractMetadataV2 extractRectanglesFrom:inputBufferRect:validBufferRect:ltmGeometry:];
  }

  v13 = MEMORY[0x1E695F050];
  v14 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v14;
  CGRectMakeWithDictionaryRepresentation(v11, &rect);
  [v12 inputTextureDownsampleRatio];
  [v12 inputTextureDownsampleRatio];
  [v12 inputTextureDownsampleRatio];
  [v12 inputTextureDownsampleRatio];
  [v12 inputTextureSize];
  v50 = v15;
  [v12 inputTextureSize];
  v17 = v16;
  if (v10)
  {
    [v12 setDeepZoomOrigin:{0.0, 0.0}];
    LODWORD(v18) = 1.0;
    [v12 setDeepZoomRatio:v18];
  }

  else
  {
    v19 = v13[1];
    v51 = *v13;
    v52 = v19;
    v54[3] = v51;
    v55 = v19;
    CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
    if (CGRectIfPresent & FigCFDictionaryGetCGRectIfPresent())
    {
      [v12 setDeepZoomOrigin:v51];
      v21 = *(&v55 + 1);
      v22 = v21 / *(&v52 + 1);
      v23 = v22;
    }

    else
    {
      v23 = 1.0;
      [v12 setDeepZoomOrigin:{0.0, 0.0}];
    }

    *&v22 = v23;
    [v12 setDeepZoomRatio:v22];
  }

  FinalCropRect = GeometryUtilitiesGetFinalCropRect();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  [v12 inputTextureSize];
  v32 = v31;
  [v12 inputTextureSize];
  v34 = v33;
  [v12 inputTextureSize];
  v36 = v35;
  [v12 inputTextureSize];
  v37 = v50 / v17;
  v38 = v28 * v36;
  v40 = v30 * v39;
  *&v39 = v38 / (v30 * v39);
  if (v50 / v17 <= *&v39)
  {
    v41 = v37 * v40;
    v42 = v40;
  }

  else
  {
    v41 = v38;
    v42 = v38 / v37;
  }

  if (v41 >= 16.0)
  {
    v43 = v41;
  }

  else
  {
    v43 = 16.0;
  }

  v44 = 8.0;
  if (v42 >= 16.0)
  {
    v45 = v41 < 16.0;
    if (fmax(v40 - v42, v38 - v43) > 2.0)
    {
      v45 = 1;
    }

    if (!v45)
    {
      v43 = v38;
      v42 = v40;
    }

    v44 = v42 * 0.5;
  }

  [(GeometryUtilities *)v9 getTransformCropRectFromSensorCoordsToValidBufferCoordsWithMetadata:v54 validBufferRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v51 = v54[0];
  v52 = v54[1];
  v53 = v54[2];
  [v12 setSensorSpaceToValidBufferSpaceTransform:&v51];
  v46 = round(v43 * 0.5);
  v47 = round(v44);
  v48 = round((FinalCropRect * v32 + (v38 - (v46 + v46)) * 0.5) * 0.5);
  v49 = round((v26 * v34 + (v40 - (v47 + v47)) * 0.5) * 0.5);
  [v12 setCropRect:v48 + v48 sourceRect:v49 + v49];
}

+ (int)extractAWBMetadataFromMetadata:(id)a3 validBufferRect:(id)a4 ltmGeometryData:(id)a5 toDriverInput:(sRefDriverInputs_SOFTISP *)a6
{
  v9 = a3;
  v10 = a4;
  v41 = a5;
  v11 = [v9 objectForKeyedSubscript:@"SpatialCCMOutputMetadata"];
  if (![LTMExtractMetadataV2 getTileStatsRegion:v9 validBufferRect:v10 ltmGeometryData:v41 toDriverInput:a6])
  {
    goto LABEL_24;
  }

  if (v11)
  {
    v12 = [v11 objectForKeyedSubscript:@"FdAWBChistMixFactor"];
    v13 = v12;
    if (v12)
    {
      a6->fdAWBChistMixFactor = [v12 intValue];
      v14 = [v11 objectForKeyedSubscript:@"AwbColorspace"];

      if (v14)
      {
        a6->awbColorspace = [v14 unsignedCharValue];
        v15 = [v11 objectForKeyedSubscript:@"IsLEDMainFlashforAWB"];

        if (v15)
        {
          a6->isLEDMainFlashforAWB = [v15 BOOLValue];
          v16 = [v11 objectForKeyedSubscript:@"AwbGainsSkinOnly"];
          v17 = v16;
          if (v16)
          {
            v18 = [v16 objectAtIndexedSubscript:0];
            *(&a6->awbGains.b.v16 + 1) = [v18 intValue];

            v19 = [v17 objectAtIndexedSubscript:3];
            *(&a6->awbGainsSkinOnly.gb.v16 + 1) = [v19 intValue];

            v20 = [v11 objectForKeyedSubscript:@"AwbGainsFlashProj"];

            if (v20)
            {
              v21 = [v20 objectAtIndexedSubscript:0];
              *(&a6->awbGainsSkinOnly.b.v16 + 1) = [v21 intValue];

              v22 = [v20 objectAtIndexedSubscript:3];
              *(&a6->awbGainsFlashProj.gb.v16 + 1) = [v22 intValue];

              v23 = [v11 objectForKeyedSubscript:@"FlashProjMixWeighting"];

              if (v23)
              {
                [v23 floatValue];
                a6->flashProjMixWeighting = v24;
                goto LABEL_16;
              }

              FigDebugAssert3();
              v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
              os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
              fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_30:
              v37 = -1;
              goto LABEL_23;
            }
          }

          FigDebugAssert3();
          v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_29:
          goto LABEL_30;
        }
      }
    }

LABEL_24:
    FigDebugAssert3();
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    goto LABEL_29;
  }

  v20 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6990F40]];
  v23 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6990F38]];
  v25 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6990F28]];
  v26 = v25;
  if (v20 && v23 && v25)
  {
    a6->fdAWBChistMixFactor = [v20 unsignedIntValue];
    *(&a6->awbGains.b.v16 + 1) = [v23 unsignedShortValue];
    *(&a6->awbGainsSkinOnly.gb.v16 + 1) = [v26 unsignedShortValue];
  }

  else
  {
    a6->fdAWBChistMixFactor = 0;
    v27 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6990EF8]];
    *(&a6->awbGains.b.v16 + 1) = [v27 unsignedShortValue];

    v28 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6990EE8]];
    *(&a6->awbGainsSkinOnly.gb.v16 + 1) = [v28 unsignedShortValue];
  }

LABEL_16:
  v29 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6990EF8]];
  *(&a6->isLEDMainFlashforAWB + 1) = [v29 unsignedShortValue];

  v30 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6990EE8]];
  *(&a6->awbGains.gb.v16 + 1) = [v30 unsignedShortValue];

  flashMixPercentage = a6->flashMixPercentage;
  bzero(flashMixPercentage, 0x400uLL);
  v32 = [v9 objectForKeyedSubscript:*MEMORY[0x1E6991010]];
  v33 = v32;
  if (v32)
  {
    v34 = [v32 bytes];
    for (i = 0; i != 16; ++i)
    {
      for (j = 0; j != 16; ++j)
      {
        flashMixPercentage[j] = *(v34 + j * 2);
      }

      v34 += 64;
      flashMixPercentage += 16;
    }
  }

  v37 = 0;
LABEL_23:

  return v37;
}

+ (BOOL)getTileStatsRegion:(id)a3 validBufferRect:(id)a4 ltmGeometryData:(id)a5 toDriverInput:(sRefDriverInputs_SOFTISP *)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v11;
  v13 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v13;
  if (!v9)
  {
    v26 = 0;
    FigDebugAssert3();
LABEL_8:
    v28 = 0;
    goto LABEL_5;
  }

  [v11 cropRect];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [v12 inputTextureDownsampleRatio];
  LODWORD(v23) = v22;
  v30 = 0;
  v24 = [AWBProcessor getTileStatsRegionWithMetadata:v9 cropRectLTMInCoords:&v30 ltmInDownsamplingRatio:v15 tileStatsRegionLTMInCoordsDictOut:v17, v19, v21, v23];
  v25 = v30;
  v26 = v25;
  if (v24 || !CGRectMakeWithDictionaryRepresentation(v25, &rect))
  {
    FigDebugAssert3();
    goto LABEL_8;
  }

  v27 = vmovn_s64(vcvtq_u64_f64(rect.size));
  *&a6->tileStatsRegion.x = vmovn_s64(vcvtq_s64_f64(rect.origin));
  *&a6->tileStatsRegion.width = v27;
  v28 = 1;
LABEL_5:

  return v28;
}

- (float)extractHRGainDownRatioFrom:(id)a3
{
  v3 = a3;
  v4 = 1.0;
  if ([v3 cmi_BOOLValueForKey:*MEMORY[0x1E6991038] defaultValue:0 found:0])
  {
    v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E6991040]];
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

+ (BOOL)extractCCMFromMetadata:(id)a3 toDriverInput:(sRefDriverInputs_SOFTISP *)a4
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E6990F98]];
  v7 = v6;
  if (v6 && (v8 = [v6 bytes], v9 = objc_msgSend(v7, "length"), v8) && v9 == 36)
  {
    for (i = 0; i != 9; ++i)
    {
      a4->ccm.coeff[i].v16 = vcvts_n_s32_f32(*(v8 + 4 * i), 0xCuLL);
    }

    v11 = 1;
  }

  else
  {
    FigDebugAssert3();
    v12 = 0;
    v13 = xmmword_1C932FAF0;
    v14 = &a4->ccm.coeff[1];
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