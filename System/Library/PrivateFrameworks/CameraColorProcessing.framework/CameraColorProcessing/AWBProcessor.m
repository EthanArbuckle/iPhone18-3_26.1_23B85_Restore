@interface AWBProcessor
- (int)internalSetupWithFWPlatformID:(int)a3;
- (int)prepareToProcess:(unsigned int)a3;
- (int)process;
- (int)purgeResources;
- (int)setup;
- (uint64_t)process;
- (void)dealloc;
@end

@implementation AWBProcessor

- (int)internalSetupWithFWPlatformID:(int)a3
{
  v3 = *&a3;
  FigKTraceInit();
  v5 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  if (!v6)
  {
    [AWBProcessor internalSetupWithFWPlatformID:];
    goto LABEL_10;
  }

  v7 = [objc_alloc(MEMORY[0x1E6991778]) initWithbundle:v6 andOptionalCommandQueue:self->_metalCommandQueue];
  metalContext = self->_metalContext;
  self->_metalContext = v7;

  if (self->_metalContext)
  {
    v9 = objc_alloc(MEMORY[0x1E6991750]);
    v10 = [(FigMetalContext *)self->_metalContext device];
    v11 = [v9 initWithDevice:v10 allocatorType:2];
    [(FigMetalContext *)self->_metalContext setAllocator:v11];

    if (self->_metalContext)
    {
      v12 = [MEMORY[0x1E695DF90] dictionary];
      stats = self->_stats;
      self->_stats = v12;

      if (self->_stats)
      {
        v14 = [[AWBStatistics alloc] initWithMetalContext:self->_metalContext];
        awbStats = self->_awbStats;
        self->_awbStats = v14;

        if (self->_awbStats)
        {
          v16 = [[AWBAlgorithm alloc] initWithMetalContext:self->_metalContext platformID:v3];
          awbAlgo = self->_awbAlgo;
          self->_awbAlgo = v16;

          if (self->_awbAlgo)
          {
            v18 = objc_opt_new();
            awbParams = self->_awbParams;
            self->_awbParams = v18;

LABEL_10:
            v20 = 0;
            goto LABEL_11;
          }

          [AWBProcessor internalSetupWithFWPlatformID:?];
        }

        else
        {
          [AWBProcessor internalSetupWithFWPlatformID:?];
        }
      }

      else
      {
        [AWBProcessor internalSetupWithFWPlatformID:?];
      }
    }

    else
    {
      [AWBProcessor internalSetupWithFWPlatformID:?];
    }
  }

  else
  {
    [AWBProcessor internalSetupWithFWPlatformID:?];
  }

  v20 = v22;
LABEL_11:
  if (*v5 == 1)
  {
    kdebug_trace();
  }

  return v20;
}

- (int)setup
{
  v3 = +[FWPlatformIDUtilities getFWPlatformID];

  return [(AWBProcessor *)self internalSetupWithFWPlatformID:v3];
}

- (int)prepareToProcess:(unsigned int)a3
{
  v4 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  if (self->_allocatorSetupComplete)
  {
LABEL_13:
    awbAlgo = self->_awbAlgo;
    v15 = [(AWBIBPParams *)self->_awbParams moduleConfig];
    v16 = [(AWBIBPParams *)self->_awbParams metadata];
    v17 = [(AWBIBPParams *)self->_awbParams cameraInfo];
    v12 = [(AWBAlgorithm *)awbAlgo configWithModuleConfig:v15 metadata:v16 cameraInfo:v17 awbParams:self->_awbParams];

    if (v12)
    {
      [(AWBProcessor *)v12 prepareToProcess:v26];
    }

    else
    {
      awbStats = self->_awbStats;
      v19 = [(AWBIBPParams *)self->_awbParams moduleConfig];
      v20 = [(AWBIBPParams *)self->_awbParams metadata];
      v21 = [(AWBIBPParams *)self->_awbParams cameraInfo];
      v12 = [(AWBStatistics *)awbStats configWithModuleConfig:v19 metadata:v20 cameraInfo:v21 awbParams:self->_awbParams];

      if (!v12)
      {
        self->_configured = 1;
        goto LABEL_16;
      }

      [(AWBProcessor *)v12 prepareToProcess:v26];
    }

    goto LABEL_21;
  }

  v5 = objc_opt_new();
  if (!v5)
  {
    [AWBProcessor prepareToProcess:v26];
LABEL_30:
    LODWORD(v12) = v26[0];
    goto LABEL_36;
  }

  v6 = v5;
  v7 = objc_opt_new();

  [v7 setWireMemory:1];
  [v7 setResourceOptions:512];
  [v7 setLabel:@"FigMetalAllocator_AWB"];
  externalMemoryResource = self->_externalMemoryResource;
  if (externalMemoryResource)
  {
    v9 = [(CMIExternalMemoryResource *)externalMemoryResource allocatorBackend];
    v10 = v9;
    if (v9)
    {
      if ([v9 memSize] >> 21)
      {
        [v7 setMemSize:{objc_msgSend(v10, "memSize")}];
        v11 = [(FigMetalContext *)self->_metalContext allocator];
        LODWORD(v12) = [v11 setupWithDescriptor:v7 allocatorBackend:v10];

        if (!v12)
        {

LABEL_11:
          if ([v7 memSize])
          {
            self->_allocatorSetupComplete = 1;

            goto LABEL_13;
          }

          [(AWBProcessor *)v7 prepareToProcess:v26];
          goto LABEL_30;
        }

        [AWBProcessor prepareToProcess:];
LABEL_35:

LABEL_36:
        if (!v12)
        {
          goto LABEL_16;
        }

        goto LABEL_21;
      }

      [AWBProcessor prepareToProcess:v26];
    }

    else
    {
      [AWBProcessor prepareToProcess:v26];
    }

    LODWORD(v12) = v26[0];
    goto LABEL_35;
  }

  [v7 setMemSize:0x200000];
  v13 = [(FigMetalContext *)self->_metalContext allocator];
  v12 = [v13 setupWithDescriptor:v7];

  if (!v12)
  {
    goto LABEL_11;
  }

  [(AWBProcessor *)v12 prepareToProcess:v7, v26];
LABEL_21:
  FigDebugAssert3();
  if (dword_1EDD78228)
  {
    v28 = 0;
    v27 = OS_LOG_TYPE_DEFAULT;
    v23 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    v24 = v28;
    if (os_log_type_enabled(v23, v27))
    {
      v25 = v24;
    }

    else
    {
      v25 = v24 & 0xFFFFFFFE;
    }

    if (v25)
    {
      _os_log_send_and_compose_impl();
    }

    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

LABEL_16:
  if (*v4 == 1)
  {
    kdebug_trace();
  }

  return v12;
}

- (int)process
{
  v71 = 0;
  v3 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v68 = 0;
  v69 = 0;
  v70 = 0;
  v67 = 0;
  memset(&rect, 0, sizeof(rect));
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  if (!self->_configured)
  {
    [(AWBProcessor *)v57 process];
LABEL_25:
    v34 = 0;
    v4 = 0;
    goto LABEL_26;
  }

  v4 = createBufferFromMetal(self->_metalContext, @"awb-stats-bfr", 82112);
  v71 = v4;
  if (!v4)
  {
    [(AWBProcessor *)v57 process];
    v34 = 0;
LABEL_26:
    v15 = 0;
    v16 = 0;
    v13 = v57[0];
    goto LABEL_12;
  }

  v5 = [MEMORY[0x1E695DF88] dataWithLength:768];
  if (!v5)
  {
    [(AWBProcessor *)v57 process];
    goto LABEL_25;
  }

  v53 = v5;
  [(NSMutableDictionary *)self->_stats removeAllObjects];
  awbStats = self->_awbStats;
  v51 = [(AWBIBPParams *)self->_awbParams imageTex];
  v6 = [(AWBIBPParams *)self->_awbParams clippedTex];
  v7 = [(AWBIBPParams *)self->_awbParams lscGainsTex];
  v8 = [(AWBIBPParams *)self->_awbParams validRectInBufferCoords];
  v9 = [(AWBIBPParams *)self->_awbParams validRectInSensorReadoutCoords];
  v10 = [(AWBIBPParams *)self->_awbParams skinMask];
  v61 = 0;
  v11 = [(AWBIBPParams *)self->_awbParams skyMask];
  v60 = 0;
  v12 = [(AWBIBPParams *)self->_awbParams regionOfInterestRectInBufferCoords];
  v13 = [(AWBStatistics *)awbStats process:v51 clipped:v6 lscGainsTex:v7 validRectInBufferCoords:v8 validRectInSensorReadoutCoords:v9 awbStatsBuffer:v4 awbTileStatsConfig:&v68 anstSkinMask:v10 anstSkinMaskData:&v61 skyMaskTex:v11 skyMaskData:&v60 regionOfInterestRectInBufferCoords:v12 downsizeFactor:&v67];
  v56 = v61;
  v54 = v60;

  if (v13)
  {
    [AWBProcessor process];
    v15 = 0;
    v16 = v53;
LABEL_29:
    v3 = MEMORY[0x1E695FF58];
    v34 = v54;
    v4 = v56;
    goto LABEL_12;
  }

  v14 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v4 length:{"contents"), 0x10000}];
  [(NSMutableDictionary *)self->_stats setObject:v14 forKeyedSubscript:@"tileStats"];

  v15 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v4 length:{"contents") + 0x10000, 192}];
  v16 = v53;
  if (!v15)
  {
    [(AWBProcessor *)v57 process];
    v13 = v57[0];
    goto LABEL_29;
  }

  v17 = [v53 bytes];
  v18 = [v15 bytes];
  v19 = v18[3];
  v21 = *v18;
  v20 = v18[1];
  v17[14] = v18[2];
  v17[15] = v19;
  v17[12] = v21;
  v17[13] = v20;
  v22 = v18[7];
  v24 = v18[4];
  v23 = v18[5];
  v17[18] = v18[6];
  v17[19] = v22;
  v17[16] = v24;
  v17[17] = v23;
  v25 = v18[11];
  v27 = v18[8];
  v26 = v18[9];
  v17[22] = v18[10];
  v17[23] = v25;
  v17[20] = v27;
  v17[21] = v26;
  [(NSMutableDictionary *)self->_stats setObject:v53 forKeyedSubscript:@"windowStats"];
  v28 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v4 length:{"contents") + 65728, 0x4000}];
  [(NSMutableDictionary *)self->_stats setObject:v28 forKeyedSubscript:@"histStats"];

  v64 = *MEMORY[0x1E695EFF8];
  v52 = v64;
  v29 = [(AWBIBPParams *)self->_awbParams imageTex];
  *&v65 = [v29 width];

  v30 = [(AWBIBPParams *)self->_awbParams imageTex];
  *(&v65 + 1) = [v30 height];

  v31 = [MEMORY[0x1E696B098] valueWithPointer:&v64];
  [(NSMutableDictionary *)self->_stats setObject:v31 forKeyedSubscript:@"FESOutputSize"];

  v4 = v56;
  [(NSMutableDictionary *)self->_stats setObject:v56 forKeyedSubscript:@"anstSkinMask"];
  v62 = v52;
  v32 = [(AWBIBPParams *)self->_awbParams skyMask];
  *&v63 = [v32 width];

  v33 = [(AWBIBPParams *)self->_awbParams skyMask];
  *(&v63 + 1) = [v33 height];

  v34 = v54;
  [(NSMutableDictionary *)self->_stats setObject:v54 forKeyedSubscript:@"skyMaskData"];
  v35 = [MEMORY[0x1E696B098] valueWithPointer:&v62];
  [(NSMutableDictionary *)self->_stats setObject:v35 forKeyedSubscript:@"skyMaskSize"];

  [(AWBAlgorithm *)self->_awbAlgo setTileStatsROIRect:SHIDWORD(v68), v69, ((HIDWORD(v69) - HIDWORD(v68)) & ~((HIDWORD(v69) - HIDWORD(v68)) >> 31)), ((v70 - v69) & ~((v70 - v69) >> 31))];
  [(AWBAlgorithm *)self->_awbAlgo setStats:self->_stats];
  v36 = [(AWBIBPParams *)self->_awbParams outputMetadata];
  [(AWBAlgorithm *)self->_awbAlgo setOutputMetadata:v36];

  v37 = [(AWBIBPParams *)self->_awbParams validRectInBufferCoords];
  v38 = CGRectMakeWithDictionaryRepresentation(v37, &rect);

  if (v38)
  {
    [(AWBAlgorithm *)self->_awbAlgo setWinRegionWidth:4 * (rect.size.width / v67)];
    [(AWBAlgorithm *)self->_awbAlgo setWinRegionHeight:4 * (rect.size.height / v67)];
    v13 = [(AWBAlgorithm *)self->_awbAlgo process];
    if (v13)
    {
      [AWBProcessor process];
    }

    else
    {
      v39 = [(AWBAlgorithm *)self->_awbAlgo awbComboGains];
      [(AWBIBPParams *)self->_awbParams setAwbComboGains:v39, v40];
      v41 = [(AWBAlgorithm *)self->_awbAlgo awbComboGainsNormalized];
      [(AWBIBPParams *)self->_awbParams setAwbComboGainsNormalized:v41, v42];
      v43 = [(AWBAlgorithm *)self->_awbAlgo awbGains];
      [(AWBIBPParams *)self->_awbParams setAwbGains:v43, v44];
      v45 = [(AWBAlgorithm *)self->_awbAlgo outputMetadata];
      [(AWBIBPParams *)self->_awbParams setOutputMetadata:v45];

      [(AWBAlgorithm *)self->_awbAlgo setOutputMetadata:0];
    }
  }

  else
  {
    [(AWBProcessor *)v57 process];
    v13 = v57[0];
  }

  v3 = MEMORY[0x1E695FF58];
LABEL_12:
  FigMetalDecRef();
  if (*v3 == 1)
  {
    kdebug_trace();
  }

  v46 = [(FigMetalContext *)self->_metalContext allocator];
  [v46 usedSizeAll];

  if (v13)
  {
    FigDebugAssert3();
    if (dword_1EDD78228)
    {
      v59 = 0;
      v58 = OS_LOG_TYPE_DEFAULT;
      v48 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      v49 = v59;
      if (os_log_type_enabled(v48, v58))
      {
        v50 = v49;
      }

      else
      {
        v50 = v49 & 0xFFFFFFFE;
      }

      if (v50)
      {
        _os_log_send_and_compose_impl();
      }

      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return v13;
}

- (int)purgeResources
{
  v3 = [(FigMetalContext *)self->_metalContext allocator];
  [v3 reset];

  if (!self->_externalMemoryResource)
  {
    v4 = [(FigMetalContext *)self->_metalContext allocator];
    [v4 purgeResources];
  }

  self->_allocatorSetupComplete = 0;
  [(AWBStatistics *)self->_awbStats _purgeANSTNetwork];
  return 0;
}

- (void)dealloc
{
  [(AWBProcessor *)self resetState];
  [(AWBProcessor *)self purgeResources];
  v3.receiver = self;
  v3.super_class = AWBProcessor;
  [(AWBProcessor *)&v3 dealloc];
}

- (uint64_t)internalSetupWithFWPlatformID:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)internalSetupWithFWPlatformID:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)internalSetupWithFWPlatformID:(_DWORD *)a1 .cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)internalSetupWithFWPlatformID:(_DWORD *)a1 .cold.4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)internalSetupWithFWPlatformID:(_DWORD *)a1 .cold.5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:.cold.1()
{
  FigDebugAssert3();

  return FigSignalErrorAtGM();
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.3(_DWORD *a1)
{
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (void)prepareToProcess:(void *)a3 .cold.4(uint64_t a1, void *a2, void *a3)
{
  *a3 = v3;
  FigDebugAssert3();
}

- (void)prepareToProcess:(void *)a1 .cold.5(void *a1, _DWORD *a2)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  *a2 = FigSignalErrorAtGM();
}

- (uint64_t)prepareToProcess:(_DWORD *)a1 .cold.6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)process
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end