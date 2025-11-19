@interface LTMStatsCompute
- (LTMStatsCompute)initWithMetalContext:(id)a3;
- (float)calcExposureRatio:(const sRefDriverInputs_SOFTISP *)a3;
- (int)computeInputParametersForImageWidth:(id)a3 calcGlobalHistOnROI:(BOOL)a4 enableAntiAliasing:(BOOL)a5 enableDualLTC:(BOOL)a6 enableFATE:(BOOL)a7 with:(sRefDriverInputs_SOFTISP *)a8 to:(id *)a9;
- (int)createShaders:(id)a3;
- (int)encodeLTMStatisticsCalculationOptimized:(id)a3 params:(id *)a4 globalHistogram:(id)a5 globalFaceHistogram:(id)a6 localHistogram:(id)a7 thumbnail:(id)a8;
- (int)encodeLTMStatisticsCalculationPrecise:(id)a3 paramsGlobalHist:(id *)a4 globalHistogram:(id)a5 localHistogram:(id)a6 thumbnail:(id)a7;
- (int)waitUntilCompleted;
@end

@implementation LTMStatsCompute

- (LTMStatsCompute)initWithMetalContext:(id)a3
{
  v5 = a3;
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

  objc_storeStrong(&v6->_metalContext, a3);
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

- (int)createShaders:(id)a3
{
  v4 = a3;
  v5 = [v4 computePipelineStateFor:@"SoftLTM::localHistAndThumbKernel" constants:0];
  localHistAndThumKernelPipelineState = self->_localHistAndThumKernelPipelineState;
  self->_localHistAndThumKernelPipelineState = v5;

  if (!self->_localHistAndThumKernelPipelineState)
  {
    [LTMStatsCompute createShaders:?];
LABEL_19:
    v21 = v23;
    goto LABEL_10;
  }

  v7 = [v4 computePipelineStateFor:@"SoftLTM::localHistHiResAndThumbKernel" constants:0];
  localHistHiResAndThumKernelPipelineState = self->_localHistHiResAndThumKernelPipelineState;
  self->_localHistHiResAndThumKernelPipelineState = v7;

  if (!self->_localHistHiResAndThumKernelPipelineState)
  {
    [LTMStatsCompute createShaders:?];
    goto LABEL_19;
  }

  v9 = [v4 computePipelineStateFor:@"SoftLTM::globalHistKernel" constants:0];
  globalHistKernelPipelineState = self->_globalHistKernelPipelineState;
  self->_globalHistKernelPipelineState = v9;

  if (!self->_globalHistKernelPipelineState)
  {
    [LTMStatsCompute createShaders:?];
    goto LABEL_19;
  }

  v11 = [v4 computePipelineStateFor:@"SoftLTM::globalFaceHistKernel" constants:0];
  globalFaceHistKernelPipelineState = self->_globalFaceHistKernelPipelineState;
  self->_globalFaceHistKernelPipelineState = v11;

  if (!self->_globalFaceHistKernelPipelineState)
  {
    [LTMStatsCompute createShaders:?];
    goto LABEL_19;
  }

  v13 = [v4 computePipelineStateFor:@"SoftLTM::collectLocalHistKernel" constants:0];
  collectLocalHistKernelPipelineState = self->_collectLocalHistKernelPipelineState;
  self->_collectLocalHistKernelPipelineState = v13;

  if (!self->_collectLocalHistKernelPipelineState)
  {
    [LTMStatsCompute createShaders:?];
    goto LABEL_19;
  }

  v15 = [v4 computePipelineStateFor:@"SoftLTM::collectLocalHistHiResKernel" constants:0];
  collectLocalHistHiResKernelPipelineState = self->_collectLocalHistHiResKernelPipelineState;
  self->_collectLocalHistHiResKernelPipelineState = v15;

  if (!self->_collectLocalHistHiResKernelPipelineState)
  {
    [LTMStatsCompute createShaders:?];
    goto LABEL_19;
  }

  v17 = [v4 computePipelineStateFor:@"SoftLTM::ltmStatisticsKernel" constants:0];
  calcLTMStatisticsPipelineState = self->_calcLTMStatisticsPipelineState;
  self->_calcLTMStatisticsPipelineState = v17;

  if (!self->_calcLTMStatisticsPipelineState)
  {
    [LTMStatsCompute createShaders:?];
    goto LABEL_19;
  }

  v19 = [v4 computePipelineStateFor:@"SoftLTM::calcLocalHistogramShiftKernel" constants:0];
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

- (int)encodeLTMStatisticsCalculationOptimized:(id)a3 params:(id *)a4 globalHistogram:(id)a5 globalFaceHistogram:(id)a6 localHistogram:(id)a7 thumbnail:(id)a8
{
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v54 = 0;
  v19 = [(FigMetalContext *)self->_metalContext commandQueue];

  v49 = v15;
  if (!v19)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
LABEL_37:
    v28 = 0;
LABEL_38:
    v44 = -1;
    goto LABEL_27;
  }

  if (!v17)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
LABEL_32:
    v19 = 0;
    goto LABEL_37;
  }

  if (!v15)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
    goto LABEL_32;
  }

  if (!v18)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
    goto LABEL_32;
  }

  v48 = v18;
  if (a4->var3.var19)
  {
    v20 = 919360;
  }

  else
  {
    v20 = 240448;
  }

  v21 = [(FigMetalContext *)self->_metalContext device];
  v22 = [v21 newBufferWithLength:v20 options:0];
  v54 = v22;

  if (!v22)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
LABEL_35:
    v19 = 0;
    v28 = 0;
    v44 = -1;
    v18 = v48;
    goto LABEL_27;
  }

  v23 = [(FigMetalContext *)self->_metalContext commandQueue];
  v24 = [v23 commandBuffer];
  cmdBuf = self->_cmdBuf;
  self->_cmdBuf = v24;

  v26 = self->_cmdBuf;
  if (!v26)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
    goto LABEL_35;
  }

  v19 = [(MTLCommandBuffer *)v26 blitCommandEncoder];
  v18 = v48;
  if (!v19)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
    goto LABEL_37;
  }

  [v19 fillBuffer:v22 range:0 value:{objc_msgSend(v22, "length"), 0}];
  [v19 fillBuffer:v17 range:0 value:{objc_msgSend(v17, "length"), 0}];
  [v19 fillBuffer:v15 range:0 value:{objc_msgSend(v15, "length"), 0}];
  [v19 fillBuffer:v16 range:0 value:{objc_msgSend(v16, "length"), 0}];
  [v19 fillBuffer:v48 range:0 value:{objc_msgSend(v48, "length"), 0}];
  [v19 endEncoding];
  v27 = [(MTLCommandBuffer *)self->_cmdBuf computeCommandEncoder];
  v28 = v27;
  if (!v27)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
    goto LABEL_38;
  }

  v46 = v19;
  if (a4->var3.var19)
  {
    v29 = 40;
  }

  else
  {
    v29 = 32;
  }

  [v27 setComputePipelineState:*(&self->super.isa + v29)];
  v30 = [*(&self->super.isa + v29) threadExecutionWidth];
  [v28 setTexture:v14 atIndex:0];
  [v28 setBytes:&a4->var3 length:176 atIndex:0];
  [v28 setBytes:&a4->var4 length:44 atIndex:1];
  [v28 setBytes:a4 length:32 atIndex:2];
  [v28 setBuffer:v22 offset:0 atIndex:3];
  [v28 setBuffer:v48 offset:0 atIndex:4];
  v53 = 1;
  v50 = v30;
  v51 = vdupq_n_s64(1uLL);
  v52 = xmmword_1C9335C00;
  [v28 dispatchThreadgroups:&v52 threadsPerThreadgroup:&v50];
  [v28 endEncoding];
  v31 = [(MTLCommandBuffer *)self->_cmdBuf computeCommandEncoder];

  if (!v31)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
    v28 = 0;
    v44 = -1;
LABEL_44:
    v19 = v46;
    goto LABEL_27;
  }

  v47 = v16;
  [v31 setComputePipelineState:self->_globalHistKernelPipelineState];
  [v31 setTexture:v14 atIndex:0];
  [v31 setBytes:&a4->var1 length:52 atIndex:0];
  [v31 setBytes:a4 length:32 atIndex:1];
  [v31 setBytes:&a4->var4 length:44 atIndex:2];
  [v31 setBuffer:v15 offset:0 atIndex:3];
  v32 = [(MTLComputePipelineState *)self->_globalHistKernelPipelineState threadExecutionWidth];
  v33 = [(MTLComputePipelineState *)self->_globalHistKernelPipelineState maxTotalThreadsPerThreadgroup]/ v32;
  v34 = [v14 width];
  v35 = [v14 height];
  *&v52 = v34;
  *(&v52 + 1) = v35;
  v53 = 1;
  v50 = v32;
  v51.i64[0] = v33;
  v51.i64[1] = 1;
  [v31 dispatchThreads:&v52 threadsPerThreadgroup:&v50];
  [v31 endEncoding];
  if (a4->var2.var0)
  {
    v28 = [(MTLCommandBuffer *)self->_cmdBuf computeCommandEncoder];

    v16 = v47;
    if (!v28)
    {
      [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
      v44 = -1;
      goto LABEL_43;
    }

    [v28 setComputePipelineState:self->_globalFaceHistKernelPipelineState];
    [v28 setTexture:v14 atIndex:0];
    [v28 setBytes:&a4->var2 length:52 atIndex:0];
    [v28 setBytes:a4 length:32 atIndex:1];
    [v28 setBytes:&a4->var4 length:44 atIndex:2];
    [v28 setBuffer:v47 offset:0 atIndex:3];
    v36 = [(MTLComputePipelineState *)self->_globalFaceHistKernelPipelineState threadExecutionWidth];
    v37 = [(MTLComputePipelineState *)self->_globalFaceHistKernelPipelineState maxTotalThreadsPerThreadgroup]/ v36;
    v38 = [v14 width];
    v39 = [v14 height];
    *&v52 = v38;
    *(&v52 + 1) = v39;
    v53 = 1;
    v50 = v36;
    v51.i64[0] = v37;
    v16 = v47;
    v51.i64[1] = 1;
    [v28 dispatchThreads:&v52 threadsPerThreadgroup:&v50];
    [v28 endEncoding];
    v31 = v28;
  }

  else
  {
    v16 = v47;
  }

  v28 = [(MTLCommandBuffer *)self->_cmdBuf computeCommandEncoder];

  if (!v28)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationOptimized:params:globalHistogram:globalFaceHistogram:localHistogram:thumbnail:];
    v44 = -1;
LABEL_43:
    v18 = v48;
    goto LABEL_44;
  }

  v40 = 64;
  if (a4->var3.var19)
  {
    v40 = 72;
  }

  [v28 setComputePipelineState:*(&self->super.isa + v40)];
  [v28 setBuffer:v22 offset:0 atIndex:0];
  [v28 setBytes:&a4->var3 length:176 atIndex:1];
  [v28 setBuffer:v17 offset:0 atIndex:2];
  v18 = v48;
  v19 = v46;
  if (a4->var3.var19)
  {
    v41 = [(MTLComputePipelineState *)self->_collectLocalHistHiResKernelPipelineState threadExecutionWidth];
    collectLocalHistHiResKernelPipelineState = self->_collectLocalHistHiResKernelPipelineState;
  }

  else
  {
    v41 = [(MTLComputePipelineState *)self->_collectLocalHistKernelPipelineState threadExecutionWidth];
    collectLocalHistHiResKernelPipelineState = self->_collectLocalHistKernelPipelineState;
  }

  v43 = [(MTLComputePipelineState *)collectLocalHistHiResKernelPipelineState maxTotalThreadsPerThreadgroup];
  v52 = xmmword_1C9335C10;
  v53 = 1;
  v50 = v41;
  v51.i64[0] = v43 / v41;
  v51.i64[1] = 1;
  [v28 dispatchThreads:&v52 threadsPerThreadgroup:&v50];
  v44 = 0;
LABEL_27:
  [v28 endEncoding];
  [(MTLCommandBuffer *)self->_cmdBuf commit];
  FigMetalDecRef();

  return v44;
}

- (int)encodeLTMStatisticsCalculationPrecise:(id)a3 paramsGlobalHist:(id *)a4 globalHistogram:(id)a5 localHistogram:(id)a6 thumbnail:(id)a7
{
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = [(FigMetalContext *)self->_metalContext commandQueue];

  if (!v16)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:];
LABEL_18:
    v25 = 0;
    v28 = -1;
    goto LABEL_11;
  }

  if (!v13)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:];
LABEL_17:
    v16 = 0;
    goto LABEL_18;
  }

  if (!v14)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:];
    goto LABEL_17;
  }

  if (!v15)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:];
    goto LABEL_17;
  }

  v17 = [(FigMetalContext *)self->_metalContext commandQueue];
  v18 = [v17 commandBuffer];
  cmdBuf = self->_cmdBuf;
  self->_cmdBuf = v18;

  v20 = self->_cmdBuf;
  if (!v20)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:];
    goto LABEL_17;
  }

  v16 = [(MTLCommandBuffer *)v20 blitCommandEncoder];
  if (!v16)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:];
    goto LABEL_18;
  }

  [v16 fillBuffer:v13 range:0 value:{objc_msgSend(v13, "length"), 0}];
  [v16 fillBuffer:v14 range:0 value:{objc_msgSend(v14, "length"), 0}];
  [v16 fillBuffer:v15 range:0 value:{objc_msgSend(v15, "length"), 0}];
  [v16 endEncoding];
  v21 = [(MTLCommandBuffer *)self->_cmdBuf computeCommandEncoder];
  if (!v21)
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:];
    goto LABEL_18;
  }

  v22 = v21;
  [v21 setComputePipelineState:self->_calcLTMStatisticsPipelineState];
  [v22 setTexture:v12 atIndex:0];
  [v22 setBytes:&a4->var1 length:52 atIndex:0];
  [v22 setBytes:&a4->var3 length:176 atIndex:1];
  [v22 setBytes:&a4->var4 length:44 atIndex:2];
  [v22 setBytes:a4 length:32 atIndex:3];
  v30 = v13;
  [v22 setBuffer:v13 offset:0 atIndex:4];
  [v22 setBuffer:v14 offset:0 atIndex:5];
  [v22 setBuffer:v15 offset:0 atIndex:6];
  v23 = [(MTLComputePipelineState *)self->_calcLTMStatisticsPipelineState threadExecutionWidth];
  v24 = [(MTLComputePipelineState *)self->_calcLTMStatisticsPipelineState maxTotalThreadsPerThreadgroup]/ v23;
  *&v34 = [v12 width];
  *(&v34 + 1) = [v12 height];
  v35 = 1;
  v31 = v23;
  v32 = v24;
  v33 = 1;
  [v22 dispatchThreads:&v34 threadsPerThreadgroup:&v31];
  [v22 endEncoding];
  v25 = [(MTLCommandBuffer *)self->_cmdBuf computeCommandEncoder];

  if (v25)
  {
    [v25 setComputePipelineState:self->_calcLocalHistogramShift];
    [v25 setBytes:&a4->var3 length:176 atIndex:0];
    [v25 setBuffer:v14 offset:0 atIndex:1];
    v26 = [(MTLComputePipelineState *)self->_calcLocalHistogramShift threadExecutionWidth];
    v27 = [(MTLComputePipelineState *)self->_calcLocalHistogramShift maxTotalThreadsPerThreadgroup];
    v34 = xmmword_1C9335C20;
    v35 = 1;
    v31 = v26;
    v32 = v27 / v26;
    v33 = 1;
    [v25 dispatchThreads:&v34 threadsPerThreadgroup:&v31];
    v28 = 0;
  }

  else
  {
    [LTMStatsCompute encodeLTMStatisticsCalculationPrecise:paramsGlobalHist:globalHistogram:localHistogram:thumbnail:];
    v28 = -1;
  }

  v13 = v30;
LABEL_11:
  [v25 endEncoding];
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

- (int)computeInputParametersForImageWidth:(id)a3 calcGlobalHistOnROI:(BOOL)a4 enableAntiAliasing:(BOOL)a5 enableDualLTC:(BOOL)a6 enableFATE:(BOOL)a7 with:(sRefDriverInputs_SOFTISP *)a8 to:(id *)a9
{
  v10 = a7;
  v11 = a6;
  v13 = a4;
  v15 = a3;
  if (computeInputParametersForImageWidth_calcGlobalHistOnROI_enableAntiAliasing_enableDualLTC_enableFATE_with_to__onceToken != -1)
  {
    [LTMStatsCompute computeInputParametersForImageWidth:calcGlobalHistOnROI:enableAntiAliasing:enableDualLTC:enableFATE:with:to:];
  }

  if (a8->hardIspDGain <= 0.0)
  {
    [LTMStatsCompute computeInputParametersForImageWidth:calcGlobalHistOnROI:enableAntiAliasing:enableDualLTC:enableFATE:with:to:];
LABEL_30:
    v71 = -1;
    goto LABEL_27;
  }

  if (!a9)
  {
    [LTMStatsCompute computeInputParametersForImageWidth:calcGlobalHistOnROI:enableAntiAliasing:enableDualLTC:enableFATE:with:to:];
    goto LABEL_30;
  }

  a9->var4.var10 = 0;
  *&a9->var4.var2 = 0u;
  *&a9->var4.var6 = 0u;
  *&a9->var3.var18[20] = 0u;
  *&a9->var3.var18[24] = 0u;
  *&a9->var3.var18[12] = 0u;
  *&a9->var3.var18[16] = 0u;
  *&a9->var3.var18[4] = 0u;
  *&a9->var3.var18[8] = 0u;
  *&a9->var3.var14 = 0u;
  *a9->var3.var18 = 0u;
  *&a9->var3.var6 = 0u;
  *&a9->var3.var10 = 0u;
  *&a9->var2.var7[2] = 0u;
  *&a9->var3.var2 = 0u;
  *&a9->var2.var4 = 0u;
  *&a9->var2.var6[2] = 0u;
  *&a9->var1.var6[3] = 0u;
  *&a9->var1.var7[3] = 0u;
  *&a9->var1.var0 = 0u;
  *&a9->var1.var5 = 0u;
  *&a9->var0.var0 = 0u;
  *a9->var0.var2 = 0u;
  hardIspDGain_low = LODWORD(a8->hardIspDGain);
  v17 = vcvts_n_u32_f32(*&hardIspDGain_low, 0xBuLL);
  *&hardIspDGain_low = (*&hardIspDGain_low * 2048.0);
  a9->var0.var0 = 11;
  *a9->var0.var1 = vcvt_u32_f32(vmul_n_f32(0x3F370A3D3E5A1CACLL, *&hardIspDGain_low));
  a9->var0.var1[2] = (*&hardIspDGain_low * 0.072);
  a9->var0.var2[0] = v17;
  a9->var0.var2[1] = v17;
  a9->var0.var2[2] = v17;
  a9->var0.var3 = 0;
  if (v11 && ([v15 cropRect], v19 = v18, objc_msgSend(v15, "cropRect"), v19 < v20))
  {
    [v15 cropRect];
    v84 = v21;
    [v15 cropRect];
    v82 = v22;
    [v15 cropRect];
    v79 = v23;
    [v15 cropRect];
    v25 = v24;
    v26 = 1;
  }

  else
  {
    [v15 cropRect];
    v84 = v27;
    [v15 cropRect];
    v82 = v28;
    [v15 cropRect];
    v79 = v29;
    [v15 cropRect];
    v26 = 0;
  }

  v30.f64[0] = v79;
  v30.f64[1] = v25;
  v31.f64[0] = v84;
  v31.f64[1] = v82;
  v32 = vcvt_f32_f64(v30);
  a9->var3.var0 = 1;
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
  a9->var3.var1 = 2;
  *&a9->var3.var3 = v31;
  v83 = vmulq_s32(vuzp1q_s32(v38, v38), xmmword_1C9335C40);
  *&a9->var3.var7 = v83;
  *&a9->var3.var11 = 0x80000000000;
  a9->var3.var13 = 1;
  a9->var4.var9 = v26;
  if (useLowerLocalHistogramThreshold())
  {
    v41 = 65471;
  }

  else
  {
    v41 = 65472;
  }

  a9->var3.var16 = 3;
  a9->var3.var14 = v41;
  a9->var3.var19 = 0;
  a9->var3.var15 = a5;
  a9->var3.var17 = 1;
  AuxCompute_CalcAntiAliasingSettings(&a9->var3.var17, &a9->var3.var16, a9->var3.var18, a8);
  [LTMStatsCompute rewriteAntiAliasingCoefficients:a9->var3.var18];
  a9->var3.var2 = ((a9->var3.var10 * a9->var3.var9) & 0xFFFE0000) != 0;
  a9->var1.var0 = 1;
  if (!v13)
  {
    [v15 sourceRect];
    a9->var1.var2 = v46;
    [v15 sourceRect];
    a9->var1.var3 = v47;
    [v15 sourceRect];
    v49 = v48;
    [v15 sourceRect];
    a9->var1.var4 = (v49 + v50);
    [v15 sourceRect];
    v52 = v51;
    [v15 sourceRect];
    var6 = (v52 + v53);
LABEL_17:
    v45 = 48;
    goto LABEL_18;
  }

  var3 = a9->var3.var3;
  if (!v26)
  {
    a9->var1.var2 = var3;
    *&a9->var1.var3 = *&a9->var3.var4;
    var6 = a9->var3.var6;
    goto LABEL_17;
  }

  var5 = a9->var3.var5;
  a9->var1.var2 = a9->var3.var4;
  a9->var1.var3 = var3;
  a9->var1.var5 = var5;
  var6 = a9->var3.var6;
  v45 = 44;
LABEL_18:
  *(&a9->var0.var0 + v45) = var6;
  [(LTMStatsCompute *)self calcExposureRatio:a8, *&v75];
  *v55.i32 = v54 * 256.0;
  *&a9->var1.var6[2] = 0;
  *a9->var1.var6 = 0;
  *a9->var1.var7 = vdupq_lane_s32(v55, 0);
  if (v10)
  {
    numFaces = a8->faceInfo.numFaces;
    a9->var2.var0 = numFaces != 0;
    if (numFaces)
    {
      v57 = (a8 + 16 * a8->faceInfo.primaryFaceIndex);
      v58 = v57[149];
      *&a9->var2.var2 = v58;
      *&a9->var2.var4 = vadd_s32(v57[150], v58);
      *a9->var2.var6 = 0;
      *&a9->var2.var6[2] = 0;
      memset_pattern16(a9->var2.var7, &unk_1C9335C50, 0x10uLL);
      a9->var2.var7[3] = a8->hardIspDGain * 64.0;
    }
  }

  else
  {
    a9->var2.var0 = 0;
  }

  *&a9->var4.var0 = v85;
  *&a9->var4.var2 = v76;
  v59.i64[0] = v80.u32[0];
  v59.i64[1] = v80.u32[1];
  v77 = vmulq_f64(vcvtq_f64_u64(v59), v78);
  *&a9->var4.var6 = vmovn_s64(vcvtq_n_u64_f64(vrndmq_f64(vaddq_f64(vmulq_f64(vmulq_f64(v77, v78), v78), v78)), 1uLL));
  a9->var4.var4 = v80.i32[0] >> 1;
  a9->var4.var5 = v80.i32[1] >> 1;
  a9->var4.var10 = vcvtms_u32_f32((4295000000.0 / (v80.i32[0] >> 1)) / (v80.i32[1] >> 1));
  a9->var4.var8 = 1;
  [v15 inputTextureDownsampleRatio];
  a8->LTMGridConfig.width = (v60 * v83.u32[0]);
  [v15 inputTextureDownsampleRatio];
  a8->LTMGridConfig.height = (v61 * v83.u32[1]);
  v62 = vadd_s32(v85, v80);
  v81 = v62.u32[1];
  v63 = v62.u32[0];
  [v15 deepZoomOrigin];
  if (v26)
  {
    v64 = v65;
  }

  v66 = v64 + v63;
  [v15 inputTextureDownsampleRatio];
  a8->LTMGridConfig.x = (v66 * v67);
  [v15 deepZoomOrigin];
  if (!v26)
  {
    v68 = v69;
  }

  v70 = v68 + v81;
  [v15 inputTextureDownsampleRatio];
  v71 = 0;
  a8->LTMGridConfig.y = (v70 * v72);
  v73.i64[0] = v85.u32[0];
  v73.i64[1] = v85.u32[1];
  *&a8->localHistGridConfig.x = vmovn_s64(vcvtq_s64_f64(vaddq_f64(v77, vcvtq_f64_u64(v73))));
  *&a8->localHistGridConfig.width = v83.i64[0];
LABEL_27:

  return v71;
}

- (float)calcExposureRatio:(const sRefDriverInputs_SOFTISP *)a3
{
  if (!a3->hdrRatio)
  {
    [LTMStatsCompute calcExposureRatio:];
    return 1.0;
  }

  if (!a3->gainDigi)
  {
    [LTMStatsCompute calcExposureRatio:];
    return 1.0;
  }

  if (!a3->ev0Ratio)
  {
    [LTMStatsCompute calcExposureRatio:];
    return 1.0;
  }

  if (!a3->overflowDGain)
  {
    [LTMStatsCompute calcExposureRatio:];
    return 1.0;
  }

  AuxCompute_CalcExposureRatio(a3);
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