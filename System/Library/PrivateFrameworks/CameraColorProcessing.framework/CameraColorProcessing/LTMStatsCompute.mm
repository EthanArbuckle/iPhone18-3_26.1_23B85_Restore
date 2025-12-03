@interface LTMStatsCompute
- (LTMStatsCompute)initWithMetalContext:(id)context;
- (float)calcExposureRatio:(const sRefDriverInputs_SOFTISP *)ratio;
- (int)computeInputParametersForImageWidth:(id)width calcGlobalHistOnROI:(BOOL)i enableAntiAliasing:(BOOL)aliasing enableDualLTC:(BOOL)c enableFATE:(BOOL)e with:(sRefDriverInputs_SOFTISP *)with to:(id *)to;
- (int)createShaders:(id)shaders;
- (int)encodeLTMStatisticsCalculationOptimized:(id)optimized params:(id *)params globalHistogram:(id)histogram globalFaceHistogram:(id)faceHistogram localHistogram:(id)localHistogram thumbnail:(id)thumbnail;
- (int)encodeLTMStatisticsCalculationPrecise:(id)precise paramsGlobalHist:(id *)hist globalHistogram:(id)histogram localHistogram:(id)localHistogram thumbnail:(id)thumbnail;
- (int)waitUntilCompleted;
@end

@implementation LTMStatsCompute

- (LTMStatsCompute)initWithMetalContext:(id)context
{
  contextCopy = context;
  v10.receiver = self;
  v10.super_class = LTMStatsCompute;
  v6 = [(LTMStatsCompute *)&v10 init];
  v7 = v6;
  if (!v6)
  {
    [LTMStatsCompute initWithMetalContext:];
LABEL_7:
    v8 = 0;
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_metalContext, context);
  if ([(LTMStatsCompute *)v7 createShaders:v7->_metalContext])
  {
    [LTMStatsCompute initWithMetalContext:];
    goto LABEL_7;
  }

  *&v7->_threadgroupSize.width = vdupq_n_s64(0x10uLL);
  v7->_threadgroupSize.depth = 1;
  v8 = v7;
LABEL_4:

  return v8;
}

- (int)createShaders:(id)shaders
{
  shadersCopy = shaders;
  v5 = [shadersCopy computePipelineStateFor:@"SoftLTM::localHistAndThumbKernel" constants:0];
  localHistAndThumKernelPipelineState = self->_localHistAndThumKernelPipelineState;
  self->_localHistAndThumKernelPipelineState = v5;

  if (!self->_localHistAndThumKernelPipelineState)
  {
    [LTMStatsCompute createShaders:?];
LABEL_19:
    v21 = v23;
    goto LABEL_10;
  }

  v7 = [shadersCopy computePipelineStateFor:@"SoftLTM::localHistHiResAndThumbKernel" constants:0];
  localHistHiResAndThumKernelPipelineState = self->_localHistHiResAndThumKernelPipelineState;
  self->_localHistHiResAndThumKernelPipelineState = v7;

  if (!self->_localHistHiResAndThumKernelPipelineState)
  {
    [LTMStatsCompute createShaders:?];
    goto LABEL_19;
  }

  v9 = [shadersCopy computePipelineStateFor:@"SoftLTM::globalHistKernel" constants:0];
  globalHistKernelPipelineState = self->_globalHistKernelPipelineState;
  self->_globalHistKernelPipelineState = v9;

  if (!self->_globalHistKernelPipelineState)
  {
    [LTMStatsCompute createShaders:?];
    goto LABEL_19;
  }

  v11 = [shadersCopy computePipelineStateFor:@"SoftLTM::globalFaceHistKernel" constants:0];
  globalFaceHistKernelPipelineState = self->_globalFaceHistKernelPipelineState;
  self->_globalFaceHistKernelPipelineState = v11;

  if (!self->_globalFaceHistKernelPipelineState)
  {
    [LTMStatsCompute createShaders:?];
    goto LABEL_19;
  }

  v13 = [shadersCopy computePipelineStateFor:@"SoftLTM::collectLocalHistKernel" constants:0];
  collectLocalHistKernelPipelineState = self->_collectLocalHistKernelPipelineState;
  self->_collectLocalHistKernelPipelineState = v13;

  if (!self->_collectLocalHistKernelPipelineState)
  {
    [LTMStatsCompute createShaders:?];
    goto LABEL_19;
  }

  v15 = [shadersCopy computePipelineStateFor:@"SoftLTM::collectLocalHistHiResKernel" constants:0];
  collectLocalHistHiResKernelPipelineState = self->_collectLocalHistHiResKernelPipelineState;
  self->_collectLocalHistHiResKernelPipelineState = v15;

  if (!self->_collectLocalHistHiResKernelPipelineState)
  {
    [LTMStatsCompute createShaders:?];
    goto LABEL_19;
  }

  v17 = [shadersCopy computePipelineStateFor:@"SoftLTM::ltmStatisticsKernel" constants:0];
  calcLTMStatisticsPipelineState = self->_calcLTMStatisticsPipelineState;
  self->_calcLTMStatisticsPipelineState = v17;

  if (!self->_calcLTMStatisticsPipelineState)
  {
    [LTMStatsCompute createShaders:?];
    goto LABEL_19;
  }

  v19 = [shadersCopy computePipelineStateFor:@"SoftLTM::calcLocalHistogramShiftKernel" constants:0];
  calcLocalHistogramShift = self->_calcLocalHistogramShift;
  self->_calcLocalHistogramShift = v19;

  if (!self->_calcLocalHistogramShift)
  {
    [LTMStatsCompute createShaders:?];
    goto LABEL_19;
  }

  v21 = 0;
LABEL_10:

  return v21;
}

- (int)encodeLTMStatisticsCalculationOptimized:(id)optimized params:(id *)params globalHistogram:(id)histogram globalFaceHistogram:(id)faceHistogram localHistogram:(id)localHistogram thumbnail:(id)thumbnail
{
  optimizedCopy = optimized;
  histogramCopy = histogram;
  faceHistogramCopy = faceHistogram;
  localHistogramCopy = localHistogram;
  thumbnailCopy = thumbnail;
  v54 = 0;
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];

  v49 = histogramCopy;
  if (!commandQueue)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
LABEL_37:
    computeCommandEncoder3 = 0;
LABEL_38:
    v44 = -1;
    goto LABEL_27;
  }

  if (!localHistogramCopy)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
LABEL_32:
    commandQueue = 0;
    goto LABEL_37;
  }

  if (!histogramCopy)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
    goto LABEL_32;
  }

  if (!thumbnailCopy)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
    goto LABEL_32;
  }

  v48 = thumbnailCopy;
  if (params->var3.var19)
  {
    v20 = 919360;
  }

  else
  {
    v20 = 240448;
  }

  device = [(FigMetalContext *)self->_metalContext device];
  v22 = [device newBufferWithLength:v20 options:0];
  v54 = v22;

  if (!v22)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
LABEL_35:
    commandQueue = 0;
    computeCommandEncoder3 = 0;
    v44 = -1;
    thumbnailCopy = v48;
    goto LABEL_27;
  }

  commandQueue2 = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue2 commandBuffer];
  cmdBuf = self->_cmdBuf;
  self->_cmdBuf = commandBuffer;

  v26 = self->_cmdBuf;
  if (!v26)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
    goto LABEL_35;
  }

  commandQueue = [(MTLCommandBuffer *)v26 blitCommandEncoder];
  thumbnailCopy = v48;
  if (!commandQueue)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
    goto LABEL_37;
  }

  [commandQueue fillBuffer:v22 range:0 value:{objc_msgSend(v22, "length"), 0}];
  [commandQueue fillBuffer:localHistogramCopy range:0 value:{objc_msgSend(localHistogramCopy, "length"), 0}];
  [commandQueue fillBuffer:histogramCopy range:0 value:{objc_msgSend(histogramCopy, "length"), 0}];
  [commandQueue fillBuffer:faceHistogramCopy range:0 value:{objc_msgSend(faceHistogramCopy, "length"), 0}];
  [commandQueue fillBuffer:v48 range:0 value:{objc_msgSend(v48, "length"), 0}];
  [commandQueue endEncoding];
  computeCommandEncoder = [(MTLCommandBuffer *)self->_cmdBuf computeCommandEncoder];
  computeCommandEncoder3 = computeCommandEncoder;
  if (!computeCommandEncoder)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
    goto LABEL_38;
  }

  v46 = commandQueue;
  if (params->var3.var19)
  {
    v29 = 40;
  }

  else
  {
    v29 = 32;
  }

  [computeCommandEncoder setComputePipelineState:*(&self->super.isa + v29)];
  threadExecutionWidth = [*(&self->super.isa + v29) threadExecutionWidth];
  [computeCommandEncoder3 setTexture:optimizedCopy atIndex:0];
  [computeCommandEncoder3 setBytes:&params->var3 length:176 atIndex:0];
  [computeCommandEncoder3 setBytes:&params->var4 length:44 atIndex:1];
  [computeCommandEncoder3 setBytes:params length:32 atIndex:2];
  [computeCommandEncoder3 setBuffer:v22 offset:0 atIndex:3];
  [computeCommandEncoder3 setBuffer:v48 offset:0 atIndex:4];
  v53 = 1;
  v50 = threadExecutionWidth;
  v51 = vdupq_n_s64(1uLL);
  v52 = xmmword_1C9335C00;
  [computeCommandEncoder3 dispatchThreadgroups:&v52 threadsPerThreadgroup:&v50];
  [computeCommandEncoder3 endEncoding];
  computeCommandEncoder2 = [(MTLCommandBuffer *)self->_cmdBuf computeCommandEncoder];

  if (!computeCommandEncoder2)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
    computeCommandEncoder3 = 0;
    v44 = -1;
LABEL_44:
    commandQueue = v46;
    goto LABEL_27;
  }

  v47 = faceHistogramCopy;
  [computeCommandEncoder2 setComputePipelineState:self->_globalHistKernelPipelineState];
  [computeCommandEncoder2 setTexture:optimizedCopy atIndex:0];
  [computeCommandEncoder2 setBytes:&params->var1 length:52 atIndex:0];
  [computeCommandEncoder2 setBytes:params length:32 atIndex:1];
  [computeCommandEncoder2 setBytes:&params->var4 length:44 atIndex:2];
  [computeCommandEncoder2 setBuffer:histogramCopy offset:0 atIndex:3];
  threadExecutionWidth2 = [(MTLComputePipelineState *)self->_globalHistKernelPipelineState threadExecutionWidth];
  v33 = [(MTLComputePipelineState *)self->_globalHistKernelPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth2;
  width = [optimizedCopy width];
  height = [optimizedCopy height];
  *&v52 = width;
  *(&v52 + 1) = height;
  v53 = 1;
  v50 = threadExecutionWidth2;
  v51.i64[0] = v33;
  v51.i64[1] = 1;
  [computeCommandEncoder2 dispatchThreads:&v52 threadsPerThreadgroup:&v50];
  [computeCommandEncoder2 endEncoding];
  if (params->var2.var0)
  {
    computeCommandEncoder3 = [(MTLCommandBuffer *)self->_cmdBuf computeCommandEncoder];

    faceHistogramCopy = v47;
    if (!computeCommandEncoder3)
    {
      [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
      v44 = -1;
      goto LABEL_43;
    }

    [computeCommandEncoder3 setComputePipelineState:self->_globalFaceHistKernelPipelineState];
    [computeCommandEncoder3 setTexture:optimizedCopy atIndex:0];
    [computeCommandEncoder3 setBytes:&params->var2 length:52 atIndex:0];
    [computeCommandEncoder3 setBytes:params length:32 atIndex:1];
    [computeCommandEncoder3 setBytes:&params->var4 length:44 atIndex:2];
    [computeCommandEncoder3 setBuffer:v47 offset:0 atIndex:3];
    threadExecutionWidth3 = [(MTLComputePipelineState *)self->_globalFaceHistKernelPipelineState threadExecutionWidth];
    v37 = [(MTLComputePipelineState *)self->_globalFaceHistKernelPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth3;
    width2 = [optimizedCopy width];
    height2 = [optimizedCopy height];
    *&v52 = width2;
    *(&v52 + 1) = height2;
    v53 = 1;
    v50 = threadExecutionWidth3;
    v51.i64[0] = v37;
    faceHistogramCopy = v47;
    v51.i64[1] = 1;
    [computeCommandEncoder3 dispatchThreads:&v52 threadsPerThreadgroup:&v50];
    [computeCommandEncoder3 endEncoding];
    computeCommandEncoder2 = computeCommandEncoder3;
  }

  else
  {
    faceHistogramCopy = v47;
  }

  computeCommandEncoder3 = [(MTLCommandBuffer *)self->_cmdBuf computeCommandEncoder];

  if (!computeCommandEncoder3)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
    v44 = -1;
LABEL_43:
    thumbnailCopy = v48;
    goto LABEL_44;
  }

  v40 = 64;
  if (params->var3.var19)
  {
    v40 = 72;
  }

  [computeCommandEncoder3 setComputePipelineState:*(&self->super.isa + v40)];
  [computeCommandEncoder3 setBuffer:v22 offset:0 atIndex:0];
  [computeCommandEncoder3 setBytes:&params->var3 length:176 atIndex:1];
  [computeCommandEncoder3 setBuffer:localHistogramCopy offset:0 atIndex:2];
  thumbnailCopy = v48;
  commandQueue = v46;
  if (params->var3.var19)
  {
    threadExecutionWidth4 = [(MTLComputePipelineState *)self->_collectLocalHistHiResKernelPipelineState threadExecutionWidth];
    collectLocalHistHiResKernelPipelineState = self->_collectLocalHistHiResKernelPipelineState;
  }

  else
  {
    threadExecutionWidth4 = [(MTLComputePipelineState *)self->_collectLocalHistKernelPipelineState threadExecutionWidth];
    collectLocalHistHiResKernelPipelineState = self->_collectLocalHistKernelPipelineState;
  }

  maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)collectLocalHistHiResKernelPipelineState maxTotalThreadsPerThreadgroup];
  v52 = xmmword_1C9335C10;
  v53 = 1;
  v50 = threadExecutionWidth4;
  v51.i64[0] = maxTotalThreadsPerThreadgroup / threadExecutionWidth4;
  v51.i64[1] = 1;
  [computeCommandEncoder3 dispatchThreads:&v52 threadsPerThreadgroup:&v50];
  v44 = 0;
LABEL_27:
  [computeCommandEncoder3 endEncoding];
  [(MTLCommandBuffer *)self->_cmdBuf commit];
  FigMetalDecRef();

  return v44;
}

- (int)encodeLTMStatisticsCalculationPrecise:(id)precise paramsGlobalHist:(id *)hist globalHistogram:(id)histogram localHistogram:(id)localHistogram thumbnail:(id)thumbnail
{
  preciseCopy = precise;
  histogramCopy = histogram;
  localHistogramCopy = localHistogram;
  thumbnailCopy = thumbnail;
  commandQueue = [(FigMetalContext *)self->_metalContext commandQueue];

  if (!commandQueue)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:];
LABEL_18:
    computeCommandEncoder2 = 0;
    v28 = -1;
    goto LABEL_11;
  }

  if (!histogramCopy)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:];
LABEL_17:
    commandQueue = 0;
    goto LABEL_18;
  }

  if (!localHistogramCopy)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:];
    goto LABEL_17;
  }

  if (!thumbnailCopy)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:];
    goto LABEL_17;
  }

  commandQueue2 = [(FigMetalContext *)self->_metalContext commandQueue];
  commandBuffer = [commandQueue2 commandBuffer];
  cmdBuf = self->_cmdBuf;
  self->_cmdBuf = commandBuffer;

  v20 = self->_cmdBuf;
  if (!v20)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:];
    goto LABEL_17;
  }

  commandQueue = [(MTLCommandBuffer *)v20 blitCommandEncoder];
  if (!commandQueue)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:];
    goto LABEL_18;
  }

  [commandQueue fillBuffer:histogramCopy range:0 value:{objc_msgSend(histogramCopy, "length"), 0}];
  [commandQueue fillBuffer:localHistogramCopy range:0 value:{objc_msgSend(localHistogramCopy, "length"), 0}];
  [commandQueue fillBuffer:thumbnailCopy range:0 value:{objc_msgSend(thumbnailCopy, "length"), 0}];
  [commandQueue endEncoding];
  computeCommandEncoder = [(MTLCommandBuffer *)self->_cmdBuf computeCommandEncoder];
  if (!computeCommandEncoder)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:];
    goto LABEL_18;
  }

  v22 = computeCommandEncoder;
  [computeCommandEncoder setComputePipelineState:self->_calcLTMStatisticsPipelineState];
  [v22 setTexture:preciseCopy atIndex:0];
  [v22 setBytes:&hist->var1 length:52 atIndex:0];
  [v22 setBytes:&hist->var3 length:176 atIndex:1];
  [v22 setBytes:&hist->var4 length:44 atIndex:2];
  [v22 setBytes:hist length:32 atIndex:3];
  v30 = histogramCopy;
  [v22 setBuffer:histogramCopy offset:0 atIndex:4];
  [v22 setBuffer:localHistogramCopy offset:0 atIndex:5];
  [v22 setBuffer:thumbnailCopy offset:0 atIndex:6];
  threadExecutionWidth = [(MTLComputePipelineState *)self->_calcLTMStatisticsPipelineState threadExecutionWidth];
  v24 = [(MTLComputePipelineState *)self->_calcLTMStatisticsPipelineState maxTotalThreadsPerThreadgroup]/ threadExecutionWidth;
  *&v34 = [preciseCopy width];
  *(&v34 + 1) = [preciseCopy height];
  v35 = 1;
  v31 = threadExecutionWidth;
  v32 = v24;
  v33 = 1;
  [v22 dispatchThreads:&v34 threadsPerThreadgroup:&v31];
  [v22 endEncoding];
  computeCommandEncoder2 = [(MTLCommandBuffer *)self->_cmdBuf computeCommandEncoder];

  if (computeCommandEncoder2)
  {
    [computeCommandEncoder2 setComputePipelineState:self->_calcLocalHistogramShift];
    [computeCommandEncoder2 setBytes:&hist->var3 length:176 atIndex:0];
    [computeCommandEncoder2 setBuffer:localHistogramCopy offset:0 atIndex:1];
    threadExecutionWidth2 = [(MTLComputePipelineState *)self->_calcLocalHistogramShift threadExecutionWidth];
    maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)self->_calcLocalHistogramShift maxTotalThreadsPerThreadgroup];
    v34 = xmmword_1C9335C20;
    v35 = 1;
    v31 = threadExecutionWidth2;
    v32 = maxTotalThreadsPerThreadgroup / threadExecutionWidth2;
    v33 = 1;
    [computeCommandEncoder2 dispatchThreads:&v34 threadsPerThreadgroup:&v31];
    v28 = 0;
  }

  else
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:];
    v28 = -1;
  }

  histogramCopy = v30;
LABEL_11:
  [computeCommandEncoder2 endEncoding];
  [(MTLCommandBuffer *)self->_cmdBuf commit];

  return v28;
}

- (int)waitUntilCompleted
{
  cmdBuf = self->_cmdBuf;
  if (cmdBuf)
  {
    [(MTLCommandBuffer *)cmdBuf waitUntilCompleted];
    v4 = self->_cmdBuf;
    self->_cmdBuf = 0;
  }

  else
  {
    v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return 0;
}

- (int)computeInputParametersForImageWidth:(id)width calcGlobalHistOnROI:(BOOL)i enableAntiAliasing:(BOOL)aliasing enableDualLTC:(BOOL)c enableFATE:(BOOL)e with:(sRefDriverInputs_SOFTISP *)with to:(id *)to
{
  eCopy = e;
  cCopy = c;
  iCopy = i;
  widthCopy = width;
  if (computeInputParametersForImageWidth_calcGlobalHistOnROI_enableAntiAliasing_enableDualLTC_enableFATE_with_to__onceToken != -1)
  {
    [LTMStatsCompute computeInputParametersForImageWidth:calcGlobalHistOnROI:enableAntiAliasing:enableDualLTC:enableFATE:with:to:];
  }

  if (with->hardIspDGain <= 0.0)
  {
    [LTMStatsCompute computeInputParametersForImageWidth:calcGlobalHistOnROI:enableAntiAliasing:enableDualLTC:enableFATE:with:to:];
LABEL_30:
    v71 = -1;
    goto LABEL_27;
  }

  if (!to)
  {
    [LTMStatsCompute computeInputParametersForImageWidth:calcGlobalHistOnROI:enableAntiAliasing:enableDualLTC:enableFATE:with:to:];
    goto LABEL_30;
  }

  to->var4.var10 = 0;
  *&to->var4.var2 = 0u;
  *&to->var4.var6 = 0u;
  *&to->var3.var18[20] = 0u;
  *&to->var3.var18[24] = 0u;
  *&to->var3.var18[12] = 0u;
  *&to->var3.var18[16] = 0u;
  *&to->var3.var18[4] = 0u;
  *&to->var3.var18[8] = 0u;
  *&to->var3.var14 = 0u;
  *to->var3.var18 = 0u;
  *&to->var3.var6 = 0u;
  *&to->var3.var10 = 0u;
  *&to->var2.var7[2] = 0u;
  *&to->var3.var2 = 0u;
  *&to->var2.var4 = 0u;
  *&to->var2.var6[2] = 0u;
  *&to->var1.var6[3] = 0u;
  *&to->var1.var7[3] = 0u;
  *&to->var1.var0 = 0u;
  *&to->var1.var5 = 0u;
  *&to->var0.var0 = 0u;
  *to->var0.var2 = 0u;
  hardIspDGain_low = LODWORD(with->hardIspDGain);
  v17 = vcvts_n_u32_f32(*&hardIspDGain_low, 0xBuLL);
  *&hardIspDGain_low = (*&hardIspDGain_low * 2048.0);
  to->var0.var0 = 11;
  *to->var0.var1 = vcvt_u32_f32(vmul_n_f32(0x3F370A3D3E5A1CACLL, *&hardIspDGain_low));
  to->var0.var1[2] = (*&hardIspDGain_low * 0.072);
  to->var0.var2[0] = v17;
  to->var0.var2[1] = v17;
  to->var0.var2[2] = v17;
  to->var0.var3 = 0;
  if (cCopy && ([widthCopy cropRect], v19 = v18, objc_msgSend(widthCopy, "cropRect"), v19 < v20))
  {
    [widthCopy cropRect];
    v84 = v21;
    [widthCopy cropRect];
    v82 = v22;
    [widthCopy cropRect];
    v79 = v23;
    [widthCopy cropRect];
    v25 = v24;
    v26 = 1;
  }

  else
  {
    [widthCopy cropRect];
    v84 = v27;
    [widthCopy cropRect];
    v82 = v28;
    [widthCopy cropRect];
    v79 = v29;
    [widthCopy cropRect];
    v26 = 0;
  }

  v30.f64[0] = v79;
  v30.f64[1] = v25;
  v31.f64[0] = v84;
  v31.f64[1] = v82;
  v32 = vcvt_f32_f64(v30);
  to->var3.var0 = 1;
  __asm { FMOV            V5.2D, #0.5 }

  v38 = vcvtq_n_u64_f64(vrndmq_f64(vmulq_f64(vmulq_f64(vdivq_f64(vcvtq_f64_f32(v32), xmmword_1C9335C30), _Q5), _Q5)), 2uLL);
  v78 = _Q5;
  v80 = vmovn_s64(v38);
  v39 = vmul_s32(v80, 0xD00000011);
  v40 = vmulq_f64(vcvtq_f64_f32(vsub_f32(v32, vcvt_f32_u32(v39))), _Q5);
  *&v31.f64[0] = vmovn_s64(vcvtq_n_u64_f64(vrndmq_f64(vmulq_f64(vaddq_f64(v40, vcvtq_f64_f32(vcvt_f32_f64(v31))), _Q5)), 1uLL));
  *&v40.f64[0] = vadd_s32(v39, *&v31.f64[0]);
  v85 = *&v31.f64[0];
  v75 = v40;
  v31.f64[1] = v40.f64[0];
  to->var3.var1 = 2;
  *&to->var3.var3 = v31;
  v83 = vmulq_s32(vuzp1q_s32(v38, v38), xmmword_1C9335C40);
  *&to->var3.var7 = v83;
  *&to->var3.var11 = 0x80000000000;
  to->var3.var13 = 1;
  to->var4.var9 = v26;
  if (useLowerLocalHistogramThreshold())
  {
    v41 = 65471;
  }

  else
  {
    v41 = 65472;
  }

  to->var3.var16 = 3;
  to->var3.var14 = v41;
  to->var3.var19 = 0;
  to->var3.var15 = aliasing;
  to->var3.var17 = 1;
  AuxCompute_CalcAntiAliasingSettings(&to->var3.var17, &to->var3.var16, to->var3.var18, with);
  [LTMStatsCompute rewriteAntiAliasingCoefficients:to->var3.var18];
  to->var3.var2 = ((to->var3.var10 * to->var3.var9) & 0xFFFE0000) != 0;
  to->var1.var0 = 1;
  if (!iCopy)
  {
    [widthCopy sourceRect];
    to->var1.var2 = v46;
    [widthCopy sourceRect];
    to->var1.var3 = v47;
    [widthCopy sourceRect];
    v49 = v48;
    [widthCopy sourceRect];
    to->var1.var4 = (v49 + v50);
    [widthCopy sourceRect];
    v52 = v51;
    [widthCopy sourceRect];
    var6 = (v52 + v53);
LABEL_17:
    v45 = 48;
    goto LABEL_18;
  }

  var3 = to->var3.var3;
  if (!v26)
  {
    to->var1.var2 = var3;
    *&to->var1.var3 = *&to->var3.var4;
    var6 = to->var3.var6;
    goto LABEL_17;
  }

  var5 = to->var3.var5;
  to->var1.var2 = to->var3.var4;
  to->var1.var3 = var3;
  to->var1.var5 = var5;
  var6 = to->var3.var6;
  v45 = 44;
LABEL_18:
  *(&to->var0.var0 + v45) = var6;
  [(LTMStatsCompute *)self calcExposureRatio:with, *&v75];
  *v55.i32 = v54 * 256.0;
  *&to->var1.var6[2] = 0;
  *to->var1.var6 = 0;
  *to->var1.var7 = vdupq_lane_s32(v55, 0);
  if (eCopy)
  {
    numFaces = with->faceInfo.numFaces;
    to->var2.var0 = numFaces != 0;
    if (numFaces)
    {
      v57 = (with + 16 * with->faceInfo.primaryFaceIndex);
      v58 = v57[149];
      *&to->var2.var2 = v58;
      *&to->var2.var4 = vadd_s32(v57[150], v58);
      *to->var2.var6 = 0;
      *&to->var2.var6[2] = 0;
      memset_pattern16(to->var2.var7, &unk_1C9335C50, 0x10uLL);
      to->var2.var7[3] = with->hardIspDGain * 64.0;
    }
  }

  else
  {
    to->var2.var0 = 0;
  }

  *&to->var4.var0 = v85;
  *&to->var4.var2 = v76;
  v59.i64[0] = v80.u32[0];
  v59.i64[1] = v80.u32[1];
  v77 = vmulq_f64(vcvtq_f64_u64(v59), v78);
  *&to->var4.var6 = vmovn_s64(vcvtq_n_u64_f64(vrndmq_f64(vaddq_f64(vmulq_f64(vmulq_f64(v77, v78), v78), v78)), 1uLL));
  to->var4.var4 = v80.i32[0] >> 1;
  to->var4.var5 = v80.i32[1] >> 1;
  to->var4.var10 = vcvtms_u32_f32((4295000000.0 / (v80.i32[0] >> 1)) / (v80.i32[1] >> 1));
  to->var4.var8 = 1;
  [widthCopy inputTextureDownsampleRatio];
  with->LTMGridConfig.width = (v60 * v83.u32[0]);
  [widthCopy inputTextureDownsampleRatio];
  with->LTMGridConfig.height = (v61 * v83.u32[1]);
  v62 = vadd_s32(v85, v80);
  v81 = v62.u32[1];
  v63 = v62.u32[0];
  [widthCopy deepZoomOrigin];
  if (v26)
  {
    v64 = v65;
  }

  v66 = v64 + v63;
  [widthCopy inputTextureDownsampleRatio];
  with->LTMGridConfig.x = (v66 * v67);
  [widthCopy deepZoomOrigin];
  if (!v26)
  {
    v68 = v69;
  }

  v70 = v68 + v81;
  [widthCopy inputTextureDownsampleRatio];
  v71 = 0;
  with->LTMGridConfig.y = (v70 * v72);
  v73.i64[0] = v85.u32[0];
  v73.i64[1] = v85.u32[1];
  *&with->localHistGridConfig.x = vmovn_s64(vcvtq_s64_f64(vaddq_f64(v77, vcvtq_f64_u64(v73))));
  *&with->localHistGridConfig.width = v83.i64[0];
LABEL_27:

  return v71;
}

- (float)calcExposureRatio:(const sRefDriverInputs_SOFTISP *)ratio
{
  if (!ratio->hdrRatio)
  {
    [LTMStatsCompute calcExposureRatio:];
    return 1.0;
  }

  if (!ratio->gainDigi)
  {
    [LTMStatsCompute calcExposureRatio:];
    return 1.0;
  }

  if (!ratio->ev0Ratio)
  {
    [LTMStatsCompute calcExposureRatio:];
    return 1.0;
  }

  if (!ratio->overflowDGain)
  {
    [LTMStatsCompute calcExposureRatio:];
    return 1.0;
  }

  AuxCompute_CalcExposureRatio(ratio);
  return result;
}

- (uint64_t)initWithMetalContext:.cold.2()
{
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  return FigSignalErrorAtGM();
}

- (uint64_t)createShaders:(_DWORD *)a1 .cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)createShaders:(_DWORD *)a1 .cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)createShaders:(_DWORD *)a1 .cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)createShaders:(_DWORD *)a1 .cold.4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)createShaders:(_DWORD *)a1 .cold.5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)createShaders:(_DWORD *)a1 .cold.6(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)createShaders:(_DWORD *)a1 .cold.7(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)createShaders:(_DWORD *)a1 .cold.8(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (void)encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:.cold.5()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:.cold.6()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:.cold.7()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:.cold.8()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:.cold.9()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:.cold.10()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:.cold.11()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:.cold.5()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:.cold.6()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:.cold.7()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:.cold.8()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)computeInputParametersForImageWidth:calcGlobalHistOnROI:enableAntiAliasing:enableDualLTC:enableFATE:with:to:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute computeInputParametersForImageWidth:calcGlobalHistOnROI:enableAntiAliasing:enableDualLTC:enableFATE:with:to:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)computeInputParametersForImageWidth:calcGlobalHistOnROI:enableAntiAliasing:enableDualLTC:enableFATE:with:to:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute computeInputParametersForImageWidth:calcGlobalHistOnROI:enableAntiAliasing:enableDualLTC:enableFATE:with:to:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)calcExposureRatio:.cold.1()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute calcExposureRatio:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)calcExposureRatio:.cold.2()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute calcExposureRatio:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)calcExposureRatio:.cold.3()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute calcExposureRatio:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

- (void)calcExposureRatio:.cold.4()
{
  OUTLINED_FUNCTION_4_0();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2();
  v1 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
  v9 = OUTLINED_FUNCTION_5(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11, v12, v13, SWORD2(v13), SBYTE6(v13), HIBYTE(v13));
  if (OUTLINED_FUNCTION_9(v9))
  {
    OUTLINED_FUNCTION_3("[LTMStatsCompute calcExposureRatio:]");
    OUTLINED_FUNCTION_4();
  }

  OUTLINED_FUNCTION_0();
}

@end