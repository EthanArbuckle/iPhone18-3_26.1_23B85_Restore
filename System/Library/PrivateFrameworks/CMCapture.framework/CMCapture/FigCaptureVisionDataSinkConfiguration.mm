@interface FigCaptureVisionDataSinkConfiguration
- (BOOL)isEqual:(id)equal;
- (FigCaptureVisionDataSinkConfiguration)initWithXPCEncoding:(id)encoding;
- (NSDictionary)embeddedCaptureDeviceConfiguration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)description;
- (void)dealloc;
- (void)setMaxBurstDuration:(id *)duration;
@end

@implementation FigCaptureVisionDataSinkConfiguration

- (FigCaptureVisionDataSinkConfiguration)initWithXPCEncoding:(id)encoding
{
  v15.receiver = self;
  v15.super_class = FigCaptureVisionDataSinkConfiguration;
  v4 = [(FigCaptureSinkConfiguration *)&v15 initWithXPCEncoding:?];
  if (v4)
  {
    v5 = xpc_dictionary_get_double(encoding, "maxFrameRate");
    *(&v4->super._deferredStartEnabled + 1) = v5;
    v6 = xpc_dictionary_get_double(encoding, "maxBurstFrameRate");
    v4->_maxFrameRate = v6;
    FigXPCMessageGetCMTime();
    HIDWORD(v4->_maxBurstDuration.epoch) = xpc_dictionary_get_uint64(encoding, "gaussianPyramidOctavesCount");
    *&v7 = xpc_dictionary_get_double(encoding, "gaussianPyramidBaseOctaveDownscalingFactor");
    v4->_gaussianPyramidOctavesCount = v7;
    LODWORD(v4->_gaussianPyramidBaseOctaveDownscalingFactor) = xpc_dictionary_get_uint64(encoding, "maxKeypointsCount");
    *&v8 = xpc_dictionary_get_double(encoding, "keypointDetectionThreshold");
    v4->_maxKeypointsCount = v8;
    LOBYTE(v4->_keypointDetectionThreshold) = xpc_dictionary_get_BOOL(encoding, "featureBinningEnabled");
    BYTE1(v4->_keypointDetectionThreshold) = xpc_dictionary_get_BOOL(encoding, "featureOrientationAssignmentEnabled");
    BYTE2(v4->_keypointDetectionThreshold) = xpc_dictionary_get_BOOL(encoding, "dynamicThresholdingEnabled");
    *&v4->_featureBinningEnabled = xpc_dictionary_get_uint64(encoding, "keypointDetectionFlowType");
    v4->_subPixelThreshold = xpc_dictionary_get_uint64(encoding, "subPixelThreshold");
    v4->_featureMatchingEnabled = xpc_dictionary_get_BOOL(encoding, "featureMatchingEnabled");
    v4->_featureMatchingDescriptorSize = xpc_dictionary_get_uint64(encoding, "featureMatchingDescriptorSize");
    v9 = xpc_dictionary_get_double(encoding, "orientationDistanceThreshold");
    v4->_orientationDistanceThreshold = v9;
    v10 = xpc_dictionary_get_double(encoding, "sigmaDistanceThreshold");
    v4->_sigmaDistanceThreshold = v10;
    v11 = xpc_dictionary_get_double(encoding, "squareDistanceDisparityFraction");
    v4->_squareDistanceDisparityFraction = v11;
    v4->_hammingDistanceThreshold = xpc_dictionary_get_uint64(encoding, "hammingDistanceThreshold");
    length = 0;
    data = xpc_dictionary_get_data(encoding, "laccConfigAndMetadata", &length);
    if (data)
    {
      v4->_laccConfigAndMetadata = [MEMORY[0x1E695DEF0] dataWithBytes:data length:length];
    }
  }

  return v4;
}

- (id)copyXPCEncoding
{
  v13.receiver = self;
  v13.super_class = FigCaptureVisionDataSinkConfiguration;
  copyXPCEncoding = [(FigCaptureSinkConfiguration *)&v13 copyXPCEncoding];
  [(FigCaptureVisionDataSinkConfiguration *)self maxFrameRate];
  xpc_dictionary_set_double(copyXPCEncoding, "maxFrameRate", v4);
  [(FigCaptureVisionDataSinkConfiguration *)self maxBurstFrameRate];
  xpc_dictionary_set_double(copyXPCEncoding, "maxBurstFrameRate", v5);
  if (self)
  {
    [(FigCaptureVisionDataSinkConfiguration *)self maxBurstDuration];
  }

  FigXPCMessageSetCMTime();
  xpc_dictionary_set_uint64(copyXPCEncoding, "gaussianPyramidOctavesCount", [(FigCaptureVisionDataSinkConfiguration *)self gaussianPyramidOctavesCount]);
  [(FigCaptureVisionDataSinkConfiguration *)self gaussianPyramidBaseOctaveDownscalingFactor];
  xpc_dictionary_set_double(copyXPCEncoding, "gaussianPyramidBaseOctaveDownscalingFactor", v6);
  xpc_dictionary_set_uint64(copyXPCEncoding, "maxKeypointsCount", [(FigCaptureVisionDataSinkConfiguration *)self maxKeypointsCount]);
  [(FigCaptureVisionDataSinkConfiguration *)self keypointDetectionThreshold];
  xpc_dictionary_set_double(copyXPCEncoding, "keypointDetectionThreshold", v7);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "featureBinningEnabled", [(FigCaptureVisionDataSinkConfiguration *)self featureBinningEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "featureOrientationAssignmentEnabled", [(FigCaptureVisionDataSinkConfiguration *)self featureOrientationAssignmentEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "dynamicThresholdingEnabled", [(FigCaptureVisionDataSinkConfiguration *)self isDynamicThresholdingEnabled]);
  xpc_dictionary_set_uint64(copyXPCEncoding, "keypointDetectionFlowType", [(FigCaptureVisionDataSinkConfiguration *)self keypointDetectionFlowType]);
  xpc_dictionary_set_uint64(copyXPCEncoding, "subPixelThreshold", [(FigCaptureVisionDataSinkConfiguration *)self subPixelThreshold]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "featureMatchingEnabled", [(FigCaptureVisionDataSinkConfiguration *)self isFeatureMatchingEnabled]);
  xpc_dictionary_set_uint64(copyXPCEncoding, "featureMatchingDescriptorSize", [(FigCaptureVisionDataSinkConfiguration *)self featureMatchingDescriptorSize]);
  [(FigCaptureVisionDataSinkConfiguration *)self orientationDistanceThreshold];
  xpc_dictionary_set_double(copyXPCEncoding, "orientationDistanceThreshold", v8);
  [(FigCaptureVisionDataSinkConfiguration *)self sigmaDistanceThreshold];
  xpc_dictionary_set_double(copyXPCEncoding, "sigmaDistanceThreshold", v9);
  [(FigCaptureVisionDataSinkConfiguration *)self squareDistanceDisparityFraction];
  xpc_dictionary_set_double(copyXPCEncoding, "squareDistanceDisparityFraction", v10);
  xpc_dictionary_set_uint64(copyXPCEncoding, "hammingDistanceThreshold", [(FigCaptureVisionDataSinkConfiguration *)self hammingDistanceThreshold]);
  laccConfigAndMetadata = self->_laccConfigAndMetadata;
  if (laccConfigAndMetadata)
  {
    xpc_dictionary_set_data(copyXPCEncoding, "laccConfigAndMetadata", [(NSData *)laccConfigAndMetadata bytes], [(NSData *)self->_laccConfigAndMetadata length]);
  }

  return copyXPCEncoding;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureVisionDataSinkConfiguration;
  [(FigCaptureSinkConfiguration *)&v3 dealloc];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v30.receiver = self;
  v30.super_class = FigCaptureVisionDataSinkConfiguration;
  v28 = [(FigCaptureSinkConfiguration *)&v30 description];
  [(FigCaptureVisionDataSinkConfiguration *)self maxFrameRate];
  v5 = v4;
  [(FigCaptureVisionDataSinkConfiguration *)self maxBurstFrameRate];
  v7 = v6;
  if (self)
  {
    [(FigCaptureVisionDataSinkConfiguration *)self maxBurstDuration];
  }

  else
  {
    memset(&time, 0, sizeof(time));
  }

  Seconds = CMTimeGetSeconds(&time);
  gaussianPyramidOctavesCount = [(FigCaptureVisionDataSinkConfiguration *)self gaussianPyramidOctavesCount];
  [(FigCaptureVisionDataSinkConfiguration *)self gaussianPyramidBaseOctaveDownscalingFactor];
  v10 = v9;
  maxKeypointsCount = [(FigCaptureVisionDataSinkConfiguration *)self maxKeypointsCount];
  [(FigCaptureVisionDataSinkConfiguration *)self keypointDetectionThreshold];
  v13 = v12;
  featureBinningEnabled = [(FigCaptureVisionDataSinkConfiguration *)self featureBinningEnabled];
  featureOrientationAssignmentEnabled = [(FigCaptureVisionDataSinkConfiguration *)self featureOrientationAssignmentEnabled];
  isDynamicThresholdingEnabled = [(FigCaptureVisionDataSinkConfiguration *)self isDynamicThresholdingEnabled];
  keypointDetectionFlowType = [(FigCaptureVisionDataSinkConfiguration *)self keypointDetectionFlowType];
  subPixelThreshold = [(FigCaptureVisionDataSinkConfiguration *)self subPixelThreshold];
  isFeatureMatchingEnabled = [(FigCaptureVisionDataSinkConfiguration *)self isFeatureMatchingEnabled];
  featureMatchingDescriptorSize = [(FigCaptureVisionDataSinkConfiguration *)self featureMatchingDescriptorSize];
  [(FigCaptureVisionDataSinkConfiguration *)self orientationDistanceThreshold];
  v22 = v21;
  [(FigCaptureVisionDataSinkConfiguration *)self sigmaDistanceThreshold];
  v24 = v23;
  [(FigCaptureVisionDataSinkConfiguration *)self squareDistanceDisparityFraction];
  [string appendFormat:@"%@ maxFPS:%.0f maxBurstFPS:%.0f maxBurstDur:%.3f octaves:%d downscaleBy:%.3f maxKeypoints:%d keypointDetectionThreshold:%.3f featureBinning:%d orientationAware:%d dynamicThresholding:%d keypointDetectionFlow:%d subPixelThreshold:%lu featureMatching:%d featureMatchingDescriptorSize:%d orientationDistanceThreshold:%f sigmaDistanceThreshold:%f squareDistanceDisparityThreshold:%f hammingDistanceThreshold:%lu", v28, *&v5, *&v7, *&Seconds, gaussianPyramidOctavesCount, *&v10, maxKeypointsCount, *&v13, featureBinningEnabled, featureOrientationAssignmentEnabled, isDynamicThresholdingEnabled, keypointDetectionFlowType, subPixelThreshold, isFeatureMatchingEnabled, featureMatchingDescriptorSize, *&v22, *&v24, v25, -[FigCaptureVisionDataSinkConfiguration hammingDistanceThreshold](self, "hammingDistanceThreshold")];
  if ([(FigCaptureVisionDataSinkConfiguration *)self laccConfigAndMetadata])
  {
    [string appendFormat:@" LACCConfigAndMetadata:%@", -[FigCaptureVisionDataSinkConfiguration laccConfigAndMetadata](self, "laccConfigAndMetadata")];
  }

  return [MEMORY[0x1E696AEC0] stringWithString:string];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17.receiver = self;
  v17.super_class = FigCaptureVisionDataSinkConfiguration;
  v5 = [(FigCaptureSinkConfiguration *)&v17 copyWithZone:?];
  LODWORD(v6) = *(&self->super._deferredStartEnabled + 1);
  [v5 setMaxFrameRate:v6];
  *&v7 = self->_maxFrameRate;
  [v5 setMaxBurstFrameRate:v7];
  v15 = *&self->_maxBurstFrameRate;
  v16 = *&self->_maxBurstDuration.flags;
  [v5 setMaxBurstDuration:&v15];
  [v5 setGaussianPyramidOctavesCount:HIDWORD(self->_maxBurstDuration.epoch)];
  LODWORD(v8) = self->_gaussianPyramidOctavesCount;
  [v5 setGaussianPyramidBaseOctaveDownscalingFactor:v8];
  [v5 setMaxKeypointsCount:LODWORD(self->_gaussianPyramidBaseOctaveDownscalingFactor)];
  LODWORD(v9) = self->_maxKeypointsCount;
  [v5 setKeypointDetectionThreshold:v9];
  [v5 setFeatureBinningEnabled:LOBYTE(self->_keypointDetectionThreshold)];
  [v5 setFeatureOrientationAssignmentEnabled:BYTE1(self->_keypointDetectionThreshold)];
  [v5 setDynamicThresholdingEnabled:BYTE2(self->_keypointDetectionThreshold)];
  [v5 setKeypointDetectionFlowType:*&self->_featureBinningEnabled];
  [v5 setSubPixelThreshold:self->_subPixelThreshold];
  [v5 setFeatureMatchingEnabled:self->_featureMatchingEnabled];
  [v5 setFeatureMatchingDescriptorSize:self->_featureMatchingDescriptorSize];
  *&v10 = self->_orientationDistanceThreshold;
  [v5 setOrientationDistanceThreshold:v10];
  *&v11 = self->_sigmaDistanceThreshold;
  [v5 setSigmaDistanceThreshold:v11];
  *&v12 = self->_squareDistanceDisparityFraction;
  [v5 setSquareDistanceDisparityFraction:v12];
  [v5 setHammingDistanceThreshold:self->_hammingDistanceThreshold];
  v13 = [(NSData *)self->_laccConfigAndMetadata copyWithZone:zone];
  [v5 setLaccConfigAndMetadata:v13];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v7.receiver = self;
  v7.super_class = FigCaptureVisionDataSinkConfiguration;
  v5 = [(FigCaptureSinkConfiguration *)&v7 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      LOBYTE(v5) = -[NSDictionary isEqual:](-[FigCaptureVisionDataSinkConfiguration embeddedCaptureDeviceConfiguration](self, "embeddedCaptureDeviceConfiguration"), "isEqual:", [equal embeddedCaptureDeviceConfiguration]);
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (NSDictionary)embeddedCaptureDeviceConfiguration
{
  v3 = *MEMORY[0x1E695E480];
  time = *&self->_maxBurstFrameRate;
  v4 = CMTimeCopyAsDictionary(&time, v3);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v18[0] = *off_1E798CBC0;
  LODWORD(v6) = *(&self->super._deferredStartEnabled + 1);
  v19[0] = [MEMORY[0x1E696AD98] numberWithFloat:{v6, v18[0]}];
  v18[1] = *off_1E798CBB8;
  *&v7 = self->_maxFrameRate;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  v9 = *off_1E798CBB0;
  v19[1] = v8;
  v19[2] = v4;
  v10 = *off_1E798CB88;
  v18[2] = v9;
  v18[3] = v10;
  v19[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:HIDWORD(self->_maxBurstDuration.epoch)];
  v18[4] = *off_1E798CB80;
  LODWORD(v11) = self->_gaussianPyramidOctavesCount;
  v19[4] = [MEMORY[0x1E696AD98] numberWithFloat:v11];
  v18[5] = *off_1E798CBC8;
  v19[5] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:LODWORD(self->_gaussianPyramidBaseOctaveDownscalingFactor)];
  v18[6] = *off_1E798CBA0;
  LODWORD(v12) = self->_maxKeypointsCount;
  v19[6] = [MEMORY[0x1E696AD98] numberWithFloat:v12];
  v18[7] = *off_1E798CB60;
  v19[7] = [MEMORY[0x1E696AD98] numberWithBool:LOBYTE(self->_keypointDetectionThreshold)];
  v18[8] = *off_1E798CB78;
  v19[8] = [MEMORY[0x1E696AD98] numberWithBool:BYTE1(self->_keypointDetectionThreshold)];
  v18[9] = *off_1E798CB58;
  v19[9] = [MEMORY[0x1E696AD98] numberWithBool:BYTE2(self->_keypointDetectionThreshold)];
  v18[10] = *off_1E798CB98;
  v19[10] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*&self->_featureBinningEnabled];
  v18[11] = *off_1E798CBF0;
  v19[11] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_subPixelThreshold];
  v18[12] = *off_1E798CB70;
  v19[12] = [MEMORY[0x1E696AD98] numberWithBool:self->_featureMatchingEnabled];
  v18[13] = *off_1E798CB68;
  v19[13] = [MEMORY[0x1E696AD98] numberWithInt:self->_featureMatchingDescriptorSize];
  v18[14] = *off_1E798CBD0;
  *&v13 = self->_orientationDistanceThreshold;
  v19[14] = [MEMORY[0x1E696AD98] numberWithFloat:v13];
  v18[15] = *off_1E798CBE0;
  *&v14 = self->_sigmaDistanceThreshold;
  v19[15] = [MEMORY[0x1E696AD98] numberWithFloat:v14];
  v18[16] = *off_1E798CBE8;
  *&v15 = self->_squareDistanceDisparityFraction;
  v19[16] = [MEMORY[0x1E696AD98] numberWithFloat:v15];
  v18[17] = *off_1E798CB90;
  v19[17] = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:self->_hammingDistanceThreshold];
  [dictionary addEntriesFromDictionary:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v19, v18, 18)}];
  laccConfigAndMetadata = self->_laccConfigAndMetadata;
  if (laccConfigAndMetadata)
  {
    [dictionary setObject:laccConfigAndMetadata forKeyedSubscript:*off_1E798CBA8];
  }

  return [MEMORY[0x1E695DF20] dictionaryWithDictionary:dictionary];
}

- (void)setMaxBurstDuration:(id *)duration
{
  var3 = duration->var3;
  *&self->_maxBurstFrameRate = *&duration->var0;
  *&self->_maxBurstDuration.flags = var3;
}

@end