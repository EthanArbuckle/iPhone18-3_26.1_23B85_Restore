@interface FigCaptureConnectionConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)smartCameraRequired;
- (FigCaptureCameraCalibrationDataSinkConfiguration)cameraCalibrationDataSinkConfiguration;
- (FigCaptureConnectionConfiguration)init;
- (FigCaptureConnectionConfiguration)initWithXPCEncoding:(id)a3;
- (FigCaptureDepthDataSinkConfiguration)depthDataSinkConfiguration;
- (FigCaptureInternalSinkConfiguration)internalSinkConfiguration;
- (FigCaptureIrisSinkConfiguration)irisSinkConfiguration;
- (FigCaptureMovieFileSinkConfiguration)movieFileSinkConfiguration;
- (FigCapturePointCloudDataSinkConfiguration)pointCloudDataSinkConfiguration;
- (FigCaptureStillImageSinkConfiguration)stillImageSinkConfiguration;
- (FigCaptureVideoDataSinkConfiguration)videoDataSinkConfiguration;
- (FigCaptureVideoPreviewSinkConfiguration)videoPreviewSinkConfiguration;
- (FigCaptureVideoThumbnailSinkConfiguration)thumbnailSinkConfiguration;
- (id)copyWithZone:(_NSZone *)a3;
- (id)copyXPCEncoding;
- (void)dealloc;
@end

@implementation FigCaptureConnectionConfiguration

- (FigCaptureStillImageSinkConfiguration)stillImageSinkConfiguration
{
  v2 = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureStillImageSinkConfiguration *)v2 sinkType]== 3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (FigCaptureMovieFileSinkConfiguration)movieFileSinkConfiguration
{
  v2 = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureMovieFileSinkConfiguration *)v2 sinkType]== 4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (FigCaptureVideoThumbnailSinkConfiguration)thumbnailSinkConfiguration
{
  v2 = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureVideoThumbnailSinkConfiguration *)v2 sinkType]== 12)
  {
    return v2;
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
  v6 = [(FigCaptureSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self sinkConfiguration] copyXPCEncoding];
  [(FigCaptureConnectionConfiguration *)self connectionID];
  FigXPCMessageSetCFString();
  xpc_dictionary_set_int64(v3, "mediaType", [(FigCaptureConnectionConfiguration *)self mediaType]);
  xpc_dictionary_set_int64(v3, "underlyingDeviceType", [(FigCaptureConnectionConfiguration *)self underlyingDeviceType]);
  xpc_dictionary_set_value(v3, "sink", v6);
  xpc_dictionary_set_BOOL(v3, "enabled", [(FigCaptureConnectionConfiguration *)self enabled]);
  xpc_release(v6);
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
  v2 = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureVideoDataSinkConfiguration *)v2 sinkType]== 6)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (FigCaptureVideoPreviewSinkConfiguration)videoPreviewSinkConfiguration
{
  v2 = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureVideoPreviewSinkConfiguration *)v2 sinkType]== 1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (FigCaptureIrisSinkConfiguration)irisSinkConfiguration
{
  v2 = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureIrisSinkConfiguration *)v2 sinkType]== 10)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (BOOL)smartCameraRequired
{
  v3 = [(FigCaptureConnectionConfiguration *)self sourceConfiguration];
  if (!v3)
  {
    return v3;
  }

  v4 = v3;
  LODWORD(v3) = FigCaptureSourceGetBoolAttribute([(FigCaptureSourceConfiguration *)v3 source], @"SmartCameraSupported", 0);
  if (!v3)
  {
    return v3;
  }

  v5 = [(NSArray *)[(FigCaptureSourceVideoFormat *)[(FigCaptureSourceConfiguration *)v4 requiredFormat] AVCaptureSessionPresets] containsObject:@"AVCaptureSessionPresetPhoto"];
  v6 = [(FigCaptureSourceConfiguration *)v4 depthDataDeliveryEnabled];
  v7 = [(FigCaptureSourceConfiguration *)v4 spatialOverCaptureEnabled];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    if (!v5)
    {
      goto LABEL_10;
    }

LABEL_7:
    if ((v7 || !v6) | v8 & 1)
    {
      v5 = [(FigCaptureSourceConfiguration *)v4 imageControlMode]!= 4;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_10;
  }

  v8 = [(FigCaptureConnectionConfiguration *)self portraitAutoSuggestEnabled];
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

  v10 = [(FigCaptureSourceConfiguration *)v4 variableFrameRateVideoCaptureEnabled];
  LOBYTE(v3) = 1;
  if (((v5 | v9) & 1) == 0 && !v10)
  {

    LOBYTE(v3) = [(FigCaptureSourceConfiguration *)v4 lensSmudgeDetectionEnabled];
  }

  return v3;
}

- (FigCaptureConnectionConfiguration)initWithXPCEncoding:(id)a3
{
  v3 = self;
  if (!a3)
  {
    [FigCaptureConnectionConfiguration initWithXPCEncoding:];
    goto LABEL_10;
  }

  v10.receiver = self;
  v10.super_class = FigCaptureConnectionConfiguration;
  v3 = [(FigCaptureConnectionConfiguration *)&v10 init];
  if (v3)
  {
    value = xpc_dictionary_get_value(a3, "sink");
    FigXPCMessageCopyCFString();
    v3->_mediaType = xpc_dictionary_get_int64(a3, "mediaType");
    v3->_underlyingDeviceType = xpc_dictionary_get_int64(a3, "underlyingDeviceType");
    string = xpc_dictionary_get_string(value, "class");
    if (string)
    {
      Class = objc_getClass(string);
      if ([(objc_class *)Class isSubclassOfClass:objc_opt_class()])
      {
        v8 = [[Class alloc] initWithXPCEncoding:value];
        v3->_sinkConfiguration = v8;
        if (v8)
        {
          v3->_enabled = xpc_dictionary_get_BOOL(a3, "enabled");
          return v3;
        }

        [FigCaptureConnectionConfiguration initWithXPCEncoding:];
      }
    }

LABEL_10:

    return 0;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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

    v11 = [(FigCaptureConnectionConfiguration *)self connectionID];
    if (v11 == [a3 connectionID] || (v12 = -[NSString isEqual:](-[FigCaptureConnectionConfiguration connectionID](self, "connectionID"), "isEqual:", objc_msgSend(a3, "connectionID"))) != 0)
    {
      v13 = [(FigCaptureConnectionConfiguration *)self mediaType:v6];
      if (v13 != [a3 mediaType])
      {
        goto LABEL_8;
      }

      v14 = [(FigCaptureConnectionConfiguration *)self underlyingDeviceType];
      if (v14 != [a3 underlyingDeviceType])
      {
        goto LABEL_8;
      }

      v15 = [(FigCaptureConnectionConfiguration *)self enabled];
      if (v15 != [a3 enabled])
      {
        goto LABEL_8;
      }

      v16 = [(FigCaptureConnectionConfiguration *)self sourceConfiguration];
      if (v16 == [a3 sourceConfiguration] || (v12 = -[FigCaptureSourceConfiguration isEqual:](-[FigCaptureConnectionConfiguration sourceConfiguration](self, "sourceConfiguration"), "isEqual:", objc_msgSend(a3, "sourceConfiguration"))) != 0)
      {
        v17 = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
        if (v17 == [a3 sinkConfiguration] || (v12 = -[FigCaptureSinkConfiguration isEqual:](-[FigCaptureConnectionConfiguration sinkConfiguration](self, "sinkConfiguration"), "isEqual:", objc_msgSend(a3, "sinkConfiguration"))) != 0)
        {
          LOBYTE(v12) = 1;
        }
      }
    }
  }

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v5 setConnectionID:{-[FigCaptureConnectionConfiguration connectionID](self, "connectionID")}];
  [v5 setMediaType:{-[FigCaptureConnectionConfiguration mediaType](self, "mediaType")}];
  [v5 setUnderlyingDeviceType:{-[FigCaptureConnectionConfiguration underlyingDeviceType](self, "underlyingDeviceType")}];
  [v5 setEnabled:{-[FigCaptureConnectionConfiguration enabled](self, "enabled")}];
  v6 = [(FigCaptureSourceConfiguration *)[(FigCaptureConnectionConfiguration *)self sourceConfiguration] copyWithZone:a3];
  [v5 setSourceConfiguration:v6];

  v7 = [(FigCaptureSinkConfiguration *)[(FigCaptureConnectionConfiguration *)self sinkConfiguration] copyWithZone:a3];
  [v5 setSinkConfiguration:v7];

  return v5;
}

- (FigCaptureDepthDataSinkConfiguration)depthDataSinkConfiguration
{
  v2 = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureDepthDataSinkConfiguration *)v2 sinkType]== 11)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (FigCapturePointCloudDataSinkConfiguration)pointCloudDataSinkConfiguration
{
  v2 = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCapturePointCloudDataSinkConfiguration *)v2 sinkType]== 15)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (FigCaptureCameraCalibrationDataSinkConfiguration)cameraCalibrationDataSinkConfiguration
{
  v2 = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureCameraCalibrationDataSinkConfiguration *)v2 sinkType]== 16)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

- (FigCaptureInternalSinkConfiguration)internalSinkConfiguration
{
  v2 = [(FigCaptureConnectionConfiguration *)self sinkConfiguration];
  if ([(FigCaptureInternalSinkConfiguration *)v2 sinkType]== 14)
  {
    return v2;
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