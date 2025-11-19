@interface AdaptiveGain
- (AdaptiveGain)initWithMetalContext:(id)a3;
- (int)allocInternalData;
- (int)computeGain:(float *)a3 withTargetRange:(float)a4;
- (int)configure;
- (int)createShaders;
- (uint64_t)createShaders;
- (void)allocInternalData;
@end

@implementation AdaptiveGain

- (int)createShaders
{
  v3 = [(FigMetalContext *)self->_metalContext computePipelineStateFor:@"AdaptiveGain::histogramGeneration" constants:0];
  computePipelineHistogramGeneration = self->_computePipelineHistogramGeneration;
  self->_computePipelineHistogramGeneration = v3;

  if (self->_computePipelineHistogramGeneration)
  {
    return 0;
  }

  [(AdaptiveGain *)&v6 createShaders];
  return v6;
}

- (AdaptiveGain)initWithMetalContext:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    FigDebugAssert3();
    v14 = 0;
    v13 = 0;
    v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_10:
    v7 = 0;
    goto LABEL_5;
  }

  objc_storeStrong(&self->_metalContext, a3);
  v12.receiver = self;
  v12.super_class = AdaptiveGain;
  v6 = [(AdaptiveGain *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    [AdaptiveGain initWithMetalContext:];
    goto LABEL_5;
  }

  v8 = [(AdaptiveGain *)v6 createShaders];
  if (v8)
  {
    [(AdaptiveGain *)v8 initWithMetalContext:v7];
    goto LABEL_10;
  }

  v9 = [(AdaptiveGain *)v7 configure];
  if (v9)
  {
    [(AdaptiveGain *)v9 initWithMetalContext:v7];
    goto LABEL_10;
  }

LABEL_5:

  return v7;
}

- (int)configure
{
  *&self->_lumaParams.LumShift = xmmword_1C932F0F0;
  memset_pattern16(self->_lumaParams.CoeffMaxY, &unk_1C932F100, 0xCuLL);
  self->_lumaParams.AvgYOffset = 0;
  return 0;
}

- (int)allocInternalData
{
  v3 = [(FigMetalContext *)self->_metalContext device];
  v4 = [v3 newBufferWithLength:4096 options:0];
  globalHistBuffer = self->_globalHistBuffer;
  self->_globalHistBuffer = v4;

  if (self->_globalHistBuffer)
  {
    return 0;
  }

  [AdaptiveGain allocInternalData];
  return -1;
}

- (int)computeGain:(float *)a3 withTargetRange:(float)a4
{
  v4 = MEMORY[0x1EEE9AC00](self);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v10 = [v4 allocInternalData];
  if (v10)
  {
    v33 = v10;
    [AdaptiveGain computeGain:withTargetRange:];
    return v33;
  }

  v11 = [v9[1] commandQueue];
  v12 = [v11 commandBuffer];

  if (!v12)
  {
    [AdaptiveGain computeGain:withTargetRange:];
    return -1;
  }

  v13 = [v12 blitCommandEncoder];
  if (!v13)
  {
    FigDebugAssert3();
    v44 = 0;
    v43 = 0;
    v14 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
LABEL_28:

    return -1;
  }

  v14 = v13;
  -[NSObject fillBuffer:range:value:](v13, "fillBuffer:range:value:", v9[6], 0, [v9[6] length], 0);
  [v14 endEncoding];
  v15 = [v12 computeCommandEncoder];
  if (!v15)
  {
    FigDebugAssert3();
    v44 = 0;
    v43 = 0;
    v35 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    goto LABEL_28;
  }

  v16 = v15;
  [v15 setComputePipelineState:v9[2]];
  [v16 setTexture:v9[3] atIndex:0];
  [v16 setBuffer:v9[6] offset:0 atIndex:1];
  [v16 setBytes:v9 + 7 length:32 atIndex:2];
  v17 = [v9[2] threadExecutionWidth];
  v18 = [v9[2] maxTotalThreadsPerThreadgroup] / v17;
  v19 = [v9[3] width];
  v20 = [v9[3] height];
  v42[0] = v19;
  v42[1] = v20;
  v42[2] = 1;
  v41[0] = v17;
  v41[1] = v18;
  v41[2] = 1;
  [v16 dispatchThreads:v42 threadsPerThreadgroup:v41];
  [v16 endEncoding];
  [v12 commit];
  [v12 waitUntilCompleted];
  for (i = 0; i != 4096; i += 4)
  {
    *&v40[i] = *([v9[6] contents] + i);
  }

  v22 = 0;
  v23 = &v36;
  v24 = v40;
  do
  {
    v25 = 0;
    v26 = v23;
    do
    {
      v27 = *&v24[v25];
      *v26 = v27;
      if (v22)
      {
        *v26 = *(v26 - 1) + v27;
      }

      v25 += 1024;
      v26 += 1024;
    }

    while (v25 != 4096);
    ++v22;
    v23 += 4;
    v24 += 4;
  }

  while (v22 != 256);
  v28 = (v39 * v6);
  if (v37 <= v28)
  {
    v30 = 0;
    v29 = -1;
    while (v30 != 1020)
    {
      v31 = *&v38[v30];
      ++v29;
      v30 += 4;
      if (v31 > v28)
      {
        goto LABEL_18;
      }
    }

    v29 = 255;
    goto LABEL_21;
  }

  v29 = 0;
LABEL_18:
  if (v29)
  {
LABEL_21:
    v32 = 256.0 / v29;
    goto LABEL_22;
  }

  v32 = 1.0;
LABEL_22:
  *v8 = v32;

  return 0;
}

- (uint64_t)createShaders
{
  FigDebugAssert3();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (void)initWithMetalContext:(uint64_t)a1 .cold.1(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (void)initWithMetalContext:(uint64_t)a1 .cold.2(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_1();
  FigDebugAssert3();
}

- (void)allocInternalData
{
  OUTLINED_FUNCTION_1();
  LODWORD(v11) = 0;
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  if (OUTLINED_FUNCTION_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14)))
  {
    v10 = v1;
  }

  else
  {
    v10 = v1 & 0xFFFFFFFE;
  }

  if (v10)
  {
    OUTLINED_FUNCTION_3("[AdaptiveGain allocInternalData]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)computeGain:withTargetRange:.cold.2()
{
  OUTLINED_FUNCTION_1();
  LODWORD(v11) = 0;
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v2 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  if (OUTLINED_FUNCTION_5(v2, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13, v14, SWORD2(v14), SBYTE6(v14), HIBYTE(v14)))
  {
    v10 = v1;
  }

  else
  {
    v10 = v1 & 0xFFFFFFFE;
  }

  if (v10)
  {
    OUTLINED_FUNCTION_3("[AdaptiveGain computeGain:withTargetRange:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

@end