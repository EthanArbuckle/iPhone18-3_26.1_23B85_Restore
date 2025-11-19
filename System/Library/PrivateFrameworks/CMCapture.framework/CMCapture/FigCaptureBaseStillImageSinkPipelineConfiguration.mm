@interface FigCaptureBaseStillImageSinkPipelineConfiguration
- (BOOL)isEqual:(id)a3;
- (FigCaptureBaseStillImageSinkPipelineConfiguration)initWithCoder:(id)a3;
- (FigCaptureIrisSinkConfiguration)irisSinkConfiguration;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FigCaptureBaseStillImageSinkPipelineConfiguration

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureBaseStillImageSinkPipelineConfiguration;
  [(FigCaptureBaseStillImageSinkPipelineConfiguration *)&v3 dealloc];
}

- (FigCaptureIrisSinkConfiguration)irisSinkConfiguration
{
  if ([(FigCaptureSinkConfiguration *)self->_sinkConfiguration sinkType]== 10)
  {
    return self->_sinkConfiguration;
  }

  else
  {
    return 0;
  }
}

- (FigCaptureBaseStillImageSinkPipelineConfiguration)initWithCoder:(id)a3
{
  v4 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self init];
  if (v4)
  {
    v4->_allowsMultipleInflightCaptures = [a3 decodeBoolForKey:@"allowsMultipleInflightCaptures"];
    v4->_clientIsCameraOrDerivative = [a3 decodeBoolForKey:@"clientIsCameraOrDerivative"];
    v4->_allowedToModifyInputBuffers = [a3 decodeBoolForKey:@"allowedToModifyInputBuffers"];
    v4->_inputIs10Bit = [a3 decodeBoolForKey:@"inputIs10Bit"];
    v4->_horizontalSensorBinningFactor = [a3 decodeInt32ForKey:@"horizontalSensorBinningFactor"];
    v4->_verticalSensorBinningFactor = [a3 decodeInt32ForKey:@"verticalSensorBinningFactor"];
    [a3 decodeFloatForKey:@"maxSupportedFrameRate"];
    v4->_maxSupportedFrameRate = v5;
    v4->_motionAttachmentsSource = [a3 decodeInt32ForKey:@"motionAttachmentsSource"];
    v4->_sinkConfiguration = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"sinkConfiguration"];
    v4->_usesHighEncodingPriority = [a3 decodeBoolForKey:@"usesHighEncodingPriority"];
    v4->_outputPixelFormat = [a3 decodeInt32ForKey:@"outputPixelFormat"];
    v4->_outputColorSpaceProperties = [a3 decodeInt32ForKey:@"outputColorSpacePropertiesKey"];
    v4->_stillImageStabilizationSupported = [a3 decodeBoolForKey:@"stillImageStabilizationSupported"];
    v4->_noiseReductionAndFusionScheme = [a3 decodeInt32ForKey:@"noiseReductionAndFusionScheme"];
    v4->_depthDataTargetDimensions.width = [a3 decodeInt32ForKey:@"depthDataTargetDimensionsWidth"];
    v4->_depthDataTargetDimensions.height = [a3 decodeInt32ForKey:@"depthDataTargetDimensionsHeight"];
    v4->_depthDataSourceDimensions.width = [a3 decodeInt32ForKey:@"depthDataSourceDimensionsWidth"];
    v4->_depthDataSourceDimensions.height = [a3 decodeInt32ForKey:@"depthDataSourceDimensionsHeight"];
    [a3 decodeFloatForKey:@"portraitEffectsMatteMainImageDownscalingFactor"];
    v4->_portraitEffectsMatteMainImageDownscalingFactor = v6;
    v4->_cinematicFramingWarpingRequired = [a3 decodeBoolForKey:@"cinematicFramingWarpingRequiredKey"];
    v4->_cinematicFramingWarpingOutputDimensions.width = [a3 decodeInt32ForKey:@"cinematicFramingWarpingOutputDimensionsWidth"];
    v4->_cinematicFramingWarpingOutputDimensions.height = [a3 decodeInt32ForKey:@"cinematicFramingWarpingOutputDimensionsHeight"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeBool:self->_allowsMultipleInflightCaptures forKey:@"allowsMultipleInflightCaptures"];
  [a3 encodeBool:self->_clientIsCameraOrDerivative forKey:@"clientIsCameraOrDerivative"];
  [a3 encodeBool:self->_allowedToModifyInputBuffers forKey:@"allowedToModifyInputBuffers"];
  [a3 encodeBool:self->_inputIs10Bit forKey:@"inputIs10Bit"];
  [a3 encodeInt32:self->_horizontalSensorBinningFactor forKey:@"horizontalSensorBinningFactor"];
  [a3 encodeInt32:self->_verticalSensorBinningFactor forKey:@"verticalSensorBinningFactor"];
  *&v5 = self->_maxSupportedFrameRate;
  [a3 encodeFloat:@"maxSupportedFrameRate" forKey:v5];
  [a3 encodeInt32:self->_motionAttachmentsSource forKey:@"motionAttachmentsSource"];
  [a3 encodeObject:self->_sinkConfiguration forKey:@"sinkConfiguration"];
  [a3 encodeBool:self->_usesHighEncodingPriority forKey:@"usesHighEncodingPriority"];
  [a3 encodeInt32:self->_outputPixelFormat forKey:@"outputPixelFormat"];
  [a3 encodeInt32:self->_outputColorSpaceProperties forKey:@"outputColorSpacePropertiesKey"];
  [a3 encodeBool:self->_stillImageStabilizationSupported forKey:@"stillImageStabilizationSupported"];
  [a3 encodeInt32:self->_noiseReductionAndFusionScheme forKey:@"noiseReductionAndFusionScheme"];
  [a3 encodeInt32:self->_depthDataTargetDimensions.width forKey:@"depthDataTargetDimensionsWidth"];
  [a3 encodeInt32:self->_depthDataTargetDimensions.height forKey:@"depthDataTargetDimensionsHeight"];
  [a3 encodeInt32:self->_depthDataSourceDimensions.width forKey:@"depthDataSourceDimensionsWidth"];
  [a3 encodeInt32:self->_depthDataSourceDimensions.height forKey:@"depthDataSourceDimensionsHeight"];
  *&v6 = self->_portraitEffectsMatteMainImageDownscalingFactor;
  [a3 encodeFloat:@"portraitEffectsMatteMainImageDownscalingFactor" forKey:v6];
  [a3 encodeBool:self->_cinematicFramingWarpingRequired forKey:@"cinematicFramingWarpingRequiredKey"];
  [a3 encodeInt32:self->_cinematicFramingWarpingOutputDimensions.width forKey:@"cinematicFramingWarpingOutputDimensionsWidth"];
  height = self->_cinematicFramingWarpingOutputDimensions.height;

  [a3 encodeInt32:height forKey:@"cinematicFramingWarpingOutputDimensionsHeight"];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v24) = 1;
  }

  else
  {
    v38 = v9;
    v39 = v5;
    v40 = v4;
    v41 = v3;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_22;
    }

    v13 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self allowsMultipleInflightCaptures];
    if (v13 != [a3 allowsMultipleInflightCaptures])
    {
      goto LABEL_22;
    }

    v14 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self clientIsCameraOrDerivative];
    if (v14 != [a3 clientIsCameraOrDerivative])
    {
      goto LABEL_22;
    }

    v15 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self allowedToModifyInputBuffers];
    if (v15 != [a3 allowedToModifyInputBuffers])
    {
      goto LABEL_22;
    }

    v16 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self inputIs10Bit];
    if (v16 != [a3 inputIs10Bit])
    {
      goto LABEL_22;
    }

    v17 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self horizontalSensorBinningFactor];
    if (v17 != [a3 horizontalSensorBinningFactor])
    {
      goto LABEL_22;
    }

    v18 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self verticalSensorBinningFactor];
    if (v18 != [a3 verticalSensorBinningFactor])
    {
      goto LABEL_22;
    }

    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self maxSupportedFrameRate];
    v20 = v19;
    [a3 maxSupportedFrameRate];
    if (v20 != v21)
    {
      goto LABEL_22;
    }

    v22 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self motionAttachmentsSource];
    if (v22 != [a3 motionAttachmentsSource])
    {
      goto LABEL_22;
    }

    v23 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self sinkConfiguration];
    if (v23 == [a3 sinkConfiguration] || (v24 = -[FigCaptureSinkConfiguration isEqual:](-[FigCaptureBaseStillImageSinkPipelineConfiguration sinkConfiguration](self, "sinkConfiguration"), "isEqual:", objc_msgSend(a3, "sinkConfiguration"))))
    {
      v25 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self usesHighEncodingPriority:v10];
      if (v25 != [a3 usesHighEncodingPriority] || (v26 = -[FigCaptureBaseStillImageSinkPipelineConfiguration outputPixelFormat](self, "outputPixelFormat"), v26 != objc_msgSend(a3, "outputPixelFormat")) || (v27 = -[FigCaptureBaseStillImageSinkPipelineConfiguration outputColorSpaceProperties](self, "outputColorSpaceProperties"), v27 != objc_msgSend(a3, "outputColorSpaceProperties")) || (v28 = -[FigCaptureBaseStillImageSinkPipelineConfiguration stillImageStabilizationSupported](self, "stillImageStabilizationSupported"), v28 != objc_msgSend(a3, "stillImageStabilizationSupported")) || (v29 = -[FigCaptureBaseStillImageSinkPipelineConfiguration noiseReductionAndFusionScheme](self, "noiseReductionAndFusionScheme"), v29 != objc_msgSend(a3, "noiseReductionAndFusionScheme")) || (v30 = -[FigCaptureBaseStillImageSinkPipelineConfiguration depthDataSourceDimensions](self, "depthDataSourceDimensions"), v30 != objc_msgSend(a3, "depthDataSourceDimensions")) || (v31 = -[FigCaptureBaseStillImageSinkPipelineConfiguration depthDataTargetDimensions](self, "depthDataTargetDimensions"), v31 != objc_msgSend(a3, "depthDataTargetDimensions")) || (-[FigCaptureBaseStillImageSinkPipelineConfiguration portraitEffectsMatteMainImageDownscalingFactor](self, "portraitEffectsMatteMainImageDownscalingFactor"), v33 = v32, objc_msgSend(a3, "portraitEffectsMatteMainImageDownscalingFactor"), v33 != v34) || (v35 = -[FigCaptureBaseStillImageSinkPipelineConfiguration cinematicFramingWarpingRequired](self, "cinematicFramingWarpingRequired"), v35 != objc_msgSend(a3, "cinematicFramingWarpingRequired")))
      {
LABEL_22:
        LOBYTE(v24) = 0;
        return v24;
      }

      v36 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self cinematicFramingWarpingOutputDimensions];
      LOBYTE(v24) = v36 == [a3 cinematicFramingWarpingOutputDimensions];
    }
  }

  return v24;
}

@end