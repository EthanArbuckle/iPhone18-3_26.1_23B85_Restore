@interface GGMMetalToolBox
- ($D341E8FA52B8DFDE89B90A050A6B59DC)generateMetaContainerArrayBufFromMetaContainerBuf:(id)a3 imageRect:(CGRect)a4;
- (GGMMetalToolBox)initWithMetalContext:(id)a3 commandQueue:(id)a4;
- (GGMMetalToolBox)initWithMetalContext:(id)a3 commandQueue:(id)a4 tuningParamDict:(id)a5;
- (id)clusterIndicesOfRois:(id *)a3 withExtendedRadius:(float)a4 roiCnt:(signed __int16)a5 imageRect:(CGRect)a6;
- (id)createForwarpOutputBufferWidth:(unint64_t)a3 height:(unint64_t)a4 channels:(unint64_t)a5;
- (int)_compileShaders;
- (int64_t)encodeAddMvf0ToMvf1ToCommandEncoder:(id)a3 fullResTarget:(id)a4 mvf0:(id)a5 mvf1:(id)a6 outMvf:(id)a7 meta:(id)a8;
- (int64_t)encodeAlignBgAvgYUVToCommandEncoder:(id)a3 input:(id)a4 ref0:(id)a5 ref1:(id)a6 alignedRef0:(id)a7 alignedRef1:(id)a8 metaBuf:(id)a9;
- (int64_t)encodeBMSearch1RefToCommandEncoder:(GGMMetalToolBox *)self target:(SEL)a2 ref:(id)a3 reflect:(id)a4 normalizedTargetCenter:(id)a5 normalizedRefCenter:(BOOL)a6 bestMatchLoc:(id)a7 meta:(id)a8;
- (int64_t)encodeBMSearch4RepairToCommandEncoder:(id)a3 hrTarget:(id)a4 target:(id)a5 ref0:(id)a6 ref1:(id)a7 forwarpHoleMap0:(id)a8 forwarpHoleMap1:(id)a9 probMap:(id)a10 mvf0:(id)a11 mvf1:(id)a12 meta:(id)a13;
- (int64_t)encodeBMTransfer4RepairYUVToCommandEncoder:(id)a3 ref0:(id)a4 ref1:(id)a5 forwarpHoleMap0:(id)a6 forwarpHoleMap1:(id)a7 probMap:(id)a8 warpedRef0:(id)a9 warpedRef1:(id)a10 bmMvf0:(id)a11 bmMvf1:(id)a12 backwarpFlow0:(id)a13 backwarpFlow1:(id)a14 meta:(id)a15;
- (int64_t)encodeBMTransferGrayToCommandEncoder:(id)a3 ref:(id)a4 warpedRef:(id)a5 bestMatchLoc:(id)a6 meta:(id)a7 sf:(int)a8;
- (int64_t)encodeBMTransferYUVToCommandEncoder:(id)a3 ref:(id)a4 reflect:(BOOL)a5 normalizedCenter:(id)a6 warpedRef:(id)a7 bestMatchLoc:(id)a8 meta:(int)a9 sf:;
- (int64_t)encodeBilinearRescale2ImgsYUV:(id)a3 fullResInput:(id)a4 input0:(id)a5 output0:(id)a6 input1:(id)a7 output1:(id)a8 meta:(id)a9;
- (int64_t)encodeBilinearRescaleYUV:(id)a3 fullResInput:(id)a4 input:(id)a5 meta:(id)a6 blurBeforeSample:(BOOL)a7 output:(id)a8;
- (int64_t)encodeBlendRefsYUVToCommandEncoder:(id)a3 hmgrphyRef0:(id)a4 hmgrphyRef1:(id)a5 bmRef0:(id)a6 bmRef1:(id)a7 output0:(id)a8 output1:(id)a9 metaBuf:(id)a10;
- (int64_t)encodeBlendSpatialMitigatedYUVToCommandEncoder:(id)a3 inputTexture:(id)a4 probMapTexture:(id)a5 probMap4TradSpatialTexture:(id)a6 tradSpatialMitTexture:(id)a7 dlSpatialMitTexture:(id)a8 outputTexture:(id)a9 metaBuf:(id)a10;
- (int64_t)encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:(id)a3 fullResInput:(id)a4 ref0:(id)a5 warpedRef0:(id)a6 ref1:(id)a7 warpedRef1:(id)a8 meta:(id)a9;
- (int64_t)encodeCollectClusterBgAvgToCommandEncoder:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5;
- (int64_t)encodeCollectClusterMaxAndAvgLuma:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5;
- (int64_t)encodeCollectClusterMaxProb:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5;
- (int64_t)encodeCollectClusterMv:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5;
- (int64_t)encodeCollectClusterMvForMotionCueToCommandEncoder:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5;
- (int64_t)encodeCollectClusterOverlapWithRefs:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5;
- (int64_t)encodeCollectClusterTempRepairErr:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5;
- (int64_t)encodeCollectMetaContainers:(id)a3 metaBuf:(id)a4 lsCheckOutmetaBuf:(id)a5 redoTrackingOutmetaBuf:(id)a6 currTrackId:(int)a7;
- (int64_t)encodeCollectMvToFuture:(id)a3 metaBuf:(id)a4;
- (int64_t)encodeCombineMapWithRefMapToEncoder:(id)a3 map:(id)a4 ref:(id)a5 dilatedRef:(id)a6 lsMap:(id)a7 dilatedLsMap:(id)a8 refLsMap:(id)a9 motion:(id)a10 saliency:(id)a11 targetFrameYUV:(id)a12 blobSaliency:(id)a13 spaRef:(id)a14 mvf:(id)a15 output:(id)a16 spaOutput:(id)a17 meta:(id)a18 wRef:(float)a19;
- (int64_t)encodeConditionalDilateProbMapYUV:(id)a3 inputYUV:(id)a4 probMap:(id)a5 dilatedProbMap:(id)a6 hardDilationRadius:(float)a7 softDilationRadius:(float)a8 meta:(id)a9;
- (int64_t)encodeConvertFloatBuffer2TextureToCommandEncoder:(id)a3 inputBuffer0:(id)a4 inputBuffer1:(id)a5 meta:(id)a6 output0:(id)a7 outputMap0:(id)a8 output1:(id)a9 outputMap1:(id)a10;
- (int64_t)encodeCopyCurrMetaForProcFuture:(id)a3 metaBuf:(id)a4 outMetaBuf:(id)a5;
- (int64_t)encodeCopyFullFrameMapToMap4RoiGenToCommandEncoder:(id)a3 input:(id)a4 output:(id)a5;
- (int64_t)encodeCopyMapToMap4RoiGenToCommandEncoder:(id)a3 input:(id)a4 output:(id)a5 metaBuf:(id)a6;
- (int64_t)encodeCopyMvfToCommandEncoder:(id)a3 fullResTarget:(id)a4 mvf0:(id)a5 outMvf0:(id)a6 mvf1:(id)a7 outMvf1:(id)a8 meta:(id)a9;
- (int64_t)encodeDilateForwarpHoleMap:(id)a3 fullResTarget:(id)a4 inputMap0:(id)a5 outputMap0:(id)a6 inputMap1:(id)a7 outputMap1:(id)a8 hardDilationRadius:(float)a9 softDilationRadius:(float)a10 meta:(id)a11;
- (int64_t)encodeDilateGrayImg:(id)a3 input:(id)a4 output:(id)a5 hardDilationOutput:(id)a6 hardDilationRadius:(float)a7 softDilationRadius:(float)a8 meta:(id)a9;
- (int64_t)encodeDilateProbMap:(id)a3 input:(id)a4 output:(id)a5 hardDilationRadius:(float)a6 softDilationRadius:(float)a7 meta:(id)a8;
- (int64_t)encodeDilateReflLsMap:(id)a3 inputYUV:(id)a4 lsMap:(id)a5 dilatedLsMap:(id)a6 hardDilationRadius:(float)a7 softDilationRadius:(float)a8 meta:(id)a9;
- (int64_t)encodeForwarpYUVToCommandEncoder:(id)a3 input0:(id)a4 input1:(id)a5 meta:(id)a6 mvf0:(id)a7 mvf1:(id)a8 intermediateOutput0:(id)a9 intermediateOutput1:(id)a10 output0:(id)a11 output1:(id)a12 outputMap0:(id)a13 outputMap1:(id)a14;
- (int64_t)encodeFuse4DetectionYUVToCommandEncoder:(id)a3 inputTexture:(id)a4 probMapTexture:(id)a5 temporalMitTexture:(id)a6 spatialMitTexture:(id)a7 forceToSpatial:(BOOL)a8 outputTexture:(id)a9 metaBuf:(id)a10;
- (int64_t)encodeGetBgAvgYUVToCommandEncoder:(id)a3 target:(id)a4 ref0:(id)a5 ref1:(id)a6 probMap:(id)a7 meta:(id)a8;
- (int64_t)encodeGetBlobSaliency:(id)a3 inputYUV:(id)a4 blobSaliencyMap:(id)a5 meta:(id)a6;
- (int64_t)encodeGetGhostProbMapToCommandEncoder:(id)a3 target:(id)a4 reflLsMap:(id)a5 motionMap:(id)a6 saliencyMap:(id)a7 isInitFrame:(BOOL)a8 probMap:(id)a9 meta:(id)a10;
- (int64_t)encodeGetLsMapYUVToCommandEncoder:(id)a3 input:(id)a4 map:(id)a5;
- (int64_t)encodeGetMotionMapYUVToCommandEncoder:(id)a3 ref:(id)a4 target:(id)a5 motionMap:(id)a6 meta:(id)a7;
- (int64_t)encodeGetMvForMotionCueFromMvf:(GGMMetalToolBox *)self fullResInput:(SEL)a2 meta:(id)a3 mvf:(id)a4 opticalCenter:(id)a5 refOpticalCenter:(id)a6;
- (int64_t)encodeGetMvFromLsToCommandEncoder:(GGMMetalToolBox *)self target:(SEL)a2 lsMap:(id)a3 refLsMap:(id)a4 targetCenter:(id)a5 refCenter:(id)a6 meta:(id)a7;
- (int64_t)encodeGetMvToFutureFromMvf:(id)a3 fullResInput:(id)a4 meta:(id)a5 mvf:(id)a6;
- (int64_t)encodeGetOverlapWithRefs:(id)a3 input:(id)a4 probMap:(id)a5 metaBuf:(id)a6;
- (int64_t)encodeGetRoiMaxAndAvgLumaYUV:(id)a3 target:(id)a4 lsMap:(id)a5 meta:(id)a6;
- (int64_t)encodeGetRoiRepairMvFromMvfToCommandEncoder:(id)a3 fullResInput:(id)a4 probMap:(id)a5 mvf0:(id)a6 mvf1:(id)a7 meta:(id)a8;
- (int64_t)encodeGetSaliencyMapToCommandEncoder:(id)a3 target:(id)a4 saliencyMap:(id)a5 meta:(id)a6;
- (int64_t)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:(id)a3 target:(id)a4 hmgrphyRef0:(id)a5 hmgrphyRef1:(id)a6 bmRef0:(id)a7 bmRef1:(id)a8 probMap:(id)a9 errRescaleProbMap:(id)a10 prevProbMap:(id)a11 flow0:(id)a12 flow1:(id)a13 meta:(id)a14;
- (int64_t)encodePreprocessInputs4MotionCueYUVToCommandEncoder:(id)a3 input:(id)a4 ref:(id)a5 output:(id)a6 refOutput:(id)a7 metaBuf:(id)a8 processedFrameCount:(int)a9;
- (int64_t)encodeRefineFutureHwLsMapWithTrackingToEncoder:(id)a3 reflHwMap:(id)a4 target:(id)a5 opticalCenter:(id)a6 warpedRefReflHwMap:(id)a7 warpedReflRef:(id)a8 metaBuf:;
- (int64_t)encodeReflectYUVImg2:(GGMMetalToolBox *)self fullResInput:(SEL)a2 meta:(id)a3 input0:(id)a4 output0:(id)a5 center0:(id)a6 input1:(id)a7 output1:(id)a8 center1:(id)a9;
- (int64_t)encodeResetOutputToCommandEncoder:(id)a3 input:(id)a4 meta:(id)a5 output0:(id)a6 output1:(id)a7;
- (int64_t)encodeSpatialRepairYUVToCommandEncoder:(id)a3 input:(id)a4 probMap4Spatial:(id)a5 spatialOutput:(id)a6 metaBuf:(id)a7;
- (int64_t)encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:(id)a3 input:(id)a4 frRef0:(id)a5 frRef1:(id)a6 temporalOutput:(id)a7 inputCopy:(id)a8 metaBuf:(id)a9;
- (int64_t)encodeSyncWeightsOriginal:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5;
- (int64_t)encodeUpdateOutputFloatToCommandEncoder:(id)a3 input0:(id)a4 flow0:(id)a5 input1:(id)a6 flow1:(id)a7 meta:(id)a8 output0:(id)a9 output1:(id)a10;
- (int64_t)encodeUpscaleProbMap:(id)a3 probMap:(id)a4 refinedProbMap:(id)a5 inputFrame:(id)a6 upscaledProbMap:(id)a7 upscaledRefinedProbMap:(id)a8 meta:(id)a9;
- (int64_t)encodeUpscaleThenReflectLsMap:(id)a3 input:(id)a4 normalizedCenter:(id)a5 output:;
- (int64_t)encodeVisualizeMvfToCommandEncoder:(id)a3 fullResTarget:(id)a4 mvf:(id)a5 outMvf:(id)a6 meta:(id)a7;
- (int64_t)encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:(id)a3 fullResTarget:(id)a4 mvf0:(id)a5 mvf1:(id)a6 mvf2:(id)a7 outMvf:(id)a8 meta:(id)a9;
- (int64_t)encodeWarpMvf0WithMvf1ToCommandEncoder:(id)a3 fullResTarget:(id)a4 mvf0:(id)a5 mvf1:(id)a6 outMvf:(id)a7 meta:(id)a8;
- (int64_t)encodeWarpRefMeta:(id)a3 refMetaBuf:(id)a4 metaBuf:(id)a5 outMetaBuf:(id)a6 lsCheckOutmetaBuf:(id)a7 redoTrackingOutmetaBuf:(id)a8 capRefMetaCnt:(BOOL)a9;
- (int64_t)encodeWarpRefMetaLite:(id)a3 refMetaBuf:(id)a4 outMetaBuf:(id)a5;
- (int64_t)resizeImageCmdBuf:(id)a3 inputTexture:(id)a4 withFactorX:(float)a5 withFactorY:(float)a6 outputTexture:(id)a7;
- (void)dealloc;
- (void)rescaleMetaContainerBuffer:(id)a3 sf:(float)a4 sfInv:(float)a5;
- (void)updateMetaContainerBuffer:(id)a3 withDetectedROI:(id)a4 isLowLight:(BOOL)a5 opticalCenter:(float)a6 opticalCenterShift:;
@end

@implementation GGMMetalToolBox

- (GGMMetalToolBox)initWithMetalContext:(id)a3 commandQueue:(id)a4 tuningParamDict:(id)a5
{
  v5 = [(GGMMetalToolBox *)self initWithMetalContext:a3 commandQueue:a4, a5];
  v6 = v5;
  if (v5)
  {
    [(GGMMetalToolBox *)v5 setRepairTuningParams:&v5->_tuningParams];
    v7 = v6;
  }

  else
  {
    [GGMMetalToolBox initWithMetalContext:commandQueue:tuningParamDict:];
  }

  return v6;
}

- (void)dealloc
{
  cvMetalTextureCacheRef = self->_cvMetalTextureCacheRef;
  if (cvMetalTextureCacheRef)
  {
    CVMetalTextureCacheFlush(cvMetalTextureCacheRef, 0);
    CFRelease(self->_cvMetalTextureCacheRef);
  }

  v4.receiver = self;
  v4.super_class = GGMMetalToolBox;
  [(GGMMetalToolBox *)&v4 dealloc];
}

- (void)updateMetaContainerBuffer:(id)a3 withDetectedROI:(id)a4 isLowLight:(BOOL)a5 opticalCenter:(float)a6 opticalCenterShift:
{
  v7 = v6;
  v8 = *&a6;
  v11 = a4;
  v12 = [a3 contents];
  *(v12 + 8232) = a5;
  *(v12 + 11824) = v8;
  *(v12 + 71232) = v7;
  if ([v11 count])
  {
    v14 = 0;
    *&v13 = vneg_f32(0x80000000800000);
    v32 = v13;
    v15 = (v12 + 56);
    *&v13 = 0x80000000800000;
    v33 = v13;
    while (1)
    {
      v16 = [v11 objectAtIndexedSubscript:v14];
      [v16 roi];
      v37 = v17;
      [v16 roi];
      v31 = v18;
      [v16 roi];
      v35 = v19;
      [v16 roi];
      *v20.i64 = v37;
      *&v20.i64[1] = v31;
      v21 = vcvt_f32_f64(v20);
      *v20.i64 = v35;
      *&v20.i64[1] = v22;
      v23 = vadd_f32(v21, vcvt_f32_f64(v20));
      *v20.i8 = vcvt_s32_f32(v21);
      v20.i64[1] = v20.i64[0];
      *v24.i8 = vcvt_s32_f32(v23);
      v24.i64[1] = v24.i64[0];
      v25.i64[0] = vaddq_s32(v24, v20).u64[0];
      v25.i64[1] = vsubq_s32(v24, v20).i64[1];
      v24.i64[0] = 0x3F0000003F000000;
      v24.i64[1] = 0x3F0000003F000000;
      v36 = v23;
      v38 = v21;
      *v15[-1].f32 = v21;
      *&v15[-1].u32[2] = v23;
      *v15 = vmulq_f32(vcvtq_f32_s32(v25), v24);
      *(v12 + 8236 + 4 * v14) = [v16 trackID];
      if (global_logLevel)
      {
        NSLog(&cfstr_RoiToRepairFFF.isa, v38.f32[0], v38.f32[1], v36.f32[0], v36.f32[1]);
      }

      *(&v26 + 1) = *(&v32 + 1);
      *&v26 = vbsl_s8(vcgt_f32(v38, *&v32), *&v32, v38);
      v32 = v26;
      *(&v26 + 1) = *(&v33 + 1);
      *&v26 = vbsl_s8(vcgt_f32(*&v33, v36), *&v33, v36);
      v33 = v26;
      if (v14 == 255)
      {
        break;
      }

      ++v14;

      v15 += 2;
      if (v14 >= [v11 count])
      {
        v28 = *(&v33 + 1);
        v27 = *&v33;
        goto LABEL_9;
      }
    }

    if ((global_logLevel & 0x10) != 0)
    {
      v30 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
      {
        [GGMMetalToolBox updateMetaContainerBuffer:v30 withDetectedROI:? isLowLight:? opticalCenter:? opticalCenterShift:?];
      }
    }

    v28 = *(&v33 + 1);
    v27 = *&v33;
    LOWORD(v14) = 256;
  }

  else
  {
    LOWORD(v14) = 0;
    *&v32 = vneg_f32(0x80000000800000);
    v28 = 1.1755e-38;
    v27 = 1.1755e-38;
  }

LABEL_9:
  if (global_logLevel)
  {
    v34 = v27;
    NSLog(&cfstr_OfRoiSToRepair.isa, v14);
    v27 = v34;
  }

  *v12 = v14;
  *(v12 + 2) = v14;
  *(v12 + 8) = v32;
  *(v12 + 12) = v27;
  *(v12 + 16) = DWORD1(v32);
  *(v12 + 20) = v28;
  *(v12 + 24) = (v27 - *&v32);
  *(v12 + 28) = (v28 - *(&v32 + 1));
  v29 = vaddq_f64(vcvtq_f64_f32(*&v32), vdupq_n_s64(0xC050000000000000));
  *&v29.f64[0] = vmovn_s64(vcvtq_s64_f64(vbicq_s8(v29, vcltzq_f64(v29))));
  *(v12 + 32) = *&vsra_n_u32(*&v29.f64[0], vcltz_s32(*&v29.f64[0]), 0x1EuLL) & 0xFFFFFFFCFFFFFFFCLL;
}

- (void)rescaleMetaContainerBuffer:(id)a3 sf:(float)a4 sfInv:(float)a5
{
  v10 = *&a5;
  v5 = [a3 contents];
  *(v5 + 1478) = vmul_n_f32(*(v5 + 5912), *v10.i32);
  v6 = *v5;
  if (*v5)
  {
    v7 = (v5 + 28);
    do
    {
      v8 = vmulq_n_f32(*v7, *v10.i32);
      v7[-1] = vmulq_n_f32(v7[-1], *v10.i32);
      *v7 = v8;
      v7 += 2;
      --v6;
    }

    while (v6);
  }

  *(v5 + 4) = vmulq_n_f32(*(v5 + 4), *v10.i32);
  v9 = vcvt_s32_f32(vmul_n_f32(vcvt_f32_s32(*(v5 + 16)), *v10.i32));
  *(v5 + 3) = vcvt_u32_f32(vmul_f32(*&vdupq_lane_s32(v10, 0), vcvt_f32_u32(*(v5 + 12))));
  *(v5 + 4) = *&vsra_n_u32(v9, vcltz_s32(v9), 0x1EuLL) & 0xFFFFFFFCFFFFFFFCLL;
}

- (id)clusterIndicesOfRois:(id *)a3 withExtendedRadius:(float)a4 roiCnt:(signed __int16)a5 imageRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v10 = a5;
  v13 = 0x277CBE000uLL;
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v68 = v15;
  if (v10 < 1)
  {
    v33 = v14;
  }

  else
  {
    v16 = v15;
    v17 = 0;
    v18 = v10;
    p_var2 = &a3->var2;
    v65 = x;
    do
    {
      v20 = *(p_var2 - 2);
      v21 = *(p_var2 - 1);
      v22 = height;
      v23 = width;
      v24 = *p_var2;
      v25 = p_var2[1];
      p_var2 += 8;
      v26 = objc_alloc_init(boundingBoxForMerge);
      v70.origin.x = (v20 - a4);
      v70.origin.y = (v21 - a4);
      v27 = v24 - v20;
      height = v22;
      v70.size.width = (v27 + (a4 * 2.0));
      v28 = v25 - v21;
      width = v23;
      v70.size.height = (v28 + (a4 * 2.0));
      v73.origin.x = v65;
      v73.origin.y = y;
      v73.size.width = v23;
      v73.size.height = v22;
      v71 = CGRectIntersection(v70, v73);
      [(boundingBoxForMerge *)v26 setExtendBBox:v71.origin.x, v71.origin.y, v71.size.width, v71.size.height];
      [(boundingBoxForMerge *)v26 setIndex2RoiArray:v17];
      [v16 addObject:v26];

      ++v17;
    }

    while (v18 != v17);
    v29 = 0;
    v13 = 0x277CBE000uLL;
    v66 = v18;
    do
    {
      v30 = objc_alloc_init(*(v13 + 2840));
      v31 = [v16 objectAtIndexedSubscript:v29];
      v32 = v30;
      [v30 addObject:v31];

      v33 = objc_alloc_init(*(v13 + 2840));
      if ([v14 count])
      {
        v34 = 0;
        do
        {
          v35 = [v16 objectAtIndexedSubscript:v29];
          v36 = [v14 objectAtIndexedSubscript:v34];
          v37 = v35;
          v38 = v36;
          if ([v38 count])
          {
            v39 = 0;
            while (1)
            {
              [v37 extendBBox];
              v41 = v40;
              v43 = v42;
              v45 = v44;
              v47 = v46;
              v48 = [v38 objectAtIndexedSubscript:v39];
              [v48 extendBBox];
              v74.origin.x = v49;
              v74.origin.y = v50;
              v74.size.width = v51;
              v74.size.height = v52;
              v72.origin.x = v41;
              v72.origin.y = v43;
              v72.size.width = v45;
              v72.size.height = v47;
              v53 = CGRectIntersectsRect(v72, v74);

              if (v53)
              {
                break;
              }

              if ([v38 count] <= ++v39)
              {
                goto LABEL_11;
              }
            }

            v54 = [v14 objectAtIndexedSubscript:v34];
            [v32 addObjectsFromArray:v54];
          }

          else
          {
LABEL_11:

            v54 = [v14 objectAtIndexedSubscript:v34];
            [v33 addObject:v54];
          }

          ++v34;
          v16 = v68;
        }

        while ([v14 count] > v34);
      }

      [v33 addObject:v32];

      ++v29;
      v14 = v33;
      v13 = 0x277CBE000;
    }

    while (v29 != v66);
  }

  v67 = objc_alloc_init(*(v13 + 2840));
  if ([v33 count])
  {
    v55 = 0;
    do
    {
      v56 = [v33 objectAtIndexedSubscript:v55];
      v57 = objc_alloc_init(*(v13 + 2840));
      v58 = [v56 count];
      if ([v56 count])
      {
        v59 = 0;
        v60 = (v58 << 32) - 0x100000000;
        do
        {
          v61 = [v56 objectAtIndexedSubscript:v60 >> 32];
          v62 = [v61 index2RoiArray];
          v63 = [MEMORY[0x277CCABB0] numberWithInt:v62];
          [v57 addObject:v63];

          ++v59;
          v60 -= 0x100000000;
        }

        while ([v56 count] > v59);
      }

      [v67 addObject:v57];

      ++v55;
      v13 = 0x277CBE000;
    }

    while ([v33 count] > v55);
  }

  return v67;
}

- (int64_t)encodeBMSearch1RefToCommandEncoder:(GGMMetalToolBox *)self target:(SEL)a2 ref:(id)a3 reflect:(id)a4 normalizedTargetCenter:(id)a5 normalizedRefCenter:(BOOL)a6 bestMatchLoc:(id)a7 meta:(id)a8
{
  v12 = v9;
  v13 = v8;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v33 = a6;
  v31 = v12;
  v32 = v13;
  v21 = a7;
  v22 = a8;
  v23 = v22;
  if (!v19)
  {
    [GGMMetalToolBox encodeBMSearch1RefToCommandEncoder:target:ref:reflect:normalizedTargetCenter:normalizedRefCenter:bestMatchLoc:meta:];
LABEL_9:
    v25 = v29;
    goto LABEL_5;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeBMSearch1RefToCommandEncoder:target:ref:reflect:normalizedTargetCenter:normalizedRefCenter:bestMatchLoc:meta:];
    goto LABEL_9;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeBMSearch1RefToCommandEncoder:target:ref:reflect:normalizedTargetCenter:normalizedRefCenter:bestMatchLoc:meta:];
    goto LABEL_9;
  }

  v24 = *[v22 contents] & 0x1FFFFFFFFFFFFFFFLL;
  [v18 setComputePipelineState:self->_bmSearch1RefFixedSampleCntYUV];
  [v18 setTexture:v19 atIndex:0];
  [v18 setTexture:v20 atIndex:1];
  [v18 setBytes:&v33 length:1 atIndex:1];
  [v18 setBytes:&v32 length:8 atIndex:2];
  [v18 setBytes:&v31 length:8 atIndex:3];
  [v18 setBuffer:v23 offset:0 atIndex:0];
  v29 = v24;
  v30 = vdupq_n_s64(1uLL);
  v27 = 8;
  v28 = xmmword_2487C3BF0;
  [v18 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  v25 = 0;
LABEL_5:

  return v25;
}

- (int64_t)encodeBMSearch4RepairToCommandEncoder:(id)a3 hrTarget:(id)a4 target:(id)a5 ref0:(id)a6 ref1:(id)a7 forwarpHoleMap0:(id)a8 forwarpHoleMap1:(id)a9 probMap:(id)a10 mvf0:(id)a11 mvf1:(id)a12 meta:(id)a13
{
  v18 = a3;
  v19 = a4;
  v42 = a5;
  v45 = a6;
  v20 = a7;
  v46 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v44 = a12;
  v24 = a13;
  v25 = v24;
  if (!v19)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    v37 = v20;
    v38 = v49[0];
    v27 = v44;
    v26 = v42;
    goto LABEL_12;
  }

  v26 = v42;
  if (!v42)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
LABEL_21:
    v37 = v20;
    v38 = v49[0];
LABEL_22:
    v27 = v44;
    goto LABEL_12;
  }

  if (!v45)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    goto LABEL_21;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    goto LABEL_21;
  }

  if (!v46)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    goto LABEL_21;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    goto LABEL_21;
  }

  if (!v22)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    goto LABEL_21;
  }

  if (!v23)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    goto LABEL_21;
  }

  v27 = v44;
  if (!v44)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    v37 = v20;
    v38 = v49[0];
    goto LABEL_12;
  }

  v40 = v22;
  v28 = v20;
  if (!v24)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    v38 = v49[0];
    v37 = v28;
    v22 = v40;
    goto LABEL_22;
  }

  v29 = [v24 contents];
  v43 = v23;
  v53[0] = [v19 width];
  v52 = [v19 height];
  v51 = [v42 width];
  v30 = [v42 height];
  v31.f32[0] = v51;
  v31.f32[1] = v30;
  v32.f32[0] = v53[0];
  v32.f32[1] = v52;
  v33 = vdiv_f32(v31, v32);
  v32.i32[0] = *(v29 + 24);
  LODWORD(v34) = *(v29 + 28);
  v35 = (((v32 + 128.0 + 4.0) * v33.f32[0] + 8.0 + -1.0) * 0.125);
  v50 = v30;
  v36 = (((v34 + 128.0 + 4.0) * v33.f32[1] + 8.0 + -1.0) * 0.125);
  [v18 setComputePipelineState:self->_bmSearch4RepairYUV];
  [v18 setTexture:v42 atIndex:0];
  [v18 setTexture:v45 atIndex:1];
  v37 = v28;
  [v18 setTexture:v28 atIndex:2];
  [v18 setTexture:v46 atIndex:3];
  [v18 setTexture:v21 atIndex:4];
  v22 = v40;
  [v18 setTexture:v40 atIndex:5];
  [v18 setTexture:v43 atIndex:6];
  v27 = v44;
  [v18 setTexture:v44 atIndex:7];
  [v18 setBytes:&v51 length:4 atIndex:1];
  [v18 setBytes:&v50 length:4 atIndex:2];
  [v18 setBytes:v53 length:4 atIndex:3];
  [v18 setBytes:&v52 length:4 atIndex:4];
  [v18 setBuffer:v25 offset:0 atIndex:0];
  v49[0] = v35;
  v49[1] = v36;
  v23 = v43;
  v49[2] = 1;
  v47 = vdupq_n_s64(8uLL);
  v48 = 1;
  [v18 dispatchThreadgroups:v49 threadsPerThreadgroup:&v47];
  v38 = 0;
LABEL_12:

  return v38;
}

- (int64_t)encodeBMTransfer4RepairYUVToCommandEncoder:(id)a3 ref0:(id)a4 ref1:(id)a5 forwarpHoleMap0:(id)a6 forwarpHoleMap1:(id)a7 probMap:(id)a8 warpedRef0:(id)a9 warpedRef1:(id)a10 bmMvf0:(id)a11 bmMvf1:(id)a12 backwarpFlow0:(id)a13 backwarpFlow1:(id)a14 meta:(id)a15
{
  v20 = a3;
  v21 = a4;
  v46 = a5;
  v43 = a6;
  v45 = a7;
  v44 = a8;
  v22 = a9;
  v42 = a10;
  v41 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v26 = a15;
  v27 = v26;
  v40 = v21;
  if (!v21)
  {
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    v39 = v49[0];
    v28 = v44;
    v29 = v45;
LABEL_22:
    v36 = v41;
    v30 = v42;
    goto LABEL_14;
  }

  v28 = v44;
  if (!v46)
  {
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    v39 = v49[0];
    v29 = v45;
    goto LABEL_22;
  }

  v29 = v45;
  if (!v43)
  {
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
LABEL_21:
    v39 = v49[0];
    goto LABEL_22;
  }

  if (!v45)
  {
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    goto LABEL_21;
  }

  if (!v44)
  {
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    goto LABEL_21;
  }

  if (!v22)
  {
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    goto LABEL_21;
  }

  v30 = v42;
  if (!v42)
  {
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    v39 = v49[0];
LABEL_30:
    v36 = v41;
    goto LABEL_14;
  }

  if (!v41)
  {
    v36 = 0;
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
LABEL_28:
    v39 = v49[0];
    goto LABEL_14;
  }

  if (!v23)
  {
    v36 = v41;
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    goto LABEL_28;
  }

  if (!v24)
  {
    v36 = v41;
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    goto LABEL_28;
  }

  if (!v25)
  {
    v36 = v41;
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    goto LABEL_28;
  }

  if (!v26)
  {
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    v39 = v49[0];
    v30 = v42;
    goto LABEL_30;
  }

  v31 = [v26 contents];
  LODWORD(v32) = *(v31 + 24);
  LODWORD(v33) = *(v31 + 28);
  v34 = ((v32 + 128.0 + 4.0 + 8.0 + -1.0) * 0.125);
  v35 = ((v33 + 128.0 + 4.0 + 8.0 + -1.0) * 0.125);
  [v20 setComputePipelineState:self->_bmTransfer4RepairYUV];
  [v20 setTexture:v40 atIndex:0];
  [v20 setTexture:v46 atIndex:1];
  [v20 setTexture:v43 atIndex:2];
  [v20 setTexture:v45 atIndex:3];
  [v20 setTexture:v44 atIndex:4];
  v36 = v41;
  [v20 setTexture:v41 atIndex:5];
  [v20 setTexture:v23 atIndex:6];
  [v20 setTexture:v24 atIndex:7];
  [v20 setTexture:v25 atIndex:8];
  [v20 setTexture:v22 atIndex:9];
  v30 = v42;
  [v20 setTexture:v42 atIndex:10];
  [v20 setBuffer:v27 offset:0 atIndex:0];
  [v20 setImageblockWidth:8 height:8];
  v49[0] = v34;
  v49[1] = v35;
  v28 = v44;
  v29 = v45;
  v49[2] = 1;
  v47 = vdupq_n_s64(8uLL);
  v48 = 1;
  [v20 dispatchThreadgroups:v49 threadsPerThreadgroup:&v47];
  v39 = 0;
LABEL_14:

  return v39;
}

- (int64_t)encodeGetGhostProbMapToCommandEncoder:(id)a3 target:(id)a4 reflLsMap:(id)a5 motionMap:(id)a6 saliencyMap:(id)a7 isInitFrame:(BOOL)a8 probMap:(id)a9 meta:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v38 = a8;
  v21 = a9;
  v22 = a10;
  v23 = v22;
  if (!v17)
  {
    [GGMMetalToolBox encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:];
LABEL_15:
    v29 = v33[0];
    goto LABEL_8;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:];
    goto LABEL_15;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:];
    goto LABEL_15;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:];
    goto LABEL_15;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:];
    goto LABEL_15;
  }

  if (!v22)
  {
    [GGMMetalToolBox encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:];
    goto LABEL_15;
  }

  v24 = [v22 contents];
  LODWORD(v25) = *(v24 + 24);
  LODWORD(v26) = *(v24 + 28);
  v27 = (((v25 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v28 = (((v26 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v37 = [v17 width];
  v36 = [v17 height];
  v35 = [v19 width];
  v34 = [v19 height];
  [v16 setComputePipelineState:self->_getGhostProbMapYUV];
  [v16 setTexture:v17 atIndex:0];
  [v16 setTexture:v18 atIndex:1];
  [v16 setTexture:v19 atIndex:2];
  [v16 setTexture:v20 atIndex:3];
  [v16 setTexture:v21 atIndex:4];
  [v16 setBuffer:v23 offset:0 atIndex:0];
  [v16 setBytes:&v37 length:4 atIndex:1];
  [v16 setBytes:&v36 length:4 atIndex:2];
  [v16 setBytes:&v35 length:4 atIndex:3];
  [v16 setBytes:&v34 length:4 atIndex:4];
  [v16 setBytes:&v38 length:1 atIndex:5];
  v33[0] = v27;
  v33[1] = v28;
  v33[2] = 1;
  v31 = vdupq_n_s64(4uLL);
  v32 = 1;
  [v16 dispatchThreadgroups:v33 threadsPerThreadgroup:&v31];
  v29 = 0;
LABEL_8:

  return v29;
}

- (int64_t)encodeBMTransferYUVToCommandEncoder:(id)a3 ref:(id)a4 reflect:(BOOL)a5 normalizedCenter:(id)a6 warpedRef:(id)a7 bestMatchLoc:(id)a8 meta:(int)a9 sf:
{
  v13 = v9;
  v17 = a9;
  v18 = a3;
  v19 = a4;
  v35 = a5;
  v34 = v13;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = v22;
  if (!v19)
  {
    [GGMMetalToolBox encodeBMTransferYUVToCommandEncoder:ref:reflect:normalizedCenter:warpedRef:bestMatchLoc:meta:sf:];
LABEL_11:
    v29 = v33[0];
    goto LABEL_6;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeBMTransferYUVToCommandEncoder:ref:reflect:normalizedCenter:warpedRef:bestMatchLoc:meta:sf:];
    goto LABEL_11;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeBMTransferYUVToCommandEncoder:ref:reflect:normalizedCenter:warpedRef:bestMatchLoc:meta:sf:];
    goto LABEL_11;
  }

  if (!v22)
  {
    [GGMMetalToolBox encodeBMTransferYUVToCommandEncoder:ref:reflect:normalizedCenter:warpedRef:bestMatchLoc:meta:sf:];
    goto LABEL_11;
  }

  v24 = [v22 contents];
  LODWORD(v25) = *(v24 + 24);
  LODWORD(v26) = *(v24 + 28);
  v27 = (((v25 + 128.0 + 4.0) / v17 + 8.0 + -1.0) * 0.125);
  v28 = (((v26 + 128.0 + 4.0) / v17 + 8.0 + -1.0) * 0.125);
  [v18 setComputePipelineState:self->_bmTransferYUV];
  [v18 setTexture:v19 atIndex:0];
  [v18 setTexture:v21 atIndex:1];
  [v18 setBytes:&v35 length:1 atIndex:1];
  [v18 setBytes:&v34 length:8 atIndex:2];
  [v18 setTexture:v20 atIndex:2];
  [v18 setBuffer:v23 offset:0 atIndex:0];
  [v18 setBytes:&a9 length:4 atIndex:3];
  [v18 setImageblockWidth:8 height:8];
  v33[0] = v27;
  v33[1] = v28;
  v33[2] = 1;
  v31 = vdupq_n_s64(8uLL);
  v32 = 1;
  [v18 dispatchThreadgroups:v33 threadsPerThreadgroup:&v31];
  v29 = 0;
LABEL_6:

  return v29;
}

- (int64_t)encodeBMTransferGrayToCommandEncoder:(id)a3 ref:(id)a4 warpedRef:(id)a5 bestMatchLoc:(id)a6 meta:(id)a7 sf:(int)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = v18;
  v31 = a8;
  if (!v15)
  {
    [GGMMetalToolBox encodeBMTransferGrayToCommandEncoder:ref:warpedRef:bestMatchLoc:meta:sf:];
LABEL_11:
    v26 = v30[0];
    goto LABEL_6;
  }

  if (!v16)
  {
    [GGMMetalToolBox encodeBMTransferGrayToCommandEncoder:ref:warpedRef:bestMatchLoc:meta:sf:];
    goto LABEL_11;
  }

  if (!v17)
  {
    [GGMMetalToolBox encodeBMTransferGrayToCommandEncoder:ref:warpedRef:bestMatchLoc:meta:sf:];
    goto LABEL_11;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeBMTransferGrayToCommandEncoder:ref:warpedRef:bestMatchLoc:meta:sf:];
    goto LABEL_11;
  }

  v20 = [v18 contents];
  LODWORD(v21) = *(v20 + 24);
  LODWORD(v22) = *(v20 + 28);
  v23 = a8;
  v24 = (((v21 + 128.0 + 4.0) / a8 + 16.0 + -1.0) * 0.0625);
  v25 = (((v22 + 128.0 + 4.0) / v23 + 16.0 + -1.0) * 0.0625);
  [v14 setComputePipelineState:self->_bmTransferGray];
  [v14 setTexture:v15 atIndex:0];
  [v14 setTexture:v17 atIndex:1];
  [v14 setTexture:v16 atIndex:2];
  [v14 setBuffer:v19 offset:0 atIndex:0];
  [v14 setBytes:&v31 length:4 atIndex:1];
  v30[0] = v24;
  v30[1] = v25;
  v30[2] = 1;
  v28 = vdupq_n_s64(0x10uLL);
  v29 = 1;
  [v14 dispatchThreadgroups:v30 threadsPerThreadgroup:&v28];
  v26 = 0;
LABEL_6:

  return v26;
}

- (int64_t)resizeImageCmdBuf:(id)a3 inputTexture:(id)a4 withFactorX:(float)a5 withFactorY:(float)a6 outputTexture:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = v14;
  if (!v13)
  {
    [GGMMetalToolBox resizeImageCmdBuf:inputTexture:withFactorX:withFactorY:outputTexture:];
LABEL_9:
    v18 = v21;
    goto LABEL_5;
  }

  if (!v14)
  {
    [GGMMetalToolBox resizeImageCmdBuf:inputTexture:withFactorX:withFactorY:outputTexture:];
    goto LABEL_9;
  }

  v16 = [objc_alloc(MEMORY[0x277CD74E0]) initWithDevice:self->super._device];
  if (!v16)
  {
    [GGMMetalToolBox resizeImageCmdBuf:? inputTexture:? withFactorX:? withFactorY:? outputTexture:?];
    goto LABEL_9;
  }

  v17 = v16;
  v20[0] = a5;
  v20[1] = a6;
  v20[2] = 0.0;
  v20[3] = 0.0;
  [v16 setScaleTransform:v20];
  [v17 encodeToCommandBuffer:v12 sourceTexture:v13 destinationTexture:v15];

  v18 = 0;
LABEL_5:

  return v18;
}

- (int64_t)encodeReflectYUVImg2:(GGMMetalToolBox *)self fullResInput:(SEL)a2 meta:(id)a3 input0:(id)a4 output0:(id)a5 center0:(id)a6 input1:(id)a7 output1:(id)a8 center1:(id)a9
{
  v11 = v10;
  v13 = v9;
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v43 = v13;
  v24 = a8;
  v25 = a9;
  v26 = v25;
  v42 = v11;
  if (!v20)
  {
    [GGMMetalToolBox encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:];
LABEL_15:
    v33 = v40[0];
    goto LABEL_8;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:];
    goto LABEL_15;
  }

  if (!v22)
  {
    [GGMMetalToolBox encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:];
    goto LABEL_15;
  }

  if (!v23)
  {
    [GGMMetalToolBox encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:];
    goto LABEL_15;
  }

  if (!v24)
  {
    [GGMMetalToolBox encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:];
    goto LABEL_15;
  }

  if (!v25)
  {
    [GGMMetalToolBox encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:];
    goto LABEL_15;
  }

  v36 = [v23 width];
  v27 = [v23 height];
  v28.f32[0] = v36;
  v28.f32[1] = v27;
  v37 = v28;
  v35 = [v20 width];
  v29 = [v20 height];
  v30.f32[0] = v35;
  v30.f32[1] = v29;
  v41 = vdiv_f32(v37, v30);
  v31 = ([v23 width] + 15) >> 4;
  v32 = ([v23 height] + 15) >> 4;
  [v19 setComputePipelineState:self->_reflectYUVImg2];
  [v19 setBuffer:v21 offset:0 atIndex:3];
  [v19 setTexture:v22 atIndex:0];
  [v19 setTexture:v23 atIndex:1];
  [v19 setBytes:&v43 length:8 atIndex:0];
  [v19 setTexture:v24 atIndex:2];
  [v19 setTexture:v26 atIndex:3];
  [v19 setBytes:&v42 length:8 atIndex:1];
  [v19 setBytes:&v41 length:8 atIndex:2];
  [v19 setImageblockWidth:16 height:16];
  v40[0] = v31;
  v40[1] = v32;
  v40[2] = 1;
  v38 = vdupq_n_s64(0x10uLL);
  v39 = 1;
  [v19 dispatchThreadgroups:v40 threadsPerThreadgroup:&v38];
  v33 = 0;
LABEL_8:

  return v33;
}

- (int64_t)encodeDilateGrayImg:(id)a3 input:(id)a4 output:(id)a5 hardDilationOutput:(id)a6 hardDilationRadius:(float)a7 softDilationRadius:(float)a8 meta:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v34 = a8;
  v35 = a7;
  v20 = a9;
  v21 = v20;
  if (!v17)
  {
    [GGMMetalToolBox encodeDilateGrayImg:input:output:hardDilationOutput:hardDilationRadius:softDilationRadius:meta:];
LABEL_11:
    v27 = v31[0];
    goto LABEL_6;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeDilateGrayImg:input:output:hardDilationOutput:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeDilateGrayImg:input:output:hardDilationOutput:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeDilateGrayImg:input:output:hardDilationOutput:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  v22 = [v20 contents];
  LODWORD(v23) = *(v22 + 24);
  LODWORD(v24) = *(v22 + 28);
  v25 = (((v23 + 128.0 + 4.0) * 0.5 + 32.0 + -1.0) * 0.03125);
  v26 = (((v24 + 128.0 + 4.0) * 0.5 + 32.0 + -1.0) * 0.03125);
  v33 = [v18 width];
  v32 = [v18 height];
  [v16 setComputePipelineState:self->_dilateGrayImg];
  [v16 setBuffer:v21 offset:0 atIndex:0];
  [v16 setTexture:v17 atIndex:0];
  [v16 setTexture:v18 atIndex:1];
  [v16 setTexture:v19 atIndex:2];
  [v16 setBytes:&v35 length:4 atIndex:1];
  [v16 setBytes:&v34 length:4 atIndex:2];
  [v16 setBytes:&v33 length:4 atIndex:3];
  [v16 setBytes:&v32 length:4 atIndex:4];
  v31[0] = v25;
  v31[1] = v26;
  v31[2] = 1;
  v29 = vdupq_n_s64(0x20uLL);
  v30 = 1;
  [v16 dispatchThreadgroups:v31 threadsPerThreadgroup:&v29];
  v27 = 0;
LABEL_6:

  return v27;
}

- (int64_t)encodeDilateProbMap:(id)a3 input:(id)a4 output:(id)a5 hardDilationRadius:(float)a6 softDilationRadius:(float)a7 meta:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v31 = a7;
  v32 = a6;
  v17 = a8;
  v18 = v17;
  if (!v15)
  {
    [GGMMetalToolBox encodeDilateProbMap:input:output:hardDilationRadius:softDilationRadius:meta:];
LABEL_9:
    v24 = v28[0];
    goto LABEL_5;
  }

  if (!v16)
  {
    [GGMMetalToolBox encodeDilateProbMap:input:output:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_9;
  }

  if (!v17)
  {
    [GGMMetalToolBox encodeDilateProbMap:input:output:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_9;
  }

  v19 = [v17 contents];
  LODWORD(v20) = *(v19 + 24);
  LODWORD(v21) = *(v19 + 28);
  v22 = (((v20 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v23 = (((v21 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v30 = [v15 width];
  v29 = [v15 height];
  [v14 setComputePipelineState:self->_dilateProbMap];
  [v14 setBuffer:v18 offset:0 atIndex:0];
  [v14 setTexture:v15 atIndex:0];
  [v14 setTexture:v16 atIndex:1];
  [v14 setBytes:&v32 length:4 atIndex:1];
  [v14 setBytes:&v31 length:4 atIndex:2];
  [v14 setBytes:&v30 length:4 atIndex:3];
  [v14 setBytes:&v29 length:4 atIndex:4];
  v28[0] = v22;
  v28[1] = v23;
  v28[2] = 1;
  v26 = vdupq_n_s64(4uLL);
  v27 = 1;
  [v14 dispatchThreadgroups:v28 threadsPerThreadgroup:&v26];
  v24 = 0;
LABEL_5:

  return v24;
}

- (int64_t)encodeGetMotionMapYUVToCommandEncoder:(id)a3 ref:(id)a4 target:(id)a5 motionMap:(id)a6 meta:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (!v13)
  {
    [GGMMetalToolBox encodeGetMotionMapYUVToCommandEncoder:ref:target:motionMap:meta:];
LABEL_11:
    v23 = v27[0];
    goto LABEL_6;
  }

  if (!v14)
  {
    [GGMMetalToolBox encodeGetMotionMapYUVToCommandEncoder:ref:target:motionMap:meta:];
    goto LABEL_11;
  }

  if (!v15)
  {
    [GGMMetalToolBox encodeGetMotionMapYUVToCommandEncoder:ref:target:motionMap:meta:];
    goto LABEL_11;
  }

  if (!v16)
  {
    [GGMMetalToolBox encodeGetMotionMapYUVToCommandEncoder:ref:target:motionMap:meta:];
    goto LABEL_11;
  }

  v18 = [v16 contents];
  LODWORD(v19) = *(v18 + 24);
  LODWORD(v20) = *(v18 + 28);
  v21 = (((v19 + 128.0 + 4.0) * 0.5 + 32.0 + -1.0) * 0.03125);
  v22 = (((v20 + 128.0 + 4.0) * 0.5 + 32.0 + -1.0) * 0.03125);
  v29 = [v15 width];
  v28 = [v15 height];
  [v12 setComputePipelineState:self->_getMotionMapYUV];
  [v12 setTexture:v13 atIndex:1];
  [v12 setTexture:v14 atIndex:2];
  [v12 setTexture:v15 atIndex:3];
  [v12 setBuffer:v17 offset:0 atIndex:0];
  [v12 setBytes:&v29 length:4 atIndex:1];
  [v12 setBytes:&v28 length:4 atIndex:2];
  v27[0] = v21;
  v27[1] = v22;
  v27[2] = 1;
  v25 = vdupq_n_s64(0x20uLL);
  v26 = 1;
  [v12 dispatchThreadgroups:v27 threadsPerThreadgroup:&v25];
  v23 = 0;
LABEL_6:

  return v23;
}

- (int64_t)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:(id)a3 target:(id)a4 hmgrphyRef0:(id)a5 hmgrphyRef1:(id)a6 bmRef0:(id)a7 bmRef1:(id)a8 probMap:(id)a9 errRescaleProbMap:(id)a10 prevProbMap:(id)a11 flow0:(id)a12 flow1:(id)a13 meta:(id)a14
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v44 = a6;
  v40 = a7;
  v43 = a8;
  v22 = a9;
  v42 = a10;
  v41 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v26 = v25;
  v39 = v20;
  if (!v20)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
    v34 = v26;
    v35 = v47[0];
    v28 = v40;
    v27 = v43;
LABEL_20:
    v29 = v21;
LABEL_21:
    v31 = v41;
    v30 = v42;
    goto LABEL_13;
  }

  v27 = v43;
  if (!v21)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
    v34 = v26;
    v35 = v47[0];
    v28 = v40;
    goto LABEL_20;
  }

  v28 = v40;
  if (!v44)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
LABEL_19:
    v34 = v26;
    v35 = v47[0];
    goto LABEL_20;
  }

  if (!v40)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
    goto LABEL_19;
  }

  if (!v43)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
    goto LABEL_19;
  }

  v29 = v21;
  if (!v22)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
    v34 = v26;
    v35 = v47[0];
    goto LABEL_21;
  }

  v30 = v42;
  if (!v42)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
    v34 = v26;
    v35 = v47[0];
    v31 = v41;
    goto LABEL_13;
  }

  v31 = v41;
  if (!v41)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
LABEL_26:
    v34 = v26;
    v35 = v47[0];
    goto LABEL_13;
  }

  if (!v23)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
    goto LABEL_26;
  }

  if (v24)
  {
    if (v25)
    {
      v32 = [v25 contents];
      v38 = ((((*(v32 + 24) >> 1) + 128) + 4.0 + 8.0 + -1.0) * 0.125);
      v33 = ((((*(v32 + 28) >> 1) + 128) + 4.0 + 8.0 + -1.0) * 0.125);
      v49[0] = [v29 width];
      v48 = [v29 height];
      [v19 setComputePipelineState:self->_getTempRepairedBgAlignErrYUV];
      [v19 setTexture:v39 atIndex:0];
      [v19 setTexture:v29 atIndex:1];
      [v19 setTexture:v44 atIndex:2];
      [v19 setTexture:v40 atIndex:3];
      [v19 setTexture:v43 atIndex:4];
      [v19 setTexture:v22 atIndex:5];
      v30 = v42;
      [v19 setTexture:v42 atIndex:6];
      v31 = v41;
      [v19 setTexture:v41 atIndex:7];
      [v19 setTexture:v23 atIndex:8];
      [v19 setTexture:v24 atIndex:9];
      [v19 setBuffer:v26 offset:0 atIndex:0];
      [v19 setBytes:v49 length:4 atIndex:1];
      [v19 setBytes:&v48 length:4 atIndex:2];
      v47[0] = v38;
      v47[1] = v33;
      v27 = v43;
      v47[2] = 1;
      v28 = v40;
      v45 = vdupq_n_s64(8uLL);
      v46 = 1;
      [v19 dispatchThreadgroups:v47 threadsPerThreadgroup:&v45];
      v34 = v26;
      v35 = 0;
    }

    else
    {
      [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
      v34 = 0;
      v35 = v47[0];
      v31 = v41;
      v30 = v42;
    }
  }

  else
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
    v34 = v26;
    v35 = v47[0];
  }

LABEL_13:

  return v35;
}

- (int64_t)encodeCombineMapWithRefMapToEncoder:(id)a3 map:(id)a4 ref:(id)a5 dilatedRef:(id)a6 lsMap:(id)a7 dilatedLsMap:(id)a8 refLsMap:(id)a9 motion:(id)a10 saliency:(id)a11 targetFrameYUV:(id)a12 blobSaliency:(id)a13 spaRef:(id)a14 mvf:(id)a15 output:(id)a16 spaOutput:(id)a17 meta:(id)a18 wRef:(float)a19
{
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = a6;
  v69 = a7;
  v73 = a8;
  v71 = a9;
  v65 = a10;
  v72 = a11;
  v29 = a12;
  v30 = a13;
  v31 = a14;
  v70 = a15;
  v68 = a16;
  v67 = a17;
  v32 = a18;
  v79[0] = a19;
  v66 = v26;
  v63 = v29;
  v64 = v31;
  if (!v26)
  {
    v51 = v32;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    v46 = v51;
    v62 = v76[0];
    v47 = v27;
    v48 = v69;
    v33 = v70;
    v34 = v71;
    v49 = v65;
    v35 = v30;
    v38 = v67;
    v36 = v68;
    goto LABEL_17;
  }

  v61 = v27;
  if (!v27)
  {
    v52 = v32;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
LABEL_21:
    v46 = v52;
    v62 = v76[0];
    v48 = v69;
    v33 = v70;
LABEL_23:
    v34 = v71;
LABEL_27:
    v49 = v65;
LABEL_28:
    v35 = v30;
LABEL_29:
    v36 = v68;
LABEL_36:
    v38 = v67;
LABEL_44:
    v47 = v61;
    goto LABEL_17;
  }

  if (!v28)
  {
    v52 = v32;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    goto LABEL_21;
  }

  v33 = v70;
  if (!v69)
  {
    v53 = v32;
    v48 = 0;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    v46 = v53;
    v62 = v76[0];
    goto LABEL_23;
  }

  v34 = v71;
  if (!v73)
  {
    v54 = v32;
    v48 = v69;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
LABEL_26:
    v46 = v54;
    v62 = v76[0];
    goto LABEL_27;
  }

  if (!v71)
  {
    v54 = v32;
    v48 = v69;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    goto LABEL_26;
  }

  if (!v65)
  {
    v55 = v32;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    v46 = v55;
    v48 = v69;
    v49 = 0;
    v62 = v76[0];
    goto LABEL_28;
  }

  v35 = v30;
  if (!v72)
  {
    v56 = v32;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    v46 = v56;
    v48 = v69;
    v49 = v65;
    v62 = v76[0];
    goto LABEL_29;
  }

  v36 = v68;
  if (!v29)
  {
    v57 = v32;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
LABEL_35:
    v46 = v57;
    v48 = v69;
    v49 = v65;
    v62 = v76[0];
    goto LABEL_36;
  }

  if (!v35)
  {
    v57 = v32;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    goto LABEL_35;
  }

  if (!v31)
  {
    v57 = v32;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    goto LABEL_35;
  }

  v59 = v35;
  v37 = v32;
  if (!v70)
  {
    v58 = v69;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
LABEL_39:
    v48 = v58;
    v49 = v65;
    v62 = v76[0];
    v38 = v67;
LABEL_41:
    v46 = v37;
LABEL_43:
    v35 = v59;
    goto LABEL_44;
  }

  if (!v68)
  {
    v58 = v69;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    goto LABEL_39;
  }

  v38 = v67;
  if (!v67)
  {
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    v48 = v69;
    v49 = v65;
    v62 = v76[0];
    goto LABEL_41;
  }

  if (!v32)
  {
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    v46 = 0;
    v49 = v65;
    v62 = v76[0];
    v38 = v67;
    v36 = v68;
    v48 = v69;
    goto LABEL_43;
  }

  v39 = v29;
  v40 = v32;
  v41 = [v32 contents];
  LODWORD(v42) = *(v41 + 24);
  LODWORD(v43) = *(v41 + 28);
  v44 = (((v42 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v45 = (((v43 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v78 = [v65 width];
  v77 = [v65 height];
  [v25 setComputePipelineState:self->_combineMapWithRefMap];
  [v25 setBuffer:v40 offset:0 atIndex:0];
  [v25 setTexture:v66 atIndex:0];
  [v25 setTexture:v27 atIndex:1];
  [v25 setTexture:v28 atIndex:2];
  [v25 setTexture:v69 atIndex:3];
  [v25 setTexture:v73 atIndex:9];
  [v25 setTexture:v71 atIndex:4];
  [v25 setTexture:v65 atIndex:5];
  [v25 setTexture:v72 atIndex:6];
  [v25 setTexture:v39 atIndex:7];
  [v25 setTexture:v59 atIndex:10];
  [v25 setTexture:v31 atIndex:11];
  [v25 setTexture:v70 atIndex:13];
  v36 = v68;
  [v25 setTexture:v68 atIndex:8];
  v38 = v67;
  [v25 setTexture:v67 atIndex:12];
  [v25 setBytes:v79 length:4 atIndex:1];
  [v25 setBytes:&v78 length:4 atIndex:2];
  [v25 setBytes:&v77 length:4 atIndex:3];
  v76[0] = v44;
  v76[1] = v45;
  v35 = v59;
  v76[2] = 1;
  v74 = vdupq_n_s64(4uLL);
  v75 = 1;
  v33 = v70;
  v34 = v71;
  [v25 dispatchThreadgroups:v76 threadsPerThreadgroup:&v74];
  v46 = v40;
  v47 = v27;
  v48 = v69;
  v49 = v65;
  v62 = 0;
LABEL_17:

  return v62;
}

- (int64_t)encodeGetSaliencyMapToCommandEncoder:(id)a3 target:(id)a4 saliencyMap:(id)a5 meta:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v11)
  {
    [GGMMetalToolBox encodeGetSaliencyMapToCommandEncoder:target:saliencyMap:meta:];
LABEL_9:
    v20 = v24[0];
    goto LABEL_5;
  }

  if (!v12)
  {
    [GGMMetalToolBox encodeGetSaliencyMapToCommandEncoder:target:saliencyMap:meta:];
    goto LABEL_9;
  }

  if (!v13)
  {
    [GGMMetalToolBox encodeGetSaliencyMapToCommandEncoder:target:saliencyMap:meta:];
    goto LABEL_9;
  }

  v15 = [v13 contents];
  LODWORD(v16) = *(v15 + 24);
  LODWORD(v17) = *(v15 + 28);
  v18 = (((v16 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v19 = (((v17 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v26 = [v12 width];
  v25 = [v12 height];
  [v10 setComputePipelineState:self->_getSaliencyMapYUV];
  [v10 setTexture:v11 atIndex:0];
  [v10 setTexture:v12 atIndex:1];
  [v10 setBuffer:v14 offset:0 atIndex:0];
  [v10 setBytes:&v26 length:4 atIndex:1];
  [v10 setBytes:&v25 length:4 atIndex:2];
  v24[0] = v18;
  v24[1] = v19;
  v24[2] = 1;
  v22 = vdupq_n_s64(4uLL);
  v23 = 1;
  [v10 dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
  v20 = 0;
LABEL_5:

  return v20;
}

- (int64_t)encodeGetBgAvgYUVToCommandEncoder:(id)a3 target:(id)a4 ref0:(id)a5 ref1:(id)a6 probMap:(id)a7 meta:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (!v15)
  {
    [GGMMetalToolBox encodeGetBgAvgYUVToCommandEncoder:target:ref0:ref1:probMap:meta:];
LABEL_13:
    v26 = v30[0];
    goto LABEL_7;
  }

  if (!v16)
  {
    [GGMMetalToolBox encodeGetBgAvgYUVToCommandEncoder:target:ref0:ref1:probMap:meta:];
    goto LABEL_13;
  }

  if (!v17)
  {
    [GGMMetalToolBox encodeGetBgAvgYUVToCommandEncoder:target:ref0:ref1:probMap:meta:];
    goto LABEL_13;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeGetBgAvgYUVToCommandEncoder:target:ref0:ref1:probMap:meta:];
    goto LABEL_13;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeGetBgAvgYUVToCommandEncoder:target:ref0:ref1:probMap:meta:];
    goto LABEL_13;
  }

  v21 = [v19 contents];
  LODWORD(v22) = *(v21 + 24);
  LODWORD(v23) = *(v21 + 28);
  v24 = (((v22 + 128.0 + 4.0) * 0.25 + 8.0 + -1.0) * 0.125);
  v25 = (((v23 + 128.0 + 4.0) * 0.25 + 8.0 + -1.0) * 0.125);
  v32 = [v15 width];
  v31 = [v15 height];
  [v14 setComputePipelineState:self->_getBgAvgYUV];
  [v14 setTexture:v15 atIndex:0];
  [v14 setTexture:v16 atIndex:1];
  [v14 setTexture:v17 atIndex:2];
  [v14 setTexture:v18 atIndex:3];
  [v14 setBuffer:v20 offset:0 atIndex:0];
  [v14 setBytes:&v32 length:4 atIndex:1];
  [v14 setBytes:&v31 length:4 atIndex:2];
  v30[0] = v24;
  v30[1] = v25;
  v30[2] = 1;
  v28 = vdupq_n_s64(8uLL);
  v29 = 1;
  [v14 dispatchThreadgroups:v30 threadsPerThreadgroup:&v28];
  v26 = 0;
LABEL_7:

  return v26;
}

- (int64_t)encodeCollectClusterBgAvgToCommandEncoder:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    [GGMMetalToolBox encodeCollectClusterBgAvgToCommandEncoder:clusterMetaBuf:metaBuf:];
LABEL_7:
    v13 = v17;
    goto LABEL_4;
  }

  if (!v10)
  {
    [GGMMetalToolBox encodeCollectClusterBgAvgToCommandEncoder:clusterMetaBuf:metaBuf:];
    goto LABEL_7;
  }

  v12 = [v9 contents];
  [v8 setComputePipelineState:self->_collectClusterBgAvg];
  [v8 setBuffer:v9 offset:0 atIndex:0];
  [v8 setBuffer:v11 offset:0 atIndex:1];
  v17 = (*v12 + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2487C3C20;
  [v8 dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  v13 = 0;
LABEL_4:

  return v13;
}

- (int64_t)encodeBilinearRescaleYUV:(id)a3 fullResInput:(id)a4 input:(id)a5 meta:(id)a6 blurBeforeSample:(BOOL)a7 output:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v37 = a7;
  v18 = a8;
  v19 = v18;
  if (!v15)
  {
    [GGMMetalToolBox encodeBilinearRescaleYUV:fullResInput:input:meta:blurBeforeSample:output:];
LABEL_11:
    v28 = v35[0];
    goto LABEL_6;
  }

  if (!v16)
  {
    [GGMMetalToolBox encodeBilinearRescaleYUV:fullResInput:input:meta:blurBeforeSample:output:];
    goto LABEL_11;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeBilinearRescaleYUV:fullResInput:input:meta:blurBeforeSample:output:];
    goto LABEL_11;
  }

  if (!v17)
  {
    [GGMMetalToolBox encodeBilinearRescaleYUV:fullResInput:input:meta:blurBeforeSample:output:];
    goto LABEL_11;
  }

  v20 = [v17 contents];
  v31 = [v19 width];
  v21 = [v19 height];
  v22.f32[0] = v31;
  v22.f32[1] = v21;
  v32 = v22;
  v30 = [v15 width];
  v23 = [v15 height];
  v24.f32[0] = v30;
  v24.f32[1] = v23;
  v36 = vdiv_f32(v32, v24);
  v25 = *(v20 + 28);
  v26 = (vcvtpd_u64_f64(((*(v20 + 24) + 128) + 128.0 + 4.0) * v36.f32[0]) + 15) >> 4;
  v27 = (vcvtpd_u64_f64(((v25 + 128) + 128.0 + 4.0) * v36.f32[1]) + 15) >> 4;
  [v14 setComputePipelineState:self->_bilinearRescaleYUV];
  [v14 setTexture:v16 atIndex:0];
  [v14 setBuffer:v17 offset:0 atIndex:0];
  [v14 setTexture:v19 atIndex:1];
  [v14 setBytes:&v37 length:1 atIndex:1];
  [v14 setBytes:&v36 length:8 atIndex:2];
  [v14 setImageblockWidth:16 height:16];
  v35[0] = v26;
  v35[1] = v27;
  v35[2] = 1;
  v33 = vdupq_n_s64(0x10uLL);
  v34 = 1;
  [v14 dispatchThreadgroups:v35 threadsPerThreadgroup:&v33];
  v28 = 0;
LABEL_6:

  return v28;
}

- (int64_t)encodeBilinearRescale2ImgsYUV:(id)a3 fullResInput:(id)a4 input0:(id)a5 output0:(id)a6 input1:(id)a7 output1:(id)a8 meta:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = v21;
  if (!v16)
  {
    [GGMMetalToolBox encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:];
LABEL_15:
    v29 = v37[0];
    goto LABEL_8;
  }

  if (!v17)
  {
    [GGMMetalToolBox encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:];
    goto LABEL_15;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:];
    goto LABEL_15;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:];
    goto LABEL_15;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:];
    goto LABEL_15;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:];
    goto LABEL_15;
  }

  v23 = [v21 contents];
  v32 = [v18 width];
  v24 = [v18 height];
  v25.f32[0] = v32;
  v25.f32[1] = v24;
  v33 = v25;
  v31 = [v16 width];
  v26 = [v16 height];
  v27.f32[0] = v31;
  v27.f32[1] = v26;
  v38 = vdiv_f32(v33, v27);
  v34 = (vcvtpd_u64_f64(((*(v23 + 24) + 128) + 128.0 + 4.0) * v38.f32[0]) + 15) >> 4;
  v28 = (vcvtpd_u64_f64(((*(v23 + 28) + 128) + 128.0 + 4.0) * v38.f32[1]) + 15) >> 4;
  [v15 setComputePipelineState:self->_bilinearRescale2ImgsYUV];
  [v15 setBuffer:v22 offset:0 atIndex:0];
  [v15 setTexture:v17 atIndex:0];
  [v15 setTexture:v18 atIndex:1];
  [v15 setTexture:v19 atIndex:2];
  [v15 setTexture:v20 atIndex:3];
  [v15 setBytes:&v38 length:8 atIndex:2];
  [v15 setImageblockWidth:16 height:16];
  v37[0] = v34;
  v37[1] = v28;
  v37[2] = 1;
  v35 = vdupq_n_s64(0x10uLL);
  v36 = 1;
  [v15 dispatchThreadgroups:v37 threadsPerThreadgroup:&v35];
  v29 = 0;
LABEL_8:

  return v29;
}

- (int64_t)encodeDilateReflLsMap:(id)a3 inputYUV:(id)a4 lsMap:(id)a5 dilatedLsMap:(id)a6 hardDilationRadius:(float)a7 softDilationRadius:(float)a8 meta:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v38 = a8;
  v39 = a7;
  v20 = a9;
  v21 = v20;
  if (!v17)
  {
    [GGMMetalToolBox encodeDilateReflLsMap:inputYUV:lsMap:dilatedLsMap:hardDilationRadius:softDilationRadius:meta:];
LABEL_11:
    v30 = v34[0];
    goto LABEL_6;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeDilateReflLsMap:inputYUV:lsMap:dilatedLsMap:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeDilateReflLsMap:inputYUV:lsMap:dilatedLsMap:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeDilateReflLsMap:inputYUV:lsMap:dilatedLsMap:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  v22 = [v20 contents];
  LODWORD(v23) = v22[3].i32[0];
  LODWORD(v24) = v22[3].i32[1];
  v25 = (((v23 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v26 = (((v24 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v37 = [v18 width];
  v36 = [v18 height];
  v27 = [v17 width];
  v28 = [v17 height];
  v29.f32[0] = v27;
  v29.f32[1] = v28;
  v35 = vdiv_f32(v22[1478], v29);
  [v16 setComputePipelineState:self->_dilateReflLsMap];
  [v16 setBuffer:v21 offset:0 atIndex:0];
  [v16 setTexture:v17 atIndex:0];
  [v16 setTexture:v18 atIndex:1];
  [v16 setTexture:v19 atIndex:2];
  [v16 setBytes:&v39 length:4 atIndex:1];
  [v16 setBytes:&v38 length:4 atIndex:2];
  [v16 setBytes:&v35 length:8 atIndex:3];
  [v16 setBytes:&v37 length:4 atIndex:4];
  [v16 setBytes:&v36 length:4 atIndex:5];
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = 1;
  v32 = vdupq_n_s64(4uLL);
  v33 = 1;
  [v16 dispatchThreadgroups:v34 threadsPerThreadgroup:&v32];
  v30 = 0;
LABEL_6:

  return v30;
}

- (int64_t)encodeGetBlobSaliency:(id)a3 inputYUV:(id)a4 blobSaliencyMap:(id)a5 meta:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v11)
  {
    [GGMMetalToolBox encodeGetBlobSaliency:inputYUV:blobSaliencyMap:meta:];
LABEL_9:
    v20 = v24[0];
    goto LABEL_5;
  }

  if (!v12)
  {
    [GGMMetalToolBox encodeGetBlobSaliency:inputYUV:blobSaliencyMap:meta:];
    goto LABEL_9;
  }

  if (!v13)
  {
    [GGMMetalToolBox encodeGetBlobSaliency:inputYUV:blobSaliencyMap:meta:];
    goto LABEL_9;
  }

  v15 = [v13 contents];
  LODWORD(v16) = *(v15 + 24);
  LODWORD(v17) = *(v15 + 28);
  v18 = (((v16 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v19 = (((v17 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v26 = [v12 width];
  v25 = [v12 height];
  [v10 setComputePipelineState:self->_getBlobSaliency];
  [v10 setBuffer:v14 offset:0 atIndex:0];
  [v10 setTexture:v11 atIndex:0];
  [v10 setBytes:&v26 length:4 atIndex:1];
  [v10 setBytes:&v25 length:4 atIndex:2];
  [v10 setTexture:v12 atIndex:1];
  v24[0] = v18;
  v24[1] = v19;
  v24[2] = 1;
  v22 = vdupq_n_s64(4uLL);
  v23 = 1;
  [v10 dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
  v20 = 0;
LABEL_5:

  return v20;
}

- (int64_t)encodeSpatialRepairYUVToCommandEncoder:(id)a3 input:(id)a4 probMap4Spatial:(id)a5 spatialOutput:(id)a6 metaBuf:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (!v13)
  {
    [GGMMetalToolBox encodeSpatialRepairYUVToCommandEncoder:input:probMap4Spatial:spatialOutput:metaBuf:];
LABEL_11:
    v30 = v36.i64[0];
    goto LABEL_6;
  }

  if (!v14)
  {
    [GGMMetalToolBox encodeSpatialRepairYUVToCommandEncoder:input:probMap4Spatial:spatialOutput:metaBuf:];
    goto LABEL_11;
  }

  if (!v15)
  {
    [GGMMetalToolBox encodeSpatialRepairYUVToCommandEncoder:input:probMap4Spatial:spatialOutput:metaBuf:];
    goto LABEL_11;
  }

  if (!v16)
  {
    [GGMMetalToolBox encodeSpatialRepairYUVToCommandEncoder:input:probMap4Spatial:spatialOutput:metaBuf:];
    goto LABEL_11;
  }

  v39 = [v15 width];
  v38 = [v15 height];
  [v12 setComputePipelineState:self->_spatialRepairYUV];
  [v12 setTexture:v13 atIndex:0];
  [v12 setTexture:v14 atIndex:1];
  [v12 setTexture:v15 atIndex:2];
  [v12 setBuffer:v17 offset:0 atIndex:0];
  [v12 setBytes:&v39 length:4 atIndex:1];
  [v12 setBytes:&v38 length:4 atIndex:2];
  [v12 setImageblockWidth:32 height:32];
  v18 = [v17 contents];
  v19.f32[0] = v39;
  v19.f32[1] = v38;
  v33 = v19;
  v32 = [v13 width];
  v20 = [v13 height];
  v21.f32[0] = v32;
  v21.f32[1] = v20;
  v22 = vdiv_f32(v33, v21);
  v23 = vadd_s32(v18[3], 0x8000000080);
  v24.i64[0] = v23.u32[0];
  v24.i64[1] = v23.u32[1];
  __asm { FMOV            V2.2D, #4.0 }

  v36 = vshrq_n_u64(vaddq_s64(vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v24), vdupq_n_s64(0x4060000000000000uLL)), _Q2), vcvtq_f64_f32(v22)))), vdupq_n_s64(0x1FuLL)), 5uLL);
  v37 = 1;
  v34 = vdupq_n_s64(0x20uLL);
  v35 = 1;
  [v12 dispatchThreadgroups:&v36 threadsPerThreadgroup:&v34];
  v30 = 0;
LABEL_6:

  return v30;
}

- (int64_t)encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:(id)a3 input:(id)a4 frRef0:(id)a5 frRef1:(id)a6 temporalOutput:(id)a7 inputCopy:(id)a8 metaBuf:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = v21;
  if (!v16)
  {
    [GGMMetalToolBox encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:];
LABEL_15:
    v32 = v36.i64[0];
    goto LABEL_8;
  }

  if (!v17)
  {
    [GGMMetalToolBox encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:];
    goto LABEL_15;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:];
    goto LABEL_15;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:];
    goto LABEL_15;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:];
    goto LABEL_15;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:];
    goto LABEL_15;
  }

  v39 = [v16 width];
  v38 = [v16 height];
  [v15 setComputePipelineState:self->_spatialTemporalRepair4DetectionYUV];
  [v15 setTexture:v16 atIndex:0];
  [v15 setTexture:v17 atIndex:1];
  [v15 setTexture:v18 atIndex:2];
  [v15 setTexture:v19 atIndex:5];
  [v15 setTexture:v20 atIndex:6];
  [v15 setBuffer:v22 offset:0 atIndex:0];
  [v15 setBytes:&v39 length:4 atIndex:1];
  [v15 setBytes:&v38 length:4 atIndex:2];
  [v15 setImageblockWidth:32 height:32];
  v23 = *([v22 contents] + 24);
  v24.i64[0] = v23;
  v24.i64[1] = HIDWORD(v23);
  __asm { FMOV            V1.2D, #4.0 }

  v30 = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v24), vdupq_n_s64(0x4060000000000000uLL)), _Q1), vdupq_n_s64(0x4040000000000000uLL));
  __asm { FMOV            V1.2D, #-1.0 }

  v36 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v30, _Q1), vdupq_n_s64(0x3FA0000000000000uLL)));
  v37 = 1;
  v34 = vdupq_n_s64(0x20uLL);
  v35 = 1;
  [v15 dispatchThreadgroups:&v36 threadsPerThreadgroup:&v34];
  v32 = 0;
LABEL_8:

  return v32;
}

- (int64_t)encodeFuse4DetectionYUVToCommandEncoder:(id)a3 inputTexture:(id)a4 probMapTexture:(id)a5 temporalMitTexture:(id)a6 spatialMitTexture:(id)a7 forceToSpatial:(BOOL)a8 outputTexture:(id)a9 metaBuf:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v43 = a8;
  v21 = a9;
  v22 = a10;
  v23 = v22;
  if (!v17)
  {
    [GGMMetalToolBox encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:];
LABEL_15:
    v35 = v39.i64[0];
    goto LABEL_8;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:];
    goto LABEL_15;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:];
    goto LABEL_15;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:];
    goto LABEL_15;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:];
    goto LABEL_15;
  }

  if (!v22)
  {
    [GGMMetalToolBox encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:];
    goto LABEL_15;
  }

  v42 = [v17 width];
  v41 = [v17 height];
  [v16 setComputePipelineState:self->_fuse4DetectionYUV];
  [v16 setBuffer:v23 offset:0 atIndex:0];
  [v16 setBytes:&v42 length:4 atIndex:3];
  [v16 setBytes:&v41 length:4 atIndex:4];
  [v16 setBytes:&v43 length:1 atIndex:5];
  [v16 setTexture:v17 atIndex:0];
  [v16 setTexture:v19 atIndex:1];
  [v16 setTexture:v20 atIndex:2];
  [v16 setTexture:v18 atIndex:3];
  [v16 setTexture:v21 atIndex:5];
  [v16 setImageblockWidth:16 height:16];
  v24 = *([v23 contents] + 24);
  v25.i64[0] = v24;
  v25.i64[1] = HIDWORD(v24);
  __asm { FMOV            V1.2D, #4.0 }

  v31 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v25), vdupq_n_s64(0x4060000000000000uLL)), _Q1);
  __asm { FMOV            V1.2D, #16.0 }

  v33 = vaddq_f64(v31, _Q1);
  __asm { FMOV            V1.2D, #-1.0 }

  v39 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v33, _Q1), vdupq_n_s64(0x3FB0000000000000uLL)));
  v40 = 1;
  v37 = vdupq_n_s64(0x10uLL);
  v38 = 1;
  [v16 dispatchThreadgroups:&v39 threadsPerThreadgroup:&v37];
  v35 = 0;
LABEL_8:

  return v35;
}

- (int64_t)encodeCollectClusterTempRepairErr:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    [GGMMetalToolBox encodeCollectClusterTempRepairErr:clusterMetaBuf:metaBuf:];
LABEL_7:
    v13 = v17;
    goto LABEL_4;
  }

  if (!v10)
  {
    [GGMMetalToolBox encodeCollectClusterTempRepairErr:clusterMetaBuf:metaBuf:];
    goto LABEL_7;
  }

  v12 = [v9 contents];
  [v8 setComputePipelineState:self->_collectClusterTempRepairErr];
  [v8 setBuffer:v9 offset:0 atIndex:0];
  [v8 setBuffer:v11 offset:0 atIndex:1];
  v17 = (*v12 + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2487C3C20;
  [v8 dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  v13 = 0;
LABEL_4:

  return v13;
}

- (int64_t)encodeCollectClusterMv:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    [GGMMetalToolBox encodeCollectClusterMv:clusterMetaBuf:metaBuf:];
LABEL_7:
    v13 = v17;
    goto LABEL_4;
  }

  if (!v10)
  {
    [GGMMetalToolBox encodeCollectClusterMv:clusterMetaBuf:metaBuf:];
    goto LABEL_7;
  }

  v12 = [v9 contents];
  [v8 setComputePipelineState:self->_collectClusterMv];
  [v8 setBuffer:v9 offset:0 atIndex:0];
  [v8 setBuffer:v11 offset:0 atIndex:1];
  v17 = (*v12 + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2487C3C20;
  [v8 dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  v13 = 0;
LABEL_4:

  return v13;
}

- (int64_t)encodeUpscaleProbMap:(id)a3 probMap:(id)a4 refinedProbMap:(id)a5 inputFrame:(id)a6 upscaledProbMap:(id)a7 upscaledRefinedProbMap:(id)a8 meta:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = v21;
  if (!v16)
  {
    [GGMMetalToolBox encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:];
LABEL_15:
    v28 = v32[0];
    goto LABEL_8;
  }

  if (!v17)
  {
    [GGMMetalToolBox encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:];
    goto LABEL_15;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:];
    goto LABEL_15;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:];
    goto LABEL_15;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:];
    goto LABEL_15;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:];
    goto LABEL_15;
  }

  v23 = [v21 contents];
  LODWORD(v24) = *(v23 + 24);
  LODWORD(v25) = *(v23 + 28);
  v26 = ((v24 + 128.0 + 4.0 + 8.0 + -1.0) * 0.125);
  v27 = ((v25 + 128.0 + 4.0 + 8.0 + -1.0) * 0.125);
  v34 = [v19 width];
  v33 = [v19 height];
  [v15 setComputePipelineState:self->_upscaleProbMap];
  [v15 setBuffer:v22 offset:0 atIndex:0];
  [v15 setTexture:v16 atIndex:0];
  [v15 setTexture:v17 atIndex:1];
  [v15 setTexture:v18 atIndex:2];
  [v15 setTexture:v19 atIndex:3];
  [v15 setTexture:v20 atIndex:4];
  [v15 setBytes:&v34 length:4 atIndex:1];
  [v15 setBytes:&v33 length:4 atIndex:2];
  v32[0] = v26;
  v32[1] = v27;
  v32[2] = 1;
  v30 = vdupq_n_s64(8uLL);
  v31 = 1;
  [v15 dispatchThreadgroups:v32 threadsPerThreadgroup:&v30];
  v28 = 0;
LABEL_8:

  return v28;
}

- (int64_t)encodeUpscaleThenReflectLsMap:(id)a3 input:(id)a4 normalizedCenter:(id)a5 output:
{
  v7 = v5;
  v10 = a3;
  v11 = a4;
  v23 = v7;
  v12 = a5;
  v13 = v12;
  if (!v11)
  {
    [GGMMetalToolBox encodeUpscaleThenReflectLsMap:input:normalizedCenter:output:];
LABEL_7:
    v16 = v20[0];
    goto LABEL_4;
  }

  if (!v12)
  {
    [GGMMetalToolBox encodeUpscaleThenReflectLsMap:input:normalizedCenter:output:];
    goto LABEL_7;
  }

  v14 = ([v12 width] + 15) >> 4;
  v15 = ([v13 height] + 15) >> 4;
  v22 = [v13 width];
  v21 = [v13 height];
  [v10 setComputePipelineState:self->_upscaleThenReflectLsMap];
  [v10 setTexture:v11 atIndex:0];
  [v10 setBytes:&v23 length:8 atIndex:0];
  [v10 setBytes:&v22 length:4 atIndex:1];
  [v10 setBytes:&v21 length:4 atIndex:2];
  [v10 setTexture:v13 atIndex:1];
  v20[0] = v14;
  v20[1] = v15;
  v20[2] = 1;
  v18 = vdupq_n_s64(0x10uLL);
  v19 = 1;
  [v10 dispatchThreadgroups:v20 threadsPerThreadgroup:&v18];
  v16 = 0;
LABEL_4:

  return v16;
}

- (int64_t)encodeGetOverlapWithRefs:(id)a3 input:(id)a4 probMap:(id)a5 metaBuf:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v11)
  {
    [GGMMetalToolBox encodeGetOverlapWithRefs:input:probMap:metaBuf:];
LABEL_9:
    v28 = v32.i64[0];
    goto LABEL_5;
  }

  if (!v12)
  {
    [GGMMetalToolBox encodeGetOverlapWithRefs:input:probMap:metaBuf:];
    goto LABEL_9;
  }

  if (!v13)
  {
    [GGMMetalToolBox encodeGetOverlapWithRefs:input:probMap:metaBuf:];
    goto LABEL_9;
  }

  v37 = [v11 width];
  v36 = [v11 height];
  v35 = [v12 width];
  v34 = [v12 height];
  [v10 setComputePipelineState:self->_getOverlapWithRefs];
  [v10 setTexture:v11 atIndex:0];
  [v10 setTexture:v12 atIndex:1];
  [v10 setBuffer:v14 offset:0 atIndex:0];
  [v10 setBytes:&v37 length:4 atIndex:3];
  [v10 setBytes:&v36 length:4 atIndex:4];
  [v10 setBytes:&v35 length:4 atIndex:5];
  [v10 setBytes:&v34 length:4 atIndex:6];
  v15 = *([v14 contents] + 24);
  v16.i64[0] = v15;
  v16.i64[1] = HIDWORD(v15);
  __asm { FMOV            V1.2D, #4.0 }

  v22 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v16), vdupq_n_s64(0x4060000000000000uLL)), _Q1);
  __asm { FMOV            V1.2D, #0.25 }

  v24 = vmulq_f64(v22, _Q1);
  __asm { FMOV            V1.2D, #16.0 }

  v26 = vaddq_f64(v24, _Q1);
  __asm { FMOV            V1.2D, #-1.0 }

  v32 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v26, _Q1), vdupq_n_s64(0x3FB0000000000000uLL)));
  v33 = 1;
  v30 = vdupq_n_s64(0x10uLL);
  v31 = 1;
  [v10 dispatchThreadgroups:&v32 threadsPerThreadgroup:&v30];
  v28 = 0;
LABEL_5:

  return v28;
}

- (int64_t)encodeCollectClusterOverlapWithRefs:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    [GGMMetalToolBox encodeCollectClusterOverlapWithRefs:clusterMetaBuf:metaBuf:];
LABEL_7:
    v13 = v17;
    goto LABEL_4;
  }

  if (!v10)
  {
    [GGMMetalToolBox encodeCollectClusterOverlapWithRefs:clusterMetaBuf:metaBuf:];
    goto LABEL_7;
  }

  v12 = [v9 contents];
  [v8 setComputePipelineState:self->_collectOverlapWithRefs];
  [v8 setBuffer:v9 offset:0 atIndex:0];
  [v8 setBuffer:v11 offset:0 atIndex:1];
  v17 = (*v12 + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2487C3C20;
  [v8 dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  v13 = 0;
LABEL_4:

  return v13;
}

- (int64_t)encodePreprocessInputs4MotionCueYUVToCommandEncoder:(id)a3 input:(id)a4 ref:(id)a5 output:(id)a6 refOutput:(id)a7 metaBuf:(id)a8 processedFrameCount:(int)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = v20;
  if (!v16)
  {
    [GGMMetalToolBox encodePreprocessInputs4MotionCueYUVToCommandEncoder:input:ref:output:refOutput:metaBuf:processedFrameCount:];
LABEL_14:
    v22 = v26.i64[0];
    goto LABEL_8;
  }

  if (!v17 && a9 >= 1)
  {
    [GGMMetalToolBox encodePreprocessInputs4MotionCueYUVToCommandEncoder:input:ref:output:refOutput:metaBuf:processedFrameCount:];
    goto LABEL_14;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodePreprocessInputs4MotionCueYUVToCommandEncoder:input:ref:output:refOutput:metaBuf:processedFrameCount:];
    goto LABEL_14;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodePreprocessInputs4MotionCueYUVToCommandEncoder:input:ref:output:refOutput:metaBuf:processedFrameCount:];
    goto LABEL_14;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodePreprocessInputs4MotionCueYUVToCommandEncoder:input:ref:output:refOutput:metaBuf:processedFrameCount:];
    goto LABEL_14;
  }

  v29 = [v18 width];
  v28 = [v18 height];
  [v15 setComputePipelineState:self->_preprocessInputs4MotionCueYUV];
  [v15 setTexture:v16 atIndex:0];
  [v15 setTexture:v17 atIndex:1];
  [v15 setTexture:v18 atIndex:3];
  [v15 setTexture:v19 atIndex:4];
  [v15 setBuffer:v21 offset:0 atIndex:0];
  [v15 setBytes:&v29 length:4 atIndex:2];
  [v15 setBytes:&v28 length:4 atIndex:3];
  [v15 setImageblockWidth:32 height:32];
  v26 = vshrq_n_u64(vaddw_s32(vdupq_n_s64(0x1FuLL), vadd_s32(*([v21 contents] + 24), 0x8800000088)), 5uLL);
  v27 = 1;
  v24 = vdupq_n_s64(0x20uLL);
  v25 = 1;
  [v15 dispatchThreadgroups:&v26 threadsPerThreadgroup:&v24];
  v22 = 0;
LABEL_8:

  return v22;
}

- (int64_t)encodeCollectMvToFuture:(id)a3 metaBuf:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v7)
  {
    v9 = [v7 contents];
    [v6 setComputePipelineState:self->_collectMvToFuture];
    [v6 setBuffer:v8 offset:0 atIndex:0];
    v14 = (*v9 + 31) >> 5;
    v15 = vdupq_n_s64(1uLL);
    v12 = 32;
    v13 = xmmword_2487C3C20;
    [v6 dispatchThreadgroups:&v14 threadsPerThreadgroup:&v12];
    v10 = 0;
  }

  else
  {
    [GGMMetalToolBox encodeCollectMvToFuture:metaBuf:];
    v10 = v14;
  }

  return v10;
}

- (int64_t)encodeWarpRefMeta:(id)a3 refMetaBuf:(id)a4 metaBuf:(id)a5 outMetaBuf:(id)a6 lsCheckOutmetaBuf:(id)a7 redoTrackingOutmetaBuf:(id)a8 capRefMetaCnt:(BOOL)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = v20;
  v28 = a9;
  if (!v16)
  {
    [GGMMetalToolBox encodeWarpRefMeta:refMetaBuf:metaBuf:outMetaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:capRefMetaCnt:];
LABEL_13:
    v22 = v26.i64[0];
    goto LABEL_7;
  }

  if (!v17)
  {
    [GGMMetalToolBox encodeWarpRefMeta:refMetaBuf:metaBuf:outMetaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:capRefMetaCnt:];
    goto LABEL_13;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeWarpRefMeta:refMetaBuf:metaBuf:outMetaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:capRefMetaCnt:];
    goto LABEL_13;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeWarpRefMeta:refMetaBuf:metaBuf:outMetaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:capRefMetaCnt:];
    goto LABEL_13;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeWarpRefMeta:refMetaBuf:metaBuf:outMetaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:capRefMetaCnt:];
    goto LABEL_13;
  }

  [v15 setComputePipelineState:self->_warpRefMeta];
  [v15 setBuffer:v16 offset:0 atIndex:0];
  [v15 setBuffer:v17 offset:0 atIndex:1];
  [v15 setBuffer:v18 offset:0 atIndex:2];
  [v15 setBuffer:v19 offset:0 atIndex:3];
  [v15 setBuffer:v21 offset:0 atIndex:4];
  [v15 setBytes:&v28 length:1 atIndex:5];
  v26 = vdupq_n_s64(1uLL);
  v27 = 1;
  v24 = xmmword_2487C3C00;
  v25 = 1;
  [v15 dispatchThreadgroups:&v26 threadsPerThreadgroup:&v24];
  v22 = 0;
LABEL_7:

  return v22;
}

- (int64_t)encodeCollectMetaContainers:(id)a3 metaBuf:(id)a4 lsCheckOutmetaBuf:(id)a5 redoTrackingOutmetaBuf:(id)a6 currTrackId:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = v15;
  v23 = a7;
  if (!v13)
  {
    [GGMMetalToolBox encodeCollectMetaContainers:metaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:currTrackId:];
LABEL_9:
    v17 = v21.i64[0];
    goto LABEL_5;
  }

  if (!v14)
  {
    [GGMMetalToolBox encodeCollectMetaContainers:metaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:currTrackId:];
    goto LABEL_9;
  }

  if (!v15)
  {
    [GGMMetalToolBox encodeCollectMetaContainers:metaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:currTrackId:];
    goto LABEL_9;
  }

  [v12 setComputePipelineState:self->_collectMetaContainers];
  [v12 setBuffer:v13 offset:0 atIndex:0];
  [v12 setBuffer:v14 offset:0 atIndex:1];
  [v12 setBuffer:v16 offset:0 atIndex:2];
  [v12 setBytes:&v23 length:4 atIndex:3];
  v21 = vdupq_n_s64(1uLL);
  v22 = 1;
  v19 = xmmword_2487C3C00;
  v20 = 1;
  [v12 dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  v17 = 0;
LABEL_5:

  return v17;
}

- (int64_t)encodeRefineFutureHwLsMapWithTrackingToEncoder:(id)a3 reflHwMap:(id)a4 target:(id)a5 opticalCenter:(id)a6 warpedRefReflHwMap:(id)a7 warpedReflRef:(id)a8 metaBuf:
{
  v12 = v8;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = v21;
  if (!v17)
  {
    [GGMMetalToolBox encodeRefineFutureHwLsMapWithTrackingToEncoder:reflHwMap:target:opticalCenter:warpedRefReflHwMap:warpedReflRef:metaBuf:];
LABEL_13:
    v31 = v35[0];
    goto LABEL_7;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeRefineFutureHwLsMapWithTrackingToEncoder:reflHwMap:target:opticalCenter:warpedRefReflHwMap:warpedReflRef:metaBuf:];
    goto LABEL_13;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeRefineFutureHwLsMapWithTrackingToEncoder:reflHwMap:target:opticalCenter:warpedRefReflHwMap:warpedReflRef:metaBuf:];
    goto LABEL_13;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeRefineFutureHwLsMapWithTrackingToEncoder:reflHwMap:target:opticalCenter:warpedRefReflHwMap:warpedReflRef:metaBuf:];
    goto LABEL_13;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeRefineFutureHwLsMapWithTrackingToEncoder:reflHwMap:target:opticalCenter:warpedRefReflHwMap:warpedReflRef:metaBuf:];
    goto LABEL_13;
  }

  v23 = [v21 contents];
  LODWORD(v24) = *(v23 + 24);
  LODWORD(v25) = *(v23 + 28);
  v26 = (((v24 + 128.0 + 4.0) * 0.5 + 16.0 + -1.0) * 0.0625);
  v27 = (((v25 + 128.0 + 4.0) * 0.5 + 16.0 + -1.0) * 0.0625);
  v38 = [v17 width];
  v37 = [v17 height];
  v28 = [v18 width];
  v29 = [v18 height];
  v30.f32[0] = v28;
  v30.f32[1] = v29;
  v36 = vdiv_f32(v12, v30);
  [v16 setComputePipelineState:self->_refineFutureHwLsMapWithTrackingYUV];
  [v16 setBuffer:v22 offset:0 atIndex:0];
  [v16 setTexture:v17 atIndex:0];
  [v16 setTexture:v18 atIndex:1];
  [v16 setBytes:&v36 length:8 atIndex:1];
  [v16 setBytes:&v38 length:4 atIndex:2];
  [v16 setBytes:&v37 length:4 atIndex:3];
  [v16 setTexture:v19 atIndex:2];
  [v16 setTexture:v20 atIndex:3];
  [v16 setTexture:v17 atIndex:4];
  v35[0] = v26;
  v35[1] = v27;
  v35[2] = 1;
  v33 = vdupq_n_s64(0x10uLL);
  v34 = 1;
  [v16 dispatchThreadgroups:v35 threadsPerThreadgroup:&v33];
  v31 = 0;
LABEL_7:

  return v31;
}

- (int64_t)encodeCopyCurrMetaForProcFuture:(id)a3 metaBuf:(id)a4 outMetaBuf:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    [GGMMetalToolBox encodeCopyCurrMetaForProcFuture:metaBuf:outMetaBuf:];
LABEL_7:
    v13 = v17;
    goto LABEL_4;
  }

  if (!v10)
  {
    [GGMMetalToolBox encodeCopyCurrMetaForProcFuture:metaBuf:outMetaBuf:];
    goto LABEL_7;
  }

  v12 = [v9 contents];
  [v8 setComputePipelineState:self->_copyCurrMetaForProcFuture];
  [v8 setBuffer:v9 offset:0 atIndex:0];
  [v8 setBuffer:v11 offset:0 atIndex:1];
  v17 = (*v12 + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2487C3C20;
  [v8 dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  v13 = 0;
LABEL_4:

  return v13;
}

- (int64_t)encodeCollectClusterMaxProb:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    [GGMMetalToolBox encodeCollectClusterMaxProb:clusterMetaBuf:metaBuf:];
LABEL_7:
    v13 = v17;
    goto LABEL_4;
  }

  if (!v10)
  {
    [GGMMetalToolBox encodeCollectClusterMaxProb:clusterMetaBuf:metaBuf:];
    goto LABEL_7;
  }

  v12 = [v9 contents];
  [v8 setComputePipelineState:self->_collectClusterMaxProb];
  [v8 setBuffer:v9 offset:0 atIndex:0];
  [v8 setBuffer:v11 offset:0 atIndex:1];
  v17 = (*v12 + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2487C3C20;
  [v8 dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  v13 = 0;
LABEL_4:

  return v13;
}

- (int64_t)encodeSyncWeightsOriginal:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    [GGMMetalToolBox encodeSyncWeightsOriginal:clusterMetaBuf:metaBuf:];
LABEL_7:
    v12 = v16.i64[0];
    goto LABEL_4;
  }

  if (!v10)
  {
    [GGMMetalToolBox encodeSyncWeightsOriginal:clusterMetaBuf:metaBuf:];
    goto LABEL_7;
  }

  [v8 setComputePipelineState:self->_syncWeightsOriginal];
  [v8 setBuffer:v9 offset:0 atIndex:0];
  [v8 setBuffer:v11 offset:0 atIndex:1];
  v16 = vdupq_n_s64(1uLL);
  v17 = 1;
  v14 = xmmword_2487C3C00;
  v15 = 1;
  [v8 dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
  v12 = 0;
LABEL_4:

  return v12;
}

- (int64_t)encodeGetRoiMaxAndAvgLumaYUV:(id)a3 target:(id)a4 lsMap:(id)a5 meta:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v11)
  {
    [GGMMetalToolBox encodeGetRoiMaxAndAvgLumaYUV:target:lsMap:meta:];
LABEL_9:
    v24 = v29.i64[0];
    goto LABEL_5;
  }

  if (!v12)
  {
    [GGMMetalToolBox encodeGetRoiMaxAndAvgLumaYUV:target:lsMap:meta:];
    goto LABEL_9;
  }

  if (!v13)
  {
    [GGMMetalToolBox encodeGetRoiMaxAndAvgLumaYUV:target:lsMap:meta:];
    goto LABEL_9;
  }

  v15 = *([v13 contents] + 24);
  v16.i64[0] = v15;
  v16.i64[1] = HIDWORD(v15);
  __asm { FMOV            V1.2D, #4.0 }

  v22 = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v16), vdupq_n_s64(0x4060000000000000uLL)), _Q1), vdupq_n_s64(0x4040000000000000uLL));
  __asm { FMOV            V1.2D, #-1.0 }

  v26 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v22, _Q1), vdupq_n_s64(0x3FA0000000000000uLL)));
  [v10 setComputePipelineState:self->_getRoiMaxAndAvgLumaYUV];
  [v10 setBuffer:v14 offset:0 atIndex:0];
  [v10 setTexture:v11 atIndex:0];
  [v10 setTexture:v12 atIndex:1];
  v29 = v26;
  v30 = 1;
  v27 = vdupq_n_s64(0x20uLL);
  v28 = 1;
  [v10 dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  v24 = 0;
LABEL_5:

  return v24;
}

- (int64_t)encodeCollectClusterMaxAndAvgLuma:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    [GGMMetalToolBox encodeCollectClusterMaxAndAvgLuma:clusterMetaBuf:metaBuf:];
LABEL_7:
    v13 = v17;
    goto LABEL_4;
  }

  if (!v10)
  {
    [GGMMetalToolBox encodeCollectClusterMaxAndAvgLuma:clusterMetaBuf:metaBuf:];
    goto LABEL_7;
  }

  v12 = [v9 contents];
  [v8 setComputePipelineState:self->_collectClusterMaxAndAvgLuma];
  [v8 setBuffer:v9 offset:0 atIndex:0];
  [v8 setBuffer:v11 offset:0 atIndex:1];
  v17 = (*v12 + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2487C3C20;
  [v8 dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  v13 = 0;
LABEL_4:

  return v13;
}

- (int64_t)encodeGetMvFromLsToCommandEncoder:(GGMMetalToolBox *)self target:(SEL)a2 lsMap:(id)a3 refLsMap:(id)a4 targetCenter:(id)a5 refCenter:(id)a6 meta:(id)a7
{
  v10 = v8;
  v11 = v7;
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v31 = v10;
  v32 = v11;
  v20 = a7;
  v21 = v20;
  if (!v17)
  {
    [GGMMetalToolBox encodeGetMvFromLsToCommandEncoder:target:lsMap:refLsMap:targetCenter:refCenter:meta:];
LABEL_11:
    v23 = v27;
    goto LABEL_6;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeGetMvFromLsToCommandEncoder:target:lsMap:refLsMap:targetCenter:refCenter:meta:];
    goto LABEL_11;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeGetMvFromLsToCommandEncoder:target:lsMap:refLsMap:targetCenter:refCenter:meta:];
    goto LABEL_11;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeGetMvFromLsToCommandEncoder:target:lsMap:refLsMap:targetCenter:refCenter:meta:];
    goto LABEL_11;
  }

  v22 = [v20 contents];
  v30 = [v17 width];
  v29 = [v17 height];
  [v16 setComputePipelineState:self->_getMvFromLs];
  [v16 setTexture:v18 atIndex:0];
  [v16 setTexture:v19 atIndex:1];
  [v16 setBuffer:v21 offset:0 atIndex:0];
  [v16 setBytes:&v30 length:8 atIndex:1];
  [v16 setBytes:&v29 length:8 atIndex:2];
  [v16 setBytes:&v32 length:8 atIndex:3];
  [v16 setBytes:&v31 length:8 atIndex:4];
  v27 = (*v22 + 31) >> 5;
  v28 = vdupq_n_s64(1uLL);
  v25 = 32;
  v26 = xmmword_2487C3C20;
  [v16 dispatchThreadgroups:&v27 threadsPerThreadgroup:&v25];
  v23 = 0;
LABEL_6:

  return v23;
}

- (int64_t)encodeConditionalDilateProbMapYUV:(id)a3 inputYUV:(id)a4 probMap:(id)a5 dilatedProbMap:(id)a6 hardDilationRadius:(float)a7 softDilationRadius:(float)a8 meta:(id)a9
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v34 = a8;
  v35 = a7;
  v20 = a9;
  v21 = v20;
  if (!v17)
  {
    [GGMMetalToolBox encodeConditionalDilateProbMapYUV:inputYUV:probMap:dilatedProbMap:hardDilationRadius:softDilationRadius:meta:];
LABEL_11:
    v27 = v31[0];
    goto LABEL_6;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeConditionalDilateProbMapYUV:inputYUV:probMap:dilatedProbMap:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeConditionalDilateProbMapYUV:inputYUV:probMap:dilatedProbMap:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeConditionalDilateProbMapYUV:inputYUV:probMap:dilatedProbMap:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  v22 = [v20 contents];
  LODWORD(v23) = *(v22 + 24);
  LODWORD(v24) = *(v22 + 28);
  v25 = (((v23 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v26 = (((v24 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v33 = [v19 width];
  v32 = [v19 height];
  [v16 setComputePipelineState:self->_conditionalDilateProbMapYUV];
  [v16 setBuffer:v21 offset:0 atIndex:0];
  [v16 setTexture:v17 atIndex:0];
  [v16 setTexture:v18 atIndex:1];
  [v16 setTexture:v19 atIndex:2];
  [v16 setBytes:&v35 length:4 atIndex:1];
  [v16 setBytes:&v34 length:4 atIndex:2];
  [v16 setBytes:&v33 length:4 atIndex:3];
  [v16 setBytes:&v32 length:4 atIndex:4];
  v31[0] = v25;
  v31[1] = v26;
  v31[2] = 1;
  v29 = vdupq_n_s64(4uLL);
  v30 = 1;
  [v16 dispatchThreadgroups:v31 threadsPerThreadgroup:&v29];
  v27 = 0;
LABEL_6:

  return v27;
}

- (int64_t)encodeCopyMapToMap4RoiGenToCommandEncoder:(id)a3 input:(id)a4 output:(id)a5 metaBuf:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v11)
  {
    [GGMMetalToolBox encodeCopyMapToMap4RoiGenToCommandEncoder:input:output:metaBuf:];
LABEL_9:
    v26 = v30.i64[0];
    goto LABEL_5;
  }

  if (!v12)
  {
    [GGMMetalToolBox encodeCopyMapToMap4RoiGenToCommandEncoder:input:output:metaBuf:];
    goto LABEL_9;
  }

  if (!v13)
  {
    [GGMMetalToolBox encodeCopyMapToMap4RoiGenToCommandEncoder:input:output:metaBuf:];
    goto LABEL_9;
  }

  [v10 setComputePipelineState:self->_copyMapToMap4RoiGen];
  [v10 setBuffer:v14 offset:0 atIndex:0];
  [v10 setTexture:v11 atIndex:0];
  [v10 setTexture:v12 atIndex:1];
  [v10 setImageblockWidth:32 height:32];
  v15 = *([v14 contents] + 24);
  v16.i64[0] = v15;
  v16.i64[1] = HIDWORD(v15);
  __asm { FMOV            V1.2D, #4.0 }

  v22 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v16), vdupq_n_s64(0x4060000000000000uLL)), _Q1);
  __asm { FMOV            V1.2D, #0.5 }

  v24 = vaddq_f64(vmulq_f64(v22, _Q1), vdupq_n_s64(0x4040000000000000uLL));
  __asm { FMOV            V1.2D, #-1.0 }

  v30 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v24, _Q1), vdupq_n_s64(0x3FA0000000000000uLL)));
  v31 = 1;
  v28 = vdupq_n_s64(0x20uLL);
  v29 = 1;
  [v10 dispatchThreadgroups:&v30 threadsPerThreadgroup:&v28];
  v26 = 0;
LABEL_5:

  return v26;
}

- (int64_t)encodeCopyFullFrameMapToMap4RoiGenToCommandEncoder:(id)a3 input:(id)a4 output:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    [GGMMetalToolBox encodeCopyFullFrameMapToMap4RoiGenToCommandEncoder:input:output:];
LABEL_7:
    v12 = v16[0];
    goto LABEL_4;
  }

  if (!v10)
  {
    [GGMMetalToolBox encodeCopyFullFrameMapToMap4RoiGenToCommandEncoder:input:output:];
    goto LABEL_7;
  }

  [v8 setComputePipelineState:self->_copyFullFrameMapToMap4RoiGen];
  [v8 setTexture:v9 atIndex:0];
  [v8 setTexture:v11 atIndex:1];
  [v8 setImageblockWidth:32 height:32];
  v16[0] = ([v11 width] + 31) >> 5;
  v16[1] = ([v11 height] + 31) >> 5;
  v16[2] = 1;
  v14 = vdupq_n_s64(0x20uLL);
  v15 = 1;
  [v8 dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
  v12 = 0;
LABEL_4:

  return v12;
}

- (int64_t)encodeWarpRefMetaLite:(id)a3 refMetaBuf:(id)a4 outMetaBuf:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    [GGMMetalToolBox encodeWarpRefMetaLite:refMetaBuf:outMetaBuf:];
LABEL_7:
    v12 = v16.i64[0];
    goto LABEL_4;
  }

  if (!v10)
  {
    [GGMMetalToolBox encodeWarpRefMetaLite:refMetaBuf:outMetaBuf:];
    goto LABEL_7;
  }

  [v8 setComputePipelineState:self->_warpRefMetaLite];
  [v8 setBuffer:v9 offset:0 atIndex:0];
  [v8 setBuffer:v11 offset:0 atIndex:1];
  v16 = vdupq_n_s64(1uLL);
  v17 = 1;
  v14 = xmmword_2487C3C00;
  v15 = 1;
  [v8 dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
  v12 = 0;
LABEL_4:

  return v12;
}

- (int64_t)encodeBlendSpatialMitigatedYUVToCommandEncoder:(id)a3 inputTexture:(id)a4 probMapTexture:(id)a5 probMap4TradSpatialTexture:(id)a6 tradSpatialMitTexture:(id)a7 dlSpatialMitTexture:(id)a8 outputTexture:(id)a9 metaBuf:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = v23;
  if (!v17)
  {
    [GGMMetalToolBox encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:];
LABEL_17:
    v37 = v43.i64[0];
    goto LABEL_9;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:];
    goto LABEL_17;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:];
    goto LABEL_17;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:];
    goto LABEL_17;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:];
    goto LABEL_17;
  }

  if (!v22)
  {
    [GGMMetalToolBox encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:];
    goto LABEL_17;
  }

  if (!v23)
  {
    [GGMMetalToolBox encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:];
    goto LABEL_17;
  }

  v46 = [v22 width];
  v45 = [v22 height];
  [v16 setComputePipelineState:self->_blendSpatialMitigatedYUV];
  [v16 setBuffer:v24 offset:0 atIndex:0];
  [v16 setBytes:&v46 length:4 atIndex:3];
  [v16 setBytes:&v45 length:4 atIndex:4];
  [v16 setTexture:v17 atIndex:0];
  [v16 setTexture:v20 atIndex:1];
  [v16 setTexture:v21 atIndex:2];
  [v16 setTexture:v18 atIndex:3];
  [v16 setTexture:v19 atIndex:4];
  [v16 setTexture:v22 atIndex:5];
  [v16 setImageblockWidth:16 height:16];
  v25 = [v24 contents];
  v26.f32[0] = v46;
  v26.f32[1] = v45;
  v40 = v26;
  v39 = [v17 width];
  v27 = [v17 height];
  v28.f32[0] = v39;
  v28.f32[1] = v27;
  v29 = vdiv_f32(v40, v28);
  v30 = vadd_s32(v25[3], 0x8000000080);
  v31.i64[0] = v30.u32[0];
  v31.i64[1] = v30.u32[1];
  __asm { FMOV            V2.2D, #4.0 }

  v43 = vshrq_n_u64(vaddq_s64(vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v31), vdupq_n_s64(0x4060000000000000uLL)), _Q2), vcvtq_f64_f32(v29)))), vdupq_n_s64(0xFuLL)), 4uLL);
  v44 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [v16 dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  v37 = 0;
LABEL_9:

  return v37;
}

- (int64_t)encodeBlendRefsYUVToCommandEncoder:(id)a3 hmgrphyRef0:(id)a4 hmgrphyRef1:(id)a5 bmRef0:(id)a6 bmRef1:(id)a7 output0:(id)a8 output1:(id)a9 metaBuf:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = v23;
  if (!v17)
  {
    [GGMMetalToolBox encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:];
LABEL_17:
    v34 = v38.i64[0];
    goto LABEL_9;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:];
    goto LABEL_17;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:];
    goto LABEL_17;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:];
    goto LABEL_17;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:];
    goto LABEL_17;
  }

  if (!v22)
  {
    [GGMMetalToolBox encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:];
    goto LABEL_17;
  }

  if (!v23)
  {
    [GGMMetalToolBox encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:];
    goto LABEL_17;
  }

  [v16 setComputePipelineState:self->_blendRefsYUV];
  [v16 setBuffer:v24 offset:0 atIndex:0];
  [v16 setTexture:v17 atIndex:0];
  [v16 setTexture:v18 atIndex:1];
  [v16 setTexture:v19 atIndex:2];
  [v16 setTexture:v20 atIndex:3];
  [v16 setTexture:v21 atIndex:4];
  [v16 setTexture:v22 atIndex:5];
  [v16 setImageblockWidth:32 height:32];
  v25 = *([v24 contents] + 24);
  v26.i64[0] = v25;
  v26.i64[1] = HIDWORD(v25);
  __asm { FMOV            V1.2D, #4.0 }

  v32 = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v26), vdupq_n_s64(0x4060000000000000uLL)), _Q1), vdupq_n_s64(0x4040000000000000uLL));
  __asm { FMOV            V1.2D, #-1.0 }

  v38 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v32, _Q1), vdupq_n_s64(0x3FA0000000000000uLL)));
  v39 = 1;
  v36 = vdupq_n_s64(0x20uLL);
  v37 = 1;
  [v16 dispatchThreadgroups:&v38 threadsPerThreadgroup:&v36];
  v34 = 0;
LABEL_9:

  return v34;
}

- (int64_t)encodeAlignBgAvgYUVToCommandEncoder:(id)a3 input:(id)a4 ref0:(id)a5 ref1:(id)a6 alignedRef0:(id)a7 alignedRef1:(id)a8 metaBuf:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = v21;
  if (!v16)
  {
    [GGMMetalToolBox encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:];
LABEL_15:
    v32 = v36.i64[0];
    goto LABEL_8;
  }

  if (!v17)
  {
    [GGMMetalToolBox encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:];
    goto LABEL_15;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:];
    goto LABEL_15;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:];
    goto LABEL_15;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:];
    goto LABEL_15;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:];
    goto LABEL_15;
  }

  [v15 setComputePipelineState:self->_alignBgAvgYUV];
  [v15 setTexture:v16 atIndex:0];
  [v15 setTexture:v17 atIndex:1];
  [v15 setTexture:v18 atIndex:2];
  [v15 setTexture:v19 atIndex:3];
  [v15 setTexture:v20 atIndex:4];
  [v15 setBuffer:v22 offset:0 atIndex:0];
  [v15 setImageblockWidth:32 height:32];
  v23 = *([v22 contents] + 24);
  v24.i64[0] = v23;
  v24.i64[1] = HIDWORD(v23);
  __asm { FMOV            V1.2D, #4.0 }

  v30 = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v24), vdupq_n_s64(0x4060000000000000uLL)), _Q1), vdupq_n_s64(0x4040000000000000uLL));
  __asm { FMOV            V1.2D, #-1.0 }

  v36 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v30, _Q1), vdupq_n_s64(0x3FA0000000000000uLL)));
  v37 = 1;
  v34 = vdupq_n_s64(0x20uLL);
  v35 = 1;
  [v15 dispatchThreadgroups:&v36 threadsPerThreadgroup:&v34];
  v32 = 0;
LABEL_8:

  return v32;
}

- (id)createForwarpOutputBufferWidth:(unint64_t)a3 height:(unint64_t)a4 channels:(unint64_t)a5
{
  v5 = [(MTLDevice *)self->super._device newBufferWithLength:(4 * (a3 * ((a4 + 15) & 0x3FFFFFFFFFFFFFF0) + a3 * ((a4 + 15) & 0x3FFFFFFFFFFFFFF0) * a5) + 4095) & 0xFFFFFFFFFFFFF000 options:0];

  return v5;
}

- (int64_t)encodeResetOutputToCommandEncoder:(id)a3 input:(id)a4 meta:(id)a5 output0:(id)a6 output1:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (!v13)
  {
    [GGMMetalToolBox encodeResetOutputToCommandEncoder:input:meta:output0:output1:];
LABEL_11:
    v29 = v33.i64[0];
    goto LABEL_6;
  }

  if (!v14)
  {
    [GGMMetalToolBox encodeResetOutputToCommandEncoder:input:meta:output0:output1:];
    goto LABEL_11;
  }

  if (!v15)
  {
    [GGMMetalToolBox encodeResetOutputToCommandEncoder:input:meta:output0:output1:];
    goto LABEL_11;
  }

  if (!v16)
  {
    [GGMMetalToolBox encodeResetOutputToCommandEncoder:input:meta:output0:output1:];
    goto LABEL_11;
  }

  [v12 setComputePipelineState:self->_resetOutput];
  [v12 setTexture:v13 atIndex:0];
  [v12 setBuffer:v14 offset:0 atIndex:0];
  [v12 setBuffer:v15 offset:0 atIndex:1];
  [v12 setBuffer:v17 offset:0 atIndex:2];
  v18 = *([v14 contents] + 24);
  v19.i64[0] = v18;
  v19.i64[1] = HIDWORD(v18);
  __asm { FMOV            V1.2D, #4.0 }

  v25 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v19), vdupq_n_s64(0x4060000000000000uLL)), _Q1);
  __asm { FMOV            V1.2D, #16.0 }

  v27 = vaddq_f64(v25, _Q1);
  __asm { FMOV            V1.2D, #-1.0 }

  v33 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v27, _Q1), vdupq_n_s64(0x3FB0000000000000uLL)));
  v34 = 1;
  v31 = vdupq_n_s64(0x10uLL);
  v32 = 1;
  [v12 dispatchThreadgroups:&v33 threadsPerThreadgroup:&v31];
  v29 = 0;
LABEL_6:

  return v29;
}

- (int64_t)encodeUpdateOutputFloatToCommandEncoder:(id)a3 input0:(id)a4 flow0:(id)a5 input1:(id)a6 flow1:(id)a7 meta:(id)a8 output0:(id)a9 output1:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = v23;
  if (!v17)
  {
    [GGMMetalToolBox encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:];
LABEL_17:
    v36 = v40.i64[0];
    goto LABEL_9;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:];
    goto LABEL_17;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:];
    goto LABEL_17;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:];
    goto LABEL_17;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:];
    goto LABEL_17;
  }

  if (!v22)
  {
    [GGMMetalToolBox encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:];
    goto LABEL_17;
  }

  if (!v23)
  {
    [GGMMetalToolBox encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:];
    goto LABEL_17;
  }

  [v16 setComputePipelineState:self->_updateOutputFloat];
  [v16 setTexture:v17 atIndex:0];
  [v16 setTexture:v18 atIndex:1];
  [v16 setTexture:v19 atIndex:2];
  [v16 setTexture:v20 atIndex:3];
  [v16 setBuffer:v21 offset:0 atIndex:0];
  [v16 setBuffer:v22 offset:0 atIndex:1];
  [v16 setBuffer:v24 offset:0 atIndex:2];
  v25 = vadd_s32(*([v21 contents] + 24), 0x4000000040);
  v26.i64[0] = v25.u32[0];
  v26.i64[1] = v25.u32[1];
  __asm { FMOV            V1.2D, #4.0 }

  v32 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v26), vdupq_n_s64(0x4060000000000000uLL)), _Q1);
  __asm { FMOV            V1.2D, #16.0 }

  v34 = vaddq_f64(v32, _Q1);
  __asm { FMOV            V1.2D, #-1.0 }

  v40 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v34, _Q1), vdupq_n_s64(0x3FB0000000000000uLL)));
  v41 = 1;
  v38 = vdupq_n_s64(0x10uLL);
  v39 = 1;
  [v16 dispatchThreadgroups:&v40 threadsPerThreadgroup:&v38];
  v36 = 0;
LABEL_9:

  return v36;
}

- (int64_t)encodeConvertFloatBuffer2TextureToCommandEncoder:(id)a3 inputBuffer0:(id)a4 inputBuffer1:(id)a5 meta:(id)a6 output0:(id)a7 outputMap0:(id)a8 output1:(id)a9 outputMap1:(id)a10
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a8;
  v22 = a9;
  v23 = a10;
  v24 = v23;
  if (!v17)
  {
    [GGMMetalToolBox encodeConvertFloatBuffer2TextureToCommandEncoder:inputBuffer0:inputBuffer1:meta:output0:outputMap0:output1:outputMap1:];
LABEL_13:
    v36 = v40.i64[0];
    goto LABEL_7;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeConvertFloatBuffer2TextureToCommandEncoder:inputBuffer0:inputBuffer1:meta:output0:outputMap0:output1:outputMap1:];
    goto LABEL_13;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeConvertFloatBuffer2TextureToCommandEncoder:inputBuffer0:inputBuffer1:meta:output0:outputMap0:output1:outputMap1:];
    goto LABEL_13;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeConvertFloatBuffer2TextureToCommandEncoder:inputBuffer0:inputBuffer1:meta:output0:outputMap0:output1:outputMap1:];
    goto LABEL_13;
  }

  if (!v23)
  {
    [GGMMetalToolBox encodeConvertFloatBuffer2TextureToCommandEncoder:inputBuffer0:inputBuffer1:meta:output0:outputMap0:output1:outputMap1:];
    goto LABEL_13;
  }

  [v16 setComputePipelineState:self->_convertFloatBuffer2Texture];
  [v16 setBuffer:v19 offset:0 atIndex:0];
  [v16 setBuffer:v17 offset:0 atIndex:1];
  [v16 setBuffer:v18 offset:0 atIndex:2];
  [v16 setTexture:v20 atIndex:0];
  [v16 setTexture:v21 atIndex:1];
  [v16 setTexture:v22 atIndex:2];
  [v16 setTexture:v24 atIndex:3];
  v25 = *([v19 contents] + 24);
  v26.i64[0] = v25;
  v26.i64[1] = HIDWORD(v25);
  __asm { FMOV            V1.2D, #4.0 }

  v32 = vaddq_f64(vaddq_f64(vcvtq_f64_u64(v26), vdupq_n_s64(0x4060000000000000uLL)), _Q1);
  __asm { FMOV            V1.2D, #16.0 }

  v34 = vaddq_f64(v32, _Q1);
  __asm { FMOV            V1.2D, #-1.0 }

  v40 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v34, _Q1), vdupq_n_s64(0x3FB0000000000000uLL)));
  v41 = 1;
  v38 = vdupq_n_s64(0x10uLL);
  v39 = 1;
  [v16 dispatchThreadgroups:&v40 threadsPerThreadgroup:&v38];
  v36 = 0;
LABEL_7:

  return v36;
}

- (int64_t)encodeDilateForwarpHoleMap:(id)a3 fullResTarget:(id)a4 inputMap0:(id)a5 outputMap0:(id)a6 inputMap1:(id)a7 outputMap1:(id)a8 hardDilationRadius:(float)a9 softDilationRadius:(float)a10 meta:(id)a11
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a7;
  v24 = a8;
  v45 = a10;
  v46 = a9;
  v25 = a11;
  v26 = v25;
  if (!v20)
  {
    [GGMMetalToolBox encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:];
LABEL_15:
    v36 = v43[0];
    goto LABEL_8;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_15;
  }

  if (!v22)
  {
    [GGMMetalToolBox encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_15;
  }

  if (!v23)
  {
    [GGMMetalToolBox encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_15;
  }

  if (!v24)
  {
    [GGMMetalToolBox encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_15;
  }

  if (!v25)
  {
    [GGMMetalToolBox encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_15;
  }

  v39 = [v22 width];
  v27 = [v22 height];
  v28.f32[0] = v39;
  v28.f32[1] = v27;
  v40 = v28;
  v38 = [v20 width];
  v29 = [v20 height];
  v30.f32[0] = v38;
  v30.f32[1] = v29;
  v44 = vdiv_f32(v40, v30);
  v31 = [v26 contents];
  LODWORD(v32) = *(v31 + 24);
  LODWORD(v33) = *(v31 + 28);
  v34 = (vcvtpd_u64_f64((v32 + 128.0 + 4.0) * v44.f32[0]) + 31) >> 5;
  v35 = (vcvtpd_u64_f64((v33 + 128.0 + 4.0) * v44.f32[1]) + 31) >> 5;
  [v19 setComputePipelineState:self->_dilateForwarpHoleMap];
  [v19 setBuffer:v26 offset:0 atIndex:0];
  [v19 setTexture:v21 atIndex:0];
  [v19 setTexture:v22 atIndex:1];
  [v19 setTexture:v23 atIndex:2];
  [v19 setTexture:v24 atIndex:3];
  [v19 setBytes:&v46 length:4 atIndex:1];
  [v19 setBytes:&v45 length:4 atIndex:2];
  [v19 setBytes:&v44 length:8 atIndex:3];
  v43[0] = v34;
  v43[1] = v35;
  v43[2] = 1;
  v41 = vdupq_n_s64(0x20uLL);
  v42 = 1;
  [v19 dispatchThreadgroups:v43 threadsPerThreadgroup:&v41];
  v36 = 0;
LABEL_8:

  return v36;
}

- (int64_t)encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:(id)a3 fullResTarget:(id)a4 mvf0:(id)a5 mvf1:(id)a6 mvf2:(id)a7 outMvf:(id)a8 meta:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = v21;
  if (!v16)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:];
LABEL_15:
    v31 = v38[0];
    goto LABEL_8;
  }

  if (!v17)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:];
    goto LABEL_15;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:];
    goto LABEL_15;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:];
    goto LABEL_15;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:];
    goto LABEL_15;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:];
    goto LABEL_15;
  }

  v23 = [v21 contents];
  v34 = [v20 width];
  v24 = [v20 height];
  v25.f32[0] = v34;
  v25.f32[1] = v24;
  v35 = v25;
  v33 = [v16 width];
  v26 = [v16 height];
  v27.f32[0] = v33;
  v27.f32[1] = v26;
  v39 = vdiv_f32(v35, v27);
  v28 = *(v23 + 28);
  v29 = (vcvtpd_u64_f64(((*(v23 + 24) + 64) + 128.0 + 4.0) * v39.f32[0]) + 31) >> 5;
  v30 = (vcvtpd_u64_f64(((v28 + 64) + 128.0 + 4.0) * v39.f32[1]) + 31) >> 5;
  [v15 setComputePipelineState:self->_warpMvf0WithMvf1ThenAddToMvf2];
  [v15 setTexture:v17 atIndex:0];
  [v15 setTexture:v18 atIndex:1];
  [v15 setTexture:v19 atIndex:2];
  [v15 setTexture:v20 atIndex:3];
  [v15 setBuffer:v22 offset:0 atIndex:0];
  [v15 setBytes:&v39 length:8 atIndex:1];
  v38[0] = v29;
  v38[1] = v30;
  v38[2] = 1;
  v36 = vdupq_n_s64(0x20uLL);
  v37 = 1;
  [v15 dispatchThreadgroups:v38 threadsPerThreadgroup:&v36];
  v31 = 0;
LABEL_8:

  return v31;
}

- (int64_t)encodeWarpMvf0WithMvf1ToCommandEncoder:(id)a3 fullResTarget:(id)a4 mvf0:(id)a5 mvf1:(id)a6 outMvf:(id)a7 meta:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (!v15)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
LABEL_13:
    v33 = v41.i64[0];
    goto LABEL_7;
  }

  if (!v16)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
    goto LABEL_13;
  }

  if (!v17)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
    goto LABEL_13;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
    goto LABEL_13;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
    goto LABEL_13;
  }

  v21 = [v19 contents];
  v36 = [v18 width];
  v22 = [v18 height];
  v23.f32[0] = v36;
  v23.f32[1] = v22;
  v37 = v23;
  v35 = [v15 width];
  v24 = [v15 height];
  v25.f32[0] = v35;
  v25.f32[1] = v24;
  v43 = vdiv_f32(v37, v25);
  v26 = vadd_s32(v21[3], 0x4000000040);
  v27.i64[0] = v26.u32[0];
  v27.i64[1] = v26.u32[1];
  __asm { FMOV            V2.2D, #4.0 }

  v38 = vshrq_n_u64(vaddq_s64(vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v27), vdupq_n_s64(0x4060000000000000uLL)), _Q2), vcvtq_f64_f32(v43)))), vdupq_n_s64(0x1FuLL)), 5uLL);
  [v14 setComputePipelineState:self->_warpMvf0WithMvf1];
  [v14 setTexture:v16 atIndex:0];
  [v14 setTexture:v17 atIndex:1];
  [v14 setTexture:v18 atIndex:3];
  [v14 setBuffer:v20 offset:0 atIndex:0];
  [v14 setBytes:&v43 length:8 atIndex:1];
  v41 = v38;
  v42 = 1;
  v39 = vdupq_n_s64(0x20uLL);
  v40 = 1;
  [v14 dispatchThreadgroups:&v41 threadsPerThreadgroup:&v39];
  v33 = 0;
LABEL_7:

  return v33;
}

- (int64_t)encodeAddMvf0ToMvf1ToCommandEncoder:(id)a3 fullResTarget:(id)a4 mvf0:(id)a5 mvf1:(id)a6 outMvf:(id)a7 meta:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (!v15)
  {
    [GGMMetalToolBox encodeAddMvf0ToMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
LABEL_13:
    v33 = v41.i64[0];
    goto LABEL_7;
  }

  if (!v16)
  {
    [GGMMetalToolBox encodeAddMvf0ToMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
    goto LABEL_13;
  }

  if (!v17)
  {
    [GGMMetalToolBox encodeAddMvf0ToMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
    goto LABEL_13;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeAddMvf0ToMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
    goto LABEL_13;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeAddMvf0ToMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
    goto LABEL_13;
  }

  v21 = [v19 contents];
  v36 = [v18 width];
  v22 = [v18 height];
  v23.f32[0] = v36;
  v23.f32[1] = v22;
  v37 = v23;
  v35 = [v15 width];
  v24 = [v15 height];
  v25.f32[0] = v35;
  v25.f32[1] = v24;
  v43 = vdiv_f32(v37, v25);
  v26 = vadd_s32(v21[3], 0x4000000040);
  v27.i64[0] = v26.u32[0];
  v27.i64[1] = v26.u32[1];
  __asm { FMOV            V2.2D, #4.0 }

  v38 = vshrq_n_u64(vaddq_s64(vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v27), vdupq_n_s64(0x4060000000000000uLL)), _Q2), vcvtq_f64_f32(v43)))), vdupq_n_s64(0x1FuLL)), 5uLL);
  [v14 setComputePipelineState:self->_addMvf0AndMvf1];
  [v14 setTexture:v16 atIndex:0];
  [v14 setTexture:v17 atIndex:1];
  [v14 setTexture:v18 atIndex:3];
  [v14 setBuffer:v20 offset:0 atIndex:0];
  [v14 setBytes:&v43 length:8 atIndex:1];
  v41 = v38;
  v42 = 1;
  v39 = vdupq_n_s64(0x20uLL);
  v40 = 1;
  [v14 dispatchThreadgroups:&v41 threadsPerThreadgroup:&v39];
  v33 = 0;
LABEL_7:

  return v33;
}

- (int64_t)encodeCopyMvfToCommandEncoder:(id)a3 fullResTarget:(id)a4 mvf0:(id)a5 outMvf0:(id)a6 mvf1:(id)a7 outMvf1:(id)a8 meta:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = v21;
  if (!v16)
  {
    [GGMMetalToolBox encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:];
LABEL_15:
    v31 = v38[0];
    goto LABEL_8;
  }

  if (!v17)
  {
    [GGMMetalToolBox encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:];
    goto LABEL_15;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:];
    goto LABEL_15;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:];
    goto LABEL_15;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:];
    goto LABEL_15;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:];
    goto LABEL_15;
  }

  v23 = [v21 contents];
  v34 = [v18 width];
  v24 = [v18 height];
  v25.f32[0] = v34;
  v25.f32[1] = v24;
  v35 = v25;
  v33 = [v16 width];
  v26 = [v16 height];
  v27.f32[0] = v33;
  v27.f32[1] = v26;
  v39 = vdiv_f32(v35, v27);
  v28 = *(v23 + 28);
  v29 = (vcvtpd_u64_f64(((*(v23 + 24) + 64) + 128.0 + 4.0) * v39.f32[0]) + 31) >> 5;
  v30 = (vcvtpd_u64_f64(((v28 + 64) + 128.0 + 4.0) * v39.f32[1]) + 31) >> 5;
  [v15 setComputePipelineState:self->_copyMvf];
  [v15 setTexture:v17 atIndex:0];
  [v15 setTexture:v18 atIndex:1];
  [v15 setTexture:v19 atIndex:2];
  [v15 setTexture:v20 atIndex:3];
  [v15 setBuffer:v22 offset:0 atIndex:0];
  [v15 setBytes:&v39 length:8 atIndex:1];
  v38[0] = v29;
  v38[1] = v30;
  v38[2] = 1;
  v36 = vdupq_n_s64(0x20uLL);
  v37 = 1;
  [v15 dispatchThreadgroups:v38 threadsPerThreadgroup:&v36];
  v31 = 0;
LABEL_8:

  return v31;
}

- (int64_t)encodeVisualizeMvfToCommandEncoder:(id)a3 fullResTarget:(id)a4 mvf:(id)a5 outMvf:(id)a6 meta:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = v16;
  if (!v13)
  {
    [GGMMetalToolBox encodeVisualizeMvfToCommandEncoder:fullResTarget:mvf:outMvf:meta:];
LABEL_11:
    v30 = v38.i64[0];
    goto LABEL_6;
  }

  if (!v14)
  {
    [GGMMetalToolBox encodeVisualizeMvfToCommandEncoder:fullResTarget:mvf:outMvf:meta:];
    goto LABEL_11;
  }

  if (!v15)
  {
    [GGMMetalToolBox encodeVisualizeMvfToCommandEncoder:fullResTarget:mvf:outMvf:meta:];
    goto LABEL_11;
  }

  if (!v16)
  {
    [GGMMetalToolBox encodeVisualizeMvfToCommandEncoder:fullResTarget:mvf:outMvf:meta:];
    goto LABEL_11;
  }

  v18 = [v16 contents];
  v33 = [v15 width];
  v19 = [v15 height];
  v20.f32[0] = v33;
  v20.f32[1] = v19;
  v34 = v20;
  v32 = [v13 width];
  v21 = [v13 height];
  v22.f32[0] = v32;
  v22.f32[1] = v21;
  v40 = vdiv_f32(v34, v22);
  v23 = *(v18 + 24);
  v24.i64[0] = v23;
  v24.i64[1] = HIDWORD(v23);
  __asm { FMOV            V2.2D, #4.0 }

  v35 = vshrq_n_u64(vaddq_s64(vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v24), vdupq_n_s64(0x4060000000000000uLL)), _Q2), vcvtq_f64_f32(v40)))), vdupq_n_s64(0x1FuLL)), 5uLL);
  [v12 setComputePipelineState:self->_visualizeMvf];
  [v12 setTexture:v14 atIndex:0];
  [v12 setTexture:v15 atIndex:1];
  [v12 setBuffer:v17 offset:0 atIndex:0];
  [v12 setBytes:&v40 length:8 atIndex:1];
  [v12 setImageblockWidth:32 height:32];
  v38 = v35;
  v39 = 1;
  v36 = vdupq_n_s64(0x20uLL);
  v37 = 1;
  [v12 dispatchThreadgroups:&v38 threadsPerThreadgroup:&v36];
  v30 = 0;
LABEL_6:

  return v30;
}

- (int64_t)encodeGetRoiRepairMvFromMvfToCommandEncoder:(id)a3 fullResInput:(id)a4 probMap:(id)a5 mvf0:(id)a6 mvf1:(id)a7 meta:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = v19;
  if (!v15)
  {
    [GGMMetalToolBox encodeGetRoiRepairMvFromMvfToCommandEncoder:fullResInput:probMap:mvf0:mvf1:meta:];
LABEL_13:
    v30 = v37[0];
    goto LABEL_7;
  }

  if (!v16)
  {
    [GGMMetalToolBox encodeGetRoiRepairMvFromMvfToCommandEncoder:fullResInput:probMap:mvf0:mvf1:meta:];
    goto LABEL_13;
  }

  if (!v17)
  {
    [GGMMetalToolBox encodeGetRoiRepairMvFromMvfToCommandEncoder:fullResInput:probMap:mvf0:mvf1:meta:];
    goto LABEL_13;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeGetRoiRepairMvFromMvfToCommandEncoder:fullResInput:probMap:mvf0:mvf1:meta:];
    goto LABEL_13;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeGetRoiRepairMvFromMvfToCommandEncoder:fullResInput:probMap:mvf0:mvf1:meta:];
    goto LABEL_13;
  }

  v33 = [v17 width];
  v21 = [v17 height];
  v22.f32[0] = v33;
  v22.f32[1] = v21;
  v34 = v22;
  v32 = [v15 width];
  v23 = [v15 height];
  v24.f32[0] = v32;
  v24.f32[1] = v23;
  v38 = vdiv_f32(v34, v24);
  v25 = [v20 contents];
  LODWORD(v26) = *(v25 + 24);
  LODWORD(v27) = *(v25 + 28);
  v28 = (((v26 + 128.0 + 4.0) * v38.f32[0] + 32.0 + -1.0) * 0.03125);
  v29 = (((v27 + 128.0 + 4.0) * v38.f32[1] + 32.0 + -1.0) * 0.03125);
  [v14 setComputePipelineState:self->_getRoiRepairMvFromMvf];
  [v14 setTexture:v16 atIndex:0];
  [v14 setTexture:v17 atIndex:1];
  [v14 setTexture:v18 atIndex:2];
  [v14 setBuffer:v20 offset:0 atIndex:0];
  [v14 setBytes:&v38 length:8 atIndex:1];
  v37[0] = v28;
  v37[1] = v29;
  v37[2] = 1;
  v35 = vdupq_n_s64(0x20uLL);
  v36 = 1;
  [v14 dispatchThreadgroups:v37 threadsPerThreadgroup:&v35];
  v30 = 0;
LABEL_7:

  return v30;
}

- (int64_t)encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:(id)a3 fullResInput:(id)a4 ref0:(id)a5 warpedRef0:(id)a6 ref1:(id)a7 warpedRef1:(id)a8 meta:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = v21;
  if (!v16)
  {
    [GGMMetalToolBox encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:];
LABEL_15:
    v32 = v39[0];
    goto LABEL_8;
  }

  if (!v17)
  {
    [GGMMetalToolBox encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:];
    goto LABEL_15;
  }

  if (!v18)
  {
    [GGMMetalToolBox encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:];
    goto LABEL_15;
  }

  if (!v19)
  {
    [GGMMetalToolBox encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:];
    goto LABEL_15;
  }

  if (!v20)
  {
    [GGMMetalToolBox encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:];
    goto LABEL_15;
  }

  if (!v21)
  {
    [GGMMetalToolBox encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:];
    goto LABEL_15;
  }

  v23 = [v21 contents];
  v35 = [v18 width];
  v24 = [v18 height];
  v25.f32[0] = v35;
  v25.f32[1] = v24;
  v36 = v25;
  v34 = [v16 width];
  v26 = [v16 height];
  v27.f32[0] = v34;
  v27.f32[1] = v26;
  v28 = vdiv_f32(v36, v27);
  v27.i32[0] = *(v23 + 24);
  LODWORD(v29) = *(v23 + 28);
  v30 = (((v27 + 128.0 + 4.0) * v28.f32[0] + 32.0 + -1.0) * 0.03125);
  v40 = v28;
  v31 = (((v29 + 128.0 + 4.0) * v28.f32[1] + 32.0 + -1.0) * 0.03125);
  [v15 setComputePipelineState:self->_bmTransferWithRoiRepairMvYUV];
  [v15 setTexture:v17 atIndex:0];
  [v15 setTexture:v18 atIndex:1];
  [v15 setTexture:v19 atIndex:2];
  [v15 setTexture:v20 atIndex:3];
  [v15 setBuffer:v22 offset:0 atIndex:0];
  [v15 setBytes:&v40 length:8 atIndex:1];
  [v15 setImageblockWidth:32 height:32];
  v39[0] = v30;
  v39[1] = v31;
  v39[2] = 1;
  v37 = vdupq_n_s64(0x20uLL);
  v38 = 1;
  [v15 dispatchThreadgroups:v39 threadsPerThreadgroup:&v37];
  v32 = 0;
LABEL_8:

  return v32;
}

- (int64_t)encodeGetMvToFutureFromMvf:(id)a3 fullResInput:(id)a4 meta:(id)a5 mvf:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = v13;
  if (!v11)
  {
    [GGMMetalToolBox encodeGetMvToFutureFromMvf:fullResInput:meta:mvf:];
LABEL_9:
    v27 = v35.i64[0];
    goto LABEL_5;
  }

  if (!v12)
  {
    [GGMMetalToolBox encodeGetMvToFutureFromMvf:fullResInput:meta:mvf:];
    goto LABEL_9;
  }

  if (!v13)
  {
    [GGMMetalToolBox encodeGetMvToFutureFromMvf:fullResInput:meta:mvf:];
    goto LABEL_9;
  }

  v15 = [v12 contents];
  v30 = [v14 width];
  v16 = [v14 height];
  v17.f32[0] = v30;
  v17.f32[1] = v16;
  v31 = v17;
  v29 = [v11 width];
  v18 = [v11 height];
  v19.f32[0] = v29;
  v19.f32[1] = v18;
  v37 = vdiv_f32(v31, v19);
  v20 = vadd_s32(v15[3], 0x8000000080);
  v21.i64[0] = v20.u32[0];
  v21.i64[1] = v20.u32[1];
  __asm { FMOV            V2.2D, #4.0 }

  v32 = vshrq_n_u64(vaddq_s64(vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v21), vdupq_n_s64(0x4060000000000000uLL)), _Q2), vcvtq_f64_f32(v37)))), vdupq_n_s64(0x1FuLL)), 5uLL);
  [v10 setComputePipelineState:self->_getMvToFutureFromMvf];
  [v10 setTexture:v14 atIndex:0];
  [v10 setBuffer:v12 offset:0 atIndex:0];
  [v10 setBytes:&v37 length:8 atIndex:1];
  v35 = v32;
  v36 = 1;
  v33 = vdupq_n_s64(0x20uLL);
  v34 = 1;
  [v10 dispatchThreadgroups:&v35 threadsPerThreadgroup:&v33];
  v27 = 0;
LABEL_5:

  return v27;
}

- (int64_t)encodeGetMvForMotionCueFromMvf:(GGMMetalToolBox *)self fullResInput:(SEL)a2 meta:(id)a3 mvf:(id)a4 opticalCenter:(id)a5 refOpticalCenter:(id)a6
{
  v8 = v7;
  v9 = v6;
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v41 = v8;
  v42 = v9;
  if (!v15)
  {
    [GGMMetalToolBox encodeGetMvForMotionCueFromMvf:fullResInput:meta:mvf:opticalCenter:refOpticalCenter:];
LABEL_7:
    v30 = v38.i64[0];
    goto LABEL_4;
  }

  if (!v16)
  {
    [GGMMetalToolBox encodeGetMvForMotionCueFromMvf:fullResInput:meta:mvf:opticalCenter:refOpticalCenter:];
    goto LABEL_7;
  }

  v18 = [v16 contents];
  v33 = [v17 width];
  v19 = [v17 height];
  v20.f32[0] = v33;
  v20.f32[1] = v19;
  v34 = v20;
  v32 = [v15 width];
  v21 = [v15 height];
  v22.f32[0] = v32;
  v22.f32[1] = v21;
  v40 = vdiv_f32(v34, v22);
  v23 = *(v18 + 24);
  v24.i64[0] = v23;
  v24.i64[1] = HIDWORD(v23);
  __asm { FMOV            V2.2D, #4.0 }

  v35 = vshrq_n_u64(vaddq_s64(vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v24), vdupq_n_s64(0x4060000000000000uLL)), _Q2), vcvtq_f64_f32(v40)))), vdupq_n_s64(0x1FuLL)), 5uLL);
  [v14 setComputePipelineState:self->_getMvForMotionCueFromMvf];
  [v14 setTexture:v17 atIndex:0];
  [v14 setBuffer:v16 offset:0 atIndex:0];
  [v14 setBytes:&v40 length:8 atIndex:1];
  [v14 setBytes:&v42 length:8 atIndex:2];
  [v14 setBytes:&v41 length:8 atIndex:3];
  v38 = v35;
  v39 = 1;
  v36 = vdupq_n_s64(0x20uLL);
  v37 = 1;
  [v14 dispatchThreadgroups:&v38 threadsPerThreadgroup:&v36];
  v30 = 0;
LABEL_4:

  return v30;
}

- (int64_t)encodeCollectClusterMvForMotionCueToCommandEncoder:(id)a3 clusterMetaBuf:(id)a4 metaBuf:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    [GGMMetalToolBox encodeCollectClusterMvForMotionCueToCommandEncoder:clusterMetaBuf:metaBuf:];
LABEL_7:
    v13 = v17;
    goto LABEL_4;
  }

  if (!v10)
  {
    [GGMMetalToolBox encodeCollectClusterMvForMotionCueToCommandEncoder:clusterMetaBuf:metaBuf:];
    goto LABEL_7;
  }

  v12 = [v9 contents];
  [v8 setComputePipelineState:self->_collectClusterMvForMotionCue];
  [v8 setBuffer:v9 offset:0 atIndex:0];
  [v8 setBuffer:v11 offset:0 atIndex:1];
  v17 = (*v12 + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2487C3C20;
  [v8 dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  v13 = 0;
LABEL_4:

  return v13;
}

- (int64_t)encodeGetLsMapYUVToCommandEncoder:(id)a3 input:(id)a4 map:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = v10;
  if (!v9)
  {
    [GGMMetalToolBox encodeGetLsMapYUVToCommandEncoder:input:map:];
LABEL_7:
    v14 = v18[0];
    goto LABEL_4;
  }

  if (!v10)
  {
    [GGMMetalToolBox encodeGetLsMapYUVToCommandEncoder:input:map:];
    goto LABEL_7;
  }

  v12 = ([v10 width] + 15) >> 4;
  v13 = ([v11 height] + 15) >> 4;
  [v8 setComputePipelineState:self->_getLsMapYUV];
  [v8 setTexture:v9 atIndex:0];
  [v8 setTexture:v11 atIndex:1];
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = 1;
  v16 = vdupq_n_s64(0x10uLL);
  v17 = 1;
  [v8 dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  v14 = 0;
LABEL_4:

  return v14;
}

- (GGMMetalToolBox)initWithMetalContext:(id)a3 commandQueue:(id)a4
{
  v34[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  v9 = 0;
  if (v6 && v7)
  {
    v32.receiver = self;
    v32.super_class = GGMMetalToolBox;
    v10 = [(VEMetalBase *)&v32 initWithDevice:v6 commmandQueue:v7];
    if (v10)
    {
      self = v10;
      v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v12 = v11;
      if (v11 && (([v11 pathForResource:@"videoDeghostingMetalLib.metallib" ofType:0], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(objc_alloc(MEMORY[0x277CBEBC0]), "initWithString:", v13), device = self->super._device, !v13) ? (v16 = -[MTLDevice newDefaultLibrary](device, "newDefaultLibrary")) : (v16 = -[MTLDevice newLibraryWithURL:error:](device, "newLibraryWithURL:error:", v14, 0)), mtlLibrary = self->super._mtlLibrary, self->super._mtlLibrary = v16, mtlLibrary, v18 = self->super._mtlLibrary, v14, v13, v18))
      {

        if ([(GGMMetalToolBox *)self _compileShaders])
        {
          if ((global_logLevel & 0x10) != 0)
          {
            v29 = global_logger;
            if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_24874B000, v29, OS_LOG_TYPE_ERROR, "Metal tool box shaders compilation failed", buf, 2u);
            }
          }
        }

        else
        {
          keyExistsAndHasValidFormat = 1;
          AppIntegerValue = CFPreferencesGetAppIntegerValue(@"cmivdg_ve_force_gpu_wait", @"com.apple.dvp", &keyExistsAndHasValidFormat);
          v20 = 0;
          if (keyExistsAndHasValidFormat)
          {
            v21 = AppIntegerValue == 255;
          }

          else
          {
            v21 = 1;
          }

          v22 = v21;
          self->_forceGpuWaitForComplete = v22;
          while (1)
          {
            v23 = [(MTLDevice *)self->super._device newBufferWithLength:71248 options:0];
            v24 = self->_metaBufArray.bufArray[v20];
            self->_metaBufArray.bufArray[v20] = v23;

            if (!self->_metaBufArray.bufArray[v20])
            {
              break;
            }

            if (++v20 == 256)
            {
              v33 = *MEMORY[0x277CC4D40];
              v34[0] = &unk_285B428E0;
              v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
              v26 = CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], v25, self->super._device, 0, &self->_cvMetalTextureCacheRef);

              if (v26)
              {
                break;
              }

              self = self;
              v9 = self;
              goto LABEL_22;
            }
          }
        }
      }

      else
      {
      }
    }

    else
    {
      if ((global_logLevel & 0x10) != 0)
      {
        v28 = global_logger;
        if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_24874B000, v28, OS_LOG_TYPE_ERROR, "Unable to initialize metal tool box", buf, 2u);
        }
      }

      self = 0;
    }

    v9 = 0;
  }

LABEL_22:

  return v9;
}

- (int)_compileShaders
{
  v3 = [(VEMetalBase *)self createKernel:@"metalToolBox::collectClusterTempRepairErr" constantValues:0];
  OUTLINED_FUNCTION_6(v3);
  if (self->_collectClusterTempRepairErr)
  {
    v4 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
    OUTLINED_FUNCTION_6(v4);
    if (self->_collectClusterMv)
    {
      v5 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
      OUTLINED_FUNCTION_6(v5);
      if (self->_bmSearch1RefYUV)
      {
        v6 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
        OUTLINED_FUNCTION_6(v6);
        if (self->_bmSearch4RepairYUV)
        {
          v7 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
          OUTLINED_FUNCTION_6(v7);
          if (self->_bmSearch1RefFixedSampleCntYUV)
          {
            v8 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
            OUTLINED_FUNCTION_6(v8);
            if (self->_bmTransferYUV)
            {
              v9 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
              OUTLINED_FUNCTION_6(v9);
              if (self->_bmTransfer4RepairYUV)
              {
                v10 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                OUTLINED_FUNCTION_6(v10);
                if (self->_bmTransferGray)
                {
                  v11 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                  OUTLINED_FUNCTION_6(v11);
                  if (self->_getGhostProbMapYUV)
                  {
                    v12 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                    OUTLINED_FUNCTION_6(v12);
                    if (self->_dilateGrayImg)
                    {
                      v13 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                      OUTLINED_FUNCTION_6(v13);
                      if (self->_dilateProbMap)
                      {
                        v14 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                        OUTLINED_FUNCTION_6(v14);
                        if (self->_getMotionMapYUV)
                        {
                          v15 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                          OUTLINED_FUNCTION_6(v15);
                          if (self->_combineMapWithRefMap)
                          {
                            v16 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                            OUTLINED_FUNCTION_6(v16);
                            if (self->_getSaliencyMapYUV)
                            {
                              v17 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                              OUTLINED_FUNCTION_6(v17);
                              if (self->_getBgAvgYUV)
                              {
                                v18 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                OUTLINED_FUNCTION_6(v18);
                                if (self->_getTempRepairedBgAlignErrYUV)
                                {
                                  v19 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                  OUTLINED_FUNCTION_6(v19);
                                  if (self->_collectClusterBgAvg)
                                  {
                                    v20 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                    OUTLINED_FUNCTION_6(v20);
                                    if (self->_reflectYUVImg2)
                                    {
                                      v21 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                      OUTLINED_FUNCTION_6(v21);
                                      if (self->_bilinearRescaleYUV)
                                      {
                                        v22 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                        OUTLINED_FUNCTION_6(v22);
                                        if (self->_bilinearRescale2ImgsYUV)
                                        {
                                          v23 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                          OUTLINED_FUNCTION_6(v23);
                                          if (self->_dilateReflLsMap)
                                          {
                                            v24 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                            OUTLINED_FUNCTION_6(v24);
                                            if (self->_getBlobSaliency)
                                            {
                                              v25 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                              OUTLINED_FUNCTION_5_8(v25, 216);
                                              v26 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                              OUTLINED_FUNCTION_5_8(v26, 224);
                                              v27 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                              OUTLINED_FUNCTION_5_8(v27, 232);
                                              v28 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                              OUTLINED_FUNCTION_6(v28);
                                              if (self->_upscaleProbMap)
                                              {
                                                v29 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                OUTLINED_FUNCTION_6(v29);
                                                if (self->_upscaleThenReflectLsMap)
                                                {
                                                  v30 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v30, 256);
                                                  v31 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v31, 264);
                                                  v32 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v32, 272);
                                                  v33 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v33, 280);
                                                  v34 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v34, 288);
                                                  v35 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v35, 296);
                                                  v36 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v36, 304);
                                                  v37 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v37, 312);
                                                  v38 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v38, 320);
                                                  v39 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v39, 328);
                                                  v40 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v40, 336);
                                                  v41 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v41, 344);
                                                  v42 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v42, 352);
                                                  v43 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v43, 360);
                                                  v44 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v44, 368);
                                                  v45 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v45, 376);
                                                  v46 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v46, 384);
                                                  v47 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v47, 400);
                                                  v48 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v48, 408);
                                                  v49 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v49, 416);
                                                  v50 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v50, 424);
                                                  v51 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v51, 432);
                                                  v52 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v52, 440);
                                                  v53 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v53, 448);
                                                  v54 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v54, 456);
                                                  v55 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v55, 464);
                                                  v56 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v56, 472);
                                                  v57 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v57, 480);
                                                  v58 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v58, 488);
                                                  v59 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v59, 496);
                                                  v60 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v60, 504);
                                                  v61 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v61, 512);
                                                  v62 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v62, 520);
                                                  v63 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v63, 528);
                                                  v64 = [OUTLINED_FUNCTION_3_15() createKernel:? constantValues:?];
                                                  OUTLINED_FUNCTION_5_8(v64, 536);
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

  return 0;
}

- ($D341E8FA52B8DFDE89B90A050A6B59DC)generateMetaContainerArrayBufFromMetaContainerBuf:(id)a3 imageRect:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v66 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = v9;
  p_metaBufArray = &self->_metaBufArray;
  self->_metaBufArray.clusterCnt = 0;
  if (!v9 || (v12 = [v9 contents]) == 0)
  {

    goto LABEL_18;
  }

  v14 = v12;
  v15 = v12 + 20;
  LODWORD(v13) = 1120403456;
  v51 = [(GGMMetalToolBox *)self clusterIndicesOfRois:v12 + 20 withExtendedRadius:*v12 roiCnt:v13 imageRect:x, y, width, height];
  v16 = [v51 count];
  v17 = v16;
  if (v16 >= 257)
  {
    if ((global_logLevel & 2) != 0)
    {
      v18 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v65 = v17;
        _os_log_impl(&dword_24874B000, v18, OS_LOG_TYPE_DEFAULT, "total cluster is %d, bigger than limit, not all GGs are mitigated ", buf, 8u);
      }
    }

    v17 = 256;
    goto LABEL_9;
  }

  if (v16 >= 1)
  {
LABEL_9:
    v45 = v10;
    v19 = 0;
    v48 = v14 + 35616;
    v20 = v14 + 4118;
    v60 = v14 + 4886;
    v59 = v14 + 5398;
    v58 = v14 + 18720;
    v57 = v14 + 5920;
    v56 = v14 + 21792;
    v55 = v14 + 22816;
    v54 = v14 + 22304;
    v53 = v14 + 23328;
    v47 = v17;
    v21 = vneg_f32(0x80000000800000);
    v46 = vdupq_n_s64(0xC050000000000000);
    v49 = v14;
    v50 = &self->_metaBufArray;
    do
    {
      v22 = [v51 objectAtIndexedSubscript:v19];
      v52 = v19;
      v23 = [p_metaBufArray->var0[v19] contents];
      bzero(v23, 0x11650uLL);
      *(v23 + 8232) = *(v14 + 8232);
      *(v23 + 1478) = *(v14 + 1478);
      *(v23 + 17808) = *v48;
      *v23 = [v22 count];
      if ([v22 count])
      {
        v25 = 0;
        v26 = 0;
        v61 = v23 + 4118;
        *&v24 = 0x80000000800000;
        v63 = v24;
        v27 = 18720;
        v28 = 21792;
        *&v24 = v21;
        v62 = v24;
        do
        {
          [v22 objectAtIndex:v26];
          v29 = v22;
          v30 = v20;
          v32 = v31 = v15;
          v33 = [v32 intValue];

          v15 = v31;
          v20 = v30;
          v22 = v29;
          v34 = &v23[v25];
          v35 = &v15[16 * v33];
          v36 = *v35;
          *(v34 + 28) = *(v35 + 1);
          *(v34 + 20) = v36;
          v37 = &v61[2 * v26];
          *v37 = *&v20[2 * v33];
          *&v36 = *&v23[v25 + 20];
          v38 = *&v23[v25 + 24];
          LODWORD(v34) = *&v60[2 * v33];
          v37[640] = *&v59[2 * v33];
          v37[384] = v34;
          *&v23[v27] = *&v58[4 * v33];
          *&v61[8 * v26 + 1802] = *&v57[8 * v33];
          *(&v39 + 1) = *(&v62 + 1);
          v40 = &v23[v28];
          *v40 = *&v56[2 * v33];
          *(&v41 + 1) = *(&v63 + 1);
          *&v39 = vbsl_s8(vcgt_f32(*&v36, *&v62), *&v62, *&v36);
          v62 = v39;
          v40[512] = *&v55[2 * v33];
          v40[256] = *&v54[2 * v33];
          *&v41 = vbsl_s8(vcgt_f32(*&v63, v38), *&v63, v38);
          v63 = v41;
          LODWORD(v34) = *&v53[2 * v33];
          v61[v26++ + 512] = v33;
          v40[768] = v34;
          v25 += 16;
          v28 += 2;
          v27 += 4;
        }

        while ([v29 count] > v26);
      }

      else
      {
        *&v63 = 0x80000000800000;
        *&v62 = v21;
      }

      v42.i64[0] = v62;
      v42.i64[1] = v63;
      *(v23 + 4) = vuzp1q_s32(v42, vrev64q_s32(v42));
      v43 = vaddq_f64(vcvtq_f64_f32(*&v62), v46);
      *&v43.f64[0] = vmovn_s64(vcvtq_s64_f64(vbicq_s8(v43, vcltzq_f64(v43))));
      *(v23 + 3) = vcvt_u32_f32(vsub_f32(*&v63, *&v62));
      *(v23 + 4) = *&vsra_n_u32(*&v43.f64[0], vcltz_s32(*&v43.f64[0]), 0x1EuLL) & 0xFFFFFFFCFFFFFFFCLL;
      p_metaBufArray = v50;
      ++v50->clusterCnt;

      v19 = v52 + 1;
      v14 = v49;
    }

    while (v52 + 1 != v47);
    v10 = v45;
  }

LABEL_18:
  return p_metaBufArray;
}

- (int64_t)encodeForwarpYUVToCommandEncoder:(id)a3 input0:(id)a4 input1:(id)a5 meta:(id)a6 mvf0:(id)a7 mvf1:(id)a8 intermediateOutput0:(id)a9 intermediateOutput1:(id)a10 output0:(id)a11 output1:(id)a12 outputMap0:(id)a13 outputMap1:(id)a14
{
  v19 = a3;
  v20 = a4;
  v39 = a5;
  v21 = a6;
  v22 = a7;
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v36 = a11;
  v34 = a12;
  v33 = a13;
  v26 = a14;
  v27 = [(GGMMetalToolBox *)self encodeResetOutputToCommandEncoder:v19 input:v20 meta:v21 output0:v24 output1:v25];
  v37 = v22;
  v38 = v20;
  if (v27 || (v27 = [(GGMMetalToolBox *)self encodeUpdateOutputFloatToCommandEncoder:v19 input0:v20 flow0:v22 input1:v39 flow1:v23 meta:v21 output0:v24 output1:v25]) != 0)
  {
    v31 = v27;
    v29 = v36;
    v28 = v34;
    v30 = v33;
  }

  else
  {
    v28 = v34;
    v29 = v36;
    v30 = v33;
    v31 = [(GGMMetalToolBox *)self encodeConvertFloatBuffer2TextureToCommandEncoder:v19 inputBuffer0:v24 inputBuffer1:v25 meta:v21 output0:v36 outputMap0:v33 output1:v34 outputMap1:v26];
  }

  return v31;
}

- (void)initWithMetalContext:commandQueue:tuningParamDict:.cold.1()
{
  if ((global_logLevel & 0x10) != 0)
  {
    v0 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      *v1 = 0;
      _os_log_error_impl(&dword_24874B000, v0, OS_LOG_TYPE_ERROR, "Unable to initialize metal tool box", v1, 2u);
    }
  }
}

- (void)updateMetaContainerBuffer:(os_log_t)log withDetectedROI:isLowLight:opticalCenter:opticalCenterShift:.cold.1(os_log_t log)
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 67109120;
  v1[1] = 256;
  _os_log_error_impl(&dword_24874B000, log, OS_LOG_TYPE_ERROR, "Detected ROI count exceeds the limit of %d. Some ROIs are not packed to repair", v1, 8u);
}

- (void)encodeBMSearch1RefToCommandEncoder:target:ref:reflect:normalizedTargetCenter:normalizedRefCenter:bestMatchLoc:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild bestMatchLoc texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMSearch1RefToCommandEncoder:target:ref:reflect:normalizedTargetCenter:normalizedRefCenter:bestMatchLoc:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild ref texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMSearch1RefToCommandEncoder:target:ref:reflect:normalizedTargetCenter:normalizedRefCenter:bestMatchLoc:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild target texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild mvf1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild mvf0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild probMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild forwarpHoleMap1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild forwarpHoleMap0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:.cold.7()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild ref1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:.cold.8()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild ref0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:.cold.9()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild target texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:.cold.10()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild hrTarget texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild backwarpFlow1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild backwarpFlow0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild bmMvf1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild bmMvf0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild warpedRef1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:.cold.7()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild warpedRef0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:.cold.8()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild probMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:.cold.9()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild forwarpHoleMap1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:.cold.10()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild forwarpHoleMap0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:.cold.11()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild ref1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:.cold.12()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild ref0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild probMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild saliencyMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild motionMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild reflLsMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild target texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransferYUVToCommandEncoder:ref:reflect:normalizedCenter:warpedRef:bestMatchLoc:meta:sf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransferYUVToCommandEncoder:ref:reflect:normalizedCenter:warpedRef:bestMatchLoc:meta:sf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild bestMatchLoc texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransferYUVToCommandEncoder:ref:reflect:normalizedCenter:warpedRef:bestMatchLoc:meta:sf:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild warpedRef texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransferYUVToCommandEncoder:ref:reflect:normalizedCenter:warpedRef:bestMatchLoc:meta:sf:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild ref texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransferGrayToCommandEncoder:ref:warpedRef:bestMatchLoc:meta:sf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransferGrayToCommandEncoder:ref:warpedRef:bestMatchLoc:meta:sf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild bestMatchLoc texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransferGrayToCommandEncoder:ref:warpedRef:bestMatchLoc:meta:sf:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild warpedRef texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBMTransferGrayToCommandEncoder:ref:warpedRef:bestMatchLoc:meta:sf:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild ref texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)resizeImageCmdBuf:(void *)a1 inputTexture:withFactorX:withFactorY:outputTexture:.cold.1(void *a1)
{
  OUTLINED_FUNCTION_0_25();
  if ((v2 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v3, v4, "%s : filter initialization fail", v5, v6, v7, v8, 2u);
  }

  *a1 = 6;
}

- (void)resizeImageCmdBuf:inputTexture:withFactorX:withFactorY:outputTexture:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outputTexture texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)resizeImageCmdBuf:inputTexture:withFactorX:withFactorY:outputTexture:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild inputTexture texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild output1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild output0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild fullResInput texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateGrayImg:input:output:hardDilationOutput:hardDilationRadius:softDilationRadius:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateGrayImg:input:output:hardDilationOutput:hardDilationRadius:softDilationRadius:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : hardDilationOutput output texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateGrayImg:input:output:hardDilationOutput:hardDilationRadius:softDilationRadius:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild output texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateGrayImg:input:output:hardDilationOutput:hardDilationRadius:softDilationRadius:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateProbMap:input:output:hardDilationRadius:softDilationRadius:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateProbMap:input:output:hardDilationRadius:softDilationRadius:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild output texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateProbMap:input:output:hardDilationRadius:softDilationRadius:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetMotionMapYUVToCommandEncoder:ref:target:motionMap:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetMotionMapYUVToCommandEncoder:ref:target:motionMap:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild motionMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetMotionMapYUVToCommandEncoder:ref:target:motionMap:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild target texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetMotionMapYUVToCommandEncoder:ref:target:motionMap:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild ref texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild flow1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild flow0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild prevProbMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild errRescaleProbMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild probMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:.cold.7()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild bmRef1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:.cold.8()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild bmRef0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:.cold.9()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild hmgrphyRef1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:.cold.10()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild hmgrphyRef0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:.cold.11()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild target texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild spaOutput texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild output texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild mvf texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild spaRef texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild blobSaliency texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:.cold.7()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild targetFrameYUV texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:.cold.8()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild saliency texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:.cold.9()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild motion texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:.cold.10()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild refLsMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:.cold.11()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild dilatedLsMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:.cold.12()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild lsMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:.cold.13()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild dilatedRef texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:.cold.14()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild ref texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:.cold.15()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild map texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetSaliencyMapToCommandEncoder:target:saliencyMap:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetSaliencyMapToCommandEncoder:target:saliencyMap:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild saliencyMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetSaliencyMapToCommandEncoder:target:saliencyMap:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild target texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetBgAvgYUVToCommandEncoder:target:ref0:ref1:probMap:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetBgAvgYUVToCommandEncoder:target:ref0:ref1:probMap:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild probMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetBgAvgYUVToCommandEncoder:target:ref0:ref1:probMap:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild ref1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetBgAvgYUVToCommandEncoder:target:ref0:ref1:probMap:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild ref0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetBgAvgYUVToCommandEncoder:target:ref0:ref1:probMap:meta:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild target texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectClusterBgAvgToCommandEncoder:clusterMetaBuf:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectClusterBgAvgToCommandEncoder:clusterMetaBuf:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild clusterMetaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBilinearRescaleYUV:fullResInput:input:meta:blurBeforeSample:output:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBilinearRescaleYUV:fullResInput:input:meta:blurBeforeSample:output:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild output texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBilinearRescaleYUV:fullResInput:input:meta:blurBeforeSample:output:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBilinearRescaleYUV:fullResInput:input:meta:blurBeforeSample:output:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild fullResInput texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild output1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input1 buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild output0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild fullResInput texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateReflLsMap:inputYUV:lsMap:dilatedLsMap:hardDilationRadius:softDilationRadius:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateReflLsMap:inputYUV:lsMap:dilatedLsMap:hardDilationRadius:softDilationRadius:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild dilatedLsMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateReflLsMap:inputYUV:lsMap:dilatedLsMap:hardDilationRadius:softDilationRadius:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild lsMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateReflLsMap:inputYUV:lsMap:dilatedLsMap:hardDilationRadius:softDilationRadius:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild inputYUV texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetBlobSaliency:inputYUV:blobSaliencyMap:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetBlobSaliency:inputYUV:blobSaliencyMap:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild blobSaliencyMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetBlobSaliency:inputYUV:blobSaliencyMap:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild inputYUV texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeSpatialRepairYUVToCommandEncoder:input:probMap4Spatial:spatialOutput:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeSpatialRepairYUVToCommandEncoder:input:probMap4Spatial:spatialOutput:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild spatialOutput texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeSpatialRepairYUVToCommandEncoder:input:probMap4Spatial:spatialOutput:metaBuf:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild probMap4Spatial texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeSpatialRepairYUVToCommandEncoder:input:probMap4Spatial:spatialOutput:metaBuf:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild inputCopy texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild temporalOutput texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild frRef1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild frRef0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outputTexture texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild spatialMitTexture texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild temporalMitTexture texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild probMapTexture texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild inputTexture texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectClusterTempRepairErr:clusterMetaBuf:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectClusterTempRepairErr:clusterMetaBuf:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild clusterMetaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectClusterMv:clusterMetaBuf:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectClusterMv:clusterMetaBuf:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild clusterMetaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild upscaledRefinedProbMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild upscaledProbMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild inputFrame texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild refinedProbMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild probMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeUpscaleThenReflectLsMap:input:normalizedCenter:output:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild output texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeUpscaleThenReflectLsMap:input:normalizedCenter:output:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetOverlapWithRefs:input:probMap:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetOverlapWithRefs:input:probMap:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild probMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetOverlapWithRefs:input:probMap:metaBuf:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectClusterOverlapWithRefs:clusterMetaBuf:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectClusterOverlapWithRefs:clusterMetaBuf:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild clusterMetaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodePreprocessInputs4MotionCueYUVToCommandEncoder:input:ref:output:refOutput:metaBuf:processedFrameCount:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodePreprocessInputs4MotionCueYUVToCommandEncoder:input:ref:output:refOutput:metaBuf:processedFrameCount:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild refOutput texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodePreprocessInputs4MotionCueYUVToCommandEncoder:input:ref:output:refOutput:metaBuf:processedFrameCount:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild output texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodePreprocessInputs4MotionCueYUVToCommandEncoder:input:ref:output:refOutput:metaBuf:processedFrameCount:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild ref texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodePreprocessInputs4MotionCueYUVToCommandEncoder:input:ref:output:refOutput:metaBuf:processedFrameCount:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectMvToFuture:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpRefMeta:refMetaBuf:metaBuf:outMetaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:capRefMetaCnt:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild redoTrackingOutmetaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpRefMeta:refMetaBuf:metaBuf:outMetaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:capRefMetaCnt:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild lsCheckOutmetaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpRefMeta:refMetaBuf:metaBuf:outMetaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:capRefMetaCnt:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outMetaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpRefMeta:refMetaBuf:metaBuf:outMetaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:capRefMetaCnt:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpRefMeta:refMetaBuf:metaBuf:outMetaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:capRefMetaCnt:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild refMetaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectMetaContainers:metaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:currTrackId:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild redoTrackingOutmetaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectMetaContainers:metaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:currTrackId:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild lsCheckOutmetaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectMetaContainers:metaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:currTrackId:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeRefineFutureHwLsMapWithTrackingToEncoder:reflHwMap:target:opticalCenter:warpedRefReflHwMap:warpedReflRef:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeRefineFutureHwLsMapWithTrackingToEncoder:reflHwMap:target:opticalCenter:warpedRefReflHwMap:warpedReflRef:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild warpedReflRef texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeRefineFutureHwLsMapWithTrackingToEncoder:reflHwMap:target:opticalCenter:warpedRefReflHwMap:warpedReflRef:metaBuf:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild warpedRefReflHwMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeRefineFutureHwLsMapWithTrackingToEncoder:reflHwMap:target:opticalCenter:warpedRefReflHwMap:warpedReflRef:metaBuf:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild target texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeRefineFutureHwLsMapWithTrackingToEncoder:reflHwMap:target:opticalCenter:warpedRefReflHwMap:warpedReflRef:metaBuf:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild reflHwMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCopyCurrMetaForProcFuture:metaBuf:outMetaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outMetaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCopyCurrMetaForProcFuture:metaBuf:outMetaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectClusterMaxProb:clusterMetaBuf:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectClusterMaxProb:clusterMetaBuf:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild clusterMetaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeSyncWeightsOriginal:clusterMetaBuf:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeSyncWeightsOriginal:clusterMetaBuf:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild clusterMetaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetRoiMaxAndAvgLumaYUV:target:lsMap:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetRoiMaxAndAvgLumaYUV:target:lsMap:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild lsMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetRoiMaxAndAvgLumaYUV:target:lsMap:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild target texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectClusterMaxAndAvgLuma:clusterMetaBuf:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectClusterMaxAndAvgLuma:clusterMetaBuf:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild clusterMetaBuf texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetMvFromLsToCommandEncoder:target:lsMap:refLsMap:targetCenter:refCenter:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetMvFromLsToCommandEncoder:target:lsMap:refLsMap:targetCenter:refCenter:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild refLsMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetMvFromLsToCommandEncoder:target:lsMap:refLsMap:targetCenter:refCenter:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild lsMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetMvFromLsToCommandEncoder:target:lsMap:refLsMap:targetCenter:refCenter:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild target texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeConditionalDilateProbMapYUV:inputYUV:probMap:dilatedProbMap:hardDilationRadius:softDilationRadius:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeConditionalDilateProbMapYUV:inputYUV:probMap:dilatedProbMap:hardDilationRadius:softDilationRadius:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild dilatedProbMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeConditionalDilateProbMapYUV:inputYUV:probMap:dilatedProbMap:hardDilationRadius:softDilationRadius:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild probMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeConditionalDilateProbMapYUV:inputYUV:probMap:dilatedProbMap:hardDilationRadius:softDilationRadius:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild inputYUV texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCopyMapToMap4RoiGenToCommandEncoder:input:output:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCopyMapToMap4RoiGenToCommandEncoder:input:output:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild output texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCopyMapToMap4RoiGenToCommandEncoder:input:output:metaBuf:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCopyFullFrameMapToMap4RoiGenToCommandEncoder:input:output:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild output texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCopyFullFrameMapToMap4RoiGenToCommandEncoder:input:output:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpRefMetaLite:refMetaBuf:outMetaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outMetaBuf texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpRefMetaLite:refMetaBuf:outMetaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild refMetaBuf texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outputTexture texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild dlSpatialMitTexture texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild tradSpatialMitTexture texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild probMap4TradSpatialTexture texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild probMapTexture texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:.cold.7()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild inputTexture texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild output1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild output0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild bmRef1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild bmRef0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild hmgrphyRef1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:.cold.7()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild hmgrphyRef0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild alignedRef1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild alignedRef0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild ref1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild ref0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeResetOutputToCommandEncoder:input:meta:output0:output1:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outputBuffer1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeResetOutputToCommandEncoder:input:meta:output0:output1:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outputBuffer0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeResetOutputToCommandEncoder:input:meta:output0:output1:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeResetOutputToCommandEncoder:input:meta:output0:output1:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outputBuffer1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outputBuffer0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild flow1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild flow0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:.cold.7()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeConvertFloatBuffer2TextureToCommandEncoder:inputBuffer0:inputBuffer1:meta:output0:outputMap0:output1:outputMap1:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outputMap1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeConvertFloatBuffer2TextureToCommandEncoder:inputBuffer0:inputBuffer1:meta:output0:outputMap0:output1:outputMap1:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outputMap0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeConvertFloatBuffer2TextureToCommandEncoder:inputBuffer0:inputBuffer1:meta:output0:outputMap0:output1:outputMap1:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeConvertFloatBuffer2TextureToCommandEncoder:inputBuffer0:inputBuffer1:meta:output0:outputMap0:output1:outputMap1:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild inputBuffer1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeConvertFloatBuffer2TextureToCommandEncoder:inputBuffer0:inputBuffer1:meta:output0:outputMap0:output1:outputMap1:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild inputBuffer0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outputMap1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild inputMap1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outputMap0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild inputMap0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild fullResTarget texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outMvf texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild mvf2 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild mvf1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild mvf0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild fullResTarget texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpMvf0WithMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpMvf0WithMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outMvf texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpMvf0WithMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild mvf1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpMvf0WithMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild mvf0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeWarpMvf0WithMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild fullResTarget texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeAddMvf0ToMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeAddMvf0ToMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outMvf texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeAddMvf0ToMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild mvf1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeAddMvf0ToMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild mvf0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeAddMvf0ToMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild fullResTarget texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outMvf1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild mvf1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outMvf0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild mvf0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild fullResTarget texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeVisualizeMvfToCommandEncoder:fullResTarget:mvf:outMvf:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeVisualizeMvfToCommandEncoder:fullResTarget:mvf:outMvf:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild outMvf texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeVisualizeMvfToCommandEncoder:fullResTarget:mvf:outMvf:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild mvf texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeVisualizeMvfToCommandEncoder:fullResTarget:mvf:outMvf:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild fullResTarget texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetRoiRepairMvFromMvfToCommandEncoder:fullResInput:probMap:mvf0:mvf1:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetRoiRepairMvFromMvfToCommandEncoder:fullResInput:probMap:mvf0:mvf1:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild mvf1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetRoiRepairMvFromMvfToCommandEncoder:fullResInput:probMap:mvf0:mvf1:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild mvf0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetRoiRepairMvFromMvfToCommandEncoder:fullResInput:probMap:mvf0:mvf1:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild probMap texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetRoiRepairMvFromMvfToCommandEncoder:fullResInput:probMap:mvf0:mvf1:meta:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild fullResInput texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild warpedRef1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild ref1 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:.cold.4()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild warpedRef0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:.cold.5()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild ref0 texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:.cold.6()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild fullResInput texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetMvToFutureFromMvf:fullResInput:meta:mvf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild mvf texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetMvToFutureFromMvf:fullResInput:meta:mvf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetMvToFutureFromMvf:fullResInput:meta:mvf:.cold.3()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild fullResInput texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetMvForMotionCueFromMvf:fullResInput:meta:mvf:opticalCenter:refOpticalCenter:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild meta buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetMvForMotionCueFromMvf:fullResInput:meta:mvf:opticalCenter:refOpticalCenter:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild fullResInput texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectClusterMvForMotionCueToCommandEncoder:clusterMetaBuf:metaBuf:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild metaBuf buffer", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeCollectClusterMvForMotionCueToCommandEncoder:clusterMetaBuf:metaBuf:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild clusterMetaBuf texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetLsMapYUVToCommandEncoder:input:map:.cold.1()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild map texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

- (void)encodeGetLsMapYUVToCommandEncoder:input:map:.cold.2()
{
  OUTLINED_FUNCTION_0_25();
  if ((v0 & 2) != 0 && OUTLINED_FUNCTION_5_6())
  {
    OUTLINED_FUNCTION_1_25(&dword_24874B000, v1, v2, "%s : Invaild input texture", v3, v4, v5, v6, 2u);
  }

  OUTLINED_FUNCTION_1_29();
}

@end