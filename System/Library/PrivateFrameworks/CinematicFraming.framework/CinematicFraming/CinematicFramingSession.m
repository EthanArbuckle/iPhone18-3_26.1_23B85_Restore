@interface CinematicFramingSession
- (CGRect)currentViewport;
- (CGRect)displayViewport;
- (CGRect)idealViewport;
- (CGRect)outputFramingRectOfInterest;
- (CGRect)processWithMetadata:(id)a3;
- (CGRect)targetViewport;
- (CGRect)warpBoundingBoxInFrameCoordinatesToDisplayCoordinates:(CGRect)a3;
- (CinematicFramingSession)init;
- (CinematicFramingSession)initWithOutputDimensions:(id)a3;
- (CinematicFramingSession)initWithOutputDimensions:(id)a3 mode:(int)a4 portType:(id)a5 deviceModelName:(id)a6;
- (CinematicFramingSession)initWithOutputDimensions:(id)a3 portType:(id)a4 deviceModelName:(id)a5;
- (NSArray)roiHeatMapCounts;
- (int)processPixelBuffer:(__CVBuffer *)a3 outputPixelBuffer:(__CVBuffer *)a4;
- (uint64_t)init;
- (void)_updateROIHeatMapCountersWithCropRect:(CGRect)a3;
- (void)init;
- (void)setCameraOrientation:(int)a3;
- (void)setFramingStyle:(int)a3;
- (void)setOutputFramingRectOfInterest:(CGRect)a3;
@end

@implementation CinematicFramingSession

- (CinematicFramingSession)init
{
  v10.receiver = self;
  v10.super_class = CinematicFramingSession;
  v2 = [(CinematicFramingSession *)&v10 init];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = [MEMORY[0x277CCA8D8] bundleWithIdentifier:@"com.apple.CinematicFraming"];
  if (!v3)
  {
    [CinematicFramingSession init];
LABEL_7:
    v8 = 0;
    goto LABEL_8;
  }

  v4 = v3;
  v5 = [v3 pathForResource:@"cinematicFramingParameters" ofType:@"plist"];
  v6 = [[CinematicFramingSessionOptions alloc] initWithPlistPath:v5];
  options = v2->_options;
  v2->_options = v6;

  if (!v2->_options)
  {
    [(CinematicFramingSession *)v5 init];
    goto LABEL_7;
  }

  v8 = v2;

LABEL_8:
  return v8;
}

- (CinematicFramingSession)initWithOutputDimensions:(id)a3 mode:(int)a4 portType:(id)a5 deviceModelName:(id)a6
{
  v8 = a5;
  v9 = [(CinematicFramingSession *)self initWithOutputDimensions:a3];
  v10 = isCinematicFramingFrontCamera(v8);

  [(CinematicFramingRenderer *)v9->_renderer setIsFrontCamera:v10];
  return v9;
}

- (CinematicFramingSession)initWithOutputDimensions:(id)a3 portType:(id)a4 deviceModelName:(id)a5
{
  v7 = a4;
  v8 = [(CinematicFramingSession *)self initWithOutputDimensions:a3];
  v9 = isCinematicFramingFrontCamera(v7);

  [(CinematicFramingRenderer *)v8->_renderer setIsFrontCamera:v9];
  return v8;
}

- (CinematicFramingSession)initWithOutputDimensions:(id)a3
{
  v3 = self;
  v4 = 0;
  var1 = a3.var1;
  if (a3.var1)
  {
    var0 = a3.var0;
    if (a3.var0)
    {
      v7 = [(CinematicFramingSession *)self init];
      v3 = v7;
      if (v7)
      {
        v7->_outputDimensions.width = var0;
        v7->_outputDimensions.height = var1;
        v8 = [[CinematicFramingRenderer alloc] initWithOutputDimensions:*&v7->_outputDimensions];
        renderer = v3->_renderer;
        v3->_renderer = v8;

        if (v3->_renderer)
        {
          v10 = [[CinematicFramingDirector alloc] initWithFramingSpaceManager:v3->_renderer];
          director = v3->_director;
          v3->_director = v10;

          if (v3->_director)
          {
            [(CinematicFramingSession *)v3 setFramingStyle:0];
            v3->_calibrationDataRegistered = 0;
            v3 = v3;
            v4 = v3;
            goto LABEL_10;
          }

          [CinematicFramingSession initWithOutputDimensions:];
        }

        else
        {
          [CinematicFramingSession initWithOutputDimensions:];
        }
      }

      v4 = 0;
    }
  }

LABEL_10:

  return v4;
}

- (NSArray)roiHeatMapCounts
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = 0;
  roiHeatMap = self->_roiHeatMap;
  do
  {
    v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:roiHeatMap[v4]];
    [v3 addObject:v6];

    ++v4;
  }

  while (v4 != 64);

  return v3;
}

- (void)setFramingStyle:(int)a3
{
  if (a3 <= 4)
  {
    self->_framingStyle = a3;
    v5 = [(CinematicFramingSessionOptions *)self->_options optionsForFramingStyle:?];
    [(CinematicFramingRenderer *)self->_renderer setOptions:v5];

    v6 = [(CinematicFramingSessionOptions *)self->_options optionsForFramingStyle:self->_framingStyle];
    [(CinematicFramingDirector *)self->_director setOptions:v6];

    framingStyle = self->_framingStyle;
    director = self->_director;

    [(CinematicFramingDirector *)director setFramingStyle:framingStyle];
  }
}

- (CGRect)currentViewport
{
  [(CinematicFramingDirector *)self->_director currentViewport];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)targetViewport
{
  [(CinematicFramingDirector *)self->_director targetViewport];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)idealViewport
{
  [(CinematicFramingDirector *)self->_director idealViewport];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setCameraOrientation:(int)a3
{
  v3 = *&a3;
  if ([(CinematicFramingRenderer *)self->_renderer cameraOrientation]!= a3)
  {
    renderer = self->_renderer;
    [(CinematicFramingDirector *)self->_director currentViewport];
    [(CinematicFramingRenderer *)renderer computeNewCoordinatesInOrientation:v3 forViewportInCurrentOrientation:?];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [(CinematicFramingRenderer *)self->_renderer setCameraOrientation:v3];
    director = self->_director;

    [(CinematicFramingDirector *)director resetCameraViewport:v7, v9, v11, v13];
  }
}

- (CGRect)processWithMetadata:(id)a3
{
  v4 = a3;
  v5 = [v4 portType];
  v6 = v5;
  if (v5)
  {
    if ((isCinematicFramingAllowedCamera(v5) & 1) == 0)
    {
      v32 = *MEMORY[0x277CBF398];
      v34 = *(MEMORY[0x277CBF398] + 8);
      v36 = *(MEMORY[0x277CBF398] + 16);
      v38 = *(MEMORY[0x277CBF398] + 24);
      goto LABEL_12;
    }

    [(CinematicFramingRenderer *)self->_renderer setIsFrontCamera:isCinematicFramingFrontCamera(v6)];
  }

  -[CinematicFramingRenderer setFrontCameraHas180DegreesRotation:](self->_renderer, "setFrontCameraHas180DegreesRotation:", [v4 frontCameraHas180DegreesRotation]);
  renderer = self->_renderer;
  v8 = [v4 calibrationDataDictionary];
  v9 = [(CinematicFramingRenderer *)renderer registerCalibrationData:v8];

  if (!self->_calibrationDataRegistered && !v9)
  {
    self->_calibrationDataRegistered = 1;
    [(CinematicFramingDirector *)self->_director reset];
  }

  v10 = self->_renderer;
  [v4 gravityX];
  v12 = v11;
  [v4 gravityY];
  v14 = v13;
  [v4 gravityZ];
  LODWORD(v16) = v15;
  LODWORD(v17) = v12;
  LODWORD(v18) = v14;
  [(CinematicFramingRenderer *)v10 registerGravityX:v17 y:v18 z:v16];
  v19 = self->_renderer;
  [v4 additionalCameraRotation];
  [(CinematicFramingRenderer *)v19 registerAdditionalCameraRotation:?];
  [(CinematicFramingRenderer *)self->_renderer warpMetadataInInputImageCoordinatesToFramingSpace:v4];
  v20 = [v4 cameraOrientation];
  if (v20 != -1)
  {
    v21 = v20;
    if (v20 != [(CinematicFramingRenderer *)self->_renderer cameraOrientation])
    {
      v22 = self->_renderer;
      [(CinematicFramingDirector *)self->_director currentViewport];
      [(CinematicFramingRenderer *)v22 computeNewCoordinatesInOrientation:v21 forViewportInCurrentOrientation:?];
      v24 = v23;
      v26 = v25;
      v28 = v27;
      v30 = v29;
      [(CinematicFramingRenderer *)self->_renderer setCameraOrientation:v21];
      [(CinematicFramingDirector *)self->_director resetCameraViewport:v24, v26, v28, v30];
    }
  }

  [(CinematicFramingDirector *)self->_director updateWithMetadata:v4];
  [(CinematicFramingDirector *)self->_director currentViewport];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
LABEL_12:

  v39 = v32;
  v40 = v34;
  v41 = v36;
  v42 = v38;
  result.size.height = v42;
  result.size.width = v41;
  result.origin.y = v40;
  result.origin.x = v39;
  return result;
}

- (int)processPixelBuffer:(__CVBuffer *)a3 outputPixelBuffer:(__CVBuffer *)a4
{
  [(CinematicFramingSession *)self currentViewport];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = [(CinematicFramingRenderer *)self->_renderer processBuffer:a3 cropRect:a4 outputPixelBuffer:?];
  if (v15)
  {
    [CinematicFramingSession processPixelBuffer:outputPixelBuffer:];
  }

  else
  {
    [(CinematicFramingSession *)self _updateROIHeatMapCountersWithCropRect:v8, v10, v12, v14];
  }

  return v15;
}

- (CGRect)warpBoundingBoxInFrameCoordinatesToDisplayCoordinates:(CGRect)a3
{
  [(CinematicFramingRenderer *)self->_renderer warpRectInInputImageCoordinatesToFramingSpace:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  renderer = self->_renderer;
  [(CinematicFramingSession *)self currentViewport];
  [(CinematicFramingRenderer *)renderer projectRectInFramingSpace:v5 toDisplayRectInFramingSpace:v7, v9, v11, v13, v14, v15, v16];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  if ([(CinematicFramingRenderer *)self->_renderer cameraOrientationCorrectionEnabled])
  {
    v18 = rotateRectInImageCCW(4 - [(CinematicFramingRenderer *)self->_renderer numCCWRotationsFromInputToFramingSpace], v18, v20, v22, v24);
    v20 = v25;
    v22 = v26;
    v24 = v27;
  }

  [(CinematicFramingRenderer *)self->_renderer outputROI];
  v30 = v28 + v18 * v29;
  v33 = v31 + v20 * v32;
  v34 = v22 * v29;
  v35 = v24 * v32;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v30;
  return result;
}

- (CGRect)outputFramingRectOfInterest
{
  [(CinematicFramingRenderer *)self->_renderer outputROI];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setOutputFramingRectOfInterest:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v12.origin.x = 0.0;
  v12.origin.y = 0.0;
  v12.size.width = 1.0;
  v12.size.height = 1.0;
  v14.origin.x = x;
  v14.origin.y = y;
  v14.size.width = width;
  v14.size.height = height;
  v8 = CGRectContainsRect(v12, v14);
  if (height > 0.0001 && width > 0.0001 && v8)
  {
    [(CinematicFramingRenderer *)self->_renderer outputROI];
    v15.origin.x = x;
    v15.origin.y = y;
    v15.size.width = width;
    v15.size.height = height;
    if (!CGRectEqualToRect(v13, v15))
    {
      [(CinematicFramingRenderer *)self->_renderer setOutputROI:x, y, width, height];
      director = self->_director;

      [(CinematicFramingDirector *)director reset];
    }
  }
}

- (void)_updateROIHeatMapCountersWithCropRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(CinematicFramingRenderer *)self->_renderer framingSpaceBounds];
  v9 = x - v8;
  [(CinematicFramingRenderer *)self->_renderer framingSpaceBounds];
  v11 = v9 / v10;
  [(CinematicFramingRenderer *)self->_renderer framingSpaceBounds];
  v13 = y - v12;
  [(CinematicFramingRenderer *)self->_renderer framingSpaceBounds];
  v15 = v13 / v14;
  [(CinematicFramingRenderer *)self->_renderer framingSpaceBounds];
  v17 = width / v16;
  [(CinematicFramingRenderer *)self->_renderer framingSpaceBounds];
  v19 = height / v18;
  v28.origin.x = v11;
  v28.origin.y = v15;
  v28.size.width = v17;
  v28.size.height = v19;
  if (floor(CGRectGetMinX(v28) * 8.0) >= 0.0)
  {
    v29.origin.x = v11;
    v29.origin.y = v15;
    v29.size.width = v17;
    v29.size.height = v19;
    v20 = vcvtmd_s64_f64(CGRectGetMinX(v29) * 8.0);
  }

  else
  {
    v20 = 0;
  }

  v30.origin.x = v11;
  v30.origin.y = v15;
  v30.size.width = v17;
  v30.size.height = v19;
  if (floor(CGRectGetMinY(v30) * 8.0) >= 0.0)
  {
    v31.origin.x = v11;
    v31.origin.y = v15;
    v31.size.width = v17;
    v31.size.height = v19;
    v21 = vcvtmd_s64_f64(CGRectGetMinY(v31) * 8.0);
  }

  else
  {
    v21 = 0;
  }

  v32.origin.x = v11;
  v32.origin.y = v15;
  v32.size.width = v17;
  v32.size.height = v19;
  if (ceil(CGRectGetMaxX(v32) * 7.0) >= 7.0)
  {
    v22 = 7;
  }

  else
  {
    v33.origin.x = v11;
    v33.origin.y = v15;
    v33.size.width = v17;
    v33.size.height = v19;
    v22 = vcvtpd_s64_f64(CGRectGetMaxX(v33) * 7.0);
  }

  v34.origin.x = v11;
  v34.origin.y = v15;
  v34.size.width = v17;
  v34.size.height = v19;
  if (ceil(CGRectGetMaxY(v34) * 7.0) >= 7.0)
  {
    v23 = 7;
  }

  else
  {
    v35.origin.x = v11;
    v35.origin.y = v15;
    v35.size.width = v17;
    v35.size.height = v19;
    v23 = vcvtpd_s64_f64(CGRectGetMaxY(v35) * 7.0);
  }

  if (v20 <= v22)
  {
    v24 = v21 + 8 * v20;
    do
    {
      v25 = v24;
      v26 = v23 - v21 + 1;
      if (v21 <= v23)
      {
        do
        {
          ++self->_roiHeatMap[v25++];
          --v26;
        }

        while (v26);
      }

      v24 += 8;
    }

    while (v20++ != v22);
  }
}

- (CGRect)displayViewport
{
  x = self->_displayViewport.origin.x;
  y = self->_displayViewport.origin.y;
  width = self->_displayViewport.size.width;
  height = self->_displayViewport.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (void)init
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  FigDebugAssert3();
}

- (uint64_t)init
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithOutputDimensions:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)initWithOutputDimensions:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

- (uint64_t)processPixelBuffer:outputPixelBuffer:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_0_1();
  return FigDebugAssert3();
}

@end