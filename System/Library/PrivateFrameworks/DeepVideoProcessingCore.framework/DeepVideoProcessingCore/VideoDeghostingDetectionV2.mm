@interface VideoDeghostingDetectionV2
- ($DC080E558804126FE14A0ED6851A46A4)configuration;
- (BOOL)process:(VideoDeghostingDetectionV2 *)self futureFrames:(SEL)frames opticalCenter:(__CVBuffer *)center futureOpticalCenter:(id *)opticalCenter opticalCenterMvShift:(float)shift outputImgBufTMinus1:(__CVBuffer *)minus1 outputImgBufTMinus2:(__CVBuffer *)minus2;
- (VideoDeghostingDetectionV2)initWithMetalToolBox:(id)box config:(id *)config imageDimensions:(id)dimensions;
- (int64_t)_getProbMapInput:(id)input reflLs:(id)ls trackingRef:(id)ref trackingRefProb:(id)prob trackingRefSpaProb:(id)spaProb trackingRefErrRescaleProb:(id)rescaleProb trackingRefLs:(id)refLs inputBuf:(__CVBuffer *)self0 reflLsBuf:(__CVBuffer *)self1 trackingRefBuf:(__CVBuffer *)self2 trackingRefProbBuf:(__CVBuffer *)self3 trackingRefSpaProbBuf:(__CVBuffer *)self4 trackingRefErrRescaleProbBuf:(__CVBuffer *)self5 trackingRefLsBuf:(__CVBuffer *)self6 trackingMvf:(id)self7 metaBuf:(id)self8 metaBufArray:(id *)self9 trackingRefMetaBuf:(id)refMetaBuf probMap:(id)map errRescaleProbMap:(id)probMap rawRefinedProbMap:(id)refinedProbMap refinedProbMap:(id)a24 refinedReflLs:(id)reflLs probMapStash4FutureTracking:(id)tracking probMapBuf:(__CVBuffer *)mapBuf errRescaleProbMapBuf:(__CVBuffer *)probMapBuf rawRefinedProbMapBuf:(__CVBuffer *)refinedProbMapBuf refinedProbMapBuf:(__CVBuffer *)input0 refinedReflLsBuf:(__CVBuffer *)input1 probMapStash4FutureTrackingBuf:(__CVBuffer *)input2 doTracking:(BOOL)input3 waitForComplete:(BOOL)input4;
- (int64_t)_getProbMapsLiteTarget:(id)target refProbMap:(id)map refLsMap:(id)lsMap refRefinedLsMap:(id)refinedLsMap refProbMapStash4FutureTracking:(id)tracking refErrRescaleProbMap:(id)probMap refRawRefinedProbMap:(id)refinedProbMap refRefinedProbMap:(id)self0 mvf:(id)self1 probMap:(id)self2 lsMap:(id)self3 refinedLsMap:(id)self4 probMapStash4FutureTracking:(id)self5 errRescaleProbMap:(id)self6 rawRefinedProbMap:(id)self7 refinedProbMap:(id)self8 metaBufArray:(id *)self9 waitForComplete:(BOOL)complete;
- (int64_t)_initDetection:(__CVBuffer *)detection futureFrames:(id *)frames outputImgBufTMinus1:(__CVBuffer *)minus1 outputImgBufTMinus2:(__CVBuffer *)minus2;
- (int64_t)dlSpatialRepairYUV:(__CVBuffer *)v output:(__CVBuffer *)output repairMask:(__CVBuffer *)mask blendMask:(__CVBuffer *)blendMask inputTex:(id)tex repairMaskTex:(id)maskTex blendMaskTex:(id)blendMaskTex wRepairedY:(float)self0 wRepairedUV:(float)self1 metaBuf:(id)self2;
- (int64_t)doTrackingToNextFrameCurrMetaWithDetectionResults:(VideoDeghostingDetectionV2 *)self currMetaWithMvToFuture:(SEL)future futureMeta:(id)meta opticalCenter:(id)center futureOpticalCenter:(id)opticalCenter futureFrameCnt:(int)cnt doLite:(BOOL)lite waitForComplete:(BOOL)complete;
- (int64_t)getFlowTarget:(id)target ref:(id)ref targetBuf:(__CVBuffer *)buf refBuf:(__CVBuffer *)refBuf mvf:(__CVBuffer *)mvf backwardMvf:(__CVBuffer *)backwardMvf metaBuf:(id)metaBuf skipRescaling:(BOOL)self0;
- (int64_t)getMvfToNextFrameForTrackingCurrMeta:(VideoDeghostingDetectionV2 *)self lsMap:(SEL)map futureLsMap:(id)lsMap lsMapBuf:(id)buf futureLsMapBuf:(id)mapBuf opticalCenter:(__CVBuffer *)center futureOpticalCenter:(__CVBuffer *)opticalCenter waitForComplete:(BOOL)complete;
- (int64_t)getProbMapsTarget:(VideoDeghostingDetectionV2 *)self ref:(SEL)ref rawProbMap:(id)map probMap:(id)probMap errRescaleProbMap:(id)rescaleProbMap rawRefinedProbMap:(id)refinedProbMap refinedProbMap:(id)a7 reflLsMap:(id)lsMap refinedReflLsMap:(id)reflLsMap reflLsMap4TrackingRef:(id)self0 metaBuf:(id)self1 metaBufArray:(id)self2 trackingMvf:(id)self3 useRefProbMap:(id *)self4 opticalCenter:(id)self5 trackingRefOpticalCenter:(BOOL)self6 waitForComplete:(BOOL)self7;
- (int64_t)processHwLsMaskAndGetRoisOpticalCenter:(id)center inputFrame:(id *)frame prevMetaContainer:considerDist2PrevGhostWhenSort:outputMask:outputMaskTexture:isLowLight:outputArray:;
- (int64_t)processHwLsMaskNormalizedCenter:(id)center input:(id)input output:(BOOL)output waitForComplete:;
- (int64_t)repairTarget:(VideoDeghostingDetectionV2 *)self opticalCenter:(SEL)center frRef0:(id)ref0 frRef1:(id)ref1 nextFrame:(id)frame nextFrameMvf:(id)mvf nextFrameMvfBuf:(id)buf nextOpticalCenter:(__CVBuffer *)opticalCenter probMap:(id)map errRescaleProbMap:(id)self0 prevProbMap:(id)self1 refinedProbMap:(id)self2 probMap4TrRefW:(id)self3 metaBuf:(id)self4 metaBufArray:(id *)self5 forceToSpatial:(BOOL)self6 waitForComplete:(BOOL)self7;
- (int64_t)unpackIspLsMaskAndRoisForNextFrameLiteWithFrameData:(id *)data futureOpticalCenter:(int *)center outputFutureFrameCnt:(id *)cnt outputFutureMetaBuf:;
- (int64_t)unpackIspLsMaskAndRoisForNextFrameWithFrameData:(id *)data futureOpticalCenter:(id *)center currFrameMetaContainer:outputFutureFrameCnt:outputMTLBuffer:;
- (int64_t)warpTrackingRefProbMap:(id)map refSpaProbMap:(id)probMap refReflLs:(id)ls mvf:(id)mvf metaBuf:(id)buf metaBufArray:(id *)array waitForComplete:(BOOL)complete;
- (void)_initParamsWithLowLight:(BOOL)light;
- (void)_resetIntermediateVariables;
- (void)dealloc;
- (void)reset;
- (void)setConfiguration:(id *)configuration;
@end

@implementation VideoDeghostingDetectionV2

- (void)dealloc
{
  CVPixelBufferRelease(self->_warpedReflTrackingRef);
  CVPixelBufferRelease(self->_mvf4Future);
  CVPixelBufferRelease(self->_mvf4Repair0);
  CVPixelBufferRelease(self->_mvf4Repair1);
  CVPixelBufferRelease(self->_warpedRefProbMap);
  CVPixelBufferRelease(self->_rawWarpedRefProbMap);
  CVPixelBufferRelease(self->_rawWarpedRefSpaProbMap);
  CVPixelBufferRelease(self->_refinedReflLs4trackingRefWarped);
  CVPixelBufferRelease(self->_motionMap);
  CVPixelBufferRelease(self->_saliencyMap);
  CVPixelBufferRelease(self->_blobSaliencyMap);
  CVPixelBufferRelease(self->_rawProbMap);
  CVPixelBufferRelease(self->_fullResRawRefinedProbMap);
  CVPixelBufferRelease(self->_temporalMitigated);
  CVPixelBufferRelease(self->_inputCopy);
  CVPixelBufferRelease(self->_lrHwLsMask0);
  CVPixelBufferRelease(self->_lrHwLsMask1);
  CVPixelBufferRelease(self->_reflHwLsMask0);
  CVPixelBufferRelease(self->_reflHwLsMask1);
  CVPixelBufferRelease(self->_warpedHwLsMask4Track);
  CVPixelBufferRelease(self->_fullResStashedProbMap4FutureTracking);
  CVPixelBufferRelease(self->_input4MotionCue);
  CVPixelBufferRelease(self->_ref4MotionCue);
  CVPixelBufferRelease(self->_errRescaleProbMap0);
  CVPixelBufferRelease(self->_errRescaleProbMap1);
  CVPixelBufferRelease(self->_dilatedLsMap);
  CVPixelBufferRelease(self->_spatialMitigated);
  CVPixelBufferRelease(self->_dlSpatialMitigated);
  CVPixelBufferRelease(self->_tradSpatialMitigated);
  CVPixelBufferRelease(self->_dlSpaInput);
  CVPixelBufferRelease(self->_dlSpaRepairMask);
  CVPixelBufferRelease(self->_dlSpaBlendMask);
  CVPixelBufferRelease(self->_hmgrphyRef0);
  CVPixelBufferRelease(self->_hmgrphyRef1);
  CVPixelBufferRelease(self->_lrBmRef0);
  CVPixelBufferRelease(self->_lrBmRef1);
  CVPixelBufferRelease(self->_bmRef0);
  CVPixelBufferRelease(self->_bmRef1);
  CVPixelBufferRelease(self->_flowRef0Map);
  CVPixelBufferRelease(self->_flowRef1Map);
  CVPixelBufferRelease(self->_dilatedFlowRef0Map);
  CVPixelBufferRelease(self->_dilatedFlowRef1Map);
  CVPixelBufferRelease(self->_avgAlignedRef0);
  CVPixelBufferRelease(self->_avgAlignedRef1);
  CVPixelBufferRelease(self->_blendedRef0);
  CVPixelBufferRelease(self->_blendedRef1);
  CVPixelBufferRelease(self->_flowTarget);
  CVPixelBufferRelease(self->_flowRef);
  CVPixelBufferRelease(self->_flowMvf0);
  CVPixelBufferRelease(self->_flowMvf1);
  CVPixelBufferRelease(self->_warpedFlowMvf);
  CVPixelBufferRelease(self->_backwarpFlowMvf0);
  CVPixelBufferRelease(self->_backwarpFlowMvf1);
  CVPixelBufferRelease(self->_lsMap4RoiGen);
  CVPixelBufferRelease(self->_probMap4RoiGen);
  forwarpOutputBuffer0 = self->_forwarpOutputBuffer0;
  self->_forwarpOutputBuffer0 = 0;

  forwarpOutputBuffer1 = self->_forwarpOutputBuffer1;
  self->_forwarpOutputBuffer1 = 0;

  for (i = 0; i != 3; ++i)
  {
    CVPixelBufferRelease(self->_lsMapQueue[i]);
    CVPixelBufferRelease(self->_probMapQueue[i]);
    CVPixelBufferRelease(self->_spaProbMapQueue[i]);
  }

  for (j = 0; j != 3; ++j)
  {
    CVPixelBufferRelease(self->_probMap4RepairQueue[j]);
    CVPixelBufferRelease(self->_probMap4SpatialRepairQueue[j]);
  }

  [(VEOpticalFlow *)self->_flowNet releaseResources];
  v7.receiver = self;
  v7.super_class = VideoDeghostingDetectionV2;
  [(VideoDeghostingDetectionV2 *)&v7 dealloc];
}

- (void)reset
{
  inputTexture = self->_inputTexture;
  self->_inputTexture = 0;

  frameTMinus1Texture = self->_frameTMinus1Texture;
  self->_frameTMinus1Texture = 0;

  frameTMinus2Texture = self->_frameTMinus2Texture;
  self->_frameTMinus2Texture = 0;

  frameTPlus1Texture = self->_frameTPlus1Texture;
  self->_frameTPlus1Texture = 0;

  [(VideoDeghostingDetectionV2 *)self _resetIntermediateVariables];
}

- (void)_resetIntermediateVariables
{
  *&self->_prevShouldRunGGDetectionLSBased = 257;
  self->_prevShouldRunGGDetectionClippedPixelBased = 1;
  self->_currSegmentProcessedFrameCnt = 0;
}

- (void)_initParamsWithLowLight:(BOOL)light
{
  lightCopy = light;
  p_searchRadiusMin = &self->_params.tempDetect.searchRadiusMin;
  *&self->_params.luxLevelGatingThresholdON = 0x3E800000320;
  self->_params.lightSourceBoxSizeThreshold = 8.0;
  *&self->_params.lightSourceGatingThresholdON = xmmword_2487C3B30;
  *&self->_params.b4MergeGhostCntSoftGatingTh = 0x6400000028;
  self->_params.kpCntSoftGatingTh = 100;
  [(GGMMetalToolBox *)self->_metalToolBox setRepairTuningParams:&self->_params.repairParams];
  *&self->_params.searchRangeBase = 0x4234000042340000;
  *&self->_params.colorScore.saturationUpperThreshold = 1036831949;
  self->_params.colorScore.valueUpperThreshold = 1.0;
  *&self->_params.colorScore.hueLowerRange = xmmword_2487C3B40;
  if (lightCopy)
  {
    v6 = 128;
  }

  else
  {
    v6 = 36;
  }

  self->_params.maxAllowedSizeBBox = v6;
  *p_searchRadiusMin = xmmword_2487C3B50;
  *(p_searchRadiusMin + 1) = xmmword_2487C3B60;
  *(p_searchRadiusMin + 2) = xmmword_2487C3B70;
  *&self->_params.tempDetect.kpIsGhostLumaThresholdHigh = 0x3D4CCCCD3ECCCCCDLL;
  *&self->_params.tempDetect.minVote = 0x100000001;
  *&self->_params.maxAllowedOpticalCenterOffset = 0x3E19999A00000014;
}

- (int64_t)unpackIspLsMaskAndRoisForNextFrameWithFrameData:(id *)data futureOpticalCenter:(id *)center currFrameMetaContainer:outputFutureFrameCnt:outputMTLBuffer:
{
  v7 = v5;
  v8 = v4;
  v10 = v6;
  v13 = isLowLightingCondition();
  processedFrameCnt = self->_processedFrameCnt;
  *v8 = processedFrameCnt + 1;
  v15 = createSingleCachedTextureFromPixelBuffer(data->var0, [(GGMMetalToolBox *)self->_metalToolBox cvMetalTextureCacheRef], self->_device, 0, 0);
  frameTPlus1Texture = self->_frameTPlus1Texture;
  self->_frameTPlus1Texture = v15;

  if (!self->_frameTPlus1Texture)
  {
    v21 = 6;
    goto LABEL_13;
  }

  if (processedFrameCnt)
  {
    array = [MEMORY[0x277CBEB18] array];
    v25 = self->_frameTPlus1Texture;
    lrHwLsMask0 = self->_lrHwLsMask0;
    lrHwLsMask0Texture = self->_lrHwLsMask0Texture;
    v38 = array;
    v21 = [(VideoDeghostingDetectionV2 *)self processHwLsMaskAndGetRoisOpticalCenter:v25 inputFrame:center prevMetaContainer:1 considerDist2PrevGhostWhenSort:lrHwLsMask0 outputMask:lrHwLsMask0Texture outputMaskTexture:v13 isLowLight:v10 outputArray:&v38];
    v22 = v38;

    if (!v21)
    {
      v23 = 96;
      goto LABEL_7;
    }
  }

  else
  {
    array2 = [MEMORY[0x277CBEB18] array];
    v18 = self->_frameTPlus1Texture;
    lrHwLsMask1 = self->_lrHwLsMask1;
    lrHwLsMask1Texture = self->_lrHwLsMask1Texture;
    v37 = array2;
    v21 = [(VideoDeghostingDetectionV2 *)self processHwLsMaskAndGetRoisOpticalCenter:v18 inputFrame:center prevMetaContainer:1 considerDist2PrevGhostWhenSort:lrHwLsMask1 outputMask:lrHwLsMask1Texture outputMaskTexture:v13 isLowLight:v10 outputArray:&v37];
    v22 = v37;

    if (!v21)
    {
      v23 = 104;
LABEL_7:
      v28 = *(&self->super.isa + v23);
      *(&self->super.isa + v23) = v22;

      array3 = [MEMORY[0x277CBEB18] array];
      detectionUtils = self->_detectionUtils;
      v31 = 96;
      if ((processedFrameCnt & 1) == 0)
      {
        v31 = 104;
      }

      v32 = *(&self->super.isa + v31);
      v36 = array3;
      v21 = [(VDGDetectionUtilsV2 *)detectionUtils generateDetectionRoiList:v32 outputArray:&v36];
      v22 = v36;

      if (!v21)
      {
        contents = [*v7 contents];
        if (contents)
        {
          bzero(contents, 0x11650uLL);
          *&v34 = self->_filteredOpticalCenterShift;
          [(GGMMetalToolBox *)self->_metalToolBox updateMetaContainerBuffer:self->_futureMetaTmp withDetectedROI:v22 isLowLight:v13 opticalCenter:v10 opticalCenterShift:v34];
          [VideoDeghostingDetectionV2 unpackIspLsMaskAndRoisForNextFrameWithFrameData:[(MTLBuffer *)self->_futureMeta4RedoTracking contents] futureOpticalCenter:[(MTLBuffer *)self->_futureMetaTmp contents] currFrameMetaContainer:? outputFutureFrameCnt:? outputMTLBuffer:?];
          v21 = 0;
        }

        else
        {
          v21 = 6;
        }
      }
    }
  }

LABEL_13:
  __destructor_8_s8_s16_s24_s32_s40(data);
  return v21;
}

- (int64_t)unpackIspLsMaskAndRoisForNextFrameLiteWithFrameData:(id *)data futureOpticalCenter:(int *)center outputFutureFrameCnt:(id *)cnt outputFutureMetaBuf:
{
  v8 = v5;
  v11 = isLowLightingCondition();
  *center = LODWORD(self->_processedFrameCnt) + 1;
  var0 = data->var0;
  self->_frameTPlus1Buf = data->var0;
  v13 = createSingleCachedTextureFromPixelBuffer(var0, [(GGMMetalToolBox *)self->_metalToolBox cvMetalTextureCacheRef], self->_device, 0, 0);
  frameTPlus1Texture = self->_frameTPlus1Texture;
  self->_frameTPlus1Texture = v13;

  bzero([*cnt contents], 0x11650uLL);
  metalToolBox = self->_metalToolBox;
  v16 = *cnt;
  v17 = objc_alloc_init(MEMORY[0x277CBEA60]);
  *&v18 = self->_filteredOpticalCenterShift;
  [(GGMMetalToolBox *)metalToolBox updateMetaContainerBuffer:v16 withDetectedROI:v17 isLowLight:v11 opticalCenter:v8 opticalCenterShift:v18];

  __destructor_8_s8_s16_s24_s32_s40(data);
  return 0;
}

- (BOOL)process:(VideoDeghostingDetectionV2 *)self futureFrames:(SEL)frames opticalCenter:(__CVBuffer *)center futureOpticalCenter:(id *)opticalCenter opticalCenterMvShift:(float)shift outputImgBufTMinus1:(__CVBuffer *)minus1 outputImgBufTMinus2:(__CVBuffer *)minus2
{
  v9 = v7;
  v10 = *&shift;
  self->_filteredOpticalCenterShift = v8;
  v12 = self->_currSegmentProcessedFrameCnt != 0;
  if ([(VideoDeghostingDetectionV2 *)self _initDetection:center futureFrames:opticalCenter outputImgBufTMinus1:minus1 outputImgBufTMinus2:minus2])
  {
    return 0;
  }

  v13 = isLowLightingCondition();
  processedFrameCnt = self->_processedFrameCnt;
  v15 = processedFrameCnt % 3;
  v123 = processedFrameCnt;
  v16 = (processedFrameCnt - 1) % 3;
  v17 = self->_metaBufferArray[v16];
  v18 = self->_metaBufferArray[v15];
  contents = [(MTLBuffer *)v18 contents];
  v126 = v17;
  v127 = v18;
  if (!self->_currSegmentProcessedFrameCnt)
  {
    array = [MEMORY[0x277CBEB18] array];
    inputTexture = self->_inputTexture;
    lrHwLsMask0 = self->_lrHwLsMask0;
    lrHwLsMask0Texture = self->_lrHwLsMask0Texture;
    v159[0] = array;
    v128 = v13;
    v24 = [(VideoDeghostingDetectionV2 *)self processHwLsMaskAndGetRoisOpticalCenter:inputTexture inputFrame:0 prevMetaContainer:0 considerDist2PrevGhostWhenSort:lrHwLsMask0 outputMask:lrHwLsMask0Texture outputMaskTexture:v13 isLowLight:v10 outputArray:v159];
    v25 = v159[0];

    if (!v24)
    {
      v122 = v16;
      array2 = [MEMORY[0x277CBEB18] array];
      if (array2)
      {
        if ([v25 count])
        {
          v27 = 0;
          v28 = 0;
          do
          {
            v29 = [v25 objectAtIndexedSubscript:v27];
            [array2 addObject:v29];

            v27 = ++v28;
            v30 = [v25 count];
            if (v30 >= 0x40)
            {
              v31 = 64;
            }

            else
            {
              v31 = v30;
            }
          }

          while (v31 > v28);
        }

        width = [(MTLTexture *)self->_inputTexture width];
        height = [(MTLTexture *)self->_inputTexture height];
        v33.f32[0] = width;
        v33.f32[1] = height;
        v34 = COERCE_DOUBLE(vdiv_f32(*&v10, v33));
        v35 = 352;
        if ((self->_processedFrameCnt & 1) == 0)
        {
          v35 = 336;
        }

        if (![(VideoDeghostingDetectionV2 *)self processHwLsMaskNormalizedCenter:*(&self->super.isa + v35) input:self->_reflHwLsMask0Texture output:0 waitForComplete:v34])
        {
          array3 = [MEMORY[0x277CBEB18] array];
          detectionUtils = self->_detectionUtils;
          v158 = array3;
          v38 = [(VDGDetectionUtilsV2 *)detectionUtils generateDetectionRoiList:array2 outputArray:&v158];
          v39 = v158;

          if (!v38)
          {
            bzero(contents, 0x11650uLL);
            *&v40 = self->_filteredOpticalCenterShift;
            [(GGMMetalToolBox *)self->_metalToolBox updateMetaContainerBuffer:v127 withDetectedROI:v39 isLowLight:v128 opticalCenter:v10 opticalCenterShift:v40];
            v41 = *contents;
            if (v41 >= 1)
            {
              v42 = contents;
              do
              {
                LSTrackID = self->_LSTrackID;
                self->_LSTrackID = LSTrackID + 1;
                *(v42 + 2059) = LSTrackID;
                *(v42 + 11664) = 16;
                v42 += 2;
                --v41;
              }

              while (v41);
            }

            v17 = v126;
            v18 = v127;
            LOWORD(v16) = v122;
            goto LABEL_19;
          }
        }
      }
    }

    v118 = 0;
    v17 = v126;
    v119 = v127;
    goto LABEL_78;
  }

LABEL_19:
  memcpy([(MTLBuffer *)self->_currMetaTmp contents], contents, 0x11650uLL);
  v125 = v15;
  v44 = [(GGMMetalToolBox *)self->_metalToolBox generateMetaContainerArrayBufFromMetaContainerBuf:v18 imageRect:0.0, 0.0, [(MTLTexture *)self->_inputTexture width], [(MTLTexture *)self->_inputTexture height]];
  v154 = 0;
  v155 = &v154;
  v156 = 0x2020000000;
  v157 = 0;
  v148 = 0;
  v149 = &v148;
  v150 = 0x3032000000;
  v151 = __Block_byref_object_copy__1;
  v152 = __Block_byref_object_dispose__1;
  v153 = 0;
  v147[0] = 0;
  v147[1] = v147;
  v147[2] = 0x2020000000;
  v147[3] = 0;
  dispatchGroup = self->_dispatchGroup;
  concurrentQueue = self->_concurrentQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __146__VideoDeghostingDetectionV2_process_futureFrames_opticalCenter_futureOpticalCenter_opticalCenterMvShift_outputImgBufTMinus1_outputImgBufTMinus2___block_invoke;
  block[3] = &unk_278F538C0;
  block[8] = opticalCenter;
  block[9] = contents;
  block[4] = self;
  block[5] = &v148;
  *&block[10] = v9;
  block[6] = v147;
  block[7] = &v154;
  dispatch_group_async(dispatchGroup, concurrentQueue, block);
  v47 = self->_dispatchGroup;
  v48 = self->_concurrentQueue;
  v136[0] = MEMORY[0x277D85DD0];
  v136[1] = 3221225472;
  v136[2] = __146__VideoDeghostingDetectionV2_process_futureFrames_opticalCenter_futureOpticalCenter_opticalCenterMvShift_outputImgBufTMinus1_outputImgBufTMinus2___block_invoke_40;
  v136[3] = &unk_278F538E8;
  v136[4] = self;
  v139 = v147;
  v140 = contents;
  v143 = v16;
  centerCopy = center;
  v49 = v18;
  v137 = v49;
  v142 = v44;
  v50 = v17;
  v138 = v50;
  v144 = v125;
  v145 = v12;
  dispatch_group_async(v47, v48, v136);
  dispatch_group_wait(self->_dispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
  if (opticalCenter->var2 < 1)
  {
    goto LABEL_33;
  }

  v51 = self->_inputTexture;
  if (contents[4116])
  {
    width2 = [(MTLTexture *)v51 width];
    height2 = [(MTLTexture *)self->_inputTexture height];
    v55 = 352;
    if ((v155[3] & 1) == 0)
    {
      v55 = 336;
    }

    v56 = *(&self->super.isa + v55);
    v54.f32[1] = height2;
    v54.f32[0] = width2;
    v57 = COERCE_DOUBLE(vdiv_f32(*&v9, v54));
    v58 = 384;
    if ((v155[3] & 1) == 0)
    {
      v58 = 368;
    }

    v59 = [(VideoDeghostingDetectionV2 *)self processHwLsMaskNormalizedCenter:v56 input:*(&self->super.isa + v58) output:0 waitForComplete:v57];
  }

  else
  {
    width3 = [(MTLTexture *)v51 width];
    height3 = [(MTLTexture *)self->_inputTexture height];
    v63 = 352;
    if ((v155[3] & 1) == 0)
    {
      v63 = 336;
    }

    v64 = *(&self->super.isa + v63);
    v62.f32[1] = height3;
    v62.f32[0] = width3;
    v65 = COERCE_DOUBLE(vdiv_f32(*&v9, v62));
    v66 = 384;
    if ((v155[3] & 1) == 0)
    {
      v66 = 368;
    }

    if ([(VideoDeghostingDetectionV2 *)self processHwLsMaskNormalizedCenter:v64 input:*(&self->super.isa + v66) output:0 waitForComplete:v65])
    {
      goto LABEL_81;
    }

    v59 = [(VideoDeghostingDetectionV2 *)self doTrackingToNextFrameCurrMetaWithDetectionResults:v49 currMetaWithMvToFuture:self->_currMetaTmp futureMeta:v149[5] opticalCenter:*(v155 + 6) futureOpticalCenter:0 futureFrameCnt:1 doLite:v10 waitForComplete:v9];
  }

  if (v59)
  {
LABEL_81:
    v118 = 0;
    v119 = v127;
    goto LABEL_77;
  }

LABEL_33:
  v67 = v50;
  array4 = [MEMORY[0x277CBEB18] array];
  array5 = [MEMORY[0x277CBEB18] array];
  if ((contents[4116] & 1) == 0)
  {
    maskToRoi = self->_maskToRoi;
    probMap4RoiGen = self->_probMap4RoiGen;
    v77 = vcvtq_s32_f32(*(contents + 4));
    v78 = vshrq_n_s32(vsraq_n_u32(v77, v77, 0x1FuLL), 1uLL);
    v79 = vrev64q_s32(v78);
    *&v80 = vuzp1q_s32(v78, v79).u64[0];
    v135 = array4;
    v78.i32[0] = 1124007936;
    v79.i32[0] = 4.0;
    v81 = [(MaskToRoi *)maskToRoi getBBoxesUsingGraphTraversalFrom:probMap4RoiGen pixValThreshold:2 bboxSizeThreshold:1 scaleFactor:&v135 roi:*v78.i64 returnAsDetectedROI:*v79.i64 outputArray:v80];
    v72 = v135;

    if (!v81)
    {
      array6 = [MEMORY[0x277CBEB18] array];
      v83 = self->_detectionUtils;
      v134 = array6;
      v84 = [(VDGDetectionUtilsV2 *)v83 getDetectionRoiListFromMeta:contents outputArray:&v134];
      v85 = v134;

      if (!v84)
      {
        if (!self->_configuration.externalCfg.drawBoundingBox || (v86 = self->_detectionUtils, v133 = array5, v87 = [(VDGDetectionUtilsV2 *)v86 getReflLsListFromMeta:contents outputArray:&v133], v88 = v133, array5, array5 = v88, !v87))
        {
          v89 = [(VDGDetectionUtilsV2 *)self->_detectionUtils pruneGhostList:v72 againstReflLsList:v85 dilation:0.0];
          [(VDGDetectionUtilsV2 *)self->_detectionUtils getRoiMvForRoiList:v72 fromMeta:contents];
          *&v90 = self->_filteredOpticalCenterShift;
          [(GGMMetalToolBox *)self->_metalToolBox updateMetaContainerBuffer:v49 withDetectedROI:v72 isLowLight:*(contents + 8232) opticalCenter:*(contents + 1478) opticalCenterShift:v90];
          [(VDGDetectionUtilsV2 *)self->_detectionUtils setRoiMvForMeta:contents fromRoiList:v72];
          if (self->_currSegmentProcessedFrameCnt)
          {
            [(VDGDetectionUtilsV2 *)self->_detectionUtils trackMeta:contents refMeta:[(MTLBuffer *)v67 contents] currMaxTrackId:&self->_trackID];
            if (*contents < 1)
            {
              goto LABEL_48;
            }
          }

          else
          {
            v91 = *contents;
            if (v91 < 1)
            {
LABEL_48:
              v69 = [(GGMMetalToolBox *)self->_metalToolBox generateMetaContainerArrayBufFromMetaContainerBuf:v49 imageRect:0.0, 0.0, [(MTLTexture *)self->_inputTexture width], [(MTLTexture *)self->_inputTexture height]];

              goto LABEL_49;
            }

            v92 = (contents + 4118);
            do
            {
              trackID = self->_trackID;
              self->_trackID = trackID + 1;
              *v92++ = trackID;
              --v91;
            }

            while (v91);
          }

          v94 = 2059;
          do
          {
            2059 = [v72 objectAtIndexedSubscript:v94 - 2059];
            [2059 setTrackID:*&contents[2 * v94]];

            v96 = v94 - 2058;
            ++v94;
          }

          while (v96 < *contents);
          goto LABEL_48;
        }
      }
    }

LABEL_83:
    v118 = 0;
    goto LABEL_76;
  }

  v69 = v44;
  v70 = self->_detectionUtils;
  v132 = array4;
  v71 = [(VDGDetectionUtilsV2 *)v70 getDetectionRoiListFromMeta:contents outputArray:&v132];
  v72 = v132;

  if (v71)
  {
    goto LABEL_83;
  }

LABEL_49:
  probMap4RepairQueue = self->_probMap4RepairQueue;
  LODWORD(v73) = 1.0;
  LODWORD(v74) = 1.0;
  if ([(VideoDeghostingDetectionV2 *)self dlSpatialRepairYUV:center output:self->_dlSpatialMitigated repairMask:self->_probMap4RepairQueue[v125] blendMask:self->_probMap4RepairQueue[v125] inputTex:self->_inputTexture repairMaskTex:v73 blendMaskTex:v74 wRepairedY:self->_probMap4RepairTexQueue[v125] wRepairedUV:v49 metaBuf:?])
  {
    goto LABEL_83;
  }

  v98 = self->_inputTexture;
  v99 = 1336;
  if ((self->_processedFrameCnt & 1) == 0)
  {
    v99 = 1320;
  }

  if (self->_currSegmentProcessedFrameCnt < 2)
  {
    v105 = &self->super.isa + v125;
    var2 = opticalCenter->var2;
    if (var2 < 1)
    {
      frameTPlus1Texture = 0;
    }

    else
    {
      frameTPlus1Texture = self->_frameTPlus1Texture;
    }

    v112 = 1328;
    if ((self->_processedFrameCnt & 1) == 0)
    {
      v112 = 1312;
    }

    v113 = *(&self->super.isa + v112);
    v114 = v105[31];
    v115 = v105[80];
    v116 = var2 < 1 ? 0 : self->_frameTPlus1Buf;
    BYTE1(v121) = (var2 < 1) | *(contents + 8232) ^ 1;
    LOBYTE(v121) = 1;
    v117 = [VideoDeghostingDetectionV2 updateRepairedRefYUVInput:"updateRepairedRefYUVInput:opticalCenter:prob:errRescaleProb:prevProb:refinedProb:probMap4TrRefW:frRef0:frRef1:nextFrame:nextFrameMvf:nextFrameMvfBuf:nextOpticalCenter:inputBuf:probBuf:errRescaleProbBuf:prevProbBuf:refinedProbBuf:probMap4TrRefWBuf:frRef0Buf:frRef1Buf:nextFrameBuf:metaBuf:metaBufArray:forceToSpatial:waitForComplete:" opticalCenter:v10 prob:v9 errRescaleProb:v98 prevProb:v98 refinedProb:frameTPlus1Texture probMap4TrRefW:self->_mvf4FutureTexture frRef0:self->_mvf4Future frRef1:center nextFrame:probMap4RepairQueue[v125] nextFrameMvf:v113 nextFrameMvfBuf:probMap4RepairQueue[v125] nextOpticalCenter:v114 inputBuf:v115 probBuf:center errRescaleProbBuf:center prevProbBuf:v116 refinedProbBuf:v49 probMap4TrRefWBuf:v69 frRef0Buf:v121 frRef1Buf:? nextFrameBuf:? metaBuf:? metaBufArray:? forceToSpatial:? waitForComplete:?];
  }

  else
  {
    v100 = &self->super.isa + v125;
    v101 = v100[34];
    v102 = v100[83];
    v103 = opticalCenter->var2;
    if (v103 < 1)
    {
      v104 = 0;
    }

    else
    {
      v104 = self->_frameTPlus1Texture;
    }

    v108 = 1328;
    if ((self->_processedFrameCnt & 1) == 0)
    {
      v108 = 1312;
    }

    v109 = v100[31];
    v110 = v100[80];
    v111 = v103 < 1 ? 0 : self->_frameTPlus1Buf;
    BYTE1(v121) = (v103 < 1) | *(contents + 8232) ^ 1;
    LOBYTE(v121) = 0;
    v117 = [(VideoDeghostingDetectionV2 *)self updateRepairedRefYUVInput:v98 opticalCenter:self->_probMap4RepairTexQueue[v125] prob:*(&self->super.isa + v99) errRescaleProb:self->_probMap4RepairTexQueue[(v123 - 2) % 3] prevProb:v101 refinedProb:v102 probMap4TrRefW:v10 frRef0:v9 frRef1:self->_frameTMinus1Texture nextFrame:self->_frameTMinus2Texture nextFrameMvf:v104 nextFrameMvfBuf:self->_mvf4FutureTexture nextOpticalCenter:self->_mvf4Future inputBuf:center probBuf:probMap4RepairQueue[v125] errRescaleProbBuf:*(&self->super.isa + v108) prevProbBuf:probMap4RepairQueue[(v123 - 2) % 3] refinedProbBuf:v109 probMap4TrRefWBuf:v110 frRef0Buf:self->_frameTMinus1 frRef1Buf:self->_frameTMinus2 nextFrameBuf:v111 metaBuf:v49 metaBufArray:v69 forceToSpatial:v121 waitForComplete:?];
  }

  if (v117 || *(contents + 8232) == 1 && opticalCenter->var2 >= 1 && [(VideoDeghostingDetectionV2 *)self doTrackingToNextFrameCurrMetaWithDetectionResults:v49 currMetaWithMvToFuture:self->_currMetaTmp futureMeta:v149[5] opticalCenter:*(v155 + 6) futureOpticalCenter:0 futureFrameCnt:1 doLite:v10 waitForComplete:v9])
  {
    goto LABEL_83;
  }

  ++self->_processedFrameCnt;
  ++self->_currSegmentProcessedFrameCnt;
  v118 = 1;
LABEL_76:

  v17 = v126;
  v119 = v127;
LABEL_77:

  _Block_object_dispose(v147, 8);
  _Block_object_dispose(&v148, 8);

  _Block_object_dispose(&v154, 8);
LABEL_78:

  return v118;
}

void __146__VideoDeghostingDetectionV2_process_futureFrames_opticalCenter_futureOpticalCenter_opticalCenterMvShift_outputImgBufTMinus1_outputImgBufTMinus2___block_invoke(uint64_t a1)
{
  if (*(*(a1 + 64) + 12) >= 1)
  {
    v12[11] = v1;
    v12[12] = v2;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 8 * ((*(*(a1 + 32) + 392) + 1) % 3uLL) + 152));
    v4 = *(a1 + 32);
    __copy_constructor_8_8_t0w8_s8_s16_s24_s32_s40_t48w8(v12, **(a1 + 64));
    v5 = *(a1 + 80);
    v6 = *(a1 + 72);
    v7 = *(*(a1 + 56) + 8);
    v8 = *(*(a1 + 40) + 8);
    v10 = *(v8 + 40);
    v9 = (v8 + 40);
    obj = v10;
    if (v4)
    {
      v4 = [v4 unpackIspLsMaskAndRoisForNextFrameWithFrameData:v12 futureOpticalCenter:v6 currFrameMetaContainer:v7 + 24 outputFutureFrameCnt:&obj outputMTLBuffer:v5];
      objc_storeStrong(v9, obj);
    }

    else
    {
      __destructor_8_s8_s16_s24_s32_s40(v12);
    }

    *(*(*(a1 + 48) + 8) + 24) = v4;
  }
}

uint64_t __146__VideoDeghostingDetectionV2_process_futureFrames_opticalCenter_futureOpticalCenter_opticalCenterMvShift_outputImgBufTMinus1_outputImgBufTMinus2___block_invoke_40(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 48;
  if ((v2[49] & 1) == 0)
  {
    v3 = 46;
  }

  v4 = *(a1 + 88);
  v22 = v2[v4 + 83];
  v23 = v2[v3];
  v21 = v2[v4 + 89];
  v5 = 165;
  if (v2[49])
  {
    v6 = 165;
  }

  else
  {
    v6 = 167;
  }

  v7 = v2[v6];
  v8 = v2[v4 + 95];
  v9 = 47;
  if ((v2[49] & 1) == 0)
  {
    v9 = 45;
  }

  v10 = v2[v4 + 80];
  v11 = v2[v4 + 86];
  v12 = 164;
  if (v2[49])
  {
    v13 = 164;
  }

  else
  {
    v13 = 166;
  }

  v14 = v2[v13];
  v15 = v2[v4 + 92];
  v16 = *(a1 + 90);
  if (v2[49])
  {
    v5 = 167;
  }

  v18 = v2[v5];
  if (v2[49])
  {
    v12 = 166;
  }

  LOWORD(v20) = *(a1 + 92);
  v17 = &v2[v16];
  result = [v2 _getProbMapInput:v2[14] reflLs:v23 trackingRef:v2[15] trackingRefProb:v22 trackingRefSpaProb:v21 trackingRefErrRescaleProb:v7 trackingRefLs:v8 inputBuf:*(a1 + 72) reflLsBuf:v2[v9] trackingRefBuf:v2[8] trackingRefProbBuf:v10 trackingRefSpaProbBuf:v11 trackingRefErrRescaleProbBuf:v14 trackingRefLsBuf:v15 trackingMvf:v2[53] metaBuf:*(a1 + 40) metaBufArray:*(a1 + 80) trackingRefMetaBuf:*(a1 + 48) probMap:v17[28] errRescaleProbMap:v18 rawRefinedProbMap:v2[v16 + 89] refinedProbMap:v17[34] refinedReflLs:v2[v16 + 95] probMapStash4FutureTracking:v2[v16 + 83] probMapBuf:v17[25] errRescaleProbMapBuf:v2[v12] rawRefinedProbMapBuf:v2[v16 + 86] refinedProbMapBuf:v17[31] refinedReflLsBuf:v2[v16 + 92] probMapStash4FutureTrackingBuf:v2[v16 + 80] doTracking:v20 waitForComplete:?];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

- (int64_t)repairTarget:(VideoDeghostingDetectionV2 *)self opticalCenter:(SEL)center frRef0:(id)ref0 frRef1:(id)ref1 nextFrame:(id)frame nextFrameMvf:(id)mvf nextFrameMvfBuf:(id)buf nextOpticalCenter:(__CVBuffer *)opticalCenter probMap:(id)map errRescaleProbMap:(id)self0 prevProbMap:(id)self1 refinedProbMap:(id)self2 probMap4TrRefW:(id)self3 metaBuf:(id)self4 metaBufArray:(id *)self5 forceToSpatial:(BOOL)self6 waitForComplete:(BOOL)self7
{
  v23 = v18;
  v24 = v17;
  ref0Copy = ref0;
  ref1Copy = ref1;
  frameCopy = frame;
  mvfCopy = mvf;
  bufCopy = buf;
  mapCopy = map;
  probMapCopy = probMap;
  prevProbMapCopy = prevProbMap;
  refinedProbMapCopy = refinedProbMap;
  wCopy = w;
  metaBufCopy = metaBuf;
  v94 = 0;
  v95 = &v94;
  v96 = 0x3032000000;
  v97 = __Block_byref_object_copy__1;
  v98 = __Block_byref_object_dispose__1;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v30 = v95[5];
  if (!v30)
  {
LABEL_32:
    v34 = 6;
    goto LABEL_29;
  }

  [v30 setLabel:@"detection"];
  if (array->var1 >= 1)
  {
    v31 = 0;
    do
    {
      computeCommandEncoder = [v95[5] computeCommandEncoder];
      if (!computeCommandEncoder)
      {
        goto LABEL_32;
      }

      v33 = array->var0[v31];
      v34 = [(GGMMetalToolBox *)self->_metalToolBox encodeGetOverlapWithRefs:computeCommandEncoder input:ref0Copy probMap:wCopy metaBuf:v33];
      if (v34 || (v34 = [(GGMMetalToolBox *)self->_metalToolBox encodeCollectClusterOverlapWithRefs:computeCommandEncoder clusterMetaBuf:v33 metaBuf:metaBufCopy]) != 0 || (v34 = [(GGMMetalToolBox *)self->_metalToolBox encodeCopyMvfToCommandEncoder:computeCommandEncoder fullResTarget:ref0Copy mvf0:self->_flowMvf0Texture outMvf0:self->_flowMvf1Texture mvf1:self->_backwarpFlowMvf0Texture outMvf1:self->_backwarpFlowMvf1Texture meta:v33]) != 0)
      {

        goto LABEL_29;
      }

      [computeCommandEncoder endEncoding];
    }

    while (++v31 < array->var1);
  }

  v88 = 0;
  v89 = &v88;
  v90 = 0x3032000000;
  v91 = __Block_byref_object_copy__1;
  v92 = __Block_byref_object_dispose__1;
  computeCommandEncoder2 = [v95[5] computeCommandEncoder];
  v34 = [(GGMMetalToolBox *)self->_metalToolBox encodeBilinearRescale2ImgsYUV:v89[5] fullResInput:ref0Copy input0:ref1Copy output0:self->_lrBmRef0Texture input1:frameCopy output1:self->_lrBmRef1Texture meta:metaBufCopy];
  if (!v34)
  {
    v34 = [(GGMMetalToolBox *)self->_metalToolBox encodeSpatialRepairYUVToCommandEncoder:v89[5] input:ref0Copy probMap4Spatial:refinedProbMapCopy spatialOutput:self->_tradSpatialMitigatedTexture metaBuf:metaBufCopy];
    if (!v34)
    {
      v34 = [(GGMMetalToolBox *)self->_metalToolBox encodeBlendSpatialMitigatedYUVToCommandEncoder:v89[5] inputTexture:ref0Copy probMapTexture:mapCopy probMap4TradSpatialTexture:refinedProbMapCopy tradSpatialMitTexture:self->_tradSpatialMitigatedTexture dlSpatialMitTexture:self->_dlSpatialMitigatedTexture outputTexture:self->_spatialMitigatedTexture metaBuf:metaBufCopy];
      if (!v34)
      {
        [v89[5] endEncoding];
        commitCommandBuffer(v95[5], 1);
        LOBYTE(v47) = 0;
        v34 = [(VideoDeghostingDetectionV2 *)self getFlowTarget:self->_lrBmRef0Texture ref:self->_spatialMitigatedTexture targetBuf:0 refBuf:0 mvf:self->_flowMvf0 backwardMvf:self->_backwarpFlowMvf0 metaBuf:metaBufCopy skipRescaling:v47];
        if (!v34)
        {
          if (self->_currSegmentProcessedFrameCnt <= 2)
          {
            LOBYTE(v48) = 0;
            v34 = [(VideoDeghostingDetectionV2 *)self getFlowTarget:self->_lrBmRef1Texture ref:self->_spatialMitigatedTexture targetBuf:0 refBuf:0 mvf:self->_flowMvf1 backwardMvf:self->_backwarpFlowMvf1 metaBuf:metaBufCopy skipRescaling:v48];
            if (v34)
            {
              goto LABEL_28;
            }

LABEL_25:
            v52 = ref1Copy;
            v84 = 0;
            v85 = &v84;
            v86 = 0x2020000000;
            v87 = 0;
            dispatchGroup = self->_dispatchGroup;
            concurrentQueue = self->_concurrentQueue;
            block[0] = MEMORY[0x277D85DD0];
            block[1] = 3221225472;
            block[2] = __248__VideoDeghostingDetectionV2_repairTarget_opticalCenter_frRef0_frRef1_nextFrame_nextFrameMvf_nextFrameMvfBuf_nextOpticalCenter_probMap_errRescaleProbMap_prevProbMap_refinedProbMap_probMap4TrRefW_metaBuf_metaBufArray_forceToSpatial_waitForComplete___block_invoke;
            block[3] = &unk_278F53910;
            v75 = mvfCopy;
            selfCopy = self;
            v80 = &v84;
            v44 = ref0Copy;
            v77 = v44;
            v45 = metaBufCopy;
            v78 = v45;
            v81 = v23;
            v82 = v24;
            opticalCenterCopy = opticalCenter;
            v79 = bufCopy;
            dispatch_group_async(dispatchGroup, concurrentQueue, block);
            v34 = v85[3];
            if (!v34)
            {
              v50 = self->_concurrentQueue;
              v51 = self->_dispatchGroup;
              v60[0] = MEMORY[0x277D85DD0];
              v60[1] = 3221225472;
              v60[2] = __248__VideoDeghostingDetectionV2_repairTarget_opticalCenter_frRef0_frRef1_nextFrame_nextFrameMvf_nextFrameMvfBuf_nextOpticalCenter_probMap_errRescaleProbMap_prevProbMap_refinedProbMap_probMap4TrRefW_metaBuf_metaBufArray_forceToSpatial_waitForComplete___block_invoke_2;
              v60[3] = &unk_278F53938;
              v68 = &v94;
              v60[4] = self;
              v69 = &v84;
              v70 = &v88;
              arrayCopy = array;
              v61 = v52;
              v62 = frameCopy;
              v63 = v44;
              v64 = mapCopy;
              v65 = v45;
              v66 = probMapCopy;
              v67 = prevProbMapCopy;
              spatialCopy = spatial;
              completeCopy = complete;
              dispatch_group_async(v51, v50, v60);
              dispatch_group_wait(self->_dispatchGroup, 0xFFFFFFFFFFFFFFFFLL);
            }

            _Block_object_dispose(&v84, 8);
            ref1Copy = v52;
            goto LABEL_28;
          }

          commandBuffer2 = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
          v36 = v95[5];
          v95[5] = commandBuffer2;

          v37 = v95[5];
          if (v37)
          {
            [v37 setLabel:@"detection"];
            if (array->var1 < 1)
            {
LABEL_24:
              commitCommandBuffer(v95[5], 0);
              goto LABEL_25;
            }

            v38 = 0;
            while (1)
            {
              computeCommandEncoder3 = [v95[5] computeCommandEncoder];
              v40 = v89[5];
              v89[5] = computeCommandEncoder3;

              if (!v89[5])
              {
                break;
              }

              v41 = array->var0[v38];
              v34 = [(GGMMetalToolBox *)self->_metalToolBox encodeWarpMvf0WithMvf1ThenAddToMvf2ToCommandEncoder:v89[5] fullResTarget:ref0Copy mvf0:self->_flowMvf0Texture mvf1:self->_flowMvf1Texture mvf2:self->_flowMvf1Texture outMvf:self->_flowMvf1Texture meta:v41];
              if (v34 || (v34 = [(GGMMetalToolBox *)self->_metalToolBox encodeWarpMvf0WithMvf1ToCommandEncoder:v89[5] fullResTarget:ref0Copy mvf0:self->_backwarpFlowMvf1Texture mvf1:self->_backwarpFlowMvf0Texture outMvf:self->_warpedFlowMvfTexture meta:v41]) != 0 || (v34 = [(GGMMetalToolBox *)self->_metalToolBox encodeAddMvf0ToMvf1ToCommandEncoder:v89[5] fullResTarget:ref0Copy mvf0:self->_warpedFlowMvfTexture mvf1:self->_backwarpFlowMvf0Texture outMvf:self->_backwarpFlowMvf1Texture meta:v41]) != 0)
              {

                goto LABEL_28;
              }

              [v89[5] endEncoding];

              if (++v38 >= array->var1)
              {
                goto LABEL_24;
              }
            }
          }

          v34 = 6;
        }
      }
    }
  }

LABEL_28:
  _Block_object_dispose(&v88, 8);

LABEL_29:
  _Block_object_dispose(&v94, 8);

  return v34;
}

void __248__VideoDeghostingDetectionV2_repairTarget_opticalCenter_frRef0_frRef1_nextFrame_nextFrameMvf_nextFrameMvfBuf_nextOpticalCenter_probMap_errRescaleProbMap_prevProbMap_refinedProbMap_probMap4TrRefW_metaBuf_metaBufArray_forceToSpatial_waitForComplete___block_invoke(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = [*(*(a1 + 40) + 16) commandBuffer];
    v3 = v2;
    if (!v2)
    {
      *(*(*(a1 + 72) + 8) + 24) = 6;
    }

    [v2 setLabel:@"detection"];
    v4 = [v3 computeCommandEncoder];
    if (!v3)
    {
      *(*(*(a1 + 72) + 8) + 24) = 6;
    }

    *(*(*(a1 + 72) + 8) + 24) = [*(*(a1 + 40) + 32) encodeReflectYUVImg2:v4 fullResInput:*(a1 + 48) meta:*(a1 + 56) input0:*(a1 + 32) output0:*(*(a1 + 40) + 984) center0:*(a1 + 48) input1:*(a1 + 80) output1:*(a1 + 88) center1:*(*(a1 + 40) + 1000)];
    [v4 endEncoding];
    commitCommandBuffer(v3, 0);
    LOBYTE(v6) = 1;
    *(*(*(a1 + 72) + 8) + 24) = [*(a1 + 40) getFlowTarget:0 ref:0 targetBuf:*(*(a1 + 40) + 976) refBuf:*(*(a1 + 40) + 992) mvf:*(a1 + 96) backwardMvf:0 metaBuf:*(a1 + 56) skipRescaling:v6];
    v7 = [*(*(a1 + 40) + 16) commandBuffer];

    if (!v7)
    {
      *(*(*(a1 + 72) + 8) + 24) = 6;
    }

    v5 = [v7 computeCommandEncoder];

    if (!v7)
    {
      *(*(*(a1 + 72) + 8) + 24) = 6;
    }

    *(*(*(a1 + 72) + 8) + 24) = [*(*(a1 + 40) + 32) encodeGetMvToFutureFromMvf:v5 fullResInput:*(a1 + 48) meta:*(*(a1 + 40) + 1280) mvf:*(a1 + 64)];
    *(*(*(a1 + 72) + 8) + 24) = [*(*(a1 + 40) + 32) encodeCollectMvToFuture:v5 metaBuf:*(*(a1 + 40) + 1280)];
    [v5 endEncoding];
    commitCommandBuffer(v7, 0);
  }
}

void __248__VideoDeghostingDetectionV2_repairTarget_opticalCenter_frRef0_frRef1_nextFrame_nextFrameMvf_nextFrameMvfBuf_nextOpticalCenter_probMap_errRescaleProbMap_prevProbMap_refinedProbMap_probMap4TrRefW_metaBuf_metaBufArray_forceToSpatial_waitForComplete___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) commandBuffer];
  v3 = *(*(a1 + 96) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = *(*(*(a1 + 96) + 8) + 40);
  if (!v5)
  {
    *(*(*(a1 + 104) + 8) + 24) = 6;
    v5 = *(*(*(a1 + 96) + 8) + 40);
  }

  [v5 setLabel:@"detection"];
  if (*(*(a1 + 120) + 2048) >= 1)
  {
    v6 = 0;
    do
    {
      v7 = [*(*(*(a1 + 96) + 8) + 40) computeCommandEncoder];
      v8 = *(*(a1 + 112) + 8);
      v9 = *(v8 + 40);
      *(v8 + 40) = v7;

      if (!*(*(*(a1 + 112) + 8) + 40))
      {
        *(*(*(a1 + 104) + 8) + 24) = 6;
      }

      v10 = *(a1 + 32);
      v11 = v10[4];
      v12 = *(*(*(a1 + 112) + 8) + 40);
      v13 = *(a1 + 48);
      v30 = *(a1 + 40);
      v14 = v10[172];
      v15 = v10[173];
      v16 = v10[145];
      v29 = v10[147];
      v17 = *(*(a1 + 120) + 8 * v6);
      *(*(*(a1 + 104) + 8) + 24) = [v11 encodeForwarpYUVToCommandEncoder:v12 input0:v30 input1:v13 meta:v14 mvf0:v15 mvf1:0 intermediateOutput0:0 intermediateOutput1:v16 output0:v29 output1:? outputMap0:? outputMap1:?];
      v18 = *(a1 + 32);
      LODWORD(v19) = 2.0;
      LODWORD(v20) = 2.0;
      *(*(*(a1 + 104) + 8) + 24) = [*(v18 + 32) encodeDilateForwarpHoleMap:*(*(*(a1 + 112) + 8) + 40) fullResTarget:*(a1 + 56) inputMap0:*(v18 + 1160) outputMap0:*(v18 + 1192) inputMap1:*(v18 + 1176) outputMap1:*(v18 + 1208) hardDilationRadius:v19 softDilationRadius:v20 meta:v17];
      *(*(*(a1 + 104) + 8) + 24) = [*(*(a1 + 32) + 32) encodeGetRoiRepairMvFromMvfToCommandEncoder:*(*(*(a1 + 112) + 8) + 40) fullResInput:*(a1 + 56) probMap:*(a1 + 64) mvf0:*(*(a1 + 32) + 1064) mvf1:*(*(a1 + 32) + 1080) meta:v17];
      *(*(*(a1 + 104) + 8) + 24) = [*(*(a1 + 32) + 32) encodeCollectClusterMv:*(*(*(a1 + 112) + 8) + 40) clusterMetaBuf:v17 metaBuf:*(a1 + 72)];
      *(*(*(a1 + 104) + 8) + 24) = [*(*(a1 + 32) + 32) encodeBmTransferWithRoiRepairMvYUVToCommandEncoder:*(*(*(a1 + 112) + 8) + 40) fullResInput:*(a1 + 56) ref0:*(a1 + 40) warpedRef0:*(*(a1 + 32) + 920) ref1:*(a1 + 48) warpedRef1:*(*(a1 + 32) + 936) meta:v17];
      v21 = *(a1 + 32);
      *(*(*(a1 + 104) + 8) + 24) = [*(v21 + 32) encodeBMSearch4RepairToCommandEncoder:*(*(*(a1 + 112) + 8) + 40) hrTarget:*(a1 + 56) target:*(v21 + 824) ref0:*(v21 + 952) ref1:*(v21 + 968) forwarpHoleMap0:*(v21 + 1192) forwarpHoleMap1:*(v21 + 1208) probMap:*(a1 + 64) mvf0:*(v21 + 440) mvf1:*(v21 + 456) meta:v17];
      v22 = *(a1 + 32);
      *(*(*(a1 + 104) + 8) + 24) = [*(v22 + 32) encodeBMTransfer4RepairYUVToCommandEncoder:*(*(*(a1 + 112) + 8) + 40) ref0:*(a1 + 40) ref1:*(a1 + 48) forwarpHoleMap0:*(v22 + 1192) forwarpHoleMap1:*(v22 + 1208) probMap:*(a1 + 64) warpedRef0:*(v22 + 1096) warpedRef1:*(v22 + 1112) bmMvf0:*(v22 + 440) bmMvf1:*(v22 + 456) backwarpFlow0:*(v22 + 1064) backwarpFlow1:*(v22 + 1080) meta:v17];
      v23 = *(a1 + 32);
      *(*(*(a1 + 104) + 8) + 24) = [*(v23 + 32) encodeGetTempRepairedBgAlignErrYUVToCommandEncoder:*(*(*(a1 + 112) + 8) + 40) target:*(v23 + 824) hmgrphyRef0:*(v23 + 920) hmgrphyRef1:*(v23 + 936) bmRef0:*(v23 + 1096) bmRef1:*(v23 + 1112) probMap:*(a1 + 64) errRescaleProbMap:*(a1 + 80) prevProbMap:*(a1 + 88) flow0:*(v23 + 1064) flow1:*(v23 + 1080) meta:v17];
      *(*(*(a1 + 104) + 8) + 24) = [*(*(a1 + 32) + 32) encodeCollectClusterTempRepairErr:*(*(*(a1 + 112) + 8) + 40) clusterMetaBuf:v17 metaBuf:*(a1 + 72)];
      v24 = *(a1 + 32);
      *(*(*(a1 + 104) + 8) + 24) = [*(v24 + 32) encodeBlendRefsYUVToCommandEncoder:*(*(*(a1 + 112) + 8) + 40) hmgrphyRef0:*(v24 + 920) hmgrphyRef1:*(v24 + 936) bmRef0:*(v24 + 1096) bmRef1:*(v24 + 1112) output0:*(v24 + 1224) output1:*(v24 + 1240) metaBuf:v17];
      *(*(*(a1 + 104) + 8) + 24) = [*(*(a1 + 32) + 32) encodeGetBgAvgYUVToCommandEncoder:*(*(*(a1 + 112) + 8) + 40) target:*(a1 + 56) ref0:*(*(a1 + 32) + 1224) ref1:*(*(a1 + 32) + 1240) probMap:*(a1 + 64) meta:v17];
      *(*(*(a1 + 104) + 8) + 24) = [*(*(a1 + 32) + 32) encodeCollectClusterBgAvgToCommandEncoder:*(*(*(a1 + 112) + 8) + 40) clusterMetaBuf:v17 metaBuf:*(a1 + 72)];
      v25 = *(a1 + 32);
      *(*(*(a1 + 104) + 8) + 24) = [*(v25 + 32) encodeAlignBgAvgYUVToCommandEncoder:*(*(*(a1 + 112) + 8) + 40) input:*(a1 + 56) ref0:*(v25 + 1224) ref1:*(v25 + 1240) alignedRef0:*(v25 + 1128) alignedRef1:*(v25 + 1144) metaBuf:v17];
      v26 = *(a1 + 32);
      *(*(*(a1 + 104) + 8) + 24) = [*(v26 + 32) encodeSpatialTemporalRepair4DetectionYUVToCommandEncoder:*(*(*(a1 + 112) + 8) + 40) input:*(a1 + 56) frRef0:*(v26 + 1128) frRef1:*(v26 + 1144) temporalOutput:*(v26 + 792) inputCopy:*(v26 + 808) metaBuf:v17];
      *(*(*(a1 + 104) + 8) + 24) = [*(*(a1 + 32) + 32) encodeFuse4DetectionYUVToCommandEncoder:*(*(*(a1 + 112) + 8) + 40) inputTexture:*(*(a1 + 32) + 808) probMapTexture:*(a1 + 64) temporalMitTexture:*(*(a1 + 32) + 792) spatialMitTexture:*(*(a1 + 32) + 824) forceToSpatial:*(a1 + 128) outputTexture:*(a1 + 56) metaBuf:v17];
      [*(*(*(a1 + 112) + 8) + 40) endEncoding];

      ++v6;
    }

    while (v6 < *(*(a1 + 120) + 2048));
  }

  v27 = *(*(*(a1 + 96) + 8) + 40);
  v28 = *(a1 + 129);

  commitCommandBuffer(v27, v28);
}

- ($DC080E558804126FE14A0ED6851A46A4)configuration
{
  v3 = *&self[22].var1.var4;
  *&retstr->var0.var0 = *&self[22].var1.var0;
  *&retstr->var0.var7 = v3;
  v4 = *&self[23].var0.var7;
  *&retstr->var1.var0 = *&self[23].var0.var0;
  *&retstr->var1.var4 = v4;
  return self;
}

- (void)setConfiguration:(id *)configuration
{
  v3 = *&configuration->var0.var0;
  v4 = *&configuration->var0.var7;
  v5 = *&configuration->var1.var0;
  *&self->_configuration.externalCfg.frameDelay = *&configuration->var1.var4;
  *&self->_configuration.externalCfg.lightMode = v5;
  *&self->_configuration.internalCfg.enableColorMask = v4;
  *&self->_configuration.internalCfg.clipThreshold = v3;
}

- (VideoDeghostingDetectionV2)initWithMetalToolBox:(id)box config:(id *)config imageDimensions:(id)dimensions
{
  OUTLINED_FUNCTION_21_1();
  v502 = v5;
  v503 = v6;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v501.receiver = v12;
  v501.super_class = VideoDeghostingDetectionV2;
  v15 = [(VideoDeghostingDetectionV2 *)&v501 init];
  v16 = v15;
  if (v15)
  {
    v15->_processedFrameCnt = 0;
    v17 = v14 ? v14 : objc_alloc_init(GGMMetalToolBox);
    metalToolBox = v16->_metalToolBox;
    v16->_metalToolBox = v17;

    if (v16->_metalToolBox)
    {
      v19 = *v10;
      v20 = v10[1];
      v21 = v10[2];
      *&v16->_configuration.externalCfg.frameDelay = v10[3];
      *&v16->_configuration.externalCfg.lightMode = v21;
      *&v16->_configuration.internalCfg.enableColorMask = v20;
      *&v16->_configuration.internalCfg.clipThreshold = v19;
      [(VideoDeghostingDetectionV2 *)v16 _initParamsWithLowLight:1];
      v16->_imageDimensions = v8;
      *&v16->_trackID = 0x100000001;
      v22 = [[MaskToRoi alloc] initWithMetalToolBox:v16->_metalToolBox];
      maskToRoi = v16->_maskToRoi;
      v16->_maskToRoi = v22;

      if (v16->_metalToolBox)
      {
        v24 = [[VDGDetectionUtilsV2 alloc] initWithMetalToolBox:v16->_metalToolBox configuration:v10 tuningParams:&v16->_params];
        detectionUtils = v16->_detectionUtils;
        v16->_detectionUtils = v24;

        if (v16->_metalToolBox)
        {
          v26 = objc_alloc_init(VEOpticalFlow);
          flowNet = v16->_flowNet;
          v16->_flowNet = v26;

          v28 = v16->_flowNet;
          if (v28)
          {
            [(VEOpticalFlow *)v28 setRevision:2];
            [(VEOpticalFlow *)v16->_flowNet setSkipLastLevel:1];
            [(VEOpticalFlow *)v16->_flowNet setDownsampling:0];
            [(VEOpticalFlow *)v16->_flowNet setConcurrentDualFlowProcessing:1];
            [(VEOpticalFlow *)v16->_flowNet switchUsageTo:5];
            [(VEOpticalFlow *)v16->_flowNet allocateResources];
            v29 = [[ImageProcessor alloc] initLegacyModeWithUsage:5];
            flowPreprocessor = v16->_flowPreprocessor;
            v16->_flowPreprocessor = v29;

            if (v16->_flowPreprocessor)
            {
              [(VideoDeghostingDetectionV2 *)v16 _resetIntermediateVariables];
              getDevice = [(GGMMetalToolBox *)v16->_metalToolBox getDevice];
              device = v16->_device;
              v16->_device = getDevice;

              getCommandqueue = [(GGMMetalToolBox *)v16->_metalToolBox getCommandqueue];
              commandQueue = v16->_commandQueue;
              v16->_commandQueue = getCommandqueue;

              v35 = [[MitigationANE alloc] initWithMetalContext:v16->_device commandQueue:v16->_commandQueue imageDimensions:v8 netSize:0 metalToolBox:v16->_metalToolBox];
              mitigationANE = v16->_mitigationANE;
              v16->_mitigationANE = v35;

              v37 = v16->_mitigationANE;
              if (v37)
              {
                if (![(MitigationANE *)v37 setup])
                {
                  v38 = 0;
                  *&v16->_prevShouldRunGGDetectionLSBased = 257;
                  v16->_prevShouldRunGGDetectionClippedPixelBased = 1;
                  while (1)
                  {
                    v39 = [MEMORY[0x277CBEB28] dataWithLength:71248];
                    v40 = (&v16->super.isa + v38 * 8);
                    v41 = v16->_metaArray[v38];
                    v16->_metaArray[v38] = v39;

                    if (!v16->_metaArray[v38])
                    {
                      break;
                    }

                    getDevice2 = [(GGMMetalToolBox *)v16->_metalToolBox getDevice];
                    v43 = [getDevice2 newBufferWithBytesNoCopy:objc_msgSend(v40[22] length:"mutableBytes") options:71248 deallocator:{0, 0}];
                    v44 = v40[19];
                    v40[19] = v43;

                    if (!v40[19])
                    {
                      break;
                    }

                    if (++v38 == 3)
                    {
                      v45 = 200;
                      while (1)
                      {
                        v46 = OUTLINED_FUNCTION_1_26();
                        *(&v16->super.isa + v45) = v46;
                        if (!v46)
                        {
                          goto LABEL_147;
                        }

                        [(GGMMetalToolBox *)v16->_metalToolBox cvMetalTextureCacheRef];
                        v47 = OUTLINED_FUNCTION_16_0();
                        v52 = createSingleCachedTextureFromPixelBuffer(v47, v48, v49, v50, v51);
                        v53 = *(&v16->_detectionUtils + v45);
                        *(&v16->_detectionUtils + v45) = v52;

                        if (!*(&v16->_detectionUtils + v45))
                        {
                          goto LABEL_147;
                        }

                        v54 = OUTLINED_FUNCTION_1_26();
                        *(&v16->_mitigationANE + v45) = v54;
                        if (!v54)
                        {
                          goto LABEL_147;
                        }

                        [(GGMMetalToolBox *)v16->_metalToolBox cvMetalTextureCacheRef];
                        v55 = OUTLINED_FUNCTION_16_0();
                        v60 = createSingleCachedTextureFromPixelBuffer(v55, v56, v57, v58, v59);
                        v61 = *(&v16->_frameTMinus2 + v45);
                        *(&v16->_frameTMinus2 + v45) = v60;

                        if (!*(&v16->_frameTMinus2 + v45))
                        {
                          goto LABEL_147;
                        }

                        v45 += 8;
                        if (v45 == 224)
                        {
                          v16->_processedFrameCnt = 0;
                          v62 = dispatch_group_create();
                          dispatchGroup = v16->_dispatchGroup;
                          v16->_dispatchGroup = v62;

                          v64 = dispatch_queue_create("Concurrent Task Queue", MEMORY[0x277D85CD8]);
                          concurrentQueue = v16->_concurrentQueue;
                          v16->_concurrentQueue = v64;

                          v66 = OUTLINED_FUNCTION_2_15();
                          v16->_warpedReflTrackingRef = v66;
                          if (v66)
                          {
                            OUTLINED_FUNCTION_0_26();
                            v71 = createSingleTextureFromYuvBuffer(v67, v68, v69, v70);
                            warpedReflTrackingRefTexture = v16->_warpedReflTrackingRefTexture;
                            v16->_warpedReflTrackingRefTexture = v71;

                            if (v16->_warpedReflTrackingRefTexture)
                            {
                              v73 = OUTLINED_FUNCTION_10_3();
                              v16->_mvf4Future = v73;
                              if (v73)
                              {
                                OUTLINED_FUNCTION_3_14();
                                v78 = createTexturesFromCVPixelBuffer(v74, v75, v76, v77);
                                mvf4FutureTexture = v16->_mvf4FutureTexture;
                                v16->_mvf4FutureTexture = v78;

                                if (v16->_mvf4FutureTexture)
                                {
                                  v80 = OUTLINED_FUNCTION_1_26();
                                  v16->_warpedRefProbMap = v80;
                                  if (v80)
                                  {
                                    OUTLINED_FUNCTION_4_9();
                                    v84 = createTextureFromCVPixelBuffer(v81, v82, v83);
                                    warpedRefProbMapTexture = v16->_warpedRefProbMapTexture;
                                    v16->_warpedRefProbMapTexture = v84;

                                    if (v16->_warpedRefProbMapTexture)
                                    {
                                      v86 = OUTLINED_FUNCTION_1_26();
                                      v16->_rawWarpedRefProbMap = v86;
                                      if (v86)
                                      {
                                        OUTLINED_FUNCTION_4_9();
                                        v90 = createTextureFromCVPixelBuffer(v87, v88, v89);
                                        rawWarpedRefProbMapTexture = v16->_rawWarpedRefProbMapTexture;
                                        v16->_rawWarpedRefProbMapTexture = v90;

                                        if (v16->_rawWarpedRefProbMapTexture)
                                        {
                                          v92 = OUTLINED_FUNCTION_1_26();
                                          v16->_rawWarpedRefSpaProbMap = v92;
                                          if (v92)
                                          {
                                            OUTLINED_FUNCTION_4_9();
                                            v96 = createTextureFromCVPixelBuffer(v93, v94, v95);
                                            rawWarpedRefSpaProbMapTexture = v16->_rawWarpedRefSpaProbMapTexture;
                                            v16->_rawWarpedRefSpaProbMapTexture = v96;

                                            if (v16->_rawWarpedRefSpaProbMapTexture)
                                            {
                                              v98 = OUTLINED_FUNCTION_1_26();
                                              v16->_refinedReflLs4trackingRefWarped = v98;
                                              if (v98)
                                              {
                                                OUTLINED_FUNCTION_4_9();
                                                v102 = createTextureFromCVPixelBuffer(v99, v100, v101);
                                                refinedReflLs4trackingRefWarpedTexture = v16->_refinedReflLs4trackingRefWarpedTexture;
                                                v16->_refinedReflLs4trackingRefWarpedTexture = v102;

                                                if (v16->_refinedReflLs4trackingRefWarpedTexture)
                                                {
                                                  v104 = OUTLINED_FUNCTION_1_26();
                                                  v16->_motionMap = v104;
                                                  if (v104)
                                                  {
                                                    OUTLINED_FUNCTION_4_9();
                                                    v108 = createTextureFromCVPixelBuffer(v105, v106, v107);
                                                    motionMapTexture = v16->_motionMapTexture;
                                                    v16->_motionMapTexture = v108;

                                                    if (v16->_motionMapTexture)
                                                    {
                                                      v110 = OUTLINED_FUNCTION_1_26();
                                                      v16->_saliencyMap = v110;
                                                      if (v110)
                                                      {
                                                        OUTLINED_FUNCTION_4_9();
                                                        v114 = createTextureFromCVPixelBuffer(v111, v112, v113);
                                                        saliencyMapTexture = v16->_saliencyMapTexture;
                                                        v16->_saliencyMapTexture = v114;

                                                        if (v16->_saliencyMapTexture)
                                                        {
                                                          v116 = OUTLINED_FUNCTION_1_26();
                                                          v16->_blobSaliencyMap = v116;
                                                          if (v116)
                                                          {
                                                            OUTLINED_FUNCTION_4_9();
                                                            v120 = createTextureFromCVPixelBuffer(v117, v118, v119);
                                                            blobSaliencyMapTexture = v16->_blobSaliencyMapTexture;
                                                            v16->_blobSaliencyMapTexture = v120;

                                                            if (v16->_blobSaliencyMapTexture)
                                                            {
                                                              v122 = OUTLINED_FUNCTION_1_26();
                                                              v16->_rawProbMap = v122;
                                                              if (v122)
                                                              {
                                                                OUTLINED_FUNCTION_4_9();
                                                                v126 = createTextureFromCVPixelBuffer(v123, v124, v125);
                                                                rawProbMapTexture = v16->_rawProbMapTexture;
                                                                v16->_rawProbMapTexture = v126;

                                                                if (v16->_rawProbMapTexture)
                                                                {
                                                                  v128 = OUTLINED_FUNCTION_6_4();
                                                                  v130 = OUTLINED_FUNCTION_12_2(v128, v129);
                                                                  v16->_fullResRawRefinedProbMap = v130;
                                                                  if (v130)
                                                                  {
                                                                    OUTLINED_FUNCTION_4_9();
                                                                    v134 = createTextureFromCVPixelBuffer(v131, v132, v133);
                                                                    fullResRawRefinedProbMapTexture = v16->_fullResRawRefinedProbMapTexture;
                                                                    v16->_fullResRawRefinedProbMapTexture = v134;

                                                                    if (v16->_fullResRawRefinedProbMapTexture)
                                                                    {
                                                                      v136 = OUTLINED_FUNCTION_1_26();
                                                                      v16->_lrHwLsMask0 = v136;
                                                                      if (v136)
                                                                      {
                                                                        OUTLINED_FUNCTION_4_9();
                                                                        v140 = createTextureFromCVPixelBuffer(v137, v138, v139);
                                                                        lrHwLsMask0Texture = v16->_lrHwLsMask0Texture;
                                                                        v16->_lrHwLsMask0Texture = v140;

                                                                        if (v16->_lrHwLsMask0Texture)
                                                                        {
                                                                          v142 = OUTLINED_FUNCTION_1_26();
                                                                          v16->_lrHwLsMask1 = v142;
                                                                          if (v142)
                                                                          {
                                                                            OUTLINED_FUNCTION_4_9();
                                                                            v146 = createTextureFromCVPixelBuffer(v143, v144, v145);
                                                                            lrHwLsMask1Texture = v16->_lrHwLsMask1Texture;
                                                                            v16->_lrHwLsMask1Texture = v146;

                                                                            if (v16->_lrHwLsMask1Texture)
                                                                            {
                                                                              v148 = OUTLINED_FUNCTION_1_26();
                                                                              v16->_reflHwLsMask0 = v148;
                                                                              if (v148)
                                                                              {
                                                                                OUTLINED_FUNCTION_4_9();
                                                                                v152 = createTextureFromCVPixelBuffer(v149, v150, v151);
                                                                                reflHwLsMask0Texture = v16->_reflHwLsMask0Texture;
                                                                                v16->_reflHwLsMask0Texture = v152;

                                                                                if (v16->_reflHwLsMask0Texture)
                                                                                {
                                                                                  v154 = OUTLINED_FUNCTION_1_26();
                                                                                  v16->_reflHwLsMask1 = v154;
                                                                                  if (v154)
                                                                                  {
                                                                                    OUTLINED_FUNCTION_4_9();
                                                                                    v158 = createTextureFromCVPixelBuffer(v155, v156, v157);
                                                                                    reflHwLsMask1Texture = v16->_reflHwLsMask1Texture;
                                                                                    v16->_reflHwLsMask1Texture = v158;

                                                                                    if (v16->_reflHwLsMask1Texture)
                                                                                    {
                                                                                      v160 = OUTLINED_FUNCTION_6_4();
                                                                                      v162 = OUTLINED_FUNCTION_12_2(v160, v161);
                                                                                      v16->_fullResStashedProbMap4FutureTracking = v162;
                                                                                      if (v162)
                                                                                      {
                                                                                        OUTLINED_FUNCTION_4_9();
                                                                                        v166 = createTextureFromCVPixelBuffer(v163, v164, v165);
                                                                                        fullResStashedProbMap4FutureTrackingTexture = v16->_fullResStashedProbMap4FutureTrackingTexture;
                                                                                        v16->_fullResStashedProbMap4FutureTrackingTexture = v166;

                                                                                        if (v16->_fullResStashedProbMap4FutureTrackingTexture)
                                                                                        {
                                                                                          v168 = OUTLINED_FUNCTION_1_26();
                                                                                          v16->_dilatedLsMap = v168;
                                                                                          if (v168)
                                                                                          {
                                                                                            OUTLINED_FUNCTION_4_9();
                                                                                            v172 = createTextureFromCVPixelBuffer(v169, v170, v171);
                                                                                            dilatedLsMapTexture = v16->_dilatedLsMapTexture;
                                                                                            v16->_dilatedLsMapTexture = v172;

                                                                                            if (v16->_dilatedLsMapTexture)
                                                                                            {
                                                                                              v174 = OUTLINED_FUNCTION_2_15();
                                                                                              v16->_temporalMitigated = v174;
                                                                                              if (v174)
                                                                                              {
                                                                                                OUTLINED_FUNCTION_0_26();
                                                                                                v179 = createSingleTextureFromYuvBuffer(v175, v176, v177, v178);
                                                                                                temporalMitigatedTexture = v16->_temporalMitigatedTexture;
                                                                                                v16->_temporalMitigatedTexture = v179;

                                                                                                if (v16->_temporalMitigatedTexture)
                                                                                                {
                                                                                                  v181 = OUTLINED_FUNCTION_2_15();
                                                                                                  v16->_inputCopy = v181;
                                                                                                  if (v181)
                                                                                                  {
                                                                                                    OUTLINED_FUNCTION_0_26();
                                                                                                    v186 = createSingleTextureFromYuvBuffer(v182, v183, v184, v185);
                                                                                                    inputCopyTexture = v16->_inputCopyTexture;
                                                                                                    v16->_inputCopyTexture = v186;

                                                                                                    if (v16->_inputCopyTexture)
                                                                                                    {
                                                                                                      v188 = OUTLINED_FUNCTION_2_15();
                                                                                                      v16->_hmgrphyRef0 = v188;
                                                                                                      if (v188)
                                                                                                      {
                                                                                                        OUTLINED_FUNCTION_0_26();
                                                                                                        v193 = createSingleTextureFromYuvBuffer(v189, v190, v191, v192);
                                                                                                        hmgrphyRef0Texture = v16->_hmgrphyRef0Texture;
                                                                                                        v16->_hmgrphyRef0Texture = v193;

                                                                                                        if (v16->_hmgrphyRef0Texture)
                                                                                                        {
                                                                                                          v195 = OUTLINED_FUNCTION_2_15();
                                                                                                          v16->_hmgrphyRef1 = v195;
                                                                                                          if (v195)
                                                                                                          {
                                                                                                            OUTLINED_FUNCTION_0_26();
                                                                                                            v200 = createSingleTextureFromYuvBuffer(v196, v197, v198, v199);
                                                                                                            hmgrphyRef1Texture = v16->_hmgrphyRef1Texture;
                                                                                                            v16->_hmgrphyRef1Texture = v200;

                                                                                                            if (v16->_hmgrphyRef1Texture)
                                                                                                            {
                                                                                                              v202 = OUTLINED_FUNCTION_2_15();
                                                                                                              v16->_bmRef0 = v202;
                                                                                                              if (v202)
                                                                                                              {
                                                                                                                OUTLINED_FUNCTION_0_26();
                                                                                                                v207 = createSingleTextureFromYuvBuffer(v203, v204, v205, v206);
                                                                                                                bmRef0Texture = v16->_bmRef0Texture;
                                                                                                                v16->_bmRef0Texture = v207;

                                                                                                                if (v16->_bmRef0Texture)
                                                                                                                {
                                                                                                                  v209 = OUTLINED_FUNCTION_2_15();
                                                                                                                  v16->_bmRef1 = v209;
                                                                                                                  if (v209)
                                                                                                                  {
                                                                                                                    OUTLINED_FUNCTION_0_26();
                                                                                                                    v214 = createSingleTextureFromYuvBuffer(v210, v211, v212, v213);
                                                                                                                    bmRef1Texture = v16->_bmRef1Texture;
                                                                                                                    v16->_bmRef1Texture = v214;

                                                                                                                    if (v16->_bmRef1Texture)
                                                                                                                    {
                                                                                                                      v216 = OUTLINED_FUNCTION_2_15();
                                                                                                                      v16->_avgAlignedRef0 = v216;
                                                                                                                      if (v216)
                                                                                                                      {
                                                                                                                        OUTLINED_FUNCTION_0_26();
                                                                                                                        v221 = createSingleTextureFromYuvBuffer(v217, v218, v219, v220);
                                                                                                                        avgAlignedRef0Texture = v16->_avgAlignedRef0Texture;
                                                                                                                        v16->_avgAlignedRef0Texture = v221;

                                                                                                                        if (v16->_avgAlignedRef0Texture)
                                                                                                                        {
                                                                                                                          v223 = OUTLINED_FUNCTION_2_15();
                                                                                                                          v16->_avgAlignedRef1 = v223;
                                                                                                                          if (v223)
                                                                                                                          {
                                                                                                                            OUTLINED_FUNCTION_0_26();
                                                                                                                            v228 = createSingleTextureFromYuvBuffer(v224, v225, v226, v227);
                                                                                                                            avgAlignedRef1Texture = v16->_avgAlignedRef1Texture;
                                                                                                                            v16->_avgAlignedRef1Texture = v228;

                                                                                                                            if (v16->_avgAlignedRef1Texture)
                                                                                                                            {
                                                                                                                              v230 = OUTLINED_FUNCTION_6_4();
                                                                                                                              PixelBufferHelper = CreatePixelBufferHelper(v230, v231, v232);
                                                                                                                              v16->_flowRef0Map = PixelBufferHelper;
                                                                                                                              if (PixelBufferHelper)
                                                                                                                              {
                                                                                                                                OUTLINED_FUNCTION_4_9();
                                                                                                                                v237 = createTextureFromCVPixelBuffer(v234, v235, v236);
                                                                                                                                flowRef0MapTexture = v16->_flowRef0MapTexture;
                                                                                                                                v16->_flowRef0MapTexture = v237;

                                                                                                                                if (v16->_flowRef0MapTexture)
                                                                                                                                {
                                                                                                                                  OUTLINED_FUNCTION_4_9();
                                                                                                                                  v242 = createTextureFromCVPixelBuffer(v239, v240, v241);
                                                                                                                                  v243 = v16->_flowRef0MapTexture;
                                                                                                                                  v16->_flowRef0MapTexture = v242;

                                                                                                                                  v244 = OUTLINED_FUNCTION_6_4();
                                                                                                                                  v247 = CreatePixelBufferHelper(v244, v245, v246);
                                                                                                                                  v16->_flowRef1Map = v247;
                                                                                                                                  if (v247)
                                                                                                                                  {
                                                                                                                                    OUTLINED_FUNCTION_4_9();
                                                                                                                                    v251 = createTextureFromCVPixelBuffer(v248, v249, v250);
                                                                                                                                    flowRef1MapTexture = v16->_flowRef1MapTexture;
                                                                                                                                    v16->_flowRef1MapTexture = v251;

                                                                                                                                    if (v16->_flowRef1MapTexture)
                                                                                                                                    {
                                                                                                                                      v253 = OUTLINED_FUNCTION_11_3();
                                                                                                                                      v256 = CreatePixelBufferHelper(v253, v254, v255);
                                                                                                                                      v16->_dilatedFlowRef0Map = v256;
                                                                                                                                      if (v256)
                                                                                                                                      {
                                                                                                                                        OUTLINED_FUNCTION_4_9();
                                                                                                                                        v260 = createTextureFromCVPixelBuffer(v257, v258, v259);
                                                                                                                                        dilatedFlowRef0MapTexture = v16->_dilatedFlowRef0MapTexture;
                                                                                                                                        v16->_dilatedFlowRef0MapTexture = v260;

                                                                                                                                        if (v16->_dilatedFlowRef0MapTexture)
                                                                                                                                        {
                                                                                                                                          v262 = OUTLINED_FUNCTION_11_3();
                                                                                                                                          v265 = CreatePixelBufferHelper(v262, v263, v264);
                                                                                                                                          v16->_dilatedFlowRef1Map = v265;
                                                                                                                                          if (v265)
                                                                                                                                          {
                                                                                                                                            OUTLINED_FUNCTION_4_9();
                                                                                                                                            v269 = createTextureFromCVPixelBuffer(v266, v267, v268);
                                                                                                                                            dilatedFlowRef1MapTexture = v16->_dilatedFlowRef1MapTexture;
                                                                                                                                            v16->_dilatedFlowRef1MapTexture = v269;

                                                                                                                                            if (v16->_dilatedFlowRef1MapTexture)
                                                                                                                                            {
                                                                                                                                              v271 = OUTLINED_FUNCTION_2_15();
                                                                                                                                              v16->_blendedRef0 = v271;
                                                                                                                                              if (v271)
                                                                                                                                              {
                                                                                                                                                OUTLINED_FUNCTION_0_26();
                                                                                                                                                v276 = createSingleTextureFromYuvBuffer(v272, v273, v274, v275);
                                                                                                                                                blendedRef0Texture = v16->_blendedRef0Texture;
                                                                                                                                                v16->_blendedRef0Texture = v276;

                                                                                                                                                if (v16->_blendedRef0Texture)
                                                                                                                                                {
                                                                                                                                                  v278 = OUTLINED_FUNCTION_2_15();
                                                                                                                                                  v16->_blendedRef1 = v278;
                                                                                                                                                  if (v278)
                                                                                                                                                  {
                                                                                                                                                    OUTLINED_FUNCTION_0_26();
                                                                                                                                                    v283 = createSingleTextureFromYuvBuffer(v279, v280, v281, v282);
                                                                                                                                                    blendedRef1Texture = v16->_blendedRef1Texture;
                                                                                                                                                    v16->_blendedRef1Texture = v283;

                                                                                                                                                    if (v16->_blendedRef1Texture)
                                                                                                                                                    {
                                                                                                                                                      v285 = OUTLINED_FUNCTION_2_15();
                                                                                                                                                      v16->_input4MotionCue = v285;
                                                                                                                                                      if (v285)
                                                                                                                                                      {
                                                                                                                                                        OUTLINED_FUNCTION_0_26();
                                                                                                                                                        v290 = createSingleTextureFromYuvBuffer(v286, v287, v288, v289);
                                                                                                                                                        input4MotionCueTexture = v16->_input4MotionCueTexture;
                                                                                                                                                        v16->_input4MotionCueTexture = v290;

                                                                                                                                                        if (v16->_input4MotionCueTexture)
                                                                                                                                                        {
                                                                                                                                                          v292 = OUTLINED_FUNCTION_2_15();
                                                                                                                                                          v16->_ref4MotionCue = v292;
                                                                                                                                                          if (v292)
                                                                                                                                                          {
                                                                                                                                                            OUTLINED_FUNCTION_0_26();
                                                                                                                                                            v297 = createSingleTextureFromYuvBuffer(v293, v294, v295, v296);
                                                                                                                                                            ref4MotionCueTexture = v16->_ref4MotionCueTexture;
                                                                                                                                                            v16->_ref4MotionCueTexture = v297;

                                                                                                                                                            if (v16->_ref4MotionCueTexture)
                                                                                                                                                            {
                                                                                                                                                              v299 = (2 * ((v8.width / 2 + 1) / 2));
                                                                                                                                                              v300 = OUTLINED_FUNCTION_8_6();
                                                                                                                                                              v16->_spatialMitigated = v300;
                                                                                                                                                              if (v300)
                                                                                                                                                              {
                                                                                                                                                                OUTLINED_FUNCTION_0_26();
                                                                                                                                                                v305 = createSingleTextureFromYuvBuffer(v301, v302, v303, v304);
                                                                                                                                                                spatialMitigatedTexture = v16->_spatialMitigatedTexture;
                                                                                                                                                                v16->_spatialMitigatedTexture = v305;

                                                                                                                                                                if (v16->_spatialMitigatedTexture)
                                                                                                                                                                {
                                                                                                                                                                  v307 = OUTLINED_FUNCTION_8_6();
                                                                                                                                                                  v16->_tradSpatialMitigated = v307;
                                                                                                                                                                  if (v307)
                                                                                                                                                                  {
                                                                                                                                                                    OUTLINED_FUNCTION_0_26();
                                                                                                                                                                    v312 = createSingleTextureFromYuvBuffer(v308, v309, v310, v311);
                                                                                                                                                                    tradSpatialMitigatedTexture = v16->_tradSpatialMitigatedTexture;
                                                                                                                                                                    v16->_tradSpatialMitigatedTexture = v312;

                                                                                                                                                                    if (v16->_tradSpatialMitigatedTexture)
                                                                                                                                                                    {
                                                                                                                                                                      v314 = OUTLINED_FUNCTION_8_6();
                                                                                                                                                                      v16->_lrBmRef0 = v314;
                                                                                                                                                                      if (v314)
                                                                                                                                                                      {
                                                                                                                                                                        OUTLINED_FUNCTION_0_26();
                                                                                                                                                                        v319 = createSingleTextureFromYuvBuffer(v315, v316, v317, v318);
                                                                                                                                                                        lrBmRef0Texture = v16->_lrBmRef0Texture;
                                                                                                                                                                        v16->_lrBmRef0Texture = v319;

                                                                                                                                                                        if (v16->_lrBmRef0Texture)
                                                                                                                                                                        {
                                                                                                                                                                          v321 = OUTLINED_FUNCTION_8_6();
                                                                                                                                                                          v16->_lrBmRef1 = v321;
                                                                                                                                                                          if (v321)
                                                                                                                                                                          {
                                                                                                                                                                            OUTLINED_FUNCTION_0_26();
                                                                                                                                                                            v326 = createSingleTextureFromYuvBuffer(v322, v323, v324, v325);
                                                                                                                                                                            lrBmRef1Texture = v16->_lrBmRef1Texture;
                                                                                                                                                                            v16->_lrBmRef1Texture = v326;

                                                                                                                                                                            if (v16->_lrBmRef1Texture)
                                                                                                                                                                            {
                                                                                                                                                                              v328 = OUTLINED_FUNCTION_11_3();
                                                                                                                                                                              v331 = CreatePixelBufferHelper(v328, v329, v330);
                                                                                                                                                                              v16->_mvf4Repair0 = v331;
                                                                                                                                                                              if (v331)
                                                                                                                                                                              {
                                                                                                                                                                                OUTLINED_FUNCTION_3_14();
                                                                                                                                                                                v336 = createTexturesFromCVPixelBuffer(v332, v333, v334, v335);
                                                                                                                                                                                mvf4Repair0Texture = v16->_mvf4Repair0Texture;
                                                                                                                                                                                v16->_mvf4Repair0Texture = v336;

                                                                                                                                                                                if (v16->_mvf4Repair0Texture)
                                                                                                                                                                                {
                                                                                                                                                                                  v338 = OUTLINED_FUNCTION_11_3();
                                                                                                                                                                                  v341 = CreatePixelBufferHelper(v338, v339, v340);
                                                                                                                                                                                  v16->_mvf4Repair1 = v341;
                                                                                                                                                                                  if (v341)
                                                                                                                                                                                  {
                                                                                                                                                                                    OUTLINED_FUNCTION_3_14();
                                                                                                                                                                                    v346 = createTexturesFromCVPixelBuffer(v342, v343, v344, v345);
                                                                                                                                                                                    mvf4Repair1Texture = v16->_mvf4Repair1Texture;
                                                                                                                                                                                    v16->_mvf4Repair1Texture = v346;

                                                                                                                                                                                    if (v16->_mvf4Repair1Texture)
                                                                                                                                                                                    {
                                                                                                                                                                                      v348 = OUTLINED_FUNCTION_14_1(0x3C0uLL, 0x21CuLL);
                                                                                                                                                                                      v16->_flowTarget = v348;
                                                                                                                                                                                      if (v348)
                                                                                                                                                                                      {
                                                                                                                                                                                        OUTLINED_FUNCTION_0_26();
                                                                                                                                                                                        v353 = createSingleTextureFromYuvBuffer(v349, v350, v351, v352);
                                                                                                                                                                                        flowTargetTexture = v16->_flowTargetTexture;
                                                                                                                                                                                        v16->_flowTargetTexture = v353;

                                                                                                                                                                                        if (v16->_flowTargetTexture)
                                                                                                                                                                                        {
                                                                                                                                                                                          v355 = OUTLINED_FUNCTION_14_1(0x3C0uLL, 0x21CuLL);
                                                                                                                                                                                          v16->_flowRef = v355;
                                                                                                                                                                                          if (v355)
                                                                                                                                                                                          {
                                                                                                                                                                                            OUTLINED_FUNCTION_0_26();
                                                                                                                                                                                            v360 = createSingleTextureFromYuvBuffer(v356, v357, v358, v359);
                                                                                                                                                                                            flowRefTexture = v16->_flowRefTexture;
                                                                                                                                                                                            v16->_flowRefTexture = v360;

                                                                                                                                                                                            if (v16->_flowRefTexture)
                                                                                                                                                                                            {
                                                                                                                                                                                              v362 = OUTLINED_FUNCTION_10_3();
                                                                                                                                                                                              v16->_flowMvf0 = v362;
                                                                                                                                                                                              if (v362)
                                                                                                                                                                                              {
                                                                                                                                                                                                OUTLINED_FUNCTION_3_14();
                                                                                                                                                                                                v367 = createTexturesFromCVPixelBuffer(v363, v364, v365, v366);
                                                                                                                                                                                                flowMvf0Texture = v16->_flowMvf0Texture;
                                                                                                                                                                                                v16->_flowMvf0Texture = v367;

                                                                                                                                                                                                if (v16->_flowMvf0Texture)
                                                                                                                                                                                                {
                                                                                                                                                                                                  v369 = OUTLINED_FUNCTION_10_3();
                                                                                                                                                                                                  v16->_flowMvf1 = v369;
                                                                                                                                                                                                  if (v369)
                                                                                                                                                                                                  {
                                                                                                                                                                                                    OUTLINED_FUNCTION_3_14();
                                                                                                                                                                                                    v374 = createTexturesFromCVPixelBuffer(v370, v371, v372, v373);
                                                                                                                                                                                                    flowMvf1Texture = v16->_flowMvf1Texture;
                                                                                                                                                                                                    v16->_flowMvf1Texture = v374;

                                                                                                                                                                                                    if (v16->_flowMvf1Texture)
                                                                                                                                                                                                    {
                                                                                                                                                                                                      v376 = OUTLINED_FUNCTION_10_3();
                                                                                                                                                                                                      v16->_warpedFlowMvf = v376;
                                                                                                                                                                                                      if (v376)
                                                                                                                                                                                                      {
                                                                                                                                                                                                        OUTLINED_FUNCTION_3_14();
                                                                                                                                                                                                        v381 = createTexturesFromCVPixelBuffer(v377, v378, v379, v380);
                                                                                                                                                                                                        warpedFlowMvfTexture = v16->_warpedFlowMvfTexture;
                                                                                                                                                                                                        v16->_warpedFlowMvfTexture = v381;

                                                                                                                                                                                                        if (v16->_warpedFlowMvfTexture)
                                                                                                                                                                                                        {
                                                                                                                                                                                                          v383 = OUTLINED_FUNCTION_10_3();
                                                                                                                                                                                                          v16->_backwarpFlowMvf0 = v383;
                                                                                                                                                                                                          if (v383)
                                                                                                                                                                                                          {
                                                                                                                                                                                                            OUTLINED_FUNCTION_3_14();
                                                                                                                                                                                                            v388 = createTexturesFromCVPixelBuffer(v384, v385, v386, v387);
                                                                                                                                                                                                            backwarpFlowMvf0Texture = v16->_backwarpFlowMvf0Texture;
                                                                                                                                                                                                            v16->_backwarpFlowMvf0Texture = v388;

                                                                                                                                                                                                            if (v16->_backwarpFlowMvf0Texture)
                                                                                                                                                                                                            {
                                                                                                                                                                                                              v390 = OUTLINED_FUNCTION_10_3();
                                                                                                                                                                                                              v16->_backwarpFlowMvf1 = v390;
                                                                                                                                                                                                              if (v390)
                                                                                                                                                                                                              {
                                                                                                                                                                                                                OUTLINED_FUNCTION_3_14();
                                                                                                                                                                                                                v395 = createTexturesFromCVPixelBuffer(v391, v392, v393, v394);
                                                                                                                                                                                                                backwarpFlowMvf1Texture = v16->_backwarpFlowMvf1Texture;
                                                                                                                                                                                                                v16->_backwarpFlowMvf1Texture = v395;

                                                                                                                                                                                                                if (v16->_backwarpFlowMvf1Texture)
                                                                                                                                                                                                                {
                                                                                                                                                                                                                  v397 = OUTLINED_FUNCTION_18_1();
                                                                                                                                                                                                                  v399 = OUTLINED_FUNCTION_14_1(v397, v398);
                                                                                                                                                                                                                  v16->_dlSpatialMitigated = v399;
                                                                                                                                                                                                                  if (v399)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                    OUTLINED_FUNCTION_0_26();
                                                                                                                                                                                                                    v404 = createSingleTextureFromYuvBuffer(v400, v401, v402, v403);
                                                                                                                                                                                                                    dlSpatialMitigatedTexture = v16->_dlSpatialMitigatedTexture;
                                                                                                                                                                                                                    v16->_dlSpatialMitigatedTexture = v404;

                                                                                                                                                                                                                    if (v16->_dlSpatialMitigatedTexture)
                                                                                                                                                                                                                    {
                                                                                                                                                                                                                      v406 = OUTLINED_FUNCTION_18_1();
                                                                                                                                                                                                                      v408 = OUTLINED_FUNCTION_14_1(v406, v407);
                                                                                                                                                                                                                      v16->_dlSpaInput = v408;
                                                                                                                                                                                                                      if (v408)
                                                                                                                                                                                                                      {
                                                                                                                                                                                                                        OUTLINED_FUNCTION_0_26();
                                                                                                                                                                                                                        v413 = createSingleTextureFromYuvBuffer(v409, v410, v411, v412);
                                                                                                                                                                                                                        dlSpaInputTexture = v16->_dlSpaInputTexture;
                                                                                                                                                                                                                        v16->_dlSpaInputTexture = v413;

                                                                                                                                                                                                                        if (v16->_dlSpaInputTexture)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                          v415 = OUTLINED_FUNCTION_18_1();
                                                                                                                                                                                                                          v417 = OUTLINED_FUNCTION_12_2(v415, v416);
                                                                                                                                                                                                                          v16->_dlSpaRepairMask = v417;
                                                                                                                                                                                                                          if (v417)
                                                                                                                                                                                                                          {
                                                                                                                                                                                                                            OUTLINED_FUNCTION_4_9();
                                                                                                                                                                                                                            v421 = createTextureFromCVPixelBuffer(v418, v419, v420);
                                                                                                                                                                                                                            dlSpaRepairMaskTexture = v16->_dlSpaRepairMaskTexture;
                                                                                                                                                                                                                            v16->_dlSpaRepairMaskTexture = v421;

                                                                                                                                                                                                                            if (v16->_dlSpaRepairMaskTexture)
                                                                                                                                                                                                                            {
                                                                                                                                                                                                                              v423 = OUTLINED_FUNCTION_18_1();
                                                                                                                                                                                                                              v425 = OUTLINED_FUNCTION_12_2(v423, v424);
                                                                                                                                                                                                                              v16->_dlSpaBlendMask = v425;
                                                                                                                                                                                                                              if (v425)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                OUTLINED_FUNCTION_4_9();
                                                                                                                                                                                                                                v429 = createTextureFromCVPixelBuffer(v426, v427, v428);
                                                                                                                                                                                                                                dlSpaBlendMaskTexture = v16->_dlSpaBlendMaskTexture;
                                                                                                                                                                                                                                v16->_dlSpaBlendMaskTexture = v429;

                                                                                                                                                                                                                                if (v16->_dlSpaBlendMaskTexture)
                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                  v431 = OUTLINED_FUNCTION_1_26();
                                                                                                                                                                                                                                  v16->_warpedHwLsMask4Track = v431;
                                                                                                                                                                                                                                  if (v431)
                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                    OUTLINED_FUNCTION_4_9();
                                                                                                                                                                                                                                    v435 = createTextureFromCVPixelBuffer(v432, v433, v434);
                                                                                                                                                                                                                                    warpedHwLsMask4TrackTexture = v16->_warpedHwLsMask4TrackTexture;
                                                                                                                                                                                                                                    v16->_warpedHwLsMask4TrackTexture = v435;

                                                                                                                                                                                                                                    if (v16->_warpedHwLsMask4TrackTexture)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                      v437 = OUTLINED_FUNCTION_1_26();
                                                                                                                                                                                                                                      v16->_errRescaleProbMap0 = v437;
                                                                                                                                                                                                                                      if (v437)
                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                        OUTLINED_FUNCTION_4_9();
                                                                                                                                                                                                                                        v441 = createTextureFromCVPixelBuffer(v438, v439, v440);
                                                                                                                                                                                                                                        errRescaleProbMap0Texture = v16->_errRescaleProbMap0Texture;
                                                                                                                                                                                                                                        v16->_errRescaleProbMap0Texture = v441;

                                                                                                                                                                                                                                        if (v16->_errRescaleProbMap0Texture)
                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                          v443 = OUTLINED_FUNCTION_1_26();
                                                                                                                                                                                                                                          v16->_errRescaleProbMap1 = v443;
                                                                                                                                                                                                                                          if (v443)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                            OUTLINED_FUNCTION_4_9();
                                                                                                                                                                                                                                            v447 = createTextureFromCVPixelBuffer(v444, v445, v446);
                                                                                                                                                                                                                                            errRescaleProbMap1Texture = v16->_errRescaleProbMap1Texture;
                                                                                                                                                                                                                                            v16->_errRescaleProbMap1Texture = v447;

                                                                                                                                                                                                                                            if (v16->_errRescaleProbMap1Texture)
                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                              getDevice3 = [(GGMMetalToolBox *)v16->_metalToolBox getDevice];
                                                                                                                                                                                                                                              v451 = OUTLINED_FUNCTION_9_5(getDevice3, v450);
                                                                                                                                                                                                                                              currMetaTmp = v16->_currMetaTmp;
                                                                                                                                                                                                                                              v16->_currMetaTmp = v451;

                                                                                                                                                                                                                                              if (v16->_currMetaTmp)
                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                getDevice4 = [(GGMMetalToolBox *)v16->_metalToolBox getDevice];
                                                                                                                                                                                                                                                v455 = OUTLINED_FUNCTION_9_5(getDevice4, v454);
                                                                                                                                                                                                                                                futureMetaTmp = v16->_futureMetaTmp;
                                                                                                                                                                                                                                                v16->_futureMetaTmp = v455;

                                                                                                                                                                                                                                                if (v16->_futureMetaTmp)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                  getDevice5 = [(GGMMetalToolBox *)v16->_metalToolBox getDevice];
                                                                                                                                                                                                                                                  v459 = OUTLINED_FUNCTION_9_5(getDevice5, v458);
                                                                                                                                                                                                                                                  futureMeta4LsCheck = v16->_futureMeta4LsCheck;
                                                                                                                                                                                                                                                  v16->_futureMeta4LsCheck = v459;

                                                                                                                                                                                                                                                  if (v16->_futureMeta4LsCheck)
                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                    getDevice6 = [(GGMMetalToolBox *)v16->_metalToolBox getDevice];
                                                                                                                                                                                                                                                    v463 = OUTLINED_FUNCTION_9_5(getDevice6, v462);
                                                                                                                                                                                                                                                    futureMeta4RedoTracking = v16->_futureMeta4RedoTracking;
                                                                                                                                                                                                                                                    v16->_futureMeta4RedoTracking = v463;

                                                                                                                                                                                                                                                    if (v16->_futureMeta4RedoTracking)
                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                      v465 = OUTLINED_FUNCTION_1_26();
                                                                                                                                                                                                                                                      v16->_probMap4RoiGen = v465;
                                                                                                                                                                                                                                                      if (v465)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                        OUTLINED_FUNCTION_4_9();
                                                                                                                                                                                                                                                        v469 = createTextureFromCVPixelBuffer(v466, v467, v468);
                                                                                                                                                                                                                                                        probMap4RoiGenTexture = v16->_probMap4RoiGenTexture;
                                                                                                                                                                                                                                                        v16->_probMap4RoiGenTexture = v469;

                                                                                                                                                                                                                                                        if (v16->_probMap4RoiGenTexture)
                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                          v471 = OUTLINED_FUNCTION_1_26();
                                                                                                                                                                                                                                                          v16->_lsMap4RoiGen = v471;
                                                                                                                                                                                                                                                          if (v471)
                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                            OUTLINED_FUNCTION_4_9();
                                                                                                                                                                                                                                                            v475 = createTextureFromCVPixelBuffer(v472, v473, v474);
                                                                                                                                                                                                                                                            lsMap4RoiGenTexture = v16->_lsMap4RoiGenTexture;
                                                                                                                                                                                                                                                            v16->_lsMap4RoiGenTexture = v475;

                                                                                                                                                                                                                                                            if (v16->_lsMap4RoiGenTexture)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                              v477 = [OUTLINED_FUNCTION_19_0() createForwarpOutputBufferWidth:? height:? channels:?];
                                                                                                                                                                                                                                                              forwarpOutputBuffer0 = v16->_forwarpOutputBuffer0;
                                                                                                                                                                                                                                                              v16->_forwarpOutputBuffer0 = v477;

                                                                                                                                                                                                                                                              if (v16->_forwarpOutputBuffer0)
                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                v479 = [OUTLINED_FUNCTION_19_0() createForwarpOutputBufferWidth:? height:? channels:?];
                                                                                                                                                                                                                                                                forwarpOutputBuffer1 = v16->_forwarpOutputBuffer1;
                                                                                                                                                                                                                                                                v16->_forwarpOutputBuffer1 = v479;

                                                                                                                                                                                                                                                                if (v16->_forwarpOutputBuffer1)
                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                  v481 = 640;
                                                                                                                                                                                                                                                                  while (1)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                    v482 = OUTLINED_FUNCTION_1_26();
                                                                                                                                                                                                                                                                    *(&v16->super.isa + v481) = v482;
                                                                                                                                                                                                                                                                    if (!v482)
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    OUTLINED_FUNCTION_4_9();
                                                                                                                                                                                                                                                                    v486 = createTextureFromCVPixelBuffer(v483, v484, v485);
                                                                                                                                                                                                                                                                    v487 = *(&v16->_detectionUtils + v481);
                                                                                                                                                                                                                                                                    *(&v16->_detectionUtils + v481) = v486;

                                                                                                                                                                                                                                                                    if (!*(&v16->_detectionUtils + v481))
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    v488 = OUTLINED_FUNCTION_1_26();
                                                                                                                                                                                                                                                                    *(&v16->_mitigationANE + v481) = v488;
                                                                                                                                                                                                                                                                    if (!v488)
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    OUTLINED_FUNCTION_4_9();
                                                                                                                                                                                                                                                                    v492 = createTextureFromCVPixelBuffer(v489, v490, v491);
                                                                                                                                                                                                                                                                    v493 = *(&v16->_frameTMinus2 + v481);
                                                                                                                                                                                                                                                                    *(&v16->_frameTMinus2 + v481) = v492;

                                                                                                                                                                                                                                                                    if (!*(&v16->_frameTMinus2 + v481))
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    v494 = OUTLINED_FUNCTION_1_26();
                                                                                                                                                                                                                                                                    (&v16->_stashedFutureGhostRois0)[v481 / 8] = v494;
                                                                                                                                                                                                                                                                    if (!v494)
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    OUTLINED_FUNCTION_4_9();
                                                                                                                                                                                                                                                                    v498 = createTextureFromCVPixelBuffer(v495, v496, v497);
                                                                                                                                                                                                                                                                    v499 = *(&v16->_frameTMinus1Texture + v481);
                                                                                                                                                                                                                                                                    *(&v16->_frameTMinus1Texture + v481) = v498;

                                                                                                                                                                                                                                                                    if (!*(&v16->_frameTMinus1Texture + v481))
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                    }

                                                                                                                                                                                                                                                                    v481 += 8;
                                                                                                                                                                                                                                                                    if (v481 == 664)
                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                      v16;
                                                                                                                                                                                                                                                                      goto LABEL_147;
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

                          goto LABEL_147;
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

LABEL_147:

  OUTLINED_FUNCTION_20_0();
  return result;
}

- (int64_t)getMvfToNextFrameForTrackingCurrMeta:(VideoDeghostingDetectionV2 *)self lsMap:(SEL)map futureLsMap:(id)lsMap lsMapBuf:(id)buf futureLsMapBuf:(id)mapBuf opticalCenter:(__CVBuffer *)center futureOpticalCenter:(__CVBuffer *)opticalCenter waitForComplete:(BOOL)complete
{
  completeCopy = complete;
  v11 = v9;
  v12 = v8;
  lsMapCopy = lsMap;
  bufCopy = buf;
  mapBufCopy = mapBuf;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"detection"];
  computeCommandEncoder = [commandBuffer computeCommandEncoder];
  contents = [lsMapCopy contents];
  metalToolBox = self->_metalToolBox;
  inputTexture = self->_inputTexture;
  if (*(contents + 8232) == 1)
  {
    frameTPlus1Texture = self->_frameTPlus1Texture;
    width = [(MTLTexture *)self->_inputTexture width];
    height = [(MTLTexture *)self->_inputTexture height];
    v26.f32[0] = width;
    v26.f32[1] = height;
    v27 = COERCE_DOUBLE(vdiv_f32(*&v12, v26));
    width2 = [(MTLTexture *)self->_inputTexture width];
    height2 = [(MTLTexture *)self->_inputTexture height];
    v29.f32[0] = width2;
    v29.f32[1] = height2;
    v30 = [(GGMMetalToolBox *)metalToolBox encodeBMSearch1RefToCommandEncoder:computeCommandEncoder target:inputTexture ref:frameTPlus1Texture reflect:1 normalizedTargetCenter:self->_mvf4FutureTexture normalizedRefCenter:lsMapCopy bestMatchLoc:v27 meta:COERCE_DOUBLE(vdiv_f32(*&v11, v29))];
    if (v30)
    {
      v31 = v30;
      goto LABEL_7;
    }

    v31 = [(GGMMetalToolBox *)self->_metalToolBox encodeCollectMvToFuture:computeCommandEncoder metaBuf:lsMapCopy];
    if (v31)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v31 = [(GGMMetalToolBox *)self->_metalToolBox encodeGetMvFromLsToCommandEncoder:computeCommandEncoder target:self->_inputTexture lsMap:bufCopy refLsMap:mapBufCopy targetCenter:lsMapCopy refCenter:v12 meta:v11];
  }

  [computeCommandEncoder endEncoding];
  commitCommandBuffer(commandBuffer, completeCopy);
LABEL_7:

  return v31;
}

- (int64_t)doTrackingToNextFrameCurrMetaWithDetectionResults:(VideoDeghostingDetectionV2 *)self currMetaWithMvToFuture:(SEL)future futureMeta:(id)meta opticalCenter:(id)center futureOpticalCenter:(id)opticalCenter futureFrameCnt:(int)cnt doLite:(BOOL)lite waitForComplete:(BOOL)complete
{
  completeCopy = complete;
  liteCopy = lite;
  cntCopy = cnt;
  v13 = v9;
  v14 = v8;
  centerCopy = center;
  opticalCenterCopy = opticalCenter;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v20 = commandBuffer;
  if (liteCopy)
  {
    if (commandBuffer)
    {
      [commandBuffer setLabel:@"detection"];
      computeCommandEncoder = [v20 computeCommandEncoder];
      if (computeCommandEncoder)
      {
        v22 = [(GGMMetalToolBox *)self->_metalToolBox encodeWarpRefMetaLite:computeCommandEncoder refMetaBuf:centerCopy outMetaBuf:opticalCenterCopy];
        if (!v22)
        {
          [computeCommandEncoder endEncoding];
          commitCommandBuffer(v20, completeCopy);
        }

        goto LABEL_6;
      }

      goto LABEL_22;
    }

LABEL_21:
    v22 = 6;
    goto LABEL_19;
  }

  if (!commandBuffer)
  {
    goto LABEL_21;
  }

  [commandBuffer setLabel:@"detection"];
  computeCommandEncoder = [v20 computeCommandEncoder];
  if (!computeCommandEncoder)
  {
LABEL_22:
    v22 = 6;
    goto LABEL_6;
  }

  LOBYTE(v31) = self->_currSegmentProcessedFrameCnt == 0;
  v23 = [(GGMMetalToolBox *)self->_metalToolBox encodeWarpRefMeta:computeCommandEncoder refMetaBuf:centerCopy metaBuf:self->_futureMetaTmp outMetaBuf:opticalCenterCopy lsCheckOutmetaBuf:self->_futureMeta4LsCheck redoTrackingOutmetaBuf:self->_futureMeta4RedoTracking capRefMetaCnt:v31];
  if (v23)
  {
    goto LABEL_20;
  }

  v24 = 368;
  if ((cntCopy & 1) == 0)
  {
    v24 = 384;
  }

  v23 = [(GGMMetalToolBox *)self->_metalToolBox encodeBMTransferGrayToCommandEncoder:computeCommandEncoder ref:*(&self->super.isa + v24) warpedRef:self->_warpedHwLsMask4TrackTexture bestMatchLoc:self->_mvf4FutureTexture meta:self->_futureMeta4LsCheck sf:2];
  if (v23)
  {
    goto LABEL_20;
  }

  metalToolBox = self->_metalToolBox;
  inputTexture = self->_inputTexture;
  width = [(MTLTexture *)inputTexture width];
  height = [(MTLTexture *)self->_inputTexture height];
  v28.f32[0] = width;
  v28.f32[1] = height;
  LODWORD(v32) = 1;
  v23 = [(GGMMetalToolBox *)metalToolBox encodeBMTransferYUVToCommandEncoder:computeCommandEncoder ref:inputTexture reflect:1 normalizedCenter:self->_warpedReflTrackingRefTexture warpedRef:self->_mvf4FutureTexture bestMatchLoc:self->_futureMeta4LsCheck meta:COERCE_DOUBLE(vdiv_f32(v14 sf:v28)), v32];
  if (v23)
  {
    goto LABEL_20;
  }

  v29 = 384;
  if ((cntCopy & 1) == 0)
  {
    v29 = 368;
  }

  v23 = [(GGMMetalToolBox *)self->_metalToolBox encodeRefineFutureHwLsMapWithTrackingToEncoder:computeCommandEncoder reflHwMap:*(&self->super.isa + v29) target:self->_frameTPlus1Texture opticalCenter:self->_warpedHwLsMask4TrackTexture warpedRefReflHwMap:self->_warpedReflTrackingRefTexture warpedReflRef:self->_futureMeta4LsCheck metaBuf:v13];
  if (v23)
  {
LABEL_20:
    v22 = v23;
  }

  else
  {
    v22 = [(GGMMetalToolBox *)self->_metalToolBox encodeCollectMetaContainers:computeCommandEncoder metaBuf:opticalCenterCopy lsCheckOutmetaBuf:self->_futureMeta4LsCheck redoTrackingOutmetaBuf:self->_futureMeta4RedoTracking currTrackId:self->_LSTrackID];
    if (!v22)
    {
      [computeCommandEncoder endEncoding];

      commitCommandBuffer(v20, completeCopy);
      goto LABEL_19;
    }
  }

LABEL_6:

LABEL_19:
  return v22;
}

- (int64_t)dlSpatialRepairYUV:(__CVBuffer *)v output:(__CVBuffer *)output repairMask:(__CVBuffer *)mask blendMask:(__CVBuffer *)blendMask inputTex:(id)tex repairMaskTex:(id)maskTex blendMaskTex:(id)blendMaskTex wRepairedY:(float)self0 wRepairedUV:(float)self1 metaBuf:(id)self2
{
  texCopy = tex;
  maskTexCopy = maskTex;
  blendMaskTexCopy = blendMaskTex;
  bufCopy = buf;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v22 = commandBuffer;
  if (commandBuffer)
  {
    [commandBuffer setLabel:@"detection"];
    computeCommandEncoder = [v22 computeCommandEncoder];
    v24 = [(GGMMetalToolBox *)self->_metalToolBox encodeBilinearRescaleYUV:computeCommandEncoder fullResInput:texCopy input:texCopy meta:bufCopy blurBeforeSample:1 output:self->_dlSpaInputTexture];
    if (!v24)
    {
      [computeCommandEncoder endEncoding];
      metalToolBox = self->_metalToolBox;
      width = [(MTLTexture *)self->_dlSpaRepairMaskTexture width];
      v27 = width / [maskTexCopy width];
      height = [(MTLTexture *)self->_dlSpaRepairMaskTexture height];
      *&v29 = height / [maskTexCopy height];
      *&v30 = v27;
      v24 = [(GGMMetalToolBox *)metalToolBox resizeImageCmdBuf:v22 inputTexture:maskTexCopy withFactorX:self->_dlSpaRepairMaskTexture withFactorY:v30 outputTexture:v29];
      if (!v24)
      {
        v31 = self->_metalToolBox;
        width2 = [(MTLTexture *)self->_dlSpaBlendMaskTexture width];
        v33 = width2 / [blendMaskTexCopy width];
        height2 = [(MTLTexture *)self->_dlSpaBlendMaskTexture height];
        *&v35 = height2 / [blendMaskTexCopy height];
        *&v36 = v33;
        v24 = [(GGMMetalToolBox *)v31 resizeImageCmdBuf:v22 inputTexture:blendMaskTexCopy withFactorX:self->_dlSpaBlendMaskTexture withFactorY:v36 outputTexture:v35];
        if (!v24)
        {
          commitCommandBuffer(v22, 0);
          *&v37 = y;
          *&v38 = uV;
          v24 = [(MitigationANE *)self->_mitigationANE process:self->_dlSpaInput outputBuf:output roi:self->_dlSpaRepairMask repairMask:self->_dlSpaBlendMask blendMask:0.0 wRepairedY:0.0 wRepairedUV:480.0, 272.0, v37, v38];
        }
      }
    }

    v39 = v24;
  }

  else
  {
    v39 = 6;
  }

  return v39;
}

- (int64_t)getFlowTarget:(id)target ref:(id)ref targetBuf:(__CVBuffer *)buf refBuf:(__CVBuffer *)refBuf mvf:(__CVBuffer *)mvf backwardMvf:(__CVBuffer *)backwardMvf metaBuf:(id)metaBuf skipRescaling:(BOOL)self0
{
  OUTLINED_FUNCTION_21_1();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = v19;
  v25 = v36;
  if (v37)
  {
    v26 = *(v21 + 1416);
    v27 = v17;
    v28 = v15;
  }

  else
  {
    commandBuffer = [*(v21 + 16) commandBuffer];
    if (!commandBuffer)
    {
      goto LABEL_11;
    }

    v30 = commandBuffer;
    [commandBuffer setLabel:@"detection"];
    computeCommandEncoder = [v30 computeCommandEncoder];
    if (!computeCommandEncoder || [*(v21 + 32) encodeBilinearRescale2ImgsYUV:computeCommandEncoder fullResInput:*(v21 + 112) input0:v23 output0:*(v21 + 984) input1:v24 output1:*(v21 + 1000) meta:?])
    {

      goto LABEL_11;
    }

    [computeCommandEncoder endEncoding];
    commitCommandBuffer(v30, 0);

    v26 = *(v21 + 1416);
    v27 = *(v21 + 976);
    v28 = *(v21 + 992);
  }

  [v26 preProcessFirstInput:v27 secondInput:v28 waitForCompletion:0];
  v32 = CVPixelBufferRetain([*(v21 + 1416) normalizedFirst]);
  v33 = CVPixelBufferRetain([*(v21 + 1416) normalizedSecond]);
  v34 = *(v21 + 1408);
  if (v11)
  {
    [v34 opticalFlowFirstFrame:v32 secondFrame:v33 flowForward:v13 flowBackward:v11];
  }

  else
  {
    [v34 opticalFlowFirstFrame:v32 secondFrame:v33 flow:v13];
  }

  CVPixelBufferRelease(v33);
  CVPixelBufferRelease(v32);
LABEL_11:

  OUTLINED_FUNCTION_20_0();
  return result;
}

- (int64_t)processHwLsMaskNormalizedCenter:(id)center input:(id)input output:(BOOL)output waitForComplete:
{
  outputCopy = output;
  v8 = v5;
  centerCopy = center;
  inputCopy = input;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v13 = commandBuffer;
  if (commandBuffer)
  {
    [commandBuffer setLabel:@"detection"];
    computeCommandEncoder = [v13 computeCommandEncoder];
    if (computeCommandEncoder)
    {
      v15 = [(GGMMetalToolBox *)self->_metalToolBox encodeUpscaleThenReflectLsMap:computeCommandEncoder input:centerCopy normalizedCenter:inputCopy output:v8];
      if (!v15)
      {
        [computeCommandEncoder endEncoding];
        commitCommandBuffer(v13, outputCopy);
      }
    }

    else
    {
      v15 = 6;
    }
  }

  else
  {
    v15 = 6;
  }

  return v15;
}

- (int64_t)processHwLsMaskAndGetRoisOpticalCenter:(id)center inputFrame:(id *)frame prevMetaContainer:considerDist2PrevGhostWhenSort:outputMask:outputMaskTexture:isLowLight:outputArray:
{
  v8 = v6;
  v9 = v5;
  v10 = v4;
  v12 = v7;
  v92 = *MEMORY[0x277D85DE8];
  centerCopy = center;
  v15 = v9;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  if (commandBuffer)
  {
    [*v93 removeAllObjects];
    [commandBuffer setLabel:@"detection"];
    computeCommandEncoder = [commandBuffer computeCommandEncoder];
    if (computeCommandEncoder)
    {
      v18 = [(GGMMetalToolBox *)self->_metalToolBox encodeGetLsMapYUVToCommandEncoder:computeCommandEncoder input:centerCopy map:v15];
      if (v18 || (v18 = [(GGMMetalToolBox *)self->_metalToolBox encodeCopyFullFrameMapToMap4RoiGenToCommandEncoder:computeCommandEncoder input:v15 output:self->_lsMap4RoiGenTexture]) != 0)
      {
        v73 = v18;
      }

      else
      {
        v84 = v8;
        v79 = computeCommandEncoder;
        [computeCommandEncoder endEncoding];
        commitCommandBuffer(commandBuffer, 1);
        maskToRoi = self->_maskToRoi;
        lsMap4RoiGen = self->_lsMap4RoiGen;
        width = [centerCopy width];
        height = [centerCopy height];
        v23.i64[0] = 0;
        v23.i64[1] = __PAIR64__(height, width);
        v24 = vsraq_n_u32(v23, v23, 0x1FuLL);
        *&v25 = vshrq_n_s32(v24, 1uLL).u64[0];
        v24.i32[0] = 1132396544;
        LODWORD(v26) = 4.0;
        v27 = [(MaskToRoi *)maskToRoi getBBoxesUsingGraphTraversalFrom:lsMap4RoiGen pixValThreshold:2 bboxSizeThreshold:0 scaleFactor:v93 roi:*v24.i64 returnAsDetectedROI:v26 outputArray:v25];
        if (v27)
        {
          v73 = v27;
        }

        else
        {
          frameCopy = frame;
          v76 = commandBuffer;
          v77 = v15;
          v78 = centerCopy;
          v89 = 0u;
          v90 = 0u;
          v87 = 0u;
          v88 = 0u;
          v28 = *v93;
          v29 = [v28 countByEnumeratingWithState:&v87 objects:v91 count:16];
          if (v29)
          {
            v30 = v29;
            v31 = *v88;
            do
            {
              for (i = 0; i != v30; ++i)
              {
                if (*v88 != v31)
                {
                  objc_enumerationMutation(v28);
                }

                v33 = *(*(&v87 + 1) + 8 * i);
                [v33 bbox];
                [v33 setBbox:?];
                v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%d", self->_LSTrackID];
                [v33 setLSTrackID:v34];
              }

              v30 = [v28 countByEnumeratingWithState:&v87 objects:v91 count:16];
            }

            while (v30);
          }

          if ((v84 & 1) == 0)
          {
            mergeBboxesForMitigation(*v93);
          }

          commandBuffer = v76;
          v15 = v77;
          if ([*v93 count])
          {
            v35 = 0;
            __asm { FMOV            V1.2S, #-20.0 }

            v41 = vmaxnm_f32(vdiv_f32(vadd_f32(vabs_f32(vadd_f32(*&v12, 0xC4070000C4700000)), _D1), vdup_n_s32(0x42700000u)), 0);
            __asm { FMOV            V1.2S, #1.0 }

            v80 = vminnm_f32(v41, _D1);
            do
            {
              v43 = [*v93 objectAtIndexedSubscript:v35];
              [v43 reflectAroundCenter:v12];
              [v43 bbox];
              v85 = v44;
              [v43 bbox];
              v81 = v45;
              [v43 bbox];
              v83 = v46;
              [v43 bbox];
              v48.i32[0] = vextq_s8(v81, v81, 8uLL).u32[0];
              v48.i32[1] = vextq_s8(v47, v47, 8uLL).i32[1];
              v86 = vmla_f32(__PAIR64__(v83, v85), 0x3F0000003F000000, v48);
              *v47.i8 = vsub_f32(*&v12, v86);
              v50 = vmul_f32(*v47.i8, *v47.i8);
              v49 = sqrtf(vaddv_f32(v50));
              *v50.i32 = fminf(fmaxf((v49 + -480.0) / 480.0, 0.0), 1.0);
              v51 = fminf(fmaxf(self->_filteredOpticalCenterShift * 0.5, 0.0), 1.0);
              if (*v50.i32 >= v51)
              {
                *v50.i32 = v51;
              }

              v52 = vmul_f32(vminnm_f32(vdup_lane_s32(v50, 0), v80), 0x4200000042000000);
              *v53.f32 = vneg_f32(v52);
              *&v53.u32[2] = vadd_f32(v52, v52);
              v82 = v53;
              [v43 bbox];
              [v43 setBbox:{*vaddq_f32(v54, v82).i64}];
              [v43 setTrackedCnt:30];
              if (v10)
              {
                var0 = frameCopy->var0;
                if (var0 >= 1)
                {
                  v56 = 64.0;
                  v57 = &frameCopy[3].var11[236];
                  v58 = &frameCopy->var9[1];
                  while (1)
                  {
                    if (v57[512] >= 0x10 && *v57 <= 1)
                    {
                      v59 = vsub_f32(vabd_f32(v86, v58[-1]), *v58);
                      v60 = v59.f32[1];
                      if (v59.f32[0] >= v59.f32[1])
                      {
                        v60 = v59.f32[0];
                      }

                      v61 = vaddv_f32(v59);
                      v62 = vcgtz_f32(v59);
                      if (vpmin_u32(v62, v62).i32[0] >= 0)
                      {
                        v63 = v60;
                      }

                      else
                      {
                        v63 = v61;
                      }

                      if (v63 < v56)
                      {
                        v56 = v63;
                      }

                      if (v63 <= 0.0)
                      {
                        break;
                      }
                    }

                    v58 += 4;
                    ++v57;
                    if (!--var0)
                    {
                      goto LABEL_37;
                    }
                  }

                  v56 = 0.0;
                  goto LABEL_37;
                }

                *&v64 = 64.0;
              }

              else
              {
                *&v64 = INFINITY;
              }

              v56 = *&v64;
LABEL_37:
              [v43 bbox];
              v66 = v65;
              [v43 bbox];
              *&v68 = v67;
              if (v66 >= v67)
              {
                *&v68 = v66;
              }

              *&v68 = fmaxf(v56 + (*&v68 * -0.5), 0.0);
              [v43 setDist2ghost:v68];
              [v43 bbox];
              v70 = v69;
              [v43 bbox];
              v71.f32[0] = vmuls_lane_f32(v70, v71, 3);
              [v43 setArea:*v71.i64];
              *&v72 = v49;
              [v43 setDist2opticalCenter:v72];

              ++v35;
            }

            while ([*v93 count] > v35);
          }

          [(VideoDeghostingDetectionV2 *)self sortLsList:*v93];
          *v93 = v73 = 0;
          centerCopy = v78;
        }

        computeCommandEncoder = v79;
      }
    }

    else
    {
      v73 = 6;
    }
  }

  else
  {
    v73 = 6;
  }

  return v73;
}

- (int64_t)warpTrackingRefProbMap:(id)map refSpaProbMap:(id)probMap refReflLs:(id)ls mvf:(id)mvf metaBuf:(id)buf metaBufArray:(id *)array waitForComplete:(BOOL)complete
{
  OUTLINED_FUNCTION_21_1();
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v34 = v19;
  v20 = v16;
  v21 = v14;
  v22 = v12;
  commandBuffer = [*(v18 + 16) commandBuffer];
  v24 = commandBuffer;
  if (commandBuffer)
  {
    [commandBuffer setLabel:@"detection"];
    if (*(v10 + 2048) < 1)
    {
LABEL_9:
      commitCommandBuffer(v24, v35);
    }

    else
    {
      v25 = 0;
      while (1)
      {
        computeCommandEncoder = [v24 computeCommandEncoder];
        v27 = *(v10 + 8 * v25);
        if (OUTLINED_FUNCTION_17_1(*(v18 + 32), v28, computeCommandEncoder, v34, *(v18 + 488)))
        {
          break;
        }

        if (OUTLINED_FUNCTION_17_1(*(v18 + 32), v29, computeCommandEncoder, v20, *(v18 + 504)))
        {
          break;
        }

        LODWORD(v30) = 4.0;
        LODWORD(v31) = 4.0;
        if ([*(v18 + 32) encodeDilateProbMap:computeCommandEncoder input:*(v18 + 488) output:*(v18 + 472) hardDilationRadius:v27 softDilationRadius:v30 meta:v31] || OUTLINED_FUNCTION_17_1(*(v18 + 32), v32, computeCommandEncoder, v21, *(v18 + 520)))
        {
          break;
        }

        [computeCommandEncoder endEncoding];

        if (++v25 >= *(v10 + 2048))
        {
          goto LABEL_9;
        }
      }
    }
  }

  OUTLINED_FUNCTION_20_0();
  return result;
}

- (int64_t)_getProbMapsLiteTarget:(id)target refProbMap:(id)map refLsMap:(id)lsMap refRefinedLsMap:(id)refinedLsMap refProbMapStash4FutureTracking:(id)tracking refErrRescaleProbMap:(id)probMap refRawRefinedProbMap:(id)refinedProbMap refRefinedProbMap:(id)self0 mvf:(id)self1 probMap:(id)self2 lsMap:(id)self3 refinedLsMap:(id)self4 probMapStash4FutureTracking:(id)self5 errRescaleProbMap:(id)self6 rawRefinedProbMap:(id)self7 refinedProbMap:(id)self8 metaBufArray:(id *)self9 waitForComplete:(BOOL)complete
{
  mapCopy = map;
  lsMapCopy = lsMap;
  refinedLsMapCopy = refinedLsMap;
  trackingCopy = tracking;
  probMapCopy = probMap;
  refinedProbMapCopy = refinedProbMap;
  refRefinedProbMapCopy = refRefinedProbMap;
  mvfCopy = mvf;
  v26 = a12;
  v67 = a13;
  v65 = a14;
  futureTrackingCopy = futureTracking;
  rescaleProbMapCopy = rescaleProbMap;
  rawRefinedProbMapCopy = rawRefinedProbMap;
  v59 = a18;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v28 = commandBuffer;
  if (commandBuffer)
  {
    [commandBuffer setLabel:@"detection"];
    if (array->var1 < 1)
    {
LABEL_14:
      commitCommandBuffer(v28, complete);
      v55 = 0;
    }

    else
    {
      v29 = 0;
      while (1)
      {
        computeCommandEncoder = [v28 computeCommandEncoder];
        v31 = array->var0[v29];
        contents = [v31 contents];
        v33 = OUTLINED_FUNCTION_13_1();
        v36 = OUTLINED_FUNCTION_7_6(v33, v34, v35, mapCopy, v26);
        if (v36)
        {
          break;
        }

        v37 = OUTLINED_FUNCTION_13_1();
        v36 = OUTLINED_FUNCTION_7_6(v37, v38, v39, lsMapCopy, v67);
        if (v36)
        {
          break;
        }

        v40 = OUTLINED_FUNCTION_13_1();
        v36 = OUTLINED_FUNCTION_7_6(v40, v41, v42, refinedLsMapCopy, v65);
        if (v36)
        {
          break;
        }

        v43 = OUTLINED_FUNCTION_13_1();
        v36 = OUTLINED_FUNCTION_7_6(v43, v44, v45, trackingCopy, futureTrackingCopy);
        if (v36)
        {
          break;
        }

        v46 = OUTLINED_FUNCTION_13_1();
        v36 = OUTLINED_FUNCTION_7_6(v46, v47, v48, refinedProbMapCopy, rawRefinedProbMapCopy);
        if (v36)
        {
          break;
        }

        v49 = OUTLINED_FUNCTION_13_1();
        v36 = OUTLINED_FUNCTION_7_6(v49, v50, v51, refRefinedProbMapCopy, v59);
        if (v36)
        {
          break;
        }

        v52 = OUTLINED_FUNCTION_13_1();
        v36 = OUTLINED_FUNCTION_7_6(v52, v53, v54, probMapCopy, rescaleProbMapCopy);
        if (v36)
        {
          break;
        }

        if ((*(contents + 8232) & 1) == 0)
        {
          v36 = [(GGMMetalToolBox *)self->_metalToolBox encodeCopyMapToMap4RoiGenToCommandEncoder:computeCommandEncoder input:v26 output:self->_probMap4RoiGenTexture metaBuf:v31];
          if (v36)
          {
            break;
          }
        }

        [computeCommandEncoder endEncoding];

        if (++v29 >= array->var1)
        {
          goto LABEL_14;
        }
      }

      v55 = v36;
    }
  }

  else
  {
    v55 = 6;
  }

  return v55;
}

- (int64_t)getProbMapsTarget:(VideoDeghostingDetectionV2 *)self ref:(SEL)ref rawProbMap:(id)map probMap:(id)probMap errRescaleProbMap:(id)rescaleProbMap rawRefinedProbMap:(id)refinedProbMap refinedProbMap:(id)a7 reflLsMap:(id)lsMap refinedReflLsMap:(id)reflLsMap reflLsMap4TrackingRef:(id)self0 metaBuf:(id)self1 metaBufArray:(id)self2 trackingMvf:(id)self3 useRefProbMap:(id *)self4 opticalCenter:(id)self5 trackingRefOpticalCenter:(BOOL)self6 waitForComplete:(BOOL)self7
{
  v24 = v18;
  v25 = v17;
  mapCopy = map;
  probMapCopy = probMap;
  rescaleProbMapCopy = rescaleProbMap;
  refinedProbMapCopy = refinedProbMap;
  v63 = a7;
  lsMapCopy = lsMap;
  reflLsMapCopy = reflLsMap;
  trackingRefCopy = trackingRef;
  bufCopy = buf;
  arrayCopy = array;
  mvfCopy = mvf;
  centerCopy = center;
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v33 = commandBuffer;
  if (commandBuffer)
  {
    refProbMapCopy2 = refProbMap;
    [commandBuffer setLabel:@"detection"];
    v62 = mvfCopy;
    if (refProbMap->var1 < 1)
    {
LABEL_32:
      computeCommandEncoder = [v33 computeCommandEncoder];
      v49 = [(GGMMetalToolBox *)self->_metalToolBox encodeCopyCurrMetaForProcFuture:computeCommandEncoder metaBuf:mvfCopy outMetaBuf:self->_currMetaTmp];
      if (!v49)
      {
        [computeCommandEncoder endEncoding];
        mvfCopy = v62;
        commitCommandBuffer(v33, complete);
      }
    }

    else
    {
      v35 = 0;
      if (opticalCenter)
      {
        v36 = 0.99;
      }

      else
      {
        v36 = 0.0;
      }

      v61 = v33;
      while (1)
      {
        computeCommandEncoder = [v33 computeCommandEncoder];
        v38 = refProbMapCopy2->var0[v35];
        contents = [v38 contents];
        OUTLINED_FUNCTION_15_1();
        v40 = [v39 encodeDilateReflLsMap:? inputYUV:? lsMap:? dilatedLsMap:? hardDilationRadius:? softDilationRadius:? meta:?];
        if (v40)
        {
          break;
        }

        LODWORD(v41) = 2.0;
        LODWORD(v42) = 2.0;
        v40 = [(GGMMetalToolBox *)self->_metalToolBox encodeDilateProbMap:computeCommandEncoder input:bufCopy output:self->_dilatedLsMapTexture hardDilationRadius:v38 softDilationRadius:v41 meta:v42];
        if (v40)
        {
          break;
        }

        OUTLINED_FUNCTION_15_1();
        v40 = [v43 encodeGetMvForMotionCueFromMvf:v25 fullResInput:v24 meta:? mvf:? opticalCenter:? refOpticalCenter:?];
        if (v40)
        {
          break;
        }

        v40 = [OUTLINED_FUNCTION_5_7() encodeCollectClusterMvForMotionCueToCommandEncoder:? clusterMetaBuf:? metaBuf:?];
        if (v40)
        {
          break;
        }

        LODWORD(v59) = self->_processedFrameCnt;
        OUTLINED_FUNCTION_15_1();
        v40 = [v44 encodePreprocessInputs4MotionCueYUVToCommandEncoder:v59 input:? ref:? output:? refOutput:? metaBuf:? processedFrameCount:?];
        if (v40)
        {
          break;
        }

        v40 = [(GGMMetalToolBox *)self->_metalToolBox encodeGetMotionMapYUVToCommandEncoder:computeCommandEncoder ref:self->_ref4MotionCueTexture target:self->_input4MotionCueTexture motionMap:self->_motionMapTexture meta:v38];
        if (v40)
        {
          break;
        }

        v45 = lsMapCopy;
        v46 = rescaleProbMapCopy;
        v47 = *(contents + 8232);
        v48 = [(GGMMetalToolBox *)self->_metalToolBox encodeGetRoiMaxAndAvgLumaYUV:computeCommandEncoder target:mapCopy lsMap:bufCopy meta:v38];
        v49 = v48;
        if (v47)
        {
          rescaleProbMapCopy = v46;
          lsMapCopy = v45;
          mvfCopy = v62;
          if (v48)
          {
            goto LABEL_37;
          }

          v40 = [OUTLINED_FUNCTION_5_7() encodeCollectClusterMaxAndAvgLuma:? clusterMetaBuf:? metaBuf:?];
          if (v40)
          {
            break;
          }

          OUTLINED_FUNCTION_15_1();
          v40 = [v50 encodeGetSaliencyMapToCommandEncoder:? target:? saliencyMap:? meta:?];
          if (v40)
          {
            break;
          }
        }

        else
        {
          rescaleProbMapCopy = v46;
          lsMapCopy = v45;
          mvfCopy = v62;
          if (v48)
          {
            goto LABEL_37;
          }

          v40 = [OUTLINED_FUNCTION_5_7() encodeCollectClusterMaxAndAvgLuma:? clusterMetaBuf:? metaBuf:?];
          if (v40)
          {
            break;
          }
        }

        OUTLINED_FUNCTION_15_1();
        v40 = [v51 encodeGetBlobSaliency:? inputYUV:? blobSaliencyMap:? meta:?];
        if (v40)
        {
          break;
        }

        rawProbMapTexture = self->_rawProbMapTexture;
        OUTLINED_FUNCTION_15_1();
        v40 = [v52 encodeGetGhostProbMapToCommandEncoder:rawProbMapTexture target:v38 reflLsMap:? motionMap:? saliencyMap:? isInitFrame:? probMap:? meta:?];
        if (v40)
        {
          break;
        }

        saliencyMapTexture = self->_saliencyMapTexture;
        if (*(contents + 8232) == 1)
        {
          saliencyMapTexture = self->_blobSaliencyMapTexture;
        }

        *&v53 = v36;
        v40 = [(GGMMetalToolBox *)self->_metalToolBox encodeCombineMapWithRefMapToEncoder:computeCommandEncoder map:self->_rawProbMapTexture ref:self->_rawWarpedRefProbMapTexture dilatedRef:self->_warpedRefProbMapTexture lsMap:bufCopy dilatedLsMap:self->_dilatedLsMapTexture refLsMap:v53 motion:arrayCopy saliency:self->_motionMapTexture targetFrameYUV:self->_saliencyMapTexture blobSaliency:self->_inputTexture spaRef:saliencyMapTexture mvf:self->_rawWarpedRefSpaProbMapTexture output:centerCopy spaOutput:rescaleProbMapCopy meta:lsMapCopy wRef:v38];
        if (v40)
        {
          break;
        }

        v40 = [OUTLINED_FUNCTION_5_7() encodeCollectClusterMaxProb:? clusterMetaBuf:? metaBuf:?];
        if (v40)
        {
          break;
        }

        v40 = [(GGMMetalToolBox *)self->_metalToolBox encodeUpscaleProbMap:computeCommandEncoder probMap:rescaleProbMapCopy refinedProbMap:lsMapCopy inputFrame:mapCopy upscaledProbMap:self->_fullResStashedProbMap4FutureTrackingTexture upscaledRefinedProbMap:self->_fullResRawRefinedProbMapTexture meta:v38];
        if (v40)
        {
          break;
        }

        OUTLINED_FUNCTION_15_1();
        v40 = [v55 encodeConditionalDilateProbMapYUV:? inputYUV:? probMap:? dilatedProbMap:? hardDilationRadius:? softDilationRadius:? meta:?];
        if (v40)
        {
          break;
        }

        LODWORD(v56) = 2.0;
        LODWORD(v57) = 4.0;
        v40 = [(GGMMetalToolBox *)self->_metalToolBox encodeDilateGrayImg:computeCommandEncoder input:self->_fullResStashedProbMap4FutureTrackingTexture output:refinedProbMapCopy hardDilationOutput:v63 hardDilationRadius:v38 softDilationRadius:v56 meta:v57];
        if (v40)
        {
          break;
        }

        if ((*(contents + 8232) & 1) == 0)
        {
          v40 = [(GGMMetalToolBox *)self->_metalToolBox encodeCopyMapToMap4RoiGenToCommandEncoder:computeCommandEncoder input:refinedProbMapCopy output:self->_probMap4RoiGenTexture metaBuf:v38];
          if (v40)
          {
            break;
          }
        }

        [computeCommandEncoder endEncoding];

        ++v35;
        refProbMapCopy2 = refProbMap;
        v33 = v61;
        if (v35 >= refProbMap->var1)
        {
          goto LABEL_32;
        }
      }

      v49 = v40;
LABEL_37:

      v33 = v61;
    }
  }

  else
  {
    v49 = 6;
  }

  return v49;
}

- (int64_t)_getProbMapInput:(id)input reflLs:(id)ls trackingRef:(id)ref trackingRefProb:(id)prob trackingRefSpaProb:(id)spaProb trackingRefErrRescaleProb:(id)rescaleProb trackingRefLs:(id)refLs inputBuf:(__CVBuffer *)self0 reflLsBuf:(__CVBuffer *)self1 trackingRefBuf:(__CVBuffer *)self2 trackingRefProbBuf:(__CVBuffer *)self3 trackingRefSpaProbBuf:(__CVBuffer *)self4 trackingRefErrRescaleProbBuf:(__CVBuffer *)self5 trackingRefLsBuf:(__CVBuffer *)self6 trackingMvf:(id)self7 metaBuf:(id)self8 metaBufArray:(id *)self9 trackingRefMetaBuf:(id)refMetaBuf probMap:(id)map errRescaleProbMap:(id)probMap rawRefinedProbMap:(id)refinedProbMap refinedProbMap:(id)a24 refinedReflLs:(id)reflLs probMapStash4FutureTracking:(id)tracking probMapBuf:(__CVBuffer *)mapBuf errRescaleProbMapBuf:(__CVBuffer *)probMapBuf rawRefinedProbMapBuf:(__CVBuffer *)refinedProbMapBuf refinedProbMapBuf:(__CVBuffer *)input0 refinedReflLsBuf:(__CVBuffer *)input1 probMapStash4FutureTrackingBuf:(__CVBuffer *)input2 doTracking:(BOOL)input3 waitForComplete:(BOOL)input4
{
  inputCopy = input;
  lsCopy = ls;
  refCopy = ref;
  mvfCopy = mvf;
  metaBufCopy = metaBuf;
  mapCopy = map;
  probMapCopy = probMap;
  refinedProbMapCopy = refinedProbMap;
  v61 = a24;
  reflLsCopy = reflLs;
  trackingCopy = tracking;
  v38 = metaBufCopy;
  refMetaBufCopy = refMetaBuf;
  refLsCopy = refLs;
  spaProbCopy = spaProb;
  probCopy = prob;
  contents = [metaBufCopy contents];
  contents2 = [refMetaBufCopy contents];

  LOBYTE(v56) = 0;
  v45 = [(VideoDeghostingDetectionV2 *)self warpTrackingRefProbMap:probCopy refSpaProbMap:spaProbCopy refReflLs:refLsCopy mvf:mvfCopy metaBuf:metaBufCopy metaBufArray:v56 waitForComplete:?];

  if (v45)
  {
    v50 = refCopy;
    v48 = lsCopy;
    v49 = mvfCopy;
    v52 = probMapCopy;
    v51 = mapCopy;
    v54 = v61;
    v53 = refinedProbMapCopy;
  }

  else
  {
    v46 = *(contents + 11824);
    v47 = *(contents2 + 11824);
    LOWORD(v57) = __PAIR16__(complete, doTracking);
    v48 = lsCopy;
    v49 = mvfCopy;
    v50 = refCopy;
    v51 = mapCopy;
    v45 = [(VideoDeghostingDetectionV2 *)self getProbMapsTarget:inputCopy ref:refCopy rawProbMap:trackingCopy probMap:mapCopy errRescaleProbMap:probMapCopy rawRefinedProbMap:refinedProbMapCopy refinedProbMap:v46 reflLsMap:v47 refinedReflLsMap:v61 reflLsMap4TrackingRef:lsCopy metaBuf:reflLsCopy metaBufArray:self->_refinedReflLs4trackingRefWarpedTexture trackingMvf:metaBufCopy useRefProbMap:array opticalCenter:mvfCopy trackingRefOpticalCenter:v57 waitForComplete:?];
    v52 = probMapCopy;
    v53 = refinedProbMapCopy;
    v54 = v61;
  }

  return v45;
}

- (int64_t)_initDetection:(__CVBuffer *)detection futureFrames:(id *)frames outputImgBufTMinus1:(__CVBuffer *)minus1 outputImgBufTMinus2:(__CVBuffer *)minus2
{
  self->_frameTMinus1 = minus1;
  self->_frameTMinus2 = minus2;
  v10 = createSingleTextureFromYuvBuffer(detection, self->_device, 0, 0);
  inputTexture = self->_inputTexture;
  self->_inputTexture = v10;

  if (!self->_inputTexture)
  {
    return 6;
  }

  if (minus1)
  {
    v12 = createSingleTextureFromYuvBuffer(minus1, self->_device, 0, 0);
    frameTMinus1Texture = self->_frameTMinus1Texture;
    self->_frameTMinus1Texture = v12;

    if (!self->_frameTMinus1Texture)
    {
      return 6;
    }
  }

  if (minus2)
  {
    v14 = createSingleTextureFromYuvBuffer(minus2, self->_device, 0, 0);
    frameTMinus2Texture = self->_frameTMinus2Texture;
    self->_frameTMinus2Texture = v14;

    if (!self->_frameTMinus2Texture)
    {
      return 6;
    }
  }

  result = 0;
  self->_frameT = detection;
  return result;
}

- (double)unpackIspLsMaskAndRoisForNextFrameWithFrameData:(uint64_t)a3 futureOpticalCenter:currFrameMetaContainer:outputFutureFrameCnt:outputMTLBuffer:.cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  bzero(a1, 0x11650uLL);
  bzero(a2, 0x11650uLL);
  *(a1 + 8) = *(a3 + 8);
  *(a1 + 24) = *(a3 + 24);
  *(a1 + 32) = *(a3 + 32);
  *(a2 + 8) = *(a3 + 8);
  *(a2 + 24) = *(a3 + 24);
  result = *(a3 + 32);
  *(a2 + 32) = result;
  return result;
}

@end