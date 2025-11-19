@interface LTMStats
- (LTMStats)initWithMetalContext:(id)a3;
- (int)calculateHITHStatistics:(id)a3 ltmGeometry:(id)a4 optimized:(BOOL)a5 enableAntiAliasing:(BOOL)a6 calcGlobalHistOnROI:(BOOL)a7 toDriverInputMetadata:(sRefDriverInputs_SOFTISP *)a8 andProcHITHStat:(sCLRProcHITHStat_SOFTISP *)a9 enableFATE:(BOOL)a10;
- (int)finishCalculateHITHStatistics:(sCLRProcHITHStat_SOFTISP *)a3 optimized:(BOOL)a4;
- (int)startCalculateHITHStatistics:(id)a3 ltmGeometry:(id)a4 inputDriverMetadata:(sRefDriverInputs_SOFTISP *)a5 optimized:(BOOL)a6 enableAntiAliasing:(BOOL)a7 calcGlobalHistOnROI:(BOOL)a8 enhancedLocalHistogram:(BOOL)a9 enableDualLTC:(BOOL)a10 enableFATE:(BOOL)a11 outputProcHITHStat:(sCLRProcHITHStat_SOFTISP *)a12;
- (int)startCalculateHITHStatistics:(id)a3 ltmGeometry:(id)a4 inputDriverMetadata:(sRefDriverInputs_SOFTISP *)a5 optimized:(BOOL)a6 enableAntiAliasing:(BOOL)a7 calcGlobalHistOnROI:(BOOL)a8 outputProcHITHStat:(sCLRProcHITHStat_SOFTISP *)a9;
- (void)fillProcHITHStat:(sCLRProcHITHStat_SOFTISP *)a3 with:(id *)a4;
@end

@implementation LTMStats

- (LTMStats)initWithMetalContext:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = LTMStats;
  v6 = [(LTMStats *)&v12 init];
  v7 = v6;
  if (!v6)
  {
    [LTMStats initWithMetalContext:];
LABEL_9:
    v10 = 0;
    goto LABEL_5;
  }

  objc_storeStrong(&v6->_metalContext, a3);
  if (!v7->_metalContext)
  {
    [LTMStats initWithMetalContext:];
    goto LABEL_9;
  }

  v8 = [[LTMStatsCompute alloc] initWithMetalContext:v5];
  computeLTMStats = v7->_computeLTMStats;
  v7->_computeLTMStats = v8;

  if (!v7->_computeLTMStats)
  {
    [LTMStats initWithMetalContext:];
    goto LABEL_9;
  }

  v10 = v7;
LABEL_5:

  return v10;
}

- (int)calculateHITHStatistics:(id)a3 ltmGeometry:(id)a4 optimized:(BOOL)a5 enableAntiAliasing:(BOOL)a6 calcGlobalHistOnROI:(BOOL)a7 toDriverInputMetadata:(sRefDriverInputs_SOFTISP *)a8 andProcHITHStat:(sCLRProcHITHStat_SOFTISP *)a9 enableFATE:(BOOL)a10
{
  v10 = a5;
  v12 = [(LTMStats *)self startCalculateHITHStatistics:a3 ltmGeometry:a4 inputDriverMetadata:a8 optimized:a5 enableAntiAliasing:a6 calcGlobalHistOnROI:a7 outputProcHITHStat:a9];
  if (v12)
  {
    v13 = v12;
    [LTMStats calculateHITHStatistics:ltmGeometry:optimized:enableAntiAliasing:calcGlobalHistOnROI:toDriverInputMetadata:andProcHITHStat:enableFATE:];
  }

  else
  {
    v13 = [(LTMStats *)self finishCalculateHITHStatistics:a9 optimized:v10];
    if (v13)
    {
      [LTMStats calculateHITHStatistics:ltmGeometry:optimized:enableAntiAliasing:calcGlobalHistOnROI:toDriverInputMetadata:andProcHITHStat:enableFATE:];
    }
  }

  return v13;
}

- (int)startCalculateHITHStatistics:(id)a3 ltmGeometry:(id)a4 inputDriverMetadata:(sRefDriverInputs_SOFTISP *)a5 optimized:(BOOL)a6 enableAntiAliasing:(BOOL)a7 calcGlobalHistOnROI:(BOOL)a8 enhancedLocalHistogram:(BOOL)a9 enableDualLTC:(BOOL)a10 enableFATE:(BOOL)a11 outputProcHITHStat:(sCLRProcHITHStat_SOFTISP *)a12
{
  v12 = a8;
  v13 = a7;
  v14 = a6;
  v18 = a3;
  v19 = a4;
  if (!v18 || (FigMetalIsValid() & 1) == 0)
  {
    [LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:];
LABEL_25:
    v38 = -1;
    goto LABEL_17;
  }

  v20 = [(FigMetalContext *)self->_metalContext commandQueue];

  if (!v20)
  {
    [LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:];
    goto LABEL_25;
  }

  v21 = [(LTMStatsCompute *)self->_computeLTMStats computeInputParametersForImageWidth:v19 calcGlobalHistOnROI:v12 enableAntiAliasing:v13 enableDualLTC:a10 enableFATE:a11 with:a5 to:&self->_params];
  if (v21)
  {
    v38 = v21;
    [LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:];
    goto LABEL_17;
  }

  memcpy(__dst, &self->_params, sizeof(__dst));
  [(LTMStats *)self fillProcHITHStat:a12 with:__dst];
  if (a9)
  {
    a12->localHistBinSize = 260;
    self->_params.localHist.enableHiResLocalHistogram = 1;
    v22 = 49920;
  }

  else
  {
    v22 = 192 * a12->localHistBinSize;
  }

  v23 = [(FigMetalContext *)self->_metalContext device];
  v24 = [v23 newBufferWithLength:v22 options:0];
  localHistBuffer = self->_localHistBuffer;
  self->_localHistBuffer = v24;

  if (!self->_localHistBuffer)
  {
    [LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:];
    goto LABEL_25;
  }

  v26 = [(FigMetalContext *)self->_metalContext device];
  v27 = [v26 newBufferWithLength:4096 options:0];
  globalHistBuffer = self->_globalHistBuffer;
  self->_globalHistBuffer = v27;

  if (!self->_globalHistBuffer)
  {
    [LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:];
    goto LABEL_25;
  }

  v29 = [(FigMetalContext *)self->_metalContext device];
  v30 = [v29 newBufferWithLength:1024 options:0];
  globalFaceHistBuffer = self->_globalFaceHistBuffer;
  self->_globalFaceHistBuffer = v30;

  if (!self->_globalFaceHistBuffer)
  {
    [LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:];
    goto LABEL_25;
  }

  v32 = [(FigMetalContext *)self->_metalContext device];
  v33 = [v32 newBufferWithLength:17680 options:0];
  thumbnailBuffer = self->_thumbnailBuffer;
  self->_thumbnailBuffer = v33;

  if (!self->_thumbnailBuffer)
  {
    [LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:];
    goto LABEL_25;
  }

  computeLTMStats = self->_computeLTMStats;
  v36 = self->_globalHistBuffer;
  if (v14)
  {
    v37 = [(LTMStatsCompute *)computeLTMStats encodeLTMStatisticsCalculationOptimized:v18 params:&self->_params globalHistogram:v36 globalFaceHistogram:self->_globalFaceHistBuffer localHistogram:self->_localHistBuffer thumbnail:?];
  }

  else
  {
    v37 = [(LTMStatsCompute *)computeLTMStats encodeLTMStatisticsCalculationPrecise:v18 paramsGlobalHist:&self->_params globalHistogram:v36 localHistogram:self->_localHistBuffer thumbnail:self->_thumbnailBuffer];
  }

  v38 = v37;
  if (v37)
  {
    [LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:];
  }

LABEL_17:

  return v38;
}

- (int)startCalculateHITHStatistics:(id)a3 ltmGeometry:(id)a4 inputDriverMetadata:(sRefDriverInputs_SOFTISP *)a5 optimized:(BOOL)a6 enableAntiAliasing:(BOOL)a7 calcGlobalHistOnROI:(BOOL)a8 outputProcHITHStat:(sCLRProcHITHStat_SOFTISP *)a9
{
  BYTE2(v10) = 0;
  LOWORD(v10) = 0;
  return [LTMStats startCalculateHITHStatistics:"startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:" ltmGeometry:a3 inputDriverMetadata:a4 optimized:a5 enableAntiAliasing:a6 calcGlobalHistOnROI:a7 enhancedLocalHistogram:a8 enableDualLTC:v10 enableFATE:a9 outputProcHITHStat:?];
}

- (int)finishCalculateHITHStatistics:(sCLRProcHITHStat_SOFTISP *)a3 optimized:(BOOL)a4
{
  [(LTMStatsCompute *)self->_computeLTMStats waitUntilCompleted];
  if (a4)
  {
    for (i = 0; i != 4420; ++i)
    {
      *(a3->thumbnailStat + i) = *([(MTLBuffer *)self->_thumbnailBuffer contents]+ 4 * i);
    }
  }

  else
  {
    for (j = 0; j != 4420; ++j)
    {
      *(a3->thumbnailStat + j) = (self->_params.thumbnail.ThumbAvgRecipNumPix * *([(MTLBuffer *)self->_thumbnailBuffer contents]+ 4 * j)) >> 32;
    }
  }

  if (a3->localHistBinSize)
  {
    v9 = 0;
    do
    {
      *(a3->localHistStat + v9) = *([(MTLBuffer *)self->_localHistBuffer contents]+ 4 * v9);
      ++v9;
    }

    while (v9 < 48 * a3->localHistBinSize);
  }

  for (k = 0; k != 4096; k += 4)
  {
    *(a3->globalHistStat + k) = *([(MTLBuffer *)self->_globalHistBuffer contents]+ k);
  }

  for (m = 0; m != 1024; m += 4)
  {
    *(a3->globalFaceHistStat + m) = *([(MTLBuffer *)self->_globalFaceHistBuffer contents]+ m);
  }

  globalHistBuffer = self->_globalHistBuffer;
  self->_globalHistBuffer = 0;

  globalFaceHistBuffer = self->_globalFaceHistBuffer;
  self->_globalFaceHistBuffer = 0;

  localHistBuffer = self->_localHistBuffer;
  self->_localHistBuffer = 0;

  thumbnailBuffer = self->_thumbnailBuffer;
  self->_thumbnailBuffer = 0;

  return 0;
}

- (void)fillProcHITHStat:(sCLRProcHITHStat_SOFTISP *)a3 with:(id *)a4
{
  a3->thumbnailWindow = a4->var4.var3 - a4->var4.var1 + ((a4->var4.var2 - a4->var4.var0) << 16);
  a3->thumbnailDownsampleX = a4->var4.var4;
  a3->thumbnailDownsampleY = a4->var4.var5;
  var3 = a4->var3.var3;
  var4 = a4->var3.var4;
  v6 = a4->var3.var6 - var4 + ((a4->var3.var5 - var3) << 16);
  a3->thumbnailTotal = 5;
  a3->localHistWindow = v6;
  *&a3->localHistEnable = 4456449;
  var10 = a4->var3.var10;
  var9 = a4->var3.var9;
  a3->localHistBlockSizeX = a4->var3.var9;
  v9 = var10;
  a3->localHistBlockSizeY = var10;
  var8 = a4->var3.var8;
  a3->localHistStrideX = a4->var3.var7;
  a3->localHistStrideY = var8;
  *&a3->localHistNumHorBlocks = 393224;
  var2 = a4->var3.var2;
  a3->localHistCountBitShift = var2;
  var5 = a4->var1.var5;
  v13 = a4->var1.var3;
  v14 = a4->var1.var4 - a4->var1.var2;
  a3->globalHistEnable = 1;
  a3->globalHistWindow = var5 - v13 + (v14 << 16);
  a3->globalFaceHistEnable = 1;
  a3->globalFaceHistWindow = a4->var2.var5 - a4->var2.var3 + ((a4->var2.var4 - a4->var2.var2) << 16);
  a3->calculatedOnPortraitOrientation = a4->var4.var9;
  a3->gridOriginX = var3;
  a3->gridOriginY = var4;
  a3->localHistogramOriginalTilePixelCount = (v9 * var9) >> var2 >> 1;
  *&a3->localHistLowThreshold = *&a4->var3.var13;
}

- (void)initWithMetalContext:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStats initWithMetalContext:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)initWithMetalContext:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStats initWithMetalContext:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)initWithMetalContext:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStats initWithMetalContext:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:.cold.5()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:.cold.6()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:.cold.7()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:.cold.8()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStats startCalculateHITHStatistics:ltmGeometry:inputDriverMetadata:optimized:enableAntiAliasing:calcGlobalHistOnROI:enhancedLocalHistogram:enableDualLTC:enableFATE:outputProcHITHStat:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

@end