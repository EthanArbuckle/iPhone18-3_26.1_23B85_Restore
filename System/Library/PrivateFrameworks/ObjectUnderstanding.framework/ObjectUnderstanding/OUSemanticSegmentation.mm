@interface OUSemanticSegmentation
- (BOOL)setupRotater:(id)rotater;
- (OUSemanticSegmentation)init;
- (__CVBuffer)generateSemanticOnWideCameraWithFrame:(id)frame;
@end

@implementation OUSemanticSegmentation

- (OUSemanticSegmentation)init
{
  v6.receiver = self;
  v6.super_class = OUSemanticSegmentation;
  v2 = [(OUSemanticSegmentation *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->deviceOrientation = 0;
    *&v2->_initRotater = 0;
    v4 = v2;
  }

  return v3;
}

- (BOOL)setupRotater:(id)rotater
{
  rotaterCopy = rotater;
  if (![rotaterCopy semanticLabelBuffer])
  {
    goto LABEL_15;
  }

  if (!self->_initRotater)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType([rotaterCopy colorBuffer]);
    v6 = CVPixelBufferGetPixelFormatType([rotaterCopy semanticLabelBuffer]);
    Width = CVPixelBufferGetWidth([rotaterCopy colorBuffer]);
    Height = CVPixelBufferGetHeight([rotaterCopy colorBuffer]);
    width = [[OUCVPixelBufferRotate alloc] initForRotationDegree:90 resolution:PixelFormatType pixelFormat:Height, Width];
    cvRotate90 = self->cvRotate90;
    self->cvRotate90 = width;

    v11 = [[OUCVPixelBufferRotate alloc] initForRotationDegree:270 resolution:v6 pixelFormat:256.0, 192.0];
    cvRotate90r = self->cvRotate90r;
    self->cvRotate90r = v11;

    height = [[OUCVPixelBufferRotate alloc] initForRotationDegree:180 resolution:PixelFormatType pixelFormat:Width, Height];
    cvRotate180 = self->cvRotate180;
    self->cvRotate180 = height;

    v15 = [[OUCVPixelBufferRotate alloc] initForRotationDegree:180 resolution:v6 pixelFormat:256.0, 192.0];
    cvRotate180r = self->cvRotate180r;
    self->cvRotate180r = v15;

    width2 = [[OUCVPixelBufferRotate alloc] initForRotationDegree:270 resolution:PixelFormatType pixelFormat:Height, Width];
    cvRotate270 = self->cvRotate270;
    self->cvRotate270 = width2;

    v19 = [[OUCVPixelBufferRotate alloc] initForRotationDegree:90 resolution:v6 pixelFormat:256.0, 192.0];
    cvRotate270r = self->cvRotate270r;
    self->cvRotate270r = v19;

    self->_initRotater = 1;
  }

  if (!self->_initSegModel || (deviceOrientation = self->deviceOrientation, deviceOrientation != [rotaterCopy deviceOrientation]))
  {
    self->deviceOrientation = [rotaterCopy deviceOrientation];
    v23 = objc_alloc_init(MEMORY[0x277D4B718]);
    semanticConfig = self->semanticConfig;
    self->semanticConfig = v23;

    deviceOrientation = [rotaterCopy deviceOrientation];
    if ((deviceOrientation - 3) < 2)
    {
      [(SISceneSegmentationNetworkConfiguration *)self->semanticConfig setNetworkModeEnum:1];
      v26 = objc_alloc(MEMORY[0x277D4B708]);
      v27 = 192.0;
      v28 = 256.0;
      goto LABEL_11;
    }

    if ((deviceOrientation - 1) <= 1)
    {
      [(SISceneSegmentationNetworkConfiguration *)self->semanticConfig setNetworkModeEnum:2];
      v26 = objc_alloc(MEMORY[0x277D4B708]);
      v27 = 256.0;
      v28 = 192.0;
LABEL_11:
      v29 = [v26 initWithOutputResolution:{v28, v27}];
      semResultData = self->semResultData;
      self->semResultData = v29;

      self->semanticModel = [(SISceneSegmentationNetworkConfiguration *)self->semanticConfig networkModeEnum];
      [(SISceneSegmentationNetworkConfiguration *)self->semanticConfig setEngineType:1];
      [(SISceneSegmentationNetworkConfiguration *)self->semanticConfig setRunByE5RT:1];
      LODWORD(v31) = 1053609165;
      [(SISceneSegmentationNetworkConfiguration *)self->semanticConfig setUncertaintyThreshold:v31];
      [(SISceneSegmentationNetworkConfiguration *)self->semanticConfig setModelConfig:0];
      v32 = objc_alloc(MEMORY[0x277D4B700]);
      v22 = 1;
      LODWORD(v33) = 1053609165;
      v34 = [v32 initWithComputeEngine:1 andNetworkConfiguration:0 uncertaintyThreshold:v33];
      siSceneSegmentationAlgorithm = self->siSceneSegmentationAlgorithm;
      self->siSceneSegmentationAlgorithm = v34;

      self->_initSegModel = 1;
      goto LABEL_16;
    }

    v36 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [OUSemanticSegmentation setupRotater:];
    }

LABEL_15:
    v22 = 0;
    goto LABEL_16;
  }

  v22 = 1;
LABEL_16:

  return v22;
}

- (__CVBuffer)generateSemanticOnWideCameraWithFrame:(id)frame
{
  frameCopy = frame;
  if ([(OUSemanticSegmentation *)self setupRotater:frameCopy])
  {
    sceneColorBuffer = [frameCopy sceneColorBuffer];
    v6 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [OUSemanticSegmentation generateSemanticOnWideCameraWithFrame:];
    }

    deviceOrientation = [frameCopy deviceOrientation];
    if (deviceOrientation > 2)
    {
      if (deviceOrientation == 3)
      {
        siSceneSegmentationAlgorithm = self->siSceneSegmentationAlgorithm;
        IOSurface = CVPixelBufferGetIOSurface([(SISceneSegmentationData *)self->semResultData semantic]);
        v19 = CVPixelBufferGetIOSurface([(SISceneSegmentationData *)self->semResultData confidence]);
        [(SISceneSegmentationAlgorithm *)siSceneSegmentationAlgorithm runWithInput:sceneColorBuffer output:IOSurface confidenceOutput:v19 uncertaintyOutput:CVPixelBufferGetIOSurface([(SISceneSegmentationData *)self->semResultData uncertainty]) resampleOutput:1 networkConfiguration:1];
        semantic = [(SISceneSegmentationData *)self->semResultData semantic];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          [OUSemanticSegmentation generateSemanticOnWideCameraWithFrame:];
        }

        goto LABEL_23;
      }

      if (deviceOrientation == 4)
      {
        v8 = 32;
        v9 = 24;
        goto LABEL_18;
      }
    }

    else
    {
      if (deviceOrientation == 1)
      {
        v8 = 16;
        v9 = 8;
        goto LABEL_18;
      }

      if (deviceOrientation == 2)
      {
        v8 = 48;
        v9 = 40;
LABEL_18:
        v10 = *(&self->super.isa + v9);
        v12 = *(&self->super.isa + v8);
        v13 = [v10 rotateImage:sceneColorBuffer];
        v14 = self->siSceneSegmentationAlgorithm;
        v15 = CVPixelBufferGetIOSurface([(SISceneSegmentationData *)self->semResultData semantic]);
        v16 = CVPixelBufferGetIOSurface([(SISceneSegmentationData *)self->semResultData confidence]);
        [(SISceneSegmentationAlgorithm *)v14 runWithInput:v13 output:v15 confidenceOutput:v16 uncertaintyOutput:CVPixelBufferGetIOSurface([(SISceneSegmentationData *)self->semResultData uncertainty]) resampleOutput:1 networkConfiguration:self->semanticModel];
        semantic = [v12 rotateImage:{-[SISceneSegmentationData semantic](self->semResultData, "semantic")}];
        if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          *v21 = 0;
          _os_log_impl(&dword_25D1DB000, v6, OS_LOG_TYPE_INFO, "Generating semantic over wide (rotation) camera end", v21, 2u);
        }

        goto LABEL_24;
      }
    }

    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [OUSemanticSegmentation generateSemanticOnWideCameraWithFrame:];
    }

    semantic = 0;
LABEL_23:
    v10 = v6;
    goto LABEL_24;
  }

  v10 = _OULoggingGetOSLogForCategoryObjectUnderstanding();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [OUSemanticSegmentation generateSemanticOnWideCameraWithFrame:];
  }

  semantic = 0;
LABEL_24:

  return semantic;
}

@end