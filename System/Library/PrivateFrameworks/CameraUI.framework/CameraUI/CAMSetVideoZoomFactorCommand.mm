@interface CAMSetVideoZoomFactorCommand
- (CAMSetVideoZoomFactorCommand)initWithVideoZoomFactor:(double)factor graphConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (void)executeWithContext:(id)context;
@end

@implementation CAMSetVideoZoomFactorCommand

- (CAMSetVideoZoomFactorCommand)initWithVideoZoomFactor:(double)factor graphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = CAMSetVideoZoomFactorCommand;
  v8 = [(CAMCaptureCommand *)&v12 initWithSubcommands:0];
  v9 = v8;
  if (v8)
  {
    v8->__videoZoomFactor = factor;
    objc_storeStrong(&v8->__graphConfiguration, configuration);
    v10 = v9;
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = CAMSetVideoZoomFactorCommand;
  v4 = [(CAMCaptureCommand *)&v9 copyWithZone:zone];
  [(CAMSetVideoZoomFactorCommand *)self _videoZoomFactor];
  v4[3] = v5;
  _graphConfiguration = [(CAMSetVideoZoomFactorCommand *)self _graphConfiguration];
  v7 = v4[4];
  v4[4] = _graphConfiguration;

  return v4;
}

- (void)executeWithContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  currentVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];
  currentStillImageOutput = [contextCopy currentStillImageOutput];
  [(CAMSetVideoZoomFactorCommand *)self _videoZoomFactor];
  v9 = v8;
  _graphConfiguration = [(CAMSetVideoZoomFactorCommand *)self _graphConfiguration];
  mode = [_graphConfiguration mode];

  if ([currentStillImageOutput isDepthDataDeliveryEnabled] && mode)
  {
    [currentVideoDeviceFormat supportedVideoZoomRangesForDepthDataDelivery];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v28 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v26;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v26 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          [v17 minZoomFactor];
          if (v9 >= v18)
          {
            [v17 maxZoomFactor];
            if (v9 <= v19)
            {

              goto LABEL_16;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

    v20 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v30 = v9;
      _os_log_impl(&dword_1A3640000, v20, OS_LOG_TYPE_DEFAULT, "Ignoring zoom ramp request, depth delivery is enabled but zoomFactor of %f is not supported", buf, 0xCu);
    }
  }

  else
  {
LABEL_16:
    [currentVideoDeviceFormat videoMaxZoomFactor];
    if (v9 <= v21)
    {
      v22 = v9;
    }

    else
    {
      v22 = v21;
      v23 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v30 = v9;
        v31 = 2048;
        v32 = *&v22;
        _os_log_impl(&dword_1A3640000, v23, OS_LOG_TYPE_DEFAULT, "Clamping videoZoom factor: %.4f->%.4f", buf, 0x16u);
      }
    }

    if (v22 < 1.0)
    {
      v24 = os_log_create("com.apple.camera", "Camera");
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v30 = v22;
        v31 = 2048;
        v32 = 0x3FF0000000000000;
        _os_log_impl(&dword_1A3640000, v24, OS_LOG_TYPE_DEFAULT, "Clamping videoZoom factor: %.4f->%.4f", buf, 0x16u);
      }

      v22 = 1.0;
    }

    [currentVideoDevice setVideoZoomFactor:v22];
  }
}

@end