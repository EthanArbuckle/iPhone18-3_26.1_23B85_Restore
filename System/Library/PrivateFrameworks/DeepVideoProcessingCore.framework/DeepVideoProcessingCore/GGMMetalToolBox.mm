@interface GGMMetalToolBox
- ($D341E8FA52B8DFDE89B90A050A6B59DC)generateMetaContainerArrayBufFromMetaContainerBuf:(id)buf imageRect:(CGRect)rect;
- (GGMMetalToolBox)initWithMetalContext:(id)context commandQueue:(id)queue;
- (GGMMetalToolBox)initWithMetalContext:(id)context commandQueue:(id)queue tuningParamDict:(id)dict;
- (id)clusterIndicesOfRois:(id *)rois withExtendedRadius:(float)radius roiCnt:(signed __int16)cnt imageRect:(CGRect)rect;
- (id)createForwarpOutputBufferWidth:(unint64_t)width height:(unint64_t)height channels:(unint64_t)channels;
- (int)_compileShaders;
- (int64_t)encodeAddMvf0ToMvf1ToCommandEncoder:(id)encoder fullResTarget:(id)target mvf0:(id)mvf0 mvf1:(id)mvf1 outMvf:(id)mvf meta:(id)meta;
- (int64_t)encodeAlignBgAvgYUVToCommandEncoder:(id)encoder input:(id)input ref0:(id)ref0 ref1:(id)ref1 alignedRef0:(id)alignedRef0 alignedRef1:(id)alignedRef1 metaBuf:(id)buf;
- (int64_t)encodeBMSearch1RefToCommandEncoder:(GGMMetalToolBox *)self target:(SEL)target ref:(id)ref reflect:(id)reflect normalizedTargetCenter:(id)center normalizedRefCenter:(BOOL)refCenter bestMatchLoc:(id)loc meta:(id)meta;
- (int64_t)encodeBMSearch4RepairToCommandEncoder:(id)encoder hrTarget:(id)target target:(id)a5 ref0:(id)ref0 ref1:(id)ref1 forwarpHoleMap0:(id)map0 forwarpHoleMap1:(id)map1 probMap:(id)self0 mvf0:(id)self1 mvf1:(id)self2 meta:(id)self3;
- (int64_t)encodeBMTransfer4RepairYUVToCommandEncoder:(id)encoder ref0:(id)ref0 ref1:(id)ref1 forwarpHoleMap0:(id)map0 forwarpHoleMap1:(id)map1 probMap:(id)map warpedRef0:(id)warpedRef0 warpedRef1:(id)self0 bmMvf0:(id)self1 bmMvf1:(id)self2 backwarpFlow0:(id)self3 backwarpFlow1:(id)self4 meta:(id)self5;
- (int64_t)encodeBMTransferGrayToCommandEncoder:(id)encoder ref:(id)ref warpedRef:(id)warpedRef bestMatchLoc:(id)loc meta:(id)meta sf:(int)sf;
- (int64_t)encodeBMTransferYUVToCommandEncoder:(id)encoder ref:(id)ref reflect:(BOOL)reflect normalizedCenter:(id)center warpedRef:(id)warpedRef bestMatchLoc:(id)loc meta:(int)meta sf:;
- (int64_t)encodeBilinearRescale2ImgsYUV:(id)v fullResInput:(id)input input0:(id)input0 output0:(id)output0 input1:(id)input1 output1:(id)output1 meta:(id)meta;
- (int64_t)encodeBilinearRescaleYUV:(id)v fullResInput:(id)input input:(id)a5 meta:(id)meta blurBeforeSample:(BOOL)sample output:(id)output;
- (int64_t)encodeBlendRefsYUVToCommandEncoder:(id)encoder hmgrphyRef0:(id)ref0 hmgrphyRef1:(id)ref1 bmRef0:(id)bmRef0 bmRef1:(id)bmRef1 output0:(id)output0 output1:(id)output1 metaBuf:(id)self0;
- (int64_t)encodeBlendSpatialMitigatedYUVToCommandEncoder:(id)encoder inputTexture:(id)texture probMapTexture:(id)mapTexture probMap4TradSpatialTexture:(id)spatialTexture tradSpatialMitTexture:(id)mitTexture dlSpatialMitTexture:(id)spatialMitTexture outputTexture:(id)outputTexture metaBuf:(id)self0;
- (int64_t)encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:(id)encoder fullResInput:(id)input ref0:(id)ref0 warpedRef0:(id)warpedRef0 ref1:(id)ref1 warpedRef1:(id)warpedRef1 meta:(id)meta;
- (int64_t)encodeCollectClusterBgAvgToCommandEncoder:(id)encoder clusterMetaBuf:(id)buf metaBuf:(id)metaBuf;
- (int64_t)encodeCollectClusterMaxAndAvgLuma:(id)luma clusterMetaBuf:(id)buf metaBuf:(id)metaBuf;
- (int64_t)encodeCollectClusterMaxProb:(id)prob clusterMetaBuf:(id)buf metaBuf:(id)metaBuf;
- (int64_t)encodeCollectClusterMv:(id)mv clusterMetaBuf:(id)buf metaBuf:(id)metaBuf;
- (int64_t)encodeCollectClusterMvForMotionCueToCommandEncoder:(id)encoder clusterMetaBuf:(id)buf metaBuf:(id)metaBuf;
- (int64_t)encodeCollectClusterOverlapWithRefs:(id)refs clusterMetaBuf:(id)buf metaBuf:(id)metaBuf;
- (int64_t)encodeCollectClusterTempRepairErr:(id)err clusterMetaBuf:(id)buf metaBuf:(id)metaBuf;
- (int64_t)encodeCollectMetaContainers:(id)containers metaBuf:(id)buf lsCheckOutmetaBuf:(id)outmetaBuf redoTrackingOutmetaBuf:(id)trackingOutmetaBuf currTrackId:(int)id;
- (int64_t)encodeCollectMvToFuture:(id)future metaBuf:(id)buf;
- (int64_t)encodeCombineMapWithRefMapToEncoder:(id)encoder map:(id)map ref:(id)ref dilatedRef:(id)dilatedRef lsMap:(id)lsMap dilatedLsMap:(id)dilatedLsMap refLsMap:(id)refLsMap motion:(id)self0 saliency:(id)self1 targetFrameYUV:(id)self2 blobSaliency:(id)self3 spaRef:(id)self4 mvf:(id)self5 output:(id)self6 spaOutput:(id)self7 meta:(id)self8 wRef:(float)self9;
- (int64_t)encodeConditionalDilateProbMapYUV:(id)v inputYUV:(id)uV probMap:(id)map dilatedProbMap:(id)probMap hardDilationRadius:(float)radius softDilationRadius:(float)dilationRadius meta:(id)meta;
- (int64_t)encodeConvertFloatBuffer2TextureToCommandEncoder:(id)encoder inputBuffer0:(id)buffer0 inputBuffer1:(id)buffer1 meta:(id)meta output0:(id)output0 outputMap0:(id)map0 output1:(id)output1 outputMap1:(id)self0;
- (int64_t)encodeCopyCurrMetaForProcFuture:(id)future metaBuf:(id)buf outMetaBuf:(id)metaBuf;
- (int64_t)encodeCopyFullFrameMapToMap4RoiGenToCommandEncoder:(id)encoder input:(id)input output:(id)output;
- (int64_t)encodeCopyMapToMap4RoiGenToCommandEncoder:(id)encoder input:(id)input output:(id)output metaBuf:(id)buf;
- (int64_t)encodeCopyMvfToCommandEncoder:(id)encoder fullResTarget:(id)target mvf0:(id)mvf0 outMvf0:(id)outMvf0 mvf1:(id)mvf1 outMvf1:(id)outMvf1 meta:(id)meta;
- (int64_t)encodeDilateForwarpHoleMap:(id)map fullResTarget:(id)target inputMap0:(id)map0 outputMap0:(id)outputMap0 inputMap1:(id)map1 outputMap1:(id)outputMap1 hardDilationRadius:(float)radius softDilationRadius:(float)self0 meta:(id)self1;
- (int64_t)encodeDilateGrayImg:(id)img input:(id)input output:(id)output hardDilationOutput:(id)dilationOutput hardDilationRadius:(float)radius softDilationRadius:(float)dilationRadius meta:(id)meta;
- (int64_t)encodeDilateProbMap:(id)map input:(id)input output:(id)output hardDilationRadius:(float)radius softDilationRadius:(float)dilationRadius meta:(id)meta;
- (int64_t)encodeDilateReflLsMap:(id)map inputYUV:(id)v lsMap:(id)lsMap dilatedLsMap:(id)dilatedLsMap hardDilationRadius:(float)radius softDilationRadius:(float)dilationRadius meta:(id)meta;
- (int64_t)encodeForwarpYUVToCommandEncoder:(id)encoder input0:(id)input0 input1:(id)input1 meta:(id)meta mvf0:(id)mvf0 mvf1:(id)mvf1 intermediateOutput0:(id)output0 intermediateOutput1:(id)self0 output0:(id)self1 output1:(id)self2 outputMap0:(id)self3 outputMap1:(id)self4;
- (int64_t)encodeFuse4DetectionYUVToCommandEncoder:(id)encoder inputTexture:(id)texture probMapTexture:(id)mapTexture temporalMitTexture:(id)mitTexture spatialMitTexture:(id)spatialMitTexture forceToSpatial:(BOOL)spatial outputTexture:(id)outputTexture metaBuf:(id)self0;
- (int64_t)encodeGetBgAvgYUVToCommandEncoder:(id)encoder target:(id)target ref0:(id)ref0 ref1:(id)ref1 probMap:(id)map meta:(id)meta;
- (int64_t)encodeGetBlobSaliency:(id)saliency inputYUV:(id)v blobSaliencyMap:(id)map meta:(id)meta;
- (int64_t)encodeGetGhostProbMapToCommandEncoder:(id)encoder target:(id)target reflLsMap:(id)map motionMap:(id)motionMap saliencyMap:(id)saliencyMap isInitFrame:(BOOL)frame probMap:(id)probMap meta:(id)self0;
- (int64_t)encodeGetLsMapYUVToCommandEncoder:(id)encoder input:(id)input map:(id)map;
- (int64_t)encodeGetMotionMapYUVToCommandEncoder:(id)encoder ref:(id)ref target:(id)target motionMap:(id)map meta:(id)meta;
- (int64_t)encodeGetMvForMotionCueFromMvf:(GGMMetalToolBox *)self fullResInput:(SEL)input meta:(id)meta mvf:(id)mvf opticalCenter:(id)center refOpticalCenter:(id)opticalCenter;
- (int64_t)encodeGetMvFromLsToCommandEncoder:(GGMMetalToolBox *)self target:(SEL)target lsMap:(id)map refLsMap:(id)lsMap targetCenter:(id)center refCenter:(id)refCenter meta:(id)meta;
- (int64_t)encodeGetMvToFutureFromMvf:(id)mvf fullResInput:(id)input meta:(id)meta mvf:(id)a6;
- (int64_t)encodeGetOverlapWithRefs:(id)refs input:(id)input probMap:(id)map metaBuf:(id)buf;
- (int64_t)encodeGetRoiMaxAndAvgLumaYUV:(id)v target:(id)target lsMap:(id)map meta:(id)meta;
- (int64_t)encodeGetRoiRepairMvFromMvfToCommandEncoder:(id)encoder fullResInput:(id)input probMap:(id)map mvf0:(id)mvf0 mvf1:(id)mvf1 meta:(id)meta;
- (int64_t)encodeGetSaliencyMapToCommandEncoder:(id)encoder target:(id)target saliencyMap:(id)map meta:(id)meta;
- (int64_t)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:(id)encoder target:(id)target hmgrphyRef0:(id)ref0 hmgrphyRef1:(id)ref1 bmRef0:(id)bmRef0 bmRef1:(id)bmRef1 probMap:(id)map errRescaleProbMap:(id)self0 prevProbMap:(id)self1 flow0:(id)self2 flow1:(id)self3 meta:(id)self4;
- (int64_t)encodePreprocessInputs4MotionCueYUVToCommandEncoder:(id)encoder input:(id)input ref:(id)ref output:(id)output refOutput:(id)refOutput metaBuf:(id)buf processedFrameCount:(int)count;
- (int64_t)encodeRefineFutureHwLsMapWithTrackingToEncoder:(id)encoder reflHwMap:(id)map target:(id)target opticalCenter:(id)center warpedRefReflHwMap:(id)hwMap warpedReflRef:(id)ref metaBuf:;
- (int64_t)encodeReflectYUVImg2:(GGMMetalToolBox *)self fullResInput:(SEL)input meta:(id)meta input0:(id)input0 output0:(id)output0 center0:(id)center0 input1:(id)input1 output1:(id)output1 center1:(id)center1;
- (int64_t)encodeResetOutputToCommandEncoder:(id)encoder input:(id)input meta:(id)meta output0:(id)output0 output1:(id)output1;
- (int64_t)encodeSpatialRepairYUVToCommandEncoder:(id)encoder input:(id)input probMap4Spatial:(id)spatial spatialOutput:(id)output metaBuf:(id)buf;
- (int64_t)encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:(id)encoder input:(id)input frRef0:(id)ref0 frRef1:(id)ref1 temporalOutput:(id)output inputCopy:(id)copy metaBuf:(id)buf;
- (int64_t)encodeSyncWeightsOriginal:(id)original clusterMetaBuf:(id)buf metaBuf:(id)metaBuf;
- (int64_t)encodeUpdateOutputFloatToCommandEncoder:(id)encoder input0:(id)input0 flow0:(id)flow0 input1:(id)input1 flow1:(id)flow1 meta:(id)meta output0:(id)output0 output1:(id)self0;
- (int64_t)encodeUpscaleProbMap:(id)map probMap:(id)probMap refinedProbMap:(id)refinedProbMap inputFrame:(id)frame upscaledProbMap:(id)upscaledProbMap upscaledRefinedProbMap:(id)upscaledRefinedProbMap meta:(id)meta;
- (int64_t)encodeUpscaleThenReflectLsMap:(id)map input:(id)input normalizedCenter:(id)center output:;
- (int64_t)encodeVisualizeMvfToCommandEncoder:(id)encoder fullResTarget:(id)target mvf:(id)mvf outMvf:(id)outMvf meta:(id)meta;
- (int64_t)encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:(id)encoder fullResTarget:(id)target mvf0:(id)mvf0 mvf1:(id)mvf1 mvf2:(id)mvf2 outMvf:(id)mvf meta:(id)meta;
- (int64_t)encodeWarpMvf0WithMvf1ToCommandEncoder:(id)encoder fullResTarget:(id)target mvf0:(id)mvf0 mvf1:(id)mvf1 outMvf:(id)mvf meta:(id)meta;
- (int64_t)encodeWarpRefMeta:(id)meta refMetaBuf:(id)buf metaBuf:(id)metaBuf outMetaBuf:(id)outMetaBuf lsCheckOutmetaBuf:(id)outmetaBuf redoTrackingOutmetaBuf:(id)trackingOutmetaBuf capRefMetaCnt:(BOOL)cnt;
- (int64_t)encodeWarpRefMetaLite:(id)lite refMetaBuf:(id)buf outMetaBuf:(id)metaBuf;
- (int64_t)resizeImageCmdBuf:(id)buf inputTexture:(id)texture withFactorX:(float)x withFactorY:(float)y outputTexture:(id)outputTexture;
- (void)dealloc;
- (void)rescaleMetaContainerBuffer:(id)buffer sf:(float)sf sfInv:(float)inv;
- (void)updateMetaContainerBuffer:(id)buffer withDetectedROI:(id)i isLowLight:(BOOL)light opticalCenter:(float)center opticalCenterShift:;
@end

@implementation GGMMetalToolBox

- (GGMMetalToolBox)initWithMetalContext:(id)context commandQueue:(id)queue tuningParamDict:(id)dict
{
  dict = [(GGMMetalToolBox *)self initWithMetalContext:context commandQueue:queue, dict];
  v6 = dict;
  if (dict)
  {
    [(GGMMetalToolBox *)dict setRepairTuningParams:&dict->_tuningParams];
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

- (void)updateMetaContainerBuffer:(id)buffer withDetectedROI:(id)i isLowLight:(BOOL)light opticalCenter:(float)center opticalCenterShift:
{
  v7 = v6;
  v8 = *&center;
  iCopy = i;
  contents = [buffer contents];
  *(contents + 8232) = light;
  *(contents + 11824) = v8;
  *(contents + 71232) = v7;
  if ([iCopy count])
  {
    v14 = 0;
    *&v13 = vneg_f32(0x80000000800000);
    v32 = v13;
    v15 = (contents + 56);
    *&v13 = 0x80000000800000;
    v33 = v13;
    while (1)
    {
      v16 = [iCopy objectAtIndexedSubscript:v14];
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
      *(contents + 8236 + 4 * v14) = [v16 trackID];
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
      if (v14 >= [iCopy count])
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

  *contents = v14;
  *(contents + 2) = v14;
  *(contents + 8) = v32;
  *(contents + 12) = v27;
  *(contents + 16) = DWORD1(v32);
  *(contents + 20) = v28;
  *(contents + 24) = (v27 - *&v32);
  *(contents + 28) = (v28 - *(&v32 + 1));
  v29 = vaddq_f64(vcvtq_f64_f32(*&v32), vdupq_n_s64(0xC050000000000000));
  *&v29.f64[0] = vmovn_s64(vcvtq_s64_f64(vbicq_s8(v29, vcltzq_f64(v29))));
  *(contents + 32) = *&vsra_n_u32(*&v29.f64[0], vcltz_s32(*&v29.f64[0]), 0x1EuLL) & 0xFFFFFFFCFFFFFFFCLL;
}

- (void)rescaleMetaContainerBuffer:(id)buffer sf:(float)sf sfInv:(float)inv
{
  v10 = *&inv;
  contents = [buffer contents];
  *(contents + 1478) = vmul_n_f32(*(contents + 5912), *v10.i32);
  v6 = *contents;
  if (*contents)
  {
    v7 = (contents + 28);
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

  *(contents + 4) = vmulq_n_f32(*(contents + 4), *v10.i32);
  v9 = vcvt_s32_f32(vmul_n_f32(vcvt_f32_s32(*(contents + 16)), *v10.i32));
  *(contents + 3) = vcvt_u32_f32(vmul_f32(*&vdupq_lane_s32(v10, 0), vcvt_f32_u32(*(contents + 12))));
  *(contents + 4) = *&vsra_n_u32(v9, vcltz_s32(v9), 0x1EuLL) & 0xFFFFFFFCFFFFFFFCLL;
}

- (id)clusterIndicesOfRois:(id *)rois withExtendedRadius:(float)radius roiCnt:(signed __int16)cnt imageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  cntCopy = cnt;
  v13 = 0x277CBE000uLL;
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v68 = v15;
  if (cntCopy < 1)
  {
    v33 = v14;
  }

  else
  {
    v16 = v15;
    v17 = 0;
    v18 = cntCopy;
    p_var2 = &rois->var2;
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
      v70.origin.x = (v20 - radius);
      v70.origin.y = (v21 - radius);
      v27 = v24 - v20;
      height = v22;
      v70.size.width = (v27 + (radius * 2.0));
      v28 = v25 - v21;
      width = v23;
      v70.size.height = (v28 + (radius * 2.0));
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
          index2RoiArray = [v61 index2RoiArray];
          v63 = [MEMORY[0x277CCABB0] numberWithInt:index2RoiArray];
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

- (int64_t)encodeBMSearch1RefToCommandEncoder:(GGMMetalToolBox *)self target:(SEL)target ref:(id)ref reflect:(id)reflect normalizedTargetCenter:(id)center normalizedRefCenter:(BOOL)refCenter bestMatchLoc:(id)loc meta:(id)meta
{
  v12 = v9;
  v13 = v8;
  refCopy = ref;
  reflectCopy = reflect;
  centerCopy = center;
  refCenterCopy = refCenter;
  v31 = v12;
  v32 = v13;
  locCopy = loc;
  metaCopy = meta;
  v23 = metaCopy;
  if (!reflectCopy)
  {
    [GGMMetalToolBox encodeBMSearch1RefToCommandEncoder:target:ref:reflect:normalizedTargetCenter:normalizedRefCenter:bestMatchLoc:meta:];
LABEL_9:
    v25 = v29;
    goto LABEL_5;
  }

  if (!centerCopy)
  {
    [GGMMetalToolBox encodeBMSearch1RefToCommandEncoder:target:ref:reflect:normalizedTargetCenter:normalizedRefCenter:bestMatchLoc:meta:];
    goto LABEL_9;
  }

  if (!locCopy)
  {
    [GGMMetalToolBox encodeBMSearch1RefToCommandEncoder:target:ref:reflect:normalizedTargetCenter:normalizedRefCenter:bestMatchLoc:meta:];
    goto LABEL_9;
  }

  v24 = *[metaCopy contents] & 0x1FFFFFFFFFFFFFFFLL;
  [refCopy setComputePipelineState:self->_bmSearch1RefFixedSampleCntYUV];
  [refCopy setTexture:reflectCopy atIndex:0];
  [refCopy setTexture:centerCopy atIndex:1];
  [refCopy setBytes:&refCenterCopy length:1 atIndex:1];
  [refCopy setBytes:&v32 length:8 atIndex:2];
  [refCopy setBytes:&v31 length:8 atIndex:3];
  [refCopy setBuffer:v23 offset:0 atIndex:0];
  v29 = v24;
  v30 = vdupq_n_s64(1uLL);
  v27 = 8;
  v28 = xmmword_2487C3BF0;
  [refCopy dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  v25 = 0;
LABEL_5:

  return v25;
}

- (int64_t)encodeBMSearch4RepairToCommandEncoder:(id)encoder hrTarget:(id)target target:(id)a5 ref0:(id)ref0 ref1:(id)ref1 forwarpHoleMap0:(id)map0 forwarpHoleMap1:(id)map1 probMap:(id)self0 mvf0:(id)self1 mvf1:(id)self2 meta:(id)self3
{
  encoderCopy = encoder;
  targetCopy = target;
  v42 = a5;
  ref0Copy = ref0;
  ref1Copy = ref1;
  map0Copy = map0;
  map1Copy = map1;
  mapCopy = map;
  mvf0Copy = mvf0;
  mvf1Copy = mvf1;
  metaCopy = meta;
  v25 = metaCopy;
  if (!targetCopy)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    v37 = ref1Copy;
    v38 = v49[0];
    v27 = mvf1Copy;
    v26 = v42;
    goto LABEL_12;
  }

  v26 = v42;
  if (!v42)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
LABEL_21:
    v37 = ref1Copy;
    v38 = v49[0];
LABEL_22:
    v27 = mvf1Copy;
    goto LABEL_12;
  }

  if (!ref0Copy)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    goto LABEL_21;
  }

  if (!ref1Copy)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    goto LABEL_21;
  }

  if (!map0Copy)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    goto LABEL_21;
  }

  if (!map1Copy)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    goto LABEL_21;
  }

  if (!mapCopy)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    goto LABEL_21;
  }

  if (!mvf0Copy)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    goto LABEL_21;
  }

  v27 = mvf1Copy;
  if (!mvf1Copy)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    v37 = ref1Copy;
    v38 = v49[0];
    goto LABEL_12;
  }

  v40 = mapCopy;
  v28 = ref1Copy;
  if (!metaCopy)
  {
    [GGMMetalToolBox encodeBMSearch4RepairToCommandEncoder:hrTarget:target:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:mvf0:mvf1:meta:];
    v38 = v49[0];
    v37 = v28;
    mapCopy = v40;
    goto LABEL_22;
  }

  contents = [metaCopy contents];
  v43 = mvf0Copy;
  v53[0] = [targetCopy width];
  height = [targetCopy height];
  width = [v42 width];
  height2 = [v42 height];
  v31.f32[0] = width;
  v31.f32[1] = height2;
  v32.f32[0] = v53[0];
  v32.f32[1] = height;
  v33 = vdiv_f32(v31, v32);
  v32.i32[0] = *(contents + 24);
  LODWORD(v34) = *(contents + 28);
  v35 = (((v32 + 128.0 + 4.0) * v33.f32[0] + 8.0 + -1.0) * 0.125);
  v50 = height2;
  v36 = (((v34 + 128.0 + 4.0) * v33.f32[1] + 8.0 + -1.0) * 0.125);
  [encoderCopy setComputePipelineState:self->_bmSearch4RepairYUV];
  [encoderCopy setTexture:v42 atIndex:0];
  [encoderCopy setTexture:ref0Copy atIndex:1];
  v37 = v28;
  [encoderCopy setTexture:v28 atIndex:2];
  [encoderCopy setTexture:map0Copy atIndex:3];
  [encoderCopy setTexture:map1Copy atIndex:4];
  mapCopy = v40;
  [encoderCopy setTexture:v40 atIndex:5];
  [encoderCopy setTexture:v43 atIndex:6];
  v27 = mvf1Copy;
  [encoderCopy setTexture:mvf1Copy atIndex:7];
  [encoderCopy setBytes:&width length:4 atIndex:1];
  [encoderCopy setBytes:&v50 length:4 atIndex:2];
  [encoderCopy setBytes:v53 length:4 atIndex:3];
  [encoderCopy setBytes:&height length:4 atIndex:4];
  [encoderCopy setBuffer:v25 offset:0 atIndex:0];
  v49[0] = v35;
  v49[1] = v36;
  mvf0Copy = v43;
  v49[2] = 1;
  v47 = vdupq_n_s64(8uLL);
  v48 = 1;
  [encoderCopy dispatchThreadgroups:v49 threadsPerThreadgroup:&v47];
  v38 = 0;
LABEL_12:

  return v38;
}

- (int64_t)encodeBMTransfer4RepairYUVToCommandEncoder:(id)encoder ref0:(id)ref0 ref1:(id)ref1 forwarpHoleMap0:(id)map0 forwarpHoleMap1:(id)map1 probMap:(id)map warpedRef0:(id)warpedRef0 warpedRef1:(id)self0 bmMvf0:(id)self1 bmMvf1:(id)self2 backwarpFlow0:(id)self3 backwarpFlow1:(id)self4 meta:(id)self5
{
  encoderCopy = encoder;
  ref0Copy = ref0;
  ref1Copy = ref1;
  map0Copy = map0;
  map1Copy = map1;
  mapCopy = map;
  warpedRef0Copy = warpedRef0;
  warpedRef1Copy = warpedRef1;
  mvf0Copy = mvf0;
  mvf1Copy = mvf1;
  flow0Copy = flow0;
  flow1Copy = flow1;
  metaCopy = meta;
  v27 = metaCopy;
  v40 = ref0Copy;
  if (!ref0Copy)
  {
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    v39 = v49[0];
    v28 = mapCopy;
    v29 = map1Copy;
LABEL_22:
    v36 = mvf0Copy;
    v30 = warpedRef1Copy;
    goto LABEL_14;
  }

  v28 = mapCopy;
  if (!ref1Copy)
  {
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    v39 = v49[0];
    v29 = map1Copy;
    goto LABEL_22;
  }

  v29 = map1Copy;
  if (!map0Copy)
  {
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
LABEL_21:
    v39 = v49[0];
    goto LABEL_22;
  }

  if (!map1Copy)
  {
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    goto LABEL_21;
  }

  if (!mapCopy)
  {
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    goto LABEL_21;
  }

  if (!warpedRef0Copy)
  {
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    goto LABEL_21;
  }

  v30 = warpedRef1Copy;
  if (!warpedRef1Copy)
  {
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    v39 = v49[0];
LABEL_30:
    v36 = mvf0Copy;
    goto LABEL_14;
  }

  if (!mvf0Copy)
  {
    v36 = 0;
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
LABEL_28:
    v39 = v49[0];
    goto LABEL_14;
  }

  if (!mvf1Copy)
  {
    v36 = mvf0Copy;
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    goto LABEL_28;
  }

  if (!flow0Copy)
  {
    v36 = mvf0Copy;
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    goto LABEL_28;
  }

  if (!flow1Copy)
  {
    v36 = mvf0Copy;
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    goto LABEL_28;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeBMTransfer4RepairYUVToCommandEncoder:ref0:ref1:forwarpHoleMap0:forwarpHoleMap1:probMap:warpedRef0:warpedRef1:bmMvf0:bmMvf1:backwarpFlow0:backwarpFlow1:meta:];
    v39 = v49[0];
    v30 = warpedRef1Copy;
    goto LABEL_30;
  }

  contents = [metaCopy contents];
  LODWORD(v32) = *(contents + 24);
  LODWORD(v33) = *(contents + 28);
  v34 = ((v32 + 128.0 + 4.0 + 8.0 + -1.0) * 0.125);
  v35 = ((v33 + 128.0 + 4.0 + 8.0 + -1.0) * 0.125);
  [encoderCopy setComputePipelineState:self->_bmTransfer4RepairYUV];
  [encoderCopy setTexture:v40 atIndex:0];
  [encoderCopy setTexture:ref1Copy atIndex:1];
  [encoderCopy setTexture:map0Copy atIndex:2];
  [encoderCopy setTexture:map1Copy atIndex:3];
  [encoderCopy setTexture:mapCopy atIndex:4];
  v36 = mvf0Copy;
  [encoderCopy setTexture:mvf0Copy atIndex:5];
  [encoderCopy setTexture:mvf1Copy atIndex:6];
  [encoderCopy setTexture:flow0Copy atIndex:7];
  [encoderCopy setTexture:flow1Copy atIndex:8];
  [encoderCopy setTexture:warpedRef0Copy atIndex:9];
  v30 = warpedRef1Copy;
  [encoderCopy setTexture:warpedRef1Copy atIndex:10];
  [encoderCopy setBuffer:v27 offset:0 atIndex:0];
  [encoderCopy setImageblockWidth:8 height:8];
  v49[0] = v34;
  v49[1] = v35;
  v28 = mapCopy;
  v29 = map1Copy;
  v49[2] = 1;
  v47 = vdupq_n_s64(8uLL);
  v48 = 1;
  [encoderCopy dispatchThreadgroups:v49 threadsPerThreadgroup:&v47];
  v39 = 0;
LABEL_14:

  return v39;
}

- (int64_t)encodeGetGhostProbMapToCommandEncoder:(id)encoder target:(id)target reflLsMap:(id)map motionMap:(id)motionMap saliencyMap:(id)saliencyMap isInitFrame:(BOOL)frame probMap:(id)probMap meta:(id)self0
{
  encoderCopy = encoder;
  targetCopy = target;
  mapCopy = map;
  motionMapCopy = motionMap;
  saliencyMapCopy = saliencyMap;
  frameCopy = frame;
  probMapCopy = probMap;
  metaCopy = meta;
  v23 = metaCopy;
  if (!targetCopy)
  {
    [GGMMetalToolBox encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:];
LABEL_15:
    v29 = v33[0];
    goto LABEL_8;
  }

  if (!mapCopy)
  {
    [GGMMetalToolBox encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:];
    goto LABEL_15;
  }

  if (!motionMapCopy)
  {
    [GGMMetalToolBox encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:];
    goto LABEL_15;
  }

  if (!saliencyMapCopy)
  {
    [GGMMetalToolBox encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:];
    goto LABEL_15;
  }

  if (!probMapCopy)
  {
    [GGMMetalToolBox encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:];
    goto LABEL_15;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeGetGhostProbMapToCommandEncoder:target:reflLsMap:motionMap:saliencyMap:isInitFrame:probMap:meta:];
    goto LABEL_15;
  }

  contents = [metaCopy contents];
  LODWORD(v25) = *(contents + 24);
  LODWORD(v26) = *(contents + 28);
  v27 = (((v25 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v28 = (((v26 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  width = [targetCopy width];
  height = [targetCopy height];
  width2 = [motionMapCopy width];
  height2 = [motionMapCopy height];
  [encoderCopy setComputePipelineState:self->_getGhostProbMapYUV];
  [encoderCopy setTexture:targetCopy atIndex:0];
  [encoderCopy setTexture:mapCopy atIndex:1];
  [encoderCopy setTexture:motionMapCopy atIndex:2];
  [encoderCopy setTexture:saliencyMapCopy atIndex:3];
  [encoderCopy setTexture:probMapCopy atIndex:4];
  [encoderCopy setBuffer:v23 offset:0 atIndex:0];
  [encoderCopy setBytes:&width length:4 atIndex:1];
  [encoderCopy setBytes:&height length:4 atIndex:2];
  [encoderCopy setBytes:&width2 length:4 atIndex:3];
  [encoderCopy setBytes:&height2 length:4 atIndex:4];
  [encoderCopy setBytes:&frameCopy length:1 atIndex:5];
  v33[0] = v27;
  v33[1] = v28;
  v33[2] = 1;
  v31 = vdupq_n_s64(4uLL);
  v32 = 1;
  [encoderCopy dispatchThreadgroups:v33 threadsPerThreadgroup:&v31];
  v29 = 0;
LABEL_8:

  return v29;
}

- (int64_t)encodeBMTransferYUVToCommandEncoder:(id)encoder ref:(id)ref reflect:(BOOL)reflect normalizedCenter:(id)center warpedRef:(id)warpedRef bestMatchLoc:(id)loc meta:(int)meta sf:
{
  v13 = v9;
  metaCopy = meta;
  encoderCopy = encoder;
  refCopy = ref;
  reflectCopy = reflect;
  v34 = v13;
  centerCopy = center;
  warpedRefCopy = warpedRef;
  locCopy = loc;
  v23 = locCopy;
  if (!refCopy)
  {
    [GGMMetalToolBox encodeBMTransferYUVToCommandEncoder:ref:reflect:normalizedCenter:warpedRef:bestMatchLoc:meta:sf:];
LABEL_11:
    v29 = v33[0];
    goto LABEL_6;
  }

  if (!centerCopy)
  {
    [GGMMetalToolBox encodeBMTransferYUVToCommandEncoder:ref:reflect:normalizedCenter:warpedRef:bestMatchLoc:meta:sf:];
    goto LABEL_11;
  }

  if (!warpedRefCopy)
  {
    [GGMMetalToolBox encodeBMTransferYUVToCommandEncoder:ref:reflect:normalizedCenter:warpedRef:bestMatchLoc:meta:sf:];
    goto LABEL_11;
  }

  if (!locCopy)
  {
    [GGMMetalToolBox encodeBMTransferYUVToCommandEncoder:ref:reflect:normalizedCenter:warpedRef:bestMatchLoc:meta:sf:];
    goto LABEL_11;
  }

  contents = [locCopy contents];
  LODWORD(v25) = *(contents + 24);
  LODWORD(v26) = *(contents + 28);
  v27 = (((v25 + 128.0 + 4.0) / metaCopy + 8.0 + -1.0) * 0.125);
  v28 = (((v26 + 128.0 + 4.0) / metaCopy + 8.0 + -1.0) * 0.125);
  [encoderCopy setComputePipelineState:self->_bmTransferYUV];
  [encoderCopy setTexture:refCopy atIndex:0];
  [encoderCopy setTexture:warpedRefCopy atIndex:1];
  [encoderCopy setBytes:&reflectCopy length:1 atIndex:1];
  [encoderCopy setBytes:&v34 length:8 atIndex:2];
  [encoderCopy setTexture:centerCopy atIndex:2];
  [encoderCopy setBuffer:v23 offset:0 atIndex:0];
  [encoderCopy setBytes:&meta length:4 atIndex:3];
  [encoderCopy setImageblockWidth:8 height:8];
  v33[0] = v27;
  v33[1] = v28;
  v33[2] = 1;
  v31 = vdupq_n_s64(8uLL);
  v32 = 1;
  [encoderCopy dispatchThreadgroups:v33 threadsPerThreadgroup:&v31];
  v29 = 0;
LABEL_6:

  return v29;
}

- (int64_t)encodeBMTransferGrayToCommandEncoder:(id)encoder ref:(id)ref warpedRef:(id)warpedRef bestMatchLoc:(id)loc meta:(id)meta sf:(int)sf
{
  encoderCopy = encoder;
  refCopy = ref;
  warpedRefCopy = warpedRef;
  locCopy = loc;
  metaCopy = meta;
  v19 = metaCopy;
  sfCopy = sf;
  if (!refCopy)
  {
    [GGMMetalToolBox encodeBMTransferGrayToCommandEncoder:ref:warpedRef:bestMatchLoc:meta:sf:];
LABEL_11:
    v26 = v30[0];
    goto LABEL_6;
  }

  if (!warpedRefCopy)
  {
    [GGMMetalToolBox encodeBMTransferGrayToCommandEncoder:ref:warpedRef:bestMatchLoc:meta:sf:];
    goto LABEL_11;
  }

  if (!locCopy)
  {
    [GGMMetalToolBox encodeBMTransferGrayToCommandEncoder:ref:warpedRef:bestMatchLoc:meta:sf:];
    goto LABEL_11;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeBMTransferGrayToCommandEncoder:ref:warpedRef:bestMatchLoc:meta:sf:];
    goto LABEL_11;
  }

  contents = [metaCopy contents];
  LODWORD(v21) = *(contents + 24);
  LODWORD(v22) = *(contents + 28);
  sfCopy2 = sf;
  v24 = (((v21 + 128.0 + 4.0) / sf + 16.0 + -1.0) * 0.0625);
  v25 = (((v22 + 128.0 + 4.0) / sfCopy2 + 16.0 + -1.0) * 0.0625);
  [encoderCopy setComputePipelineState:self->_bmTransferGray];
  [encoderCopy setTexture:refCopy atIndex:0];
  [encoderCopy setTexture:locCopy atIndex:1];
  [encoderCopy setTexture:warpedRefCopy atIndex:2];
  [encoderCopy setBuffer:v19 offset:0 atIndex:0];
  [encoderCopy setBytes:&sfCopy length:4 atIndex:1];
  v30[0] = v24;
  v30[1] = v25;
  v30[2] = 1;
  v28 = vdupq_n_s64(0x10uLL);
  v29 = 1;
  [encoderCopy dispatchThreadgroups:v30 threadsPerThreadgroup:&v28];
  v26 = 0;
LABEL_6:

  return v26;
}

- (int64_t)resizeImageCmdBuf:(id)buf inputTexture:(id)texture withFactorX:(float)x withFactorY:(float)y outputTexture:(id)outputTexture
{
  bufCopy = buf;
  textureCopy = texture;
  outputTextureCopy = outputTexture;
  v15 = outputTextureCopy;
  if (!textureCopy)
  {
    [GGMMetalToolBox resizeImageCmdBuf:inputTexture:withFactorX:withFactorY:outputTexture:];
LABEL_9:
    v18 = v21;
    goto LABEL_5;
  }

  if (!outputTextureCopy)
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
  v20[0] = x;
  v20[1] = y;
  v20[2] = 0.0;
  v20[3] = 0.0;
  [v16 setScaleTransform:v20];
  [v17 encodeToCommandBuffer:bufCopy sourceTexture:textureCopy destinationTexture:v15];

  v18 = 0;
LABEL_5:

  return v18;
}

- (int64_t)encodeReflectYUVImg2:(GGMMetalToolBox *)self fullResInput:(SEL)input meta:(id)meta input0:(id)input0 output0:(id)output0 center0:(id)center0 input1:(id)input1 output1:(id)output1 center1:(id)center1
{
  v11 = v10;
  v13 = v9;
  metaCopy = meta;
  input0Copy = input0;
  output0Copy = output0;
  center0Copy = center0;
  input1Copy = input1;
  v43 = v13;
  output1Copy = output1;
  center1Copy = center1;
  v26 = center1Copy;
  v42 = v11;
  if (!input0Copy)
  {
    [GGMMetalToolBox encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:];
LABEL_15:
    v33 = v40[0];
    goto LABEL_8;
  }

  if (!output0Copy)
  {
    [GGMMetalToolBox encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:];
    goto LABEL_15;
  }

  if (!center0Copy)
  {
    [GGMMetalToolBox encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:];
    goto LABEL_15;
  }

  if (!input1Copy)
  {
    [GGMMetalToolBox encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:];
    goto LABEL_15;
  }

  if (!output1Copy)
  {
    [GGMMetalToolBox encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:];
    goto LABEL_15;
  }

  if (!center1Copy)
  {
    [GGMMetalToolBox encodeReflectYUVImg2:fullResInput:meta:input0:output0:center0:input1:output1:center1:];
    goto LABEL_15;
  }

  width = [input1Copy width];
  height = [input1Copy height];
  v28.f32[0] = width;
  v28.f32[1] = height;
  v37 = v28;
  width2 = [input0Copy width];
  height2 = [input0Copy height];
  v30.f32[0] = width2;
  v30.f32[1] = height2;
  v41 = vdiv_f32(v37, v30);
  v31 = ([input1Copy width] + 15) >> 4;
  v32 = ([input1Copy height] + 15) >> 4;
  [metaCopy setComputePipelineState:self->_reflectYUVImg2];
  [metaCopy setBuffer:output0Copy offset:0 atIndex:3];
  [metaCopy setTexture:center0Copy atIndex:0];
  [metaCopy setTexture:input1Copy atIndex:1];
  [metaCopy setBytes:&v43 length:8 atIndex:0];
  [metaCopy setTexture:output1Copy atIndex:2];
  [metaCopy setTexture:v26 atIndex:3];
  [metaCopy setBytes:&v42 length:8 atIndex:1];
  [metaCopy setBytes:&v41 length:8 atIndex:2];
  [metaCopy setImageblockWidth:16 height:16];
  v40[0] = v31;
  v40[1] = v32;
  v40[2] = 1;
  v38 = vdupq_n_s64(0x10uLL);
  v39 = 1;
  [metaCopy dispatchThreadgroups:v40 threadsPerThreadgroup:&v38];
  v33 = 0;
LABEL_8:

  return v33;
}

- (int64_t)encodeDilateGrayImg:(id)img input:(id)input output:(id)output hardDilationOutput:(id)dilationOutput hardDilationRadius:(float)radius softDilationRadius:(float)dilationRadius meta:(id)meta
{
  imgCopy = img;
  inputCopy = input;
  outputCopy = output;
  dilationOutputCopy = dilationOutput;
  dilationRadiusCopy = dilationRadius;
  radiusCopy = radius;
  metaCopy = meta;
  v21 = metaCopy;
  if (!inputCopy)
  {
    [GGMMetalToolBox encodeDilateGrayImg:input:output:hardDilationOutput:hardDilationRadius:softDilationRadius:meta:];
LABEL_11:
    v27 = v31[0];
    goto LABEL_6;
  }

  if (!outputCopy)
  {
    [GGMMetalToolBox encodeDilateGrayImg:input:output:hardDilationOutput:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  if (!dilationOutputCopy)
  {
    [GGMMetalToolBox encodeDilateGrayImg:input:output:hardDilationOutput:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeDilateGrayImg:input:output:hardDilationOutput:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  contents = [metaCopy contents];
  LODWORD(v23) = *(contents + 24);
  LODWORD(v24) = *(contents + 28);
  v25 = (((v23 + 128.0 + 4.0) * 0.5 + 32.0 + -1.0) * 0.03125);
  v26 = (((v24 + 128.0 + 4.0) * 0.5 + 32.0 + -1.0) * 0.03125);
  width = [outputCopy width];
  height = [outputCopy height];
  [imgCopy setComputePipelineState:self->_dilateGrayImg];
  [imgCopy setBuffer:v21 offset:0 atIndex:0];
  [imgCopy setTexture:inputCopy atIndex:0];
  [imgCopy setTexture:outputCopy atIndex:1];
  [imgCopy setTexture:dilationOutputCopy atIndex:2];
  [imgCopy setBytes:&radiusCopy length:4 atIndex:1];
  [imgCopy setBytes:&dilationRadiusCopy length:4 atIndex:2];
  [imgCopy setBytes:&width length:4 atIndex:3];
  [imgCopy setBytes:&height length:4 atIndex:4];
  v31[0] = v25;
  v31[1] = v26;
  v31[2] = 1;
  v29 = vdupq_n_s64(0x20uLL);
  v30 = 1;
  [imgCopy dispatchThreadgroups:v31 threadsPerThreadgroup:&v29];
  v27 = 0;
LABEL_6:

  return v27;
}

- (int64_t)encodeDilateProbMap:(id)map input:(id)input output:(id)output hardDilationRadius:(float)radius softDilationRadius:(float)dilationRadius meta:(id)meta
{
  mapCopy = map;
  inputCopy = input;
  outputCopy = output;
  dilationRadiusCopy = dilationRadius;
  radiusCopy = radius;
  metaCopy = meta;
  v18 = metaCopy;
  if (!inputCopy)
  {
    [GGMMetalToolBox encodeDilateProbMap:input:output:hardDilationRadius:softDilationRadius:meta:];
LABEL_9:
    v24 = v28[0];
    goto LABEL_5;
  }

  if (!outputCopy)
  {
    [GGMMetalToolBox encodeDilateProbMap:input:output:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_9;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeDilateProbMap:input:output:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_9;
  }

  contents = [metaCopy contents];
  LODWORD(v20) = *(contents + 24);
  LODWORD(v21) = *(contents + 28);
  v22 = (((v20 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v23 = (((v21 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  width = [inputCopy width];
  height = [inputCopy height];
  [mapCopy setComputePipelineState:self->_dilateProbMap];
  [mapCopy setBuffer:v18 offset:0 atIndex:0];
  [mapCopy setTexture:inputCopy atIndex:0];
  [mapCopy setTexture:outputCopy atIndex:1];
  [mapCopy setBytes:&radiusCopy length:4 atIndex:1];
  [mapCopy setBytes:&dilationRadiusCopy length:4 atIndex:2];
  [mapCopy setBytes:&width length:4 atIndex:3];
  [mapCopy setBytes:&height length:4 atIndex:4];
  v28[0] = v22;
  v28[1] = v23;
  v28[2] = 1;
  v26 = vdupq_n_s64(4uLL);
  v27 = 1;
  [mapCopy dispatchThreadgroups:v28 threadsPerThreadgroup:&v26];
  v24 = 0;
LABEL_5:

  return v24;
}

- (int64_t)encodeGetMotionMapYUVToCommandEncoder:(id)encoder ref:(id)ref target:(id)target motionMap:(id)map meta:(id)meta
{
  encoderCopy = encoder;
  refCopy = ref;
  targetCopy = target;
  mapCopy = map;
  metaCopy = meta;
  v17 = metaCopy;
  if (!refCopy)
  {
    [GGMMetalToolBox encodeGetMotionMapYUVToCommandEncoder:ref:target:motionMap:meta:];
LABEL_11:
    v23 = v27[0];
    goto LABEL_6;
  }

  if (!targetCopy)
  {
    [GGMMetalToolBox encodeGetMotionMapYUVToCommandEncoder:ref:target:motionMap:meta:];
    goto LABEL_11;
  }

  if (!mapCopy)
  {
    [GGMMetalToolBox encodeGetMotionMapYUVToCommandEncoder:ref:target:motionMap:meta:];
    goto LABEL_11;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeGetMotionMapYUVToCommandEncoder:ref:target:motionMap:meta:];
    goto LABEL_11;
  }

  contents = [metaCopy contents];
  LODWORD(v19) = *(contents + 24);
  LODWORD(v20) = *(contents + 28);
  v21 = (((v19 + 128.0 + 4.0) * 0.5 + 32.0 + -1.0) * 0.03125);
  v22 = (((v20 + 128.0 + 4.0) * 0.5 + 32.0 + -1.0) * 0.03125);
  width = [mapCopy width];
  height = [mapCopy height];
  [encoderCopy setComputePipelineState:self->_getMotionMapYUV];
  [encoderCopy setTexture:refCopy atIndex:1];
  [encoderCopy setTexture:targetCopy atIndex:2];
  [encoderCopy setTexture:mapCopy atIndex:3];
  [encoderCopy setBuffer:v17 offset:0 atIndex:0];
  [encoderCopy setBytes:&width length:4 atIndex:1];
  [encoderCopy setBytes:&height length:4 atIndex:2];
  v27[0] = v21;
  v27[1] = v22;
  v27[2] = 1;
  v25 = vdupq_n_s64(0x20uLL);
  v26 = 1;
  [encoderCopy dispatchThreadgroups:v27 threadsPerThreadgroup:&v25];
  v23 = 0;
LABEL_6:

  return v23;
}

- (int64_t)encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:(id)encoder target:(id)target hmgrphyRef0:(id)ref0 hmgrphyRef1:(id)ref1 bmRef0:(id)bmRef0 bmRef1:(id)bmRef1 probMap:(id)map errRescaleProbMap:(id)self0 prevProbMap:(id)self1 flow0:(id)self2 flow1:(id)self3 meta:(id)self4
{
  encoderCopy = encoder;
  targetCopy = target;
  ref0Copy = ref0;
  ref1Copy = ref1;
  bmRef0Copy = bmRef0;
  bmRef1Copy = bmRef1;
  mapCopy = map;
  probMapCopy = probMap;
  prevProbMapCopy = prevProbMap;
  flow0Copy = flow0;
  flow1Copy = flow1;
  metaCopy = meta;
  v26 = metaCopy;
  v39 = targetCopy;
  if (!targetCopy)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
    v34 = v26;
    v35 = v47[0];
    v28 = bmRef0Copy;
    v27 = bmRef1Copy;
LABEL_20:
    v29 = ref0Copy;
LABEL_21:
    v31 = prevProbMapCopy;
    v30 = probMapCopy;
    goto LABEL_13;
  }

  v27 = bmRef1Copy;
  if (!ref0Copy)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
    v34 = v26;
    v35 = v47[0];
    v28 = bmRef0Copy;
    goto LABEL_20;
  }

  v28 = bmRef0Copy;
  if (!ref1Copy)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
LABEL_19:
    v34 = v26;
    v35 = v47[0];
    goto LABEL_20;
  }

  if (!bmRef0Copy)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
    goto LABEL_19;
  }

  if (!bmRef1Copy)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
    goto LABEL_19;
  }

  v29 = ref0Copy;
  if (!mapCopy)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
    v34 = v26;
    v35 = v47[0];
    goto LABEL_21;
  }

  v30 = probMapCopy;
  if (!probMapCopy)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
    v34 = v26;
    v35 = v47[0];
    v31 = prevProbMapCopy;
    goto LABEL_13;
  }

  v31 = prevProbMapCopy;
  if (!prevProbMapCopy)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
LABEL_26:
    v34 = v26;
    v35 = v47[0];
    goto LABEL_13;
  }

  if (!flow0Copy)
  {
    [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
    goto LABEL_26;
  }

  if (flow1Copy)
  {
    if (metaCopy)
    {
      contents = [metaCopy contents];
      v38 = ((((*(contents + 24) >> 1) + 128) + 4.0 + 8.0 + -1.0) * 0.125);
      v33 = ((((*(contents + 28) >> 1) + 128) + 4.0 + 8.0 + -1.0) * 0.125);
      v49[0] = [v29 width];
      height = [v29 height];
      [encoderCopy setComputePipelineState:self->_getTempRepairedBgAlignErrYUV];
      [encoderCopy setTexture:v39 atIndex:0];
      [encoderCopy setTexture:v29 atIndex:1];
      [encoderCopy setTexture:ref1Copy atIndex:2];
      [encoderCopy setTexture:bmRef0Copy atIndex:3];
      [encoderCopy setTexture:bmRef1Copy atIndex:4];
      [encoderCopy setTexture:mapCopy atIndex:5];
      v30 = probMapCopy;
      [encoderCopy setTexture:probMapCopy atIndex:6];
      v31 = prevProbMapCopy;
      [encoderCopy setTexture:prevProbMapCopy atIndex:7];
      [encoderCopy setTexture:flow0Copy atIndex:8];
      [encoderCopy setTexture:flow1Copy atIndex:9];
      [encoderCopy setBuffer:v26 offset:0 atIndex:0];
      [encoderCopy setBytes:v49 length:4 atIndex:1];
      [encoderCopy setBytes:&height length:4 atIndex:2];
      v47[0] = v38;
      v47[1] = v33;
      v27 = bmRef1Copy;
      v47[2] = 1;
      v28 = bmRef0Copy;
      v45 = vdupq_n_s64(8uLL);
      v46 = 1;
      [encoderCopy dispatchThreadgroups:v47 threadsPerThreadgroup:&v45];
      v34 = v26;
      v35 = 0;
    }

    else
    {
      [GGMMetalToolBox encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:target:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:probMap:errRescaleProbMap:prevProbMap:flow0:flow1:meta:];
      v34 = 0;
      v35 = v47[0];
      v31 = prevProbMapCopy;
      v30 = probMapCopy;
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

- (int64_t)encodeCombineMapWithRefMapToEncoder:(id)encoder map:(id)map ref:(id)ref dilatedRef:(id)dilatedRef lsMap:(id)lsMap dilatedLsMap:(id)dilatedLsMap refLsMap:(id)refLsMap motion:(id)self0 saliency:(id)self1 targetFrameYUV:(id)self2 blobSaliency:(id)self3 spaRef:(id)self4 mvf:(id)self5 output:(id)self6 spaOutput:(id)self7 meta:(id)self8 wRef:(float)self9
{
  encoderCopy = encoder;
  mapCopy = map;
  refCopy = ref;
  dilatedRefCopy = dilatedRef;
  lsMapCopy = lsMap;
  dilatedLsMapCopy = dilatedLsMap;
  refLsMapCopy = refLsMap;
  motionCopy = motion;
  saliencyCopy = saliency;
  vCopy = v;
  blobSaliencyCopy = blobSaliency;
  spaRefCopy = spaRef;
  mvfCopy = mvf;
  outputCopy = output;
  spaOutputCopy = spaOutput;
  metaCopy = meta;
  v79[0] = wRef;
  v66 = mapCopy;
  v63 = vCopy;
  v64 = spaRefCopy;
  if (!mapCopy)
  {
    v51 = metaCopy;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    v46 = v51;
    v62 = v76[0];
    v47 = refCopy;
    v48 = lsMapCopy;
    v33 = mvfCopy;
    v34 = refLsMapCopy;
    v49 = motionCopy;
    v35 = blobSaliencyCopy;
    v38 = spaOutputCopy;
    v36 = outputCopy;
    goto LABEL_17;
  }

  v61 = refCopy;
  if (!refCopy)
  {
    v52 = metaCopy;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
LABEL_21:
    v46 = v52;
    v62 = v76[0];
    v48 = lsMapCopy;
    v33 = mvfCopy;
LABEL_23:
    v34 = refLsMapCopy;
LABEL_27:
    v49 = motionCopy;
LABEL_28:
    v35 = blobSaliencyCopy;
LABEL_29:
    v36 = outputCopy;
LABEL_36:
    v38 = spaOutputCopy;
LABEL_44:
    v47 = v61;
    goto LABEL_17;
  }

  if (!dilatedRefCopy)
  {
    v52 = metaCopy;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    goto LABEL_21;
  }

  v33 = mvfCopy;
  if (!lsMapCopy)
  {
    v53 = metaCopy;
    v48 = 0;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    v46 = v53;
    v62 = v76[0];
    goto LABEL_23;
  }

  v34 = refLsMapCopy;
  if (!dilatedLsMapCopy)
  {
    v54 = metaCopy;
    v48 = lsMapCopy;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
LABEL_26:
    v46 = v54;
    v62 = v76[0];
    goto LABEL_27;
  }

  if (!refLsMapCopy)
  {
    v54 = metaCopy;
    v48 = lsMapCopy;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    goto LABEL_26;
  }

  if (!motionCopy)
  {
    v55 = metaCopy;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    v46 = v55;
    v48 = lsMapCopy;
    v49 = 0;
    v62 = v76[0];
    goto LABEL_28;
  }

  v35 = blobSaliencyCopy;
  if (!saliencyCopy)
  {
    v56 = metaCopy;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    v46 = v56;
    v48 = lsMapCopy;
    v49 = motionCopy;
    v62 = v76[0];
    goto LABEL_29;
  }

  v36 = outputCopy;
  if (!vCopy)
  {
    v57 = metaCopy;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
LABEL_35:
    v46 = v57;
    v48 = lsMapCopy;
    v49 = motionCopy;
    v62 = v76[0];
    goto LABEL_36;
  }

  if (!v35)
  {
    v57 = metaCopy;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    goto LABEL_35;
  }

  if (!spaRefCopy)
  {
    v57 = metaCopy;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    goto LABEL_35;
  }

  v59 = v35;
  v37 = metaCopy;
  if (!mvfCopy)
  {
    v58 = lsMapCopy;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
LABEL_39:
    v48 = v58;
    v49 = motionCopy;
    v62 = v76[0];
    v38 = spaOutputCopy;
LABEL_41:
    v46 = v37;
LABEL_43:
    v35 = v59;
    goto LABEL_44;
  }

  if (!outputCopy)
  {
    v58 = lsMapCopy;
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    goto LABEL_39;
  }

  v38 = spaOutputCopy;
  if (!spaOutputCopy)
  {
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    v48 = lsMapCopy;
    v49 = motionCopy;
    v62 = v76[0];
    goto LABEL_41;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeCombineMapWithRefMapToEncoder:map:ref:dilatedRef:lsMap:dilatedLsMap:refLsMap:motion:saliency:targetFrameYUV:blobSaliency:spaRef:mvf:output:spaOutput:meta:wRef:];
    v46 = 0;
    v49 = motionCopy;
    v62 = v76[0];
    v38 = spaOutputCopy;
    v36 = outputCopy;
    v48 = lsMapCopy;
    goto LABEL_43;
  }

  v39 = vCopy;
  v40 = metaCopy;
  contents = [metaCopy contents];
  LODWORD(v42) = *(contents + 24);
  LODWORD(v43) = *(contents + 28);
  v44 = (((v42 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v45 = (((v43 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  width = [motionCopy width];
  height = [motionCopy height];
  [encoderCopy setComputePipelineState:self->_combineMapWithRefMap];
  [encoderCopy setBuffer:v40 offset:0 atIndex:0];
  [encoderCopy setTexture:v66 atIndex:0];
  [encoderCopy setTexture:refCopy atIndex:1];
  [encoderCopy setTexture:dilatedRefCopy atIndex:2];
  [encoderCopy setTexture:lsMapCopy atIndex:3];
  [encoderCopy setTexture:dilatedLsMapCopy atIndex:9];
  [encoderCopy setTexture:refLsMapCopy atIndex:4];
  [encoderCopy setTexture:motionCopy atIndex:5];
  [encoderCopy setTexture:saliencyCopy atIndex:6];
  [encoderCopy setTexture:v39 atIndex:7];
  [encoderCopy setTexture:v59 atIndex:10];
  [encoderCopy setTexture:spaRefCopy atIndex:11];
  [encoderCopy setTexture:mvfCopy atIndex:13];
  v36 = outputCopy;
  [encoderCopy setTexture:outputCopy atIndex:8];
  v38 = spaOutputCopy;
  [encoderCopy setTexture:spaOutputCopy atIndex:12];
  [encoderCopy setBytes:v79 length:4 atIndex:1];
  [encoderCopy setBytes:&width length:4 atIndex:2];
  [encoderCopy setBytes:&height length:4 atIndex:3];
  v76[0] = v44;
  v76[1] = v45;
  v35 = v59;
  v76[2] = 1;
  v74 = vdupq_n_s64(4uLL);
  v75 = 1;
  v33 = mvfCopy;
  v34 = refLsMapCopy;
  [encoderCopy dispatchThreadgroups:v76 threadsPerThreadgroup:&v74];
  v46 = v40;
  v47 = refCopy;
  v48 = lsMapCopy;
  v49 = motionCopy;
  v62 = 0;
LABEL_17:

  return v62;
}

- (int64_t)encodeGetSaliencyMapToCommandEncoder:(id)encoder target:(id)target saliencyMap:(id)map meta:(id)meta
{
  encoderCopy = encoder;
  targetCopy = target;
  mapCopy = map;
  metaCopy = meta;
  v14 = metaCopy;
  if (!targetCopy)
  {
    [GGMMetalToolBox encodeGetSaliencyMapToCommandEncoder:target:saliencyMap:meta:];
LABEL_9:
    v20 = v24[0];
    goto LABEL_5;
  }

  if (!mapCopy)
  {
    [GGMMetalToolBox encodeGetSaliencyMapToCommandEncoder:target:saliencyMap:meta:];
    goto LABEL_9;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeGetSaliencyMapToCommandEncoder:target:saliencyMap:meta:];
    goto LABEL_9;
  }

  contents = [metaCopy contents];
  LODWORD(v16) = *(contents + 24);
  LODWORD(v17) = *(contents + 28);
  v18 = (((v16 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v19 = (((v17 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  width = [mapCopy width];
  height = [mapCopy height];
  [encoderCopy setComputePipelineState:self->_getSaliencyMapYUV];
  [encoderCopy setTexture:targetCopy atIndex:0];
  [encoderCopy setTexture:mapCopy atIndex:1];
  [encoderCopy setBuffer:v14 offset:0 atIndex:0];
  [encoderCopy setBytes:&width length:4 atIndex:1];
  [encoderCopy setBytes:&height length:4 atIndex:2];
  v24[0] = v18;
  v24[1] = v19;
  v24[2] = 1;
  v22 = vdupq_n_s64(4uLL);
  v23 = 1;
  [encoderCopy dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
  v20 = 0;
LABEL_5:

  return v20;
}

- (int64_t)encodeGetBgAvgYUVToCommandEncoder:(id)encoder target:(id)target ref0:(id)ref0 ref1:(id)ref1 probMap:(id)map meta:(id)meta
{
  encoderCopy = encoder;
  targetCopy = target;
  ref0Copy = ref0;
  ref1Copy = ref1;
  mapCopy = map;
  metaCopy = meta;
  v20 = metaCopy;
  if (!targetCopy)
  {
    [GGMMetalToolBox encodeGetBgAvgYUVToCommandEncoder:target:ref0:ref1:probMap:meta:];
LABEL_13:
    v26 = v30[0];
    goto LABEL_7;
  }

  if (!ref0Copy)
  {
    [GGMMetalToolBox encodeGetBgAvgYUVToCommandEncoder:target:ref0:ref1:probMap:meta:];
    goto LABEL_13;
  }

  if (!ref1Copy)
  {
    [GGMMetalToolBox encodeGetBgAvgYUVToCommandEncoder:target:ref0:ref1:probMap:meta:];
    goto LABEL_13;
  }

  if (!mapCopy)
  {
    [GGMMetalToolBox encodeGetBgAvgYUVToCommandEncoder:target:ref0:ref1:probMap:meta:];
    goto LABEL_13;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeGetBgAvgYUVToCommandEncoder:target:ref0:ref1:probMap:meta:];
    goto LABEL_13;
  }

  contents = [metaCopy contents];
  LODWORD(v22) = *(contents + 24);
  LODWORD(v23) = *(contents + 28);
  v24 = (((v22 + 128.0 + 4.0) * 0.25 + 8.0 + -1.0) * 0.125);
  v25 = (((v23 + 128.0 + 4.0) * 0.25 + 8.0 + -1.0) * 0.125);
  width = [targetCopy width];
  height = [targetCopy height];
  [encoderCopy setComputePipelineState:self->_getBgAvgYUV];
  [encoderCopy setTexture:targetCopy atIndex:0];
  [encoderCopy setTexture:ref0Copy atIndex:1];
  [encoderCopy setTexture:ref1Copy atIndex:2];
  [encoderCopy setTexture:mapCopy atIndex:3];
  [encoderCopy setBuffer:v20 offset:0 atIndex:0];
  [encoderCopy setBytes:&width length:4 atIndex:1];
  [encoderCopy setBytes:&height length:4 atIndex:2];
  v30[0] = v24;
  v30[1] = v25;
  v30[2] = 1;
  v28 = vdupq_n_s64(8uLL);
  v29 = 1;
  [encoderCopy dispatchThreadgroups:v30 threadsPerThreadgroup:&v28];
  v26 = 0;
LABEL_7:

  return v26;
}

- (int64_t)encodeCollectClusterBgAvgToCommandEncoder:(id)encoder clusterMetaBuf:(id)buf metaBuf:(id)metaBuf
{
  encoderCopy = encoder;
  bufCopy = buf;
  metaBufCopy = metaBuf;
  v11 = metaBufCopy;
  if (!bufCopy)
  {
    [GGMMetalToolBox encodeCollectClusterBgAvgToCommandEncoder:clusterMetaBuf:metaBuf:];
LABEL_7:
    v13 = v17;
    goto LABEL_4;
  }

  if (!metaBufCopy)
  {
    [GGMMetalToolBox encodeCollectClusterBgAvgToCommandEncoder:clusterMetaBuf:metaBuf:];
    goto LABEL_7;
  }

  contents = [bufCopy contents];
  [encoderCopy setComputePipelineState:self->_collectClusterBgAvg];
  [encoderCopy setBuffer:bufCopy offset:0 atIndex:0];
  [encoderCopy setBuffer:v11 offset:0 atIndex:1];
  v17 = (*contents + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2487C3C20;
  [encoderCopy dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  v13 = 0;
LABEL_4:

  return v13;
}

- (int64_t)encodeBilinearRescaleYUV:(id)v fullResInput:(id)input input:(id)a5 meta:(id)meta blurBeforeSample:(BOOL)sample output:(id)output
{
  vCopy = v;
  inputCopy = input;
  v16 = a5;
  metaCopy = meta;
  sampleCopy = sample;
  outputCopy = output;
  v19 = outputCopy;
  if (!inputCopy)
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

  if (!outputCopy)
  {
    [GGMMetalToolBox encodeBilinearRescaleYUV:fullResInput:input:meta:blurBeforeSample:output:];
    goto LABEL_11;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeBilinearRescaleYUV:fullResInput:input:meta:blurBeforeSample:output:];
    goto LABEL_11;
  }

  contents = [metaCopy contents];
  width = [v19 width];
  height = [v19 height];
  v22.f32[0] = width;
  v22.f32[1] = height;
  v32 = v22;
  width2 = [inputCopy width];
  height2 = [inputCopy height];
  v24.f32[0] = width2;
  v24.f32[1] = height2;
  v36 = vdiv_f32(v32, v24);
  v25 = *(contents + 28);
  v26 = (vcvtpd_u64_f64(((*(contents + 24) + 128) + 128.0 + 4.0) * v36.f32[0]) + 15) >> 4;
  v27 = (vcvtpd_u64_f64(((v25 + 128) + 128.0 + 4.0) * v36.f32[1]) + 15) >> 4;
  [vCopy setComputePipelineState:self->_bilinearRescaleYUV];
  [vCopy setTexture:v16 atIndex:0];
  [vCopy setBuffer:metaCopy offset:0 atIndex:0];
  [vCopy setTexture:v19 atIndex:1];
  [vCopy setBytes:&sampleCopy length:1 atIndex:1];
  [vCopy setBytes:&v36 length:8 atIndex:2];
  [vCopy setImageblockWidth:16 height:16];
  v35[0] = v26;
  v35[1] = v27;
  v35[2] = 1;
  v33 = vdupq_n_s64(0x10uLL);
  v34 = 1;
  [vCopy dispatchThreadgroups:v35 threadsPerThreadgroup:&v33];
  v28 = 0;
LABEL_6:

  return v28;
}

- (int64_t)encodeBilinearRescale2ImgsYUV:(id)v fullResInput:(id)input input0:(id)input0 output0:(id)output0 input1:(id)input1 output1:(id)output1 meta:(id)meta
{
  vCopy = v;
  inputCopy = input;
  input0Copy = input0;
  output0Copy = output0;
  input1Copy = input1;
  output1Copy = output1;
  metaCopy = meta;
  v22 = metaCopy;
  if (!inputCopy)
  {
    [GGMMetalToolBox encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:];
LABEL_15:
    v29 = v37[0];
    goto LABEL_8;
  }

  if (!input0Copy)
  {
    [GGMMetalToolBox encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:];
    goto LABEL_15;
  }

  if (!output0Copy)
  {
    [GGMMetalToolBox encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:];
    goto LABEL_15;
  }

  if (!input1Copy)
  {
    [GGMMetalToolBox encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:];
    goto LABEL_15;
  }

  if (!output1Copy)
  {
    [GGMMetalToolBox encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:];
    goto LABEL_15;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeBilinearRescale2ImgsYUV:fullResInput:input0:output0:input1:output1:meta:];
    goto LABEL_15;
  }

  contents = [metaCopy contents];
  width = [output0Copy width];
  height = [output0Copy height];
  v25.f32[0] = width;
  v25.f32[1] = height;
  v33 = v25;
  width2 = [inputCopy width];
  height2 = [inputCopy height];
  v27.f32[0] = width2;
  v27.f32[1] = height2;
  v38 = vdiv_f32(v33, v27);
  v34 = (vcvtpd_u64_f64(((*(contents + 24) + 128) + 128.0 + 4.0) * v38.f32[0]) + 15) >> 4;
  v28 = (vcvtpd_u64_f64(((*(contents + 28) + 128) + 128.0 + 4.0) * v38.f32[1]) + 15) >> 4;
  [vCopy setComputePipelineState:self->_bilinearRescale2ImgsYUV];
  [vCopy setBuffer:v22 offset:0 atIndex:0];
  [vCopy setTexture:input0Copy atIndex:0];
  [vCopy setTexture:output0Copy atIndex:1];
  [vCopy setTexture:input1Copy atIndex:2];
  [vCopy setTexture:output1Copy atIndex:3];
  [vCopy setBytes:&v38 length:8 atIndex:2];
  [vCopy setImageblockWidth:16 height:16];
  v37[0] = v34;
  v37[1] = v28;
  v37[2] = 1;
  v35 = vdupq_n_s64(0x10uLL);
  v36 = 1;
  [vCopy dispatchThreadgroups:v37 threadsPerThreadgroup:&v35];
  v29 = 0;
LABEL_8:

  return v29;
}

- (int64_t)encodeDilateReflLsMap:(id)map inputYUV:(id)v lsMap:(id)lsMap dilatedLsMap:(id)dilatedLsMap hardDilationRadius:(float)radius softDilationRadius:(float)dilationRadius meta:(id)meta
{
  mapCopy = map;
  vCopy = v;
  lsMapCopy = lsMap;
  dilatedLsMapCopy = dilatedLsMap;
  dilationRadiusCopy = dilationRadius;
  radiusCopy = radius;
  metaCopy = meta;
  v21 = metaCopy;
  if (!vCopy)
  {
    [GGMMetalToolBox encodeDilateReflLsMap:inputYUV:lsMap:dilatedLsMap:hardDilationRadius:softDilationRadius:meta:];
LABEL_11:
    v30 = v34[0];
    goto LABEL_6;
  }

  if (!lsMapCopy)
  {
    [GGMMetalToolBox encodeDilateReflLsMap:inputYUV:lsMap:dilatedLsMap:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  if (!dilatedLsMapCopy)
  {
    [GGMMetalToolBox encodeDilateReflLsMap:inputYUV:lsMap:dilatedLsMap:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeDilateReflLsMap:inputYUV:lsMap:dilatedLsMap:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  contents = [metaCopy contents];
  LODWORD(v23) = contents[3].i32[0];
  LODWORD(v24) = contents[3].i32[1];
  v25 = (((v23 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v26 = (((v24 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  width = [lsMapCopy width];
  height = [lsMapCopy height];
  width2 = [vCopy width];
  height2 = [vCopy height];
  v29.f32[0] = width2;
  v29.f32[1] = height2;
  v35 = vdiv_f32(contents[1478], v29);
  [mapCopy setComputePipelineState:self->_dilateReflLsMap];
  [mapCopy setBuffer:v21 offset:0 atIndex:0];
  [mapCopy setTexture:vCopy atIndex:0];
  [mapCopy setTexture:lsMapCopy atIndex:1];
  [mapCopy setTexture:dilatedLsMapCopy atIndex:2];
  [mapCopy setBytes:&radiusCopy length:4 atIndex:1];
  [mapCopy setBytes:&dilationRadiusCopy length:4 atIndex:2];
  [mapCopy setBytes:&v35 length:8 atIndex:3];
  [mapCopy setBytes:&width length:4 atIndex:4];
  [mapCopy setBytes:&height length:4 atIndex:5];
  v34[0] = v25;
  v34[1] = v26;
  v34[2] = 1;
  v32 = vdupq_n_s64(4uLL);
  v33 = 1;
  [mapCopy dispatchThreadgroups:v34 threadsPerThreadgroup:&v32];
  v30 = 0;
LABEL_6:

  return v30;
}

- (int64_t)encodeGetBlobSaliency:(id)saliency inputYUV:(id)v blobSaliencyMap:(id)map meta:(id)meta
{
  saliencyCopy = saliency;
  vCopy = v;
  mapCopy = map;
  metaCopy = meta;
  v14 = metaCopy;
  if (!vCopy)
  {
    [GGMMetalToolBox encodeGetBlobSaliency:inputYUV:blobSaliencyMap:meta:];
LABEL_9:
    v20 = v24[0];
    goto LABEL_5;
  }

  if (!mapCopy)
  {
    [GGMMetalToolBox encodeGetBlobSaliency:inputYUV:blobSaliencyMap:meta:];
    goto LABEL_9;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeGetBlobSaliency:inputYUV:blobSaliencyMap:meta:];
    goto LABEL_9;
  }

  contents = [metaCopy contents];
  LODWORD(v16) = *(contents + 24);
  LODWORD(v17) = *(contents + 28);
  v18 = (((v16 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v19 = (((v17 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  width = [mapCopy width];
  height = [mapCopy height];
  [saliencyCopy setComputePipelineState:self->_getBlobSaliency];
  [saliencyCopy setBuffer:v14 offset:0 atIndex:0];
  [saliencyCopy setTexture:vCopy atIndex:0];
  [saliencyCopy setBytes:&width length:4 atIndex:1];
  [saliencyCopy setBytes:&height length:4 atIndex:2];
  [saliencyCopy setTexture:mapCopy atIndex:1];
  v24[0] = v18;
  v24[1] = v19;
  v24[2] = 1;
  v22 = vdupq_n_s64(4uLL);
  v23 = 1;
  [saliencyCopy dispatchThreadgroups:v24 threadsPerThreadgroup:&v22];
  v20 = 0;
LABEL_5:

  return v20;
}

- (int64_t)encodeSpatialRepairYUVToCommandEncoder:(id)encoder input:(id)input probMap4Spatial:(id)spatial spatialOutput:(id)output metaBuf:(id)buf
{
  encoderCopy = encoder;
  inputCopy = input;
  spatialCopy = spatial;
  outputCopy = output;
  bufCopy = buf;
  v17 = bufCopy;
  if (!inputCopy)
  {
    [GGMMetalToolBox encodeSpatialRepairYUVToCommandEncoder:input:probMap4Spatial:spatialOutput:metaBuf:];
LABEL_11:
    v30 = v36.i64[0];
    goto LABEL_6;
  }

  if (!spatialCopy)
  {
    [GGMMetalToolBox encodeSpatialRepairYUVToCommandEncoder:input:probMap4Spatial:spatialOutput:metaBuf:];
    goto LABEL_11;
  }

  if (!outputCopy)
  {
    [GGMMetalToolBox encodeSpatialRepairYUVToCommandEncoder:input:probMap4Spatial:spatialOutput:metaBuf:];
    goto LABEL_11;
  }

  if (!bufCopy)
  {
    [GGMMetalToolBox encodeSpatialRepairYUVToCommandEncoder:input:probMap4Spatial:spatialOutput:metaBuf:];
    goto LABEL_11;
  }

  width = [outputCopy width];
  height = [outputCopy height];
  [encoderCopy setComputePipelineState:self->_spatialRepairYUV];
  [encoderCopy setTexture:inputCopy atIndex:0];
  [encoderCopy setTexture:spatialCopy atIndex:1];
  [encoderCopy setTexture:outputCopy atIndex:2];
  [encoderCopy setBuffer:v17 offset:0 atIndex:0];
  [encoderCopy setBytes:&width length:4 atIndex:1];
  [encoderCopy setBytes:&height length:4 atIndex:2];
  [encoderCopy setImageblockWidth:32 height:32];
  contents = [v17 contents];
  v19.f32[0] = width;
  v19.f32[1] = height;
  v33 = v19;
  width2 = [inputCopy width];
  height2 = [inputCopy height];
  v21.f32[0] = width2;
  v21.f32[1] = height2;
  v22 = vdiv_f32(v33, v21);
  v23 = vadd_s32(contents[3], 0x8000000080);
  v24.i64[0] = v23.u32[0];
  v24.i64[1] = v23.u32[1];
  __asm { FMOV            V2.2D, #4.0 }

  v36 = vshrq_n_u64(vaddq_s64(vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v24), vdupq_n_s64(0x4060000000000000uLL)), _Q2), vcvtq_f64_f32(v22)))), vdupq_n_s64(0x1FuLL)), 5uLL);
  v37 = 1;
  v34 = vdupq_n_s64(0x20uLL);
  v35 = 1;
  [encoderCopy dispatchThreadgroups:&v36 threadsPerThreadgroup:&v34];
  v30 = 0;
LABEL_6:

  return v30;
}

- (int64_t)encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:(id)encoder input:(id)input frRef0:(id)ref0 frRef1:(id)ref1 temporalOutput:(id)output inputCopy:(id)copy metaBuf:(id)buf
{
  encoderCopy = encoder;
  inputCopy = input;
  ref0Copy = ref0;
  ref1Copy = ref1;
  outputCopy = output;
  copyCopy = copy;
  bufCopy = buf;
  v22 = bufCopy;
  if (!inputCopy)
  {
    [GGMMetalToolBox encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:];
LABEL_15:
    v32 = v36.i64[0];
    goto LABEL_8;
  }

  if (!ref0Copy)
  {
    [GGMMetalToolBox encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:];
    goto LABEL_15;
  }

  if (!ref1Copy)
  {
    [GGMMetalToolBox encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:];
    goto LABEL_15;
  }

  if (!outputCopy)
  {
    [GGMMetalToolBox encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:];
    goto LABEL_15;
  }

  if (!copyCopy)
  {
    [GGMMetalToolBox encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:];
    goto LABEL_15;
  }

  if (!bufCopy)
  {
    [GGMMetalToolBox encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:input:frRef0:frRef1:temporalOutput:inputCopy:metaBuf:];
    goto LABEL_15;
  }

  width = [inputCopy width];
  height = [inputCopy height];
  [encoderCopy setComputePipelineState:self->_spatialTemporalRepair4DetectionYUV];
  [encoderCopy setTexture:inputCopy atIndex:0];
  [encoderCopy setTexture:ref0Copy atIndex:1];
  [encoderCopy setTexture:ref1Copy atIndex:2];
  [encoderCopy setTexture:outputCopy atIndex:5];
  [encoderCopy setTexture:copyCopy atIndex:6];
  [encoderCopy setBuffer:v22 offset:0 atIndex:0];
  [encoderCopy setBytes:&width length:4 atIndex:1];
  [encoderCopy setBytes:&height length:4 atIndex:2];
  [encoderCopy setImageblockWidth:32 height:32];
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
  [encoderCopy dispatchThreadgroups:&v36 threadsPerThreadgroup:&v34];
  v32 = 0;
LABEL_8:

  return v32;
}

- (int64_t)encodeFuse4DetectionYUVToCommandEncoder:(id)encoder inputTexture:(id)texture probMapTexture:(id)mapTexture temporalMitTexture:(id)mitTexture spatialMitTexture:(id)spatialMitTexture forceToSpatial:(BOOL)spatial outputTexture:(id)outputTexture metaBuf:(id)self0
{
  encoderCopy = encoder;
  textureCopy = texture;
  mapTextureCopy = mapTexture;
  mitTextureCopy = mitTexture;
  spatialMitTextureCopy = spatialMitTexture;
  spatialCopy = spatial;
  outputTextureCopy = outputTexture;
  bufCopy = buf;
  v23 = bufCopy;
  if (!textureCopy)
  {
    [GGMMetalToolBox encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:];
LABEL_15:
    v35 = v39.i64[0];
    goto LABEL_8;
  }

  if (!mapTextureCopy)
  {
    [GGMMetalToolBox encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:];
    goto LABEL_15;
  }

  if (!mitTextureCopy)
  {
    [GGMMetalToolBox encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:];
    goto LABEL_15;
  }

  if (!spatialMitTextureCopy)
  {
    [GGMMetalToolBox encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:];
    goto LABEL_15;
  }

  if (!outputTextureCopy)
  {
    [GGMMetalToolBox encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:];
    goto LABEL_15;
  }

  if (!bufCopy)
  {
    [GGMMetalToolBox encodeFuse4DetectionYUVToCommandEncoder:inputTexture:probMapTexture:temporalMitTexture:spatialMitTexture:forceToSpatial:outputTexture:metaBuf:];
    goto LABEL_15;
  }

  width = [textureCopy width];
  height = [textureCopy height];
  [encoderCopy setComputePipelineState:self->_fuse4DetectionYUV];
  [encoderCopy setBuffer:v23 offset:0 atIndex:0];
  [encoderCopy setBytes:&width length:4 atIndex:3];
  [encoderCopy setBytes:&height length:4 atIndex:4];
  [encoderCopy setBytes:&spatialCopy length:1 atIndex:5];
  [encoderCopy setTexture:textureCopy atIndex:0];
  [encoderCopy setTexture:mitTextureCopy atIndex:1];
  [encoderCopy setTexture:spatialMitTextureCopy atIndex:2];
  [encoderCopy setTexture:mapTextureCopy atIndex:3];
  [encoderCopy setTexture:outputTextureCopy atIndex:5];
  [encoderCopy setImageblockWidth:16 height:16];
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
  [encoderCopy dispatchThreadgroups:&v39 threadsPerThreadgroup:&v37];
  v35 = 0;
LABEL_8:

  return v35;
}

- (int64_t)encodeCollectClusterTempRepairErr:(id)err clusterMetaBuf:(id)buf metaBuf:(id)metaBuf
{
  errCopy = err;
  bufCopy = buf;
  metaBufCopy = metaBuf;
  v11 = metaBufCopy;
  if (!bufCopy)
  {
    [GGMMetalToolBox encodeCollectClusterTempRepairErr:clusterMetaBuf:metaBuf:];
LABEL_7:
    v13 = v17;
    goto LABEL_4;
  }

  if (!metaBufCopy)
  {
    [GGMMetalToolBox encodeCollectClusterTempRepairErr:clusterMetaBuf:metaBuf:];
    goto LABEL_7;
  }

  contents = [bufCopy contents];
  [errCopy setComputePipelineState:self->_collectClusterTempRepairErr];
  [errCopy setBuffer:bufCopy offset:0 atIndex:0];
  [errCopy setBuffer:v11 offset:0 atIndex:1];
  v17 = (*contents + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2487C3C20;
  [errCopy dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  v13 = 0;
LABEL_4:

  return v13;
}

- (int64_t)encodeCollectClusterMv:(id)mv clusterMetaBuf:(id)buf metaBuf:(id)metaBuf
{
  mvCopy = mv;
  bufCopy = buf;
  metaBufCopy = metaBuf;
  v11 = metaBufCopy;
  if (!bufCopy)
  {
    [GGMMetalToolBox encodeCollectClusterMv:clusterMetaBuf:metaBuf:];
LABEL_7:
    v13 = v17;
    goto LABEL_4;
  }

  if (!metaBufCopy)
  {
    [GGMMetalToolBox encodeCollectClusterMv:clusterMetaBuf:metaBuf:];
    goto LABEL_7;
  }

  contents = [bufCopy contents];
  [mvCopy setComputePipelineState:self->_collectClusterMv];
  [mvCopy setBuffer:bufCopy offset:0 atIndex:0];
  [mvCopy setBuffer:v11 offset:0 atIndex:1];
  v17 = (*contents + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2487C3C20;
  [mvCopy dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  v13 = 0;
LABEL_4:

  return v13;
}

- (int64_t)encodeUpscaleProbMap:(id)map probMap:(id)probMap refinedProbMap:(id)refinedProbMap inputFrame:(id)frame upscaledProbMap:(id)upscaledProbMap upscaledRefinedProbMap:(id)upscaledRefinedProbMap meta:(id)meta
{
  mapCopy = map;
  probMapCopy = probMap;
  refinedProbMapCopy = refinedProbMap;
  frameCopy = frame;
  upscaledProbMapCopy = upscaledProbMap;
  upscaledRefinedProbMapCopy = upscaledRefinedProbMap;
  metaCopy = meta;
  v22 = metaCopy;
  if (!probMapCopy)
  {
    [GGMMetalToolBox encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:];
LABEL_15:
    v28 = v32[0];
    goto LABEL_8;
  }

  if (!refinedProbMapCopy)
  {
    [GGMMetalToolBox encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:];
    goto LABEL_15;
  }

  if (!frameCopy)
  {
    [GGMMetalToolBox encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:];
    goto LABEL_15;
  }

  if (!upscaledProbMapCopy)
  {
    [GGMMetalToolBox encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:];
    goto LABEL_15;
  }

  if (!upscaledRefinedProbMapCopy)
  {
    [GGMMetalToolBox encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:];
    goto LABEL_15;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeUpscaleProbMap:probMap:refinedProbMap:inputFrame:upscaledProbMap:upscaledRefinedProbMap:meta:];
    goto LABEL_15;
  }

  contents = [metaCopy contents];
  LODWORD(v24) = *(contents + 24);
  LODWORD(v25) = *(contents + 28);
  v26 = ((v24 + 128.0 + 4.0 + 8.0 + -1.0) * 0.125);
  v27 = ((v25 + 128.0 + 4.0 + 8.0 + -1.0) * 0.125);
  width = [upscaledProbMapCopy width];
  height = [upscaledProbMapCopy height];
  [mapCopy setComputePipelineState:self->_upscaleProbMap];
  [mapCopy setBuffer:v22 offset:0 atIndex:0];
  [mapCopy setTexture:probMapCopy atIndex:0];
  [mapCopy setTexture:refinedProbMapCopy atIndex:1];
  [mapCopy setTexture:frameCopy atIndex:2];
  [mapCopy setTexture:upscaledProbMapCopy atIndex:3];
  [mapCopy setTexture:upscaledRefinedProbMapCopy atIndex:4];
  [mapCopy setBytes:&width length:4 atIndex:1];
  [mapCopy setBytes:&height length:4 atIndex:2];
  v32[0] = v26;
  v32[1] = v27;
  v32[2] = 1;
  v30 = vdupq_n_s64(8uLL);
  v31 = 1;
  [mapCopy dispatchThreadgroups:v32 threadsPerThreadgroup:&v30];
  v28 = 0;
LABEL_8:

  return v28;
}

- (int64_t)encodeUpscaleThenReflectLsMap:(id)map input:(id)input normalizedCenter:(id)center output:
{
  v7 = v5;
  mapCopy = map;
  inputCopy = input;
  v23 = v7;
  centerCopy = center;
  v13 = centerCopy;
  if (!inputCopy)
  {
    [GGMMetalToolBox encodeUpscaleThenReflectLsMap:input:normalizedCenter:output:];
LABEL_7:
    v16 = v20[0];
    goto LABEL_4;
  }

  if (!centerCopy)
  {
    [GGMMetalToolBox encodeUpscaleThenReflectLsMap:input:normalizedCenter:output:];
    goto LABEL_7;
  }

  v14 = ([centerCopy width] + 15) >> 4;
  v15 = ([v13 height] + 15) >> 4;
  width = [v13 width];
  height = [v13 height];
  [mapCopy setComputePipelineState:self->_upscaleThenReflectLsMap];
  [mapCopy setTexture:inputCopy atIndex:0];
  [mapCopy setBytes:&v23 length:8 atIndex:0];
  [mapCopy setBytes:&width length:4 atIndex:1];
  [mapCopy setBytes:&height length:4 atIndex:2];
  [mapCopy setTexture:v13 atIndex:1];
  v20[0] = v14;
  v20[1] = v15;
  v20[2] = 1;
  v18 = vdupq_n_s64(0x10uLL);
  v19 = 1;
  [mapCopy dispatchThreadgroups:v20 threadsPerThreadgroup:&v18];
  v16 = 0;
LABEL_4:

  return v16;
}

- (int64_t)encodeGetOverlapWithRefs:(id)refs input:(id)input probMap:(id)map metaBuf:(id)buf
{
  refsCopy = refs;
  inputCopy = input;
  mapCopy = map;
  bufCopy = buf;
  v14 = bufCopy;
  if (!inputCopy)
  {
    [GGMMetalToolBox encodeGetOverlapWithRefs:input:probMap:metaBuf:];
LABEL_9:
    v28 = v32.i64[0];
    goto LABEL_5;
  }

  if (!mapCopy)
  {
    [GGMMetalToolBox encodeGetOverlapWithRefs:input:probMap:metaBuf:];
    goto LABEL_9;
  }

  if (!bufCopy)
  {
    [GGMMetalToolBox encodeGetOverlapWithRefs:input:probMap:metaBuf:];
    goto LABEL_9;
  }

  width = [inputCopy width];
  height = [inputCopy height];
  width2 = [mapCopy width];
  height2 = [mapCopy height];
  [refsCopy setComputePipelineState:self->_getOverlapWithRefs];
  [refsCopy setTexture:inputCopy atIndex:0];
  [refsCopy setTexture:mapCopy atIndex:1];
  [refsCopy setBuffer:v14 offset:0 atIndex:0];
  [refsCopy setBytes:&width length:4 atIndex:3];
  [refsCopy setBytes:&height length:4 atIndex:4];
  [refsCopy setBytes:&width2 length:4 atIndex:5];
  [refsCopy setBytes:&height2 length:4 atIndex:6];
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
  [refsCopy dispatchThreadgroups:&v32 threadsPerThreadgroup:&v30];
  v28 = 0;
LABEL_5:

  return v28;
}

- (int64_t)encodeCollectClusterOverlapWithRefs:(id)refs clusterMetaBuf:(id)buf metaBuf:(id)metaBuf
{
  refsCopy = refs;
  bufCopy = buf;
  metaBufCopy = metaBuf;
  v11 = metaBufCopy;
  if (!bufCopy)
  {
    [GGMMetalToolBox encodeCollectClusterOverlapWithRefs:clusterMetaBuf:metaBuf:];
LABEL_7:
    v13 = v17;
    goto LABEL_4;
  }

  if (!metaBufCopy)
  {
    [GGMMetalToolBox encodeCollectClusterOverlapWithRefs:clusterMetaBuf:metaBuf:];
    goto LABEL_7;
  }

  contents = [bufCopy contents];
  [refsCopy setComputePipelineState:self->_collectOverlapWithRefs];
  [refsCopy setBuffer:bufCopy offset:0 atIndex:0];
  [refsCopy setBuffer:v11 offset:0 atIndex:1];
  v17 = (*contents + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2487C3C20;
  [refsCopy dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  v13 = 0;
LABEL_4:

  return v13;
}

- (int64_t)encodePreprocessInputs4MotionCueYUVToCommandEncoder:(id)encoder input:(id)input ref:(id)ref output:(id)output refOutput:(id)refOutput metaBuf:(id)buf processedFrameCount:(int)count
{
  encoderCopy = encoder;
  inputCopy = input;
  refCopy = ref;
  outputCopy = output;
  refOutputCopy = refOutput;
  bufCopy = buf;
  v21 = bufCopy;
  if (!inputCopy)
  {
    [GGMMetalToolBox encodePreprocessInputs4MotionCueYUVToCommandEncoder:input:ref:output:refOutput:metaBuf:processedFrameCount:];
LABEL_14:
    v22 = v26.i64[0];
    goto LABEL_8;
  }

  if (!refCopy && count >= 1)
  {
    [GGMMetalToolBox encodePreprocessInputs4MotionCueYUVToCommandEncoder:input:ref:output:refOutput:metaBuf:processedFrameCount:];
    goto LABEL_14;
  }

  if (!outputCopy)
  {
    [GGMMetalToolBox encodePreprocessInputs4MotionCueYUVToCommandEncoder:input:ref:output:refOutput:metaBuf:processedFrameCount:];
    goto LABEL_14;
  }

  if (!refOutputCopy)
  {
    [GGMMetalToolBox encodePreprocessInputs4MotionCueYUVToCommandEncoder:input:ref:output:refOutput:metaBuf:processedFrameCount:];
    goto LABEL_14;
  }

  if (!bufCopy)
  {
    [GGMMetalToolBox encodePreprocessInputs4MotionCueYUVToCommandEncoder:input:ref:output:refOutput:metaBuf:processedFrameCount:];
    goto LABEL_14;
  }

  width = [outputCopy width];
  height = [outputCopy height];
  [encoderCopy setComputePipelineState:self->_preprocessInputs4MotionCueYUV];
  [encoderCopy setTexture:inputCopy atIndex:0];
  [encoderCopy setTexture:refCopy atIndex:1];
  [encoderCopy setTexture:outputCopy atIndex:3];
  [encoderCopy setTexture:refOutputCopy atIndex:4];
  [encoderCopy setBuffer:v21 offset:0 atIndex:0];
  [encoderCopy setBytes:&width length:4 atIndex:2];
  [encoderCopy setBytes:&height length:4 atIndex:3];
  [encoderCopy setImageblockWidth:32 height:32];
  v26 = vshrq_n_u64(vaddw_s32(vdupq_n_s64(0x1FuLL), vadd_s32(*([v21 contents] + 24), 0x8800000088)), 5uLL);
  v27 = 1;
  v24 = vdupq_n_s64(0x20uLL);
  v25 = 1;
  [encoderCopy dispatchThreadgroups:&v26 threadsPerThreadgroup:&v24];
  v22 = 0;
LABEL_8:

  return v22;
}

- (int64_t)encodeCollectMvToFuture:(id)future metaBuf:(id)buf
{
  futureCopy = future;
  bufCopy = buf;
  v8 = bufCopy;
  if (bufCopy)
  {
    contents = [bufCopy contents];
    [futureCopy setComputePipelineState:self->_collectMvToFuture];
    [futureCopy setBuffer:v8 offset:0 atIndex:0];
    v14 = (*contents + 31) >> 5;
    v15 = vdupq_n_s64(1uLL);
    v12 = 32;
    v13 = xmmword_2487C3C20;
    [futureCopy dispatchThreadgroups:&v14 threadsPerThreadgroup:&v12];
    v10 = 0;
  }

  else
  {
    [GGMMetalToolBox encodeCollectMvToFuture:metaBuf:];
    v10 = v14;
  }

  return v10;
}

- (int64_t)encodeWarpRefMeta:(id)meta refMetaBuf:(id)buf metaBuf:(id)metaBuf outMetaBuf:(id)outMetaBuf lsCheckOutmetaBuf:(id)outmetaBuf redoTrackingOutmetaBuf:(id)trackingOutmetaBuf capRefMetaCnt:(BOOL)cnt
{
  metaCopy = meta;
  bufCopy = buf;
  metaBufCopy = metaBuf;
  outMetaBufCopy = outMetaBuf;
  outmetaBufCopy = outmetaBuf;
  trackingOutmetaBufCopy = trackingOutmetaBuf;
  v21 = trackingOutmetaBufCopy;
  cntCopy = cnt;
  if (!bufCopy)
  {
    [GGMMetalToolBox encodeWarpRefMeta:refMetaBuf:metaBuf:outMetaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:capRefMetaCnt:];
LABEL_13:
    v22 = v26.i64[0];
    goto LABEL_7;
  }

  if (!metaBufCopy)
  {
    [GGMMetalToolBox encodeWarpRefMeta:refMetaBuf:metaBuf:outMetaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:capRefMetaCnt:];
    goto LABEL_13;
  }

  if (!outMetaBufCopy)
  {
    [GGMMetalToolBox encodeWarpRefMeta:refMetaBuf:metaBuf:outMetaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:capRefMetaCnt:];
    goto LABEL_13;
  }

  if (!outmetaBufCopy)
  {
    [GGMMetalToolBox encodeWarpRefMeta:refMetaBuf:metaBuf:outMetaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:capRefMetaCnt:];
    goto LABEL_13;
  }

  if (!trackingOutmetaBufCopy)
  {
    [GGMMetalToolBox encodeWarpRefMeta:refMetaBuf:metaBuf:outMetaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:capRefMetaCnt:];
    goto LABEL_13;
  }

  [metaCopy setComputePipelineState:self->_warpRefMeta];
  [metaCopy setBuffer:bufCopy offset:0 atIndex:0];
  [metaCopy setBuffer:metaBufCopy offset:0 atIndex:1];
  [metaCopy setBuffer:outMetaBufCopy offset:0 atIndex:2];
  [metaCopy setBuffer:outmetaBufCopy offset:0 atIndex:3];
  [metaCopy setBuffer:v21 offset:0 atIndex:4];
  [metaCopy setBytes:&cntCopy length:1 atIndex:5];
  v26 = vdupq_n_s64(1uLL);
  v27 = 1;
  v24 = xmmword_2487C3C00;
  v25 = 1;
  [metaCopy dispatchThreadgroups:&v26 threadsPerThreadgroup:&v24];
  v22 = 0;
LABEL_7:

  return v22;
}

- (int64_t)encodeCollectMetaContainers:(id)containers metaBuf:(id)buf lsCheckOutmetaBuf:(id)outmetaBuf redoTrackingOutmetaBuf:(id)trackingOutmetaBuf currTrackId:(int)id
{
  containersCopy = containers;
  bufCopy = buf;
  outmetaBufCopy = outmetaBuf;
  trackingOutmetaBufCopy = trackingOutmetaBuf;
  v16 = trackingOutmetaBufCopy;
  idCopy = id;
  if (!bufCopy)
  {
    [GGMMetalToolBox encodeCollectMetaContainers:metaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:currTrackId:];
LABEL_9:
    v17 = v21.i64[0];
    goto LABEL_5;
  }

  if (!outmetaBufCopy)
  {
    [GGMMetalToolBox encodeCollectMetaContainers:metaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:currTrackId:];
    goto LABEL_9;
  }

  if (!trackingOutmetaBufCopy)
  {
    [GGMMetalToolBox encodeCollectMetaContainers:metaBuf:lsCheckOutmetaBuf:redoTrackingOutmetaBuf:currTrackId:];
    goto LABEL_9;
  }

  [containersCopy setComputePipelineState:self->_collectMetaContainers];
  [containersCopy setBuffer:bufCopy offset:0 atIndex:0];
  [containersCopy setBuffer:outmetaBufCopy offset:0 atIndex:1];
  [containersCopy setBuffer:v16 offset:0 atIndex:2];
  [containersCopy setBytes:&idCopy length:4 atIndex:3];
  v21 = vdupq_n_s64(1uLL);
  v22 = 1;
  v19 = xmmword_2487C3C00;
  v20 = 1;
  [containersCopy dispatchThreadgroups:&v21 threadsPerThreadgroup:&v19];
  v17 = 0;
LABEL_5:

  return v17;
}

- (int64_t)encodeRefineFutureHwLsMapWithTrackingToEncoder:(id)encoder reflHwMap:(id)map target:(id)target opticalCenter:(id)center warpedRefReflHwMap:(id)hwMap warpedReflRef:(id)ref metaBuf:
{
  v12 = v8;
  encoderCopy = encoder;
  mapCopy = map;
  targetCopy = target;
  centerCopy = center;
  hwMapCopy = hwMap;
  refCopy = ref;
  v22 = refCopy;
  if (!mapCopy)
  {
    [GGMMetalToolBox encodeRefineFutureHwLsMapWithTrackingToEncoder:reflHwMap:target:opticalCenter:warpedRefReflHwMap:warpedReflRef:metaBuf:];
LABEL_13:
    v31 = v35[0];
    goto LABEL_7;
  }

  if (!targetCopy)
  {
    [GGMMetalToolBox encodeRefineFutureHwLsMapWithTrackingToEncoder:reflHwMap:target:opticalCenter:warpedRefReflHwMap:warpedReflRef:metaBuf:];
    goto LABEL_13;
  }

  if (!centerCopy)
  {
    [GGMMetalToolBox encodeRefineFutureHwLsMapWithTrackingToEncoder:reflHwMap:target:opticalCenter:warpedRefReflHwMap:warpedReflRef:metaBuf:];
    goto LABEL_13;
  }

  if (!hwMapCopy)
  {
    [GGMMetalToolBox encodeRefineFutureHwLsMapWithTrackingToEncoder:reflHwMap:target:opticalCenter:warpedRefReflHwMap:warpedReflRef:metaBuf:];
    goto LABEL_13;
  }

  if (!refCopy)
  {
    [GGMMetalToolBox encodeRefineFutureHwLsMapWithTrackingToEncoder:reflHwMap:target:opticalCenter:warpedRefReflHwMap:warpedReflRef:metaBuf:];
    goto LABEL_13;
  }

  contents = [refCopy contents];
  LODWORD(v24) = *(contents + 24);
  LODWORD(v25) = *(contents + 28);
  v26 = (((v24 + 128.0 + 4.0) * 0.5 + 16.0 + -1.0) * 0.0625);
  v27 = (((v25 + 128.0 + 4.0) * 0.5 + 16.0 + -1.0) * 0.0625);
  width = [mapCopy width];
  height = [mapCopy height];
  width2 = [targetCopy width];
  height2 = [targetCopy height];
  v30.f32[0] = width2;
  v30.f32[1] = height2;
  v36 = vdiv_f32(v12, v30);
  [encoderCopy setComputePipelineState:self->_refineFutureHwLsMapWithTrackingYUV];
  [encoderCopy setBuffer:v22 offset:0 atIndex:0];
  [encoderCopy setTexture:mapCopy atIndex:0];
  [encoderCopy setTexture:targetCopy atIndex:1];
  [encoderCopy setBytes:&v36 length:8 atIndex:1];
  [encoderCopy setBytes:&width length:4 atIndex:2];
  [encoderCopy setBytes:&height length:4 atIndex:3];
  [encoderCopy setTexture:centerCopy atIndex:2];
  [encoderCopy setTexture:hwMapCopy atIndex:3];
  [encoderCopy setTexture:mapCopy atIndex:4];
  v35[0] = v26;
  v35[1] = v27;
  v35[2] = 1;
  v33 = vdupq_n_s64(0x10uLL);
  v34 = 1;
  [encoderCopy dispatchThreadgroups:v35 threadsPerThreadgroup:&v33];
  v31 = 0;
LABEL_7:

  return v31;
}

- (int64_t)encodeCopyCurrMetaForProcFuture:(id)future metaBuf:(id)buf outMetaBuf:(id)metaBuf
{
  futureCopy = future;
  bufCopy = buf;
  metaBufCopy = metaBuf;
  v11 = metaBufCopy;
  if (!bufCopy)
  {
    [GGMMetalToolBox encodeCopyCurrMetaForProcFuture:metaBuf:outMetaBuf:];
LABEL_7:
    v13 = v17;
    goto LABEL_4;
  }

  if (!metaBufCopy)
  {
    [GGMMetalToolBox encodeCopyCurrMetaForProcFuture:metaBuf:outMetaBuf:];
    goto LABEL_7;
  }

  contents = [bufCopy contents];
  [futureCopy setComputePipelineState:self->_copyCurrMetaForProcFuture];
  [futureCopy setBuffer:bufCopy offset:0 atIndex:0];
  [futureCopy setBuffer:v11 offset:0 atIndex:1];
  v17 = (*contents + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2487C3C20;
  [futureCopy dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  v13 = 0;
LABEL_4:

  return v13;
}

- (int64_t)encodeCollectClusterMaxProb:(id)prob clusterMetaBuf:(id)buf metaBuf:(id)metaBuf
{
  probCopy = prob;
  bufCopy = buf;
  metaBufCopy = metaBuf;
  v11 = metaBufCopy;
  if (!bufCopy)
  {
    [GGMMetalToolBox encodeCollectClusterMaxProb:clusterMetaBuf:metaBuf:];
LABEL_7:
    v13 = v17;
    goto LABEL_4;
  }

  if (!metaBufCopy)
  {
    [GGMMetalToolBox encodeCollectClusterMaxProb:clusterMetaBuf:metaBuf:];
    goto LABEL_7;
  }

  contents = [bufCopy contents];
  [probCopy setComputePipelineState:self->_collectClusterMaxProb];
  [probCopy setBuffer:bufCopy offset:0 atIndex:0];
  [probCopy setBuffer:v11 offset:0 atIndex:1];
  v17 = (*contents + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2487C3C20;
  [probCopy dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  v13 = 0;
LABEL_4:

  return v13;
}

- (int64_t)encodeSyncWeightsOriginal:(id)original clusterMetaBuf:(id)buf metaBuf:(id)metaBuf
{
  originalCopy = original;
  bufCopy = buf;
  metaBufCopy = metaBuf;
  v11 = metaBufCopy;
  if (!bufCopy)
  {
    [GGMMetalToolBox encodeSyncWeightsOriginal:clusterMetaBuf:metaBuf:];
LABEL_7:
    v12 = v16.i64[0];
    goto LABEL_4;
  }

  if (!metaBufCopy)
  {
    [GGMMetalToolBox encodeSyncWeightsOriginal:clusterMetaBuf:metaBuf:];
    goto LABEL_7;
  }

  [originalCopy setComputePipelineState:self->_syncWeightsOriginal];
  [originalCopy setBuffer:bufCopy offset:0 atIndex:0];
  [originalCopy setBuffer:v11 offset:0 atIndex:1];
  v16 = vdupq_n_s64(1uLL);
  v17 = 1;
  v14 = xmmword_2487C3C00;
  v15 = 1;
  [originalCopy dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
  v12 = 0;
LABEL_4:

  return v12;
}

- (int64_t)encodeGetRoiMaxAndAvgLumaYUV:(id)v target:(id)target lsMap:(id)map meta:(id)meta
{
  vCopy = v;
  targetCopy = target;
  mapCopy = map;
  metaCopy = meta;
  v14 = metaCopy;
  if (!targetCopy)
  {
    [GGMMetalToolBox encodeGetRoiMaxAndAvgLumaYUV:target:lsMap:meta:];
LABEL_9:
    v24 = v29.i64[0];
    goto LABEL_5;
  }

  if (!mapCopy)
  {
    [GGMMetalToolBox encodeGetRoiMaxAndAvgLumaYUV:target:lsMap:meta:];
    goto LABEL_9;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeGetRoiMaxAndAvgLumaYUV:target:lsMap:meta:];
    goto LABEL_9;
  }

  v15 = *([metaCopy contents] + 24);
  v16.i64[0] = v15;
  v16.i64[1] = HIDWORD(v15);
  __asm { FMOV            V1.2D, #4.0 }

  v22 = vaddq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v16), vdupq_n_s64(0x4060000000000000uLL)), _Q1), vdupq_n_s64(0x4040000000000000uLL));
  __asm { FMOV            V1.2D, #-1.0 }

  v26 = vcvtq_u64_f64(vmulq_f64(vaddq_f64(v22, _Q1), vdupq_n_s64(0x3FA0000000000000uLL)));
  [vCopy setComputePipelineState:self->_getRoiMaxAndAvgLumaYUV];
  [vCopy setBuffer:v14 offset:0 atIndex:0];
  [vCopy setTexture:targetCopy atIndex:0];
  [vCopy setTexture:mapCopy atIndex:1];
  v29 = v26;
  v30 = 1;
  v27 = vdupq_n_s64(0x20uLL);
  v28 = 1;
  [vCopy dispatchThreadgroups:&v29 threadsPerThreadgroup:&v27];
  v24 = 0;
LABEL_5:

  return v24;
}

- (int64_t)encodeCollectClusterMaxAndAvgLuma:(id)luma clusterMetaBuf:(id)buf metaBuf:(id)metaBuf
{
  lumaCopy = luma;
  bufCopy = buf;
  metaBufCopy = metaBuf;
  v11 = metaBufCopy;
  if (!bufCopy)
  {
    [GGMMetalToolBox encodeCollectClusterMaxAndAvgLuma:clusterMetaBuf:metaBuf:];
LABEL_7:
    v13 = v17;
    goto LABEL_4;
  }

  if (!metaBufCopy)
  {
    [GGMMetalToolBox encodeCollectClusterMaxAndAvgLuma:clusterMetaBuf:metaBuf:];
    goto LABEL_7;
  }

  contents = [bufCopy contents];
  [lumaCopy setComputePipelineState:self->_collectClusterMaxAndAvgLuma];
  [lumaCopy setBuffer:bufCopy offset:0 atIndex:0];
  [lumaCopy setBuffer:v11 offset:0 atIndex:1];
  v17 = (*contents + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2487C3C20;
  [lumaCopy dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  v13 = 0;
LABEL_4:

  return v13;
}

- (int64_t)encodeGetMvFromLsToCommandEncoder:(GGMMetalToolBox *)self target:(SEL)target lsMap:(id)map refLsMap:(id)lsMap targetCenter:(id)center refCenter:(id)refCenter meta:(id)meta
{
  v10 = v8;
  v11 = v7;
  mapCopy = map;
  lsMapCopy = lsMap;
  centerCopy = center;
  refCenterCopy = refCenter;
  v31 = v10;
  v32 = v11;
  metaCopy = meta;
  v21 = metaCopy;
  if (!lsMapCopy)
  {
    [GGMMetalToolBox encodeGetMvFromLsToCommandEncoder:target:lsMap:refLsMap:targetCenter:refCenter:meta:];
LABEL_11:
    v23 = v27;
    goto LABEL_6;
  }

  if (!centerCopy)
  {
    [GGMMetalToolBox encodeGetMvFromLsToCommandEncoder:target:lsMap:refLsMap:targetCenter:refCenter:meta:];
    goto LABEL_11;
  }

  if (!refCenterCopy)
  {
    [GGMMetalToolBox encodeGetMvFromLsToCommandEncoder:target:lsMap:refLsMap:targetCenter:refCenter:meta:];
    goto LABEL_11;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeGetMvFromLsToCommandEncoder:target:lsMap:refLsMap:targetCenter:refCenter:meta:];
    goto LABEL_11;
  }

  contents = [metaCopy contents];
  width = [lsMapCopy width];
  height = [lsMapCopy height];
  [mapCopy setComputePipelineState:self->_getMvFromLs];
  [mapCopy setTexture:centerCopy atIndex:0];
  [mapCopy setTexture:refCenterCopy atIndex:1];
  [mapCopy setBuffer:v21 offset:0 atIndex:0];
  [mapCopy setBytes:&width length:8 atIndex:1];
  [mapCopy setBytes:&height length:8 atIndex:2];
  [mapCopy setBytes:&v32 length:8 atIndex:3];
  [mapCopy setBytes:&v31 length:8 atIndex:4];
  v27 = (*contents + 31) >> 5;
  v28 = vdupq_n_s64(1uLL);
  v25 = 32;
  v26 = xmmword_2487C3C20;
  [mapCopy dispatchThreadgroups:&v27 threadsPerThreadgroup:&v25];
  v23 = 0;
LABEL_6:

  return v23;
}

- (int64_t)encodeConditionalDilateProbMapYUV:(id)v inputYUV:(id)uV probMap:(id)map dilatedProbMap:(id)probMap hardDilationRadius:(float)radius softDilationRadius:(float)dilationRadius meta:(id)meta
{
  vCopy = v;
  uVCopy = uV;
  mapCopy = map;
  probMapCopy = probMap;
  dilationRadiusCopy = dilationRadius;
  radiusCopy = radius;
  metaCopy = meta;
  v21 = metaCopy;
  if (!uVCopy)
  {
    [GGMMetalToolBox encodeConditionalDilateProbMapYUV:inputYUV:probMap:dilatedProbMap:hardDilationRadius:softDilationRadius:meta:];
LABEL_11:
    v27 = v31[0];
    goto LABEL_6;
  }

  if (!mapCopy)
  {
    [GGMMetalToolBox encodeConditionalDilateProbMapYUV:inputYUV:probMap:dilatedProbMap:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  if (!probMapCopy)
  {
    [GGMMetalToolBox encodeConditionalDilateProbMapYUV:inputYUV:probMap:dilatedProbMap:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeConditionalDilateProbMapYUV:inputYUV:probMap:dilatedProbMap:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_11;
  }

  contents = [metaCopy contents];
  LODWORD(v23) = *(contents + 24);
  LODWORD(v24) = *(contents + 28);
  v25 = (((v23 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  v26 = (((v24 + 128.0 + 4.0) * 0.5 + 4.0 + -1.0) * 0.25);
  width = [probMapCopy width];
  height = [probMapCopy height];
  [vCopy setComputePipelineState:self->_conditionalDilateProbMapYUV];
  [vCopy setBuffer:v21 offset:0 atIndex:0];
  [vCopy setTexture:uVCopy atIndex:0];
  [vCopy setTexture:mapCopy atIndex:1];
  [vCopy setTexture:probMapCopy atIndex:2];
  [vCopy setBytes:&radiusCopy length:4 atIndex:1];
  [vCopy setBytes:&dilationRadiusCopy length:4 atIndex:2];
  [vCopy setBytes:&width length:4 atIndex:3];
  [vCopy setBytes:&height length:4 atIndex:4];
  v31[0] = v25;
  v31[1] = v26;
  v31[2] = 1;
  v29 = vdupq_n_s64(4uLL);
  v30 = 1;
  [vCopy dispatchThreadgroups:v31 threadsPerThreadgroup:&v29];
  v27 = 0;
LABEL_6:

  return v27;
}

- (int64_t)encodeCopyMapToMap4RoiGenToCommandEncoder:(id)encoder input:(id)input output:(id)output metaBuf:(id)buf
{
  encoderCopy = encoder;
  inputCopy = input;
  outputCopy = output;
  bufCopy = buf;
  v14 = bufCopy;
  if (!inputCopy)
  {
    [GGMMetalToolBox encodeCopyMapToMap4RoiGenToCommandEncoder:input:output:metaBuf:];
LABEL_9:
    v26 = v30.i64[0];
    goto LABEL_5;
  }

  if (!outputCopy)
  {
    [GGMMetalToolBox encodeCopyMapToMap4RoiGenToCommandEncoder:input:output:metaBuf:];
    goto LABEL_9;
  }

  if (!bufCopy)
  {
    [GGMMetalToolBox encodeCopyMapToMap4RoiGenToCommandEncoder:input:output:metaBuf:];
    goto LABEL_9;
  }

  [encoderCopy setComputePipelineState:self->_copyMapToMap4RoiGen];
  [encoderCopy setBuffer:v14 offset:0 atIndex:0];
  [encoderCopy setTexture:inputCopy atIndex:0];
  [encoderCopy setTexture:outputCopy atIndex:1];
  [encoderCopy setImageblockWidth:32 height:32];
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
  [encoderCopy dispatchThreadgroups:&v30 threadsPerThreadgroup:&v28];
  v26 = 0;
LABEL_5:

  return v26;
}

- (int64_t)encodeCopyFullFrameMapToMap4RoiGenToCommandEncoder:(id)encoder input:(id)input output:(id)output
{
  encoderCopy = encoder;
  inputCopy = input;
  outputCopy = output;
  v11 = outputCopy;
  if (!inputCopy)
  {
    [GGMMetalToolBox encodeCopyFullFrameMapToMap4RoiGenToCommandEncoder:input:output:];
LABEL_7:
    v12 = v16[0];
    goto LABEL_4;
  }

  if (!outputCopy)
  {
    [GGMMetalToolBox encodeCopyFullFrameMapToMap4RoiGenToCommandEncoder:input:output:];
    goto LABEL_7;
  }

  [encoderCopy setComputePipelineState:self->_copyFullFrameMapToMap4RoiGen];
  [encoderCopy setTexture:inputCopy atIndex:0];
  [encoderCopy setTexture:v11 atIndex:1];
  [encoderCopy setImageblockWidth:32 height:32];
  v16[0] = ([v11 width] + 31) >> 5;
  v16[1] = ([v11 height] + 31) >> 5;
  v16[2] = 1;
  v14 = vdupq_n_s64(0x20uLL);
  v15 = 1;
  [encoderCopy dispatchThreadgroups:v16 threadsPerThreadgroup:&v14];
  v12 = 0;
LABEL_4:

  return v12;
}

- (int64_t)encodeWarpRefMetaLite:(id)lite refMetaBuf:(id)buf outMetaBuf:(id)metaBuf
{
  liteCopy = lite;
  bufCopy = buf;
  metaBufCopy = metaBuf;
  v11 = metaBufCopy;
  if (!bufCopy)
  {
    [GGMMetalToolBox encodeWarpRefMetaLite:refMetaBuf:outMetaBuf:];
LABEL_7:
    v12 = v16.i64[0];
    goto LABEL_4;
  }

  if (!metaBufCopy)
  {
    [GGMMetalToolBox encodeWarpRefMetaLite:refMetaBuf:outMetaBuf:];
    goto LABEL_7;
  }

  [liteCopy setComputePipelineState:self->_warpRefMetaLite];
  [liteCopy setBuffer:bufCopy offset:0 atIndex:0];
  [liteCopy setBuffer:v11 offset:0 atIndex:1];
  v16 = vdupq_n_s64(1uLL);
  v17 = 1;
  v14 = xmmword_2487C3C00;
  v15 = 1;
  [liteCopy dispatchThreadgroups:&v16 threadsPerThreadgroup:&v14];
  v12 = 0;
LABEL_4:

  return v12;
}

- (int64_t)encodeBlendSpatialMitigatedYUVToCommandEncoder:(id)encoder inputTexture:(id)texture probMapTexture:(id)mapTexture probMap4TradSpatialTexture:(id)spatialTexture tradSpatialMitTexture:(id)mitTexture dlSpatialMitTexture:(id)spatialMitTexture outputTexture:(id)outputTexture metaBuf:(id)self0
{
  encoderCopy = encoder;
  textureCopy = texture;
  mapTextureCopy = mapTexture;
  spatialTextureCopy = spatialTexture;
  mitTextureCopy = mitTexture;
  spatialMitTextureCopy = spatialMitTexture;
  outputTextureCopy = outputTexture;
  bufCopy = buf;
  v24 = bufCopy;
  if (!textureCopy)
  {
    [GGMMetalToolBox encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:];
LABEL_17:
    v37 = v43.i64[0];
    goto LABEL_9;
  }

  if (!mapTextureCopy)
  {
    [GGMMetalToolBox encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:];
    goto LABEL_17;
  }

  if (!spatialTextureCopy)
  {
    [GGMMetalToolBox encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:];
    goto LABEL_17;
  }

  if (!mitTextureCopy)
  {
    [GGMMetalToolBox encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:];
    goto LABEL_17;
  }

  if (!spatialMitTextureCopy)
  {
    [GGMMetalToolBox encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:];
    goto LABEL_17;
  }

  if (!outputTextureCopy)
  {
    [GGMMetalToolBox encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:];
    goto LABEL_17;
  }

  if (!bufCopy)
  {
    [GGMMetalToolBox encodeBlendSpatialMitigatedYUVToCommandEncoder:inputTexture:probMapTexture:probMap4TradSpatialTexture:tradSpatialMitTexture:dlSpatialMitTexture:outputTexture:metaBuf:];
    goto LABEL_17;
  }

  width = [outputTextureCopy width];
  height = [outputTextureCopy height];
  [encoderCopy setComputePipelineState:self->_blendSpatialMitigatedYUV];
  [encoderCopy setBuffer:v24 offset:0 atIndex:0];
  [encoderCopy setBytes:&width length:4 atIndex:3];
  [encoderCopy setBytes:&height length:4 atIndex:4];
  [encoderCopy setTexture:textureCopy atIndex:0];
  [encoderCopy setTexture:mitTextureCopy atIndex:1];
  [encoderCopy setTexture:spatialMitTextureCopy atIndex:2];
  [encoderCopy setTexture:mapTextureCopy atIndex:3];
  [encoderCopy setTexture:spatialTextureCopy atIndex:4];
  [encoderCopy setTexture:outputTextureCopy atIndex:5];
  [encoderCopy setImageblockWidth:16 height:16];
  contents = [v24 contents];
  v26.f32[0] = width;
  v26.f32[1] = height;
  v40 = v26;
  width2 = [textureCopy width];
  height2 = [textureCopy height];
  v28.f32[0] = width2;
  v28.f32[1] = height2;
  v29 = vdiv_f32(v40, v28);
  v30 = vadd_s32(contents[3], 0x8000000080);
  v31.i64[0] = v30.u32[0];
  v31.i64[1] = v30.u32[1];
  __asm { FMOV            V2.2D, #4.0 }

  v43 = vshrq_n_u64(vaddq_s64(vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v31), vdupq_n_s64(0x4060000000000000uLL)), _Q2), vcvtq_f64_f32(v29)))), vdupq_n_s64(0xFuLL)), 4uLL);
  v44 = 1;
  v41 = vdupq_n_s64(0x10uLL);
  v42 = 1;
  [encoderCopy dispatchThreadgroups:&v43 threadsPerThreadgroup:&v41];
  v37 = 0;
LABEL_9:

  return v37;
}

- (int64_t)encodeBlendRefsYUVToCommandEncoder:(id)encoder hmgrphyRef0:(id)ref0 hmgrphyRef1:(id)ref1 bmRef0:(id)bmRef0 bmRef1:(id)bmRef1 output0:(id)output0 output1:(id)output1 metaBuf:(id)self0
{
  encoderCopy = encoder;
  ref0Copy = ref0;
  ref1Copy = ref1;
  bmRef0Copy = bmRef0;
  bmRef1Copy = bmRef1;
  output0Copy = output0;
  output1Copy = output1;
  bufCopy = buf;
  v24 = bufCopy;
  if (!ref0Copy)
  {
    [GGMMetalToolBox encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:];
LABEL_17:
    v34 = v38.i64[0];
    goto LABEL_9;
  }

  if (!ref1Copy)
  {
    [GGMMetalToolBox encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:];
    goto LABEL_17;
  }

  if (!bmRef0Copy)
  {
    [GGMMetalToolBox encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:];
    goto LABEL_17;
  }

  if (!bmRef1Copy)
  {
    [GGMMetalToolBox encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:];
    goto LABEL_17;
  }

  if (!output0Copy)
  {
    [GGMMetalToolBox encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:];
    goto LABEL_17;
  }

  if (!output1Copy)
  {
    [GGMMetalToolBox encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:];
    goto LABEL_17;
  }

  if (!bufCopy)
  {
    [GGMMetalToolBox encodeBlendRefsYUVToCommandEncoder:hmgrphyRef0:hmgrphyRef1:bmRef0:bmRef1:output0:output1:metaBuf:];
    goto LABEL_17;
  }

  [encoderCopy setComputePipelineState:self->_blendRefsYUV];
  [encoderCopy setBuffer:v24 offset:0 atIndex:0];
  [encoderCopy setTexture:ref0Copy atIndex:0];
  [encoderCopy setTexture:ref1Copy atIndex:1];
  [encoderCopy setTexture:bmRef0Copy atIndex:2];
  [encoderCopy setTexture:bmRef1Copy atIndex:3];
  [encoderCopy setTexture:output0Copy atIndex:4];
  [encoderCopy setTexture:output1Copy atIndex:5];
  [encoderCopy setImageblockWidth:32 height:32];
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
  [encoderCopy dispatchThreadgroups:&v38 threadsPerThreadgroup:&v36];
  v34 = 0;
LABEL_9:

  return v34;
}

- (int64_t)encodeAlignBgAvgYUVToCommandEncoder:(id)encoder input:(id)input ref0:(id)ref0 ref1:(id)ref1 alignedRef0:(id)alignedRef0 alignedRef1:(id)alignedRef1 metaBuf:(id)buf
{
  encoderCopy = encoder;
  inputCopy = input;
  ref0Copy = ref0;
  ref1Copy = ref1;
  alignedRef0Copy = alignedRef0;
  alignedRef1Copy = alignedRef1;
  bufCopy = buf;
  v22 = bufCopy;
  if (!inputCopy)
  {
    [GGMMetalToolBox encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:];
LABEL_15:
    v32 = v36.i64[0];
    goto LABEL_8;
  }

  if (!ref0Copy)
  {
    [GGMMetalToolBox encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:];
    goto LABEL_15;
  }

  if (!ref1Copy)
  {
    [GGMMetalToolBox encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:];
    goto LABEL_15;
  }

  if (!alignedRef0Copy)
  {
    [GGMMetalToolBox encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:];
    goto LABEL_15;
  }

  if (!alignedRef1Copy)
  {
    [GGMMetalToolBox encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:];
    goto LABEL_15;
  }

  if (!bufCopy)
  {
    [GGMMetalToolBox encodeAlignBgAvgYUVToCommandEncoder:input:ref0:ref1:alignedRef0:alignedRef1:metaBuf:];
    goto LABEL_15;
  }

  [encoderCopy setComputePipelineState:self->_alignBgAvgYUV];
  [encoderCopy setTexture:inputCopy atIndex:0];
  [encoderCopy setTexture:ref0Copy atIndex:1];
  [encoderCopy setTexture:ref1Copy atIndex:2];
  [encoderCopy setTexture:alignedRef0Copy atIndex:3];
  [encoderCopy setTexture:alignedRef1Copy atIndex:4];
  [encoderCopy setBuffer:v22 offset:0 atIndex:0];
  [encoderCopy setImageblockWidth:32 height:32];
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
  [encoderCopy dispatchThreadgroups:&v36 threadsPerThreadgroup:&v34];
  v32 = 0;
LABEL_8:

  return v32;
}

- (id)createForwarpOutputBufferWidth:(unint64_t)width height:(unint64_t)height channels:(unint64_t)channels
{
  v5 = [(MTLDevice *)self->super._device newBufferWithLength:(4 * (width * ((height + 15) & 0x3FFFFFFFFFFFFFF0) + width * ((height + 15) & 0x3FFFFFFFFFFFFFF0) * channels) + 4095) & 0xFFFFFFFFFFFFF000 options:0];

  return v5;
}

- (int64_t)encodeResetOutputToCommandEncoder:(id)encoder input:(id)input meta:(id)meta output0:(id)output0 output1:(id)output1
{
  encoderCopy = encoder;
  inputCopy = input;
  metaCopy = meta;
  output0Copy = output0;
  output1Copy = output1;
  v17 = output1Copy;
  if (!inputCopy)
  {
    [GGMMetalToolBox encodeResetOutputToCommandEncoder:input:meta:output0:output1:];
LABEL_11:
    v29 = v33.i64[0];
    goto LABEL_6;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeResetOutputToCommandEncoder:input:meta:output0:output1:];
    goto LABEL_11;
  }

  if (!output0Copy)
  {
    [GGMMetalToolBox encodeResetOutputToCommandEncoder:input:meta:output0:output1:];
    goto LABEL_11;
  }

  if (!output1Copy)
  {
    [GGMMetalToolBox encodeResetOutputToCommandEncoder:input:meta:output0:output1:];
    goto LABEL_11;
  }

  [encoderCopy setComputePipelineState:self->_resetOutput];
  [encoderCopy setTexture:inputCopy atIndex:0];
  [encoderCopy setBuffer:metaCopy offset:0 atIndex:0];
  [encoderCopy setBuffer:output0Copy offset:0 atIndex:1];
  [encoderCopy setBuffer:v17 offset:0 atIndex:2];
  v18 = *([metaCopy contents] + 24);
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
  [encoderCopy dispatchThreadgroups:&v33 threadsPerThreadgroup:&v31];
  v29 = 0;
LABEL_6:

  return v29;
}

- (int64_t)encodeUpdateOutputFloatToCommandEncoder:(id)encoder input0:(id)input0 flow0:(id)flow0 input1:(id)input1 flow1:(id)flow1 meta:(id)meta output0:(id)output0 output1:(id)self0
{
  encoderCopy = encoder;
  input0Copy = input0;
  flow0Copy = flow0;
  input1Copy = input1;
  flow1Copy = flow1;
  metaCopy = meta;
  output0Copy = output0;
  output1Copy = output1;
  v24 = output1Copy;
  if (!input0Copy)
  {
    [GGMMetalToolBox encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:];
LABEL_17:
    v36 = v40.i64[0];
    goto LABEL_9;
  }

  if (!flow0Copy)
  {
    [GGMMetalToolBox encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:];
    goto LABEL_17;
  }

  if (!input1Copy)
  {
    [GGMMetalToolBox encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:];
    goto LABEL_17;
  }

  if (!flow1Copy)
  {
    [GGMMetalToolBox encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:];
    goto LABEL_17;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:];
    goto LABEL_17;
  }

  if (!output0Copy)
  {
    [GGMMetalToolBox encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:];
    goto LABEL_17;
  }

  if (!output1Copy)
  {
    [GGMMetalToolBox encodeUpdateOutputFloatToCommandEncoder:input0:flow0:input1:flow1:meta:output0:output1:];
    goto LABEL_17;
  }

  [encoderCopy setComputePipelineState:self->_updateOutputFloat];
  [encoderCopy setTexture:input0Copy atIndex:0];
  [encoderCopy setTexture:flow0Copy atIndex:1];
  [encoderCopy setTexture:input1Copy atIndex:2];
  [encoderCopy setTexture:flow1Copy atIndex:3];
  [encoderCopy setBuffer:metaCopy offset:0 atIndex:0];
  [encoderCopy setBuffer:output0Copy offset:0 atIndex:1];
  [encoderCopy setBuffer:v24 offset:0 atIndex:2];
  v25 = vadd_s32(*([metaCopy contents] + 24), 0x4000000040);
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
  [encoderCopy dispatchThreadgroups:&v40 threadsPerThreadgroup:&v38];
  v36 = 0;
LABEL_9:

  return v36;
}

- (int64_t)encodeConvertFloatBuffer2TextureToCommandEncoder:(id)encoder inputBuffer0:(id)buffer0 inputBuffer1:(id)buffer1 meta:(id)meta output0:(id)output0 outputMap0:(id)map0 output1:(id)output1 outputMap1:(id)self0
{
  encoderCopy = encoder;
  buffer0Copy = buffer0;
  buffer1Copy = buffer1;
  metaCopy = meta;
  output0Copy = output0;
  map0Copy = map0;
  output1Copy = output1;
  map1Copy = map1;
  v24 = map1Copy;
  if (!buffer0Copy)
  {
    [GGMMetalToolBox encodeConvertFloatBuffer2TextureToCommandEncoder:inputBuffer0:inputBuffer1:meta:output0:outputMap0:output1:outputMap1:];
LABEL_13:
    v36 = v40.i64[0];
    goto LABEL_7;
  }

  if (!buffer1Copy)
  {
    [GGMMetalToolBox encodeConvertFloatBuffer2TextureToCommandEncoder:inputBuffer0:inputBuffer1:meta:output0:outputMap0:output1:outputMap1:];
    goto LABEL_13;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeConvertFloatBuffer2TextureToCommandEncoder:inputBuffer0:inputBuffer1:meta:output0:outputMap0:output1:outputMap1:];
    goto LABEL_13;
  }

  if (!map0Copy)
  {
    [GGMMetalToolBox encodeConvertFloatBuffer2TextureToCommandEncoder:inputBuffer0:inputBuffer1:meta:output0:outputMap0:output1:outputMap1:];
    goto LABEL_13;
  }

  if (!map1Copy)
  {
    [GGMMetalToolBox encodeConvertFloatBuffer2TextureToCommandEncoder:inputBuffer0:inputBuffer1:meta:output0:outputMap0:output1:outputMap1:];
    goto LABEL_13;
  }

  [encoderCopy setComputePipelineState:self->_convertFloatBuffer2Texture];
  [encoderCopy setBuffer:metaCopy offset:0 atIndex:0];
  [encoderCopy setBuffer:buffer0Copy offset:0 atIndex:1];
  [encoderCopy setBuffer:buffer1Copy offset:0 atIndex:2];
  [encoderCopy setTexture:output0Copy atIndex:0];
  [encoderCopy setTexture:map0Copy atIndex:1];
  [encoderCopy setTexture:output1Copy atIndex:2];
  [encoderCopy setTexture:v24 atIndex:3];
  v25 = *([metaCopy contents] + 24);
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
  [encoderCopy dispatchThreadgroups:&v40 threadsPerThreadgroup:&v38];
  v36 = 0;
LABEL_7:

  return v36;
}

- (int64_t)encodeDilateForwarpHoleMap:(id)map fullResTarget:(id)target inputMap0:(id)map0 outputMap0:(id)outputMap0 inputMap1:(id)map1 outputMap1:(id)outputMap1 hardDilationRadius:(float)radius softDilationRadius:(float)self0 meta:(id)self1
{
  mapCopy = map;
  targetCopy = target;
  map0Copy = map0;
  outputMap0Copy = outputMap0;
  map1Copy = map1;
  outputMap1Copy = outputMap1;
  dilationRadiusCopy = dilationRadius;
  radiusCopy = radius;
  metaCopy = meta;
  v26 = metaCopy;
  if (!targetCopy)
  {
    [GGMMetalToolBox encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:];
LABEL_15:
    v36 = v43[0];
    goto LABEL_8;
  }

  if (!map0Copy)
  {
    [GGMMetalToolBox encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_15;
  }

  if (!outputMap0Copy)
  {
    [GGMMetalToolBox encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_15;
  }

  if (!map1Copy)
  {
    [GGMMetalToolBox encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_15;
  }

  if (!outputMap1Copy)
  {
    [GGMMetalToolBox encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_15;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeDilateForwarpHoleMap:fullResTarget:inputMap0:outputMap0:inputMap1:outputMap1:hardDilationRadius:softDilationRadius:meta:];
    goto LABEL_15;
  }

  width = [outputMap0Copy width];
  height = [outputMap0Copy height];
  v28.f32[0] = width;
  v28.f32[1] = height;
  v40 = v28;
  width2 = [targetCopy width];
  height2 = [targetCopy height];
  v30.f32[0] = width2;
  v30.f32[1] = height2;
  v44 = vdiv_f32(v40, v30);
  contents = [v26 contents];
  LODWORD(v32) = *(contents + 24);
  LODWORD(v33) = *(contents + 28);
  v34 = (vcvtpd_u64_f64((v32 + 128.0 + 4.0) * v44.f32[0]) + 31) >> 5;
  v35 = (vcvtpd_u64_f64((v33 + 128.0 + 4.0) * v44.f32[1]) + 31) >> 5;
  [mapCopy setComputePipelineState:self->_dilateForwarpHoleMap];
  [mapCopy setBuffer:v26 offset:0 atIndex:0];
  [mapCopy setTexture:map0Copy atIndex:0];
  [mapCopy setTexture:outputMap0Copy atIndex:1];
  [mapCopy setTexture:map1Copy atIndex:2];
  [mapCopy setTexture:outputMap1Copy atIndex:3];
  [mapCopy setBytes:&radiusCopy length:4 atIndex:1];
  [mapCopy setBytes:&dilationRadiusCopy length:4 atIndex:2];
  [mapCopy setBytes:&v44 length:8 atIndex:3];
  v43[0] = v34;
  v43[1] = v35;
  v43[2] = 1;
  v41 = vdupq_n_s64(0x20uLL);
  v42 = 1;
  [mapCopy dispatchThreadgroups:v43 threadsPerThreadgroup:&v41];
  v36 = 0;
LABEL_8:

  return v36;
}

- (int64_t)encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:(id)encoder fullResTarget:(id)target mvf0:(id)mvf0 mvf1:(id)mvf1 mvf2:(id)mvf2 outMvf:(id)mvf meta:(id)meta
{
  encoderCopy = encoder;
  targetCopy = target;
  mvf0Copy = mvf0;
  mvf1Copy = mvf1;
  mvf2Copy = mvf2;
  mvfCopy = mvf;
  metaCopy = meta;
  v22 = metaCopy;
  if (!targetCopy)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:];
LABEL_15:
    v31 = v38[0];
    goto LABEL_8;
  }

  if (!mvf0Copy)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:];
    goto LABEL_15;
  }

  if (!mvf1Copy)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:];
    goto LABEL_15;
  }

  if (!mvf2Copy)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:];
    goto LABEL_15;
  }

  if (!mvfCopy)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:];
    goto LABEL_15;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:fullResTarget:mvf0:mvf1:mvf2:outMvf:meta:];
    goto LABEL_15;
  }

  contents = [metaCopy contents];
  width = [mvfCopy width];
  height = [mvfCopy height];
  v25.f32[0] = width;
  v25.f32[1] = height;
  v35 = v25;
  width2 = [targetCopy width];
  height2 = [targetCopy height];
  v27.f32[0] = width2;
  v27.f32[1] = height2;
  v39 = vdiv_f32(v35, v27);
  v28 = *(contents + 28);
  v29 = (vcvtpd_u64_f64(((*(contents + 24) + 64) + 128.0 + 4.0) * v39.f32[0]) + 31) >> 5;
  v30 = (vcvtpd_u64_f64(((v28 + 64) + 128.0 + 4.0) * v39.f32[1]) + 31) >> 5;
  [encoderCopy setComputePipelineState:self->_warpMvf0WithMvf1ThenAddToMvf2];
  [encoderCopy setTexture:mvf0Copy atIndex:0];
  [encoderCopy setTexture:mvf1Copy atIndex:1];
  [encoderCopy setTexture:mvf2Copy atIndex:2];
  [encoderCopy setTexture:mvfCopy atIndex:3];
  [encoderCopy setBuffer:v22 offset:0 atIndex:0];
  [encoderCopy setBytes:&v39 length:8 atIndex:1];
  v38[0] = v29;
  v38[1] = v30;
  v38[2] = 1;
  v36 = vdupq_n_s64(0x20uLL);
  v37 = 1;
  [encoderCopy dispatchThreadgroups:v38 threadsPerThreadgroup:&v36];
  v31 = 0;
LABEL_8:

  return v31;
}

- (int64_t)encodeWarpMvf0WithMvf1ToCommandEncoder:(id)encoder fullResTarget:(id)target mvf0:(id)mvf0 mvf1:(id)mvf1 outMvf:(id)mvf meta:(id)meta
{
  encoderCopy = encoder;
  targetCopy = target;
  mvf0Copy = mvf0;
  mvf1Copy = mvf1;
  mvfCopy = mvf;
  metaCopy = meta;
  v20 = metaCopy;
  if (!targetCopy)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
LABEL_13:
    v33 = v41.i64[0];
    goto LABEL_7;
  }

  if (!mvf0Copy)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
    goto LABEL_13;
  }

  if (!mvf1Copy)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
    goto LABEL_13;
  }

  if (!mvfCopy)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
    goto LABEL_13;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeWarpMvf0WithMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
    goto LABEL_13;
  }

  contents = [metaCopy contents];
  width = [mvfCopy width];
  height = [mvfCopy height];
  v23.f32[0] = width;
  v23.f32[1] = height;
  v37 = v23;
  width2 = [targetCopy width];
  height2 = [targetCopy height];
  v25.f32[0] = width2;
  v25.f32[1] = height2;
  v43 = vdiv_f32(v37, v25);
  v26 = vadd_s32(contents[3], 0x4000000040);
  v27.i64[0] = v26.u32[0];
  v27.i64[1] = v26.u32[1];
  __asm { FMOV            V2.2D, #4.0 }

  v38 = vshrq_n_u64(vaddq_s64(vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v27), vdupq_n_s64(0x4060000000000000uLL)), _Q2), vcvtq_f64_f32(v43)))), vdupq_n_s64(0x1FuLL)), 5uLL);
  [encoderCopy setComputePipelineState:self->_warpMvf0WithMvf1];
  [encoderCopy setTexture:mvf0Copy atIndex:0];
  [encoderCopy setTexture:mvf1Copy atIndex:1];
  [encoderCopy setTexture:mvfCopy atIndex:3];
  [encoderCopy setBuffer:v20 offset:0 atIndex:0];
  [encoderCopy setBytes:&v43 length:8 atIndex:1];
  v41 = v38;
  v42 = 1;
  v39 = vdupq_n_s64(0x20uLL);
  v40 = 1;
  [encoderCopy dispatchThreadgroups:&v41 threadsPerThreadgroup:&v39];
  v33 = 0;
LABEL_7:

  return v33;
}

- (int64_t)encodeAddMvf0ToMvf1ToCommandEncoder:(id)encoder fullResTarget:(id)target mvf0:(id)mvf0 mvf1:(id)mvf1 outMvf:(id)mvf meta:(id)meta
{
  encoderCopy = encoder;
  targetCopy = target;
  mvf0Copy = mvf0;
  mvf1Copy = mvf1;
  mvfCopy = mvf;
  metaCopy = meta;
  v20 = metaCopy;
  if (!targetCopy)
  {
    [GGMMetalToolBox encodeAddMvf0ToMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
LABEL_13:
    v33 = v41.i64[0];
    goto LABEL_7;
  }

  if (!mvf0Copy)
  {
    [GGMMetalToolBox encodeAddMvf0ToMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
    goto LABEL_13;
  }

  if (!mvf1Copy)
  {
    [GGMMetalToolBox encodeAddMvf0ToMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
    goto LABEL_13;
  }

  if (!mvfCopy)
  {
    [GGMMetalToolBox encodeAddMvf0ToMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
    goto LABEL_13;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeAddMvf0ToMvf1ToCommandEncoder:fullResTarget:mvf0:mvf1:outMvf:meta:];
    goto LABEL_13;
  }

  contents = [metaCopy contents];
  width = [mvfCopy width];
  height = [mvfCopy height];
  v23.f32[0] = width;
  v23.f32[1] = height;
  v37 = v23;
  width2 = [targetCopy width];
  height2 = [targetCopy height];
  v25.f32[0] = width2;
  v25.f32[1] = height2;
  v43 = vdiv_f32(v37, v25);
  v26 = vadd_s32(contents[3], 0x4000000040);
  v27.i64[0] = v26.u32[0];
  v27.i64[1] = v26.u32[1];
  __asm { FMOV            V2.2D, #4.0 }

  v38 = vshrq_n_u64(vaddq_s64(vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v27), vdupq_n_s64(0x4060000000000000uLL)), _Q2), vcvtq_f64_f32(v43)))), vdupq_n_s64(0x1FuLL)), 5uLL);
  [encoderCopy setComputePipelineState:self->_addMvf0AndMvf1];
  [encoderCopy setTexture:mvf0Copy atIndex:0];
  [encoderCopy setTexture:mvf1Copy atIndex:1];
  [encoderCopy setTexture:mvfCopy atIndex:3];
  [encoderCopy setBuffer:v20 offset:0 atIndex:0];
  [encoderCopy setBytes:&v43 length:8 atIndex:1];
  v41 = v38;
  v42 = 1;
  v39 = vdupq_n_s64(0x20uLL);
  v40 = 1;
  [encoderCopy dispatchThreadgroups:&v41 threadsPerThreadgroup:&v39];
  v33 = 0;
LABEL_7:

  return v33;
}

- (int64_t)encodeCopyMvfToCommandEncoder:(id)encoder fullResTarget:(id)target mvf0:(id)mvf0 outMvf0:(id)outMvf0 mvf1:(id)mvf1 outMvf1:(id)outMvf1 meta:(id)meta
{
  encoderCopy = encoder;
  targetCopy = target;
  mvf0Copy = mvf0;
  outMvf0Copy = outMvf0;
  mvf1Copy = mvf1;
  outMvf1Copy = outMvf1;
  metaCopy = meta;
  v22 = metaCopy;
  if (!targetCopy)
  {
    [GGMMetalToolBox encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:];
LABEL_15:
    v31 = v38[0];
    goto LABEL_8;
  }

  if (!mvf0Copy)
  {
    [GGMMetalToolBox encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:];
    goto LABEL_15;
  }

  if (!outMvf0Copy)
  {
    [GGMMetalToolBox encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:];
    goto LABEL_15;
  }

  if (!mvf1Copy)
  {
    [GGMMetalToolBox encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:];
    goto LABEL_15;
  }

  if (!outMvf1Copy)
  {
    [GGMMetalToolBox encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:];
    goto LABEL_15;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeCopyMvfToCommandEncoder:fullResTarget:mvf0:outMvf0:mvf1:outMvf1:meta:];
    goto LABEL_15;
  }

  contents = [metaCopy contents];
  width = [outMvf0Copy width];
  height = [outMvf0Copy height];
  v25.f32[0] = width;
  v25.f32[1] = height;
  v35 = v25;
  width2 = [targetCopy width];
  height2 = [targetCopy height];
  v27.f32[0] = width2;
  v27.f32[1] = height2;
  v39 = vdiv_f32(v35, v27);
  v28 = *(contents + 28);
  v29 = (vcvtpd_u64_f64(((*(contents + 24) + 64) + 128.0 + 4.0) * v39.f32[0]) + 31) >> 5;
  v30 = (vcvtpd_u64_f64(((v28 + 64) + 128.0 + 4.0) * v39.f32[1]) + 31) >> 5;
  [encoderCopy setComputePipelineState:self->_copyMvf];
  [encoderCopy setTexture:mvf0Copy atIndex:0];
  [encoderCopy setTexture:outMvf0Copy atIndex:1];
  [encoderCopy setTexture:mvf1Copy atIndex:2];
  [encoderCopy setTexture:outMvf1Copy atIndex:3];
  [encoderCopy setBuffer:v22 offset:0 atIndex:0];
  [encoderCopy setBytes:&v39 length:8 atIndex:1];
  v38[0] = v29;
  v38[1] = v30;
  v38[2] = 1;
  v36 = vdupq_n_s64(0x20uLL);
  v37 = 1;
  [encoderCopy dispatchThreadgroups:v38 threadsPerThreadgroup:&v36];
  v31 = 0;
LABEL_8:

  return v31;
}

- (int64_t)encodeVisualizeMvfToCommandEncoder:(id)encoder fullResTarget:(id)target mvf:(id)mvf outMvf:(id)outMvf meta:(id)meta
{
  encoderCopy = encoder;
  targetCopy = target;
  mvfCopy = mvf;
  outMvfCopy = outMvf;
  metaCopy = meta;
  v17 = metaCopy;
  if (!targetCopy)
  {
    [GGMMetalToolBox encodeVisualizeMvfToCommandEncoder:fullResTarget:mvf:outMvf:meta:];
LABEL_11:
    v30 = v38.i64[0];
    goto LABEL_6;
  }

  if (!mvfCopy)
  {
    [GGMMetalToolBox encodeVisualizeMvfToCommandEncoder:fullResTarget:mvf:outMvf:meta:];
    goto LABEL_11;
  }

  if (!outMvfCopy)
  {
    [GGMMetalToolBox encodeVisualizeMvfToCommandEncoder:fullResTarget:mvf:outMvf:meta:];
    goto LABEL_11;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeVisualizeMvfToCommandEncoder:fullResTarget:mvf:outMvf:meta:];
    goto LABEL_11;
  }

  contents = [metaCopy contents];
  width = [outMvfCopy width];
  height = [outMvfCopy height];
  v20.f32[0] = width;
  v20.f32[1] = height;
  v34 = v20;
  width2 = [targetCopy width];
  height2 = [targetCopy height];
  v22.f32[0] = width2;
  v22.f32[1] = height2;
  v40 = vdiv_f32(v34, v22);
  v23 = *(contents + 24);
  v24.i64[0] = v23;
  v24.i64[1] = HIDWORD(v23);
  __asm { FMOV            V2.2D, #4.0 }

  v35 = vshrq_n_u64(vaddq_s64(vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v24), vdupq_n_s64(0x4060000000000000uLL)), _Q2), vcvtq_f64_f32(v40)))), vdupq_n_s64(0x1FuLL)), 5uLL);
  [encoderCopy setComputePipelineState:self->_visualizeMvf];
  [encoderCopy setTexture:mvfCopy atIndex:0];
  [encoderCopy setTexture:outMvfCopy atIndex:1];
  [encoderCopy setBuffer:v17 offset:0 atIndex:0];
  [encoderCopy setBytes:&v40 length:8 atIndex:1];
  [encoderCopy setImageblockWidth:32 height:32];
  v38 = v35;
  v39 = 1;
  v36 = vdupq_n_s64(0x20uLL);
  v37 = 1;
  [encoderCopy dispatchThreadgroups:&v38 threadsPerThreadgroup:&v36];
  v30 = 0;
LABEL_6:

  return v30;
}

- (int64_t)encodeGetRoiRepairMvFromMvfToCommandEncoder:(id)encoder fullResInput:(id)input probMap:(id)map mvf0:(id)mvf0 mvf1:(id)mvf1 meta:(id)meta
{
  encoderCopy = encoder;
  inputCopy = input;
  mapCopy = map;
  mvf0Copy = mvf0;
  mvf1Copy = mvf1;
  metaCopy = meta;
  v20 = metaCopy;
  if (!inputCopy)
  {
    [GGMMetalToolBox encodeGetRoiRepairMvFromMvfToCommandEncoder:fullResInput:probMap:mvf0:mvf1:meta:];
LABEL_13:
    v30 = v37[0];
    goto LABEL_7;
  }

  if (!mapCopy)
  {
    [GGMMetalToolBox encodeGetRoiRepairMvFromMvfToCommandEncoder:fullResInput:probMap:mvf0:mvf1:meta:];
    goto LABEL_13;
  }

  if (!mvf0Copy)
  {
    [GGMMetalToolBox encodeGetRoiRepairMvFromMvfToCommandEncoder:fullResInput:probMap:mvf0:mvf1:meta:];
    goto LABEL_13;
  }

  if (!mvf1Copy)
  {
    [GGMMetalToolBox encodeGetRoiRepairMvFromMvfToCommandEncoder:fullResInput:probMap:mvf0:mvf1:meta:];
    goto LABEL_13;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeGetRoiRepairMvFromMvfToCommandEncoder:fullResInput:probMap:mvf0:mvf1:meta:];
    goto LABEL_13;
  }

  width = [mvf0Copy width];
  height = [mvf0Copy height];
  v22.f32[0] = width;
  v22.f32[1] = height;
  v34 = v22;
  width2 = [inputCopy width];
  height2 = [inputCopy height];
  v24.f32[0] = width2;
  v24.f32[1] = height2;
  v38 = vdiv_f32(v34, v24);
  contents = [v20 contents];
  LODWORD(v26) = *(contents + 24);
  LODWORD(v27) = *(contents + 28);
  v28 = (((v26 + 128.0 + 4.0) * v38.f32[0] + 32.0 + -1.0) * 0.03125);
  v29 = (((v27 + 128.0 + 4.0) * v38.f32[1] + 32.0 + -1.0) * 0.03125);
  [encoderCopy setComputePipelineState:self->_getRoiRepairMvFromMvf];
  [encoderCopy setTexture:mapCopy atIndex:0];
  [encoderCopy setTexture:mvf0Copy atIndex:1];
  [encoderCopy setTexture:mvf1Copy atIndex:2];
  [encoderCopy setBuffer:v20 offset:0 atIndex:0];
  [encoderCopy setBytes:&v38 length:8 atIndex:1];
  v37[0] = v28;
  v37[1] = v29;
  v37[2] = 1;
  v35 = vdupq_n_s64(0x20uLL);
  v36 = 1;
  [encoderCopy dispatchThreadgroups:v37 threadsPerThreadgroup:&v35];
  v30 = 0;
LABEL_7:

  return v30;
}

- (int64_t)encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:(id)encoder fullResInput:(id)input ref0:(id)ref0 warpedRef0:(id)warpedRef0 ref1:(id)ref1 warpedRef1:(id)warpedRef1 meta:(id)meta
{
  encoderCopy = encoder;
  inputCopy = input;
  ref0Copy = ref0;
  warpedRef0Copy = warpedRef0;
  ref1Copy = ref1;
  warpedRef1Copy = warpedRef1;
  metaCopy = meta;
  v22 = metaCopy;
  if (!inputCopy)
  {
    [GGMMetalToolBox encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:];
LABEL_15:
    v32 = v39[0];
    goto LABEL_8;
  }

  if (!ref0Copy)
  {
    [GGMMetalToolBox encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:];
    goto LABEL_15;
  }

  if (!warpedRef0Copy)
  {
    [GGMMetalToolBox encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:];
    goto LABEL_15;
  }

  if (!ref1Copy)
  {
    [GGMMetalToolBox encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:];
    goto LABEL_15;
  }

  if (!warpedRef1Copy)
  {
    [GGMMetalToolBox encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:];
    goto LABEL_15;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:fullResInput:ref0:warpedRef0:ref1:warpedRef1:meta:];
    goto LABEL_15;
  }

  contents = [metaCopy contents];
  width = [warpedRef0Copy width];
  height = [warpedRef0Copy height];
  v25.f32[0] = width;
  v25.f32[1] = height;
  v36 = v25;
  width2 = [inputCopy width];
  height2 = [inputCopy height];
  v27.f32[0] = width2;
  v27.f32[1] = height2;
  v28 = vdiv_f32(v36, v27);
  v27.i32[0] = *(contents + 24);
  LODWORD(v29) = *(contents + 28);
  v30 = (((v27 + 128.0 + 4.0) * v28.f32[0] + 32.0 + -1.0) * 0.03125);
  v40 = v28;
  v31 = (((v29 + 128.0 + 4.0) * v28.f32[1] + 32.0 + -1.0) * 0.03125);
  [encoderCopy setComputePipelineState:self->_bmTransferWithRoiRepairMvYUV];
  [encoderCopy setTexture:ref0Copy atIndex:0];
  [encoderCopy setTexture:warpedRef0Copy atIndex:1];
  [encoderCopy setTexture:ref1Copy atIndex:2];
  [encoderCopy setTexture:warpedRef1Copy atIndex:3];
  [encoderCopy setBuffer:v22 offset:0 atIndex:0];
  [encoderCopy setBytes:&v40 length:8 atIndex:1];
  [encoderCopy setImageblockWidth:32 height:32];
  v39[0] = v30;
  v39[1] = v31;
  v39[2] = 1;
  v37 = vdupq_n_s64(0x20uLL);
  v38 = 1;
  [encoderCopy dispatchThreadgroups:v39 threadsPerThreadgroup:&v37];
  v32 = 0;
LABEL_8:

  return v32;
}

- (int64_t)encodeGetMvToFutureFromMvf:(id)mvf fullResInput:(id)input meta:(id)meta mvf:(id)a6
{
  mvfCopy = mvf;
  inputCopy = input;
  metaCopy = meta;
  v13 = a6;
  v14 = v13;
  if (!inputCopy)
  {
    [GGMMetalToolBox encodeGetMvToFutureFromMvf:fullResInput:meta:mvf:];
LABEL_9:
    v27 = v35.i64[0];
    goto LABEL_5;
  }

  if (!metaCopy)
  {
    [GGMMetalToolBox encodeGetMvToFutureFromMvf:fullResInput:meta:mvf:];
    goto LABEL_9;
  }

  if (!v13)
  {
    [GGMMetalToolBox encodeGetMvToFutureFromMvf:fullResInput:meta:mvf:];
    goto LABEL_9;
  }

  contents = [metaCopy contents];
  width = [v14 width];
  height = [v14 height];
  v17.f32[0] = width;
  v17.f32[1] = height;
  v31 = v17;
  width2 = [inputCopy width];
  height2 = [inputCopy height];
  v19.f32[0] = width2;
  v19.f32[1] = height2;
  v37 = vdiv_f32(v31, v19);
  v20 = vadd_s32(contents[3], 0x8000000080);
  v21.i64[0] = v20.u32[0];
  v21.i64[1] = v20.u32[1];
  __asm { FMOV            V2.2D, #4.0 }

  v32 = vshrq_n_u64(vaddq_s64(vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v21), vdupq_n_s64(0x4060000000000000uLL)), _Q2), vcvtq_f64_f32(v37)))), vdupq_n_s64(0x1FuLL)), 5uLL);
  [mvfCopy setComputePipelineState:self->_getMvToFutureFromMvf];
  [mvfCopy setTexture:v14 atIndex:0];
  [mvfCopy setBuffer:metaCopy offset:0 atIndex:0];
  [mvfCopy setBytes:&v37 length:8 atIndex:1];
  v35 = v32;
  v36 = 1;
  v33 = vdupq_n_s64(0x20uLL);
  v34 = 1;
  [mvfCopy dispatchThreadgroups:&v35 threadsPerThreadgroup:&v33];
  v27 = 0;
LABEL_5:

  return v27;
}

- (int64_t)encodeGetMvForMotionCueFromMvf:(GGMMetalToolBox *)self fullResInput:(SEL)input meta:(id)meta mvf:(id)mvf opticalCenter:(id)center refOpticalCenter:(id)opticalCenter
{
  v8 = v7;
  v9 = v6;
  metaCopy = meta;
  mvfCopy = mvf;
  centerCopy = center;
  opticalCenterCopy = opticalCenter;
  v41 = v8;
  v42 = v9;
  if (!mvfCopy)
  {
    [GGMMetalToolBox encodeGetMvForMotionCueFromMvf:fullResInput:meta:mvf:opticalCenter:refOpticalCenter:];
LABEL_7:
    v30 = v38.i64[0];
    goto LABEL_4;
  }

  if (!centerCopy)
  {
    [GGMMetalToolBox encodeGetMvForMotionCueFromMvf:fullResInput:meta:mvf:opticalCenter:refOpticalCenter:];
    goto LABEL_7;
  }

  contents = [centerCopy contents];
  width = [opticalCenterCopy width];
  height = [opticalCenterCopy height];
  v20.f32[0] = width;
  v20.f32[1] = height;
  v34 = v20;
  width2 = [mvfCopy width];
  height2 = [mvfCopy height];
  v22.f32[0] = width2;
  v22.f32[1] = height2;
  v40 = vdiv_f32(v34, v22);
  v23 = *(contents + 24);
  v24.i64[0] = v23;
  v24.i64[1] = HIDWORD(v23);
  __asm { FMOV            V2.2D, #4.0 }

  v35 = vshrq_n_u64(vaddq_s64(vcvtq_u64_f64(vrndpq_f64(vmulq_f64(vaddq_f64(vaddq_f64(vcvtq_f64_u64(v24), vdupq_n_s64(0x4060000000000000uLL)), _Q2), vcvtq_f64_f32(v40)))), vdupq_n_s64(0x1FuLL)), 5uLL);
  [metaCopy setComputePipelineState:self->_getMvForMotionCueFromMvf];
  [metaCopy setTexture:opticalCenterCopy atIndex:0];
  [metaCopy setBuffer:centerCopy offset:0 atIndex:0];
  [metaCopy setBytes:&v40 length:8 atIndex:1];
  [metaCopy setBytes:&v42 length:8 atIndex:2];
  [metaCopy setBytes:&v41 length:8 atIndex:3];
  v38 = v35;
  v39 = 1;
  v36 = vdupq_n_s64(0x20uLL);
  v37 = 1;
  [metaCopy dispatchThreadgroups:&v38 threadsPerThreadgroup:&v36];
  v30 = 0;
LABEL_4:

  return v30;
}

- (int64_t)encodeCollectClusterMvForMotionCueToCommandEncoder:(id)encoder clusterMetaBuf:(id)buf metaBuf:(id)metaBuf
{
  encoderCopy = encoder;
  bufCopy = buf;
  metaBufCopy = metaBuf;
  v11 = metaBufCopy;
  if (!bufCopy)
  {
    [GGMMetalToolBox encodeCollectClusterMvForMotionCueToCommandEncoder:clusterMetaBuf:metaBuf:];
LABEL_7:
    v13 = v17;
    goto LABEL_4;
  }

  if (!metaBufCopy)
  {
    [GGMMetalToolBox encodeCollectClusterMvForMotionCueToCommandEncoder:clusterMetaBuf:metaBuf:];
    goto LABEL_7;
  }

  contents = [bufCopy contents];
  [encoderCopy setComputePipelineState:self->_collectClusterMvForMotionCue];
  [encoderCopy setBuffer:bufCopy offset:0 atIndex:0];
  [encoderCopy setBuffer:v11 offset:0 atIndex:1];
  v17 = (*contents + 31) >> 5;
  v18 = vdupq_n_s64(1uLL);
  v15 = 32;
  v16 = xmmword_2487C3C20;
  [encoderCopy dispatchThreadgroups:&v17 threadsPerThreadgroup:&v15];
  v13 = 0;
LABEL_4:

  return v13;
}

- (int64_t)encodeGetLsMapYUVToCommandEncoder:(id)encoder input:(id)input map:(id)map
{
  encoderCopy = encoder;
  inputCopy = input;
  mapCopy = map;
  v11 = mapCopy;
  if (!inputCopy)
  {
    [GGMMetalToolBox encodeGetLsMapYUVToCommandEncoder:input:map:];
LABEL_7:
    v14 = v18[0];
    goto LABEL_4;
  }

  if (!mapCopy)
  {
    [GGMMetalToolBox encodeGetLsMapYUVToCommandEncoder:input:map:];
    goto LABEL_7;
  }

  v12 = ([mapCopy width] + 15) >> 4;
  v13 = ([v11 height] + 15) >> 4;
  [encoderCopy setComputePipelineState:self->_getLsMapYUV];
  [encoderCopy setTexture:inputCopy atIndex:0];
  [encoderCopy setTexture:v11 atIndex:1];
  v18[0] = v12;
  v18[1] = v13;
  v18[2] = 1;
  v16 = vdupq_n_s64(0x10uLL);
  v17 = 1;
  [encoderCopy dispatchThreadgroups:v18 threadsPerThreadgroup:&v16];
  v14 = 0;
LABEL_4:

  return v14;
}

- (GGMMetalToolBox)initWithMetalContext:(id)context commandQueue:(id)queue
{
  v34[1] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  queueCopy = queue;
  v8 = queueCopy;
  selfCopy = 0;
  if (contextCopy && queueCopy)
  {
    v32.receiver = self;
    v32.super_class = GGMMetalToolBox;
    v10 = [(VEMetalBase *)&v32 initWithDevice:contextCopy commmandQueue:queueCopy];
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
              selfCopy = self;
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

    selfCopy = 0;
  }

LABEL_22:

  return selfCopy;
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

- ($D341E8FA52B8DFDE89B90A050A6B59DC)generateMetaContainerArrayBufFromMetaContainerBuf:(id)buf imageRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v66 = *MEMORY[0x277D85DE8];
  bufCopy = buf;
  v10 = bufCopy;
  p_metaBufArray = &self->_metaBufArray;
  self->_metaBufArray.clusterCnt = 0;
  if (!bufCopy || (v12 = [bufCopy contents]) == 0)
  {

    goto LABEL_18;
  }

  v14 = v12;
  v15 = v12 + 20;
  LODWORD(v13) = 1120403456;
  height = [(GGMMetalToolBox *)self clusterIndicesOfRois:v12 + 20 withExtendedRadius:*v12 roiCnt:v13 imageRect:x, y, width, height];
  v16 = [height count];
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
      v22 = [height objectAtIndexedSubscript:v19];
      v52 = v19;
      contents = [p_metaBufArray->var0[v19] contents];
      bzero(contents, 0x11650uLL);
      *(contents + 8232) = *(v14 + 8232);
      *(contents + 1478) = *(v14 + 1478);
      *(contents + 17808) = *v48;
      *contents = [v22 count];
      if ([v22 count])
      {
        v25 = 0;
        v26 = 0;
        v61 = contents + 4118;
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
          intValue = [v32 intValue];

          v15 = v31;
          v20 = v30;
          v22 = v29;
          v34 = &contents[v25];
          v35 = &v15[16 * intValue];
          v36 = *v35;
          *(v34 + 28) = *(v35 + 1);
          *(v34 + 20) = v36;
          v37 = &v61[2 * v26];
          *v37 = *&v20[2 * intValue];
          *&v36 = *&contents[v25 + 20];
          v38 = *&contents[v25 + 24];
          LODWORD(v34) = *&v60[2 * intValue];
          v37[640] = *&v59[2 * intValue];
          v37[384] = v34;
          *&contents[v27] = *&v58[4 * intValue];
          *&v61[8 * v26 + 1802] = *&v57[8 * intValue];
          *(&v39 + 1) = *(&v62 + 1);
          v40 = &contents[v28];
          *v40 = *&v56[2 * intValue];
          *(&v41 + 1) = *(&v63 + 1);
          *&v39 = vbsl_s8(vcgt_f32(*&v36, *&v62), *&v62, *&v36);
          v62 = v39;
          v40[512] = *&v55[2 * intValue];
          v40[256] = *&v54[2 * intValue];
          *&v41 = vbsl_s8(vcgt_f32(*&v63, v38), *&v63, v38);
          v63 = v41;
          LODWORD(v34) = *&v53[2 * intValue];
          v61[v26++ + 512] = intValue;
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
      *(contents + 4) = vuzp1q_s32(v42, vrev64q_s32(v42));
      v43 = vaddq_f64(vcvtq_f64_f32(*&v62), v46);
      *&v43.f64[0] = vmovn_s64(vcvtq_s64_f64(vbicq_s8(v43, vcltzq_f64(v43))));
      *(contents + 3) = vcvt_u32_f32(vsub_f32(*&v63, *&v62));
      *(contents + 4) = *&vsra_n_u32(*&v43.f64[0], vcltz_s32(*&v43.f64[0]), 0x1EuLL) & 0xFFFFFFFCFFFFFFFCLL;
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

- (int64_t)encodeForwarpYUVToCommandEncoder:(id)encoder input0:(id)input0 input1:(id)input1 meta:(id)meta mvf0:(id)mvf0 mvf1:(id)mvf1 intermediateOutput0:(id)output0 intermediateOutput1:(id)self0 output0:(id)self1 output1:(id)self2 outputMap0:(id)self3 outputMap1:(id)self4
{
  encoderCopy = encoder;
  input0Copy = input0;
  input1Copy = input1;
  metaCopy = meta;
  mvf0Copy = mvf0;
  mvf1Copy = mvf1;
  output0Copy = output0;
  output1Copy = output1;
  v36 = a11;
  v34 = a12;
  map0Copy = map0;
  map1Copy = map1;
  v27 = [(GGMMetalToolBox *)self encodeResetOutputToCommandEncoder:encoderCopy input:input0Copy meta:metaCopy output0:output0Copy output1:output1Copy];
  v37 = mvf0Copy;
  v38 = input0Copy;
  if (v27 || (v27 = [(GGMMetalToolBox *)self encodeUpdateOutputFloatToCommandEncoder:encoderCopy input0:input0Copy flow0:mvf0Copy input1:input1Copy flow1:mvf1Copy meta:metaCopy output0:output0Copy output1:output1Copy]) != 0)
  {
    v31 = v27;
    v29 = v36;
    v28 = v34;
    v30 = map0Copy;
  }

  else
  {
    v28 = v34;
    v29 = v36;
    v30 = map0Copy;
    v31 = [(GGMMetalToolBox *)self encodeConvertFloatBuffer2TextureToCommandEncoder:encoderCopy inputBuffer0:output0Copy inputBuffer1:output1Copy meta:metaCopy output0:v36 outputMap0:map0Copy output1:v34 outputMap1:map1Copy];
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