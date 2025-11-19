@interface BWDisparityAPSScaling
- (BWDisparityAPSScaling)initWithDepthScalingTuningParameters:(id)a3;
- (BWDisparityAPSScaling)initWithPortType:(id)a3 sensorIDString:(id)a4;
- (double)adjustedDisparityScaleFactorForDisparityBuffer:(double)result focusRect:(double)a4 focusDisatance:(double)a5 initialScale:(double)a6;
- (float)previewScalingFactorWithDisparityBuffer:(__CVBuffer *)a3 sbuf:(opaqueCMSampleBuffer *)a4;
- (float)stillImageScalingFactorWithDisparityBuffer:(__CVBuffer *)a3 sbuf:(opaqueCMSampleBuffer *)a4 scaleFactorFromEFL:(float)a5;
@end

@implementation BWDisparityAPSScaling

- (BWDisparityAPSScaling)initWithPortType:(id)a3 sensorIDString:(id)a4
{
  v5 = [+[FigCaptureCameraParameters sharedInstance](FigCaptureCameraParameters depthScalingTuneParametersForPortType:"depthScalingTuneParametersForPortType:sensorIDString:" sensorIDString:a3, a4];
  if (v5)
  {

    return [(BWDisparityAPSScaling *)self initWithDepthScalingTuningParameters:v5];
  }

  else
  {
    [BWDisparityAPSScaling initWithPortType:? sensorIDString:?];
    return 0;
  }
}

- (BWDisparityAPSScaling)initWithDepthScalingTuningParameters:(id)a3
{
  v16.receiver = self;
  v16.super_class = BWDisparityAPSScaling;
  v4 = [(BWDisparityAPSScaling *)&v16 init];
  if (v4)
  {
    [objc_msgSend(a3 objectForKeyedSubscript:{@"FocusRegionDisparityPercentile", "floatValue"}];
    v4->_focusRegionDisparityPercentile = v5;
    if (v5 >= 100.0 && v5 <= 0.0 || ([objc_msgSend(a3 objectForKeyedSubscript:{@"FocusRegionMinArea", "floatValue"}], v4->_focusRegionMinArea = v6, v6 == 0.0) || (objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"FocusRegionMinApsDistanceMeters"), "floatValue"), v4->_focusRegionMinApsDistanceMeters = v7, v7 == 0.0) || (objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"FocusRegionMaxApsDistanceMeters"), "floatValue"), v4->_focusRegionMaxApsDistanceMeters = v8, v8 == 0.0) || (objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"FocusRegionMinDisparityDistanceMeters"), "floatValue"), v4->_focusRegionMinDisparityDistanceMeters = v9, v9 == 0.0) || (objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"FocusRegionMaxDisparityDistanceMeters"), "floatValue"), v4->_focusRegionMaxDisparityDistanceMeters = v10, v10 == 0.0) || (objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"ScaleRecoveryMinScalingFactor"), "floatValue"), v4->_scaleRecoveryMinScalingFactor = v11, v11 == 0.0) || (objc_msgSend(objc_msgSend(a3, "objectForKeyedSubscript:", @"ScaleRecoveryMaxScalingFactor"), "floatValue"), v4->_scaleRecoveryMaxScalingFactor = v12, v12 == 0.0))
    {

      return 0;
    }

    else
    {
      v13 = [objc_msgSend(a3 objectForKeyedSubscript:{@"FocusRegionDisparitySamplingRate", "intValue"}];
      if (v13 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      v4->_focusRegionDisparitySamplingRate = v14;
    }
  }

  return v4;
}

- (float)stillImageScalingFactorWithDisparityBuffer:(__CVBuffer *)a3 sbuf:(opaqueCMSampleBuffer *)a4 scaleFactorFromEFL:(float)a5
{
  if ([(BWDisparityAPSScaling *)self isAPSScalingNeededForSbuf:a4])
  {
    if (!BWPortraitUtilitiesAttachSyntheticFocusRectangleToSampleBuffer(a4))
    {
      v9 = CMGetAttachment(a4, *off_1E798D340, 0);
      v10 = CMGetAttachment(a4, *off_1E798A3C8, 0);
      v11 = *(MEMORY[0x1E695F050] + 16);
      v15.origin = *MEMORY[0x1E695F050];
      v15.size = v11;
      if (CGRectMakeWithDictionaryRepresentation(v9, &v15))
      {
        [objc_msgSend(v10 objectForKeyedSubscript:{*off_1E798B2F0), "floatValue"}];
        v13 = [(BWDisparityAPSScaling *)self adjustedDisparityScaleFactorForDisparityBuffer:a3 focusRect:v15.origin.x focusDisatance:v15.origin.y initialScale:v15.size.width, v15.size.height, v12 / 100.0, a5];
        return *&v13;
      }
    }
  }

  return a5;
}

- (double)adjustedDisparityScaleFactorForDisparityBuffer:(double)result focusRect:(double)a4 focusDisatance:(double)a5 initialScale:(double)a6
{
  if (!a1)
  {
    return 0.0;
  }

  v12 = result;
  v14 = 1.0;
  if (a5 * a6 > *(a1 + 12) && *(a1 + 20) > a7 && *(a1 + 16) < a7)
  {
    v17 = 0.0;
    if (a2)
    {
      v18 = *(a1 + 8);
      v19 = *(a1 + 40);
      v44.origin.x = OUTLINED_FUNCTION_1_88();
      if (!CGRectIsEmpty(v44))
      {
        FigCaptureUnityRect();
        v45.origin.x = OUTLINED_FUNCTION_1_88();
        CGRectIntersection(v45, v46);
        v20 = OUTLINED_FUNCTION_0_79();
        CVPixelBufferGetWidth(v20);
        CVPixelBufferGetHeight(a2);
        FigCaptureDenormalizeCropRect(a6, a5, a4, v12);
        v21 = OUTLINED_FUNCTION_0_79();
        PixelFormatType = CVPixelBufferGetPixelFormatType(v21);
        v23 = FigDepthBytesPerPixelForDepthFormat(PixelFormatType);
        BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
        IOSurface = CVPixelBufferGetIOSurface(a2);
        if (!IOSurface || (v26 = IOSurface, IOSurfaceLock(IOSurface, 5u, 0)))
        {
          fig_log_get_emitter();
          OUTLINED_FUNCTION_2_33();
          FigDebugAssert3();
        }

        else
        {
          buffer = v26;
          v27 = llround(v12);
          BaseAddress = IOSurfaceGetBaseAddress(v26);
          v29 = [MEMORY[0x1E695DF70] array];
          if (v27 >= 1)
          {
            v31 = 0;
            v32 = llround(a4);
            v33 = BytesPerRow / v23;
            v34 = BaseAddress + 2 * BytesPerRow / v23 * llround(a5) + 2 * llround(a6);
            v35 = v33 * v19;
            do
            {
              if (v32 >= 1)
              {
                for (i = 0; i < v32; i += v19)
                {
                  LOWORD(_D0) = *(v34 + 2 * i);
                  __asm { FCVT            S0, H0 }

                  [v29 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", _D0)}];
                }
              }

              v34 += 2 * v35;
              v31 += v19;
            }

            while (v31 < v27);
          }

          IOSurfaceUnlock(buffer, 5u, 0);
          v41 = [v29 sortedArrayUsingSelector:sel_compare_];
          [objc_msgSend(v41 objectAtIndexedSubscript:{fmaxf(floorf((v18 * objc_msgSend(v41, "count")) / 100.0) + -1.0, 0.0)), "floatValue"}];
          v17 = *&result;
        }
      }
    }

    v14 = 1.0;
    v42 = 1.0 / fmaxf(v17 * a8, 0.001);
    if (v42 > *(a1 + 24) && v42 < *(a1 + 28))
    {
      v14 = (1.0 / fmaxf(a7, 0.001)) * v42;
      if (v14 >= *(a1 + 36))
      {
        v14 = *(a1 + 36);
      }

      if (v14 < *(a1 + 32))
      {
        v14 = *(a1 + 32);
      }
    }
  }

  *&result = v14 * a8;
  return result;
}

- (float)previewScalingFactorWithDisparityBuffer:(__CVBuffer *)a3 sbuf:(opaqueCMSampleBuffer *)a4
{
  v6 = CMGetAttachment(a4, *off_1E798A3C8, 0);
  v7 = [v6 objectForKeyedSubscript:*off_1E798B308];
  v8 = 0.0;
  if (v7)
  {
    v9 = [v7 lastObject];
    v10 = *(MEMORY[0x1E695F050] + 16);
    v14.origin = *MEMORY[0x1E695F050];
    v14.size = v10;
    if (CGRectMakeWithDictionaryRepresentation(v9, &v14))
    {
      [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B2F0), "floatValue"}];
      v12 = [(BWDisparityAPSScaling *)self adjustedDisparityScaleFactorForDisparityBuffer:a3 focusRect:v14.origin.x focusDisatance:v14.origin.y initialScale:v14.size.width, v14.size.height, v11 / 100.0, 1.0];
      return *&v12;
    }
  }

  return v8;
}

- (void)initWithPortType:(void *)a1 sensorIDString:.cold.1(void *a1)
{
  fig_log_get_emitter();
  FigDebugAssert3();
}

@end