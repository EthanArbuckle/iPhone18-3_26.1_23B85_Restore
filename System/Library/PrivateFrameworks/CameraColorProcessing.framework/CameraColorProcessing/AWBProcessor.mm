@interface AWBProcessor
- (int)internalSetupWithFWPlatformID:(int)d;
- (int)prepareToProcess:(unsigned int)process;
- (int)process;
- (int)purgeResources;
- (int)setup;
- (uint64_t)process;
- (void)dealloc;
@end

@implementation AWBProcessor

- (int)internalSetupWithFWPlatformID:(int)d
{
  v3 = *&d;
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
    device = [(FigMetalContext *)self->_metalContext device];
    v11 = [v9 initWithDevice:device allocatorType:2];
    [(FigMetalContext *)self->_metalContext setAllocator:v11];

    if (self->_metalContext)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      stats = self->_stats;
      self->_stats = dictionary;

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

- (int)prepareToProcess:(unsigned int)process
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
    moduleConfig = [(AWBIBPParams *)self->_awbParams moduleConfig];
    metadata = [(AWBIBPParams *)self->_awbParams metadata];
    cameraInfo = [(AWBIBPParams *)self->_awbParams cameraInfo];
    v12 = [(AWBAlgorithm *)awbAlgo configWithModuleConfig:moduleConfig metadata:metadata cameraInfo:cameraInfo awbParams:self->_awbParams];

    if (v12)
    {
      [(AWBProcessor *)v12 prepareToProcess:v26];
    }

    else
    {
      awbStats = self->_awbStats;
      moduleConfig2 = [(AWBIBPParams *)self->_awbParams moduleConfig];
      metadata2 = [(AWBIBPParams *)self->_awbParams metadata];
      cameraInfo2 = [(AWBIBPParams *)self->_awbParams cameraInfo];
      v12 = [(AWBStatistics *)awbStats configWithModuleConfig:moduleConfig2 metadata:metadata2 cameraInfo:cameraInfo2 awbParams:self->_awbParams];

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
    allocatorBackend = [(CMIExternalMemoryResource *)externalMemoryResource allocatorBackend];
    v10 = allocatorBackend;
    if (allocatorBackend)
    {
      if ([allocatorBackend memSize] >> 21)
      {
        [v7 setMemSize:{objc_msgSend(v10, "memSize")}];
        allocator = [(FigMetalContext *)self->_metalContext allocator];
        LODWORD(v12) = [allocator setupWithDescriptor:v7 allocatorBackend:v10];

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
  allocator2 = [(FigMetalContext *)self->_metalContext allocator];
  v12 = [allocator2 setupWithDescriptor:v7];

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
    process = v57[0];
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
  imageTex = [(AWBIBPParams *)self->_awbParams imageTex];
  clippedTex = [(AWBIBPParams *)self->_awbParams clippedTex];
  lscGainsTex = [(AWBIBPParams *)self->_awbParams lscGainsTex];
  validRectInBufferCoords = [(AWBIBPParams *)self->_awbParams validRectInBufferCoords];
  validRectInSensorReadoutCoords = [(AWBIBPParams *)self->_awbParams validRectInSensorReadoutCoords];
  skinMask = [(AWBIBPParams *)self->_awbParams skinMask];
  v61 = 0;
  skyMask = [(AWBIBPParams *)self->_awbParams skyMask];
  v60 = 0;
  regionOfInterestRectInBufferCoords = [(AWBIBPParams *)self->_awbParams regionOfInterestRectInBufferCoords];
  process = [(AWBStatistics *)awbStats process:imageTex clipped:clippedTex lscGainsTex:lscGainsTex validRectInBufferCoords:validRectInBufferCoords validRectInSensorReadoutCoords:validRectInSensorReadoutCoords awbStatsBuffer:v4 awbTileStatsConfig:&v68 anstSkinMask:skinMask anstSkinMaskData:&v61 skyMaskTex:skyMask skyMaskData:&v60 regionOfInterestRectInBufferCoords:regionOfInterestRectInBufferCoords downsizeFactor:&v67];
  v56 = v61;
  v54 = v60;

  if (process)
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
    process = v57[0];
    goto LABEL_29;
  }

  bytes = [v53 bytes];
  bytes2 = [v15 bytes];
  v19 = bytes2[3];
  v21 = *bytes2;
  v20 = bytes2[1];
  bytes[14] = bytes2[2];
  bytes[15] = v19;
  bytes[12] = v21;
  bytes[13] = v20;
  v22 = bytes2[7];
  v24 = bytes2[4];
  v23 = bytes2[5];
  bytes[18] = bytes2[6];
  bytes[19] = v22;
  bytes[16] = v24;
  bytes[17] = v23;
  v25 = bytes2[11];
  v27 = bytes2[8];
  v26 = bytes2[9];
  bytes[22] = bytes2[10];
  bytes[23] = v25;
  bytes[20] = v27;
  bytes[21] = v26;
  [(NSMutableDictionary *)self->_stats setObject:v53 forKeyedSubscript:@"windowStats"];
  v28 = [MEMORY[0x1E695DEF0] dataWithBytes:objc_msgSend(v4 length:{"contents") + 65728, 0x4000}];
  [(NSMutableDictionary *)self->_stats setObject:v28 forKeyedSubscript:@"histStats"];

  v64 = *MEMORY[0x1E695EFF8];
  v52 = v64;
  imageTex2 = [(AWBIBPParams *)self->_awbParams imageTex];
  *&v65 = [imageTex2 width];

  imageTex3 = [(AWBIBPParams *)self->_awbParams imageTex];
  *(&v65 + 1) = [imageTex3 height];

  v31 = [MEMORY[0x1E696B098] valueWithPointer:&v64];
  [(NSMutableDictionary *)self->_stats setObject:v31 forKeyedSubscript:@"FESOutputSize"];

  v4 = v56;
  [(NSMutableDictionary *)self->_stats setObject:v56 forKeyedSubscript:@"anstSkinMask"];
  v62 = v52;
  skyMask2 = [(AWBIBPParams *)self->_awbParams skyMask];
  *&v63 = [skyMask2 width];

  skyMask3 = [(AWBIBPParams *)self->_awbParams skyMask];
  *(&v63 + 1) = [skyMask3 height];

  v34 = v54;
  [(NSMutableDictionary *)self->_stats setObject:v54 forKeyedSubscript:@"skyMaskData"];
  v35 = [MEMORY[0x1E696B098] valueWithPointer:&v62];
  [(NSMutableDictionary *)self->_stats setObject:v35 forKeyedSubscript:@"skyMaskSize"];

  [(AWBAlgorithm *)self->_awbAlgo setTileStatsROIRect:SHIDWORD(v68), v69, ((HIDWORD(v69) - HIDWORD(v68)) & ~((HIDWORD(v69) - HIDWORD(v68)) >> 31)), ((v70 - v69) & ~((v70 - v69) >> 31))];
  [(AWBAlgorithm *)self->_awbAlgo setStats:self->_stats];
  outputMetadata = [(AWBIBPParams *)self->_awbParams outputMetadata];
  [(AWBAlgorithm *)self->_awbAlgo setOutputMetadata:outputMetadata];

  validRectInBufferCoords2 = [(AWBIBPParams *)self->_awbParams validRectInBufferCoords];
  v38 = CGRectMakeWithDictionaryRepresentation(validRectInBufferCoords2, &rect);

  if (v38)
  {
    [(AWBAlgorithm *)self->_awbAlgo setWinRegionWidth:4 * (rect.size.width / v67)];
    [(AWBAlgorithm *)self->_awbAlgo setWinRegionHeight:4 * (rect.size.height / v67)];
    process = [(AWBAlgorithm *)self->_awbAlgo process];
    if (process)
    {
      [AWBProcessor process];
    }

    else
    {
      awbComboGains = [(AWBAlgorithm *)self->_awbAlgo awbComboGains];
      [(AWBIBPParams *)self->_awbParams setAwbComboGains:awbComboGains, v40];
      awbComboGainsNormalized = [(AWBAlgorithm *)self->_awbAlgo awbComboGainsNormalized];
      [(AWBIBPParams *)self->_awbParams setAwbComboGainsNormalized:awbComboGainsNormalized, v42];
      awbGains = [(AWBAlgorithm *)self->_awbAlgo awbGains];
      [(AWBIBPParams *)self->_awbParams setAwbGains:awbGains, v44];
      outputMetadata2 = [(AWBAlgorithm *)self->_awbAlgo outputMetadata];
      [(AWBIBPParams *)self->_awbParams setOutputMetadata:outputMetadata2];

      [(AWBAlgorithm *)self->_awbAlgo setOutputMetadata:0];
    }
  }

  else
  {
    [(AWBProcessor *)v57 process];
    process = v57[0];
  }

  v3 = MEMORY[0x1E695FF58];
LABEL_12:
  FigMetalDecRef();
  if (*v3 == 1)
  {
    kdebug_trace();
  }

  allocator = [(FigMetalContext *)self->_metalContext allocator];
  [allocator usedSizeAll];

  if (process)
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

  return process;
}

- (int)purgeResources
{
  allocator = [(FigMetalContext *)self->_metalContext allocator];
  [allocator reset];

  if (!self->_externalMemoryResource)
  {
    allocator2 = [(FigMetalContext *)self->_metalContext allocator];
    [allocator2 purgeResources];
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
  *self = result;
  return result;
}

@end