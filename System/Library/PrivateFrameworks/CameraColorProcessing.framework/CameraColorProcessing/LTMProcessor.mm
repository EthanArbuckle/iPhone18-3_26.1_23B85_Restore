@interface LTMProcessor
- (LTMProcessor)initWithCommandQueue:(id)queue;
- (id)_applyGlobalCCM:(__n128)m globalCCM:(__n128)cM;
- (id)_compressHighlight:(id)highlight;
- (id)_dehaze:(id)_dehaze hazeValues:;
- (id)createIntermediateRGBAMetalTexture:(id)texture width:(unint64_t)width height:(unint64_t)height;
- (id)createLTMInTextureFromLuma:(id)luma chroma:(id)chroma;
- (id)createLTMInTextureFromRGBAFloatTex:(id)tex undoScaleDown:(float)down;
- (id)generateLinearRGBATexture:(float)texture;
- (int)createShaders:(id)shaders;
- (int)getLTMTuningFromTuningParams:(LTMTuning *)params from:(id)from;
- (int)prepareToProcess:(unsigned int)process;
- (int)process;
- (int)purgeResources;
- (int)resetState;
- (int)setDehazeTuningParamsFrom:(id)from;
- (int)setLTMComputeTuningParams:(sRefDriverInputs_SOFTISP *)params from:(id)from;
- (int)setLTMTuningParamsFrom:(id)from;
- (void)_prepareHighlightCompressionCurve;
- (void)_readDefaultsDehaze;
- (void)_readDefaultsLTMparam;
- (void)process;
@end

@implementation LTMProcessor

- (LTMProcessor)initWithCommandQueue:(id)queue
{
  queueCopy = queue;
  FigKTraceInit();
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v22.receiver = self;
  v22.super_class = LTMProcessor;
  v6 = [(LTMProcessor *)&v22 init];
  if (v6)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();
    fig_note_initialize_category_with_default_work_cf();
    v7 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    if (v7)
    {
      v8 = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:v7 andOptionalCommandQueue:queueCopy];
      v9 = *(v6 + 1);
      *(v6 + 1) = v8;

      if (*(v6 + 1))
      {
        v10 = objc_alloc(MEMORY[0x1E6991750]);
        device = [*(v6 + 1) device];
        v12 = [v10 initWithDevice:device allocatorType:2];
        [*(v6 + 1) setAllocator:v12];

        allocator = [*(v6 + 1) allocator];

        if (allocator)
        {
          [v6 _readDefaultsMetalAllocator];
          v14 = objc_opt_new();
          v15 = *(v6 + 5188);
          *(v6 + 5188) = v14;

          if (*(v6 + 5188))
          {
            bzero(v6 + 32, 0x8F0uLL);
            *(v6 + 149) = 0u;
            *(v6 + 150) = 0u;
            *(v6 + 151) = 0u;
            *(v6 + 152) = 0u;
            *(v6 + 308) = 0;
            *(v6 + 153) = 0u;
            *(v6 + 148) = 0u;
            *(v6 + 147) = 0u;
            *(v6 + 146) = 0u;
            *(v6 + 145) = 0u;
            *(v6 + 298) = v6 + 2472;
            *(v6 + 299) = 0x228800000000;
            *(v6 + 300) = v6 + 11312;
            *(v6 + 301) = 0x618000000000;
            *(v6 + 302) = v6 + 36272;
            *(v6 + 303) = 0x100000000000;
            *(v6 + 304) = v6 + 40368;
            *(v6 + 305) = 0x40000000000;
            if ([v6 createShaders:*(v6 + 1)])
            {
              [LTMProcessor initWithCommandQueue:];
            }

            else
            {
              v16 = [[HazeEstimation alloc] initWithMetalContext:*(v6 + 1)];
              v17 = *(v6 + 5181);
              *(v6 + 5181) = v16;

              if (*(v6 + 5181))
              {
                v18 = [[AdaptiveGain alloc] initWithMetalContext:*(v6 + 1)];
                v19 = *(v6 + 5183);
                *(v6 + 5183) = v18;

                if (*(v6 + 5183))
                {

                  v6[41472] = 0;
                  *(v6 + 41458) = 0;
                  *(v6 + 41476) = 0x408000003F7FBE77;
                  v20 = v6;
                  goto LABEL_12;
                }

                [LTMProcessor initWithCommandQueue:];
              }

              else
              {
                [LTMProcessor initWithCommandQueue:];
              }
            }
          }

          else
          {
            [LTMProcessor initWithCommandQueue:];
          }
        }

        else
        {
          [LTMProcessor initWithCommandQueue:];
        }
      }

      else
      {
        [LTMProcessor initWithCommandQueue:];
      }
    }

    else
    {
      [LTMProcessor initWithCommandQueue:];
    }
  }

  else
  {
    [LTMProcessor initWithCommandQueue:];
    v7 = 0;
  }

  if (*v5 == 1)
  {
    kdebug_trace();
  }

  v20 = 0;
LABEL_12:

  return v20;
}

- (int)createShaders:(id)shaders
{
  v4 = &self->globalFaceHistStat[148];
  v5 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftLTM::ltmDownsampleYCbCrToRGB" constants:0];
  v6 = *(v4 + 54);
  *(v4 + 54) = v5;

  if (*(v4 + 54))
  {
    v7 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftLTM::ltmDownsampleRGBAFloatToRGB" constants:0];
    v8 = *(v4 + 55);
    *(v4 + 55) = v7;

    if (*(v4 + 55))
    {
      v9 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftLTM::ltmCompressHighlight" constants:0];
      v10 = *(v4 + 56);
      *(v4 + 56) = v9;

      if (*(v4 + 56))
      {
        v11 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftLTM::ltmDehaze" constants:0];
        v12 = *(v4 + 57);
        *(v4 + 57) = v11;

        if (*(v4 + 57))
        {
          v13 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftLTM::ltmApplyGlobalCCM" constants:0];
          v14 = *(v4 + 58);
          *(v4 + 58) = v13;

          if (*(v4 + 58))
          {
            return 0;
          }

          [LTMProcessor createShaders:];
        }

        else
        {
          [LTMProcessor createShaders:];
        }
      }

      else
      {
        [LTMProcessor createShaders:];
      }
    }

    else
    {
      [LTMProcessor createShaders:];
    }
  }

  else
  {
    [LTMProcessor createShaders:];
  }

  return -1;
}

- (int)purgeResources
{
  v3 = &self->globalFaceHistStat[148];
  allocator = [(FigMetalContext *)self->_metalContext allocator];
  [allocator reset];

  if (!*(v3 + 69))
  {
    allocator2 = [(FigMetalContext *)self->_metalContext allocator];
    [allocator2 purgeResources];
  }

  self->_allocatorSetupComplete = 0;
  [*(v3 + 61) releaseTextures];
  [*(v3 + 63) releaseTextures];
  [*(v3 + 68) releaseTextures];
  return 0;
}

- (int)resetState
{
  self->_enableAdaptiveGain = 0;
  *&self->_enableDualLTC = 0;
  return 0;
}

- (int)prepareToProcess:(unsigned int)process
{
  if (self->_allocatorSetupComplete)
  {
    return 0;
  }

  v5 = objc_opt_new();
  if (v5)
  {
    v6 = v5;
    [v5 setWireMemory:1];
    [v6 setResourceOptions:512];
    [v6 setLabel:@"FigMetalAllocator_SoftLTM"];
    externalMemoryResource = self->_externalMemoryResource;
    if (externalMemoryResource)
    {
      allocatorBackend = [(CMIExternalMemoryResource *)externalMemoryResource allocatorBackend];
      v9 = allocatorBackend;
      if (allocatorBackend)
      {
        [v6 setMemSize:{objc_msgSend(allocatorBackend, "memSize")}];
        allocator = [(FigMetalContext *)self->_metalContext allocator];
        v11 = [allocator setupWithDescriptor:v6 allocatorBackend:v9];

        if (!v11)
        {

LABEL_12:
          self->_allocatorSetupComplete = 1;

          return 0;
        }

        [LTMProcessor prepareToProcess:];
      }

      else
      {
        [LTMProcessor prepareToProcess:];
      }
    }

    else
    {
      if (self->_allocatorForceSize)
      {
        allocatorForceSize = self->_allocatorForceSize;
      }

      else
      {
        allocatorForceSize = 56180736;
      }

      [v6 setMemSize:allocatorForceSize];
      [v6 setWireMemory:self->_allocatorWireMemory];
      allocator2 = [(FigMetalContext *)self->_metalContext allocator];
      v14 = [allocator2 setupWithDescriptor:v6];

      if (!v14)
      {
        goto LABEL_12;
      }

      v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    [LTMProcessor prepareToProcess:];
  }

  return -1;
}

- (int)process
{
  v3 = &self->globalFaceHistStat[148];
  v119 = 0;
  v4 = [[LTMStats alloc] initWithMetalContext:self->_metalContext];
  v5 = MEMORY[0x1E695FF58];
  if (!v4)
  {
    [LTMProcessor process];
    goto LABEL_94;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
    if (*v5 == 1)
    {
      kdebug_trace();
    }
  }

  self->_anon_584[896] = 0;
  tuningParameters = [*(v3 + 68) tuningParameters];

  if (tuningParameters)
  {
    tuningParameters2 = [*(v3 + 68) tuningParameters];
    [(LTMProcessor *)self setLTMComputeTuningParams:&self->_driverInputMetadata.exposureTime from:tuningParameters2];

    tuningParameters3 = [*(v3 + 68) tuningParameters];
    [(LTMProcessor *)self setDehazeTuningParamsFrom:tuningParameters3];

    tuningParameters4 = [*(v3 + 68) tuningParameters];
    [(LTMProcessor *)self setLTMTuningParamsFrom:tuningParameters4];

    tuningParameters5 = [*(v3 + 68) tuningParameters];
    v11 = [tuningParameters5 objectForKeyedSubscript:@"Features"];

    if (v11)
    {
      *(v3 + 497) = [v11 cmi_BOOLValueForKey:@"EnableHazeEstimation" defaultValue:*(v3 + 497) found:0];
      [*(v3 + 68) setIsAdaptiveHighlightCompressionEnabled:{objc_msgSend(v11, "cmi_BOOLValueForKey:defaultValue:found:", @"EnableAdaptiveHighlightCompression", objc_msgSend(*(v3 + 68), "isAdaptiveHighlightCompressionEnabled"), 0)}];
      [*(v3 + 68) setIsHighlightCompressionEnabled:{objc_msgSend(v11, "cmi_BOOLValueForKey:defaultValue:found:", @"EnableHighlightCompression", objc_msgSend(*(v3 + 68), "isHighlightCompressionEnabled"), 0)}];
      [*(v3 + 68) setComputeHDRCurvesWoFaceBoost:{objc_msgSend(v11, "cmi_BOOLValueForKey:defaultValue:found:", @"ComputeHDRCurvesWoFaceBoost", objc_msgSend(*(v3 + 68), "computeHDRCurvesWoFaceBoost"), 0)}];
      v12 = [v11 cmi_intValueForKey:@"LTMAlgoVersion" defaultValue:1 found:0];
      if (v12 == 2)
      {
        *(v3 + 498) = 1;
        *(v3 + 499) = [v11 cmi_BOOLValueForKey:@"EnableCB" defaultValue:1 found:0];
        *(v3 + 500) = [v11 cmi_BOOLValueForKey:@"EnableFATE" defaultValue:1 found:0];
        *(v3 + 501) = [v11 cmi_BOOLValueForKey:@"EnableHiResLocalHistogram" defaultValue:0 found:0];
      }

      else
      {
        *(v3 + 498) = 0;
      }

      *(v3 + 512) = [v11 cmi_BOOLValueForKey:@"EnableAdaptiveGain" defaultValue:v12 == 2 found:0];
    }
  }

  [(LTMProcessor *)self _readDefaultsLTMparam];
  [(LTMProcessor *)self _printDefaultsLTMparam];
  [(LTMProcessor *)self _readDefaultsDehaze];
  if (*(v3 + 497) == 1)
  {
    doHazeEstimation = [*(v3 + 68) doHazeEstimation];
  }

  else
  {
    doHazeEstimation = 0;
  }

  [*(v3 + 68) setDoHazeEstimation:doHazeEstimation];
  if (*(v3 + 498) == 1)
  {
    v14 = objc_opt_new();
    v15 = *(v3 + 60);
    *(v3 + 60) = v14;

    if (!*(v3 + 60))
    {
      [LTMProcessor process];
LABEL_91:
      v103 = 0;
      v34 = 0;
      compute = 0;
      goto LABEL_92;
    }
  }

  else
  {
    v16 = objc_opt_new();
    v17 = *(v3 + 60);
    *(v3 + 60) = v16;

    if (!*(v3 + 60))
    {
      [LTMProcessor process];
      goto LABEL_91;
    }
  }

  inRGBImageUInt16Tex = [*(v3 + 68) inRGBImageUInt16Tex];

  v19 = *(v3 + 68);
  if (inRGBImageUInt16Tex)
  {
    inRGBImageUInt16Tex2 = [v19 inRGBImageUInt16Tex];
    v119 = inRGBImageUInt16Tex2;
    FigMetalIncRef();
    if (!inRGBImageUInt16Tex2)
    {
      goto LABEL_84;
    }
  }

  else
  {
    [v19 inRGBAFloatTex];

    v22 = 1.0;
    if ([*(v3 + 68) undoHRGainDownRatio])
    {
      v23 = *(v3 + 60);
      inMetaData = [*(v3 + 68) inMetaData];
      [v23 extractHRGainDownRatioFrom:inMetaData];
      v22 = v25;
    }

    *&v21 = v22;
    inRGBImageUInt16Tex2 = [(LTMProcessor *)self generateLinearRGBATexture:v21];
    v119 = inRGBImageUInt16Tex2;
    if (!inRGBImageUInt16Tex2)
    {
      goto LABEL_84;
    }
  }

  if ((FigMetalIsValid() & 1) == 0)
  {
LABEL_84:
    [LTMProcessor process];
    goto LABEL_91;
  }

  if (*(v3 + 498) == 1)
  {
    v26 = -[LTMGeometryDataV2 initWithInputTextureWidth:height:]([LTMGeometryDataV2 alloc], "initWithInputTextureWidth:height:", [inRGBImageUInt16Tex2 width], objc_msgSend(inRGBImageUInt16Tex2, "height"));
    v27 = *(v3 + 59);
    *(v3 + 59) = v26;

    if (!*(v3 + 59))
    {
      [LTMProcessor process];
LABEL_94:
      v103 = 0;
LABEL_95:
      v34 = 0;
LABEL_104:
      compute = 0;
      goto LABEL_80;
    }
  }

  else
  {
    v28 = -[LTMGeometryDataV1 initWithInputTextureWidth:height:]([LTMGeometryDataV1 alloc], "initWithInputTextureWidth:height:", [inRGBImageUInt16Tex2 width], objc_msgSend(inRGBImageUInt16Tex2, "height"));
    v29 = *(v3 + 59);
    *(v3 + 59) = v28;

    if (!*(v3 + 59))
    {
      [LTMProcessor process];
      goto LABEL_94;
    }
  }

  if (([*(v3 + 60) extractFrom:*(v3 + 68) toDriverInput:&self->_driverInputMetadata.exposureTime ltmGeometry:?] & 1) == 0)
  {
    [LTMProcessor process];
    goto LABEL_94;
  }

  if ([*(v3 + 68) doGlobalCCM])
  {
    v30.i32[0] = self->_driverInputMetadata.ccm.coeff[2].v16;
    v30.i32[1] = self->_driverInputMetadata.ccm.coeff[3].v16;
    v31 = vdup_n_s32(0x39800000u);
    *&v32 = vcvts_n_f32_s32(self->_driverInputMetadata.ccm.coeff[5].v16, 0xCuLL);
    HIDWORD(v32) = vcvts_n_f32_s32(self->_driverInputMetadata.ccm.coeff[6].v16, 0xCuLL);
    v33.i32[0] = self->_driverInputMetadata.ccm.coeff[8].v16;
    v33.i32[1] = *&self->_driverInputMetadata.isLEDMainFlashforAWB;
    v34 = [(LTMProcessor *)self _applyGlobalCCM:inRGBImageUInt16Tex2 globalCCM:COERCE_DOUBLE(vmul_f32(vcvt_f32_s32(v30), v31)), v32, COERCE_DOUBLE(vmul_f32(vcvt_f32_s32(v33), v31))];
    if (!v34)
    {
      [LTMProcessor process];
LABEL_103:
      v103 = 0;
      goto LABEL_104;
    }

    FigMetalDecRef();
    v35 = v119;
    v119 = v34;
  }

  hazeEstimation = [*(v3 + 68) hazeEstimation];

  if (!hazeEstimation)
  {
    if (![*(v3 + 68) doHazeEstimation])
    {
      goto LABEL_58;
    }

    if (*v5 == 1)
    {
      kdebug_trace();
    }

    v44 = *&self->_driverInputMetadata.expBias;
    hazeProperties = [*(v3 + 61) hazeProperties];
    LODWORD(v46) = v44;
    [hazeProperties setIspRes:v46];

    [*(v3 + 68) evmExpRatio];
    v48 = v47;
    hazeProperties2 = [*(v3 + 61) hazeProperties];
    LODWORD(v50) = v48;
    [hazeProperties2 setEvmExpRatio:v50];

    [*(v3 + 61) setInputRGBTexture:v119];
    [*(v3 + 61) setHazeValue:0.0];
    calcGlobalHistOnROI = [*(v3 + 68) calcGlobalHistOnROI];
    v52 = *(v3 + 59);
    if (calcGlobalHistOnROI)
    {
      [v52 cropRect];
      v54 = v53;
      [*(v3 + 59) cropRect];
      v56 = v55;
      [*(v3 + 59) cropRect];
      v58 = v57;
      [*(v3 + 59) cropRect];
      v60 = v58 + v59;
      [*(v3 + 59) cropRect];
      v62 = v61;
      [*(v3 + 59) cropRect];
    }

    else
    {
      [v52 sourceRect];
      v54 = v64;
      [*(v3 + 59) sourceRect];
      v56 = v65;
      [*(v3 + 59) sourceRect];
      v67 = v66;
      [*(v3 + 59) sourceRect];
      v60 = v67 + v68;
      [*(v3 + 59) sourceRect];
      v62 = v69;
      [*(v3 + 59) sourceRect];
    }

    [*(v3 + 61) setHazeROI:{v54 | (v56 << 32), v60 | ((v62 + v63) << 32)}];
    v70 = [*(v3 + 61) run];
    if (v70)
    {
      v107 = v70;
      [LTMProcessor process];
      goto LABEL_101;
    }

    [*(v3 + 61) hazeValue];
    v115 = v71;
    [*(v3 + 61) hazeValue];
    v112 = v72;
    [*(v3 + 61) hazeValue];
    v74 = v115;
    v74.i32[1] = v112;
    v74.i32[2] = v73;
    self->_anon_584[3] = 1;
    if (self->_anon_584[0] != 1)
    {
      v116 = v74;
      [*(v3 + 68) evmExpRatio];
      if (v75 != 0.0)
      {
        [*(v3 + 68) evmExpRatio];
        if (v76 > 0.00000011921)
        {
          [*(v3 + 68) evmExpRatio];
          v74.i64[0] = v116.i64[0];
          *&self->_anon_584[16] = vdivq_f32(v116, vdupq_lane_s32(v77, 0));
LABEL_53:
          if (*(v3 + 496) == 1)
          {
            v34 = [(LTMProcessor *)self _dehaze:v119 hazeValues:*v74.i64];
            if (!v34)
            {
              [LTMProcessor process];
              goto LABEL_103;
            }

            FigMetalDecRef();
            v78 = v119;
            v119 = v34;
          }

          if (*v5 == 1)
          {
            kdebug_trace();
          }

          goto LABEL_58;
        }
      }

      v74 = v116;
    }

    *&self->_anon_584[16] = v74;
    goto LABEL_53;
  }

  v37 = 0;
  v38 = 0uLL;
  do
  {
    v113 = v38;
    hazeEstimation2 = [*(v3 + 68) hazeEstimation];
    v40 = [hazeEstimation2 objectAtIndexedSubscript:v37];
    [v40 floatValue];
    v117 = v113;
    *(&v117 & 0xFFFFFFFFFFFFFFF3 | (4 * (v37 & 3))) = v41;
    v42 = v117;
    v111 = v117;
    HIDWORD(v42) = HIDWORD(v113);
    v114 = v42;

    ++v37;
    v38 = v114;
  }

  while (v37 != 3);
  self->_anon_584[3] = 1;
  *&self->_anon_584[16] = v111;
  if (v3[124])
  {
    v34 = [(LTMProcessor *)self _dehaze:v119 hazeValues:?];
    if (!v34)
    {
      [LTMProcessor process];
      goto LABEL_103;
    }

    FigMetalDecRef();
    v43 = v119;
    v119 = v34;
  }

LABEL_58:
  if (LOBYTE(self->_driverInputMetadata.highlightCompressionGain) != 1)
  {
    goto LABEL_61;
  }

  v34 = [(LTMProcessor *)self _compressHighlight:v119];
  if (!v34)
  {
    [LTMProcessor process];
    goto LABEL_103;
  }

  FigMetalDecRef();
  v79 = v119;
  v119 = v34;

LABEL_61:
  if (*(v3 + 512) == 1)
  {
    [*(v3 + 63) setInputRGBTexture:v119];
    v118 = 0.0;
    *&v80 = fminf(fmaxf(*(v3 + 129), 0.0), 1.0);
    v81 = [*(v3 + 63) computeGain:&v118 withTargetRange:v80];
    if (v81)
    {
      v107 = v81;
      [LTMProcessor process];
      goto LABEL_101;
    }

    v82 = LODWORD(self->_driverInputMetadata.hardIspDGain) * 0.0039062;
    v83 = v118;
    v84 = *(v3 + 130);
    if (v84 >= v82)
    {
      v84 = LODWORD(self->_driverInputMetadata.hardIspDGain) * 0.0039062;
    }

    if (v118 >= v84)
    {
      v83 = v84;
    }

    if (v83 > self->_driverInputMetadata.softIspDGain)
    {
      self->_driverInputMetadata.softIspDGain = v83;
      *&self->_driverInputMetadata.expBias = v82 / v83;
    }
  }

  if (*v5 == 1)
  {
    kdebug_trace();
    if (*v5 == 1)
    {
      kdebug_trace();
    }
  }

  v85 = -[LTMProcessor _isOptimized:](self, "_isOptimized:", [*(v3 + 68) optimizationLevel]);
  v86 = v119;
  v87 = *(v3 + 59);
  enableAntiAliasing = [*(v3 + 68) enableAntiAliasing];
  calcGlobalHistOnROI2 = [*(v3 + 68) calcGlobalHistOnROI];
  BYTE2(v109) = *(v3 + 500);
  BYTE1(v109) = *(v3 + 498);
  LOBYTE(v109) = *(v3 + 501);
  v90 = [LTMStats startCalculateHITHStatistics:v4 ltmGeometry:"startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:" inputDriverMetadata:v86 optimized:v87 enableAntiAliasing:&self->_driverInputMetadata.exposureTime calcGlobalHistOnROI:v85 enhancedLocalHistogram:enableAntiAliasing enableDualLTC:calcGlobalHistOnROI2 enableFATE:v109 outputProcHITHStat:&self->_procHITHStat];
  if (!v90)
  {
    if (*(v3 + 498) == 1)
    {
      v91 = [LTMCurvesComputeV2 alloc];
      v92 = *(v3 + 59);
      digitalFlash = [*(v3 + 68) digitalFlash];
      computeHDRCurves = [*(v3 + 68) computeHDRCurves];
      computeCurvesWoFaceBoost = [*(v3 + 68) computeCurvesWoFaceBoost];
      computeHDRCurvesWoFaceBoost = [*(v3 + 68) computeHDRCurvesWoFaceBoost];
      WORD2(v110) = *(v3 + 499);
      BYTE3(v110) = *(v3 + 501);
      BYTE2(v110) = computeHDRCurvesWoFaceBoost;
      BYTE1(v110) = computeCurvesWoFaceBoost;
      LOBYTE(v110) = computeHDRCurves;
      v97 = [LTMCurvesComputeV2 initWith:v91 HITH:"initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:enhancedLocalHistogram:enableCB:enableFATE:" geometryData:&self->_driverInputMetadata.exposureTime statsObj:&self->_procHITHStat optimized:v92 digitalFlash:v4 computeHDRCurves:v85 computeCurvesWoFaceBoost:digitalFlash computeHDRCurvesWoFaceBoost:v110 enhancedLocalHistogram:? enableCB:? enableFATE:?];
    }

    else
    {
      v98 = [LTMCurvesComputeV1 alloc];
      v99 = *(v3 + 59);
      digitalFlash2 = [*(v3 + 68) digitalFlash];
      computeHDRCurves2 = [*(v3 + 68) computeHDRCurves];
      computeCurvesWoFaceBoost2 = [*(v3 + 68) computeCurvesWoFaceBoost];
      BYTE2(v110) = [*(v3 + 68) computeHDRCurvesWoFaceBoost];
      BYTE1(v110) = computeCurvesWoFaceBoost2;
      LOBYTE(v110) = computeHDRCurves2;
      v97 = [LTMCurvesComputeV1 initWith:v98 HITH:"initWith:HITH:geometryData:statsObj:optimized:digitalFlash:computeHDRCurves:computeCurvesWoFaceBoost:computeHDRCurvesWoFaceBoost:" geometryData:&self->_driverInputMetadata.exposureTime statsObj:&self->_procHITHStat optimized:v99 digitalFlash:v4 computeHDRCurves:v85 computeCurvesWoFaceBoost:digitalFlash2 computeHDRCurvesWoFaceBoost:v110];
    }

    v103 = v97;
    v5 = MEMORY[0x1E695FF58];
    if (v97)
    {
      compute = [(LTMCurvesComputeV2 *)v97 compute];
      inMetaData2 = [*(v3 + 68) inMetaData];
      v34 = [inMetaData2 mutableCopy];

      [v34 addEntriesFromDictionary:compute];
      [*(v3 + 68) setOutMetaData:v34];
      if (*v5 == 1)
      {
        kdebug_trace();
      }

      outMetaData = [*(v3 + 68) outMetaData];

      if (!outMetaData)
      {
        [LTMProcessor process];
LABEL_92:
        v107 = -1;
        goto LABEL_81;
      }

LABEL_80:
      v107 = 0;
      goto LABEL_81;
    }

    [LTMProcessor process];
    goto LABEL_95;
  }

  v107 = v90;
  [LTMProcessor process];
LABEL_101:
  v103 = 0;
  v34 = 0;
  compute = 0;
LABEL_81:
  if (*v5 == 1)
  {
    kdebug_trace();
  }

  FigMetalDecRef();
  [*(v3 + 61) releaseTextures];
  [*(v3 + 68) releaseTextures];

  return v107;
}

- (void)_readDefaultsLTMparam
{
  v3 = &self->globalFaceHistStat[148];
  [(LTMIBPParams *)self->_ltmParams setCalcGlobalHistOnROI:[(LTMIBPParams *)self->_ltmParams calcGlobalHistOnROI]];
  [*(v3 + 68) setEnableAntiAliasing:{objc_msgSend(*(v3 + 68), "enableAntiAliasing")}];
  [*(v3 + 68) setComputeHDRCurves:{objc_msgSend(*(v3 + 68), "computeHDRCurves")}];
  [*(v3 + 68) setComputeCurvesWoFaceBoost:{objc_msgSend(*(v3 + 68), "computeCurvesWoFaceBoost")}];
  [*(v3 + 68) setComputeHDRCurvesWoFaceBoost:{objc_msgSend(*(v3 + 68), "computeHDRCurvesWoFaceBoost")}];
  [*(v3 + 68) setIsHighlightCompressionEnabled:{objc_msgSend(*(v3 + 68), "isHighlightCompressionEnabled")}];
  [*(v3 + 68) setIsAdaptiveHighlightCompressionEnabled:{objc_msgSend(*(v3 + 68), "isAdaptiveHighlightCompressionEnabled")}];
  *(v3 + 496) = 1;
  [*(v3 + 68) setDoGlobalCCM:{objc_msgSend(*(v3 + 68), "doGlobalCCM")}];
  [*(v3 + 68) ispDGainThreshold];
  [*(v3 + 68) setIspDGainThreshold:?];
  [*(v3 + 68) adaptiveHCSlope];
  [*(v3 + 68) setAdaptiveHCSlope:?];
  [*(v3 + 68) minimumAdaptiveHC_SIFR];
  [*(v3 + 68) setMinimumAdaptiveHC_SIFR:?];
  *&self->_anon_584[692] = *&self->_anon_584[404];
  *&self->_anon_584[704] = *&self->_anon_584[416];
}

- (void)_readDefaultsDehaze
{
  hazeProperties = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties reluC1];
  v5 = v4;
  hazeProperties2 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v7) = v5;
  [hazeProperties2 setReluC1:v7];

  hazeProperties3 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties3 reluC2];
  v10 = v9;
  hazeProperties4 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v12) = v10;
  [hazeProperties4 setReluC2:v12];

  hazeProperties5 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties5 reluC3];
  v15 = v14;
  hazeProperties6 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v17) = v15;
  [hazeProperties6 setReluC3:v17];

  hazeProperties7 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties7 reluC4];
  v20 = v19;
  hazeProperties8 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v22) = v20;
  [hazeProperties8 setReluC4:v22];

  hazeProperties9 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties9 reluC5];
  v25 = v24;
  hazeProperties10 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v27) = v25;
  [hazeProperties10 setReluC5:v27];

  hazeProperties11 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties11 sr_min];
  v30 = v29;
  hazeProperties12 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v32) = v30;
  [hazeProperties12 setSr_min:v32];

  hazeProperties13 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties13 sr_var];
  v35 = v34;
  hazeProperties14 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v37) = v35;
  [hazeProperties14 setSr_var:v37];

  hazeProperties15 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties15 sr_pow];
  v40 = v39;
  hazeProperties16 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v42) = v40;
  [hazeProperties16 setSr_pow:v42];

  hazeProperties17 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties17 sr_sat];
  v45 = v44;
  hazeProperties18 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v47) = v45;
  [hazeProperties18 setSr_sat:v47];

  hazeProperties19 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties19 min_display_black];
  v50 = v49;
  hazeProperties20 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v52) = v50;
  [hazeProperties20 setMin_display_black:v52];

  hazeProperties21 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties21 haze_threshold_divider];
  v54 = v53;
  hazeProperties22 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v56) = v54;
  [hazeProperties22 setHaze_threshold_divider:v56];
}

- (id)generateLinearRGBATexture:(float)texture
{
  inLumaTex = [(LTMIBPParams *)self->_ltmParams inLumaTex];
  if (inLumaTex)
  {
    v6 = inLumaTex;
    inChromaTex = [(LTMIBPParams *)self->_ltmParams inChromaTex];

    if (inChromaTex)
    {
      inRGBAFloatTex = [(LTMIBPParams *)self->_ltmParams inRGBAFloatTex];

      if (!inRGBAFloatTex)
      {
        inLumaTex2 = [(LTMIBPParams *)self->_ltmParams inLumaTex];
        inChromaTex2 = [(LTMIBPParams *)self->_ltmParams inChromaTex];
        v11 = [(LTMProcessor *)self createLTMInTextureFromLuma:inLumaTex2 chroma:inChromaTex2];

        if (!v11)
        {
          [LTMProcessor generateLinearRGBATexture:];
        }

        goto LABEL_15;
      }

      [LTMProcessor generateLinearRGBATexture:];
LABEL_12:
      v11 = 0;
      goto LABEL_15;
    }
  }

  inRGBAFloatTex2 = [(LTMIBPParams *)self->_ltmParams inRGBAFloatTex];

  if (!inRGBAFloatTex2)
  {
    FigDebugAssert3();
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
    goto LABEL_11;
  }

  inLumaTex3 = [(LTMIBPParams *)self->_ltmParams inLumaTex];
  if (inLumaTex3)
  {

    goto LABEL_9;
  }

  inChromaTex3 = [(LTMIBPParams *)self->_ltmParams inChromaTex];

  if (inChromaTex3)
  {
LABEL_9:
    v15 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT);
LABEL_11:
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    goto LABEL_12;
  }

  inRGBAFloatTex3 = [(LTMIBPParams *)self->_ltmParams inRGBAFloatTex];
  *&v17 = texture;
  v11 = [(LTMProcessor *)self createLTMInTextureFromRGBAFloatTex:inRGBAFloatTex3 undoScaleDown:v17];

  if (!v11)
  {
    [LTMProcessor generateLinearRGBATexture:];
  }

LABEL_15:

  return v11;
}

- (id)createIntermediateRGBAMetalTexture:(id)texture width:(unint64_t)width height:(unint64_t)height
{
  allocator = [(FigMetalContext *)self->_metalContext allocator];
  newTextureDescriptor = [allocator newTextureDescriptor];

  if (newTextureDescriptor)
  {
    desc = [newTextureDescriptor desc];
    [desc setTextureType:2];

    desc2 = [newTextureDescriptor desc];
    [desc2 setWidth:width];

    desc3 = [newTextureDescriptor desc];
    [desc3 setHeight:height];

    desc4 = [newTextureDescriptor desc];
    [desc4 setUsage:3];

    desc5 = [newTextureDescriptor desc];
    [desc5 setPixelFormat:113];

    [newTextureDescriptor setLabel:0];
    allocator2 = [(FigMetalContext *)self->_metalContext allocator];
    v16 = [allocator2 newTextureWithDescriptor:newTextureDescriptor];

    if (!v16)
    {
      [LTMProcessor createIntermediateRGBAMetalTexture:width:height:];
    }
  }

  else
  {
    [LTMProcessor createIntermediateRGBAMetalTexture:width:height:];
    v16 = 0;
  }

  return v16;
}

- (id)createLTMInTextureFromLuma:(id)luma chroma:(id)chroma
{
  lumaCopy = luma;
  chromaCopy = chroma;
  v8 = chromaCopy;
  if (lumaCopy)
  {
    if (chromaCopy)
    {
      v9 = vcvtd_n_f64_u64([chromaCopy width] / 0x420uLL, 1uLL);
      if (v9 >= 1.0)
      {
        v10 = v9;
      }

      else
      {
        v10 = 1.0;
      }

      v25 = v10;
      v11 = -[LTMProcessor createIntermediateRGBAMetalTexture:width:height:](self, "createIntermediateRGBAMetalTexture:width:height:", @"ltmLinearRGB", ([v8 width] / v10), (objc_msgSend(v8, "height") / v10));
      if (!v11)
      {
        [LTMProcessor createLTMInTextureFromLuma:chroma:];
        goto LABEL_10;
      }

      commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
      commandBuffer = [commandQueue commandBuffer];

      if (commandBuffer)
      {
        computeCommandEncoder = [commandBuffer computeCommandEncoder];
        if (computeCommandEncoder)
        {
          v15 = computeCommandEncoder;
          [computeCommandEncoder setComputePipelineState:self->_ltmDownsampleYCbCrToRGB];
          [v15 setTexture:lumaCopy atIndex:0];
          [v15 setTexture:v8 atIndex:1];
          [v15 setTexture:v11 atIndex:2];
          [v15 setBytes:&v25 length:4 atIndex:0];
          threadExecutionWidth = [(MTLComputePipelineState *)self->_ltmDownsampleYCbCrToRGB threadExecutionWidth];
          v17 = [(MTLComputePipelineState *)self->_ltmDownsampleYCbCrToRGB maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
          v22[0] = [v11 width];
          v22[1] = [v11 height];
          v22[2] = 1;
          v21[0] = threadExecutionWidth;
          v21[1] = v17;
          v21[2] = 1;
          [v15 dispatchThreads:v22 threadsPerThreadgroup:v21];
          [v15 endEncoding];
          [commandBuffer commit];

          goto LABEL_10;
        }

        v24 = 0;
        v23 = 0;
        v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      else
      {
        v24 = 0;
        v23 = 0;
        v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }

    else
    {
      [LTMProcessor createLTMInTextureFromLuma:chroma:];
    }
  }

  else
  {
    [LTMProcessor createLTMInTextureFromLuma:chroma:];
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (id)createLTMInTextureFromRGBAFloatTex:(id)tex undoScaleDown:(float)down
{
  texCopy = tex;
  v7 = texCopy;
  downCopy = down;
  v23 = 1065353216;
  if (texCopy)
  {
    v8 = 1.0;
    if ([texCopy width] >= 0x841)
    {
      v23 = 0x40000000;
      v8 = 2.0;
      if ([v7 width] >> 1 >= 0x841)
      {
        v23 = 1082130432;
        v8 = 4.0;
      }
    }

    v9 = -[LTMProcessor createIntermediateRGBAMetalTexture:width:height:](self, "createIntermediateRGBAMetalTexture:width:height:", @"ltmLinearRGB", ([v7 width] / v8), (objc_msgSend(v7, "height") / v8));
    if (!v9)
    {
      [LTMProcessor createLTMInTextureFromRGBAFloatTex:undoScaleDown:];
      goto LABEL_9;
    }

    commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
    commandBuffer = [commandQueue commandBuffer];

    if (commandBuffer)
    {
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      if (computeCommandEncoder)
      {
        v13 = computeCommandEncoder;
        [computeCommandEncoder setComputePipelineState:self->_ltmDownsampleRGBAFloatToRGB];
        [v13 setTexture:v7 atIndex:0];
        [v13 setTexture:v9 atIndex:1];
        [v13 setBytes:&v23 length:4 atIndex:0];
        [v13 setBytes:&downCopy length:4 atIndex:1];
        threadExecutionWidth = [(MTLComputePipelineState *)self->_ltmDownsampleRGBAFloatToRGB threadExecutionWidth];
        v15 = [(MTLComputePipelineState *)self->_ltmDownsampleRGBAFloatToRGB maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
        v20[0] = [v9 width];
        v20[1] = [v9 height];
        v20[2] = 1;
        v19[0] = threadExecutionWidth;
        v19[1] = v15;
        v19[2] = 1;
        [v13 dispatchThreads:v20 threadsPerThreadgroup:v19];
        [v13 endEncoding];
        [commandBuffer commit];

        goto LABEL_9;
      }

      v22 = 0;
      v21 = 0;
      v18 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      v22 = 0;
      v21 = 0;
      v17 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  else
  {
    [LTMProcessor createLTMInTextureFromRGBAFloatTex:undoScaleDown:];
  }

  v9 = 0;
LABEL_9:

  return v9;
}

- (id)_compressHighlight:(id)highlight
{
  highlightCopy = highlight;
  [(LTMProcessor *)self _prepareHighlightCompressionCurve];
  v5 = -[LTMProcessor createIntermediateRGBAMetalTexture:width:height:](self, "createIntermediateRGBAMetalTexture:width:height:", @"ltmCompressedTexture", [highlightCopy width], objc_msgSend(highlightCopy, "height"));
  if (v5)
  {
    allocator = [(FigMetalContext *)self->_metalContext allocator];
    newTextureDescriptor = [allocator newTextureDescriptor];

    if (newTextureDescriptor)
    {
      desc = [newTextureDescriptor desc];
      [desc setTextureType:0];

      desc2 = [newTextureDescriptor desc];
      [desc2 setWidth:257];

      desc3 = [newTextureDescriptor desc];
      [desc3 setHeight:1];

      desc4 = [newTextureDescriptor desc];
      [desc4 setDepth:1];

      desc5 = [newTextureDescriptor desc];
      [desc5 setPixelFormat:20];

      desc6 = [newTextureDescriptor desc];
      [desc6 setUsage:1];

      [newTextureDescriptor setLabel:0];
      device = [(FigMetalContext *)self->_metalContext device];
      desc7 = [newTextureDescriptor desc];
      v16 = [device newTextureWithDescriptor:desc7];

      if (v16)
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = xmmword_1C9335B90;
        v33 = 1;
        [v16 replaceRegion:&v29 mipmapLevel:0 slice:0 withBytes:highlightCompressionDataScaled bytesPerRow:0 bytesPerImage:0];
        commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
        commandBuffer = [commandQueue commandBuffer];

        if (commandBuffer)
        {
          computeCommandEncoder = [commandBuffer computeCommandEncoder];
          v20 = computeCommandEncoder;
          if (computeCommandEncoder)
          {
            [computeCommandEncoder setComputePipelineState:self->_ltmCompressHighlight];
            [v20 setTexture:highlightCopy atIndex:0];
            v21 = 1;
            [v20 setTexture:v5 atIndex:1];
            [v20 setTexture:v16 atIndex:2];
            threadExecutionWidth = [(MTLComputePipelineState *)self->_ltmCompressHighlight threadExecutionWidth];
            v23 = [(MTLComputePipelineState *)self->_ltmCompressHighlight maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
            width = [v5 width];
            height = [v5 height];
            v29 = width;
            v30 = height;
            v31 = 1;
            v28[0] = threadExecutionWidth;
            v28[1] = v23;
            v28[2] = 1;
            [v20 dispatchThreads:&v29 threadsPerThreadgroup:v28];
            goto LABEL_7;
          }

          [LTMProcessor _compressHighlight:];
        }

        else
        {
          [LTMProcessor _compressHighlight:];
          v20 = 0;
        }
      }

      else
      {
        [LTMProcessor _compressHighlight:];
        v20 = 0;
        commandBuffer = 0;
      }
    }

    else
    {
      [LTMProcessor _compressHighlight:];
      v20 = 0;
      commandBuffer = 0;
      v16 = 0;
    }

    v21 = 0;
  }

  else
  {
    [LTMProcessor _compressHighlight:];
    v20 = 0;
    commandBuffer = 0;
    v16 = 0;
    newTextureDescriptor = 0;
    v21 = 1;
  }

LABEL_7:
  [v20 endEncoding];
  [commandBuffer commit];
  if (v21)
  {
    v26 = v5;
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

- (id)_dehaze:(id)_dehaze hazeValues:
{
  v17 = v3;
  _dehazeCopy = _dehaze;
  v6 = vcvt_s32_f32(vmul_f32(*v17.f32, vdup_n_s32(0x477FFF00u)));
  v20[1] = vmuls_lane_f32(65535.0, v17, 2);
  v20[0] = vuzp1_s16(v6, v6).u32[0];
  v7 = -[LTMProcessor createIntermediateRGBAMetalTexture:width:height:](self, "createIntermediateRGBAMetalTexture:width:height:", @"ltmDehazedRGBATexture", [_dehazeCopy width], objc_msgSend(_dehazeCopy, "height"));
  if (v7)
  {
    commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];
    commandBuffer = [commandQueue commandBuffer];

    if (commandBuffer)
    {
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      v11 = computeCommandEncoder;
      if (computeCommandEncoder)
      {
        [computeCommandEncoder setComputePipelineState:self->_ltmDehaze];
        [v11 setTexture:_dehazeCopy atIndex:0];
        v12 = 1;
        [v11 setTexture:v7 atIndex:1];
        [v11 setBytes:v20 length:8 atIndex:0];
        threadExecutionWidth = [(MTLComputePipelineState *)self->_ltmDehaze threadExecutionWidth];
        v14 = [(MTLComputePipelineState *)self->_ltmDehaze maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
        v19[0] = [v7 width];
        v19[1] = [v7 height];
        v19[2] = 1;
        v18[0] = threadExecutionWidth;
        v18[1] = v14;
        v18[2] = 1;
        [v11 dispatchThreads:v19 threadsPerThreadgroup:v18];
        goto LABEL_5;
      }

      [LTMProcessor _dehaze:hazeValues:];
    }

    else
    {
      [LTMProcessor _dehaze:hazeValues:];
      v11 = 0;
    }
  }

  else
  {
    [LTMProcessor _dehaze:hazeValues:];
    v11 = 0;
    commandBuffer = 0;
  }

  v12 = 0;
LABEL_5:
  [v11 endEncoding];
  [commandBuffer commit];
  if (v12)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (id)_applyGlobalCCM:(__n128)m globalCCM:(__n128)cM
{
  v20[0] = a2;
  v20[1] = m;
  v20[2] = cM;
  v7 = a6;
  v8 = [self createIntermediateRGBAMetalTexture:@"ltmCCMRGBATexture" width:objc_msgSend(v7 height:{"width"), objc_msgSend(v7, "height")}];
  if (v8)
  {
    commandQueue = [self[1] commandQueue];
    commandBuffer = [commandQueue commandBuffer];

    if (commandBuffer)
    {
      computeCommandEncoder = [commandBuffer computeCommandEncoder];
      v12 = computeCommandEncoder;
      if (computeCommandEncoder)
      {
        [computeCommandEncoder setComputePipelineState:self[5178]];
        [v12 setTexture:v7 atIndex:0];
        v13 = 1;
        [v12 setTexture:v8 atIndex:1];
        [v12 setBytes:v20 length:48 atIndex:0];
        threadExecutionWidth = [self[5178] threadExecutionWidth];
        v15 = [self[5178] maxTotalThreadsPerThreadgroup] / threadExecutionWidth;
        v19[0] = [v8 width];
        v19[1] = [v8 height];
        v19[2] = 1;
        v18[0] = threadExecutionWidth;
        v18[1] = v15;
        v18[2] = 1;
        [v12 dispatchThreads:v19 threadsPerThreadgroup:v18];
        goto LABEL_5;
      }

      [LTMProcessor _applyGlobalCCM:globalCCM:];
    }

    else
    {
      [LTMProcessor _applyGlobalCCM:globalCCM:];
      v12 = 0;
    }
  }

  else
  {
    [LTMProcessor _applyGlobalCCM:globalCCM:];
    v12 = 0;
    commandBuffer = 0;
  }

  v13 = 0;
LABEL_5:
  [v12 endEncoding];
  [commandBuffer commit];
  if (v13)
  {
    v16 = v8;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_prepareHighlightCompressionCurve
{
  if (BYTE1(self->_driverInputMetadata.highlightCompressionGain) == 1)
  {
    v3 = 0;
    v4 = (*&self->_driverInputMetadata.isSIFRFrame + -1.0) / 3.0;
    do
    {
      LOWORD(v2) = highlightCompressionData_4x[v3];
      v5 = vcvts_n_f32_u32(v3, 8uLL);
      v2 = fmaxf(fminf((v5 * 65534.0) + ((LODWORD(v2) - (v5 * 65534.0)) * v4), 65534.0), 0.0);
      highlightCompressionDataScaled[v3++] = llroundf(v2);
    }

    while (v3 != 257);
  }

  else
  {
    *&self->_driverInputMetadata.isSIFRFrame = 0x40000000;
    memcpy(highlightCompressionDataScaled, &highlightCompressionData, 0x202uLL);
  }
}

- (int)setLTMTuningParamsFrom:(id)from
{
  v11 = 0;
  v4 = [from objectForKeyedSubscript:@"Exposure"];
  if (v4)
  {
    v5 = &self->globalFaceHistStat[148];
    [*(v5 + 68) adaptiveHCSlope];
    [v4 cmi_floatValueForKey:@"adaptiveHCSlope" defaultValue:&v11 found:?];
    [*(v5 + 68) setAdaptiveHCSlope:?];
    [*(v5 + 68) minimumAdaptiveHC_SIFR];
    [v4 cmi_floatValueForKey:@"minimumAdaptiveHC_SIFR" defaultValue:&v11 found:?];
    [*(v5 + 68) setMinimumAdaptiveHC_SIFR:?];
    [*(v5 + 68) ispDGainThreshold];
    [v4 cmi_floatValueForKey:@"ispDGainThreshold" defaultValue:&v11 found:?];
    [*(v5 + 68) setIspDGainThreshold:?];
    LODWORD(v6) = v5[129];
    [v4 cmi_floatValueForKey:@"adaptiveGainRange" defaultValue:&v11 found:v6];
    v5[129] = v7;
    LODWORD(v8) = v5[130];
    [v4 cmi_floatValueForKey:@"adaptiveGainMax" defaultValue:&v11 found:v8];
    v5[130] = v9;
  }

  return 0;
}

- (int)setDehazeTuningParamsFrom:(id)from
{
  v62 = 0;
  v4 = [from objectForKeyedSubscript:@"Dehaze"];
  if (!v4)
  {
    goto LABEL_13;
  }

  hazeProperties = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties reluC1];
  [v4 cmi_floatValueForKey:@"reluC1" defaultValue:&v62 found:?];
  v7 = v6;
  hazeProperties2 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v9) = v7;
  [hazeProperties2 setReluC1:v9];

  if ((v62 & 1) == 0)
  {
    [LTMProcessor setDehazeTuningParamsFrom:];
LABEL_25:
    v60 = -1;
    goto LABEL_14;
  }

  hazeProperties3 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties3 reluC2];
  [v4 cmi_floatValueForKey:@"reluC2" defaultValue:&v62 found:?];
  v12 = v11;
  hazeProperties4 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v14) = v12;
  [hazeProperties4 setReluC2:v14];

  if ((v62 & 1) == 0)
  {
    [LTMProcessor setDehazeTuningParamsFrom:];
    goto LABEL_25;
  }

  hazeProperties5 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties5 reluC3];
  [v4 cmi_floatValueForKey:@"reluC3" defaultValue:&v62 found:?];
  v17 = v16;
  hazeProperties6 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v19) = v17;
  [hazeProperties6 setReluC3:v19];

  if ((v62 & 1) == 0)
  {
    [LTMProcessor setDehazeTuningParamsFrom:];
    goto LABEL_25;
  }

  hazeProperties7 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties7 reluC4];
  [v4 cmi_floatValueForKey:@"reluC4" defaultValue:&v62 found:?];
  v22 = v21;
  hazeProperties8 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v24) = v22;
  [hazeProperties8 setReluC4:v24];

  if ((v62 & 1) == 0)
  {
    [LTMProcessor setDehazeTuningParamsFrom:];
    goto LABEL_25;
  }

  hazeProperties9 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties9 reluC5];
  [v4 cmi_floatValueForKey:@"reluC5" defaultValue:&v62 found:?];
  v27 = v26;
  hazeProperties10 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v29) = v27;
  [hazeProperties10 setReluC5:v29];

  if ((v62 & 1) == 0)
  {
    [LTMProcessor setDehazeTuningParamsFrom:];
    goto LABEL_25;
  }

  hazeProperties11 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties11 sr_min];
  [v4 cmi_floatValueForKey:@"sr_min" defaultValue:&v62 found:?];
  v32 = v31;
  hazeProperties12 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v34) = v32;
  [hazeProperties12 setSr_min:v34];

  if ((v62 & 1) == 0)
  {
    [LTMProcessor setDehazeTuningParamsFrom:];
    goto LABEL_25;
  }

  hazeProperties13 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties13 sr_var];
  [v4 cmi_floatValueForKey:@"sr_var" defaultValue:&v62 found:?];
  v37 = v36;
  hazeProperties14 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v39) = v37;
  [hazeProperties14 setSr_var:v39];

  if ((v62 & 1) == 0)
  {
    [LTMProcessor setDehazeTuningParamsFrom:];
    goto LABEL_25;
  }

  hazeProperties15 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties15 sr_pow];
  [v4 cmi_floatValueForKey:@"sr_pow" defaultValue:&v62 found:?];
  v42 = v41;
  hazeProperties16 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v44) = v42;
  [hazeProperties16 setSr_pow:v44];

  if ((v62 & 1) == 0)
  {
    [LTMProcessor setDehazeTuningParamsFrom:];
    goto LABEL_25;
  }

  hazeProperties17 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties17 sr_sat];
  [v4 cmi_floatValueForKey:@"sr_sat" defaultValue:&v62 found:?];
  v47 = v46;
  hazeProperties18 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v49) = v47;
  [hazeProperties18 setSr_sat:v49];

  if ((v62 & 1) == 0)
  {
    [LTMProcessor setDehazeTuningParamsFrom:];
    goto LABEL_25;
  }

  hazeProperties19 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties19 min_display_black];
  [v4 cmi_floatValueForKey:@"min_display_black" defaultValue:&v62 found:?];
  v52 = v51;
  hazeProperties20 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v54) = v52;
  [hazeProperties20 setMin_display_black:v54];

  if ((v62 & 1) == 0)
  {
    [LTMProcessor setDehazeTuningParamsFrom:];
    goto LABEL_25;
  }

  hazeProperties21 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  [hazeProperties21 haze_threshold_divider];
  [v4 cmi_floatValueForKey:@"haze_threshold_divider" defaultValue:&v62 found:?];
  v57 = v56;
  hazeProperties22 = [(HazeEstimation *)self->_hazeEstimator hazeProperties];
  LODWORD(v59) = v57;
  [hazeProperties22 setHaze_threshold_divider:v59];

LABEL_13:
  v60 = 0;
LABEL_14:

  return v60;
}

- (int)setLTMComputeTuningParams:(sRefDriverInputs_SOFTISP *)params from:(id)from
{
  fromCopy = from;
  v7 = [fromCopy objectForKeyedSubscript:@"SDR"];
  v8 = [fromCopy objectForKeyedSubscript:@"HLG"];
  v9 = [fromCopy objectForKeyedSubscript:@"DigitalFlash"];
  v10 = [fromCopy objectForKeyedSubscript:@"DigitalFlashHLG"];

  v11 = 0;
  if (v7 && v8 && v9 && v10)
  {
    v12 = [(LTMProcessor *)self getLTMTuningFromTuningParams:&params[1].hdrRatio from:v7];
    if (v12)
    {
      v11 = v12;
      [LTMProcessor setLTMComputeTuningParams:from:];
    }

    else
    {
      v13 = [(LTMProcessor *)self getLTMTuningFromTuningParams:&params[1].flashMixPercentage[38] from:v8];
      if (v13)
      {
        v11 = v13;
        [LTMProcessor setLTMComputeTuningParams:from:];
      }

      else
      {
        v14 = [(LTMProcessor *)self getLTMTuningFromTuningParams:&params[1].flashMixPercentage[110] from:v9];
        if (v14)
        {
          v11 = v14;
          [LTMProcessor setLTMComputeTuningParams:from:];
        }

        else
        {
          v11 = [(LTMProcessor *)self getLTMTuningFromTuningParams:&params[1].flashMixPercentage[254] from:v10];
          if (v11)
          {
            [LTMProcessor setLTMComputeTuningParams:from:];
          }

          else
          {
            LOBYTE(params[1].flashMixPercentage[398]) = 1;
          }
        }
      }
    }
  }

  return v11;
}

- (int)getLTMTuningFromTuningParams:(LTMTuning *)params from:(id)from
{
  fromCopy = from;
  v37 = 0;
  [fromCopy cmi_floatValueForKey:@"histDampingExponentHighlight" defaultValue:&v37 found:0.0];
  params->histDampingExponentHighlight = v6;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
LABEL_59:
    v35 = -1;
    goto LABEL_30;
  }

  [fromCopy cmi_floatValueForKey:@"histDampingExponentMax" defaultValue:&v37 found:0.0];
  params->histDampingExponentMax = v7;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"hmaxHeadroom" defaultValue:&v37 found:0.0];
  params->hmaxHeadroom = v8;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"maxPaddingRange" defaultValue:&v37 found:0.0];
  params->maxPaddingRange = v9;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"dispRangeActiveRatio" defaultValue:&v37 found:0.0];
  params->dispRangeActiveRatio = v10;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"sceneBlackRatio" defaultValue:&v37 found:0.0];
  params->sceneBlackRatio = v11;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"sceneBlackRatioDark" defaultValue:&v37 found:0.0];
  params->sceneBlackRatioDark = v12;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"sceneBgOffset" defaultValue:&v37 found:0.0];
  params->sceneBgOffset = v13;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"desatStrength" defaultValue:&v37 found:0.0];
  params->desatStrength = v14;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"minFlareDark" defaultValue:&v37 found:0.0];
  params->minFlareDark = v15;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"shadowSuppressBase" defaultValue:&v37 found:0.0];
  params->shadowSuppressBase = v16;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"shadowSuppressMax" defaultValue:&v37 found:0.0];
  params->shadowSuppressMax = v17;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"shadowSuppressEITAdj" defaultValue:&v37 found:0.0];
  params->shadowSuppressEITAdj = v18;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"minSceneLux" defaultValue:&v37 found:0.0];
  params->minSceneLux = v19;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"histSmoothingMax" defaultValue:&v37 found:0.0];
  params->histSmoothingMax = v20;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"smoothingStrength" defaultValue:&v37 found:0.0];
  params->smoothingStrength = v21;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"dispRangeDarkRatio" defaultValue:&v37 found:0.0];
  params->dispRangeDarkRatio = v22;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"sceneModelSmoothing" defaultValue:&v37 found:0.0];
  params->sceneModelSmoothing = v23;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"nonFaceRatioFloor" defaultValue:&v37 found:0.0];
  params->nonFaceRatioFloor = v24;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"fstart" defaultValue:&v37 found:0.0];
  params->fstart = v25;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"shadowDesat" defaultValue:&v37 found:0.0];
  params->shadowDesat = v26;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"darkSceneLux" defaultValue:&v37 found:0.0];
  params->darkSceneLux = v27;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_simdFloat4ValueForKey:@"darkSceneLuxThreshold" defaultValue:0 found:0.0];
  *&params[1].hmaxHeadroom = v28;
  [fromCopy cmi_floatValueForKey:@"ambientViewingLux" defaultValue:&v37 found:0.0];
  params[1].sceneBlackRatioDark = v29;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"ambientViewingChromaticityX" defaultValue:&v37 found:0.0];
  params[1].sceneBgOffset = v30;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"ambientViewingChromaticityY" defaultValue:&v37 found:0.0];
  params[1].desatStrength = v31;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"sceneBlackMax" defaultValue:&v37 found:0.0];
  params[1].minFlareDark = v32;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"dispLum" defaultValue:&v37 found:0.0];
  params[1].shadowSuppressBase = v33;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  [fromCopy cmi_floatValueForKey:@"dispBlack" defaultValue:&v37 found:0.0];
  params[1].shadowSuppressMax = v34;
  if ((v37 & 1) == 0)
  {
    [LTMProcessor getLTMTuningFromTuningParams:from:];
    goto LABEL_59;
  }

  v35 = 0;
LABEL_30:

  return v35;
}

- (void)initWithCommandQueue:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor initWithCommandQueue:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)initWithCommandQueue:.cold.5()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor initWithCommandQueue:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)initWithCommandQueue:.cold.6()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor initWithCommandQueue:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)initWithCommandQueue:.cold.7()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor initWithCommandQueue:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)initWithCommandQueue:.cold.8()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor initWithCommandQueue:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)createShaders:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor createShaders:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)createShaders:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor createShaders:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)createShaders:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor createShaders:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)createShaders:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor createShaders:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)createShaders:.cold.5()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor createShaders:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)prepareToProcess:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor prepareToProcess:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)prepareToProcess:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor prepareToProcess:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)prepareToProcess:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor prepareToProcess:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)process
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor process]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)generateLinearRGBATexture:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor generateLinearRGBATexture:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)createIntermediateRGBAMetalTexture:width:height:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor createIntermediateRGBAMetalTexture:width:height:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)createIntermediateRGBAMetalTexture:width:height:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor createIntermediateRGBAMetalTexture:width:height:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)createLTMInTextureFromLuma:chroma:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor createLTMInTextureFromLuma:chroma:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)createLTMInTextureFromLuma:chroma:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor createLTMInTextureFromLuma:chroma:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)createLTMInTextureFromRGBAFloatTex:undoScaleDown:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor createLTMInTextureFromRGBAFloatTex:undoScaleDown:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)_compressHighlight:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor _compressHighlight:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)_compressHighlight:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor _compressHighlight:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)_compressHighlight:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor _compressHighlight:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)_compressHighlight:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor _compressHighlight:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)_dehaze:hazeValues:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor _dehaze:hazeValues:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)_dehaze:hazeValues:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor _dehaze:hazeValues:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)_dehaze:hazeValues:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor _dehaze:hazeValues:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)_applyGlobalCCM:globalCCM:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor _applyGlobalCCM:globalCCM:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)_applyGlobalCCM:globalCCM:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor _applyGlobalCCM:globalCCM:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)_applyGlobalCCM:globalCCM:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor _applyGlobalCCM:globalCCM:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)setDehazeTuningParamsFrom:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor setDehazeTuningParamsFrom:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)setDehazeTuningParamsFrom:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor setDehazeTuningParamsFrom:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)setDehazeTuningParamsFrom:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor setDehazeTuningParamsFrom:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)setDehazeTuningParamsFrom:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor setDehazeTuningParamsFrom:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)setDehazeTuningParamsFrom:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor setDehazeTuningParamsFrom:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)setDehazeTuningParamsFrom:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor setDehazeTuningParamsFrom:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)setDehazeTuningParamsFrom:.cold.7()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor setDehazeTuningParamsFrom:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)setDehazeTuningParamsFrom:.cold.8()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor setDehazeTuningParamsFrom:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)setDehazeTuningParamsFrom:.cold.9()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor setDehazeTuningParamsFrom:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)setDehazeTuningParamsFrom:.cold.10()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor setDehazeTuningParamsFrom:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.6()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.7()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.8()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.9()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.10()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.11()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.12()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.13()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.14()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.15()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.16()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.17()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.18()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.19()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.20()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.21()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.22()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.23()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.24()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.25()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.26()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.27()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

- (void)getLTMTuningFromTuningParams:from:.cold.28()
{
  OUTLINED_FUNCTION_0_0();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMProcessor getLTMTuningFromTuningParams:from:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_3_1();
}

@end