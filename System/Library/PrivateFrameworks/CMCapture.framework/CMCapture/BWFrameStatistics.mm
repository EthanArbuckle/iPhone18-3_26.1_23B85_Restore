@interface BWFrameStatistics
- (CGRect)finalCropRect;
- (id)description;
- (void)_setAEStatistics:(id)a3;
- (void)_setColorCorrectionMatrix:(id)a3;
- (void)_setDisplayStrobeRGBEstimate:(id)a3;
- (void)dealloc;
- (void)initWthPortType:(uint64_t)a3 storage:;
- (void)reset;
@end

@implementation BWFrameStatistics

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWFrameStatistics;
  [(BWFrameStatistics *)&v3 dealloc];
}

- (CGRect)finalCropRect
{
  storage = self->_storage;
  x = storage->var2.origin.x;
  y = storage->var2.origin.y;
  width = storage->var2.size.width;
  height = storage->var2.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)_setAEStatistics:(id)a3
{
  aeStatistics = self->_aeStatistics;
  if (aeStatistics != a3)
  {

    self->_aeStatistics = a3;
  }
}

- (void)_setDisplayStrobeRGBEstimate:(id)a3
{
  displayStrobeRGBEstimate = self->_displayStrobeRGBEstimate;
  if (displayStrobeRGBEstimate != a3)
  {

    self->_displayStrobeRGBEstimate = a3;
  }
}

- (void)_setColorCorrectionMatrix:(id)a3
{
  colorCorrectionMatrix = self->_colorCorrectionMatrix;
  if (colorCorrectionMatrix != a3)
  {

    self->_colorCorrectionMatrix = a3;
  }
}

- (id)description
{
  v24 = MEMORY[0x1E696AEC0];
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  portType = self->_portType;
  v23 = v4;
  storage = self->_storage;
  v6 = *&storage->var0.var0;
  time.epoch = storage->var0.var3;
  *&time.value = v6;
  Seconds = CMTimeGetSeconds(&time);
  v8 = self->_storage;
  v9 = vcvts_n_f32_u32(v8->var50, 0xCuLL);
  v10 = vcvts_n_f32_u32(v8->var51, 0xCuLL);
  v11 = vcvts_n_f32_u32(v8->var52, 0xCuLL);
  v12 = vcvts_n_f32_u32(v8->var53, 0xCuLL);
  v13 = vcvts_n_f32_u32(v8->var54, 0xCuLL);
  v14 = vcvts_n_f32_u32(v8->var55, 0xCuLL);
  v15 = vcvts_n_f32_u32(v8->var56, 0xCuLL);
  v16 = vcvts_n_f32_u32(v8->var57, 0xCuLL);
  v17 = vcvts_n_f32_u32(v8->var58, 0xCuLL);
  var4 = v8->var4;
  var5 = v8->var5;
  var6 = v8->var6;
  return [v24 stringWithFormat:@"<%p: %@>: portType: %@, pts:%.3f, currentFrameRate:%.3f, finalCropRect:{origin:(%.3f, %.3f), size:(%.3f, %.3f)}, luxLevel:%d, conversionGain:%d, readNoise_1x:%d, readNoise_8x:%d, normalizedSNR:%f, integrationTime:%f, gain:%f, baseISO:%f, exposureBias:%f, aeAverage:%d, aeFaceAverage:%d, aeTarget:%d, aeLimitsReached:%d, aeStable:%d, aeLocked:%d, motionFromAEMatrix:%d, hasAEStatistics:%d, hrEnabled:%d, sifrGain:%f, afStatus:%d, afLocked:%d, afStationaryCount:%d, focusingMethod:%d, lastFocusingMethod:%d, focusPosition:%d, focusPositionStep:%d, logicalFocusPosition:%d, logicalFocusPositionStep:%d, focusDistance:%f, focusRegionType:%d, tofMeasuredDepth:%f, tofSensorConfidence:%d, tofROIType:%d, afRecommendedPrimaryPortType:%@, afConvergenceRequiresHigherFPSForPortType %@, motionDataStatus:%d, motionDataBiasErrorEstimate:%f, ltmCurve:%d, hasDisplayStrobeRGBEstimate:%d, awbStable:%d, awbLocked:%d, awbRGBGains:(%.3f, %.3f, %.3f), awbComboRGBGains:(%.3f, %.3f, %.3f), awbSkinRGBGains:(%.3f, %.3f, %.3f), awbSpatialCCMMixingFactor:%f, cct:%d, hasCCM:%d", self, v23, portType, *&Seconds, v8->var1, *&v8->var2.origin, *&v8->var2.size.width, *&v8->var2.size.height, v8->var3, var4, var5, var6, v8->var7, *&v8->var9, v8->var14, v8->var15, *&v8->var16, v8->var17, v8->var18, v8->var19, v8->var20, v8->var21, v8->var22, v8->var23, self->_aeStatistics != 0, v8->var24, v8->var25, v8->var26, v8->var27, v8->var28, v8->var29, v8->var30, v8->var31, v8->var32, v8->var33, v8->var34, v8->var37, v8->var38, v8->var39, v8->var40, v8->var41, v8->var42, v8->var44, v8->var45, v8->var46, v8->var47, self->_displayStrobeRGBEstimate != 0, v8->var48, v8->var49, *&v9, *&v10, *&v11, *&v12, *&v13, *&v14, *&v15, *&v16, *&v17, (v8->var59 * 0.0039062)];
}

- (void)initWthPortType:(uint64_t)a3 storage:
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = BWFrameStatistics;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  if (v5)
  {
    v5[1] = a2;
    v5[5] = a3;
  }

  return v5;
}

- (void)reset
{
  if (a1)
  {

    a1[2] = 0;
    a1[3] = 0;

    a1[4] = 0;
  }
}

@end