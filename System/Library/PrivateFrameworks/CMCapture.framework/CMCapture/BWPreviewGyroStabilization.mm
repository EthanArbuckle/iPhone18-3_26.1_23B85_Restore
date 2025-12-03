@interface BWPreviewGyroStabilization
- ($01BB1521EC52D44A8E7628F5261DCEC8)_adjustQuaternionForSagRemoval:(id)removal focalLength:(float)length;
- (PreviewStabilizationFrameRateCompensatedParameter)_updateTripodSmoothParametersWithSphereVideoEnabled:(SEL)enabled frameRateNormalization:(BOOL)normalization;
- (float)_computeSmoothParameterForNonStationaryCaseWithPanningStatus:(BOOL)status frameIsSphereStabilized:(BOOL)stabilized previousLowPassParameter:(float)parameter rampDownRate:(float)rate rampUpRate:(float)upRate targetSmoothParameter:(float)smoothParameter;
- (float)_computeSmoothParameterForPhysicalTripod:(BOOL)tripod lowpassParameter:(float)parameter previousLowPassParameter:(float)passParameter frameRateNormalization:(float)normalization;
- (float)_computeSmoothParameterForStationaryCaseWithPanningStatus:(BOOL)status translation:(float)translation previousLowPassParameter:(float)parameter rampDownRate:(float)rate rampUpRate:(float)upRate targetSmoothParameter:(float)smoothParameter;
- (id)initForStillImagePreview:(BOOL)preview;
- (int)_computeMotionStatisticsWithQuaternion:(id *)quaternion focalLength:(float)length maxAngleAccumulateOut:(double *)out maxAngleInstantOut:(double *)instantOut translationOut:;
- (int)_extractMetadataFromTopToBottomRowsFromDictionary:(__CFDictionary *)dictionary cameraMetadata:(id *)metadata quaternion:(id *)quaternion;
- (int)_getAllMetadataFromDictionary:(__CFDictionary *)dictionary cameraMetadata:(id *)metadata;
- (int)_limitSmoothParameterToOverscanWithQuaternion:(id *)quaternion cameraMetadata:(id *)metadata minSmoothParameter:(float)parameter smoothParameterInOut:(float *)out;
- (int)computeStabilizationShiftUsingMetadata:(id)metadata pixelBufferDimensions:(id)dimensions pixelSizeInMicrons:(float)microns stabilizationShiftOut:(CGPoint *)out;
- (void)_adjustSmoothParameterWithQuaternion:(id *)quaternion cameraMetadata:(id *)metadata reduceSmoothParameterForLowLight:(BOOL)light;
- (void)_applyCascadeFiltering:(id *)filtering quaternion:(id)quaternion lowpassParameter:(float)parameter cascadeLevel:(int)level;
- (void)_setDefaultParametersForStillImagePreview:(BOOL)preview isFrontCamera:(BOOL)camera;
- (void)dealloc;
@end

@implementation BWPreviewGyroStabilization

- (id)initForStillImagePreview:(BOOL)preview
{
  previewCopy = preview;
  v18.receiver = self;
  v18.super_class = BWPreviewGyroStabilization;
  v4 = [(BWPreviewGyroStabilization *)&v18 init];
  v5 = v4;
  if (v4)
  {
    [(BWPreviewGyroStabilization *)v4 _setDefaultParametersForStillImagePreview:previewCopy isFrontCamera:0];
    v6 = 0;
    for (i = 1; ; i = 0)
    {
      v8 = i;
      v9 = malloc_type_malloc(0x1000uLL, 0x100004000313F17uLL);
      v5->_hallData.fusedRingSagPosition[v6] = v9;
      if (!v9)
      {
        break;
      }

      v6 = 1;
      if ((v8 & 1) == 0)
      {
        v10 = [BWPreviewGyroStabilizationPanningDetection alloc];
        *&v11 = v5->_panningSpeedThreshold;
        v5->_previewPanningDetection = [(BWPreviewGyroStabilizationPanningDetection *)v10 initWithPanningThreshold:v11];
        v12 = [BWPreviewGyroStabilizationTripodDetection alloc];
        *&v13 = v5->_tripodMaxAngleThresholdInstant;
        *&v14 = v5->_tripodMaxAngleThresholdAccumulate;
        *&v15 = v5->_physicalTripodLikelyMaxAngleThreshold;
        *&v16 = v5->_physicalTripodGuaranteedMaxAngleThreshold;
        v5->_previewTripodDetection = [(BWPreviewGyroStabilizationTripodDetection *)v12 initWithTripodDetectionThresholds:v13 tripodMaxAngleThresholdAccumulate:v14 physicalTripodLikelyMaxAngleThreshold:v15 physicalTripodGuaranteedMaxAngleThreshold:v16];
        return v5;
      }
    }

    return 0;
  }

  return v5;
}

- (void)dealloc
{
  v3 = 0;
  fusedRingSagPosition = self->_hallData.fusedRingSagPosition;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = fusedRingSagPosition[v3];
    if (v7)
    {
      fusedRingSagPosition[v3] = 0;
      free(v7);
    }

    v5 = 0;
    v3 = 1;
  }

  while ((v6 & 1) != 0);
  v8.receiver = self;
  v8.super_class = BWPreviewGyroStabilization;
  [(BWPreviewGyroStabilization *)&v8 dealloc];
}

- (int)_extractMetadataFromTopToBottomRowsFromDictionary:(__CFDictionary *)dictionary cameraMetadata:(id *)metadata quaternion:(id *)quaternion
{
  v5 = MEMORY[0x1EEE9AC00](self);
  if (!v6 || (v9 = v7) == 0 || (v10 = v8) == 0)
  {
    [BWPreviewGyroStabilization _extractMetadataFromTopToBottomRowsFromDictionary:v62 cameraMetadata:? quaternion:?];
    return v62[0];
  }

  v11 = v6;
  v12 = v5;
  v13 = [v5 _getAllMetadataFromDictionary:? cameraMetadata:?];
  if (v13)
  {
    v56 = v13;
    [BWPreviewGyroStabilization _extractMetadataFromTopToBottomRowsFromDictionary:cameraMetadata:quaternion:];
    return v56;
  }

  v59 = 0;
  v60 = 0;
  if (*(v9 + 88) == 0)
  {
    *(v9 + 96) = *(v12 + 1);
  }

  v14 = *(v12 + 2);
  v15 = *(v12 + 3);
  v62[0] = 0;
  v62[1] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  v63 = _Q0;
  FigCFDictionaryGetCGRectIfPresent();
  v21 = v14;
  v22 = v21 * 0.0 + 0.5;
  v23 = llroundf(v22);
  v24 = v15;
  v25 = v24 * 0.0 + 0.5;
  v26 = *(&v63 + 1);
  *&v21 = v21 * *&v63 + -0.5;
  v27 = llroundf(*&v21);
  *(v12 + 9) = v23;
  *(v12 + 10) = llroundf(v25);
  *&v21 = v24 * v26 + -0.5;
  v28 = llroundf(*&v21);
  *(v12 + 11) = v27;
  *(v12 + 12) = v28;
  v29 = *(v9 + 32) + *(v9 + 48) * -0.5 + (v28 + -1.0) / v28 * 0.5 * *(v9 + 56);
  *(v9 + 72) = v29;
  v58 = 0;
  Value = CFDictionaryGetValue(v11, *off_1E798B540);
  v31 = portIndexFromPortType(Value, &v58);
  if (v31)
  {
    v56 = v31;
    [BWPreviewGyroStabilization _extractMetadataFromTopToBottomRowsFromDictionary:cameraMetadata:quaternion:];
    return v56;
  }

  v32 = v58;
  v33 = *(v12 + 6814);
  v34 = *(v12 + 1289);
  bzero(&v64, 0x14A0uLL);
  bzero(v62, 0x2FD0uLL);
  v61 = 0;
  MotionDataFromISP = FigMotionGetMotionDataFromISP(v11, &v64, 0, 110, &v61 + 1, 0, v62, 510, &v61);
  if (MotionDataFromISP)
  {
    v56 = MotionDataFromISP;
    fig_log_get_emitter();
    FigDebugAssert3();
    fig_log_get_emitter();
    FigDebugAssert3();
    return v56;
  }

  v36 = v12 + 10328;
  v37 = HIDWORD(v61);
  if (SHIDWORD(v61) >= 1)
  {
    v38 = *(v12 + 16);
    v39 = &v65;
    do
    {
      *&v12[8 * v38 + 72] = v34 - v33 + *(v39 - 1);
      v40 = &v12[32 * v38 + 2120];
      v42 = *v39;
      v41 = *(v39 + 1);
      v39 += 6;
      *v40 = v42;
      *(v40 + 1) = v41;
      v38 = (*(v12 + 16) + 1);
      *(v12 + 16) = v38;
      --v37;
    }

    while (v37);
  }

  v43 = v61;
  if (v61 >= 1)
  {
    v44 = v12 + 26744;
    v45 = *&v36[4 * v32];
    v46 = vdup_n_s32(0x3C23D700u);
    v47 = vdup_n_s32(0x3F7D70A4u);
    v48 = v12 + 26720;
    v49 = v12 + 26752;
    v50 = &v63;
    do
    {
      *&v12[4096 * v32 + 10336 + 8 * v45] = v50[-2];
      *&v12[4096 * v32 + 18528 + 8 * v45] = v50[-1];
      if (v44[v32])
      {
        *(*&v48[8 * v32] + 8 * v45) = *v50;
        *&v49[8 * v32] = *v50;
        v44[v32] = 0;
      }

      else
      {
        v51 = vmla_f32(vmul_f32(*v50, v46), v47, *&v49[8 * v32]);
        *(*&v48[8 * v32] + 8 * v45) = v51;
        *&v49[8 * v32] = v51;
      }

      v45 = (*&v36[4 * v32] + 1) & 0x1FF;
      *&v36[4 * v32] = v45;
      v50 += 3;
      --v43;
    }

    while (v43);
  }

  FigMotionComputeQuaternionForTimeStamp((v12 + 64), v10, v12 + 10322, v29);
  if (!v12[10322])
  {
    [BWPreviewGyroStabilization _extractMetadataFromTopToBottomRowsFromDictionary:v62 cameraMetadata:? quaternion:?];
    return v62[0];
  }

  *v10 = FigMotionMultiplyQuaternions(v10, v12 + 3346);
  *(v10 + 1) = v52;
  *(v10 + 2) = v53;
  *(v10 + 3) = v54;
  if (*(v9 + 12))
  {
    if (*(v12 + 6811) == 1)
    {
      v55 = (v12 + 27136);
    }

    else
    {
      v55 = 0;
    }

    v56 = FigMotionComputeLensMovementAndSagForTimeStamp((v12 + 10328), v12 + 3391, v55, v58, v29, *(v9 + 16));
    if (v56)
    {
      [BWPreviewGyroStabilization _extractMetadataFromTopToBottomRowsFromDictionary:cameraMetadata:quaternion:];
    }
  }

  else
  {
    v56 = 0;
    *(v12 + 27128) = 0u;
  }

  return v56;
}

- (int)_computeMotionStatisticsWithQuaternion:(id *)quaternion focalLength:(float)length maxAngleAccumulateOut:(double *)out maxAngleInstantOut:(double *)instantOut translationOut:
{
  if (!quaternion)
  {
    [BWPreviewGyroStabilization _computeMotionStatisticsWithQuaternion:v24 focalLength:? maxAngleAccumulateOut:? maxAngleInstantOut:? translationOut:?];
    return v24[0];
  }

  if (!out || !instantOut || (v9 = v6) == 0)
  {
    [BWPreviewGyroStabilization _computeMotionStatisticsWithQuaternion:v24 focalLength:? maxAngleAccumulateOut:? maxAngleInstantOut:? translationOut:?];
    return v24[0];
  }

  *v6 = 0;
  v13 = fabs(FigMotionMultiplyByInverseOfQuaternion(&quaternion->var0, self->_stabilizedCenterQuaternion));
  v14 = 2.0;
  if (v13 <= 2.0)
  {
    v15 = v13;
  }

  else
  {
    v15 = 2.0;
  }

  v23[0] = FigMotionMultiplyByInverseOfQuaternion(&quaternion->var0, &self->_lowpassQuaternionsInstant);
  v23[1] = v16;
  v23[2] = v17;
  v23[3] = v18;
  v19 = fabs(v23[0]);
  if (v19 <= 2.0)
  {
    v14 = v19;
  }

  pgs_inverseRotationMatrixFromQuaternion(v23, v24);
  if (fabsf(v25) <= 0.00000001)
  {
    [BWPreviewGyroStabilization _computeMotionStatisticsWithQuaternion:? focalLength:? maxAngleAccumulateOut:? maxAngleInstantOut:? translationOut:?];
    v20 = v26;
    v21 = 0;
  }

  else
  {
    v20 = 0;
    v21 = vmul_n_f32(__PAIR64__(v24[5], v24[2]), length / v25);
  }

  *v9 = v21;
  *instantOut = acos(v14) * self->_frameRateNormalizationFactor;
  *out = acos(v15) * sqrt(self->_frameRateNormalizationFactor);
  return v20;
}

- (PreviewStabilizationFrameRateCompensatedParameter)_updateTripodSmoothParametersWithSphereVideoEnabled:(SEL)enabled frameRateNormalization:(BOOL)normalization
{
  v5 = self[1136].var5 + self[1137].var0 * a5;
  v6 = self[1137].var1 + self[1137].var2 * a5;
  if (normalization)
  {
    v6 = v6 + 0.02;
    v5 = v5 + 0.1;
  }

  var4 = self[1136].var4;
  v8 = fminf(var4, v5);
  v9 = fminf(var4, v6);
  v10 = (v9 - v8) / a5;
  *&v10 = v10;
  v11 = *&self[1137].var3;
  retstr->var0 = v8;
  retstr->var1 = v9;
  *&retstr->var2 = vdivq_f32(vdupq_lane_s32(*&v10, 0), vcvtq_f32_s32(v11));
  return self;
}

- (float)_computeSmoothParameterForStationaryCaseWithPanningStatus:(BOOL)status translation:(float)translation previousLowPassParameter:(float)parameter rampDownRate:(float)rate rampUpRate:(float)upRate targetSmoothParameter:(float)smoothParameter
{
  result = fmaxf(smoothParameter, parameter - rate);
  v9 = parameter + upRate;
  if (!status)
  {
    return v9;
  }

  return result;
}

- (float)_computeSmoothParameterForNonStationaryCaseWithPanningStatus:(BOOL)status frameIsSphereStabilized:(BOOL)stabilized previousLowPassParameter:(float)parameter rampDownRate:(float)rate rampUpRate:(float)upRate targetSmoothParameter:(float)smoothParameter
{
  if (!stabilized)
  {
    return fmaxf(smoothParameter, parameter - rate);
  }

  if (status && self->_transformContext.prevTransformLimited)
  {
    return parameter - rate;
  }

  if (parameter <= smoothParameter)
  {
    return fminf(smoothParameter, parameter + upRate);
  }

  else
  {
    return fmaxf(smoothParameter, parameter - rate);
  }
}

- (float)_computeSmoothParameterForPhysicalTripod:(BOOL)tripod lowpassParameter:(float)parameter previousLowPassParameter:(float)passParameter frameRateNormalization:(float)normalization
{
  if (!tripod)
  {
    return fminf(parameter, passParameter);
  }

  v6 = fminf(self->_physicalTripodRate * 1.3, 1.0);
  self->_physicalTripodRate = v6;
  return fmaxf(self->_physicalTripodMinSmoothParameter, passParameter - (v6 / normalization));
}

- (void)_adjustSmoothParameterWithQuaternion:(id *)quaternion cameraMetadata:(id *)metadata reduceSmoothParameterForLowLight:(BOOL)light
{
  lightCopy = light;
  v9 = &self->_hallData.fusedRingHallPosition[1][244];
  frameRateNormalizationFactor = self->_frameRateNormalizationFactor;
  var3 = metadata->var3;
  v12 = metadata->var3 != 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  [(BWPreviewGyroStabilization *)self _updateTripodSmoothParametersWithSphereVideoEnabled:v12 frameRateNormalization:frameRateNormalizationFactor];
  if ([(BWPreviewGyroStabilizationTripodDetection *)self->_previewTripodDetection empty])
  {
    p_lowpassParameter = &v52;
  }

  else
  {
    p_lowpassParameter = &self->_lowpassParameter;
  }

  v15 = *p_lowpassParameter;
  v50 = 2.0;
  v51 = 0.0;
  v49 = 2.0;
  *&v13 = metadata->var1;
  [(BWPreviewGyroStabilization *)self _computeMotionStatisticsWithQuaternion:quaternion focalLength:&v49 maxAngleAccumulateOut:&v50 maxAngleInstantOut:&v51 translationOut:v13];
  v48 = 0;
  v16 = [(BWPreviewGyroStabilizationPanningDetection *)self->_previewPanningDetection detectPanningUsingTranslation:&v48 maxAvgTranslationOut:v51];
  HIDWORD(v18) = HIDWORD(v49);
  HIDWORD(v17) = HIDWORD(v50);
  *&v17 = v50;
  *&v18 = v49;
  v19 = frameRateNormalizationFactor;
  *&v20 = v19;
  [(BWPreviewGyroStabilizationTripodDetection *)self->_previewTripodDetection detectTripodStateUsingMaxAngleInstant:v17 maxAngleAccumulate:v18 frameRateNormalizationFactor:v20];
  if ([(BWPreviewGyroStabilizationTripodDetection *)self->_previewTripodDetection isStationary])
  {
    LODWORD(v21) = v48;
    LODWORD(v23) = v54;
    LODWORD(v24) = v53;
    LODWORD(v25) = v52;
    *&v22 = v15;
    [(BWPreviewGyroStabilization *)self _computeSmoothParameterForStationaryCaseWithPanningStatus:v16 translation:v21 previousLowPassParameter:v22 rampDownRate:v23 rampUpRate:v24 targetSmoothParameter:v25];
  }

  else
  {
    v27 = &v53 + 4;
    deltaFrameTime = self->_deltaFrameTime;
    v29 = (fmaxf(fabsf(*&v51), fabsf(*(&v51 + 1))) / metadata->var1) / deltaFrameTime;
    *&v29 = v29;
    if (v9[346].x < *&v29)
    {
      v27 = &v54 + 4;
    }

    LODWORD(deltaFrameTime) = *v27;
    LODWORD(v23) = v53;
    LODWORD(v24) = v52;
    *&v29 = v15;
    [(BWPreviewGyroStabilization *)self _computeSmoothParameterForNonStationaryCaseWithPanningStatus:v16 frameIsSphereStabilized:var3 != 0 previousLowPassParameter:v29 rampDownRate:deltaFrameTime rampUpRate:v23 targetSmoothParameter:v24];
  }

  v30 = fminf(fmaxf(v26, fminf(v9[338].x, *&v52)), *(&v52 + 1));
  v31 = fmaxf(v15 - *(&v53 + 1), 0.4);
  if (lightCopy)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  isLikelyPhysicalTripod = [(BWPreviewGyroStabilizationTripodDetection *)self->_previewTripodDetection isLikelyPhysicalTripod];
  isPhysicalTripod = [(BWPreviewGyroStabilizationTripodDetection *)self->_previewTripodDetection isPhysicalTripod];
  if (isLikelyPhysicalTripod)
  {
    *&v35 = v32;
    *&v36 = v15;
    *&v37 = frameRateNormalizationFactor;
    [(BWPreviewGyroStabilization *)self _computeSmoothParameterForPhysicalTripod:isPhysicalTripod lowpassParameter:v35 previousLowPassParameter:v36 frameRateNormalization:v37];
    v39 = v38;
  }

  else
  {
    v40 = 0.08 / frameRateNormalizationFactor + v15;
    v39 = fminf(v32, v40);
    v41 = 0.005 / frameRateNormalizationFactor;
    v9[332].x = v41;
  }

  quaternionThreshold = self->_quaternionThreshold;
  v43 = fabs(FigMotionMultiplyByInverseOfQuaternion(&self->_stabilizedCenterQuaternion[0].w, quaternion));
  if (v43 < quaternionThreshold)
  {
    v44 = acos(quaternionThreshold);
    v45 = acos(v43);
    v46 = v44 / (v45 + v45);
    if (v39 > v46)
    {
      v39 = v46;
    }
  }

  v47 = v39;
  if (var3 && v39 > *&v52 && ![(BWPreviewGyroStabilization *)self _limitSmoothParameterToOverscanWithQuaternion:quaternion cameraMetadata:metadata minSmoothParameter:&v47 smoothParameterInOut:?])
  {
    v39 = v47;
  }

  self->_lowpassParameter = v39;
}

- (void)_applyCascadeFiltering:(id *)filtering quaternion:(id)quaternion lowpassParameter:(float)parameter cascadeLevel:(int)level
{
  quaternionCopy = quaternion;
  if (level >= 4)
  {
    levelCopy = 4;
  }

  else
  {
    levelCopy = level;
  }

  v10 = (levelCopy - 1);
  v11 = &filtering[v10];
  FigMotionInterpolateQuaternionsByAngle(&quaternionCopy, &v11->var0, parameter);
  v11->var0 = v12;
  v11->var1 = v13;
  v11->var2 = v14;
  v11->var3 = v15;
  if (level >= 2)
  {
    v16 = &filtering[v10 - 1];
    do
    {
      FigMotionInterpolateQuaternionsByAngle(&v16[1], &v16->var0, parameter);
      v16->var0 = v17;
      v16->var1 = v18;
      v16->var2 = v19;
      v16->var3 = v20;
      --levelCopy;
      --v16;
    }

    while (levelCopy > 1);
  }
}

- ($01BB1521EC52D44A8E7628F5261DCEC8)_adjustQuaternionForSagRemoval:(id)removal focalLength:(float)length
{
  v5 = &self->_hallData.fusedRingHallPosition[1][244];
  removalCopy = removal;
  v15[0] = atanf(self->_oisOffsetInput.y / length);
  v15[1] = -atanf(v5[319].x / length);
  v15[2] = 0.0;
  FigMotionQuaternionFromDeltaRotation(v15);
  v14[0] = v6;
  v14[1] = v7;
  v14[2] = v8;
  v14[3] = v9;
  v10 = FigMotionMultiplyQuaternions(&removalCopy.var0, v14);
  result.var3 = v13;
  result.var2 = v12;
  result.var1 = v11;
  result.var0 = v10;
  return result;
}

- (int)computeStabilizationShiftUsingMetadata:(id)metadata pixelBufferDimensions:(id)dimensions pixelSizeInMicrons:(float)microns stabilizationShiftOut:(CGPoint *)out
{
  p_isFirstFrame = &self->_isFirstFrame;
  if (!metadata)
  {
    [BWPreviewGyroStabilization computeStabilizationShiftUsingMetadata:? pixelBufferDimensions:? pixelSizeInMicrons:? stabilizationShiftOut:?];
    v57 = v68;
    goto LABEL_51;
  }

  self->_transformContext.width = dimensions.var0;
  p_transformContext = &self->_transformContext;
  self->_transformContext.height = dimensions.var1;
  self->_transformContext.imageCenter.x = (dimensions.var0 + -1.0) * 0.5;
  p_imageCenter = &self->_transformContext.imageCenter;
  self->_transformContext.imageCenter.y = (dimensions.var1 + -1.0) * 0.5;
  if (microns <= 0.0)
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 1.0 / microns;
  }

  self->_transformContext.pixelsPerMicron = v12;
  v66 = 0u;
  v67 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v13 = [(BWPreviewGyroStabilization *)self _extractMetadataFromTopToBottomRowsFromDictionary:0 cameraMetadata:0 quaternion:0, 0, 0, 0];
  if (v13)
  {
    v57 = v13;
    [BWPreviewGyroStabilization computeStabilizationShiftUsingMetadata:pixelBufferDimensions:pixelSizeInMicrons:stabilizationShiftOut:];
    goto LABEL_51;
  }

  p_didHaveMotionData = &self->_motionData.didHaveMotionData;
  self->_transformContext.forceIdentity = self->_motionData.didHaveMotionData == 0;
  v16 = (v63 * 0.14);
  x = self->_transformContext.finalCropRect.origin.x;
  if (x <= self->_transformContext.finalCropRect.origin.y)
  {
    x = self->_transformContext.finalCropRect.origin.y;
  }

  if (x < v16)
  {
    v16 = x;
  }

  *(p_isFirstFrame + 109) = (*(p_isFirstFrame + 129) * v16) / 10.0;
  v18 = *(&v66 + 1);
  v19 = *&v66;
  v20 = *(&v67 + 1);
  v21 = *&v67;
  if (*(p_isFirstFrame + 111) == 2)
  {
    LODWORD(v14) = DWORD1(v59);
    [(BWPreviewGyroStabilization *)self _adjustQuaternionForSagRemoval:v66 focalLength:v67, v14];
    v19 = v22;
    v18 = v23;
    v21 = v24;
    v20 = v25;
  }

  v26 = *p_isFirstFrame;
  if (!*p_isFirstFrame)
  {
    if (!*p_didHaveMotionData)
    {
      goto LABEL_45;
    }

    if (self->_motionData.prevDidHaveMotionData)
    {
      goto LABEL_20;
    }
  }

  p_z = &self->_stabilizedCenterQuaternionAdjusted[0].z;
  v28 = 4;
  do
  {
    v29 = v67;
    *(p_z - 19) = v66;
    *(p_z - 17) = v29;
    *(p_z - 3) = v19;
    *(p_z - 2) = v18;
    *(p_z - 1) = v21;
    *p_z = v20;
    p_z += 4;
    --v28;
  }

  while (v28);
  v30 = v67;
  *&self->_lowpassQuaternionsInstant.w = v66;
  *&self->_lowpassQuaternionsInstant.y = v30;
  if (!*p_didHaveMotionData)
  {
LABEL_45:
    if (self->_transformContext.forceIdentity)
    {
      v54 = v67;
      *&self->_stabilizedCenterQuaternion[0].w = v66;
      *&self->_stabilizedCenterQuaternion[0].y = v54;
      v55 = 0.0;
      v56 = 0.0;
      if (!out)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v55 = *(p_isFirstFrame + 88);
      v56 = *(p_isFirstFrame + 91);
      if (!out)
      {
LABEL_50:
        v57 = 0;
        *(p_isFirstFrame + 95) = v55;
        *(p_isFirstFrame + 96) = v56;
        self->_motionData.prevDidHaveMotionData = *p_didHaveMotionData;
        self->_previousCaptureTime = *(&v61 + 1);
        goto LABEL_51;
      }
    }

    out->x = v55;
    out->y = v56;
    goto LABEL_50;
  }

  if (!v26)
  {
LABEL_20:
    previousCaptureTime = self->_previousCaptureTime;
    if (*(&v61 + 1) <= previousCaptureTime)
    {
      v32 = 0.0333333333;
    }

    else
    {
      v32 = *(&v61 + 1) - previousCaptureTime;
    }

    self->_deltaFrameTime = v32;
    self->_frameRateNormalizationFactor = 0.0333333333 / v32;
    [objc_msgSend(metadata objectForKeyedSubscript:{*off_1E798B210), "floatValue"}];
    if (p_isFirstFrame[452])
    {
      v34 = v33 < 16.0 || *&v60 > 0.0299999993;
    }

    else
    {
      v34 = 0;
    }

    [(BWPreviewGyroStabilization *)self _adjustSmoothParameterWithQuaternion:&v66 cameraMetadata:&v59 reduceSmoothParameterForLowLight:v34];
    v35 = *(p_isFirstFrame + 112);
    if (v35 > 0.0)
    {
      *(p_isFirstFrame + 97) = v35;
    }
  }

  if (p_isFirstFrame[440])
  {
    v36 = 4;
  }

  else
  {
    v36 = 1;
  }

  if (p_isFirstFrame[440])
  {
    LODWORD(v14) = 1045220557;
  }

  else
  {
    LODWORD(v14) = *(p_isFirstFrame + 97);
  }

  *(p_isFirstFrame + 98) = LODWORD(v14);
  self->_transformContext.limitFactor = 1.0;
  stabilizedCenterQuaternion = self->_stabilizedCenterQuaternion;
  v38 = *(p_isFirstFrame + 111);
  if (v38)
  {
    if (v38 != 2)
    {
      if (v38 != 1)
      {
        v57 = -12780;
        goto LABEL_51;
      }

      LODWORD(v14) = *(p_isFirstFrame + 97);
      v40 = *(&v66 + 1);
      v39 = *&v66;
      v42 = *(&v67 + 1);
      v41 = *&v67;
      selfCopy3 = self;
      stabilizedCenterQuaternionAdjusted = self->_stabilizedCenterQuaternion;
      v45 = 1;
      goto LABEL_43;
    }

    LODWORD(v14) = *(p_isFirstFrame + 97);
    [(BWPreviewGyroStabilization *)self _applyCascadeFiltering:self->_stabilizedCenterQuaternion quaternion:1 lowpassParameter:v66 cascadeLevel:v67, v14];
    stabilizedCenterQuaternion = self->_stabilizedCenterQuaternionAdjusted;
    LODWORD(v14) = *(p_isFirstFrame + 98);
    selfCopy3 = self;
    stabilizedCenterQuaternionAdjusted = self->_stabilizedCenterQuaternionAdjusted;
    v39 = v19;
    v40 = v18;
    v41 = v21;
    v42 = v20;
  }

  else
  {
    v40 = *(&v66 + 1);
    v39 = *&v66;
    v42 = *(&v67 + 1);
    v41 = *&v67;
    selfCopy3 = self;
    stabilizedCenterQuaternionAdjusted = self->_stabilizedCenterQuaternion;
  }

  v45 = v36;
LABEL_43:
  [(BWPreviewGyroStabilization *)selfCopy3 _applyCascadeFiltering:stabilizedCenterQuaternionAdjusted quaternion:v45 lowpassParameter:v39 cascadeLevel:v40, v41, v42, v14];
  FigMotionInterpolateQuaternionsByAngle(&v66, &self->_lowpassQuaternionsInstant.w, 0.05);
  self->_lowpassQuaternionsInstant.w = v46;
  self->_lowpassQuaternionsInstant.x = v47;
  self->_lowpassQuaternionsInstant.y = v48;
  self->_lowpassQuaternionsInstant.z = v49;
  self->_correctionQuaternion.w = FigMotionMultiplyByInverseOfQuaternion(&stabilizedCenterQuaternion->w, &v66);
  self->_correctionQuaternion.x = v50;
  self->_correctionQuaternion.y = v51;
  self->_correctionQuaternion.z = v52;
  v53 = pgs_computeTransformFromCameraMotion(&self->_correctionQuaternion.w, &p_imageCenter->x, &self->_oisOffsetInput, &self->_sagPosition, self->_baseVector, *(&v59 + 1));
  if (!v53)
  {
    pgs_limitTransformToOverscan(p_transformContext, &v62 + 2, self->_baseVector);
    goto LABEL_45;
  }

  v57 = v53;
  [BWPreviewGyroStabilization computeStabilizationShiftUsingMetadata:pixelBufferDimensions:pixelSizeInMicrons:stabilizationShiftOut:];
LABEL_51:
  if (*p_isFirstFrame)
  {
    *p_isFirstFrame = 0;
  }

  return v57;
}

- (void)_setDefaultParametersForStillImagePreview:(BOOL)preview isFrontCamera:(BOOL)camera
{
  cameraCopy = camera;
  previewCopy = preview;
  isFirstSample = self->_hallData.isFirstSample;
  self->_isStillImagePreview = preview;
  self->_sagRemovalMethod = 0;
  self->_isFirstFrame = 1;
  *&self->_motionData.didHaveMotionData = 257;
  self->_previousCaptureTime = 0.0;
  *self->_hallData.isFirstSample = 257;
  self->_frameRateNormalizationFactor = 1.0;
  self->_sagPosition = 0;
  [(BWPreviewGyroStabilizationPanningDetection *)self->_previewPanningDetection reset];
  [(BWPreviewGyroStabilizationTripodDetection *)self->_previewTripodDetection reset];
  *(isFirstSample + 122) = 1000593162;
  stabilizedCenterQuaternion = self->_stabilizedCenterQuaternion;
  v9 = 4;
  do
  {
    FigMotionInitializeQuaternion(stabilizedCenterQuaternion++);
    --v9;
  }

  while (v9);
  FigMotionInitializeQuaternion(&self->_lowpassQuaternionsInstant.w);
  FigMotionInitializeQuaternion(&self->_correctionQuaternion.w);
  self->_transformContext.limitFactor = 1.0;
  self->_deltaFrameTime = 0.0333333333;
  *(isFirstSample + 111) = 1057971241;
  self->_quaternionThreshold = 0.99;
  if (cameraCopy)
  {
    v10 = FigCaptureCameraRequires180DegreesRotation(1, 0);
    v11 = -0.707106781;
    v12 = 0.0;
    if (v10)
    {
      v13 = 0.707106781;
    }

    else
    {
      v11 = 0.0;
      v13 = 0.0;
    }

    if (!v10)
    {
      v12 = 0.707106781;
    }
  }

  else
  {
    v12 = 0.0;
    v13 = 0.707106781;
    v11 = -0.707106781;
  }

  self->_extrinsicAlignmentPose.w = v12;
  self->_extrinsicAlignmentPose.x = v13;
  self->_extrinsicAlignmentPose.y = v11;
  self->_extrinsicAlignmentPose.z = v12;
  isFirstSample[496] = 0;
  *(isFirstSample + 126) = -1082130432;
  [-[NSDictionary objectForKeyedSubscript:](-[FigCaptureCameraParameters motionAttachmentsParameters](+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters "sharedInstance")];
  if (v14 <= 0.0)
  {
    v14 = 0.005;
  }

  *(isFirstSample + 128) = v14;
  self->_motionData.motionTimeShift = 0.0;
  *&self->_maxSmoothParameter = xmmword_1AD0560F0;
  *(isFirstSample + 138) = 1000593162;
  *(isFirstSample + 140) = 30;
  *(isFirstSample + 572) = xmmword_1AD056100;
  *(isFirstSample + 588) = xmmword_1AD056110;
  if (previewCopy)
  {
    v15 = 2;
  }

  else
  {
    v15 = 1;
  }

  if (previewCopy)
  {
    v16 = 10;
  }

  else
  {
    v16 = 20;
  }

  if (previewCopy)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  *(isFirstSample + 125) = v15;
  *(isFirstSample + 139) = v16;
  *(isFirstSample + 564) = vbsl_s8(vdup_n_s32(v17), 0x500000096, 0x140000003CLL);
  isFirstSample[496] = 0;
  *(isFirstSample + 126) = -1082130432;
}

- (int)_getAllMetadataFromDictionary:(__CFDictionary *)dictionary cameraMetadata:(id *)metadata
{
  if (dictionary && metadata)
  {
    bzero(metadata, 0x90uLL);
    metadata->var14.var0 = 0;
    metadata->var14.var1 = 0;
    v6 = *(MEMORY[0x1E695F058] + 16);
    time[0] = *MEMORY[0x1E695F058];
    time[1] = v6;
    if (FigCFDictionaryGetCGRectIfPresent())
    {
      v7 = llround(*(time + 1));
      metadata->var14.var0.var0 = llround(*time);
      metadata->var14.var0.var1 = v7;
      v8 = llround(*(&time[1] + 1));
      metadata->var14.var1.var0 = llround(*&time[1]);
      metadata->var14.var1.var1 = v8;
    }

    metadata->var3 = CFDictionaryContainsKey(dictionary, *off_1E798B6B0);
    if (FigCFDictionaryGetDoubleIfPresent())
    {
      v11 = 0;
      if (FigCFDictionaryGetInt32IfPresent() || FigCFDictionaryGetInt32IfPresent())
      {
        metadata->var10 = v11 / 1000000.0;
        if (!FigCFDictionaryGetInt32IfPresent())
        {
          metadata->var17 = 1;
        }

        v10 = 0;
        FigCFDictionaryGetFloatIfPresent();
      }
    }

    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3();
    OUTLINED_FUNCTION_2();
    return FigSignalErrorAtGM();
  }

  else
  {
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_0_2();
    FigDebugAssert3();
    OUTLINED_FUNCTION_2();

    return FigSignalErrorAtGM();
  }
}

- (int)_limitSmoothParameterToOverscanWithQuaternion:(id *)quaternion cameraMetadata:(id *)metadata minSmoothParameter:(float)parameter smoothParameterInOut:(float *)out
{
  v25 = 1;
  self->_transformContext.prevTransformLimited = 0;
  v11 = *out;
  OUTLINED_FUNCTION_4_58();
  result = pgs_iir_TestCorrectionFitsForSmoothParameter(v12, v13, v14, v15, metadata, v16, v17, &v25, v11);
  if (!result)
  {
    if (v25)
    {
      return 0;
    }

    else
    {
      self->_transformContext.prevTransformLimited = 1;
      if (v11 < parameter)
      {
        OUTLINED_FUNCTION_2();
        FigDebugAssert3();
        OUTLINED_FUNCTION_2();
        result = FigSignalErrorAtGM();
      }

      else
      {
        while (1)
        {
          parameterCopy = parameter;
          if ((v11 - parameter) <= 0.01)
          {
            break;
          }

          v26 = 0;
          parameter = (v11 + parameter) * 0.5;
          OUTLINED_FUNCTION_4_58();
          result = pgs_iir_TestCorrectionFitsForSmoothParameter(v20, v21, quaternion, v22, metadata, v23, v24, &v26, (v11 + parameterCopy) * 0.5);
          if (!v26)
          {
            v11 = (v11 + parameterCopy) * 0.5;
            parameter = parameterCopy;
          }

          if (result)
          {
            goto LABEL_11;
          }
        }

        result = 0;
LABEL_11:
        parameter = parameterCopy;
      }

      *out = parameter;
    }
  }

  return result;
}

- (uint64_t)_extractMetadataFromTopToBottomRowsFromDictionary:cameraMetadata:quaternion:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_extractMetadataFromTopToBottomRowsFromDictionary:cameraMetadata:quaternion:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_extractMetadataFromTopToBottomRowsFromDictionary:cameraMetadata:quaternion:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)_extractMetadataFromTopToBottomRowsFromDictionary:(_DWORD *)a1 cameraMetadata:quaternion:.cold.4(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_extractMetadataFromTopToBottomRowsFromDictionary:(_DWORD *)a1 cameraMetadata:quaternion:.cold.5(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_computeMotionStatisticsWithQuaternion:(_DWORD *)a1 focalLength:maxAngleAccumulateOut:maxAngleInstantOut:translationOut:.cold.1(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_computeMotionStatisticsWithQuaternion:(_DWORD *)a1 focalLength:maxAngleAccumulateOut:maxAngleInstantOut:translationOut:.cold.2(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)_computeMotionStatisticsWithQuaternion:(_DWORD *)a1 focalLength:maxAngleAccumulateOut:maxAngleInstantOut:translationOut:.cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

- (uint64_t)computeStabilizationShiftUsingMetadata:pixelBufferDimensions:pixelSizeInMicrons:stabilizationShiftOut:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)computeStabilizationShiftUsingMetadata:pixelBufferDimensions:pixelSizeInMicrons:stabilizationShiftOut:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)computeStabilizationShiftUsingMetadata:(_DWORD *)a1 pixelBufferDimensions:pixelSizeInMicrons:stabilizationShiftOut:.cold.3(_DWORD *a1)
{
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_0_2();
  FigDebugAssert3();
  OUTLINED_FUNCTION_2_8();
  result = FigSignalErrorAtGM();
  *a1 = result;
  return result;
}

@end