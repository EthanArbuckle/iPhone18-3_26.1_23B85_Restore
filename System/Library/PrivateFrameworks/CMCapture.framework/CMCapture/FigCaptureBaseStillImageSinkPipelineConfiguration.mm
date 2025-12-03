@interface FigCaptureBaseStillImageSinkPipelineConfiguration
- (BOOL)isEqual:(id)equal;
- (FigCaptureBaseStillImageSinkPipelineConfiguration)initWithCoder:(id)coder;
- (FigCaptureIrisSinkConfiguration)irisSinkConfiguration;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
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

- (FigCaptureBaseStillImageSinkPipelineConfiguration)initWithCoder:(id)coder
{
  v4 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self init];
  if (v4)
  {
    v4->_allowsMultipleInflightCaptures = [coder decodeBoolForKey:@"allowsMultipleInflightCaptures"];
    v4->_clientIsCameraOrDerivative = [coder decodeBoolForKey:@"clientIsCameraOrDerivative"];
    v4->_allowedToModifyInputBuffers = [coder decodeBoolForKey:@"allowedToModifyInputBuffers"];
    v4->_inputIs10Bit = [coder decodeBoolForKey:@"inputIs10Bit"];
    v4->_horizontalSensorBinningFactor = [coder decodeInt32ForKey:@"horizontalSensorBinningFactor"];
    v4->_verticalSensorBinningFactor = [coder decodeInt32ForKey:@"verticalSensorBinningFactor"];
    [coder decodeFloatForKey:@"maxSupportedFrameRate"];
    v4->_maxSupportedFrameRate = v5;
    v4->_motionAttachmentsSource = [coder decodeInt32ForKey:@"motionAttachmentsSource"];
    v4->_sinkConfiguration = [coder decodeObjectOfClass:objc_opt_class() forKey:@"sinkConfiguration"];
    v4->_usesHighEncodingPriority = [coder decodeBoolForKey:@"usesHighEncodingPriority"];
    v4->_outputPixelFormat = [coder decodeInt32ForKey:@"outputPixelFormat"];
    v4->_outputColorSpaceProperties = [coder decodeInt32ForKey:@"outputColorSpacePropertiesKey"];
    v4->_stillImageStabilizationSupported = [coder decodeBoolForKey:@"stillImageStabilizationSupported"];
    v4->_noiseReductionAndFusionScheme = [coder decodeInt32ForKey:@"noiseReductionAndFusionScheme"];
    v4->_depthDataTargetDimensions.width = [coder decodeInt32ForKey:@"depthDataTargetDimensionsWidth"];
    v4->_depthDataTargetDimensions.height = [coder decodeInt32ForKey:@"depthDataTargetDimensionsHeight"];
    v4->_depthDataSourceDimensions.width = [coder decodeInt32ForKey:@"depthDataSourceDimensionsWidth"];
    v4->_depthDataSourceDimensions.height = [coder decodeInt32ForKey:@"depthDataSourceDimensionsHeight"];
    [coder decodeFloatForKey:@"portraitEffectsMatteMainImageDownscalingFactor"];
    v4->_portraitEffectsMatteMainImageDownscalingFactor = v6;
    v4->_cinematicFramingWarpingRequired = [coder decodeBoolForKey:@"cinematicFramingWarpingRequiredKey"];
    v4->_cinematicFramingWarpingOutputDimensions.width = [coder decodeInt32ForKey:@"cinematicFramingWarpingOutputDimensionsWidth"];
    v4->_cinematicFramingWarpingOutputDimensions.height = [coder decodeInt32ForKey:@"cinematicFramingWarpingOutputDimensionsHeight"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeBool:self->_allowsMultipleInflightCaptures forKey:@"allowsMultipleInflightCaptures"];
  [coder encodeBool:self->_clientIsCameraOrDerivative forKey:@"clientIsCameraOrDerivative"];
  [coder encodeBool:self->_allowedToModifyInputBuffers forKey:@"allowedToModifyInputBuffers"];
  [coder encodeBool:self->_inputIs10Bit forKey:@"inputIs10Bit"];
  [coder encodeInt32:self->_horizontalSensorBinningFactor forKey:@"horizontalSensorBinningFactor"];
  [coder encodeInt32:self->_verticalSensorBinningFactor forKey:@"verticalSensorBinningFactor"];
  *&v5 = self->_maxSupportedFrameRate;
  [coder encodeFloat:@"maxSupportedFrameRate" forKey:v5];
  [coder encodeInt32:self->_motionAttachmentsSource forKey:@"motionAttachmentsSource"];
  [coder encodeObject:self->_sinkConfiguration forKey:@"sinkConfiguration"];
  [coder encodeBool:self->_usesHighEncodingPriority forKey:@"usesHighEncodingPriority"];
  [coder encodeInt32:self->_outputPixelFormat forKey:@"outputPixelFormat"];
  [coder encodeInt32:self->_outputColorSpaceProperties forKey:@"outputColorSpacePropertiesKey"];
  [coder encodeBool:self->_stillImageStabilizationSupported forKey:@"stillImageStabilizationSupported"];
  [coder encodeInt32:self->_noiseReductionAndFusionScheme forKey:@"noiseReductionAndFusionScheme"];
  [coder encodeInt32:self->_depthDataTargetDimensions.width forKey:@"depthDataTargetDimensionsWidth"];
  [coder encodeInt32:self->_depthDataTargetDimensions.height forKey:@"depthDataTargetDimensionsHeight"];
  [coder encodeInt32:self->_depthDataSourceDimensions.width forKey:@"depthDataSourceDimensionsWidth"];
  [coder encodeInt32:self->_depthDataSourceDimensions.height forKey:@"depthDataSourceDimensionsHeight"];
  *&v6 = self->_portraitEffectsMatteMainImageDownscalingFactor;
  [coder encodeFloat:@"portraitEffectsMatteMainImageDownscalingFactor" forKey:v6];
  [coder encodeBool:self->_cinematicFramingWarpingRequired forKey:@"cinematicFramingWarpingRequiredKey"];
  [coder encodeInt32:self->_cinematicFramingWarpingOutputDimensions.width forKey:@"cinematicFramingWarpingOutputDimensionsWidth"];
  height = self->_cinematicFramingWarpingOutputDimensions.height;

  [coder encodeInt32:height forKey:@"cinematicFramingWarpingOutputDimensionsHeight"];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
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

    allowsMultipleInflightCaptures = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self allowsMultipleInflightCaptures];
    if (allowsMultipleInflightCaptures != [equal allowsMultipleInflightCaptures])
    {
      goto LABEL_22;
    }

    clientIsCameraOrDerivative = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self clientIsCameraOrDerivative];
    if (clientIsCameraOrDerivative != [equal clientIsCameraOrDerivative])
    {
      goto LABEL_22;
    }

    allowedToModifyInputBuffers = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self allowedToModifyInputBuffers];
    if (allowedToModifyInputBuffers != [equal allowedToModifyInputBuffers])
    {
      goto LABEL_22;
    }

    inputIs10Bit = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self inputIs10Bit];
    if (inputIs10Bit != [equal inputIs10Bit])
    {
      goto LABEL_22;
    }

    horizontalSensorBinningFactor = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self horizontalSensorBinningFactor];
    if (horizontalSensorBinningFactor != [equal horizontalSensorBinningFactor])
    {
      goto LABEL_22;
    }

    verticalSensorBinningFactor = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self verticalSensorBinningFactor];
    if (verticalSensorBinningFactor != [equal verticalSensorBinningFactor])
    {
      goto LABEL_22;
    }

    [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self maxSupportedFrameRate];
    v20 = v19;
    [equal maxSupportedFrameRate];
    if (v20 != v21)
    {
      goto LABEL_22;
    }

    motionAttachmentsSource = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self motionAttachmentsSource];
    if (motionAttachmentsSource != [equal motionAttachmentsSource])
    {
      goto LABEL_22;
    }

    sinkConfiguration = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self sinkConfiguration];
    if (sinkConfiguration == [equal sinkConfiguration] || (v24 = -[FigCaptureSinkConfiguration isEqual:](-[FigCaptureBaseStillImageSinkPipelineConfiguration sinkConfiguration](self, "sinkConfiguration"), "isEqual:", objc_msgSend(equal, "sinkConfiguration"))))
    {
      v25 = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self usesHighEncodingPriority:v10];
      if (v25 != [equal usesHighEncodingPriority] || (v26 = -[FigCaptureBaseStillImageSinkPipelineConfiguration outputPixelFormat](self, "outputPixelFormat"), v26 != objc_msgSend(equal, "outputPixelFormat")) || (v27 = -[FigCaptureBaseStillImageSinkPipelineConfiguration outputColorSpaceProperties](self, "outputColorSpaceProperties"), v27 != objc_msgSend(equal, "outputColorSpaceProperties")) || (v28 = -[FigCaptureBaseStillImageSinkPipelineConfiguration stillImageStabilizationSupported](self, "stillImageStabilizationSupported"), v28 != objc_msgSend(equal, "stillImageStabilizationSupported")) || (v29 = -[FigCaptureBaseStillImageSinkPipelineConfiguration noiseReductionAndFusionScheme](self, "noiseReductionAndFusionScheme"), v29 != objc_msgSend(equal, "noiseReductionAndFusionScheme")) || (v30 = -[FigCaptureBaseStillImageSinkPipelineConfiguration depthDataSourceDimensions](self, "depthDataSourceDimensions"), v30 != objc_msgSend(equal, "depthDataSourceDimensions")) || (v31 = -[FigCaptureBaseStillImageSinkPipelineConfiguration depthDataTargetDimensions](self, "depthDataTargetDimensions"), v31 != objc_msgSend(equal, "depthDataTargetDimensions")) || (-[FigCaptureBaseStillImageSinkPipelineConfiguration portraitEffectsMatteMainImageDownscalingFactor](self, "portraitEffectsMatteMainImageDownscalingFactor"), v33 = v32, objc_msgSend(equal, "portraitEffectsMatteMainImageDownscalingFactor"), v33 != v34) || (v35 = -[FigCaptureBaseStillImageSinkPipelineConfiguration cinematicFramingWarpingRequired](self, "cinematicFramingWarpingRequired"), v35 != objc_msgSend(equal, "cinematicFramingWarpingRequired")))
      {
LABEL_22:
        LOBYTE(v24) = 0;
        return v24;
      }

      cinematicFramingWarpingOutputDimensions = [(FigCaptureBaseStillImageSinkPipelineConfiguration *)self cinematicFramingWarpingOutputDimensions];
      LOBYTE(v24) = cinematicFramingWarpingOutputDimensions == [equal cinematicFramingWarpingOutputDimensions];
    }
  }

  return v24;
}

@end