@interface FigCaptureConnectionConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)smartCameraRequired;
- (FigCaptureCameraCalibrationDataSinkConfiguration)cameraCalibrationDataSinkConfiguration;
- (FigCaptureConnectionConfiguration)init;
- (FigCaptureConnectionConfiguration)initWithXPCEncoding:(id)encoding;
- (FigCaptureDepthDataSinkConfiguration)depthDataSinkConfiguration;
- (FigCaptureInternalSinkConfiguration)internalSinkConfiguration;
- (FigCaptureIrisSinkConfiguration)irisSinkConfiguration;
- (FigCaptureMovieFileSinkConfiguration)movieFileSinkConfiguration;
- (FigCapturePointCloudDataSinkConfiguration)pointCloudDataSinkConfiguration;
- (FigCaptureStillImageSinkConfiguration)stillImageSinkConfiguration;
- (FigCaptureVideoDataSinkConfiguration)videoDataSinkConfiguration;
- (FigCaptureVideoPreviewSinkConfiguration)videoPreviewSinkConfiguration;
- (FigCaptureVideoThumbnailSinkConfiguration)thumbnailSinkConfiguration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)copyXPCEncoding;
- (void)dealloc;
@end

@implementation FigCaptureConnectionConfiguration

- (FigCaptureStillImageSinkConfiguration)stillImageSinkConfiguration
{
  sinkConfiguration = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureStillImageSinkConfiguration *)sinkConfiguration sinkType]== 3)
  {
    return sinkConfiguration;
  }

  else
  {
    return 0;
  }
}

- (FigCaptureMovieFileSinkConfiguration)movieFileSinkConfiguration
{
  sinkConfiguration = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureMovieFileSinkConfiguration *)sinkConfiguration sinkType]== 4)
  {
    return sinkConfiguration;
  }

  else
  {
    return 0;
  }
}

- (FigCaptureVideoThumbnailSinkConfiguration)thumbnailSinkConfiguration
{
  sinkConfiguration = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureVideoThumbnailSinkConfiguration *)sinkConfiguration sinkType]== 12)
  {
    return sinkConfiguration;
  }

  else
  {
    return 0;
  }
}

- (FigCaptureConnectionConfiguration)init
{
  v3.receiver = self;
  v3.super_class = FigCaptureConnectionConfiguration;
  result = [(FigCaptureConnectionConfiguration *)&v3 init];
  if (result)
  {
    result->_enabled = 1;
  }

  return result;
}

- (id)copyXPCEncoding
{
  v3 = xpc_dictionary_create(0, 0, 0);
  v4 = objc_opt_class();
  Name = class_getName(v4);
  xpc_dictionary_set_string(v3, "class", Name);
  copyXPCEncoding = [(FigCaptureSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self sinkConfiguration] copyXPCEncoding];
  [(FigCaptureConnectionConfiguration *)self connectionID];
  FigXPCMessageSetCFString();
  xpc_dictionary_set_int64(v3, "mediaType", [(FigCaptureConnectionConfiguration *)self mediaType]);
  xpc_dictionary_set_int64(v3, "underlyingDeviceType", [(FigCaptureConnectionConfiguration *)self underlyingDeviceType]);
  xpc_dictionary_set_value(v3, "sink", copyXPCEncoding);
  xpc_dictionary_set_BOOL(v3, "enabled", [(FigCaptureConnectionConfiguration *)self enabled]);
  xpc_release(copyXPCEncoding);
  return v3;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigCaptureConnectionConfiguration;
  [(FigCaptureConnectionConfiguration *)&v3 dealloc];
}

- (FigCaptureVideoDataSinkConfiguration)videoDataSinkConfiguration
{
  sinkConfiguration = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureVideoDataSinkConfiguration *)sinkConfiguration sinkType]== 6)
  {
    return sinkConfiguration;
  }

  else
  {
    return 0;
  }
}

- (FigCaptureVideoPreviewSinkConfiguration)videoPreviewSinkConfiguration
{
  sinkConfiguration = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureVideoPreviewSinkConfiguration *)sinkConfiguration sinkType]== 1)
  {
    return sinkConfiguration;
  }

  else
  {
    return 0;
  }
}

- (FigCaptureIrisSinkConfiguration)irisSinkConfiguration
{
  sinkConfiguration = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureIrisSinkConfiguration *)sinkConfiguration sinkType]== 10)
  {
    return sinkConfiguration;
  }

  else
  {
    return 0;
  }
}

- (BOOL)smartCameraRequired
{
  sourceConfiguration = [(FigCaptureConnectionConfiguration *)self sourceConfiguration];
  if (!sourceConfiguration)
  {
    return sourceConfiguration;
  }

  v4 = sourceConfiguration;
  LODWORD(sourceConfiguration) = FigCaptureSourceGetBoolAttribute([(FigCaptureSourceConfiguration *)sourceConfiguration source], @"SmartCameraSupported", 0);
  if (!sourceConfiguration)
  {
    return sourceConfiguration;
  }

  v5 = [(NSArray *)[(FigCaptureSourceVideoFormat *)[(FigCaptureSourceConfiguration *)v4 requiredFormat] AVCaptureSessionPresets] containsObject:@"AVCaptureSessionPresetPhoto"];
  depthDataDeliveryEnabled = [(FigCaptureSourceConfiguration *)v4 depthDataDeliveryEnabled];
  spatialOverCaptureEnabled = [(FigCaptureSourceConfiguration *)v4 spatialOverCaptureEnabled];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    portraitAutoSuggestEnabled = 0;
    if (!v5)
    {
      goto LABEL_10;
    }

LABEL_7:
    if ((spatialOverCaptureEnabled || !depthDataDeliveryEnabled) | portraitAutoSuggestEnabled & 1)
    {
      v5 = [(FigCaptureSourceConfiguration *)v4 imageControlMode]!= 4;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_10;
  }

  portraitAutoSuggestEnabled = [(FigCaptureConnectionConfiguration *)self portraitAutoSuggestEnabled];
  if (v5)
  {
    goto LABEL_7;
  }

LABEL_10:
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = FigCaptureMetadataObjectConfigurationRequiresSceneClassification(self);
  }

  else
  {
    v9 = 0;
  }

  variableFrameRateVideoCaptureEnabled = [(FigCaptureSourceConfiguration *)v4 variableFrameRateVideoCaptureEnabled];
  LOBYTE(sourceConfiguration) = 1;
  if (((v5 | v9) & 1) == 0 && !variableFrameRateVideoCaptureEnabled)
  {

    LOBYTE(sourceConfiguration) = [(FigCaptureSourceConfiguration *)v4 lensSmudgeDetectionEnabled];
  }

  return sourceConfiguration;
}

- (FigCaptureConnectionConfiguration)initWithXPCEncoding:(id)encoding
{
  selfCopy = self;
  if (!encoding)
  {
    [FigCaptureConnectionConfiguration initWithXPCEncoding:];
    goto LABEL_10;
  }

  v10.receiver = self;
  v10.super_class = FigCaptureConnectionConfiguration;
  selfCopy = [(FigCaptureConnectionConfiguration *)&v10 init];
  if (selfCopy)
  {
    value = xpc_dictionary_get_value(encoding, "sink");
    FigXPCMessageCopyCFString();
    selfCopy->_mediaType = xpc_dictionary_get_int64(encoding, "mediaType");
    selfCopy->_underlyingDeviceType = xpc_dictionary_get_int64(encoding, "underlyingDeviceType");
    string = xpc_dictionary_get_string(value, "class");
    if (string)
    {
      Class = objc_getClass(string);
      if ([(objc_class *)Class isSubclassOfClass:objc_opt_class()])
      {
        v8 = [[Class alloc] initWithXPCEncoding:value];
        selfCopy->_sinkConfiguration = v8;
        if (v8)
        {
          selfCopy->_enabled = xpc_dictionary_get_BOOL(encoding, "enabled");
          return selfCopy;
        }

        [FigCaptureConnectionConfiguration initWithXPCEncoding:];
      }
    }

LABEL_10:

    return 0;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    v19 = v5;
    v20 = v4;
    v21 = v3;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_8:
      LOBYTE(v12) = 0;
      return v12;
    }

    connectionID = [(FigCaptureConnectionConfiguration *)self connectionID];
    if (connectionID == [equal connectionID] || (v12 = -[NSString isEqual:](-[FigCaptureConnectionConfiguration connectionID](self, "connectionID"), "isEqual:", objc_msgSend(equal, "connectionID"))) != 0)
    {
      v13 = [(FigCaptureConnectionConfiguration *)self mediaType:v6];
      if (v13 != [equal mediaType])
      {
        goto LABEL_8;
      }

      underlyingDeviceType = [(FigCaptureConnectionConfiguration *)self underlyingDeviceType];
      if (underlyingDeviceType != [equal underlyingDeviceType])
      {
        goto LABEL_8;
      }

      enabled = [(FigCaptureConnectionConfiguration *)self enabled];
      if (enabled != [equal enabled])
      {
        goto LABEL_8;
      }

      sourceConfiguration = [(FigCaptureConnectionConfiguration *)self sourceConfiguration];
      if (sourceConfiguration == [equal sourceConfiguration] || (v12 = -[FigCaptureSourceConfiguration isEqual:](-[FigCaptureConnectionConfiguration sourceConfiguration](self, "sourceConfiguration"), "isEqual:", objc_msgSend(equal, "sourceConfiguration"))) != 0)
      {
        sinkConfiguration = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
        if (sinkConfiguration == [equal sinkConfiguration] || (v12 = -[FigCaptureSinkConfiguration isEqual:](-[FigCaptureConnectionConfiguration sinkConfiguration](self, "sinkConfiguration"), "isEqual:", objc_msgSend(equal, "sinkConfiguration"))) != 0)
        {
          LOBYTE(v12) = 1;
        }
      }
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v5 setConnectionID:{-[FigCaptureConnectionConfiguration connectionID](self, "connectionID")}];
  [v5 setMediaType:{-[FigCaptureConnectionConfiguration mediaType](self, "mediaType")}];
  [v5 setUnderlyingDeviceType:{-[FigCaptureConnectionConfiguration underlyingDeviceType](self, "underlyingDeviceType")}];
  [v5 setEnabled:{-[FigCaptureConnectionConfiguration enabled](self, "enabled")}];
  v6 = [(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] copyWithZone:zone];
  [v5 setSourceConfiguration:v6];

  v7 = [(FigCaptureSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self sinkConfiguration] copyWithZone:zone];
  [v5 setSinkConfiguration:v7];

  return v5;
}

- (FigCaptureDepthDataSinkConfiguration)depthDataSinkConfiguration
{
  sinkConfiguration = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureDepthDataSinkConfiguration *)sinkConfiguration sinkType]== 11)
  {
    return sinkConfiguration;
  }

  else
  {
    return 0;
  }
}

- (FigCapturePointCloudDataSinkConfiguration)pointCloudDataSinkConfiguration
{
  sinkConfiguration = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCapturePointCloudDataSinkConfiguration *)sinkConfiguration sinkType]== 15)
  {
    return sinkConfiguration;
  }

  else
  {
    return 0;
  }
}

- (FigCaptureCameraCalibrationDataSinkConfiguration)cameraCalibrationDataSinkConfiguration
{
  sinkConfiguration = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureCameraCalibrationDataSinkConfiguration *)sinkConfiguration sinkType]== 16)
  {
    return sinkConfiguration;
  }

  else
  {
    return 0;
  }
}

- (FigCaptureInternalSinkConfiguration)internalSinkConfiguration
{
  sinkConfiguration = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureInternalSinkConfiguration *)sinkConfiguration sinkType]== 14)
  {
    return sinkConfiguration;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)initWithXPCEncoding:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)initWithXPCEncoding:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end