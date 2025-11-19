@interface FigVideoCaptureConnectionConfiguration
+ (BOOL)cameraIntrinsicMatrixDeliveryEnabled:(id)a3 doingFaceTracking:(BOOL)a4;
+ (id)videoStabilizationMethods:(id)a3 includeIris:(BOOL)a4;
- ($2825F4736939C4A6D3AD43837233062D)nonRotatedOutputDimensions;
- (BOOL)irisVISEnabled;
- (BOOL)isEqual:(id)a3;
- (BOOL)portraitAutoSuggestEnabled;
- (BOOL)previewDepthDataDeliveryEnabled;
- (BOOL)previewDepthFilterRenderingEnabled;
- (BOOL)previewFilterRenderingEnabled;
- (BOOL)requiresScalingForInputTransForm:(FigCaptureVideoTransform)a3 nodeName:(id)a4;
- (FigCaptureVideoTransform)depthDataTransform;
- (FigCaptureVideoTransform)depthDataTransformWithSourceDimensions;
- (FigCaptureVideoTransform)transform;
- (FigVideoCaptureConnectionConfiguration)initWithXPCEncoding:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (id)description;
- (int)irisVISMethod;
- (uint64_t)_transformWithSourceDimensions:(int)a3 forceSourceDimensions:;
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

  v3 = [(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] depthDataFormat];
  v4 = v3;
  if (v3)
  {
    if (![(FigCaptureSourceFormat *)v3 dimensions])
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

  v6 = [(FigCaptureConnectionConfiguration *)self videoPreviewSinkConfiguration];

  return [(FigCaptureVideoPreviewSinkConfiguration *)v6 filterRenderingEnabled];
}

- (BOOL)previewDepthDataDeliveryEnabled
{
  v2 = [(FigCaptureConnectionConfiguration *)self videoPreviewSinkConfiguration];

  return [(FigCaptureVideoPreviewSinkConfiguration *)v2 depthDataDeliveryEnabled];
}

- (BOOL)irisVISEnabled
{
  v3 = [(FigCaptureIrisSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self irisSinkConfiguration] irisMovieCaptureEnabled];
  if (v3)
  {
    v4 = [(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] requiredFormat];

    LOBYTE(v3) = [(FigCaptureSourceVideoFormat *)v4 isIrisVideoStabilizationSupported];
  }

  return v3;
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
  v3 = [(FigCaptureVideoPreviewSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self videoPreviewSinkConfiguration] portraitAutoSuggestEnabled];
  if (v3)
  {
    v4 = [(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] requiredFormat];

    LOBYTE(v3) = [(FigCaptureSourceVideoFormat *)v4 isPortraitAutoSuggestSupported];
  }

  return v3;
}

- (BOOL)previewFilterRenderingEnabled
{
  if ([(FigCaptureVideoPreviewSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self videoPreviewSinkConfiguration] filterRenderingEnabled])
  {
    return 1;
  }

  v4 = [(FigCaptureConnectionConfiguration *)self videoPreviewSinkConfiguration];

  return [(FigCaptureVideoPreviewSinkConfiguration *)v4 semanticStyleRenderingEnabled];
}

- (id)description
{
  v3 = [(FigCaptureConnectionConfiguration *)self underlyingDeviceType];
  v4 = &stru_1F216A3D0;
  if (v3 != [(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] sourceDeviceType])
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
  v3 = [(FigCaptureConnectionConfiguration *)&v5 copyXPCEncoding];
  xpc_dictionary_set_int64(v3, "outputFormat", [(FigVideoCaptureConnectionConfiguration *)self outputFormat]);
  xpc_dictionary_set_int64(v3, "outputWidth", [(FigVideoCaptureConnectionConfiguration *)self outputWidth]);
  xpc_dictionary_set_int64(v3, "outputHeight", [(FigVideoCaptureConnectionConfiguration *)self outputHeight]);
  xpc_dictionary_set_int64(v3, "videoStabilizationMethod", [(FigVideoCaptureConnectionConfiguration *)self videoStabilizationMethod]);
  xpc_dictionary_set_BOOL(v3, "mirroringEnabled", [(FigVideoCaptureConnectionConfiguration *)self mirroringEnabled]);
  xpc_dictionary_set_BOOL(v3, "physicalMirroringForMovieRecordingEnabled", [(FigVideoCaptureConnectionConfiguration *)self physicalMirroringForMovieRecordingEnabled]);
  xpc_dictionary_set_int64(v3, "rotationDegrees", [(FigVideoCaptureConnectionConfiguration *)self rotationDegrees]);
  xpc_dictionary_set_BOOL(v3, "deviceOrientationCorrectionEnabled", [(FigVideoCaptureConnectionConfiguration *)self deviceOrientationCorrectionEnabled]);
  xpc_dictionary_set_BOOL(v3, "zoomSmoothingEnabled", [(FigVideoCaptureConnectionConfiguration *)self zoomSmoothingEnabled]);
  xpc_dictionary_set_BOOL(v3, "videoGreenGhostMitigationEnabled", [(FigVideoCaptureConnectionConfiguration *)self videoGreenGhostMitigationEnabled]);
  xpc_dictionary_set_int64(v3, "retainedBufferCount", [(FigVideoCaptureConnectionConfiguration *)self retainedBufferCount]);
  xpc_dictionary_set_BOOL(v3, "cameraIntrinsicMatrixDeliveryEnabled", [(FigVideoCaptureConnectionConfiguration *)self cameraIntrinsicMatrixDeliveryEnabled]);
  xpc_dictionary_set_BOOL(v3, "livePhotoMetadataWritingEnabled", [(FigVideoCaptureConnectionConfiguration *)self livePhotoMetadataWritingEnabled]);
  xpc_dictionary_set_BOOL(v3, "stereoVideoCaptureEnabled", [(FigVideoCaptureConnectionConfiguration *)self stereoVideoCaptureEnabled]);
  xpc_dictionary_set_BOOL(v3, "attachMetadataToVideoBuffers", [(FigVideoCaptureConnectionConfiguration *)self attachMetadataToVideoBuffers]);
  return v3;
}

- (FigCaptureVideoTransform)transform
{
  v3 = [(FigCaptureSourceFormat *)[(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] requiredFormat] dimensions];

  v4 = [(FigVideoCaptureConnectionConfiguration *)self _transformWithSourceDimensions:0 forceSourceDimensions:?];
  result.dimensions = v5;
  result.mirrored = v4;
  result.rotationDegrees = HIDWORD(v4);
  return result;
}

+ (id)videoStabilizationMethods:(id)a3 includeIris:(BOOL)a4
{
  v4 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [a3 countByEnumeratingWithState:&v17 objects:v16 count:16];
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
          objc_enumerationMutation(a3);
        }

        v11 = *(*(&v17 + 1) + 8 * v10);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [v11 sinkConfiguration];
          if ([v12 sinkType] == 4 || objc_msgSend(v12, "sinkType") == 6 || objc_msgSend(v12, "sinkType") == 1)
          {
            v13 = [v11 videoStabilizationMethod];
          }

          else
          {
            if (!v4 || ![v11 irisVISEnabled])
            {
              goto LABEL_13;
            }

            v13 = [v11 irisVISMethod];
          }

          if (v13)
          {
            [v6 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", v13)}];
          }
        }

LABEL_13:
        ++v10;
      }

      while (v8 != v10);
      v14 = [a3 countByEnumeratingWithState:&v17 objects:v16 count:16];
      v8 = v14;
    }

    while (v14);
  }

  return v6;
}

+ (BOOL)cameraIntrinsicMatrixDeliveryEnabled:(id)a3 doingFaceTracking:(BOOL)a4
{
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v17 objects:v16 count:16];
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
          objc_enumerationMutation(a3);
        }

        v10 = *(*(&v17 + 1) + 8 * v9);
        v11 = [v10 sinkConfiguration];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if ([v11 sinkType] == 6)
          {
            v12 = [v10 cameraIntrinsicMatrixDeliveryEnabled];
            LOBYTE(v6) = 1;
            if ((v12 & 1) != 0 || a4)
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
            if ([v11 sinkType] == 8)
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
      v6 = [a3 countByEnumeratingWithState:&v17 objects:v16 count:16];
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

- (uint64_t)_transformWithSourceDimensions:(int)a3 forceSourceDimensions:
{
  if (a1)
  {
    LODWORD(v13) = 0;
    v6 = [a1 mirroringEnabled];
    LOBYTE(v14) = v6;
    v7 = [a1 outputWidth];
    v8 = [a1 outputHeight];
    v15 = __PAIR64__(v8, v7);
    v9 = FigCaptureRotationDegreesWithMirroring([a1 rotationDegrees], v6);
    HIDWORD(v14) = v9;
    v10 = [objc_msgSend(a1 "sourceConfiguration")];
    IsExtensionDeviceType = BWDeviceTypeIsExtensionDeviceType([objc_msgSend(a1 "sourceConfiguration")]);
    if (v10 == 2 && !FigCaptureCameraRequires180DegreesRotation(1, IsExtensionDeviceType) && [a1 deviceOrientationCorrectionEnabled])
    {
      v9 -= 180;
      HIDWORD(v14) = v9;
    }

    if (a3 || !v7 || !v8)
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
  v3 = [(FigCaptureSourceFormat *)[(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] depthDataFormat] dimensions];

  v4 = [(FigVideoCaptureConnectionConfiguration *)self _transformWithSourceDimensions:0 forceSourceDimensions:?];
  result.dimensions = v5;
  result.mirrored = v4;
  result.rotationDegrees = HIDWORD(v4);
  return result;
}

- (FigCaptureVideoTransform)depthDataTransformWithSourceDimensions
{
  v3 = [(FigCaptureSourceFormat *)[(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] depthDataFormat] dimensions];

  v4 = [(FigVideoCaptureConnectionConfiguration *)self _transformWithSourceDimensions:1 forceSourceDimensions:?];
  result.dimensions = v5;
  result.mirrored = v4;
  result.rotationDegrees = HIDWORD(v4);
  return result;
}

- (BOOL)requiresScalingForInputTransForm:(FigCaptureVideoTransform)a3 nodeName:(id)a4
{
  dimensions = a3.dimensions;
  rotationDegrees = a3.rotationDegrees;
  result = 0;
  if ((![(NSString *)[(FigCaptureSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self sinkConfiguration] sinkID] isEqualToString:@"CMCaptureLocalSessionSinkID_MainVideo"]|| ![(FigCaptureVideoDataSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self videoDataSinkConfiguration] cinematicFramingSupported]) && ![(NSString *)[(FigCaptureSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self sinkConfiguration] sinkID] isEqualToString:@"CMCaptureLocalSessionSinkID_DeskcamVideo"])
  {
    v8 = [(FigVideoCaptureConnectionConfiguration *)self transform];
    v10 = v9;
    v11 = HIDWORD(v8);
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

- (FigVideoCaptureConnectionConfiguration)initWithXPCEncoding:(id)a3
{
  if (a3)
  {
    v6.receiver = self;
    v6.super_class = FigVideoCaptureConnectionConfiguration;
    v4 = [(FigCaptureConnectionConfiguration *)&v6 initWithXPCEncoding:?];
    if (v4)
    {
      *(&v4->super._enabled + 1) = xpc_dictionary_get_int64(a3, "outputFormat");
      v4->_outputFormat = xpc_dictionary_get_int64(a3, "outputWidth");
      v4->_outputWidth = xpc_dictionary_get_int64(a3, "outputHeight");
      v4->_outputHeight = xpc_dictionary_get_int64(a3, "videoStabilizationMethod");
      LOBYTE(v4->_videoStabilizationType) = xpc_dictionary_get_BOOL(a3, "mirroringEnabled");
      BYTE1(v4->_videoStabilizationType) = xpc_dictionary_get_BOOL(a3, "physicalMirroringForMovieRecordingEnabled");
      *&v4->_mirroringEnabled = xpc_dictionary_get_int64(a3, "rotationDegrees");
      LOBYTE(v4->_rotationDegrees) = xpc_dictionary_get_BOOL(a3, "deviceOrientationCorrectionEnabled");
      BYTE1(v4->_rotationDegrees) = xpc_dictionary_get_BOOL(a3, "zoomSmoothingEnabled");
      BYTE2(v4->_rotationDegrees) = xpc_dictionary_get_BOOL(a3, "videoGreenGhostMitigationEnabled");
      *&v4->_deviceOrientationCorrectionEnabled = xpc_dictionary_get_int64(a3, "retainedBufferCount");
      LOBYTE(v4->_retainedBufferCount) = xpc_dictionary_get_BOOL(a3, "cameraIntrinsicMatrixDeliveryEnabled");
      BYTE1(v4->_retainedBufferCount) = xpc_dictionary_get_BOOL(a3, "livePhotoMetadataWritingEnabled");
      BYTE2(v4->_retainedBufferCount) = xpc_dictionary_get_BOOL(a3, "stereoVideoCaptureEnabled");
      HIBYTE(v4->_retainedBufferCount) = xpc_dictionary_get_BOOL(a3, "attachMetadataToVideoBuffers");
    }
  }

  else
  {

    return 0;
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = FigVideoCaptureConnectionConfiguration;
  v4 = [(FigCaptureConnectionConfiguration *)&v6 copyWithZone:a3];
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

- (BOOL)isEqual:(id)a3
{
  v23.receiver = self;
  v23.super_class = FigVideoCaptureConnectionConfiguration;
  v5 = [(FigCaptureConnectionConfiguration *)&v23 isEqual:?];
  if (v5)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v6 = -[FigVideoCaptureConnectionConfiguration outputFormat](self, "outputFormat"), v6 == [a3 outputFormat]) && (v7 = -[FigVideoCaptureConnectionConfiguration outputWidth](self, "outputWidth"), v7 == objc_msgSend(a3, "outputWidth")) && (v8 = -[FigVideoCaptureConnectionConfiguration outputHeight](self, "outputHeight"), v8 == objc_msgSend(a3, "outputHeight")) && (v9 = -[FigVideoCaptureConnectionConfiguration videoStabilizationMethod](self, "videoStabilizationMethod"), v9 == objc_msgSend(a3, "videoStabilizationMethod")) && (v10 = -[FigVideoCaptureConnectionConfiguration videoStabilizationType](self, "videoStabilizationType"), v10 == objc_msgSend(a3, "videoStabilizationType")) && (v11 = -[FigVideoCaptureConnectionConfiguration mirroringEnabled](self, "mirroringEnabled"), v11 == objc_msgSend(a3, "mirroringEnabled")) && (v12 = -[FigVideoCaptureConnectionConfiguration physicalMirroringForMovieRecordingEnabled](self, "physicalMirroringForMovieRecordingEnabled"), v12 == objc_msgSend(a3, "physicalMirroringForMovieRecordingEnabled")) && (v13 = -[FigVideoCaptureConnectionConfiguration rotationDegrees](self, "rotationDegrees"), v13 == objc_msgSend(a3, "rotationDegrees")) && (v14 = -[FigVideoCaptureConnectionConfiguration deviceOrientationCorrectionEnabled](self, "deviceOrientationCorrectionEnabled"), v14 == objc_msgSend(a3, "deviceOrientationCorrectionEnabled")) && (v15 = -[FigVideoCaptureConnectionConfiguration zoomSmoothingEnabled](self, "zoomSmoothingEnabled"), v15 == objc_msgSend(a3, "zoomSmoothingEnabled")) && (v16 = -[FigVideoCaptureConnectionConfiguration videoGreenGhostMitigationEnabled](self, "videoGreenGhostMitigationEnabled"), v16 == objc_msgSend(a3, "videoGreenGhostMitigationEnabled")) && (v17 = -[FigVideoCaptureConnectionConfiguration retainedBufferCount](self, "retainedBufferCount"), v17 == objc_msgSend(a3, "retainedBufferCount")) && (v18 = -[FigVideoCaptureConnectionConfiguration cameraIntrinsicMatrixDeliveryEnabled](self, "cameraIntrinsicMatrixDeliveryEnabled"), v18 == objc_msgSend(a3, "cameraIntrinsicMatrixDeliveryEnabled")) && (v19 = -[FigVideoCaptureConnectionConfiguration livePhotoMetadataWritingEnabled](self, "livePhotoMetadataWritingEnabled"), v19 == objc_msgSend(a3, "livePhotoMetadataWritingEnabled")) && (v20 = -[FigVideoCaptureConnectionConfiguration stereoVideoCaptureEnabled](self, "stereoVideoCaptureEnabled"), v20 == objc_msgSend(a3, "stereoVideoCaptureEnabled")))
    {
      v21 = [(FigVideoCaptureConnectionConfiguration *)self attachMetadataToVideoBuffers];
      LOBYTE(v5) = v21 ^ [a3 attachMetadataToVideoBuffers] ^ 1;
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