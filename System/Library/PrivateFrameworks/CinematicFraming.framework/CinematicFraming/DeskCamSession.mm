@interface DeskCamSession
- (CGRect)rectangleForZoomFactorValue:(float)a3;
- (DeskCamSession)initWithOutputDimensions:(id)a3 portType:(id)a4 deviceModelName:(id)a5;
- (DeskCamSessionDelegate)delegate;
- (int)_deviceType;
- (int)processPixelBuffer:(__CVBuffer *)a3 withMetadata:(id)a4 outputPixelBuffer:(__CVBuffer *)a5;
@end

@implementation DeskCamSession

- (DeskCamSession)initWithOutputDimensions:(id)a3 portType:(id)a4 deviceModelName:(id)a5
{
  v9 = a4;
  v10 = a5;
  v26.receiver = self;
  v26.super_class = DeskCamSession;
  v11 = [(DeskCamSession *)&v26 init];
  if (!v11)
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_13;
  }

  v12 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CinematicFraming"];
  if (!v12)
  {
    [DeskCamSession initWithOutputDimensions:portType:deviceModelName:];
    goto LABEL_12;
  }

  v13 = 0;
  if (HIDWORD(*&a3) && a3.var0)
  {
    if (isDeskCamAllowedCamera(v9))
    {
      *(v11 + 28) = a3;
      objc_storeStrong(v11 + 5, a4);
      objc_storeStrong(v11 + 6, a5);
      v11[164] = [*(v11 + 5) isEqualToString:*MEMORY[0x277CF3D20]];
      v14 = [v11 _deviceType];
      *(v11 + 14) = v14;
      if (v14)
      {
        v15 = [[DeskCamSessionOptions alloc] initWithDeviceType:*(v11 + 14)];
        v16 = *(v11 + 2);
        *(v11 + 2) = v15;

        if (*(v11 + 2))
        {
          v17 = [[DeskCamRenderingSession alloc] initWithOutputDimensions:*(v11 + 28) portType:*(v11 + 5) deviceType:*(v11 + 14) isFrontFacingCamera:v11[164]];
          v18 = *(v11 + 1);
          *(v11 + 1) = v17;

          v19 = *(v11 + 1);
          if (v19)
          {
            [v19 setOptions:*(v11 + 2)];
            *(v11 + 6) = 0;
            __asm { FMOV            V0.2S, #-1.0 }

            *(v11 + 19) = _D0;
            v11[144] = 1;
            v13 = v11;
            goto LABEL_13;
          }

          [DeskCamSession initWithOutputDimensions:portType:deviceModelName:];
        }

        else
        {
          [DeskCamSession initWithOutputDimensions:portType:deviceModelName:];
        }
      }

      else
      {
        [DeskCamSession initWithOutputDimensions:portType:deviceModelName:];
      }
    }

LABEL_12:
    v13 = 0;
  }

LABEL_13:

  return v13;
}

- (int)_deviceType
{
  if (*(&self->_autoZoomValue + 4) != 1)
  {
    return 1;
  }

  v2 = MGCopyAnswer();
  if ([v2 containsString:@"MacBook"])
  {
    v3 = 2;
  }

  else if ([v2 containsString:@"iMac"])
  {
    v3 = 3;
  }

  else
  {
    v4 = [v2 lowercaseString];
    v5 = [v4 containsString:@"display"];

    if (v5)
    {
      v3 = 4;
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (CGRect)rectangleForZoomFactorValue:(float)a3
{
  [(DeskCamRenderingSession *)self->_renderingSession rectangleForZoomFactorValue:?];
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (int)processPixelBuffer:(__CVBuffer *)a3 withMetadata:(id)a4 outputPixelBuffer:(__CVBuffer *)a5
{
  v8 = a4;
  renderingSession = self->_renderingSession;
  v10 = [v8 cameraCalibrationDictionary];
  [(DeskCamRenderingSession *)renderingSession registerCameraCalibrationDictionary:v10];

  -[DeskCamRenderingSession registerCameraOrientation:](self->_renderingSession, "registerCameraOrientation:", [v8 cameraOrientation]);
  v11 = self->_renderingSession;
  v12 = [v8 bodyDetections];
  [(DeskCamRenderingSession *)v11 registerBodyDetections:v12];

  [v8 gravity];
  v14 = vmvnq_s8(vorrq_s8(vcltzq_f32(v13), vcgezq_f32(v13)));
  v14.i32[3] = v14.i32[2];
  if ((vmaxvq_u32(v14) & 0x80000000) != 0)
  {
    v16.i64[0] = 0x3F0000003FLL;
    v16.i64[1] = 0x3F0000003FLL;
    *&v15 = vnegq_f32(v16).u64[0];
  }

  else
  {
    [v8 gravity];
  }

  [(DeskCamRenderingSession *)self->_renderingSession registerGravity:v15];
  if (self->_outputType)
  {
    [(DeskCamRenderingSession *)self->_renderingSession registerOutputType:?];
    v17 = [(DeskCamRenderingSession *)self->_renderingSession processBuffer:a3 outputPixelBuffer:a5];
    if (v17)
    {
      v31 = v17;
      [DeskCamSession processPixelBuffer:withMetadata:outputPixelBuffer:];
    }

    else
    {
      [(DeskCamRenderingSession *)self->_renderingSession trapezoid];
      *&self->_anon_40[4] = v18;
      *&self->_anon_40[12] = v19;
      *&self->_anon_40[20] = v20;
      *&self->_anon_40[28] = v21;
      [(DeskCamRenderingSession *)self->_renderingSession transformMatrix];
      *&self->_anon_60[12] = v22;
      *&self->_anon_60[4] = v23;
      *&self->_anon_60[28] = v24;
      *&self->_anon_60[20] = v25;
      *&self->_anon_60[44] = v26;
      *&self->_anon_60[36] = v27;
      self->_focusPoint[3] = [(DeskCamRenderingSession *)self->_renderingSession transformIsValid];
      [(DeskCamRenderingSession *)self->_renderingSession focusPoint];
      *&self->_exifOrientation = v28;
      LODWORD(self->_autoZoomValue) = [(DeskCamRenderingSession *)self->_renderingSession exifOrientation];
      [(DeskCamRenderingSession *)self->_renderingSession autoZoomValue];
      LODWORD(self->_delegate) = v29;
      *(&self->_autoZoomValue + 5) = [(DeskCamRenderingSession *)self->_renderingSession autoZoomSupported];
      if ([(DeskCamRenderingSession *)self->_renderingSession gravityVectorUpdated])
      {
        v30 = [(DeskCamSession *)self delegate];
        [v30 deskViewTrapezoidDidUpdate];
      }

      v31 = 0;
    }
  }

  else
  {
    [DeskCamSession processPixelBuffer:withMetadata:outputPixelBuffer:];
    v31 = -1;
  }

  return v31;
}

- (DeskCamSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self[1].super.isa);

  return WeakRetained;
}

- (uint64_t)initWithOutputDimensions:portType:deviceModelName:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithOutputDimensions:portType:deviceModelName:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithOutputDimensions:portType:deviceModelName:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithOutputDimensions:portType:deviceModelName:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)processPixelBuffer:withMetadata:outputPixelBuffer:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

@end