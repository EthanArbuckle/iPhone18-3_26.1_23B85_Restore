@interface CinematicFramingRenderer
- ($BFB66DEB4EA2CF190BAABA286C893F32)calibrationParams;
- (BOOL)_pointInFramingSpaceLandscapeLeftIsValid:(CGRect)valid withDisplayRect:;
- (CGPoint)_projectPointInFramingSpaceLandscapeLeft:(CGPoint)left toDisplayRectInFramingSpaceLandscapeLeft:(CGRect)landscapeLeft;
- (CGPoint)projectPointInFramingSpace:(CGPoint)space toDisplayRectInFramingSpace:(CGRect)framingSpace;
- (CGRect)_adjustDisplayRectToFitInFramingSpaceLandscapeLeft:(CGRect)left;
- (CGRect)_framingSpaceBoundsLandscapeLeft;
- (CGRect)_moveDisplayRectToFitInFramingSpaceLandscapeLeft:(CGRect)left;
- (CGRect)_projectRectInFramingSpaceLandscapeLeft:(CGRect)left toDisplayRectInFramingSpaceLandscapeLeft:(CGRect)landscapeLeft;
- (CGRect)_warpRectInInputImageCoordinatesToFramingSpaceInLandscapeLeft:(CGRect)left calibrationParameters:(id *)parameters;
- (CGRect)adjustDisplayRectToFitInFramingSpace:(CGRect)space;
- (CGRect)computeNewCoordinatesInOrientation:(int)orientation forViewportInCurrentOrientation:(CGRect)currentOrientation;
- (CGRect)framingSpaceBounds;
- (CGRect)outputROI;
- (CGRect)projectRectInFramingSpace:(CGRect)space toDisplayRectInFramingSpace:(CGRect)framingSpace;
- (CGRect)warpRectInInputImageCoordinatesToFramingSpace:(CGRect)space;
- (CGSize)_scaleDisplayRectSizeToFit:(CGSize)fit;
- (CGSize)_searchValidSizeForStartSize:(CGSize)size invalidPoint:;
- (CinematicFramingRenderer)initWithOutputDimensions:(id)dimensions;
- (double)_rotationMatrixForDisplayRect:(double)rect;
- (float)_getHeightDerivativeForWidth:(float)width widthDerivative:(float)derivative outputAspectRatioInDeviceOrientation:(float)orientation;
- (float)_getHeightForWidth:(float)width outputAspectRatioInDeviceOrientation:(float)orientation;
- (float)_getWidthForHeight:(float)height outputAspectRatioInDeviceOrientation:(float)orientation;
- (float)getHeightDerivativeForWidth:(float)width widthDerivative:(float)derivative;
- (float)getHeightForWidth:(float)width;
- (float)getWidthForHeight:(float)height;
- (float)maxAllowedViewportWidth;
- (float)outputAspectRatioInDeviceOrientation;
- (float32x2_t)_outputPlaneSizeForDisplayRect:(CGFloat)rect;
- (float32x2_t)_searchEarliestValidPointOnIntervalWithStart:(float32x2_t)start andEnd:(CGFloat)end displayRect:(CGFloat)rect;
- (id)_compileComputeShader:(id)shader pixelFormat:(unint64_t)format;
- (int)_compileShaders;
- (int)_createComputePipelinesForShaders:(id)shaders;
- (int)_outputPlaneCcwRotations;
- (int)processBuffer:(__CVBuffer *)buffer cropRect:(CGRect)rect outputPixelBuffer:(__CVBuffer *)pixelBuffer;
- (int)registerCalibrationData:(id)data;
- (uint64_t)_compileShaders;
- (uint64_t)initializeMetal;
- (void)_filterDetectionsInInputImageCoordinates:(id)coordinates trackType:(int64_t)type;
- (void)_setShaderParametersForDisplayRect:(CGRect)rect outputROI:(CGRect)i calibrationParameters:(id *)parameters commandEncoder:(id)encoder;
- (void)dealloc;
- (void)finish;
- (void)initializeMetal;
- (void)registerGravityX:(float)x y:(float)y z:(float)z;
- (void)warpMetadataInInputImageCoordinatesToFramingSpace:(id)space;
@end

@implementation CinematicFramingRenderer

- (CinematicFramingRenderer)initWithOutputDimensions:(id)dimensions
{
  v17.receiver = self;
  v17.super_class = CinematicFramingRenderer;
  v4 = [(CinematicFramingRenderer *)&v17 init];
  v5 = v4;
  if (v4)
  {
    v4->_outputDimensions = dimensions;
    *v4->_gravity = xmmword_2434F7660;
    v4->_additionalCameraRotation = 0.0;
    [(CinematicFramingRenderer *)v4 setCameraOrientation:0];
    v5->_outputROI.origin.x = 0.0;
    v5->_outputROI.origin.y = 0.0;
    __asm { FMOV            V0.2D, #1.0 }

    v5->_outputROI.size = _Q0;
    v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v12 = v5->_kalmanFilterManager[0];
    v5->_kalmanFilterManager[0] = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v14 = v5->_kalmanFilterManager[1];
    v5->_kalmanFilterManager[1] = v13;

    v5->_frontCameraHas180DegreesRotation = 1;
    v15 = v5;
  }

  return v5;
}

- (void)dealloc
{
  [(CinematicFramingRenderer *)self finish];
  cvMetalTextureCacheRef = self->_cvMetalTextureCacheRef;
  if (cvMetalTextureCacheRef)
  {
    CFRelease(cvMetalTextureCacheRef);
  }

  v4.receiver = self;
  v4.super_class = CinematicFramingRenderer;
  [(CinematicFramingRenderer *)&v4 dealloc];
}

- (CGRect)computeNewCoordinatesInOrientation:(int)orientation forViewportInCurrentOrientation:(CGRect)currentOrientation
{
  height = currentOrientation.size.height;
  width = currentOrientation.size.width;
  y = currentOrientation.origin.y;
  x = currentOrientation.origin.x;
  if (orientation)
  {
    v8 = computeNumberOfCCWRotationsFromInputToFramingSpaceForCameraOrientation(orientation, self->_isFrontCamera, self->_frontCameraHas180DegreesRotation) - self->_numCCWRotationsFromInputToFramingSpace + 4;
    v9 = v8 & 3;
    v11 = -v8;
    v10 = v11 < 0;
    v12 = v11 & 3;
    if (v10)
    {
      v13 = v9;
    }

    else
    {
      v13 = -v12;
    }

    x = rotateRectCCW(v13, x, y, width, height);
    y = v14;
    width = v15;
    height = v16;
  }

  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (int)registerCalibrationData:(id)data
{
  if (!data)
  {
    return -12780;
  }

  dataCopy = data;
  v5 = [dataCopy objectForKeyedSubscript:@"IntrinsicMatrixReferenceDimensions"];
  v6 = [v5 objectForKeyedSubscript:@"Width"];
  [v6 floatValue];
  *self->_anon_90 = v7;

  v8 = [dataCopy objectForKeyedSubscript:@"IntrinsicMatrixReferenceDimensions"];
  v9 = [v8 objectForKeyedSubscript:@"Height"];
  [v9 floatValue];
  *&self->_anon_90[4] = v10;

  v11 = [dataCopy objectForKeyedSubscript:@"IntrinsicMatrix"];
  bytes = [v11 bytes];
  v14 = bytes[1];
  v13 = bytes[2];
  *&self->_anon_90[16] = *bytes;
  *&self->_anon_90[32] = v14;
  *&self->_anon_90[48] = v13;
  v15 = *&self->_anon_90[16];
  v16 = *&self->_anon_90[32];
  v17 = *&self->_anon_90[48];
  *&self->_anon_90[72] = v17;
  *&self->_anon_90[88] = DWORD1(v17);
  *&self->_anon_90[64] = vzip1q_s32(v15, v16).u64[0];
  *&self->_anon_90[80] = vtrn2q_s32(v15, v16).u64[0];
  *&self->_anon_90[104] = DWORD2(v17);
  *&self->_anon_90[96] = vzip1q_s32(vdupq_laneq_s32(v15, 2), vdupq_laneq_s32(v16, 2)).u64[0];
  v18 = [dataCopy objectForKeyedSubscript:@"PixelSize"];
  [v18 floatValue];
  v20 = v19;

  *&self->_anon_90[128] = v20 * v20;
  v21 = [dataCopy objectForKeyedSubscript:@"DistortionCalibrationValidMaxRadiusInPixels"];
  v22 = [dataCopy objectForKeyedSubscript:@"LensDistortionCenter"];
  v23 = [v22 objectForKeyedSubscript:@"X"];

  v24 = [dataCopy objectForKeyedSubscript:@"LensDistortionCenter"];
  v25 = [v24 objectForKeyedSubscript:@"Y"];

  v26 = [dataCopy objectForKeyedSubscript:@"LensDistortionCoefficients"];
  v27 = [dataCopy objectForKeyedSubscript:@"InverseLensDistortionCoefficients"];

  if (v21)
  {
    v28 = v23 == 0;
  }

  else
  {
    v28 = 1;
  }

  v31 = v28 || v25 == 0 || v26 == 0 || v27 == 0;
  v32 = !v31;
  self->_anon_90[112] = v32;
  if (v31)
  {
    *&self->_anon_90[132] = 0;
    *&self->_anon_90[120] = 0;
    *&self->_anon_90[168] = 0u;
    *&self->_anon_90[184] = 0u;
    *&self->_anon_90[136] = 0u;
    *&self->_anon_90[152] = 0u;
  }

  else
  {
    *&self->_anon_90[132] = [v21 intValue];
    [v23 floatValue];
    *&self->_anon_90[120] = v33;
    [v25 floatValue];
    *&self->_anon_90[124] = v34;
    bytes2 = [v26 bytes];
    v36 = bytes2[1];
    *&self->_anon_90[168] = *bytes2;
    *&self->_anon_90[184] = v36;
    v37 = &self->_anon_90[136];
    bytes3 = [v27 bytes];
    v39 = bytes3[1];
    *v37 = *bytes3;
    *(v37 + 1) = v39;
  }

  return 0;
}

- (void)registerGravityX:(float)x y:(float)y z:(float)z
{
  v7 = vmulq_f32(*&x, *&x);
  *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  *v7.f32 = vrsqrte_f32(v8);
  *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32)));
  *self->_gravity = vmulq_n_f32(*&x, vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32))).f32[0]);
}

- (int)processBuffer:(__CVBuffer *)buffer cropRect:(CGRect)rect outputPixelBuffer:(__CVBuffer *)pixelBuffer
{
  v77 = 0;
  v78 = 0;
  v74 = 0;
  v75 = 0;
  v8 = rotateRectCCW(4 - self->_numCCWRotationsFromInputToFramingSpace, rect.origin.x, rect.origin.y, rect.size.width, rect.size.height);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  PixelFormatType = CVPixelBufferGetPixelFormatType(buffer);
  if ((PixelFormatIs420(PixelFormatType) & 1) == 0 || (v16 = CVPixelBufferGetPixelFormatType(pixelBuffer), (PixelFormatIs420(v16) & 1) == 0) || CVPixelBufferGetWidth(pixelBuffer) != self->_outputDimensions.width || CVPixelBufferGetHeight(pixelBuffer) != self->_outputDimensions.height)
  {
    fig_log_get_emitter();
LABEL_37:
    FigDebugAssert3();
    computeCommandEncoder = 0;
    v19 = 0;
    v17 = -12780;
    goto LABEL_29;
  }

  if (!self->_commandQueue)
  {
    [(CinematicFramingRenderer *)self initializeMetal];
  }

  v17 = cachedTexturesFromPixelBuffer(buffer, v76, self->_cvMetalTextureCacheRef);
  if (v17)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
LABEL_35:
    computeCommandEncoder = 0;
    v19 = 0;
    goto LABEL_29;
  }

  v17 = cachedTexturesFromPixelBuffer(pixelBuffer, v73, self->_cvMetalTextureCacheRef);
  if (v17)
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    goto LABEL_35;
  }

  if (v73[0] != 2)
  {
    fig_log_get_emitter();
    goto LABEL_37;
  }

  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  v19 = commandBuffer;
  if (commandBuffer)
  {
    [commandBuffer setLabel:@"CinematicFramingRenderer.processBuffer"];
    if (v73[0])
    {
      v20 = 0;
      v21 = 1;
      while (1)
      {
        pixelFormat = [*&v73[2 * v21] pixelFormat];
        pipelineComputeStates = self->_pipelineComputeStates;
        if (pixelFormat != 10)
        {
          if (pixelFormat != 30)
          {
            goto LABEL_27;
          }

          pipelineComputeStates = &self->_pipelineComputeStates[1];
        }

        v24 = *pipelineComputeStates;
        if (!v24)
        {
LABEL_27:
          fig_log_get_emitter();
          FigDebugAssert3();
          v25 = 0;
          v17 = -12782;
          goto LABEL_28;
        }

        v25 = v24;
        computeCommandEncoder = [v19 computeCommandEncoder];

        if (!computeCommandEncoder)
        {
          break;
        }

        [computeCommandEncoder setComputePipelineState:v25];
        [computeCommandEncoder setTexture:*&v76[8 * v21] atIndex:0];
        [computeCommandEncoder setTexture:*&v73[2 * v21] atIndex:1];
        [(CinematicFramingRenderer *)self outputROI];
        width = self->_outputDimensions.width;
        v28 = width;
        height = self->_outputDimensions.height;
        v31 = v30 * width;
        v33 = v32 * height;
        v36 = v35 * height;
        v37 = fmax(v31 + -10.0, 0.0);
        v38 = fmax(v33 + -10.0, 0.0);
        v39 = v31 + v34 * width + 10.0;
        if (v39 >= width)
        {
          v39 = width;
        }

        v40 = v33 + v36 + 10.0;
        if (v40 >= height)
        {
          v40 = self->_outputDimensions.height;
        }

        v41 = v37 / v28;
        v42 = (v39 - v37) / v28;
        v43 = v40 - v38;
        v44 = *&self->_anon_90[160];
        v45 = *&self->_anon_90[176];
        v46 = *&self->_anon_90[128];
        v69 = *&self->_anon_90[144];
        v70 = v44;
        v47 = *&self->_anon_90[192];
        v71 = v45;
        v72 = v47;
        v48 = *&self->_anon_90[96];
        v67 = *&self->_anon_90[112];
        v68 = v46;
        v49 = *&self->_anon_90[48];
        v62 = *&self->_anon_90[32];
        v63 = v49;
        v50 = *&self->_anon_90[64];
        v65 = *&self->_anon_90[80];
        v66 = v48;
        v64 = v50;
        v51 = *&self->_anon_90[16];
        v60 = *self->_anon_90;
        v61 = v51;
        [(CinematicFramingRenderer *)self _setShaderParametersForDisplayRect:&v60 outputROI:computeCommandEncoder calibrationParameters:v8 commandEncoder:v10, v12, v14, v41, v38 / height, v42, v43 / height];
        v52 = v19;
        threadExecutionWidth = [(MTLComputePipelineState *)v25 threadExecutionWidth];
        maxTotalThreadsPerThreadgroup = [(MTLComputePipelineState *)v25 maxTotalThreadsPerThreadgroup];
        width = [*&v73[2 * v21] width];
        height = [*&v73[2 * v21] height];
        *&v60 = width;
        *(&v60 + 1) = height;
        *&v61 = 1;
        v59[0] = threadExecutionWidth;
        v59[1] = maxTotalThreadsPerThreadgroup / threadExecutionWidth;
        v59[2] = 1;
        [computeCommandEncoder dispatchThreads:&v60 threadsPerThreadgroup:v59];
        [computeCommandEncoder endEncoding];
        v19 = v52;

        v20 = computeCommandEncoder;
        if (v21++ >= v73[0])
        {
          goto LABEL_26;
        }
      }

      fig_log_get_emitter();
      FigDebugAssert3();
      v20 = 0;
      v17 = -12786;
LABEL_28:

      computeCommandEncoder = v20;
    }

    else
    {
      computeCommandEncoder = 0;
LABEL_26:
      [v19 commit];
      [v19 waitUntilCompleted];
      v17 = 0;
    }
  }

  else
  {
    fig_log_get_emitter();
    FigDebugAssert3();
    computeCommandEncoder = 0;
    v19 = 0;
    v17 = -12786;
  }

LABEL_29:

  return v17;
}

- (void)finish
{
  commandBuffer = [(MTLCommandQueue *)self->_commandQueue commandBuffer];
  [commandBuffer setLabel:@"CinematicFramingRenderer.finish"];
  [commandBuffer commit];
  [commandBuffer waitUntilCompleted];
  cvMetalTextureCacheRef = self->_cvMetalTextureCacheRef;
  if (cvMetalTextureCacheRef)
  {
    CVMetalTextureCacheFlush(cvMetalTextureCacheRef, 0);
  }
}

- (void)_filterDetectionsInInputImageCoordinates:(id)coordinates trackType:(int64_t)type
{
  selfCopy = self;
  coordinatesCopy = coordinates;
  v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = coordinatesCopy;
  v7 = [obj countByEnumeratingWithState:&v38 objects:v37 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    kalmanFilterManager = selfCopy->_kalmanFilterManager;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v38 + 1) + 8 * i);
        v13 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v12, "oid", selfCopy)}];
        [v6 addObject:v13];

        v14 = kalmanFilterManager[type];
        v15 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v12, "oid")}];
        v16 = [(NSMutableDictionary *)v14 objectForKey:v15];

        if (!v16)
        {
          v16 = objc_alloc_init(KalmanFilter);
          v17 = kalmanFilterManager[type];
          v18 = v8;
          v19 = v6;
          typeCopy = type;
          v21 = v9;
          v22 = [MEMORY[0x277CCABB0] numberWithLong:{objc_msgSend(v12, "oid")}];
          [(NSMutableDictionary *)v17 setObject:v16 forKeyedSubscript:v22];

          v9 = v21;
          type = typeCopy;
          v6 = v19;
          v8 = v18;
        }

        [(KalmanFilter *)v16 addObservation:v12];
        [(KalmanFilter *)v16 estimatedBounds];
        [v12 setBounds:?];
      }

      v8 = [obj countByEnumeratingWithState:&v38 objects:v37 count:16];
    }

    while (v8);
  }

  v35 = 0u;
  v36 = 0u;
  v23 = selfCopy->_kalmanFilterManager;
  v33 = 0u;
  v34 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_kalmanFilterManager[type] allKeys];
  v25 = [allKeys countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v34;
    do
    {
      for (j = 0; j != v26; ++j)
      {
        if (*v34 != v27)
        {
          objc_enumerationMutation(allKeys);
        }

        v29 = *(*(&v33 + 1) + 8 * j);
        if (([v6 containsObject:{v29, selfCopy}] & 1) == 0)
        {
          [(NSMutableDictionary *)v23[type] removeObjectForKey:v29];
        }
      }

      v26 = [allKeys countByEnumeratingWithState:&v33 objects:v32 count:16];
    }

    while (v26);
  }
}

- (CGPoint)projectPointInFramingSpace:(CGPoint)space toDisplayRectInFramingSpace:(CGRect)framingSpace
{
  height = framingSpace.size.height;
  width = framingSpace.size.width;
  y = framingSpace.origin.y;
  x = framingSpace.origin.x;
  v9 = rotatePointCCW(4 - self->_numCCWRotationsFromInputToFramingSpace, space.x, space.y);
  v11 = v10;
  v15 = rotateRectCCW(4 - self->_numCCWRotationsFromInputToFramingSpace, x, y, width, height);

  [(CinematicFramingRenderer *)self _projectPointInFramingSpaceLandscapeLeft:v9 toDisplayRectInFramingSpaceLandscapeLeft:v11, v15, v12, v13, v14];
  result.y = v17;
  result.x = v16;
  return result;
}

- (CGRect)projectRectInFramingSpace:(CGRect)space toDisplayRectInFramingSpace:(CGRect)framingSpace
{
  height = framingSpace.size.height;
  width = framingSpace.size.width;
  y = framingSpace.origin.y;
  x = framingSpace.origin.x;
  v9 = rotateRectCCW(4 - self->_numCCWRotationsFromInputToFramingSpace, space.origin.x, space.origin.y, space.size.width, space.size.height);
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v19 = rotateRectCCW(4 - self->_numCCWRotationsFromInputToFramingSpace, x, y, width, height);

  [(CinematicFramingRenderer *)self _projectRectInFramingSpaceLandscapeLeft:v9 toDisplayRectInFramingSpaceLandscapeLeft:v11, v13, v15, v19, v16, v17, v18];
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)warpMetadataInInputImageCoordinatesToFramingSpace:(id)space
{
  spaceCopy = space;
  bodyDetections = [spaceCopy bodyDetections];
  [(CinematicFramingRenderer *)self _filterDetectionsInInputImageCoordinates:bodyDetections trackType:0];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  bodyDetections2 = [spaceCopy bodyDetections];
  v7 = [bodyDetections2 countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(bodyDetections2);
        }

        v11 = *(*(&v25 + 1) + 8 * i);
        [v11 bounds];
        [(CinematicFramingRenderer *)self warpRectInInputImageCoordinatesToFramingSpace:?];
        [v11 setBounds:?];
      }

      v8 = [bodyDetections2 countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v8);
  }

  faceDetections = [spaceCopy faceDetections];
  [(CinematicFramingRenderer *)self _filterDetectionsInInputImageCoordinates:faceDetections trackType:1];

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  faceDetections2 = [spaceCopy faceDetections];
  v14 = [faceDetections2 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(faceDetections2);
        }

        v18 = *(*(&v20 + 1) + 8 * j);
        [v18 bounds];
        [(CinematicFramingRenderer *)self warpRectInInputImageCoordinatesToFramingSpace:?];
        [v18 setBounds:?];
      }

      v15 = [faceDetections2 countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v15);
  }
}

- (CGRect)warpRectInInputImageCoordinatesToFramingSpace:(CGRect)space
{
  v4 = *&self->_anon_90[176];
  v18[10] = *&self->_anon_90[160];
  v18[11] = v4;
  v18[12] = *&self->_anon_90[192];
  v5 = *&self->_anon_90[112];
  v18[6] = *&self->_anon_90[96];
  v18[7] = v5;
  v6 = *&self->_anon_90[144];
  v18[8] = *&self->_anon_90[128];
  v18[9] = v6;
  v7 = *&self->_anon_90[48];
  v18[2] = *&self->_anon_90[32];
  v18[3] = v7;
  v8 = *&self->_anon_90[80];
  v18[4] = *&self->_anon_90[64];
  v18[5] = v8;
  v9 = *&self->_anon_90[16];
  v18[0] = *self->_anon_90;
  v18[1] = v9;
  [(CinematicFramingRenderer *)self _warpRectInInputImageCoordinatesToFramingSpaceInLandscapeLeft:v18 calibrationParameters:space.origin.x, space.origin.y, space.size.width, space.size.height];
  v14 = rotateRectCCW(self->_numCCWRotationsFromInputToFramingSpace, v10, v11, v12, v13);
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (float32x2_t)_outputPlaneSizeForDisplayRect:(CGFloat)rect
{
  Width = CGRectGetWidth(*&self);
  v19.origin.x = self;
  v19.origin.y = a2;
  v19.size.width = rect;
  v19.size.height = a4;
  Height = CGRectGetHeight(v19);
  v9.f64[0] = Width;
  v9.f64[1] = Height;
  __asm { FMOV            V0.2D, #0.5 }

  *&_Q0.f64[0] = vcvt_f32_f64(vmulq_f64(v9, _Q0));
  v17 = *_Q0.f64;
  LODWORD(Width) = tanf(*(_Q0.f64 + 1));
  v15.f32[0] = tanf(v17);
  v15.i32[1] = LODWORD(Width);
  return vadd_f32(v15, v15);
}

- (double)_rotationMatrixForDisplayRect:(double)rect
{
  MidY = CGRectGetMidY(*&a2);
  v11 = __sincosf_stret(MidY * -0.5);
  v12 = vmulq_n_f32(xmmword_2434F7660, v11.__sinval);
  v12.i32[3] = LODWORD(v11.__cosval);
  *v13.i64 = simd_matrix3x3(v12);
  v78 = v14;
  v80 = v13;
  v76 = v15;
  *v13.i64 = a2;
  *v14.i64 = rect;
  *v15.i64 = a4;
  v16 = a5;
  MidX = CGRectGetMidX(*v13.f32);
  v18 = __sincosf_stret(MidX * 0.5);
  v19 = vmulq_n_f32(xmmword_2434F7670, v18.__sinval);
  v19.i32[3] = LODWORD(v18.__cosval);
  *v20.i64 = simd_matrix3x3(v19);
  v71 = v21;
  v73 = v20;
  v69 = v22;
  if ([self cameraOrientation] == 1 || objc_msgSend(self, "cameraOrientation") == 2)
  {
    v23 = 0;
    v25 = v71;
    v24 = v73;
    v24.i32[3] = 0;
    v25.i32[3] = 0;
    v26 = v69;
    v26.i32[3] = 0;
    v82 = v24;
    v83 = v25;
    v84 = v26;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    do
    {
      *(&v85 + v23 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v80, COERCE_FLOAT(*(&v82 + v23 * 4))), v78, *&v82.f32[v23], 1), v76, *(&v82 + v23 * 4), 2);
      v23 += 4;
    }

    while (v23 != 12);
  }

  else
  {
    v27 = 0;
    v29 = v78;
    v28 = v80;
    v28.i32[3] = 0;
    v29.i32[3] = 0;
    v30 = v76;
    v30.i32[3] = 0;
    v82 = v28;
    v83 = v29;
    v84 = v30;
    v85 = 0u;
    v86 = 0u;
    v87 = 0u;
    do
    {
      *(&v85 + v27 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, COERCE_FLOAT(*(&v82 + v27 * 4))), v71, *&v82.f32[v27], 1), v69, *(&v82 + v27 * 4), 2);
      v27 += 4;
    }

    while (v27 != 12);
  }

  v31 = v85;
  v72 = v86;
  v74 = v85;
  v31.i32[3] = 0;
  v81 = v31;
  v32 = v86;
  v32.i32[3] = 0;
  v79 = v32;
  v70 = v87;
  v33 = v87;
  v33.i32[3] = 0;
  v77 = v33;
  [self gravity];
  v35 = vmvnq_s8(vorrq_s8(vcltzq_f32(v34), vcgezq_f32(v34)));
  v35.i32[3] = v35.i32[2];
  v36 = 0.0;
  if ((vmaxvq_u32(v35) & 0x80000000) == 0 && [self cameraOrientation] && (objc_msgSend(self, "visualizeViewport") & 1) == 0)
  {
    if (self[52])
    {
      v37 = -1;
    }

    else
    {
      v37 = 0;
    }

    v38 = vdupq_n_s32(v37);
    v68 = vbslq_s8(v38, xmmword_2434F7670, xmmword_2434F76E0);
    [self gravity];
    v40 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v68, v39.f32[0]), xmmword_2434F76F0, *v39.f32, 1), vbslq_s8(v67, xmmword_2434F7C20, xmmword_2434F7680), v39, 2);
    v75 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v74, v40.f32[0]), v72, *v40.f32, 1), v70, v40, 2);
    v41 = [self numCCWRotationsFromInputToFramingSpace] * 1.57079633;
    v42 = __sincosf_stret(v41 * 0.5);
    v43 = vmulq_n_f32(xmmword_2434F7680, v42.__sinval);
    v44 = v43;
    v44.i32[3] = LODWORD(v42.__cosval);
    v45 = vmulq_f32(v44, xmmword_2434F7700);
    v46 = vnegq_f32(v45);
    v47 = vtrn2q_s32(v45, vtrn1q_s32(v45, v46));
    v48 = vmulq_lane_f32(vextq_s8(v45, v46, 8uLL), *v75.f32, 1);
    v49 = vrev64q_s32(v45);
    v49.i32[0] = v46.i32[1];
    v49.i32[3] = v46.i32[2];
    v50 = vmlaq_laneq_f32(vmlaq_n_f32(v48, vextq_s8(v47, v47, 8uLL), v75.f32[0]), v49, v75, 2);
    v51 = vnegq_f32(v50);
    v52 = vtrn2q_s32(v50, vtrn1q_s32(v50, v51));
    v53 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v50, v51, 8uLL), *v43.f32, 1), vextq_s8(v52, v52, 8uLL), v43.f32[0]);
    v54 = vrev64q_s32(v50);
    v54.i32[0] = v51.i32[1];
    v54.i32[3] = v51.i32[2];
    v55 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v50, v44, 3), v54, v43, 2), v53);
    v44.i64[0] = COERCE_UNSIGNED_INT(vaddv_f32(*&vmulq_f32(v55, v55)));
    *v51.i8 = vrsqrte_f32(*v44.f32);
    *v51.i8 = vmul_f32(*v51.i8, vrsqrts_f32(v44.u32[0], vmul_f32(*v51.i8, *v51.i8)));
    *v55.f32 = vmul_n_f32(*v55.f32, vmul_f32(*v51.i8, vrsqrts_f32(v44.u32[0], vmul_f32(*v51.i8, *v51.i8))).f32[0]);
    *v44.f32 = vrsqrte_f32(1065353216);
    *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(1065353216, vmul_f32(*v44.f32, *v44.f32)));
    *v51.i8 = vmul_n_f32(0x3F80000000000000, vmul_f32(*v44.f32, vrsqrts_f32(1065353216, vmul_f32(*v44.f32, *v44.f32))).f32[0]);
    v56 = asinf(vmuls_lane_f32(-v55.f32[0], *v51.i8, 1) + (*v51.i32 * v55.f32[1]));
    if (v56 <= -0.523598776)
    {
      v56 = -0.52359879;
    }

    v57 = fmin(v56, 0.523598776);
    v36 = v57;
  }

  [self additionalCameraRotation];
  v59 = v36 + v58 * 3.14159265 / 180.0;
  v60 = __sincosf_stret(v59 * 0.5);
  v61 = vmulq_n_f32(xmmword_2434F7680, v60.__sinval);
  v61.i32[3] = LODWORD(v60.__cosval);
  *v62.i64 = simd_matrix3x3(v61);
  v65 = 0;
  v82 = v81;
  v83 = v79;
  v84 = v77;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  do
  {
    *(&v85 + v65 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v62, COERCE_FLOAT(*(&v82 + v65 * 4))), v63, *&v82.f32[v65], 1), v64, *(&v82 + v65 * 4), 2);
    v65 += 4;
  }

  while (v65 != 12);
  return *v85.i64;
}

- (CGPoint)_projectPointInFramingSpaceLandscapeLeft:(CGPoint)left toDisplayRectInFramingSpaceLandscapeLeft:(CGRect)landscapeLeft
{
  height = landscapeLeft.size.height;
  width = landscapeLeft.size.width;
  y = landscapeLeft.origin.y;
  x = landscapeLeft.origin.x;
  v8 = left.y;
  v9 = left.x;
  [(CinematicFramingRenderer *)self _rotationMatrixForDisplayRect:landscapeLeft.origin.x, landscapeLeft.origin.y, landscapeLeft.size.width, landscapeLeft.size.height];
  v27 = __invert_f3(v26);
  v22 = v27.columns[0];
  v23 = v27.columns[2];
  v24 = v27.columns[1];
  v27.columns[0].f32[0] = v9;
  v21 = tanf(v27.columns[0].f32[0]);
  v11 = v8;
  v25 = vaddq_f32(v23, vmlaq_n_f32(vmulq_n_f32(v22, v21), v24, tanf(v11)));
  [(CinematicFramingRenderer *)self _outputPlaneSizeForDisplayRect:x, y, width, height];
  v13 = vcvtq_f64_f32(v12);
  __asm { FMOV            V2.2D, #0.5 }

  v19 = vdivq_f64(vaddq_f64(vmulq_f64(v13, _Q2), vcvtq_f64_f32(vdiv_f32(*v25.i8, vdup_laneq_s32(v25, 2)))), v13);
  v20 = v19.f64[1];
  result.x = v19.f64[0];
  result.y = v20;
  return result;
}

- (CGRect)_projectRectInFramingSpaceLandscapeLeft:(CGRect)left toDisplayRectInFramingSpaceLandscapeLeft:(CGRect)landscapeLeft
{
  y = landscapeLeft.origin.y;
  height = landscapeLeft.size.height;
  width = landscapeLeft.size.width;
  v5 = landscapeLeft.origin.y;
  x = landscapeLeft.origin.x;
  v7 = left.size.height;
  v8 = left.size.width;
  v9 = left.origin.y;
  v10 = left.origin.x;
  MidX = CGRectGetMidX(left);
  v29.origin.x = v10;
  v29.origin.y = v9;
  v29.size.width = v8;
  v29.size.height = v7;
  [(CinematicFramingRenderer *)self _projectPointInFramingSpaceLandscapeLeft:MidX toDisplayRectInFramingSpaceLandscapeLeft:CGRectGetMinY(v29), x, v5, width, height];
  v26 = v13;
  v30.origin.x = v10;
  v30.origin.y = v9;
  v30.size.width = v8;
  v30.size.height = v7;
  v14 = CGRectGetMidX(v30);
  v31.origin.x = v10;
  v31.origin.y = v9;
  v31.size.width = v8;
  v31.size.height = v7;
  [(CinematicFramingRenderer *)self _projectPointInFramingSpaceLandscapeLeft:v14 toDisplayRectInFramingSpaceLandscapeLeft:CGRectGetMaxY(v31), x, y, width, height];
  v25 = v15;
  v32.origin.x = v10;
  v32.origin.y = v9;
  v32.size.width = v8;
  v32.size.height = v7;
  MinX = CGRectGetMinX(v32);
  v33.origin.x = v10;
  v33.origin.y = v9;
  v33.size.width = v8;
  v33.size.height = v7;
  [(CinematicFramingRenderer *)self _projectPointInFramingSpaceLandscapeLeft:MinX toDisplayRectInFramingSpaceLandscapeLeft:CGRectGetMidY(v33), x, y, width, height];
  v18 = v17;
  v34.origin.x = v10;
  v34.origin.y = v9;
  v34.size.width = v8;
  v34.size.height = v7;
  MaxX = CGRectGetMaxX(v34);
  v35.origin.x = v10;
  v35.origin.y = v9;
  v35.size.width = v8;
  v35.size.height = v7;
  [(CinematicFramingRenderer *)self _projectPointInFramingSpaceLandscapeLeft:MaxX toDisplayRectInFramingSpaceLandscapeLeft:CGRectGetMidY(v35), x, y, width, height];
  v21 = v20 - v18;
  v22 = v26;
  v23 = v25 - v26;
  v24 = v18;
  result.size.height = v23;
  result.size.width = v21;
  result.origin.y = v22;
  result.origin.x = v24;
  return result;
}

- (CGRect)_warpRectInInputImageCoordinatesToFramingSpaceInLandscapeLeft:(CGRect)left calibrationParameters:(id *)parameters
{
  height = left.size.height;
  width = left.size.width;
  y = left.origin.y;
  x = left.origin.x;
  MidX = CGRectGetMidX(left);
  v96.origin.x = x;
  v96.origin.y = y;
  v96.size.width = width;
  v96.size.height = height;
  MinY = CGRectGetMinY(v96);
  v10.f64[0] = MidX;
  v10.f64[1] = MinY;
  var6 = parameters->var5.var6;
  v12 = *&parameters->var6.var1;
  var6_low = LOBYTE(parameters[1].var5.var6);
  v14 = vmul_f32(*&parameters->var2, vcvt_f32_f64(v10));
  v80 = *(&v12 + 1);
  if (var6_low)
  {
    v15 = *&parameters->var5.var7;
    var5 = parameters->var5.var5;
    v17 = *&parameters->var5.var1;
    v18 = *&parameters->var4;
    v81 = *&parameters->var2;
    v82 = v18;
    v83 = v17;
    v84 = __PAIR64__(LODWORD(var6), LODWORD(var5));
    v85 = v15;
    v20 = *&parameters->var6.var5;
    v19 = *&parameters[1].var3;
    v86 = v12;
    v87 = v20;
    v21 = *&parameters[1].var5.var2;
    v88 = v19;
    v89 = v21;
    v90 = var6_low;
    *&v95[15] = *&parameters[2].var5.var7;
    *v95 = *(&parameters[2].var5.var3 + 1);
    v94 = *(&parameters[2].var4 + 1);
    v93 = *(&parameters[1].var6.var6 + 1);
    v91 = *(&parameters[1].var5.var6 + 1);
    v92 = *(&parameters[1].var6.var2 + 1);
    v14 = undistortPoint(&v81, v14);
  }

  v78 = v14.f32[1];
  v97.origin.x = x;
  v97.origin.y = y;
  v97.size.width = width;
  v97.size.height = height;
  v76 = CGRectGetMidX(v97);
  v98.origin.x = x;
  v98.origin.y = y;
  v98.size.width = width;
  v98.size.height = height;
  MaxY = CGRectGetMaxY(v98);
  v23.f64[0] = v76;
  v23.f64[1] = MaxY;
  v24 = parameters->var5.var6;
  v25 = *&parameters->var6.var1;
  v26 = LOBYTE(parameters[1].var5.var6);
  v27 = vmul_f32(*&parameters->var2, vcvt_f32_f64(v23));
  v77 = *(&v25 + 1);
  if (v26)
  {
    v28 = *&parameters->var5.var7;
    v29 = parameters->var5.var5;
    v30 = *&parameters->var5.var1;
    v31 = *&parameters->var4;
    v81 = *&parameters->var2;
    v82 = v31;
    v83 = v30;
    v84 = __PAIR64__(LODWORD(v24), LODWORD(v29));
    v85 = v28;
    v33 = *&parameters->var6.var5;
    v32 = *&parameters[1].var3;
    v86 = v25;
    v87 = v33;
    v34 = *&parameters[1].var5.var2;
    v88 = v32;
    v89 = v34;
    v90 = v26;
    *&v95[15] = *&parameters[2].var5.var7;
    *v95 = *(&parameters[2].var5.var3 + 1);
    v94 = *(&parameters[2].var4 + 1);
    v93 = *(&parameters[1].var6.var6 + 1);
    v91 = *(&parameters[1].var5.var6 + 1);
    v92 = *(&parameters[1].var6.var2 + 1);
    v27 = undistortPoint(&v81, v27);
  }

  v75 = v27.f32[1];
  v99.origin.x = x;
  v99.origin.y = y;
  v99.size.width = width;
  v99.size.height = height;
  MinX = CGRectGetMinX(v99);
  v100.origin.x = x;
  v100.origin.y = y;
  v100.size.width = width;
  v100.size.height = height;
  MidY = CGRectGetMidY(v100);
  v36.f64[0] = MinX;
  v36.f64[1] = MidY;
  v37 = *&parameters->var5.var1;
  v38 = *&parameters->var6.var1;
  v39 = LOBYTE(parameters[1].var5.var6);
  v40 = vmul_f32(*&parameters->var2, vcvt_f32_f64(v36));
  v72 = *&v38;
  v74 = *&v37;
  if (v39)
  {
    v41 = *&parameters->var5.var7;
    v42 = *&parameters->var4;
    v81 = *&parameters->var2;
    v82 = v42;
    v83 = v37;
    v84 = *&parameters->var5.var5;
    v85 = v41;
    v43 = *&parameters->var6.var5;
    v44 = *&parameters[1].var3;
    v86 = v38;
    v87 = v43;
    v45 = *&parameters[1].var5.var2;
    v88 = v44;
    v89 = v45;
    v90 = v39;
    *&v95[15] = *&parameters[2].var5.var7;
    *v95 = *(&parameters[2].var5.var3 + 1);
    v94 = *(&parameters[2].var4 + 1);
    v93 = *(&parameters[1].var6.var6 + 1);
    v91 = *(&parameters[1].var5.var6 + 1);
    v92 = *(&parameters[1].var6.var2 + 1);
    LODWORD(v71) = undistortPoint(&v81, v40).u32[0];
  }

  else
  {
    v71 = v40.f32[0];
  }

  v101.origin.x = x;
  v101.origin.y = y;
  v101.size.width = width;
  v101.size.height = height;
  MaxX = CGRectGetMaxX(v101);
  v102.origin.x = x;
  v102.origin.y = y;
  v102.size.width = width;
  v102.size.height = height;
  v46 = CGRectGetMidY(v102);
  v47.f64[0] = MaxX;
  v47.f64[1] = v46;
  v48 = *&parameters->var5.var1;
  v49 = *&parameters->var6.var1;
  v50 = LOBYTE(parameters[1].var5.var6);
  v51 = vmul_f32(*&parameters->var2, vcvt_f32_f64(v47));
  v68 = *&v49;
  v70 = *&v48;
  if (v50)
  {
    v52 = *&parameters->var5.var7;
    v53 = *&parameters->var4;
    v81 = *&parameters->var2;
    v82 = v53;
    v83 = v48;
    v84 = *&parameters->var5.var5;
    v85 = v52;
    v54 = *&parameters->var6.var5;
    v55 = *&parameters[1].var3;
    v86 = v49;
    v87 = v54;
    v56 = *&parameters[1].var5.var2;
    v88 = v55;
    v89 = v56;
    v90 = v50;
    *&v95[15] = *&parameters[2].var5.var7;
    *v95 = *(&parameters[2].var5.var3 + 1);
    v94 = *(&parameters[2].var4 + 1);
    v93 = *(&parameters[1].var6.var6 + 1);
    v91 = *(&parameters[1].var5.var6 + 1);
    v92 = *(&parameters[1].var6.var2 + 1);
    LODWORD(v67) = undistortPoint(&v81, v51).u32[0];
    v57 = v72;
    v58 = v74;
  }

  else
  {
    v57 = v72;
    v58 = v74;
    v67 = v51.f32[0];
  }

  v59 = atanf((v71 - v57) / v58);
  v60 = atanf((v75 - v77) / v24);
  v61 = atanf((v78 - v80) / var6);
  v62 = atanf((v67 - v68) / v70);
  v63 = v61;
  v64 = (v62 - v59);
  v65 = (v60 - v61);
  v66 = v59;
  result.size.height = v65;
  result.size.width = v64;
  result.origin.y = v63;
  result.origin.x = v66;
  return result;
}

- (int)_outputPlaneCcwRotations
{
  if (self->_cameraOrientationCorrectionEnabled)
  {
    return [(CinematicFramingRenderer *)self numCCWRotationsFromInputToFramingSpace];
  }

  else
  {
    return 0;
  }
}

- (CGRect)framingSpaceBounds
{
  [(CinematicFramingRenderer *)self _framingSpaceBoundsLandscapeLeft];
  numCCWRotationsFromInputToFramingSpace = self->_numCCWRotationsFromInputToFramingSpace;

  v8 = rotateRectCCW(numCCWRotationsFromInputToFramingSpace, v3, v4, v5, v6);
  result.size.height = v11;
  result.size.width = v10;
  result.origin.y = v9;
  result.origin.x = v8;
  return result;
}

- (float)maxAllowedViewportWidth
{
  [(CinematicFramingRenderer *)self framingSpaceBounds];
  Width = CGRectGetWidth(v14);
  *&Width = Width;
  [(CinematicFramingRenderer *)self getHeightForWidth:Width];
  v5 = v4;
  [(CinematicFramingRenderer *)self framingSpaceBounds];
  v6 = CGRectGetHeight(v15) + 0.000001;
  [(CinematicFramingRenderer *)self framingSpaceBounds];
  if (v6 > v5)
  {
    return CGRectGetWidth(*&v7);
  }

  Height = CGRectGetHeight(*&v7);
  *&Height = Height;

  [(CinematicFramingRenderer *)self getWidthForHeight:Height];
  return result;
}

- (float)getHeightDerivativeForWidth:(float)width widthDerivative:(float)derivative
{
  [(CinematicFramingRenderer *)self outputAspectRatioInDeviceOrientation];
  LODWORD(v7) = LODWORD(v8);
  *&v8 = width;
  *&v9 = derivative;

  [(CinematicFramingRenderer *)self _getHeightDerivativeForWidth:v8 widthDerivative:v9 outputAspectRatioInDeviceOrientation:v7];
  return result;
}

- (float)getHeightForWidth:(float)width
{
  [(CinematicFramingRenderer *)self outputAspectRatioInDeviceOrientation];
  LODWORD(v5) = LODWORD(v6);
  *&v6 = width;

  [(CinematicFramingRenderer *)self _getHeightForWidth:v6 outputAspectRatioInDeviceOrientation:v5];
  return result;
}

- (float)getWidthForHeight:(float)height
{
  [(CinematicFramingRenderer *)self outputAspectRatioInDeviceOrientation];
  LODWORD(v5) = LODWORD(v6);
  *&v6 = height;

  [(CinematicFramingRenderer *)self _getWidthForHeight:v6 outputAspectRatioInDeviceOrientation:v5];
  return result;
}

- (CGRect)adjustDisplayRectToFitInFramingSpace:(CGRect)space
{
  [(CinematicFramingRenderer *)self _adjustDisplayRectToFitInFramingSpaceLandscapeLeft:rotateRectCCW(4 - self->_numCCWRotationsFromInputToFramingSpace, space.origin.x, space.origin.y, space.size.width, space.size.height)];
  numCCWRotationsFromInputToFramingSpace = self->_numCCWRotationsFromInputToFramingSpace;

  v9 = rotateRectCCW(numCCWRotationsFromInputToFramingSpace, v4, v5, v6, v7);
  result.size.height = v12;
  result.size.width = v11;
  result.origin.y = v10;
  result.origin.x = v9;
  return result;
}

- (float)outputAspectRatioInDeviceOrientation
{
  outputDimensions = self->_outputDimensions;
  v3.i64[0] = outputDimensions.width;
  v3.i64[1] = outputDimensions.height;
  v4 = vcvt_f32_f64(vmulq_f64(self->_outputROI.size, vcvtq_f64_s64(v3)));
  LODWORD(result) = vdiv_f32(v4, vdup_lane_s32(v4, 1)).u32[0];
  if (!self->_cameraOrientationCorrectionEnabled && (self->_numCCWRotationsFromInputToFramingSpace & 1) != 0)
  {
    return 1.0 / result;
  }

  return result;
}

- (CGRect)_framingSpaceBoundsLandscapeLeft
{
  [(CinematicFramingRenderer *)self calibrationParams];
  v16 = atan2f(0.0, 0.0);
  *&v17 = COERCE_DOUBLE(__PAIR64__(COERCE_UNSIGNED_INT(atan2f(0.0 - 0.0, 0.0)), LODWORD(v16)));
  v15 = atan2f(0.0, 0.0);
  v4 = COERCE_DOUBLE(__PAIR64__(COERCE_UNSIGNED_INT(atan2f(0.0 - 0.0, 0.0)), LODWORD(v15)));
  v3 = v17;
  fovLimit = self->_fovLimit;
  v6 = fovLimit <= 0.0;
  *v7.i32 = fovLimit * 0.5;
  v8 = vdup_lane_s32(v7, 0);
  v9 = COERCE_DOUBLE(vminnm_f32(v17, v8));
  v10 = COERCE_DOUBLE(vminnm_f32(*&v4, v8));
  if (!v6)
  {
    *&v3 = v9;
    v4 = v10;
  }

  v11 = -v3.f32[0];
  v12 = -*&v4;
  v13 = vaddv_f32(v3);
  v14 = vaddv_f32(*&v4);
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (float)_getHeightDerivativeForWidth:(float)width widthDerivative:(float)derivative outputAspectRatioInDeviceOrientation:(float)orientation
{
  v5 = derivative * orientation;
  v6 = orientation * orientation;
  v7 = __sincosf_stret(width * 0.5);
  return v5 / ((v7.__sinval * v7.__sinval) + ((v7.__cosval * v6) * v7.__cosval));
}

- (float)_getHeightForWidth:(float)width outputAspectRatioInDeviceOrientation:(float)orientation
{
  v5 = tanf(width * 0.5);
  v6 = atanf(v5 / orientation);
  return v6 + v6;
}

- (float)_getWidthForHeight:(float)height outputAspectRatioInDeviceOrientation:(float)orientation
{
  v5 = tanf(height * 0.5);
  v6 = atanf(v5 * orientation);
  return v6 + v6;
}

- (CGRect)_adjustDisplayRectToFitInFramingSpaceLandscapeLeft:(CGRect)left
{
  height = left.size.height;
  width = left.size.width;
  y = left.origin.y;
  x = left.origin.x;
  [(CinematicFramingRenderer *)self _scaleDisplayRectSizeToFit:left.size.width, left.size.height];
  v9 = v8;
  v11 = v10;
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  v12 = (CGRectGetWidth(v19) - v9) * 0.5;
  v20.origin.x = x;
  v20.origin.y = y;
  v20.size.width = width;
  v20.size.height = height;
  v13 = (CGRectGetHeight(v20) - v11) * 0.5;
  v21.origin.x = x;
  v21.origin.y = y;
  v21.size.width = width;
  v21.size.height = height;
  v22 = CGRectInset(v21, v12, v13);

  [(CinematicFramingRenderer *)self _moveDisplayRectToFitInFramingSpaceLandscapeLeft:v22.origin.x, v22.origin.y, v22.size.width, v22.size.height];
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGSize)_scaleDisplayRectSizeToFit:(CGSize)fit
{
  height = fit.height;
  width = fit.width;
  v6 = -1;
  v7 = -1.0;
  do
  {
    v8 = v6;
    v9 = -3;
    v10 = -1.0;
    do
    {
      [(CinematicFramingRenderer *)self calibrationParams];
      if (v18 == 1)
      {
        *&v11 = width * v7 * 0.5;
        v12 = height * v10 * 0.5;
        *(&v11 + 1) = v12;
        v17 = v11;
        if (![CinematicFramingRenderer _pointInFramingSpaceLandscapeLeftIsValid:"_pointInFramingSpaceLandscapeLeftIsValid:withDisplayRect:" withDisplayRect:?])
        {
          [(CinematicFramingRenderer *)self _searchValidSizeForStartSize:width invalidPoint:height, v17];
          width = v13;
          height = v14;
        }
      }

      v10 = v10 + 2.0;
      v9 += 2;
    }

    while (v9 < 0);
    v7 = v7 + 2.0;
    v6 = v8 + 2;
  }

  while (v8 < 0);
  v15 = width;
  v16 = height;
  result.height = v16;
  result.width = v15;
  return result;
}

- (CGSize)_searchValidSizeForStartSize:(CGSize)size invalidPoint:
{
  v4 = v3;
  sizeCopy = size;
  v16 = *&size.height;
  height = size.height;
  v7 = vcvt_f32_f64(size);
  v8 = 1.0;
  v9 = 10;
  v10 = 0.5;
  do
  {
    v11 = ((v8 + v10) * 0.5) + 0.05;
    v12 = vmul_n_f32(v7, v11);
    if ([(CinematicFramingRenderer *)self _pointInFramingSpaceLandscapeLeftIsValid:COERCE_DOUBLE(vmul_n_f32(v4 withDisplayRect:v11)), -v12.f32[0] * 0.5, -v12.f32[1] * 0.5, v12.f32[0], v12.f32[1], sizeCopy, v16])
    {
      v10 = (v8 + v10) * 0.5;
    }

    else
    {
      v8 = (v8 + v10) * 0.5;
    }

    --v9;
  }

  while (v9);
  v13 = sizeCopy.width * v10;
  v14 = *&v16 * v10;
  result.height = v14;
  result.width = v13;
  return result;
}

- (CGRect)_moveDisplayRectToFitInFramingSpaceLandscapeLeft:(CGRect)left
{
  height = left.size.height;
  width = left.size.width;
  y = left.origin.y;
  x = left.origin.x;
  [(CinematicFramingRenderer *)self framingSpaceBounds];
  v8 = CGRectGetWidth(v63);
  v64.origin.x = x;
  v64.origin.y = y;
  v64.size.width = width;
  v64.size.height = height;
  v9 = 0.5;
  v10 = (v8 - CGRectGetWidth(v64)) * 0.5;
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  v11 = fmin(v10, CGRectGetWidth(v65) * 0.05);
  [(CinematicFramingRenderer *)self framingSpaceBounds];
  v12 = CGRectGetHeight(v66);
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = height;
  v13 = (v12 - CGRectGetHeight(v67)) * 0.5;
  v68.origin.x = x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  v14 = fmin(v13, CGRectGetHeight(v68) * 0.05);
  v50 = v14;
  v51 = v11;
  v15 = -v14;
  v69.origin.x = x;
  v69.origin.y = y;
  v69.size.width = width;
  v69.size.height = height;
  v70 = CGRectInset(v69, -v11, v15);
  v16 = v70.origin.x;
  v17 = v70.origin.y;
  v18 = v70.size.width;
  v19 = v70.size.height;
  v20 = 1.0;
  v21 = -1.0;
  do
  {
    v58 = (v21 + v20) * v9;
    v53 = v21;
    v52 = v21;
    _ZF = v21 == v20 || v21 == -1.0;
    v23 = 0.2;
    if (_ZF)
    {
      v23 = 2.0;
    }

    v57 = v23;
    v24 = -1.0;
    do
    {
      v71.origin.x = v16;
      v71.origin.y = v17;
      v71.size.width = v18;
      v71.size.height = v19;
      MinX = CGRectGetMinX(v71);
      v72.origin.x = v16;
      v72.origin.y = v17;
      v72.size.width = v18;
      v72.size.height = v19;
      v26 = MinX + v58 * CGRectGetWidth(v72);
      v59 = v26;
      v73.origin.x = v16;
      v73.origin.y = v17;
      v73.size.width = v18;
      v73.size.height = v19;
      MinY = CGRectGetMinY(v73);
      v74.origin.x = v16;
      v74.origin.y = v17;
      v74.size.width = v18;
      v74.size.height = v19;
      *&v28 = MinY + (v24 + v20) * 0.5 * CGRectGetHeight(v74);
      v60 = COERCE_DOUBLE(__PAIR64__(v28, LODWORD(v59)));
      if (![CinematicFramingRenderer _pointInFramingSpaceLandscapeLeftIsValid:"_pointInFramingSpaceLandscapeLeftIsValid:withDisplayRect:" withDisplayRect:?])
      {
        v75.origin.x = v16;
        v75.origin.y = v17;
        v75.size.width = v18;
        v75.size.height = v19;
        v54 = CGRectGetWidth(v75);
        v76.origin.x = v16;
        v76.origin.y = v17;
        v76.size.width = v18;
        v76.size.height = v19;
        v29 = CGRectGetHeight(v76);
        v30.f64[0] = v54;
        v30.f64[1] = v29;
        v31.f64[0] = v53;
        v31.f64[1] = v24;
        v56 = v31;
        v32 = vmulq_f64(v30, v31);
        __asm { FMOV            V1.2D, #0.5 }

        v55 = _Q1;
        [(CinematicFramingRenderer *)self _searchEarliestValidPointOnIntervalWithStart:v60 andEnd:COERCE_DOUBLE(vcvt_f32_f64(vmulq_f64(v32 displayRect:_Q1))), v16, v17, v18, v19];
        v38 = v37;
        v77.origin.x = v16;
        v77.origin.y = v17;
        v77.size.width = v18;
        v77.size.height = v19;
        v61 = CGRectGetWidth(v77);
        v78.origin.x = v16;
        v78.origin.y = v17;
        v78.size.width = v18;
        v78.size.height = v19;
        v39 = CGRectGetHeight(v78);
        v40.f64[0] = v61;
        v40.f64[1] = v39;
        v41 = vsub_f32(v38, vcvt_f32_f64(vmulq_f64(vmulq_f64(v40, v56), v55)));
        HIDWORD(v61) = v41.i32[1];
        v42 = v41.f32[0];
        v43 = v16;
        v40.f64[0] = v17;
        v44 = v18;
        v45 = v19;
        v16 = v42 - CGRectGetWidth(*(&v40 - 8)) * 0.5;
        v79.origin.x = v16;
        v79.origin.y = v17;
        v79.size.width = v18;
        v79.size.height = v19;
        v17 = *(&v61 + 1) - CGRectGetHeight(v79) * 0.5;
      }

      v9 = 0.5;
      v24 = v57 + v24;
      v20 = 1.0;
    }

    while (v24 <= 1.0);
    v21 = v52 + 0.1;
  }

  while ((v52 + 0.1) <= 1.0);
  v46 = v16;
  v47 = v17;
  v48 = v18;
  v49 = v19;

  return CGRectInset(*&v46, v51, v50);
}

- (float32x2_t)_searchEarliestValidPointOnIntervalWithStart:(float32x2_t)start andEnd:(CGFloat)end displayRect:(CGFloat)rect
{
  v21 = a2.n128_f32[1];
  v22 = a2.n128_f32[0];
  v13 = 10;
  do
  {
    v23 = a2;
    v24 = vmul_f32(vadd_f32(a2.n128_u64[0], start), 0x3F0000003F000000);
    v25.origin.x = end;
    v25.origin.y = rect;
    v25.size.width = a6;
    v25.size.height = a7;
    v14 = CGRectGetMinX(v25) + *v24.i32 - v22;
    v26.origin.x = end;
    v26.origin.y = rect;
    v26.size.width = a6;
    v26.size.height = a7;
    v15 = CGRectGetMinY(v26) + *&v24.i32[1] - v21;
    v27.origin.x = end;
    v27.origin.y = rect;
    v27.size.width = a6;
    v27.size.height = a7;
    Width = CGRectGetWidth(v27);
    v28.origin.x = end;
    v28.origin.y = rect;
    v28.size.width = a6;
    v28.size.height = a7;
    v17 = [self _pointInFramingSpaceLandscapeLeftIsValid:*&v24 withDisplayRect:{v14, v15, Width, CGRectGetHeight(v28)}];
    a2.n128_u64[1] = v23.n128_u64[1];
    if (v17)
    {
      v18 = -1;
    }

    else
    {
      v18 = 0;
    }

    v19 = vdup_n_s32(v18);
    a2.n128_u64[0] = vbsl_s8(v19, v23.n128_u64[0], v24);
    start = vbsl_s8(v19, v24, start);
    --v13;
  }

  while (v13);
  return start;
}

- (BOOL)_pointInFramingSpaceLandscapeLeftIsValid:(CGRect)valid withDisplayRect:
{
  v4 = v3;
  height = valid.size.height;
  width = valid.size.width;
  y = valid.origin.y;
  v32 = *(&valid.origin.x + 1);
  v9 = *&valid.origin.x;
  v45.origin.x = valid.origin.y;
  v45.origin.y = valid.size.width;
  v45.size.width = valid.size.height;
  v45.size.height = v3;
  v10 = v9 - CGRectGetMidX(v45);
  v33 = tanf(v10);
  v46.origin.x = y;
  v46.origin.y = width;
  v46.size.width = height;
  v46.size.height = v4;
  v11 = v32 - CGRectGetMidY(v46);
  v31 = tanf(v11);
  [(CinematicFramingRenderer *)self _rotationMatrixForDisplayRect:y, width, height, v4];
  v14 = vzip1q_s32(v12, v13);
  v16 = vzip1q_s32(v15, 0);
  v17 = vzip1q_s32(v14, v16);
  v18 = vzip2q_s32(v14, v16);
  v19 = vzip1q_s32(vzip2q_s32(v12, v13), vdupq_laneq_s32(v15, 2));
  v20 = vzip1q_s32(v17, v19);
  v21 = vzip2q_s32(v17, v19);
  v22 = vtrn2q_s32(v17, v18);
  v22.i32[2] = v19.i32[1];
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v34 = vaddq_f32(vzip1q_s32(v21, vdupq_lane_s32(*v13.i8, 1)), vmlaq_n_f32(vmulq_n_f32(vzip1q_s32(v20, v18), v33), v22, v31));
  memset(v35, 0, sizeof(v35));
  v36 = 0u;
  [(CinematicFramingRenderer *)self calibrationParams];
  v23 = vtrn2q_s32(v36, v37);
  v23.i32[2] = v38.i32[1];
  v24 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vzip1q_s32(vzip1q_s32(v36, v38), v37), v34.f32[0]), v23, *v34.f32, 1), vzip1q_s32(vzip2q_s32(v36, v38), vdupq_laneq_s32(v37, 2)), v34, 2);
  v25 = distortPoint(v35, vdiv_f32(*v24.i8, *&vdupq_laneq_s32(v24, 2)));
  if (SDWORD1(v40) >= 1 && (v26 = vsub_f32(v25, *(&v39 + 8)), sqrtf(vaddv_f32(vmul_f32(v26, v26))) > DWORD1(v40)))
  {
    v29 = 0;
  }

  else
  {
    *v27.f32 = vdiv_f32(v25, *&v35[0]);
    v27.i64[1] = v27.i64[0];
    v28.i32[0] = vmovn_s32(vmvnq_s8(vcgeq_f32(v27, xmmword_2434F7950))).u32[0];
    v28.i32[1] = vmovn_s32(vmvnq_s8(vcgtq_f32(xmmword_2434F7950, v27))).i32[1];
    v29 = vminv_u16(v28);
  }

  return v29 & 1;
}

- (void)initializeMetal
{
  metalDevice = [MEMORY[0x277CF6C78] metalDevice];
  metalDevice = self->_metalDevice;
  self->_metalDevice = metalDevice;

  newCommandQueue = [(MTLDevice *)self->_metalDevice newCommandQueue];
  commandQueue = self->_commandQueue;
  self->_commandQueue = newCommandQueue;

  v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8 = self->_metalDevice;
  v15 = 0;
  v9 = [(MTLDevice *)v8 newDefaultLibraryWithBundle:v7 error:&v15];
  v10 = v15;
  library = self->_library;
  self->_library = v9;

  if ([(CinematicFramingRenderer *)self _compileShaders])
  {
    [CinematicFramingRenderer initializeMetal];
  }

  else
  {
    v13 = *MEMORY[0x277CC4D40];
    v14 = &unk_28563D620;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    CVMetalTextureCacheCreate(*MEMORY[0x277CBECE8], v12, self->_metalDevice, 0, &self->_cvMetalTextureCacheRef);
  }
}

- (int)_compileShaders
{
  v2 = [(CinematicFramingRenderer *)self _createComputePipelinesForShaders:&unk_28563D780];
  if (v2)
  {
    [CinematicFramingRenderer _compileShaders];
  }

  return v2;
}

- (int)_createComputePipelinesForShaders:(id)shaders
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = shaders;
  v4 = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    pipelineComputeStates = self->_pipelineComputeStates;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v22 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"index"];
        unsignedIntValue = [v10 unsignedIntValue];

        v12 = [v9 objectForKeyedSubscript:@"pixelFormat"];
        unsignedIntValue2 = [v12 unsignedIntValue];

        MTLPixelFormatGetInfoForDevice();
        if ((v20 & 0x10) != 0)
        {
          v14 = [v9 objectForKeyedSubscript:@"kernelName"];
          v15 = [(CinematicFramingRenderer *)self _compileComputeShader:v14 pixelFormat:unsignedIntValue2];
          v16 = pipelineComputeStates[unsignedIntValue];
          pipelineComputeStates[unsignedIntValue] = v15;

          if (!pipelineComputeStates[unsignedIntValue])
          {
            [CinematicFramingRenderer _createComputePipelinesForShaders:];
            v17 = -12786;
            goto LABEL_11;
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v22 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (id)_compileComputeShader:(id)shader pixelFormat:(unint64_t)format
{
  shaderCopy = shader;
  if (!shaderCopy)
  {
    [CinematicFramingRenderer _compileComputeShader:pixelFormat:];
    v7 = 0;
LABEL_12:
    v10 = 0;
    goto LABEL_6;
  }

  v6 = objc_opt_new();
  v7 = v6;
  if (!v6)
  {
    [CinematicFramingRenderer _compileComputeShader:pixelFormat:];
    goto LABEL_12;
  }

  [v6 setLabel:shaderCopy];
  v8 = [(MTLLibrary *)self->_library newFunctionWithName:shaderCopy];
  [v7 setComputeFunction:v8];

  computeFunction = [v7 computeFunction];

  if (!computeFunction)
  {
    [CinematicFramingRenderer _compileComputeShader:pixelFormat:];
    goto LABEL_12;
  }

  v10 = [(MTLDevice *)self->_metalDevice newComputePipelineStateWithDescriptor:v7 options:0 reflection:0 error:0];
  if (!v10)
  {
    [CinematicFramingRenderer _compileComputeShader:pixelFormat:];
  }

LABEL_6:

  return v10;
}

- (void)_setShaderParametersForDisplayRect:(CGRect)rect outputROI:(CGRect)i calibrationParameters:(id *)parameters commandEncoder:(id)encoder
{
  width = i.size.width;
  height = i.size.height;
  x = i.origin.x;
  y = i.origin.y;
  v7 = rect.size.height;
  v8 = rect.size.width;
  v9 = rect.origin.y;
  v10 = rect.origin.x;
  encoderCopy = encoder;
  [(CinematicFramingRenderer *)self _rotationMatrixForDisplayRect:v10, v9, v8, v7];
  v30 = v14;
  v31 = v13;
  v32 = v15;
  [(CinematicFramingRenderer *)self _outputPlaneSizeForDisplayRect:v10, v9, v8, v7];
  v17 = v16;
  v18 = vmul_f32(v16, 0xBF000000BF000000);
  _outputPlaneCcwRotations = [(CinematicFramingRenderer *)self _outputPlaneCcwRotations];
  v20.f64[0] = x;
  v20.f64[1] = y;
  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  memset(v35, 0, sizeof(v35));
  v21.f64[0] = width;
  v21.f64[1] = height;
  v36 = vcvt_f32_f64(v20);
  v37 = vcvt_f32_f64(v21);
  v38 = v18;
  v39 = v17;
  v41 = v32;
  v43 = DWORD1(v32);
  v45 = DWORD2(v32);
  v40 = vzip1q_s32(v31, v30).u64[0];
  v42 = vtrn2q_s32(v31, v30).u64[0];
  v44 = vzip1q_s32(vdupq_laneq_s32(v31, 2), vdupq_laneq_s32(v30, 2)).u64[0];
  v22 = *&parameters[2].var5.var3;
  v56 = *&parameters[2].var4;
  v57 = v22;
  v58 = *&parameters[2].var5.var7;
  v23 = *&parameters[1].var5.var6;
  v52 = *&parameters[1].var5.var2;
  v53 = v23;
  v24 = *&parameters[1].var6.var6;
  v54 = *&parameters[1].var6.var2;
  v55 = v24;
  v25 = *&parameters->var6.var1;
  v48 = *&parameters->var5.var5;
  v49 = v25;
  v26 = *&parameters[1].var3;
  v50 = *&parameters->var6.var5;
  v51 = v26;
  v27 = *&parameters->var5.var1;
  v46 = *&parameters->var2;
  v47 = v27;
  LODWORD(v59) = _outputPlaneCcwRotations;
  [encoderCopy setBytes:v35 length:512 atIndex:0];
}

- ($BFB66DEB4EA2CF190BAABA286C893F32)calibrationParams
{
  v3 = *&self[4].var5.var1;
  *&retstr[2].var4 = *&self[4].var2;
  *&retstr[2].var5.var3 = v3;
  *&retstr[2].var5.var7 = *&self[4].var5.var5;
  v4 = *&self[3].var5.var4;
  *&retstr[1].var5.var2 = *&self[3].var5.var0;
  *&retstr[1].var5.var6 = v4;
  v5 = *&self[3].var6.var4;
  *&retstr[1].var6.var2 = *&self[3].var6.var0;
  *&retstr[1].var6.var6 = v5;
  v6 = *&self[2].var5.var7;
  *&retstr->var5.var5 = *&self[2].var5.var3;
  *&retstr->var6.var1 = v6;
  v7 = *&self[2].var6.var7;
  *&retstr->var6.var5 = *&self[2].var6.var3;
  *&retstr[1].var3 = v7;
  v8 = *&self[2].var4;
  *&retstr->var2 = *&self[1].var6.var6;
  *&retstr->var5.var1 = v8;
  return self;
}

- (CGRect)outputROI
{
  x = self->_outputROI.origin.x;
  y = self->_outputROI.origin.y;
  width = self->_outputROI.size.width;
  height = self->_outputROI.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (uint64_t)initializeMetal
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_0();
  return FigDebugAssert3();
}

- (uint64_t)_compileShaders
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_0();
  return FigDebugAssert3();
}

- (uint64_t)_createComputePipelinesForShaders:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_0();
  return FigDebugAssert3();
}

- (uint64_t)_compileComputeShader:pixelFormat:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_0();
  return FigDebugAssert3();
}

- (uint64_t)_compileComputeShader:pixelFormat:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_0();
  return FigDebugAssert3();
}

- (uint64_t)_compileComputeShader:pixelFormat:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_0();
  return FigDebugAssert3();
}

- (uint64_t)_compileComputeShader:pixelFormat:.cold.4()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_0();
  return FigDebugAssert3();
}

@end