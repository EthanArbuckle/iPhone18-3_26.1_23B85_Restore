@interface AWBStatistics
+ (int)getTileStatsRegionWithMetadata:(id)a3 cropRectLTMInCoords:(CGRect)a4 ltmInDownsamplingRatio:(float)a5 tileStatsRegionLTMInCoordsDictOut:(id *)a6;
- (AWBStatistics)initWithMetalContext:(id)a3;
- (int)_adjustConfigToValidRectInBufferCoords:(id)a3 validRectInSensorReadoutCoords:(id)a4 regionOfInterestRectInBufferCoords:(id)a5;
- (int)_createShaders;
- (int)_loadANSTNetwork;
- (int)_purgeANSTNetwork;
- (int)configWindowsV2:(id *)a3 metadata:(id)a4 tilesConfig:(id)a5 validRect:(id)a6 regionOfInterestRect:(id)a7;
- (int)configWithModuleConfig:(id)a3 metadata:(id)a4 cameraInfo:(id)a5 awbParams:(id)a6;
- (int)process:(id)a3 clipped:(id)a4 lscGainsTex:(id)a5 validRectInBufferCoords:(id)a6 validRectInSensorReadoutCoords:(id)a7 awbStatsBuffer:(id)a8 awbTileStatsConfig:(id *)a9 anstSkinMask:(id)a10 anstSkinMaskData:(id *)a11 skyMaskTex:(id)a12 skyMaskData:(id *)a13 regionOfInterestRectInBufferCoords:(id)a14 downsizeFactor:(unsigned int *)a15;
- (uint64_t)_createShaders;
@end

@implementation AWBStatistics

- (AWBStatistics)initWithMetalContext:(id)a3
{
  v5 = a3;
  v6 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v12.receiver = self;
  v12.super_class = AWBStatistics;
  v7 = [(AWBStatistics *)&v12 init];
  v8 = v7;
  if (v7)
  {
    if (v5)
    {
      objc_storeStrong(&v7->_metalContext, a3);
      if (![(AWBStatistics *)v8 _createShaders])
      {
        v9 = v8;
        goto LABEL_7;
      }

      FigDebugAssert3();
      goto LABEL_12;
    }

    FigDebugAssert3();
    if (FigSignalErrorAtGM())
    {
LABEL_12:
      FigDebugAssert3();
      if (dword_1EDD78228)
      {
        v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }
    }
  }

  else
  {
    FigDebugAssert3();
  }

  if (*v6 == 1)
  {
    kdebug_trace();
  }

  v9 = 0;
LABEL_7:

  return v9;
}

- (int)_createShaders
{
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v4 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftAWB::resetMtlBuffer" constants:0];
  resetMtlBufferPipelineState = self->_resetMtlBufferPipelineState;
  self->_resetMtlBufferPipelineState = v4;

  if (self->_resetMtlBufferPipelineState)
  {
    v6 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftAWB::awbStatsBayerFast" constants:0];
    computeAWBStatsBayerFastPipelineState = self->_computeAWBStatsBayerFastPipelineState;
    self->_computeAWBStatsBayerFastPipelineState = v6;

    if (self->_computeAWBStatsBayerFastPipelineState)
    {
      v8 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftAWB::awbStatsQuadraFast" constants:0];
      computeAWBStatsQuadraFastPipelineState = self->_computeAWBStatsQuadraFastPipelineState;
      self->_computeAWBStatsQuadraFastPipelineState = v8;

      if (self->_computeAWBStatsQuadraFastPipelineState)
      {
        v10 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftAWB::normTileStats" constants:0];
        normTileStatsPipelineState = self->_normTileStatsPipelineState;
        self->_normTileStatsPipelineState = v10;

        if (self->_normTileStatsPipelineState)
        {
          v12 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftAWB::normWindowStats" constants:0];
          normWindowStatsPipelineState = self->_normWindowStatsPipelineState;
          self->_normWindowStatsPipelineState = v12;

          if (self->_normWindowStatsPipelineState)
          {
            v14 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftAWB::resizeANST" constants:0];
            resizeANSTPipelineState = self->_resizeANSTPipelineState;
            self->_resizeANSTPipelineState = v14;

            if (self->_resizeANSTPipelineState)
            {
              v16 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"SoftAWB::fitWbTmRGBToANSTInput" constants:0];
              fitWbTmRGBToANSTInputPipelineState = self->_fitWbTmRGBToANSTInputPipelineState;
              self->_fitWbTmRGBToANSTInputPipelineState = v16;

              if (self->_fitWbTmRGBToANSTInputPipelineState)
              {
                v18 = 0;
                goto LABEL_11;
              }

              [(AWBStatistics *)&v20 _createShaders];
            }

            else
            {
              [(AWBStatistics *)&v20 _createShaders];
            }
          }

          else
          {
            [(AWBStatistics *)&v20 _createShaders];
          }
        }

        else
        {
          [(AWBStatistics *)&v20 _createShaders];
        }
      }

      else
      {
        [(AWBStatistics *)&v20 _createShaders];
      }
    }

    else
    {
      [(AWBStatistics *)&v20 _createShaders];
    }
  }

  else
  {
    [(AWBStatistics *)&v20 _createShaders];
  }

  v18 = v20;
LABEL_11:
  if (*v3 == 1)
  {
    kdebug_trace();
  }

  return v18;
}

- (int)_loadANSTNetwork
{
  p_espressoContext = &self->_espressoContext;
  if (self->_espressoContext)
  {
    v12 = 0;
    v9 = 0;
    v6 = 0;
    v4 = 0;
    goto LABEL_12;
  }

  v17 = 0;
  v4 = [MEMORY[0x1E6985FE0] defaultConfigurationForVersion:0x10000 withError:&v17];
  v5 = v17;
  if (v5)
  {
    v13 = v5;
    FigDebugAssert3();
    v6 = 0;
    v12 = FigSignalErrorAtGM();
    v9 = 0;
    goto LABEL_25;
  }

  if (!v4)
  {
    FigDebugAssert3();
    v13 = 0;
    v12 = FigSignalErrorAtGM();
    v4 = 0;
LABEL_19:
    v6 = 0;
LABEL_21:
    v9 = 0;
    goto LABEL_25;
  }

  v16 = 0;
  v6 = [MEMORY[0x1E6985FE8] descriptorWithConfiguration:v4 error:&v16];
  v7 = v16;
  if (v7)
  {
    v13 = v7;
    FigDebugAssert3();
    v9 = 0;
    v15 = FigSignalErrorAtGM();
LABEL_23:
    v12 = v15;
    goto LABEL_25;
  }

  if (!v6)
  {
    FigDebugAssert3();
    v13 = 0;
    v12 = FigSignalErrorAtGM();
    goto LABEL_19;
  }

  v8 = [v6 assetURL];
  v9 = [v8 path];

  if (!v9)
  {
    FigDebugAssert3();
    v13 = 0;
    v12 = FigSignalErrorAtGM();
    goto LABEL_21;
  }

  context = espresso_create_context();
  *p_espressoContext = context;
  if (!context || (plan = espresso_create_plan(), (self->_espressoPlan = plan) == 0))
  {
    FigDebugAssert3();
    v13 = 0;
    v15 = FigSignalErrorAtGM();
    goto LABEL_23;
  }

  [v9 UTF8String];
  if (!espresso_plan_add_network() && !espresso_plan_build())
  {
    v12 = 0;
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  FigDebugAssert3();
  v12 = FigSignalErrorAtGM();
  v13 = 0;
LABEL_25:
  if (v12)
  {
    if (self->_espressoPlan)
    {
      espresso_plan_destroy();
    }

    if (*p_espressoContext)
    {
      espresso_context_destroy();
    }

    *p_espressoContext = 0;
    p_espressoContext[1] = 0;
  }

LABEL_13:

  return v12;
}

- (int)configWithModuleConfig:(id)a3 metadata:(id)a4 cameraInfo:(id)a5 awbParams:(id)a6
{
  v10 = a3;
  v11 = a4;
  v272 = a5;
  v12 = a6;
  v269 = v10;
  v277 = v12;
  v275 = v11;
  if (!v10 || !v11 || !v272 || !v12)
  {
    v235 = v247;
    LODWORD(v230) = 0;
    FigDebugAssert3();
    v276 = 0;
    v89 = FigSignalErrorAtGM();
    v278 = 0;
    v279 = 0;
    v280 = 0;
    goto LABEL_229;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v278 = [v10 objectForKeyedSubscript:@"AutoWhiteBalance"];
  v13 = [v277 firstPixel];
  v14 = [v13 intValue];

  v15 = [v277 cfaLayout];
  v267 = [v15 intValue];

  v16 = [v277 digitalFlash];
  digitalFlash = self->_digitalFlash;
  self->_digitalFlash = v16;

  v18 = [v277 skipDemosaic];
  skipDemosaic = self->_skipDemosaic;
  self->_skipDemosaic = v18;

  v20 = [v277 lscMaxGain];
  lscMaxGain = self->_lscMaxGain;
  self->_lscMaxGain = v20;

  v22 = [v277 lscModulationWeight];
  lscModulationWeight = self->_lscModulationWeight;
  self->_lscModulationWeight = v22;

  v24 = [v277 faceAssistedBehaviorMode];
  faceAssistedBehaviorMode = self->_faceAssistedBehaviorMode;
  self->_faceAssistedBehaviorMode = v24;

  v26 = [v277 downsizeFactor];
  downsizeFactor = self->_downsizeFactor;
  self->_downsizeFactor = v26;

  v28 = MEMORY[0x1E696AD98];
  v29 = [v11 objectForKeyedSubscript:*MEMORY[0x1E6990FD0]];
  [v29 doubleValue];
  v30 = [v28 numberWithDouble:?];

  v276 = v30;
  if (v30)
  {
    [v30 floatValue];
    v32 = ((v31 * 256.0) * 0.0039062) * 0.00024414;
  }

  else
  {
    v32 = 0.00000095367;
  }

  v260 = v32;
  bzero(&self->_awbStatCfg, 0xA30uLL);
  v33 = [v278 objectForKeyedSubscript:@"CSC"];

  if (!v33 || ([v278 objectForKeyedSubscript:@"IdealColorCalibrations"], (v34 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v235 = v247;
    LODWORD(v230) = 0;
    FigDebugAssert3();
    v280 = 0;
    v89 = FigSignalErrorAtGM();
    v279 = 0;
    goto LABEL_229;
  }

  v270 = [v272 objectForKeyedSubscript:*MEMORY[0x1E6990C50]];
  if (!v270)
  {
    v235 = v247;
    LODWORD(v230) = 0;
    FigDebugAssert3();
    v280 = 0;
    v89 = FigSignalErrorAtGM();
    v279 = v34;
    goto LABEL_229;
  }

  v35 = *MEMORY[0x1E6990F90];
  v36 = [v11 objectForKeyedSubscript:*MEMORY[0x1E6990F90]];

  if (!v36)
  {
    v235 = v247;
    LODWORD(v230) = 0;
    FigDebugAssert3();
LABEL_272:
    v89 = FigSignalErrorAtGM();
    v279 = v34;
    v280 = v270;
    goto LABEL_229;
  }

  v245 = [v278 objectForKeyedSubscript:@"CSC"];
  [v11 objectForKeyedSubscript:v35];
  v265 = v263 = v14;
  v37 = [v265 intValue];
  v38 = v245;
  v279 = v34;
  v280 = v270;
  v273 = v275;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v39 = 0;
  v40 = &self->_anon_7c[644];
  LOBYTE(v282) = 0;
  do
  {
    v314.f32[v39] = [v38 cmi_intValueFromArrayWithKey:@"CCMCoef" forIndex:v39 defaultValue:0 found:&v282];
    if ((v282 & 1) == 0)
    {
      v231 = v247;
      LODWORD(v230) = 0;
      FigDebugAssert3();
      v89 = FigSignalErrorAtGM();
      goto LABEL_30;
    }

    ++v39;
  }

  while (v39 != 9);
  v41 = vmul_n_f32(v314, v260);
  v42 = vmul_n_f32(v316, v260);
  v43 = v260 * v317;
  v44 = vmul_n_f32(v318, v260);
  v45 = v260 * v319;
  *&self->_anon_7c[12] = v260 * v315;
  *&self->_anon_7c[4] = v41;
  *&self->_anon_7c[28] = v43;
  *&self->_anon_7c[20] = v42;
  *&self->_anon_7c[44] = v45;
  *&self->_anon_7c[36] = v44;
  v46 = [v280 objectForKeyedSubscript:@"HiCCTrgAbs"];

  if (v46)
  {
    v47 = [v280 objectForKeyedSubscript:@"HiCCTrgAbs"];
    [v47 floatValue];
    v261 = v48;

    v49 = [v280 objectForKeyedSubscript:@"HiCCTbgAbs"];
    [v49 floatValue];
    v258 = v50;

    v51 = [v280 objectForKeyedSubscript:@"LowCCTrgAbs"];
    [v51 floatValue];
    v256 = v52;

    v53 = [v280 objectForKeyedSubscript:@"LowCCTbgAbs"];
    [v53 floatValue];
    v254 = v54;
    goto LABEL_24;
  }

  v53 = [v280 objectForKeyedSubscript:*MEMORY[0x1E6990E48]];
  v55 = [v280 objectForKeyedSubscript:*MEMORY[0x1E6990E50]];
  v56 = v55;
  if (v53 && v55)
  {
    v57 = *MEMORY[0x1E6990E40];
    v58 = [v53 objectForKeyedSubscript:*MEMORY[0x1E6990E40]];
    [v58 floatValue];
    v60 = v59;

    v61 = *MEMORY[0x1E6990E38];
    v62 = [v53 objectForKeyedSubscript:*MEMORY[0x1E6990E38]];
    [v62 floatValue];
    v64 = v63;

    v65 = [v56 objectForKeyedSubscript:v57];
    [v65 floatValue];
    v67 = v66;

    v68 = [v56 objectForKeyedSubscript:v61];
    [v68 floatValue];
    v261 = v60 * 16384.0;
    v258 = v64 * 16384.0;
    v256 = v67 * 16384.0;
    v254 = v69 * 16384.0;

LABEL_24:
    v70 = [v279 objectForKeyedSubscript:@"hiCCTrgIdeal"];

    if (v70)
    {
      v71 = [v279 objectForKeyedSubscript:@"hiCCTrgIdeal"];
      [v71 floatValue];
      v252 = v72;

      v73 = [v279 objectForKeyedSubscript:@"hiCCTbgIdeal"];
      [v73 floatValue];
      v251 = v74;

      v75 = [v279 objectForKeyedSubscript:@"lowCCTrgIdeal"];
      [v75 floatValue];
      v250 = v76;

      v53 = [v279 objectForKeyedSubscript:@"lowCCTbgIdeal"];
      [v53 floatValue];
      v249 = v77;
LABEL_29:

      v89 = 0;
      v90 = fmin(fmax(v37, 2500.0), 5000.0);
      v91 = *&self->_anon_7c[4];
      v92 = *&self->_anon_7c[20];
      v93 = *&self->_anon_7c[36];
      __asm { FMOV            V2.2S, #1.0 }

      v99 = vdiv_f32(vmla_n_f32(vmul_n_f32(vbsl_s8(vand_s8(vcgtz_f32(__PAIR64__(LODWORD(v258), LODWORD(v261))), vcgtz_f32(__PAIR64__(v251, v252))), vdiv_f32(__PAIR64__(v251, v252), __PAIR64__(LODWORD(v258), LODWORD(v261))), _D2), (v90 - 2500)), vbsl_s8(vand_s8(vcgtz_f32(__PAIR64__(LODWORD(v254), LODWORD(v256))), vcgtz_f32(__PAIR64__(v249, v250))), vdiv_f32(__PAIR64__(v249, v250), __PAIR64__(LODWORD(v254), LODWORD(v256))), _D2), (5000 - v90)), vdup_n_s32(0x451C4000u));
      v100 = vmul_f32(vzip1_s32(*v91.i8, *&vextq_s8(v91, v91, 8uLL)), v99);
      *&self->_anon_7c[12] = v100.i32[1];
      v100.i32[1] = v91.i32[1];
      *&self->_anon_7c[4] = v100;
      v101 = vmul_f32(vzip1_s32(*v92.i8, *&vextq_s8(v92, v92, 8uLL)), v99);
      *&self->_anon_7c[28] = v101.i32[1];
      v101.i32[1] = v92.i32[1];
      *&self->_anon_7c[20] = v101;
      v102 = vmul_f32(vzip1_s32(*v93.i8, *&vextq_s8(v93, v93, 8uLL)), v99);
      *&self->_anon_7c[44] = v102.i32[1];
      v102.i32[1] = v93.i32[1];
      *&self->_anon_7c[36] = v102;
      *&self->_anon_7c[92] = -974530560;
      *&self->_anon_7c[84] = vdupq_n_s32(0xC5E9D800).u64[0];
      *&self->_anon_7c[108] = 1172953088;
      *&self->_anon_7c[100] = vdupq_n_s32(0x45E9D800u).u64[0];
      *&self->_anon_7c[60] = 0;
      *&self->_anon_7c[52] = 0;
      *&self->_anon_7c[76] = 1199570688;
      *&self->_anon_7c[68] = vdupq_n_s32(0x477FFF00u).u64[0];
      goto LABEL_30;
    }

    v53 = [v279 objectForKeyedSubscript:*MEMORY[0x1E6990E48]];
    v78 = [v279 objectForKeyedSubscript:*MEMORY[0x1E6990E50]];
    v56 = v78;
    if (v53 && v78)
    {
      v79 = *MEMORY[0x1E6990E40];
      v80 = [v53 objectForKeyedSubscript:*MEMORY[0x1E6990E40]];
      [v80 floatValue];
      v252 = v81;

      v82 = *MEMORY[0x1E6990E38];
      v83 = [v53 objectForKeyedSubscript:*MEMORY[0x1E6990E38]];
      [v83 floatValue];
      v251 = v84;

      v85 = [v56 objectForKeyedSubscript:v79];
      [v85 floatValue];
      v250 = v86;

      v87 = [v56 objectForKeyedSubscript:v82];
      [v87 floatValue];
      v249 = v88;

      goto LABEL_29;
    }
  }

  v231 = v247;
  LODWORD(v230) = 0;
  FigDebugAssert3();
  v89 = FigSignalErrorAtGM();

LABEL_30:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v89)
  {
    goto LABEL_270;
  }

  v103 = *MEMORY[0x1E6990CD8];
  v104 = [v273 objectForKeyedSubscript:*MEMORY[0x1E6990CD8]];

  if (!v104)
  {
    v235 = v247;
    LODWORD(v230) = 0;
    FigDebugAssert3();
    goto LABEL_272;
  }

  v105 = [v273 objectForKeyedSubscript:v103];
  [v105 floatValue];
  self->_awbStatCfg.ispDGain = v106 * 0.0039062;

  self->_awbStatCfg.firstPix = v263;
  self->_awbStatCfg.layout = v267;
  v314.i8[0] = 0;
  v107 = [v278 objectForKeyedSubscript:@"Stats"];
  self->_awbStatCfg.greenAverage = [v107 cmi_intValueForKey:@"GreenAverage" defaultValue:0 found:&v314];

  if ((v314.i8[0] & 1) == 0)
  {
    v235 = v247;
    LODWORD(v230) = 0;
    FigDebugAssert3();
    v89 = FigSignalErrorAtGM();
    goto LABEL_229;
  }

  v108 = [v278 objectForKeyedSubscript:@"Gamma"];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v109 = 0;
  v314.i8[0] = 0;
  while (1)
  {
    *&self->_anon_7c[2 * v109 + 116] = [v108 cmi_intValueFromArrayWithKey:@"LUT" forIndex:v109 defaultValue:0 found:{&v314, v230, v231}];
    if ((v314.i8[0] & 1) == 0)
    {
      break;
    }

    if (++v109 == 257)
    {
      v110 = 0;
      v314.i8[0] = 0;
      while (1)
      {
        v111 = [v108 cmi_intValueFromArrayWithKey:@"OffsetIn" forIndex:v110 defaultValue:0 found:&v314];
        v112 = v110;
        if ((v110 & 0xFFFFFFFE) != 0)
        {
          v112 = 2;
        }

        *&v40[4 * v112] = v111;
        if ((v314.i8[0] & 1) == 0)
        {
          goto LABEL_253;
        }

        if (++v110 == 3)
        {
          v113 = 0;
          v314.i8[0] = 0;
          while (1)
          {
            v114 = [v108 cmi_intValueFromArrayWithKey:@"OffsetOut" forIndex:v113 defaultValue:0 found:&v314];
            v115 = v113;
            if ((v113 & 0xFFFFFFFE) != 0)
            {
              v115 = 2;
            }

            *&v40[4 * v115 + 16] = v114;
            if ((v314.i8[0] & 1) == 0)
            {
              goto LABEL_253;
            }

            if (++v113 == 3)
            {
              *&self->_anon_7c[688] = 0;
              self->_anon_7c[690] = 0;
              *&self->_anon_7c[676] = 0;
              self->_anon_7c[684] = 0;
              *&self->_anon_7c[692] = 0x100000000FFFFLL;
              *&self->_anon_7c[700] = 983297;
              *&self->_anon_7c[704] = 0;
              *&self->_anon_7c[706] = numIntervalArrayFixedCfgLinear;
              *&self->_anon_7c[722] = unk_1C9332CB0;
              memset_pattern16(&self->_anon_7c[738], asc_1C9332C90, 0x1EuLL);
              v89 = 0;
              *&self->_anon_7c[768] = 8;
              goto LABEL_51;
            }
          }
        }
      }
    }
  }

LABEL_253:
  v231 = v247;
  LODWORD(v230) = 0;
  FigDebugAssert3();
  v89 = FigSignalErrorAtGM();
LABEL_51:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v89)
  {
LABEL_270:
    v235 = v247;
    LODWORD(v230) = v89;
    FigDebugAssert3();
    goto LABEL_229;
  }

  v116 = [v278 objectForKeyedSubscript:@"CSC"];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v117 = 0;
  LOBYTE(v282) = 0;
  while (1)
  {
    v314.f32[v117] = [v116 cmi_intValueFromArrayWithKey:@"CSCCoef" forIndex:v117 defaultValue:0 found:{&v282, v230, v231}];
    if ((v282 & 1) == 0)
    {
      break;
    }

    if (++v117 == 9)
    {
      v118 = 0;
      v119 = vdup_n_s32(0x39800000u);
      v120 = vmul_f32(v314, v119);
      v121 = vmul_f32(v316, v119);
      v122 = v317 * 0.00024414;
      v123 = vmul_f32(v318, v119);
      v124 = v319 * 0.00024414;
      *&self->_anon_7c[780] = v315 * 0.00024414;
      *&self->_anon_7c[772] = v120;
      *&self->_anon_7c[796] = v122;
      *&self->_anon_7c[788] = v121;
      *&self->_anon_7c[812] = v124;
      *&self->_anon_7c[804] = v123;
      v314.i8[0] = 0;
      while (1)
      {
        v125 = [v116 cmi_intValueFromArrayWithKey:@"CSCOffsetIn" forIndex:v118 defaultValue:0 found:&v314];
        v126 = v118;
        if ((v118 & 0xFFFFFFFE) != 0)
        {
          v126 = 2;
        }

        *&v40[4 * v126 + 208] = v125;
        if ((v314.i8[0] & 1) == 0)
        {
          goto LABEL_242;
        }

        if (++v118 == 3)
        {
          v127 = 0;
          v314.i8[0] = 0;
          while (1)
          {
            v128 = [v116 cmi_intValueFromArrayWithKey:@"CSCOffset" forIndex:v127 defaultValue:0 found:&v314];
            v281 = *&self->_anon_7c[868];
            *(&v281 & 0xFFFFFFFFFFFFFFF3 | (4 * (v127 & 3))) = v128;
            v129 = v281;
            *&self->_anon_7c[876] = v281.i32[2];
            *&self->_anon_7c[868] = v129.i64[0];
            if ((v314.i8[0] & 1) == 0)
            {
              break;
            }

            if (++v127 == 3)
            {
              v130 = 0;
              *&self->_anon_7c[876] = v129.f32[2] + 7483.0;
              *&self->_anon_7c[868] = vaddq_f32(v129, vdupq_n_s32(0x45E9D800u)).u64[0];
              v314.i8[0] = 0;
              while (1)
              {
                v131 = [v116 cmi_intValueFromArrayWithKey:@"CSCMin" forIndex:v130 defaultValue:0 found:&v314];
                v132 = v130;
                if ((v130 & 0xFFFFFFFE) != 0)
                {
                  v132 = 2;
                }

                *&v40[4 * v132 + 176] = v131;
                if ((v314.i8[0] & 1) == 0)
                {
                  goto LABEL_260;
                }

                if (++v130 == 3)
                {
                  v133 = 0;
                  v314.i8[0] = 0;
                  while (1)
                  {
                    v134 = [v116 cmi_intValueFromArrayWithKey:@"CSCMax" forIndex:v133 defaultValue:0 found:&v314];
                    v135 = v133;
                    if ((v133 & 0xFFFFFFFE) != 0)
                    {
                      v135 = 2;
                    }

                    *&v40[4 * v135 + 192] = v134;
                    if ((v314.i8[0] & 1) == 0)
                    {
                      goto LABEL_260;
                    }

                    if (++v133 == 3)
                    {
                      v314.i8[0] = 0;
                      *&self->_anon_7c[884] = [v116 cmi_intValueForKey:@"CSCChromaScale0" defaultValue:0 found:&v314];
                      if (v314.i8[0])
                      {
                        v314.i8[0] = 0;
                        *&self->_anon_7c[888] = [v116 cmi_intValueForKey:@"CSCChromaScale1" defaultValue:0 found:&v314];
                        if (v314.i8[0])
                        {
                          v89 = 0;
                          *&self->_anon_7c[884] = vmul_f32(*&self->_anon_7c[884], 0x3900000039000000);
                          goto LABEL_80;
                        }
                      }

                      goto LABEL_260;
                    }
                  }
                }
              }
            }
          }

LABEL_260:
          v231 = v247;
          LODWORD(v230) = 0;
          FigDebugAssert3();
          v227 = FigSignalErrorAtGM();
          goto LABEL_261;
        }
      }
    }
  }

LABEL_242:
  v231 = v247;
  LODWORD(v230) = 0;
  FigDebugAssert3();
  v227 = FigSignalErrorAtGM();
LABEL_261:
  v89 = v227;
LABEL_80:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v89)
  {
    goto LABEL_275;
  }

  v136 = [v278 objectForKeyedSubscript:@"CSC2"];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v137 = 0;
  LOBYTE(v282) = 0;
  while (1)
  {
    v314.f32[v137] = [v136 cmi_intValueFromArrayWithKey:@"CSCCoeff" forIndex:v137 defaultValue:0 found:{&v282, v230, v231}];
    if ((v282 & 1) == 0)
    {
      break;
    }

    if (++v137 == 9)
    {
      v138 = 0;
      v139 = vdup_n_s32(0x39800000u);
      v140 = vmul_f32(v314, v139);
      v141 = vmul_f32(v316, v139);
      v142 = v317 * 0.00024414;
      v143 = vmul_f32(v318, v139);
      v144 = v319 * 0.00024414;
      *&self->_anon_7c[908] = v315 * 0.00024414;
      *&self->_anon_7c[900] = v140;
      *&self->_anon_7c[924] = v142;
      *&self->_anon_7c[916] = v141;
      *&self->_anon_7c[940] = v144;
      *&self->_anon_7c[932] = v143;
      v314.i8[0] = 0;
      while (1)
      {
        v145 = [v136 cmi_intValueFromArrayWithKey:@"CSCOffsetIn" forIndex:v138 defaultValue:0 found:&v314];
        v146 = v138;
        if ((v138 & 0xFFFFFFFE) != 0)
        {
          v146 = 2;
        }

        *&self->_anon_7c[4 * v146 + 980] = v145;
        if ((v314.i8[0] & 1) == 0)
        {
          goto LABEL_262;
        }

        if (++v138 == 3)
        {
          v147 = 0;
          v314.i8[0] = 0;
          while (1)
          {
            v148 = [v136 cmi_intValueFromArrayWithKey:@"CSCOffsetOut" forIndex:v147 defaultValue:0 found:&v314];
            v149 = v147;
            if ((v147 & 0xFFFFFFFE) != 0)
            {
              v149 = 2;
            }

            *&self->_anon_7c[4 * v149 + 996] = v148;
            if ((v314.i8[0] & 1) == 0)
            {
              goto LABEL_262;
            }

            if (++v147 == 3)
            {
              v150 = 0;
              v314.i8[0] = 0;
              while (1)
              {
                v151 = [v136 cmi_intValueFromArrayWithKey:@"CSCMin" forIndex:v150 defaultValue:0 found:&v314];
                v152 = v150;
                if ((v150 & 0xFFFFFFFE) != 0)
                {
                  v152 = 2;
                }

                *&self->_anon_7c[4 * v152 + 948] = v151;
                if ((v314.i8[0] & 1) == 0)
                {
                  goto LABEL_262;
                }

                if (++v150 == 3)
                {
                  v153 = 0;
                  v314.i8[0] = 0;
                  while (1)
                  {
                    v154 = [v136 cmi_intValueFromArrayWithKey:@"CSCMax" forIndex:v153 defaultValue:0 found:&v314];
                    v155 = v153;
                    if ((v153 & 0xFFFFFFFE) != 0)
                    {
                      v155 = 2;
                    }

                    *&self->_anon_7c[4 * v155 + 964] = v154;
                    if ((v314.i8[0] & 1) == 0)
                    {
                      goto LABEL_262;
                    }

                    if (++v153 == 3)
                    {
                      v314.i8[0] = 0;
                      *&self->_anon_7c[1012] = [v136 cmi_intValueForKey:@"CSCChromaScale0" defaultValue:0 found:&v314];
                      if (v314.i8[0])
                      {
                        v314.i8[0] = 0;
                        *&self->_anon_7c[1016] = [v136 cmi_intValueForKey:@"CSCChromaScale1" defaultValue:0 found:&v314];
                        if (v314.i8[0])
                        {
                          v89 = 0;
                          *&self->_anon_7c[1012] = vmul_f32(*&self->_anon_7c[1012], 0x3900000039000000);
                          goto LABEL_111;
                        }
                      }

                      goto LABEL_262;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_262:
  v231 = v247;
  LODWORD(v230) = 0;
  FigDebugAssert3();
  v89 = FigSignalErrorAtGM();
LABEL_111:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v89)
  {
    goto LABEL_275;
  }

  v156 = [v278 objectForKeyedSubscript:@"Histogram"];
  v157 = [v156 objectForKeyedSubscript:@"Config"];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v314.i8[0] = 0;
  self->_anon_7c[1028] = [v157 cmi_intValueForKey:@"Enable" defaultValue:0 found:{&v314, v230, v231}] != 0;
  if (v314.i8[0])
  {
    v314.i8[0] = 0;
    self->_anon_7c[1029] = [v157 cmi_intValueForKey:@"CountClipEnable" defaultValue:0 found:&v314] != 0;
    if (v314.i8[0])
    {
      v158 = 0;
      v314.i8[0] = 0;
      while (1)
      {
        v159 = [v157 cmi_intValueFromArrayWithKey:@"DBOffset" forIndex:v158 defaultValue:0 found:&v314];
        v160 = v158;
        if ((v158 & 0xFFFFFFFE) != 0)
        {
          v160 = 2;
        }

        *&self->_anon_7c[4 * v160 + 1172] = v159;
        if ((v314.i8[0] & 1) == 0)
        {
          break;
        }

        if (++v158 == 3)
        {
          v161 = 0;
          v314.i8[0] = 0;
          while (1)
          {
            v162 = [v157 cmi_intValueFromArrayWithKey:@"DBMin" forIndex:v161 defaultValue:0 found:&v314];
            v163 = v161;
            if ((v161 & 0xFFFFFFFE) != 0)
            {
              v163 = 2;
            }

            *&self->_anon_7c[4 * v163 + 1156] = v162;
            if ((v314.i8[0] & 1) == 0)
            {
              goto LABEL_263;
            }

            if (++v161 == 3)
            {
              v164 = 0;
              v314.i8[0] = 0;
              while (1)
              {
                v165 = [v157 cmi_intValueFromArrayWithKey:@"DBMax" forIndex:v164 defaultValue:0 found:&v314];
                v166 = v164;
                if ((v164 & 0xFFFFFFFE) != 0)
                {
                  v166 = 2;
                }

                *&self->_anon_7c[4 * v166 + 1140] = v165;
                if ((v314.i8[0] & 1) == 0)
                {
                  goto LABEL_263;
                }

                if (++v164 == 3)
                {
                  v167 = 0;
                  v314.i8[0] = 0;
                  v168 = &self->_anon_7c[1124];
                  while (1)
                  {
                    v169 = [v157 cmi_intValueFromArrayWithKey:@"DBGain" forIndex:v167 defaultValue:0 found:&v314];
                    v170 = v167;
                    if ((v167 & 0xFFFFFFFE) != 0)
                    {
                      v170 = 2;
                    }

                    v168->f32[v170] = v169;
                    if ((v314.i8[0] & 1) == 0)
                    {
                      goto LABEL_263;
                    }

                    if (++v167 == 3)
                    {
                      *v168 = vmulq_f32(*v168, vdupq_n_s32(0x38800000u));
                      v314.i8[0] = 0;
                      v171 = [v157 objectForKeyedSubscript:@"Region"];
                      *&self->_anon_7c[1030] = [v171 cmi_intValueForKey:@"StartX" defaultValue:0 found:&v314];

                      if (v314.i8[0])
                      {
                        v314.i8[0] = 0;
                        v172 = [v157 objectForKeyedSubscript:@"Region"];
                        *&self->_anon_7c[1032] = [v172 cmi_intValueForKey:@"StartY" defaultValue:0 found:&v314];

                        if (v314.i8[0])
                        {
                          *&self->_anon_7c[1030] >>= 2;
                          *&self->_anon_7c[1032] >>= 2;
                          v314.i8[0] = 0;
                          v173 = [v157 objectForKeyedSubscript:@"Region"];
                          *&self->_anon_7c[1034] = [v173 cmi_intValueForKey:@"EndX" defaultValue:0 found:&v314];

                          if (v314.i8[0])
                          {
                            v314.i8[0] = 0;
                            v174 = [v157 objectForKeyedSubscript:@"Region"];
                            *&self->_anon_7c[1036] = [v174 cmi_intValueForKey:@"EndY" defaultValue:0 found:&v314];

                            if (v314.i8[0])
                            {
                              *&self->_anon_7c[1034] >>= 2;
                              *&self->_anon_7c[1036] >>= 2;
                              v314.i8[0] = 0;
                              *&self->_anon_7c[1040] = [v157 cmi_intValueForKey:@"C1Offset" defaultValue:0 found:&v314];
                              if (v314.i8[0])
                              {
                                v314.i8[0] = 0;
                                *&self->_anon_7c[1044] = [v157 cmi_intValueForKey:@"C2Offset" defaultValue:0 found:&v314];
                                if (v314.i8[0])
                                {
                                  v314.i8[0] = 0;
                                  *&self->_anon_7c[1048] = [v157 cmi_intValueForKey:@"C1Scale" defaultValue:0 found:&v314];
                                  if (v314.i8[0])
                                  {
                                    v314.i8[0] = 0;
                                    v175 = [v157 cmi_intValueForKey:@"C2Scale" defaultValue:0 found:&v314];
                                    *&self->_anon_7c[1052] = v175;
                                    if (v314.i8[0])
                                    {
                                      v176 = 0;
                                      v177.i32[0] = *&self->_anon_7c[1048];
                                      v177.f32[1] = v175;
                                      *&self->_anon_7c[1048] = vmul_f32(v177, vdup_n_s32(0x37800000u));
                                      v314.i8[0] = 0;
                                      while (1)
                                      {
                                        *&self->_anon_7c[2 * v176 + 1056] = [v157 cmi_intValueFromArrayWithKey:@"Count" forIndex:v176 defaultValue:0 found:&v314];
                                        if ((v314.i8[0] & 1) == 0)
                                        {
                                          break;
                                        }

                                        if (++v176 == 16)
                                        {
                                          v178 = 0;
                                          v314.i8[0] = 0;
                                          while (1)
                                          {
                                            *&self->_anon_7c[2 * v178 + 1088] = [v157 cmi_intValueFromArrayWithKey:@"YThd" forIndex:v178 defaultValue:0 found:&v314];
                                            if ((v314.i8[0] & 1) == 0)
                                            {
                                              goto LABEL_263;
                                            }

                                            if (++v178 == 15)
                                            {
                                              v89 = 0;
                                              *&self->_anon_7c[1118] = -1;
                                              goto LABEL_153;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      goto LABEL_263;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_263:
  v232 = v247;
  LODWORD(v230) = 0;
  FigDebugAssert3();
  v89 = FigSignalErrorAtGM();
LABEL_153:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v89)
  {
    goto LABEL_275;
  }

  v179 = [v278 objectForKeyedSubscript:@"PixelFilter"];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v180 = [v179 objectAtIndexedSubscript:{0, v230, v232}];
  v314.i8[0] = 0;
  self->_anon_7c[1188] = [v180 cmi_intValueForKey:@"CondSel" defaultValue:0 found:&v314];
  if (v314.i8[0] & 1) != 0 && (v314.i8[0] = 0, self->_anon_7c[1189] = [v180 cmi_intValueForKey:@"StatSel" defaultValue:0 found:&v314], (v314.i8[0]) && (v314.i8[0] = 0, self->_anon_7c[1190] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"CountClipEnable", 0, &v314) != 0, (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1192] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"LumaMin", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1196] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"LumaMax", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1200] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"C1Min", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1204] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"C1Max", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1208] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"C2Min", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1212] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"C2Max", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1216] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"LineMax", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1220] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"LineOffset", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1224] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"LineDeltaC1", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1228] = objc_msgSend(v180, "cmi_intValueForKey:defaultValue:found:", @"LineDeltaC2", 0, &v314), (v314.i8[0]))
  {
    v89 = 0;
  }

  else
  {
    v233 = v247;
    LODWORD(v230) = 0;
    FigDebugAssert3();
    v89 = FigSignalErrorAtGM();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v89)
  {
    goto LABEL_275;
  }

  v181 = [v278 objectForKeyedSubscript:@"PixelFilter"];
  v182 = [v181 objectAtIndexedSubscript:0];
  v183 = 0;
  v314.i8[0] = 0;
  v184 = &self->_anon_7c[1300];
  while (1)
  {
    v185 = [v182 cmi_intValueFromArrayWithKey:@"DBGain" forIndex:v183 defaultValue:0 found:{&v314, v230, v233}];
    v186 = v183;
    if ((v183 & 0xFFFFFFFE) != 0)
    {
      v186 = 2;
    }

    v184->f32[v186] = v185;
    if ((v314.i8[0] & 1) == 0)
    {
      break;
    }

    if (++v183 == 3)
    {
      v187 = 0;
      *v184 = vmulq_f32(*v184, vdupq_n_s32(0x38800000u));
      v314.i8[0] = 0;
      while (1)
      {
        v188 = [v182 cmi_intValueFromArrayWithKey:@"DBOffset" forIndex:v187 defaultValue:0 found:&v314];
        v189 = v187;
        if ((v187 & 0xFFFFFFFE) != 0)
        {
          v189 = 2;
        }

        *&self->_anon_7c[4 * v189 + 1284] = v188;
        if ((v314.i8[0] & 1) == 0)
        {
          goto LABEL_251;
        }

        if (++v187 == 3)
        {
          v89 = 0;
          goto LABEL_186;
        }
      }
    }
  }

LABEL_251:
  v233 = v247;
  LODWORD(v230) = 0;
  FigDebugAssert3();
  v89 = FigSignalErrorAtGM();
LABEL_186:

  if (v89)
  {
    goto LABEL_275;
  }

  v190 = [v278 objectForKeyedSubscript:@"PixelFilter"];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v191 = [v190 objectAtIndexedSubscript:{1, v230, v233}];
  v314.i8[0] = 0;
  self->_anon_7c[1232] = [v191 cmi_intValueForKey:@"CondSel" defaultValue:0 found:&v314];
  if (v314.i8[0] & 1) != 0 && (v314.i8[0] = 0, self->_anon_7c[1233] = [v191 cmi_intValueForKey:@"StatSel" defaultValue:0 found:&v314], (v314.i8[0]) && (v314.i8[0] = 0, self->_anon_7c[1234] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"CountClipEnable", 0, &v314) != 0, (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1236] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"LumaMin", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1240] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"LumaMax", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1244] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"C1Min", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1248] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"C1Max", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1252] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"C2Min", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1256] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"C2Max", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1260] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"LineMax", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1264] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"LineOffset", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1268] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"LineDeltaC1", 0, &v314), (v314.i8[0]) && (v314.i8[0] = 0, *&self->_anon_7c[1272] = objc_msgSend(v191, "cmi_intValueForKey:defaultValue:found:", @"LineDeltaC2", 0, &v314), (v314.i8[0]))
  {
    v89 = 0;
  }

  else
  {
    v234 = v247;
    LODWORD(v230) = 0;
    FigDebugAssert3();
    v89 = FigSignalErrorAtGM();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (v89)
  {
    goto LABEL_275;
  }

  v192 = [v278 objectForKeyedSubscript:@"PixelFilter"];
  v193 = [v192 objectAtIndexedSubscript:1];
  v194 = 0;
  v314.i8[0] = 0;
  v195 = &self->_anon_7c[1332];
  while (1)
  {
    v196 = [v193 cmi_intValueFromArrayWithKey:@"DBGain" forIndex:v194 defaultValue:0 found:{&v314, v230, v234}];
    v197 = v194;
    if ((v194 & 0xFFFFFFFE) != 0)
    {
      v197 = 2;
    }

    v195->f32[v197] = v196;
    if ((v314.i8[0] & 1) == 0)
    {
      break;
    }

    if (++v194 == 3)
    {
      v198 = 0;
      *v195 = vmulq_f32(*v195, vdupq_n_s32(0x38800000u));
      v314.i8[0] = 0;
      while (1)
      {
        v199 = [v193 cmi_intValueFromArrayWithKey:@"DBOffset" forIndex:v198 defaultValue:0 found:&v314];
        v200 = v198;
        if ((v198 & 0xFFFFFFFE) != 0)
        {
          v200 = 2;
        }

        *&self->_anon_7c[4 * v200 + 1316] = v199;
        if ((v314.i8[0] & 1) == 0)
        {
          goto LABEL_252;
        }

        if (++v198 == 3)
        {
          v89 = 0;
          goto LABEL_217;
        }
      }
    }
  }

LABEL_252:
  v234 = v247;
  LODWORD(v230) = 0;
  FigDebugAssert3();
  v89 = FigSignalErrorAtGM();
LABEL_217:

  if (v89 || ([v278 objectForKeyedSubscript:@"Tile"], v201 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v277, "validRectInBufferCoords"), v202 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v277, "regionOfInterestRectInBufferCoords"), v203 = objc_claimAutoreleasedReturnValue(), v89 = -[AWBStatistics configWindowsV2:metadata:tilesConfig:validRect:regionOfInterestRect:](self, "configWindowsV2:metadata:tilesConfig:validRect:regionOfInterestRect:", &self->_anon_7c[1388], v273, v201, v202, v203), v203, v202, v201, v89) || (objc_msgSend(v278, "objectForKeyedSubscript:", @"Tile"), v204 = objc_claimAutoreleasedReturnValue(), v89 = configTilesV2(&self->_anon_7c[1444], v204), v204, v89))
  {
LABEL_275:
    v235 = v247;
    LODWORD(v230) = v89;
    FigDebugAssert3();
  }

  else
  {
    v205 = configLSC(&self->_anon_7c[1348], v273, v272, v267);
    v89 = v205;
    if (v205)
    {
      goto LABEL_228;
    }

    *&self->_anon_7c[2592] = [(NSNumber *)self->_digitalFlash intValue];
    v206 = self->_faceAssistedBehaviorMode;
    if (!v206)
    {
      LODWORD(v230) = 0;
      FigDebugAssert3();
      v228 = [MEMORY[0x1E696AD98] numberWithInt:{0, v230, v247}];
      v229 = self->_faceAssistedBehaviorMode;
      self->_faceAssistedBehaviorMode = v228;

      FigSignalErrorAtGM();
      v206 = self->_faceAssistedBehaviorMode;
    }

    v207 = [MEMORY[0x1E696AD98] numberWithInt:{-[NSNumber intValue](v206, "intValue", v230, v234)}];
    v208 = self->_faceAssistedBehaviorMode;
    self->_faceAssistedBehaviorMode = v207;

    if ([(NSNumber *)self->_faceAssistedBehaviorMode intValue]== 2 || [(NSNumber *)self->_faceAssistedBehaviorMode intValue]== 3)
    {
      v209 = [(AWBStatistics *)self _loadANSTNetwork];
      if (v209)
      {
        v235 = v247;
        LODWORD(v230) = v209;
        FigDebugAssert3();
        FigSignalErrorAtGM();
      }
    }

    v205 = configLinearRGBToANSTInput(&self->_anon_7c[1476], v273);
    v89 = v205;
    if (v205)
    {
LABEL_228:
      v235 = v247;
      LODWORD(v230) = v205;
      FigDebugAssert3();
    }
  }

LABEL_229:
  if (dword_1EDD78228)
  {
    v321 = 0;
    v320 = OS_LOG_TYPE_DEFAULT;
    v210 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v211 = v321;
    v274 = v210;
    if (os_log_type_enabled(v274, v320))
    {
      v212 = v211;
    }

    else
    {
      v212 = v211 & 0xFFFFFFFE;
    }

    if (v212)
    {
      v271 = [v277 imageTex];
      v268 = [v277 clippedTex];
      v213 = [v277 lscGainsTex];
      v248 = v213 != 0;
      v266 = v213;
      v214 = [v277 skinMask];
      v244 = v214 != 0;
      v264 = v214;
      v215 = [v277 skyMask];
      v243 = v215 != 0;
      v262 = v215;
      v259 = [v277 firstPixel];
      v241 = [v259 intValue] > 0;
      v257 = [v277 cfaLayout];
      v240 = [v257 intValue] > 0;
      v255 = [v277 downsizeFactor];
      v238 = [v255 intValue] > 0;
      v253 = [v277 digitalFlash];
      v237 = [v253 intValue];
      v246 = [v277 skipDemosaic];
      v236 = [v246 intValue];
      v242 = [v277 lscMaxGain];
      [v242 floatValue];
      v217 = v216 > 0.0;
      v239 = [v277 faceAssistedBehaviorMode];
      v218 = [v239 intValue];
      v219 = [v277 validRectInSensorReadoutCoords];
      v220 = stringFromCGRectDictionaryRepresentation(v219);
      v221 = [v277 validRectInBufferCoords];
      v222 = stringFromCGRectDictionaryRepresentation(v221);
      v223 = [v277 regionOfInterestRectInBufferCoords];
      v224 = stringFromCGRectDictionaryRepresentation(v223);
      v282 = 136318978;
      v283 = "[AWBStatistics configWithModuleConfig:metadata:cameraInfo:awbParams:]";
      v284 = 1024;
      v285 = v271 != 0;
      v286 = 1024;
      v287 = v268 != 0;
      v288 = 1024;
      v289 = v248;
      v290 = 1024;
      v291 = v244;
      v292 = 1024;
      v293 = v243;
      v294 = 1024;
      v295 = v241;
      v296 = 1024;
      v297 = v240;
      v298 = 1024;
      v299 = v238;
      v300 = 1024;
      v301 = v237;
      v302 = 1024;
      v303 = v236;
      v304 = 1024;
      v305 = v217;
      v306 = 1024;
      v307 = v218;
      v308 = 2112;
      v309 = v220;
      v310 = 2112;
      v311 = v222;
      v312 = 2112;
      v313 = v224;
      v225 = v274;
      _os_log_send_and_compose_impl();
    }

    else
    {
      v225 = v274;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v89;
}

- (int)_adjustConfigToValidRectInBufferCoords:(id)a3 validRectInSensorReadoutCoords:(id)a4 regionOfInterestRectInBufferCoords:(id)a5
{
  v8 = a3;
  v9 = a4;
  v54 = a5;
  v10 = *(MEMORY[0x1E695F058] + 16);
  v63.origin = *MEMORY[0x1E695F058];
  v63.size = v10;
  valid = _configStatsDownsizeRatioRuntimeWithValidRect(&self->_awbStatCfg, v8, [(NSNumber *)self->_downsizeFactor unsignedIntValue]);
  if (valid)
  {
    FigDebugAssert3();
    goto LABEL_37;
  }

  v12 = v8;
  v13 = v9;
  memset(&rect, 0, sizeof(rect));
  memset(v55, 0, 32);
  if (CGRectMakeWithDictionaryRepresentation(v12, &rect) && ([v12 objectForKeyedSubscript:@"FullWidth"], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "intValue"), v14, objc_msgSend(v12, "objectForKeyedSubscript:", @"FullHeight"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "intValue"), v16, v15) && v17 && (rect.size.width <= v15 ? (v18 = rect.size.height > v17) : (v18 = 1), !v18))
  {
    if (!v13)
    {
      goto LABEL_20;
    }

    if (CGRectMakeWithDictionaryRepresentation(v13, v55))
    {
      if (rect.size.width <= *&v55[16] && rect.size.height <= *&v55[24])
      {
        v19 = *&v55[8];
        *&self->_anon_7c[1380] = *v55;
LABEL_24:
        *&self->_anon_7c[1382] = v19;

        goto LABEL_25;
      }

      FigDebugAssert3();
      FigSignalErrorAtGM();
LABEL_20:
      v21 = self->_awbStatCfg.layout == 3 && sqrtf((v17 * v15 / 199584)) <= 8.0;
      height = rect.size.height;
      *&self->_anon_7c[1380] = (((v15 << v21) - rect.size.width) * 0.5);
      v19 = ((v17 << v21) - height) * 0.5;
      goto LABEL_24;
    }

    FigDebugAssert3();
    v20 = FigSignalErrorAtGM();
  }

  else
  {
    FigDebugAssert3();
    v20 = FigSignalErrorAtGM();
  }

  valid = v20;

  if (valid)
  {
LABEL_17:
    FigDebugAssert3();
    goto LABEL_37;
  }

LABEL_25:
  valid = _configStatsROIRuntimeWithRegionOfInterestRect(&self->_awbStatCfg, v12, v54, &v63);
  if (valid)
  {
    goto LABEL_17;
  }

  v23 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
    v24 = *v23 == 1;
  }

  else
  {
    v24 = 0;
  }

  v25 = vmulq_f64(vmulq_f64(v63.size, vdupq_n_s64(0x3FEF333333333333uLL)), vdupq_n_s64(0x3FA0000000000000uLL));
  __asm
  {
    FMOV            V3.2D, #2.0
    FMOV            V4.2D, #0.5
  }

  *&v25.f64[0] = vshl_n_s32(vand_s8(vmovn_s64(vcvtq_n_u64_f64(vrndmq_f64(vmulq_f64(vbslq_s8(vcgtq_f64(_Q3, v25), _Q3, v25), _Q4)), 1uLL)), 0xFFFF0000FFFFLL), 5uLL);
  v32.i64[0] = LODWORD(v25.f64[0]);
  v32.i64[1] = HIDWORD(v25.f64[0]);
  __asm { FMOV            V5.2D, #0.25 }

  v34 = vaddq_f64(v63.size, v63.origin);
  v35 = vmlaq_f64(v63.origin, _Q3, vrndmq_f64(vmulq_f64(vsubq_f64(v63.size, vcvtq_f64_u64(v32)), _Q5)));
  v36 = vmovn_s64(vcvtq_s64_f64(vbicq_s8(v35, vcltzq_f64(v35))));
  *&v25.f64[0] = vadd_s32(*&v25.f64[0], v36);
  v32.i64[0] = SLODWORD(v25.f64[0]);
  v32.i64[1] = SHIDWORD(v25.f64[0]);
  v37 = vcvtq_f64_s64(v32);
  *&_Q3.f64[0] = vmovn_s64(vcgtq_f64(v34, v37));
  v38 = BYTE4(_Q3.f64[0]);
  if (LOBYTE(_Q3.f64[0]))
  {
    v39 = v37.f64[0];
  }

  else
  {
    v39 = v34.f64[0];
  }

  v40 = v37.f64[1];
  if ((v38 & 1) == 0)
  {
    v40 = v34.f64[1];
  }

  *&self->_anon_7c[1030] = v36.i16[0];
  *&self->_anon_7c[1032] = v36.i16[2];
  *&self->_anon_7c[1034] = v39;
  *&self->_anon_7c[1036] = v40;
  if (v24)
  {
    kdebug_trace();
  }

  _configTilesRuntimeWithValidRect(&self->_anon_7c[1444], &v63);
  valid = 0;
LABEL_37:
  if (dword_1EDD78228)
  {
    v62 = 0;
    v61 = OS_LOG_TYPE_DEFAULT;
    v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v42 = v62;
    v43 = v41;
    if (os_log_type_enabled(v43, v61))
    {
      v44 = v42;
    }

    else
    {
      v44 = v42 & 0xFFFFFFFE;
    }

    if (v44)
    {
      v52 = v9;
      v53 = v8;
      v45 = [(NSNumber *)self->_downsizeFactor unsignedIntValue];
      v46 = stringFromCGRectDictionaryRepresentation(v9);
      v47 = stringFromCGRectDictionaryRepresentation(v8);
      v48 = stringFromCGRectDictionaryRepresentation(v54);
      DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v63);
      v50 = stringFromCGRectDictionaryRepresentation(DictionaryRepresentation);
      *v55 = 136316418;
      *&v55[4] = "[AWBStatistics _adjustConfigToValidRectInBufferCoords:validRectInSensorReadoutCoords:regionOfInterestRectInBufferCoords:]";
      *&v55[12] = 1024;
      *&v55[14] = v45;
      *&v55[18] = 2112;
      *&v55[20] = v46;
      *&v55[28] = 2112;
      *&v55[30] = v47;
      v56 = 2112;
      v57 = v48;
      v58 = 2112;
      v59 = v50;
      _os_log_send_and_compose_impl();

      v9 = v52;
      v8 = v53;
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return valid;
}

- (int)process:(id)a3 clipped:(id)a4 lscGainsTex:(id)a5 validRectInBufferCoords:(id)a6 validRectInSensorReadoutCoords:(id)a7 awbStatsBuffer:(id)a8 awbTileStatsConfig:(id *)a9 anstSkinMask:(id)a10 anstSkinMaskData:(id *)a11 skyMaskTex:(id)a12 skyMaskData:(id *)a13 regionOfInterestRectInBufferCoords:(id)a14 downsizeFactor:(unsigned int *)a15
{
  v146 = a3;
  v141 = a4;
  v142 = a5;
  v21 = a6;
  v138 = a7;
  v143 = a8;
  v144 = a10;
  v147 = a12;
  v137 = a14;
  location = 0;
  v182 = 0;
  v22 = *MEMORY[0x1E6966020];
  v179[0] = *MEMORY[0x1E69660D8];
  v179[1] = v22;
  v180[0] = MEMORY[0x1E695E0F8];
  v180[1] = &unk_1F48E6198;
  v139 = v21;
  pixelBufferAttributes = [MEMORY[0x1E695DF20] dictionaryWithObjects:v180 forKeys:v179 count:2];
  v177 = 0;
  pixelBufferOut = 0;
  v176 = 0;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v175 = 0;
  v173 = 0u;
  v174 = 0u;
  v172 = 0u;
  [v146 pixelFormat];
  MTLPixelFormatGetInfo();
  v171 = 0;
  v23 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v23;
  if (!CGRectMakeWithDictionaryRepresentation(v21, &rect))
  {
    v133 = v134;
    LODWORD(v132) = 0;
    FigDebugAssert3();
    v25 = FigSignalErrorAtGM();
    v145 = 0;
LABEL_128:
    v93 = 0;
    v87 = 0;
    v77 = 0;
    goto LABEL_129;
  }

  v24 = [(AWBStatistics *)self _adjustConfigToValidRectInBufferCoords:v21 validRectInSensorReadoutCoords:v138 regionOfInterestRectInBufferCoords:v137];
  v25 = v24;
  if (v24)
  {
    v133 = v134;
    LODWORD(v132) = v24;
    FigDebugAssert3();
    v145 = 0;
    v93 = 0;
    v87 = 0;
    v77 = 0;
    v75 = 0;
    v148 = 0;
    goto LABEL_61;
  }

  downsizeRatio = self->_awbStatCfg.downsizeRatio;
  v27 = *&self->_anon_7c[1464] * downsizeRatio;
  v28 = *&self->_anon_7c[1466] * downsizeRatio;
  a9->var0 = self->_anon_7c[1444];
  v29 = vmulq_s32(*&self->_anon_7c[1448], vdupq_n_s32(downsizeRatio));
  *&a9->var1 = v29;
  a9->var5 = v27;
  a9->var6 = v28;
  v30 = (*&self->_anon_7c[1456] - *&self->_anon_7c[1448]) / *&self->_anon_7c[1464];
  if (v30 >= 32)
  {
    v30 = 32;
  }

  v135 = v30;
  if ((*&self->_anon_7c[1460] - *&self->_anon_7c[1452]) / *&self->_anon_7c[1466] >= 32)
  {
    v31 = 32;
  }

  else
  {
    v31 = (*&self->_anon_7c[1460] - *&self->_anon_7c[1452]) / *&self->_anon_7c[1466];
  }

  *a15 = downsizeRatio;
  if (v144)
  {
    LODWORD(v145) = [(NSNumber *)self->_faceAssistedBehaviorMode intValue]== 1;
  }

  else
  {
    LODWORD(v145) = 0;
  }

  espressoPlan = self->_espressoPlan;
  if (espressoPlan)
  {
    if ([(NSNumber *)self->_faceAssistedBehaviorMode intValue]== 2)
    {
      HIDWORD(v145) = 1;
      goto LABEL_18;
    }

    LODWORD(espressoPlan) = [(NSNumber *)self->_faceAssistedBehaviorMode intValue]== 3;
  }

  HIDWORD(v145) = espressoPlan;
  if (((v145 | espressoPlan) & 1) == 0)
  {
    HIDWORD(v145) = 0;
    goto LABEL_20;
  }

LABEL_18:
  v29.i64[0] = *&rect.size.width;
  v171 = rect.size.width < rect.size.height;
LABEL_20:
  if (v145 && ([v144 width] <= 0xFF && objc_msgSend(v144, "height") <= 0xBF || objc_msgSend(v144, "pixelFormat") != 25 && objc_msgSend(v144, "pixelFormat") != 55 && objc_msgSend(v144, "pixelFormat") != 10 && objc_msgSend(v144, "pixelFormat") != 20))
  {
    v133 = v134;
    LODWORD(v132) = 0;
    FigDebugAssert3();
    v25 = FigSignalErrorAtGM();
    LODWORD(v145) = 1;
    goto LABEL_128;
  }

  if (!HIDWORD(v145))
  {
    v34 = 0;
    goto LABEL_32;
  }

  v33 = objc_opt_new();
  v34 = v33;
  if (!v33)
  {
    v133 = v134;
    LODWORD(v132) = 0;
    FigDebugAssert3();
    v25 = FigSignalErrorAtGM();
    HIDWORD(v145) = 1;
    goto LABEL_128;
  }

  v35 = [v33 desc];
  [v35 setTextureType:2];

  v36 = [v34 desc];
  [v36 setPixelFormat:113];

  v37 = [v146 width];
  v38 = self->_awbStatCfg.downsizeRatio;
  v39 = [v34 desc];
  [v39 setWidth:v37 / v38];

  v40 = [v146 height];
  v41 = self->_awbStatCfg.downsizeRatio;
  v42 = [v34 desc];
  [v42 setHeight:v40 / v41];

  v43 = [v34 desc];
  [v43 setDepth:1];

  v44 = [v34 desc];
  [v44 setArrayLength:1];

  v45 = [v34 desc];
  [v45 setStorageMode:0];

  v46 = [v34 desc];
  [v46 setUsage:7];

  [v34 setLabel:0];
  v47 = [(FigMetalContext *)self->_metalContext allocator];
  v48 = [v47 newTextureWithDescriptor:v34];
  v49 = v182;
  v182 = v48;

  if (!v182)
  {
    v133 = v134;
    LODWORD(v132) = 0;
    FigDebugAssert3();
    v25 = FigSignalErrorAtGM();
    HIDWORD(v145) = 1;
LABEL_111:
    v93 = 0;
    v87 = 0;
    v77 = v34;
LABEL_129:
    v75 = 0;
    v148 = 0;
    goto LABEL_61;
  }

LABEL_32:
  v50 = [(FigMetalContext *)self->_metalContext commandQueue];
  v51 = [v50 commandBuffer];

  if (!v51)
  {
    v133 = v134;
    LODWORD(v132) = 0;
    FigDebugAssert3();
    v25 = FigSignalErrorAtGM();
    goto LABEL_111;
  }

  v148 = v51;
  if (*MEMORY[0x1E695FF58])
  {
    v52 = [v51 commandQueue];
    v53 = [v52 commandBuffer];

    [v53 setLabel:@"KTRACE_MTLCMDBUF"];
    [v53 addCompletedHandler:&__block_literal_global_3];
    [v53 commit];
    [v51 addCompletedHandler:&__block_literal_global_102];
  }

  v54 = [v51 computeCommandEncoder];
  if (!v54)
  {
    v133 = v134;
    LODWORD(v132) = 0;
    FigDebugAssert3();
    v25 = FigSignalErrorAtGM();
    v93 = 0;
    v87 = 0;
    v77 = v34;
    v75 = 0;
    goto LABEL_61;
  }

  v55 = DWORD2(v172);
  v149 = v54;
  [v54 setComputePipelineState:self->_resetMtlBufferPipelineState];
  [v149 setBuffer:v143 offset:0 atIndex:1];
  *&v165[0] = [v143 length] >> 2;
  *(v165 + 8) = vdupq_n_s64(1uLL);
  v150[0] = [(MTLComputePipelineState *)self->_resetMtlBufferPipelineState threadExecutionWidth];
  *&v150[1] = *(v165 + 8);
  [v149 dispatchThreads:v165 threadsPerThreadgroup:v150];
  [v149 setTexture:v146 atIndex:0];
  [v149 setTexture:v141 atIndex:1];
  [v149 setTexture:v142 atIndex:2];
  self->_anon_7c[2588] = [(NSNumber *)self->_skipDemosaic BOOLValue];
  *&self->_anon_7c[2592] = [(NSNumber *)self->_digitalFlash intValue];
  lscMaxGain = self->_lscMaxGain;
  v57 = 1.0;
  LODWORD(v58) = 1.0;
  if (lscMaxGain)
  {
    [(NSNumber *)lscMaxGain floatValue];
  }

  *&self->_anon_7c[1356] = LODWORD(v58);
  lscModulationWeight = self->_lscModulationWeight;
  if (lscModulationWeight)
  {
    [(NSNumber *)lscModulationWeight floatValue];
    v57 = v60;
  }

  *&self->_anon_7c[1360] = v57;
  [v149 setBytes:&self->_awbStatCfg length:2608 atIndex:0];
  if (HIDWORD(v145))
  {
    [v149 setTexture:v182 atIndex:5];
  }

  if ((v55 & 0x10000) == 0)
  {
    v61 = v149;
    if ((BYTE10(v172) & 1) == 0)
    {
      goto LABEL_130;
    }

LABEL_50:
    [v61 setComputePipelineState:self->_normTileStatsPipelineState];
    v72 = [(MTLComputePipelineState *)self->_normTileStatsPipelineState threadExecutionWidth];
    v73 = [(MTLComputePipelineState *)self->_normTileStatsPipelineState maxTotalThreadsPerThreadgroup];
    *&v165[0] = v135;
    *(&v165[0] + 1) = v31;
    *&v165[1] = 1;
    v150[0] = v72;
    v150[1] = v73 / v72;
    v150[2] = 1;
    [v149 dispatchThreads:v165 threadsPerThreadgroup:v150];
    [v149 setComputePipelineState:self->_normWindowStatsPipelineState];
    v74 = [(MTLComputePipelineState *)self->_normWindowStatsPipelineState threadExecutionWidth];
    v75 = v149;
    v76 = [(MTLComputePipelineState *)self->_normWindowStatsPipelineState maxTotalThreadsPerThreadgroup];
    v165[0] = xmmword_1C9332C60;
    *&v165[1] = 1;
    v150[0] = v74;
    v150[1] = v76 / v74;
    v150[2] = 1;
    [v149 dispatchThreads:v165 threadsPerThreadgroup:v150];
    if (v145)
    {
      v77 = objc_opt_new();

      if (v77)
      {
        v78 = [v77 desc];
        [v78 setTextureType:2];

        v79 = [v77 desc];
        [v79 setPixelFormat:10];

        v80 = [v77 desc];
        [v80 setWidth:256];

        v81 = [v77 desc];
        [v81 setHeight:192];

        v82 = [v77 desc];
        [v82 setDepth:1];

        v83 = [v77 desc];
        [v83 setArrayLength:1];

        v84 = [v77 desc];
        [v84 setUsage:7];

        v85 = [v77 desc];
        [v85 setStorageMode:0];

        [v77 setLabel:0];
        v86 = [(FigMetalContext *)self->_metalContext allocator];
        v87 = [v86 newTextureWithDescriptor:v77];

        if (v87)
        {
          [v149 setComputePipelineState:self->_resizeANSTPipelineState];
          v88 = [(MTLComputePipelineState *)self->_resizeANSTPipelineState threadExecutionWidth];
          v75 = v149;
          v89 = [(MTLComputePipelineState *)self->_resizeANSTPipelineState maxTotalThreadsPerThreadgroup];
          v90 = v89 / [(MTLComputePipelineState *)self->_resizeANSTPipelineState threadExecutionWidth];
          [v149 setImageblockWidth:v88 height:v90];
          [v149 setTexture:v144 atIndex:3];
          [v149 setTexture:v87 atIndex:4];
          [v149 setBytes:&v171 length:1 atIndex:2];
          v91 = [v87 width];
          v92 = [v87 height];
          *&v165[0] = v91;
          *(&v165[0] + 1) = v92;
          *&v165[1] = 1;
          v150[0] = v88;
          v150[1] = v90;
          v150[2] = 1;
          [v149 dispatchThreads:v165 threadsPerThreadgroup:v150];
          v93 = 0;
          v25 = 0;
          LODWORD(v145) = 1;
          goto LABEL_61;
        }

        v133 = v134;
        LODWORD(v132) = 0;
        FigDebugAssert3();
        v25 = FigSignalErrorAtGM();
        LODWORD(v145) = 1;
        v93 = 0;
        v87 = 0;
      }

      else
      {
        v133 = v134;
        LODWORD(v132) = 0;
        FigDebugAssert3();
        v25 = FigSignalErrorAtGM();
        LODWORD(v145) = 1;
        v93 = 0;
        v87 = 0;
        v77 = 0;
      }

      goto LABEL_135;
    }

    if (HIDWORD(v145))
    {
      if (CVPixelBufferCreate(*MEMORY[0x1E695E480], 0x200uLL, 0x180uLL, 0x42475241u, pixelBufferAttributes, &pixelBufferOut))
      {
        goto LABEL_133;
      }

      if (!pixelBufferOut)
      {
        FigDebugAssert3();
        v98 = 0;
        v25 = FigSignalErrorAtGM();
        v145 = 0x100000000;
        v93 = 0;
        v87 = 0;
        v77 = v34;
        goto LABEL_85;
      }

      v94 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:pixelBufferOut pixelFormat:73 usage:7 plane:0];
      if (!v94)
      {
LABEL_133:
        v133 = v134;
        LODWORD(v132) = 0;
        FigDebugAssert3();
        v25 = FigSignalErrorAtGM();
        v145 = 0x100000000;
        goto LABEL_134;
      }

      [v149 setComputePipelineState:self->_fitWbTmRGBToANSTInputPipelineState];
      [v149 setTexture:v182 atIndex:5];
      [v149 setTexture:v94 atIndex:6];
      [v149 setBytes:&v171 length:1 atIndex:2];
      v95 = [(MTLComputePipelineState *)self->_fitWbTmRGBToANSTInputPipelineState threadExecutionWidth];
      v75 = v149;
      v96 = [(MTLComputePipelineState *)self->_fitWbTmRGBToANSTInputPipelineState maxTotalThreadsPerThreadgroup];
      v165[0] = xmmword_1C9332C70;
      *&v165[1] = 1;
      v150[0] = v95;
      v150[1] = v96 / v95;
      v150[2] = 1;
      [v149 dispatchThreads:v165 threadsPerThreadgroup:v150];
      v87 = 0;
      v25 = 0;
      v145 = 0x100000000;
      v93 = v94;
    }

    else
    {
      v145 = 0;
      v93 = 0;
      v87 = 0;
      v25 = 0;
    }

    v77 = v34;
    goto LABEL_61;
  }

  if (self->_awbStatCfg.layout != 3)
  {
    [v149 setComputePipelineState:self->_computeAWBStatsBayerFastPipelineState];
    v67 = [(MTLComputePipelineState *)self->_computeAWBStatsBayerFastPipelineState threadExecutionWidth];
    v68 = [(MTLComputePipelineState *)self->_computeAWBStatsBayerFastPipelineState maxTotalThreadsPerThreadgroup];
    v69 = [v146 width];
    v70 = self->_awbStatCfg.downsizeRatio;
    v71 = [v146 height] / v70;
    *&v165[0] = v69 / v70;
    *(&v165[0] + 1) = v71;
    *&v165[1] = 1;
    v150[0] = v67;
    v150[1] = v68 / v67;
    v150[2] = 1;
    [v149 dispatchThreads:v165 threadsPerThreadgroup:v150];
    goto LABEL_49;
  }

  if ([v142 textureType] == 3)
  {
    [v149 setComputePipelineState:self->_computeAWBStatsQuadraFastPipelineState];
    v62 = [(MTLComputePipelineState *)self->_computeAWBStatsQuadraFastPipelineState threadExecutionWidth];
    v63 = [(MTLComputePipelineState *)self->_computeAWBStatsQuadraFastPipelineState maxTotalThreadsPerThreadgroup];
    v64 = [v146 width];
    v65 = self->_awbStatCfg.downsizeRatio;
    v66 = [v146 height] / v65;
    *&v165[0] = v64 / v65;
    *(&v165[0] + 1) = v66;
    *&v165[1] = 1;
    v150[0] = v62;
    v150[1] = v63 / v62;
    v150[2] = 1;
    [v149 dispatchThreads:v165 threadsPerThreadgroup:v150];
LABEL_49:
    v61 = v149;
    goto LABEL_50;
  }

LABEL_130:
  v133 = v134;
  LODWORD(v132) = 0;
  FigDebugAssert3();
  v25 = FigSignalErrorAtGM();
LABEL_134:
  v93 = 0;
  v87 = 0;
  v77 = v34;
LABEL_135:
  v75 = v149;
LABEL_61:
  v149 = v75;
  [v75 endEncoding];
  [v148 commit];
  [v148 waitUntilCompleted];
  if (!HIDWORD(v145))
  {
    v98 = 0;
    goto LABEL_73;
  }

  [@"input_image" UTF8String];
  if (espresso_network_bind_cvpixelbuffer() || (v97 = *MEMORY[0x1E695E480], CVPixelBufferCreate(*MEMORY[0x1E695E480], 0x100uLL, 0xC0uLL, 0x4C303066u, pixelBufferAttributes, &v177)) || !v177 || ([@"skin@output" UTF8String], espresso_network_bind_cvpixelbuffer()) || espresso_plan_execute_sync() || CVPixelBufferCreate(v97, 0x100uLL, 0xC0uLL, 0x4C303038u, pixelBufferAttributes, &v176) || !v176 || convertANSTMaskFrom32FloatTo8Uint(v177, v176))
  {
    FigDebugAssert3();
    v25 = FigSignalErrorAtGM();
    v98 = 0;
LABEL_123:
    HIDWORD(v145) = 1;
    goto LABEL_85;
  }

  v98 = [(FigMetalContext *)self->_metalContext bindPixelBufferToMTL2DTexture:v176 pixelFormat:10 usage:1 plane:0];
  if (!v98)
  {
    FigDebugAssert3();
    v98 = 0;
    v25 = 0;
    goto LABEL_123;
  }

  v25 = 0;
LABEL_73:
  if (v145)
  {
    v99 = v87;
  }

  else
  {
    v99 = v98;
  }

  objc_storeStrong(&location, v99);
  v100 = v147;
  if (location)
  {
    [location pixelFormat];
    v167 = 0;
    v166 = 0u;
    memset(v165, 0, sizeof(v165));
    v101 = [location device];
    MTLPixelFormatGetInfoForDevice();

    v102 = *(&v165[1] + 1);
    v103 = [location width] * v102;
    v104 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(location, "height") * v103}];
    v105 = v104;
    v136 = v25;
    if (!v104 || (v106 = location, v107 = [v104 mutableBytes], v108 = objc_msgSend(location, "width"), v109 = objc_msgSend(location, "height"), memset(v150, 0, sizeof(v150)), v151 = v108, *&v152 = v109, *(&v152 + 1) = 1, objc_msgSend(v106, "getBytes:bytesPerRow:fromRegion:mipmapLevel:", v107, v103, v150, 0), !a11))
    {
      FigDebugAssert3();

      v25 = v136;
      goto LABEL_85;
    }

    v110 = v105;
    *a11 = v105;

    v100 = v147;
    v25 = v136;
  }

  if (v100)
  {
    [v100 pixelFormat];
    v167 = 0;
    v166 = 0u;
    memset(v165, 0, sizeof(v165));
    v111 = [v100 device];
    MTLPixelFormatGetInfoForDevice();

    v112 = *(&v165[1] + 1);
    v113 = [v147 width] * v112;
    v114 = [MEMORY[0x1E695DF88] dataWithLength:{objc_msgSend(v147, "height") * v113}];
    v115 = v114;
    if (v114 && (v116 = [v114 mutableBytes], v117 = objc_msgSend(v147, "width"), v118 = objc_msgSend(v147, "height"), memset(v150, 0, sizeof(v150)), v151 = v117, *&v152 = v118, *(&v152 + 1) = 1, objc_msgSend(v147, "getBytes:bytesPerRow:fromRegion:mipmapLevel:", v116, v113, v150, 0), a13))
    {
      v119 = v115;
      *a13 = v115;
    }

    else
    {
      FigDebugAssert3();
    }
  }

LABEL_85:
  FigMetalDecRef();
  FigMetalDecRef();
  CVPixelBufferRelease(pixelBufferOut);
  CVPixelBufferRelease(v177);
  CVPixelBufferRelease(v176);
  if (dword_1EDD78228)
  {
    v120 = v25;
    v169 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v121 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v122 = v169;
    if (os_log_type_enabled(v121, type))
    {
      v123 = v122;
    }

    else
    {
      v123 = v122 & 0xFFFFFFFE;
    }

    if (v123)
    {
      v124 = self->_espressoPlan;
      *(v150 + 4) = "[AWBStatistics process:clipped:lscGainsTex:validRectInBufferCoords:validRectInSensorReadoutCoords:awbStatsBuffer:awbTileStatsConfig:anstSkinMask:anstSkinMaskData:skyMaskTex:skyMaskData:regionOfInterestRectInBufferCoords:downsizeFactor:]";
      v125 = v124 != 0;
      LODWORD(v150[0]) = 136318210;
      WORD2(v150[1]) = 1024;
      if (v177)
      {
        v126 = v176 == 0;
      }

      else
      {
        v126 = 1;
      }

      v127 = !v126;
      *(&v150[1] + 6) = v146 != 0;
      WORD1(v150[2]) = 1024;
      HIDWORD(v150[2]) = v141 != 0;
      LOWORD(v151) = 1024;
      *(&v151 + 2) = v142 != 0;
      HIWORD(v151) = 1024;
      LODWORD(v152) = v144 != 0;
      WORD2(v152) = 1024;
      *(&v152 + 6) = v147 != 0;
      WORD5(v152) = 1024;
      HIDWORD(v152) = v145;
      v153 = 1024;
      v154 = HIDWORD(v145);
      v155 = 1024;
      v156 = v171;
      v157 = 1024;
      v158 = v125;
      v159 = 1024;
      v160 = pixelBufferOut != 0;
      v161 = 1024;
      v162 = v127;
      v163 = 1024;
      v164 = location != 0;
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v25 = v120;
  }

  if (v25)
  {
    FigDebugAssert3();
    if (dword_1EDD78228)
    {
      v169 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v129 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v130 = v169;
      if (os_log_type_enabled(v129, type))
      {
        v131 = v130;
      }

      else
      {
        v131 = v130 & 0xFFFFFFFE;
      }

      if (v131)
      {
        LODWORD(v150[0]) = 136315394;
        *(v150 + 4) = "[AWBStatistics process:clipped:lscGainsTex:validRectInBufferCoords:validRectInSensorReadoutCoords:awbStatsBuffer:awbTileStatsConfig:anstSkinMask:anstSkinMaskData:skyMaskTex:skyMaskData:regionOfInterestRectInBufferCoords:downsizeFactor:]";
        WORD2(v150[1]) = 1024;
        *(&v150[1] + 6) = v25;
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return v25;
}

uint64_t __237__AWBStatistics_process_clipped_lscGainsTex_validRectInBufferCoords_validRectInSensorReadoutCoords_awbStatsBuffer_awbTileStatsConfig_anstSkinMask_anstSkinMaskData_skyMaskTex_skyMaskData_regionOfInterestRectInBufferCoords_downsizeFactor___block_invoke()
{
  if (*MEMORY[0x1E695FF58] == 1)
  {
    return kdebug_trace();
  }

  return result;
}

void __237__AWBStatistics_process_clipped_lscGainsTex_validRectInBufferCoords_validRectInSensorReadoutCoords_awbStatsBuffer_awbTileStatsConfig_anstSkinMask_anstSkinMaskData_skyMaskTex_skyMaskData_regionOfInterestRectInBufferCoords_downsizeFactor___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 status] == 4)
  {
    [v2 GPUEndTime];
    [v2 GPUStartTime];
  }

  else
  {
    [v2 status];
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }
}

+ (int)getTileStatsRegionWithMetadata:(id)a3 cropRectLTMInCoords:(CGRect)a4 ltmInDownsamplingRatio:(float)a5 tileStatsRegionLTMInCoordsDictOut:(id *)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v12 = a3;
  v13 = *(MEMORY[0x1E695F058] + 16);
  v34.origin = *MEMORY[0x1E695F058];
  v34.size = v13;
  v14 = [v12 cmi_unsignedIntValueForKey:*MEMORY[0x1E69910B0] defaultValue:1 found:0];
  [v12 cmi_cgRectForKey:*MEMORY[0x1E6991100] defaultValue:0 found:{*MEMORY[0x1E695F050], *(MEMORY[0x1E695F050] + 8), *(MEMORY[0x1E695F050] + 16), *(MEMORY[0x1E695F050] + 24)}];
  if (!v14 || (v19 = v17, v20 = v18, CGRectIsNull(*&v15)))
  {
    v29 = 0;
    FigSignalErrorAtGM();
    valid = 0;
  }

  else
  {
    v21 = a5;
    v32[0] = @"X";
    v22 = [MEMORY[0x1E696AD98] numberWithDouble:x * v21];
    v33[0] = v22;
    v32[1] = @"Y";
    v23 = [MEMORY[0x1E696AD98] numberWithDouble:y * v21];
    v33[1] = v23;
    v32[2] = @"Width";
    v24 = [MEMORY[0x1E696AD98] numberWithDouble:width * v21];
    v33[2] = v24;
    v32[3] = @"Height";
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:height * v21];
    v33[3] = v25;
    v32[4] = @"FullWidth";
    v26 = v14;
    v27 = [MEMORY[0x1E696AD98] numberWithDouble:v19 / v14];
    v33[4] = v27;
    v32[5] = @"FullHeight";
    v28 = [MEMORY[0x1E696AD98] numberWithDouble:v20 / v26];
    v33[5] = v28;
    v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:6];

    bzero(v35, 0xA30uLL);
    valid = _configStatsDownsizeRatioRuntimeWithValidRect(v35, v29, 8u);
    if (valid || (valid = _configStatsROIRuntimeWithRegionOfInterestRect(v35, v29, 0, &v34)) != 0)
    {
      FigDebugAssert3();
    }

    else
    {
      _configTilesRuntimeWithValidRect(&v36, &v34);
      v40.origin.x = (8 * HIDWORD(v36)) / v21;
      v40.origin.y = (8 * v37) / v21;
      v40.size.width = (8 * ((v38 - HIDWORD(v36)) & ~((v38 - HIDWORD(v36)) >> 31))) / v21;
      v40.size.height = (8 * ((v39 - v37) & ~((v39 - v37) >> 31))) / v21;
      valid = 0;
      *a6 = CGRectCreateDictionaryRepresentation(v40);
    }
  }

  return valid;
}

- (int)configWindowsV2:(id *)a3 metadata:(id)a4 tilesConfig:(id)a5 validRect:(id)a6 regionOfInterestRect:(id)a7
{
  v12 = a4;
  v71 = a5;
  v13 = a6;
  dict = a7;
  v14 = *(MEMORY[0x1E695F050] + 16);
  rect.origin = *MEMORY[0x1E695F050];
  rect.size = v14;
  v79.origin = rect.origin;
  v79.size = v14;
  v15 = MEMORY[0x1E695EFD0];
  v16 = *(MEMORY[0x1E695EFD0] + 16);
  *&v78.a = *MEMORY[0x1E695EFD0];
  *&v78.c = v16;
  *&v78.tx = *(MEMORY[0x1E695EFD0] + 32);
  v17 = [v12 objectForKeyedSubscript:*MEMORY[0x1E6991108]];
  v18 = [v17 intValue];

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (![v12 count])
  {
    FigDebugAssert3();
LABEL_52:
    valid = FigSignalErrorAtGM();
    v25 = 0;
    v23 = 0;
    goto LABEL_42;
  }

  if (!CGRectMakeWithDictionaryRepresentation(v13, &rect))
  {
    FigDebugAssert3();
    goto LABEL_52;
  }

  if (!dict)
  {
    goto LABEL_9;
  }

  if (!CGRectMakeWithDictionaryRepresentation(dict, &v79))
  {
    FigDebugAssert3();
    goto LABEL_52;
  }

  if (CGRectContainsRect(rect, v79))
  {
    rect = v79;
  }

  else
  {
    v61 = v66;
    LODWORD(v60) = 0;
    FigDebugAssert3();
    FigSignalErrorAtGM();
  }

LABEL_9:
  [(GeometryUtilities *)v12 getTransformCropRectFromSensorCoordsToValidBufferCoordsWithMetadata:rect.origin.x validBufferRect:rect.origin.y, rect.size.width, rect.size.height];
  v78 = v77;
  valid = _configStatsDownsizeRatioRuntimeWithValidRect(&self->_awbStatCfg, v13, [(NSNumber *)self->_downsizeFactor unsignedIntValue]);
  if (valid)
  {
    FigDebugAssert3();
    v25 = 0;
    v23 = 0;
    goto LABEL_42;
  }

  width = rect.size.width;
  height = rect.size.height;
  LOBYTE(v7) = self->_awbStatCfg.downsizeRatio;
  [(GeometryUtilities *)v12 getTransformCropRectFromSensorCoordsToValidBufferCoordsWithMetadata:rect.origin.x validBufferRect:rect.origin.y, rect.size.width, rect.size.height];
  v78 = v77;
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v22 = [v12 objectForKeyedSubscript:{*MEMORY[0x1E6990FB8], v60, v61}];
  v23 = v22;
  if (!v22)
  {
    v25 = 0;
    goto LABEL_37;
  }

  v24 = [v22 objectForKeyedSubscript:*MEMORY[0x1E6990E98]];
  v25 = v24;
  if (!v24)
  {
LABEL_37:
    valid = 0;
    goto LABEL_42;
  }

  v26 = [v24 objectForKeyedSubscript:*MEMORY[0x1E6990EC0]];
  if (![v26 count])
  {
    valid = 0;
    goto LABEL_41;
  }

  v62 = v25;
  v63 = v23;
  v65 = v12;
  v64 = v26;
  v27 = [v26 sortedArrayUsingComparator:&__block_literal_global_149];
  v28 = 0;
  v29 = width / v7;
  v30 = height / v7;
  v31 = *MEMORY[0x1E69910D8];
  if (v18 == 2324)
  {
    v32 = v15;
  }

  else
  {
    v32 = &v78;
  }

  v33 = v30 * 9.0;
  v75 = height / v7;
  v34 = vdupq_lane_s64(*&v30, 0);
  __asm { FMOV            V2.2D, #0.5 }

  v67 = _Q2;
  v68 = v34;
  v40 = v33 / 10.0;
  for (i = a3; ; ++i)
  {
    v42 = 2 * [v27 count];
    if (v42 >= 2)
    {
      v42 = 2;
    }

    if (v42 <= v28)
    {
      valid = 0;
      v12 = v65;
      v25 = v62;
      v23 = v63;
      goto LABEL_39;
    }

    v43 = [v27 objectAtIndexedSubscript:v28 >> 1];
    v44 = v43;
    if (v43)
    {
      break;
    }

    i->var0 = 0;
LABEL_35:

    ++v28;
  }

  v45 = [v43 objectForKeyedSubscript:v31];
  if (!CGRectMakeWithDictionaryRepresentation(v45, &v76))
  {
    v12 = v65;
    v25 = v62;
    FigDebugAssert3();
    valid = 0;
    goto LABEL_47;
  }

  v46 = *&v32->c;
  *&v77.a = *&v32->a;
  *&v77.c = v46;
  *&v77.tx = *&v32->tx;
  v81 = CGRectApplyAffineTransform(v76, &v77);
  v76.origin.x = v29 * v81.origin.x;
  v76.origin.y = v75 * v81.origin.y;
  v47 = v29 * v81.size.width;
  v48 = v75 * v81.size.height;
  v76.size.width = v29 * v81.size.width;
  v76.size.height = v75 * v81.size.height;
  i->var0 = 0;
  if ([(NSNumber *)self->_digitalFlash intValue])
  {
    v51 = 5000;
  }

  else
  {
    v51 = 50000;
  }

  v49 = v47;
  v50 = v48;
  if ((v51 / (2 * self->_awbStatCfg.downsizeRatio)) >= (v49 * v50))
  {
LABEL_33:
    memset_pattern16(i->var2, &unk_1C9332C80, 8uLL);

    goto LABEL_35;
  }

  size = v76.size;
  origin = v76.origin;
  v73 = vcvt_f32_f64(vmulq_n_f64(v76.size, flt_1C9332C18[v28]));
  if (v40 <= v73.f32[1])
  {
    v52 = v40;
  }

  else
  {
    v52 = v73.f32[1];
  }

  LOBYTE(v77.a) = 0;
  a3->var1 = [v71 cmi_intValueForKey:@"Bitdepth" defaultValue:0 found:&v77] != 0;
  if (LOBYTE(v77.a))
  {
    v53 = *&vcvt_s32_f32(vcvt_f32_f64(vaddq_f64(vaddq_f64(vmulq_f64(size, v67), origin), vcvtq_f64_f32(vmul_f32(v73, 0xBF000000BF000000))))) & 0xFFFFFFFCFFFFFFFCLL;
    v54.i64[0] = v53;
    v54.i64[1] = SHIDWORD(v53);
    v55 = vsubq_f64(v68, vcvtq_f64_s64(v54));
    v56.i32[0] = v73.f32[0];
    v56.i32[1] = v52;
    v57 = vadd_s32(v56, 0x300000003);
    v54.i64[0] = (v57.i32[0] & 0xFFFFFFFC);
    v54.i64[1] = (v57.i32[1] & 0xFFFFFFFC);
    v58 = vcvtq_f64_s64(v54);
    i->var0 = 1;
    *&i->var3 = v53;
    *&i->var5 = vadd_s32(v53, vmovn_s64(vcvtq_s64_f64(vbslq_s8(vcgtq_f64(v58, v55), v55, v58))));
    goto LABEL_33;
  }

  FigDebugAssert3();
  valid = FigSignalErrorAtGM();
  v12 = v65;
  v25 = v62;
LABEL_47:

  v23 = v63;
LABEL_39:

  v26 = v64;
LABEL_41:

LABEL_42:
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  return valid;
}

uint64_t __85__AWBStatistics_configWindowsV2_metadata_tilesConfig_validRect_regionOfInterestRect___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (int)_purgeANSTNetwork
{
  p_espressoContext = &self->_espressoContext;
  if (self->_espressoContext)
  {
    if (!self->_espressoPlan || (espresso_plan_destroy(), *p_espressoContext))
    {
      espresso_context_destroy();
    }

    *p_espressoContext = 0;
    p_espressoContext[1] = 0;
  }

  return 0;
}

- (uint64_t)_createShaders
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end