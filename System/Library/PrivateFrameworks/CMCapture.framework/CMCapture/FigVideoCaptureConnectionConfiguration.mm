@interface FigVideoCaptureConnectionConfiguration
+ (BOOL)cameraIntrinsicMatrixDeliveryEnabled:(id)enabled doingFaceTracking:(BOOL)tracking;
+ (id)videoStabilizationMethods:(id)methods includeIris:(BOOL)iris;
- ($2825F4736939C4A6D3AD43837233062D)nonRotatedOutputDimensions;
- (BOOL)irisVISEnabled;
- (BOOL)isEqual:(id)equal;
- (BOOL)portraitAutoSuggestEnabled;
- (BOOL)previewDepthDataDeliveryEnabled;
- (BOOL)previewDepthFilterRenderingEnabled;
- (BOOL)previewFilterRenderingEnabled;
- (BOOL)requiresScalingForInputTransForm:(FigCaptureVideoTransform)form nodeName:(id)name;
- (FigCaptureVideoTransform)depthDataTransform;
- (FigCaptureVideoTransform)depthDataTransformWithSourceDimensions;
- (FigCaptureVideoTransform)transform;
- (FigVideoCaptureConnectionConfiguration)initWithXPCEncoding:(id)encoding;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (id)description;
- (int)irisVISMethod;
- (uint64_t)_transformWithSourceDimensions:(int)dimensions forceSourceDimensions:;
@end

@implementation FigVideoCaptureConnectionConfiguration

- (BOOL)previewDepthFilterRenderingEnabled
{
  if (![(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] depthDataDeliveryEnabled])
  {
LABEL_4:
    LODWORD(v4) = 0;
    goto LABEL_5;
  }

  depthDataFormat = [(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] depthDataFormat];
  v4 = depthDataFormat;
  if (depthDataFormat)
  {
    if (![(FigCaptureSourceFormat *)depthDataFormat dimensions])
    {
      LODWORD(v4) = [(FigCaptureSourceFormat *)v4 dimensions]>> 32 == 0;
      goto LABEL_5;
    }

    goto LABEL_4;
  }

LABEL_5:
  if (![(FigCaptureVideoPreviewSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self videoPreviewSinkConfiguration] depthDataDeliveryEnabled]&& !v4)
  {
    return 0;
  }

  videoPreviewSinkConfiguration = [(FigCaptureConnectionConfiguration *)self videoPreviewSinkConfiguration];

  return [(FigCaptureVideoPreviewSinkConfiguration *)videoPreviewSinkConfiguration filterRenderingEnabled];
}

- (BOOL)previewDepthDataDeliveryEnabled
{
  videoPreviewSinkConfiguration = [(FigCaptureConnectionConfiguration *)self videoPreviewSinkConfiguration];

  return [(FigCaptureVideoPreviewSinkConfiguration *)videoPreviewSinkConfiguration depthDataDeliveryEnabled];
}

- (BOOL)irisVISEnabled
{
  irisMovieCaptureEnabled = [(FigCaptureIrisSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self irisSinkConfiguration] irisMovieCaptureEnabled];
  if (irisMovieCaptureEnabled)
  {
    requiredFormat = [(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] requiredFormat];

    LOBYTE(irisMovieCaptureEnabled) = [(FigCaptureSourceVideoFormat *)requiredFormat isIrisVideoStabilizationSupported];
  }

  return irisMovieCaptureEnabled;
}

- (int)irisVISMethod
{
  result = [(FigVideoCaptureConnectionConfiguration *)self irisVISEnabled];
  if (result)
  {
    [(FigCaptureSourceVideoFormat *)[(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] requiredFormat] cinematicStabilizationExtendedLookAheadDuration];
    if (v4 <= 0.0)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

- (BOOL)portraitAutoSuggestEnabled
{
  portraitAutoSuggestEnabled = [(FigCaptureVideoPreviewSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self videoPreviewSinkConfiguration] portraitAutoSuggestEnabled];
  if (portraitAutoSuggestEnabled)
  {
    requiredFormat = [(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] requiredFormat];

    LOBYTE(portraitAutoSuggestEnabled) = [(FigCaptureSourceVideoFormat *)requiredFormat isPortraitAutoSuggestSupported];
  }

  return portraitAutoSuggestEnabled;
}

- (BOOL)previewFilterRenderingEnabled
{
  if ([(FigCaptureVideoPreviewSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self videoPreviewSinkConfiguration] filterRenderingEnabled])
  {
    return 1;
  }

  videoPreviewSinkConfiguration = [(FigCaptureConnectionConfiguration *)self videoPreviewSinkConfiguration];

  return [(FigCaptureVideoPreviewSinkConfiguration *)videoPreviewSinkConfiguration semanticStyleRenderingEnabled];
}

- (id)description
{
  underlyingDeviceType = [(FigCaptureConnectionConfiguration *)self underlyingDeviceType];
  v4 = &stru_1F216A3D0;
  if (underlyingDeviceType != [(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] sourceDeviceType])
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" (SUB-DEVICE:%@)", +[FigCaptureSourceConfiguration stringForSourceDeviceType:](FigCaptureSourceConfiguration, "stringForSourceDeviceType:", -[FigCaptureConnectionConfiguration underlyingDeviceType](self, "underlyingDeviceType"))];
  }

  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"VC %p: <%@>%@ -> <%@>", self, -[FigCaptureConnectionConfiguration sourceConfiguration](self, "sourceConfiguration"), v4, -[FigCaptureConnectionConfiguration sinkConfiguration](self, "sinkConfiguration")];
  [(FigVideoCaptureConnectionConfiguration *)self outputFormat];
  [v5 appendFormat:@", %@/%dx%d", BWStringForOSType(), -[FigVideoCaptureConnectionConfiguration outputWidth](self, "outputWidth"), -[FigVideoCaptureConnectionConfiguration outputHeight](self, "outputHeight")];
  if ([(FigVideoCaptureConnectionConfiguration *)self physicalMirroringForMovieRecordingEnabled])
  {
    v6 = @" PhysMM:1,";
  }

  else
  {
    v6 = &stru_1F216A3D0;
  }

  [v5 appendFormat:@", E:%d, VIS:%d, M:%d, %@ R:%d, DOC:%d, RBC:%d, CIM:%d", -[FigCaptureConnectionConfiguration enabled](self, "enabled"), -[FigVideoCaptureConnectionConfiguration videoStabilizationMethod](self, "videoStabilizationMethod"), -[FigVideoCaptureConnectionConfiguration mirroringEnabled](self, "mirroringEnabled"), v6, -[FigVideoCaptureConnectionConfiguration rotationDegrees](self, "rotationDegrees"), -[FigVideoCaptureConnectionConfiguration deviceOrientationCorrectionEnabled](self, "deviceOrientationCorrectionEnabled"), -[FigVideoCaptureConnectionConfiguration retainedBufferCount](self, "retainedBufferCount"), -[FigVideoCaptureConnectionConfiguration cameraIntrinsicMatrixDeliveryEnabled](self, "cameraIntrinsicMatrixDeliveryEnabled")];
  return v5;
}

- (id)copyXPCEncoding
{
  v5.receiver = self;
  v5.super_class = FigVideoCaptureConnectionConfiguration;
  copyXPCEncoding = [(FigCaptureConnectionConfiguration *)&v5 copyXPCEncoding];
  xpc_dictionary_set_int64(copyXPCEncoding, "outputFormat", [(FigVideoCaptureConnectionConfiguration *)self outputFormat]);
  xpc_dictionary_set_int64(copyXPCEncoding, "outputWidth", [(FigVideoCaptureConnectionConfiguration *)self outputWidth]);
  xpc_dictionary_set_int64(copyXPCEncoding, "outputHeight", [(FigVideoCaptureConnectionConfiguration *)self outputHeight]);
  xpc_dictionary_set_int64(copyXPCEncoding, "videoStabilizationMethod", [(FigVideoCaptureConnectionConfiguration *)self videoStabilizationMethod]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "mirroringEnabled", [(FigVideoCaptureConnectionConfiguration *)self mirroringEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "physicalMirroringForMovieRecordingEnabled", [(FigVideoCaptureConnectionConfiguration *)self physicalMirroringForMovieRecordingEnabled]);
  xpc_dictionary_set_int64(copyXPCEncoding, "rotationDegrees", [(FigVideoCaptureConnectionConfiguration *)self rotationDegrees]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "deviceOrientationCorrectionEnabled", [(FigVideoCaptureConnectionConfiguration *)self deviceOrientationCorrectionEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "zoomSmoothingEnabled", [(FigVideoCaptureConnectionConfiguration *)self zoomSmoothingEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "videoGreenGhostMitigationEnabled", [(FigVideoCaptureConnectionConfiguration *)self videoGreenGhostMitigationEnabled]);
  xpc_dictionary_set_int64(copyXPCEncoding, "retainedBufferCount", [(FigVideoCaptureConnectionConfiguration *)self retainedBufferCount]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "cameraIntrinsicMatrixDeliveryEnabled", [(FigVideoCaptureConnectionConfiguration *)self cameraIntrinsicMatrixDeliveryEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "livePhotoMetadataWritingEnabled", [(FigVideoCaptureConnectionConfiguration *)self livePhotoMetadataWritingEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "stereoVideoCaptureEnabled", [(FigVideoCaptureConnectionConfiguration *)self stereoVideoCaptureEnabled]);
  xpc_dictionary_set_BOOL(copyXPCEncoding, "attachMetadataToVideoBuffers", [(FigVideoCaptureConnectionConfiguration *)self attachMetadataToVideoBuffers]);
  return copyXPCEncoding;
}

- (FigCaptureVideoTransform)transform
{
  dimensions = [(FigCaptureSourceFormat *)[(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] requiredFormat] dimensions];

  v4 = [(FigVideoCaptureConnectionConfiguration *)self _transformWithSourceDimensions:0 forceSourceDimensions:?];
  result.dimensions = v5;
  result.mirrored = v4;
  result.rotationDegrees = HIDWORD(v4);
  return result;
}

+ (id)videoStabilizationMethods:(id)methods includeIris:(BOOL)iris
{
  irisCopy = iris;
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [methods countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(methods);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          sinkConfiguration = [v11 sinkConfiguration];
          if ([sinkConfiguration sinkType] == 4 || objc_msgSend(sinkConfiguration, "sinkType") == 6 || objc_msgSend(sinkConfiguration, "sinkType") == 1)
          {
            videoStabilizationMethod = [v11 videoStabilizationMethod];
          }

          else
          {
            if (!irisCopy || ![v11 irisVISEnabled])
            {
              goto LABEL_13;
            }

            videoStabilizationMethod = [v11 irisVISMethod];
          }

          if (videoStabilizationMethod)
          {
            [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", videoStabilizationMethod)}];
          }
        }

LABEL_13:
        ++v10;
      }

      while (v8 != v10);
      v14 = [methods countByEnumeratingWithState:&v17 objects:v16 count:16];
      v8 = v14;
    }

    while (v14);
  }

  return array;
}

+ (BOOL)cameraIntrinsicMatrixDeliveryEnabled:(id)enabled doingFaceTracking:(BOOL)tracking
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [enabled countByEnumeratingWithState:&v17 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      v9 = 0;
      do
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(enabled);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        sinkConfiguration = [v10 sinkConfiguration];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([sinkConfiguration sinkType] == 6)
          {
            cameraIntrinsicMatrixDeliveryEnabled = [v10 cameraIntrinsicMatrixDeliveryEnabled];
            LOBYTE(v6) = 1;
            if ((cameraIntrinsicMatrixDeliveryEnabled & 1) != 0 || tracking)
            {
              return v6;
            }
          }

          if ([objc_msgSend(v10 "sourceConfiguration")])
          {
            if ([objc_msgSend(v10 "sourceConfiguration")] == 13 || ((v13 = objc_msgSend(objc_msgSend(v10, "sourceConfiguration"), "sourceDeviceType"), v13 == 12) || v13 == 6) && (FigCaptureSourceGetBoolAttribute(objc_msgSend(objc_msgSend(v10, "sourceConfiguration"), "source"), @"Focus", 0) & 1) != 0)
            {
LABEL_26:
              LOBYTE(v6) = 1;
              return v6;
            }
          }
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([sinkConfiguration sinkType] == 8)
            {
              v15 = 0;
              if (FigCaptureMetadataObjectConfigurationRequiresFaceTracking(v10))
              {
                if (!FigCaptureSourceGetBoolAttribute([objc_msgSend(v10 "sourceConfiguration")], 0x1F219FFF0, &v15))
                {
                  goto LABEL_26;
                }
              }

              if (FigCaptureMetadataObjectConfigurationRequiresAppClipCodeNode(v10))
              {
                goto LABEL_26;
              }
            }
          }

          else
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              goto LABEL_26;
            }
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v6 = [enabled countByEnumeratingWithState:&v17 objects:v16 count:16];
      v7 = v6;
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  return v6;
}

- (uint64_t)_transformWithSourceDimensions:(int)dimensions forceSourceDimensions:
{
  if (self)
  {
    LODWORD(v13) = 0;
    mirroringEnabled = [self mirroringEnabled];
    LOBYTE(v14) = mirroringEnabled;
    outputWidth = [self outputWidth];
    outputHeight = [self outputHeight];
    v15 = __PAIR64__(outputHeight, outputWidth);
    v9 = FigCaptureRotationDegreesWithMirroring([self rotationDegrees], mirroringEnabled);
    HIDWORD(v14) = v9;
    v10 = [objc_msgSend(self "sourceConfiguration")];
    IsExtensionDeviceType = BWDeviceTypeIsExtensionDeviceType([objc_msgSend(self "sourceConfiguration")]);
    if (v10 == 2 && !FigCaptureCameraRequires180DegreesRotation(1, IsExtensionDeviceType) && [self deviceOrientationCorrectionEnabled])
    {
      v9 -= 180;
      HIDWORD(v14) = v9;
    }

    if (dimensions || !outputWidth || !outputHeight)
    {
      v15 = a2;
      FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v15, v9);
    }
  }

  else
  {
    v14 = 0;
    v15 = 0;
  }

  return v14;
}

- (FigCaptureVideoTransform)depthDataTransform
{
  dimensions = [(FigCaptureSourceFormat *)[(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] depthDataFormat] dimensions];

  v4 = [(FigVideoCaptureConnectionConfiguration *)self _transformWithSourceDimensions:0 forceSourceDimensions:?];
  result.dimensions = v5;
  result.mirrored = v4;
  result.rotationDegrees = HIDWORD(v4);
  return result;
}

- (FigCaptureVideoTransform)depthDataTransformWithSourceDimensions
{
  dimensions = [(FigCaptureSourceFormat *)[(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] depthDataFormat] dimensions];

  v4 = [(FigVideoCaptureConnectionConfiguration *)self _transformWithSourceDimensions:1 forceSourceDimensions:?];
  result.dimensions = v5;
  result.mirrored = v4;
  result.rotationDegrees = HIDWORD(v4);
  return result;
}

- (BOOL)requiresScalingForInputTransForm:(FigCaptureVideoTransform)form nodeName:(id)name
{
  dimensions = form.dimensions;
  rotationDegrees = form.rotationDegrees;
  result = 0;
  if ((![(NSString *)[(FigCaptureSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self sinkConfiguration] sinkID] isEqualToString:@"CMCaptureLocalSessionSinkID_MainVideo"]|| ![(FigCaptureVideoDataSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self videoDataSinkConfiguration] cinematicFramingSupported]) && ![(NSString *)[(FigCaptureSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self sinkConfiguration] sinkID] isEqualToString:@"CMCaptureLocalSessionSinkID_DeskcamVideo"])
  {
    transform = [(FigVideoCaptureConnectionConfiguration *)self transform];
    v10 = v9;
    v11 = HIDWORD(transform);
    v12 = dimensions;
    FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v12, rotationDegrees);
    v13 = v10;
    FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v13, v11);
    if (v12 != *&v13)
    {
      return 1;
    }
  }

  return result;
}

- (FigVideoCaptureConnectionConfiguration)initWithXPCEncoding:(id)encoding
{
  if (encoding)
  {
    v6.receiver = self;
    v6.super_class = FigVideoCaptureConnectionConfiguration;
    v4 = [(FigCaptureConnectionConfiguration *)&v6 initWithXPCEncoding:?];
    if (v4)
    {
      *(&v4->super._enabled + 1) = xpc_dictionary_get_int64(encoding, "outputFormat");
      v4->_outputFormat = xpc_dictionary_get_int64(encoding, "outputWidth");
      v4->_outputWidth = xpc_dictionary_get_int64(encoding, "outputHeight");
      v4->_outputHeight = xpc_dictionary_get_int64(encoding, "videoStabilizationMethod");
      LOBYTE(v4->_videoStabilizationType) = xpc_dictionary_get_BOOL(encoding, "mirroringEnabled");
      BYTE1(v4->_videoStabilizationType) = xpc_dictionary_get_BOOL(encoding, "physicalMirroringForMovieRecordingEnabled");
      *&v4->_mirroringEnabled = xpc_dictionary_get_int64(encoding, "rotationDegrees");
      LOBYTE(v4->_rotationDegrees) = xpc_dictionary_get_BOOL(encoding, "deviceOrientationCorrectionEnabled");
      BYTE1(v4->_rotationDegrees) = xpc_dictionary_get_BOOL(encoding, "zoomSmoothingEnabled");
      BYTE2(v4->_rotationDegrees) = xpc_dictionary_get_BOOL(encoding, "videoGreenGhostMitigationEnabled");
      *&v4->_deviceOrientationCorrectionEnabled = xpc_dictionary_get_int64(encoding, "retainedBufferCount");
      LOBYTE(v4->_retainedBufferCount) = xpc_dictionary_get_BOOL(encoding, "cameraIntrinsicMatrixDeliveryEnabled");
      BYTE1(v4->_retainedBufferCount) = xpc_dictionary_get_BOOL(encoding, "livePhotoMetadataWritingEnabled");
      BYTE2(v4->_retainedBufferCount) = xpc_dictionary_get_BOOL(encoding, "stereoVideoCaptureEnabled");
      HIBYTE(v4->_retainedBufferCount) = xpc_dictionary_get_BOOL(encoding, "attachMetadataToVideoBuffers");
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = FigVideoCaptureConnectionConfiguration;
  v4 = [(FigCaptureConnectionConfiguration *)&v6 copyWithZone:zone];
  [v4 setOutputFormat:-[FigVideoCaptureConnectionConfiguration outputFormat](self, "outputFormat")];
  [v4 setOutputWidth:{-[FigVideoCaptureConnectionConfiguration outputWidth](self, "outputWidth")}];
  [v4 setOutputHeight:{-[FigVideoCaptureConnectionConfiguration outputHeight](self, "outputHeight")}];
  [v4 setVideoStabilizationMethod:{-[FigVideoCaptureConnectionConfiguration videoStabilizationMethod](self, "videoStabilizationMethod")}];
  [v4 setVideoStabilizationType:{-[FigVideoCaptureConnectionConfiguration videoStabilizationType](self, "videoStabilizationType")}];
  [v4 setMirroringEnabled:{-[FigVideoCaptureConnectionConfiguration mirroringEnabled](self, "mirroringEnabled")}];
  [v4 setPhysicalMirroringForMovieRecordingEnabled:{-[FigVideoCaptureConnectionConfiguration physicalMirroringForMovieRecordingEnabled](self, "physicalMirroringForMovieRecordingEnabled")}];
  [v4 setRotationDegrees:{-[FigVideoCaptureConnectionConfiguration rotationDegrees](self, "rotationDegrees")}];
  [v4 setDeviceOrientationCorrectionEnabled:{-[FigVideoCaptureConnectionConfiguration deviceOrientationCorrectionEnabled](self, "deviceOrientationCorrectionEnabled")}];
  [v4 setZoomSmoothingEnabled:{-[FigVideoCaptureConnectionConfiguration zoomSmoothingEnabled](self, "zoomSmoothingEnabled")}];
  [v4 setVideoGreenGhostMitigationEnabled:{-[FigVideoCaptureConnectionConfiguration videoGreenGhostMitigationEnabled](self, "videoGreenGhostMitigationEnabled")}];
  [v4 setRetainedBufferCount:{-[FigVideoCaptureConnectionConfiguration retainedBufferCount](self, "retainedBufferCount")}];
  [v4 setCameraIntrinsicMatrixDeliveryEnabled:{-[FigVideoCaptureConnectionConfiguration cameraIntrinsicMatrixDeliveryEnabled](self, "cameraIntrinsicMatrixDeliveryEnabled")}];
  [v4 setLivePhotoMetadataWritingEnabled:{-[FigVideoCaptureConnectionConfiguration livePhotoMetadataWritingEnabled](self, "livePhotoMetadataWritingEnabled")}];
  [v4 setStereoVideoCaptureEnabled:{-[FigVideoCaptureConnectionConfiguration stereoVideoCaptureEnabled](self, "stereoVideoCaptureEnabled")}];
  [v4 setAttachMetadataToVideoBuffers:{-[FigVideoCaptureConnectionConfiguration attachMetadataToVideoBuffers](self, "attachMetadataToVideoBuffers")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  v23.receiver = self;
  v23.super_class = FigVideoCaptureConnectionConfiguration;
  v5 = [(FigCaptureConnectionConfiguration *)&v23 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = -[FigVideoCaptureConnectionConfiguration outputFormat](self, "outputFormat"), v6 == [equal outputFormat]) && (v7 = -[FigVideoCaptureConnectionConfiguration outputWidth](self, "outputWidth"), v7 == objc_msgSend(equal, "outputWidth")) && (v8 = -[FigVideoCaptureConnectionConfiguration outputHeight](self, "outputHeight"), v8 == objc_msgSend(equal, "outputHeight")) && (v9 = -[FigVideoCaptureConnectionConfiguration videoStabilizationMethod](self, "videoStabilizationMethod"), v9 == objc_msgSend(equal, "videoStabilizationMethod")) && (v10 = -[FigVideoCaptureConnectionConfiguration videoStabilizationType](self, "videoStabilizationType"), v10 == objc_msgSend(equal, "videoStabilizationType")) && (v11 = -[FigVideoCaptureConnectionConfiguration mirroringEnabled](self, "mirroringEnabled"), v11 == objc_msgSend(equal, "mirroringEnabled")) && (v12 = -[FigVideoCaptureConnectionConfiguration physicalMirroringForMovieRecordingEnabled](self, "physicalMirroringForMovieRecordingEnabled"), v12 == objc_msgSend(equal, "physicalMirroringForMovieRecordingEnabled")) && (v13 = -[FigVideoCaptureConnectionConfiguration rotationDegrees](self, "rotationDegrees"), v13 == objc_msgSend(equal, "rotationDegrees")) && (v14 = -[FigVideoCaptureConnectionConfiguration deviceOrientationCorrectionEnabled](self, "deviceOrientationCorrectionEnabled"), v14 == objc_msgSend(equal, "deviceOrientationCorrectionEnabled")) && (v15 = -[FigVideoCaptureConnectionConfiguration zoomSmoothingEnabled](self, "zoomSmoothingEnabled"), v15 == objc_msgSend(equal, "zoomSmoothingEnabled")) && (v16 = -[FigVideoCaptureConnectionConfiguration videoGreenGhostMitigationEnabled](self, "videoGreenGhostMitigationEnabled"), v16 == objc_msgSend(equal, "videoGreenGhostMitigationEnabled")) && (v17 = -[FigVideoCaptureConnectionConfiguration retainedBufferCount](self, "retainedBufferCount"), v17 == objc_msgSend(equal, "retainedBufferCount")) && (v18 = -[FigVideoCaptureConnectionConfiguration cameraIntrinsicMatrixDeliveryEnabled](self, "cameraIntrinsicMatrixDeliveryEnabled"), v18 == objc_msgSend(equal, "cameraIntrinsicMatrixDeliveryEnabled")) && (v19 = -[FigVideoCaptureConnectionConfiguration livePhotoMetadataWritingEnabled](self, "livePhotoMetadataWritingEnabled"), v19 == objc_msgSend(equal, "livePhotoMetadataWritingEnabled")) && (v20 = -[FigVideoCaptureConnectionConfiguration stereoVideoCaptureEnabled](self, "stereoVideoCaptureEnabled"), v20 == objc_msgSend(equal, "stereoVideoCaptureEnabled")))
    {
      attachMetadataToVideoBuffers = [(FigVideoCaptureConnectionConfiguration *)self attachMetadataToVideoBuffers];
      LOBYTE(v5) = attachMetadataToVideoBuffers ^ [equal attachMetadataToVideoBuffers] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- ($2825F4736939C4A6D3AD43837233062D)nonRotatedOutputDimensions
{
  outputWidth = self->_outputWidth;
  v5.var0 = self->_outputFormat;
  v5.var1 = outputWidth;
  v3 = FigCaptureRotationDegreesWithMirroring(*&self->_mirroringEnabled, LOBYTE(self->_videoStabilizationType));
  FigCaptureSwapVideoDimensionsFor90Or270Rotation(&v5, v3);
  return v5;
}

@end