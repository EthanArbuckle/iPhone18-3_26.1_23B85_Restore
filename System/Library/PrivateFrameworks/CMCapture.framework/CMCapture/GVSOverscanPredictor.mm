@interface GVSOverscanPredictor
- (BOOL)predictOverscanFitsFromMetadata:(id)a3 finalCropRect:(CGRect)a4 boundingRect:(CGRect)a5;
- (GVSOverscanPredictor)initWithConfig:(VISOverscanPredictorConfiguration)a3 cameraInfoByPortType:(id)a4 visInputPixelBufferAttributes:(id)a5;
- (__n64)estimateOverscanUseFromRotation:(float32x4_t)a3 focalLength:(float32x4_t)a4 cornerCoords:;
- (int)computeFocalLength:(float *)a3 fromMetadata:(id)a4;
- (int)estimateOverscanUseFromMetadata:(id)a3 finalCropRect:(CGRect)a4;
- (int)parseCameraInfoByPortType:(id)a3;
- (void)resetAndClear;
- (void)setCameraAlignmentForPortType:(id)a3;
@end

@implementation GVSOverscanPredictor

- (GVSOverscanPredictor)initWithConfig:(VISOverscanPredictorConfiguration)a3 cameraInfoByPortType:(id)a4 visInputPixelBufferAttributes:(id)a5
{
  v6 = v5;
  v9 = a5;
  v10 = v6;
  v22.receiver = self;
  v22.super_class = GVSOverscanPredictor;
  v11 = [(GVSOverscanPredictor *)&v22 init];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_12;
  }

  *v11->_margin = *(a4 + 1);
  v13 = *(a4 + 4);
  v11->_detectionTimeoutSeconds = v13;
  v11->_resetTimeoutSeconds = v13;
  v14 = [VISRotationCorrectionEstimator alloc];
  LODWORD(v15) = *a4;
  v16 = [(VISRotationCorrectionEstimator *)v14 initWithTimeScale:v15];
  v17 = v12[11];
  v12[11] = v16;

  if (!*&v12[11])
  {
    [GVSOverscanPredictor initWithConfig:cameraInfoByPortType:visInputPixelBufferAttributes:];
LABEL_19:
    v20 = 0;
    goto LABEL_13;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    [GVSOverscanPredictor initWithConfig:cameraInfoByPortType:visInputPixelBufferAttributes:];
    goto LABEL_19;
  }

  if (!FigCFDictionaryGetInt32IfPresent())
  {
    [GVSOverscanPredictor initWithConfig:cameraInfoByPortType:visInputPixelBufferAttributes:];
    goto LABEL_19;
  }

  v18.f32[0] = -1;
  v18.f32[1] = -1;
  v12[2] = 0;
  v12[3] = vmul_f32(v18, 0x3F0000003F000000);
  v19 = v12[1];
  if (v19.f32[0] < 0.0)
  {
    v19.f32[0] = 0 * 8388600.0;
    v12[1] = v19;
  }

  if (v19.f32[1] < 0.0)
  {
    v19.f32[1] = 0 * 8388600.0;
    v12[1] = v19;
  }

  [(float32x2_t *)v12 resetAndClear];
  if ([(float32x2_t *)v12 parseCameraInfoByPortType:v9])
  {
    [GVSOverscanPredictor initWithConfig:cameraInfoByPortType:visInputPixelBufferAttributes:];
    goto LABEL_19;
  }

  if (!*&v12[12])
  {
    [GVSOverscanPredictor initWithConfig:cameraInfoByPortType:visInputPixelBufferAttributes:];
    goto LABEL_19;
  }

  objc_storeStrong(&v12[10], *off_1E798A0C0);
  [(float32x2_t *)v12 setCameraAlignmentForPortType:*&v12[10]];
LABEL_12:
  v20 = v12;
LABEL_13:

  return v20;
}

- (int)parseCameraInfoByPortType:(id)a3
{
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  pixelSizeByPortType = [v3 allKeys];
  v6 = [pixelSizeByPortType countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v22;
    v9 = *off_1E7989F18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(pixelSizeByPortType);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v3 objectForKeyedSubscript:v11];
        v13 = [v12 objectForKeyedSubscript:v9];
        v14 = v13;
        if (!v13 || ([v13 floatValue], v15 <= 0.0))
        {
          [(GVSOverscanPredictor *)v14 parseCameraInfoByPortType:v12];
          v17 = -12780;
          goto LABEL_12;
        }

        [v4 setObject:v14 forKeyedSubscript:v11];
      }

      v7 = [pixelSizeByPortType countByEnumeratingWithState:&v21 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = v4;
  v17 = 0;
  pixelSizeByPortType = self->_pixelSizeByPortType;
  self->_pixelSizeByPortType = v16;
LABEL_12:

  return v17;
}

- (void)setCameraAlignmentForPortType:(id)a3
{
  v6 = a3;
  if ([v6 isEqualToString:*off_1E798A0E0])
  {
    v4 = xmmword_1AD0562F0;
  }

  else
  {
    if ([v6 isEqualToString:*off_1E798A0F8])
    {
      v5 = -1;
    }

    else
    {
      v5 = 0;
    }

    v4 = vbslq_s8(vdupq_n_s32(v5), xmmword_1AD0562F0, xmmword_1AD056300);
  }

  *self->_anon_20 = v4;
}

- (void)resetAndClear
{
  self->_latestSampleTimestamp = 0.0;
  *self->_estimatedCorrection = 0u;
  *self->_estimatedOverscan = 0u;
  [(GVSOverscanPredictor *)self resetPrediction];
  visEstimator = self->_visEstimator;

  [(VISRotationCorrectionEstimator *)visEstimator reset];
}

- (int)computeFocalLength:(float *)a3 fromMetadata:(id)a4
{
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:*off_1E798B530];
  v8 = [v6 objectForKeyedSubscript:*off_1E798B540];
  v9 = [(NSDictionary *)self->_pixelSizeByPortType objectForKeyedSubscript:v8];
  if (!a3)
  {
    [GVSOverscanPredictor computeFocalLength:fromMetadata:];
    v13 = -12782;
    goto LABEL_11;
  }

  if (!v7 || ([v7 floatValue], v10 <= 0.0))
  {
    [GVSOverscanPredictor computeFocalLength:fromMetadata:];
LABEL_16:
    v13 = -12780;
    goto LABEL_11;
  }

  if (!v8)
  {
    [GVSOverscanPredictor computeFocalLength:fromMetadata:];
    goto LABEL_16;
  }

  if (!v9)
  {
    [GVSOverscanPredictor computeFocalLength:fromMetadata:];
    goto LABEL_16;
  }

  v11 = [v6 objectForKeyedSubscript:*off_1E798B588];
  if ([v11 intValue] < 1)
  {
    v12 = 0x100000001;
  }

  else
  {
    v12 = vdup_n_s32([v11 intValue]);
  }

  v18 = v12;

  v19 = 1.0;
  v13 = FigMotionComputeLensPositionScalingFactor(v6, *self->_imageSize, HIDWORD(*self->_imageSize), v18.i32[0], v18.u32[1], &v19);
  if (v13)
  {
    [GVSOverscanPredictor computeFocalLength:fromMetadata:];
  }

  else
  {
    [v7 floatValue];
    v15 = v14;
    [v9 floatValue];
    *a3 = (v15 / v16) * v19;
  }

LABEL_11:

  return v13;
}

- (__n64)estimateOverscanUseFromRotation:(float32x4_t)a3 focalLength:(float32x4_t)a4 cornerCoords:
{
  v4 = vrecpe_f32(a2.u32[0]);
  LODWORD(v5) = vmul_f32(v4, vrecps_f32(a2.u32[0], v4)).u32[0];
  v4.i32[0] = a1.n128_i32[2];
  v6 = vmulq_n_f32(a3, v5);
  v7 = vminvq_f32(a3);
  v8 = vmaxvq_f32(a3);
  v9 = vmlaq_lane_f32(vmlsq_lane_f32(a3, a4, v4, 0), vdupq_lane_s32(a2, 0), a1.n128_u64[0], 1);
  v10 = vmulq_n_f32(a4, v5);
  __asm { FMOV            V4.4S, #1.0 }

  v16 = vmlaq_n_f32(_Q4, v10, a1.n128_f32[0]);
  a1.n128_u32[0] = a1.n128_u32[1];
  v17 = vmlsq_lane_f32(v16, v6, a1.n128_u64[0], 0);
  v10.i64[0] = 0x3400000034000000;
  v10.i64[1] = 0x3400000034000000;
  v18 = vmaxnmq_f32(vabsq_f32(v17), v10);
  v10.i64[0] = 0x8000000080000000;
  v10.i64[1] = 0x8000000080000000;
  v19 = vorrq_s8(vandq_s8(v17, v10), vabsq_f32(v18));
  v20 = vrecpeq_f32(v19);
  v21 = vmulq_f32(v9, vmulq_f32(v20, vrecpsq_f32(v19, v20)));
  result.n64_f32[0] = v7 - vminvq_f32(v21);
  result.n64_f32[1] = vmaxvq_f32(v21) - v8;
  return result;
}

- (int)estimateOverscanUseFromMetadata:(id)a3 finalCropRect:(CGRect)a4
{
  v5 = a3;
  v6 = [v5 allKeys];
  v7 = [v6 containsObject:*off_1E798B3D0];

  if (v7)
  {
    v30 = 0;
    MotionDataFromISP = FigMotionGetMotionDataFromISP(v5, self->_rawQuaternionArray, 0, 36, &v30, 0, 0, 0, 0);
    if (MotionDataFromISP)
    {
      v26 = MotionDataFromISP;
      [GVSOverscanPredictor estimateOverscanUseFromMetadata:finalCropRect:];
    }

    else if (v30 <= 0)
    {
      [GVSOverscanPredictor estimateOverscanUseFromMetadata:finalCropRect:];
      v26 = 0;
    }

    else
    {
      v29 = 0;
      v9 = [(GVSOverscanPredictor *)self computeFocalLength:&v29 fromMetadata:v5];
      if (v9)
      {
        v26 = v9;
        [GVSOverscanPredictor estimateOverscanUseFromMetadata:finalCropRect:];
      }

      else
      {
        v10 = v30;
        if (v30 < 1)
        {
          v14 = 0uLL;
        }

        else
        {
          v11 = 0;
          latestSampleTimestamp = self->_latestSampleTimestamp;
          p_timestamp = &self->_rawQuaternionArray[0].timestamp;
          v14 = 0uLL;
          do
          {
            if (*p_timestamp > latestSampleTimestamp)
            {
              v28 = v14;
              v15 = p_timestamp[2];
              v16 = p_timestamp[3];
              v17 = p_timestamp[4];
              v18 = p_timestamp[1];
              v19 = *self->_anon_20;
              v20 = vnegq_f32(v19);
              v21 = vtrn2q_s32(v19, vtrn1q_s32(v19, v20));
              v22 = vmlaq_n_f32(vmulq_n_f32(vextq_s8(v19, v20, 8uLL), v16), vextq_s8(v21, v21, 8uLL), v15);
              v23 = vrev64q_s32(v19);
              v23.i32[0] = v20.i32[1];
              v23.i32[3] = v20.i32[2];
              [(VISRotationCorrectionEstimator *)self->_visEstimator updateWithRotation:*vaddq_f32(v22 atTime:vmlaq_n_f32(vmulq_n_f32(v19, v18), v23, v17)).i64, *p_timestamp];
              [(VISRotationCorrectionEstimator *)self->_visEstimator estimatedCorrection];
              *self->_estimatedCorrection = v24;
              [GVSOverscanPredictor estimateOverscanUseFromRotation:"estimateOverscanUseFromRotation:focalLength:cornerCoords:" focalLength:? cornerCoords:?];
              v14 = vmaxnmq_f32(v28, v25);
              latestSampleTimestamp = *p_timestamp;
              self->_latestSampleTimestamp = *p_timestamp;
              v10 = v30;
            }

            ++v11;
            p_timestamp += 6;
          }

          while (v11 < v10);
        }

        v26 = 0;
        *self->_estimatedOverscan = v14;
      }
    }
  }

  else
  {
    [GVSOverscanPredictor estimateOverscanUseFromMetadata:finalCropRect:];
    v26 = -12780;
  }

  return v26;
}

- (BOOL)predictOverscanFitsFromMetadata:(id)a3 finalCropRect:(CGRect)a4 boundingRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v9 = a4.size.height;
  v10 = a4.size.width;
  v11 = a4.origin.y;
  v12 = a4.origin.x;
  v14 = a3;
  v15 = [v14 objectForKeyedSubscript:*off_1E798B540];
  v16 = [v14 allKeys];
  v17 = [v16 containsObject:*off_1E798B3D0];

  if ((v17 & 1) == 0)
  {
    [GVSOverscanPredictor predictOverscanFitsFromMetadata:finalCropRect:boundingRect:];
LABEL_17:
    [(GVSOverscanPredictor *)self resetPrediction];
    v26 = 0;
    goto LABEL_12;
  }

  if (!v15)
  {
    [GVSOverscanPredictor predictOverscanFitsFromMetadata:finalCropRect:boundingRect:];
    goto LABEL_17;
  }

  if (![(NSString *)self->_previousPort isEqualToString:v15])
  {
    [(GVSOverscanPredictor *)self setCameraAlignmentForPortType:v15];
    objc_storeStrong(&self->_previousPort, v15);
  }

  if ([(GVSOverscanPredictor *)self estimateOverscanUseFromMetadata:v14 finalCropRect:v12, v11, v10, v9])
  {
    [GVSOverscanPredictor predictOverscanFitsFromMetadata:finalCropRect:boundingRect:];
    goto LABEL_17;
  }

  overscanFitsTimestamp = self->_overscanFitsTimestamp;
  if (overscanFitsTimestamp < 0.0)
  {
    overscanFitsTimestamp = self->_latestSampleTimestamp + self->_resetTimeoutSeconds;
    self->_overscanFitsTimestamp = overscanFitsTimestamp;
  }

  v20.f32[0] = v12 - x;
  *v18.i32 = v11 - y;
  v21 = width - v10;
  v22 = height - v9;
  v20.f32[1] = v21 - v20.f32[0];
  v20.i64[1] = __PAIR64__(v22 - *v18.i32, v18.u32[0]);
  v18.i64[0] = *self->_margin;
  v23 = vsubq_f32(v20, vzip1q_s32(v18, v18));
  if (vminvq_f32(v23) <= 0.0)
  {
    [GVSOverscanPredictor predictOverscanFitsFromMetadata:finalCropRect:boundingRect:];
    goto LABEL_17;
  }

  v24 = vminvq_f32(vsubq_f32(v23, *self->_estimatedOverscan));
  latestSampleTimestamp = self->_latestSampleTimestamp;
  if (v24 <= 0.0)
  {
    overscanFitsTimestamp = fmax(overscanFitsTimestamp, latestSampleTimestamp + self->_detectionTimeoutSeconds);
    self->_overscanFitsTimestamp = overscanFitsTimestamp;
  }

  v26 = latestSampleTimestamp > overscanFitsTimestamp;
LABEL_12:

  return v26;
}

- (uint64_t)initWithConfig:cameraInfoByPortType:visInputPixelBufferAttributes:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)initWithConfig:cameraInfoByPortType:visInputPixelBufferAttributes:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithConfig:cameraInfoByPortType:visInputPixelBufferAttributes:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithConfig:cameraInfoByPortType:visInputPixelBufferAttributes:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithConfig:cameraInfoByPortType:visInputPixelBufferAttributes:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (void)parseCameraInfoByPortType:(void *)a1 .cold.1(void *a1, void *a2)
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  FigDebugAssert3();
}

- (uint64_t)computeFocalLength:fromMetadata:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)computeFocalLength:fromMetadata:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)computeFocalLength:fromMetadata:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)computeFocalLength:fromMetadata:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)computeFocalLength:fromMetadata:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)estimateOverscanUseFromMetadata:finalCropRect:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)estimateOverscanUseFromMetadata:finalCropRect:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)estimateOverscanUseFromMetadata:finalCropRect:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)estimateOverscanUseFromMetadata:finalCropRect:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)predictOverscanFitsFromMetadata:finalCropRect:boundingRect:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)predictOverscanFitsFromMetadata:finalCropRect:boundingRect:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)predictOverscanFitsFromMetadata:finalCropRect:boundingRect:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)predictOverscanFitsFromMetadata:finalCropRect:boundingRect:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end