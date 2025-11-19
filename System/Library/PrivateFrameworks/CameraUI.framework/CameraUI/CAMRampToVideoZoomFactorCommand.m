@interface CAMRampToVideoZoomFactorCommand
- (CAMRampToVideoZoomFactorCommand)initWithVideoZoomFactor:(double)a3 duration:(double)a4 zoomRampTuning:(int64_t)a5 graphConfiguration:(id)a6;
- (CAMRampToVideoZoomFactorCommand)initWithVideoZoomFactor:(double)a3 rate:(float)a4 graphConfiguration:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMRampToVideoZoomFactorCommand

- (CAMRampToVideoZoomFactorCommand)initWithVideoZoomFactor:(double)a3 rate:(float)a4 graphConfiguration:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = CAMRampToVideoZoomFactorCommand;
  v10 = [(CAMCaptureCommand *)&v14 initWithSubcommands:0];
  v11 = v10;
  if (v10)
  {
    v10->__videoZoomFactor = a3;
    v10->__rate = a4;
    v10->__duration = 0.0;
    v10->__videoZoomRampTuning = 0;
    objc_storeStrong(&v10->__graphConfiguration, a5);
    v12 = v11;
  }

  return v11;
}

- (CAMRampToVideoZoomFactorCommand)initWithVideoZoomFactor:(double)a3 duration:(double)a4 zoomRampTuning:(int64_t)a5 graphConfiguration:(id)a6
{
  v11 = a6;
  v16.receiver = self;
  v16.super_class = CAMRampToVideoZoomFactorCommand;
  v12 = [(CAMCaptureCommand *)&v16 initWithSubcommands:0];
  v13 = v12;
  if (v12)
  {
    v12->__videoZoomFactor = a3;
    v12->__rate = 0.0;
    v12->__duration = a4;
    v12->__videoZoomRampTuning = a5;
    objc_storeStrong(&v12->__graphConfiguration, a6);
    v14 = v13;
  }

  return v13;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v11.receiver = self;
  v11.super_class = CAMRampToVideoZoomFactorCommand;
  v4 = [(CAMCaptureCommand *)&v11 copyWithZone:a3];
  [(CAMRampToVideoZoomFactorCommand *)self _videoZoomFactor];
  v4[4] = v5;
  [(CAMRampToVideoZoomFactorCommand *)self _rate];
  *(v4 + 6) = v6;
  [(CAMRampToVideoZoomFactorCommand *)self _duration];
  v4[5] = v7;
  v4[6] = [(CAMRampToVideoZoomFactorCommand *)self _videoZoomRampTuning];
  v8 = [(CAMRampToVideoZoomFactorCommand *)self _graphConfiguration];
  v9 = v4[7];
  v4[7] = v8;

  return v4;
}

- (void)executeWithContext:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(CAMRampToVideoZoomFactorCommand *)self _videoZoomFactor];
  v6 = v5;
  [(CAMRampToVideoZoomFactorCommand *)self _rate];
  v8 = v7;
  [(CAMRampToVideoZoomFactorCommand *)self _duration];
  v10 = v9;
  v11 = [v4 currentVideoDevice];
  v12 = [v4 currentVideoDeviceFormat];
  v13 = [v4 currentStillImageOutput];
  v14 = [v13 isDepthDataDeliveryEnabled];
  v15 = [(CAMRampToVideoZoomFactorCommand *)self _graphConfiguration];
  v16 = [v15 mode];

  [v12 videoMaxZoomFactor];
  if (v6 <= v17)
  {
    v18 = v6;
  }

  else
  {
    v18 = v17;
    v19 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v42 = v6;
      v43 = 2048;
      v44 = *&v18;
      _os_log_impl(&dword_1A3640000, v19, OS_LOG_TYPE_DEFAULT, "Clamping videoZoom factor: %.4f->%.4f", buf, 0x16u);
    }
  }

  if (v18 < 1.0)
  {
    v20 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v42 = v18;
      v43 = 2048;
      v44 = 0x3FF0000000000000;
      _os_log_impl(&dword_1A3640000, v20, OS_LOG_TYPE_DEFAULT, "Clamping videoZoom factor: %.4f->%.4f", buf, 0x16u);
    }

    v18 = 1.0;
  }

  if (!v14)
  {
    goto LABEL_25;
  }

  v35 = v16;
  [v12 supportedVideoZoomRangesForDepthDataDelivery];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v21 = v39 = 0u;
  v22 = [v21 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v37;
    while (2)
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v37 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v36 + 1) + 8 * i);
        [v26 minZoomFactor];
        if (v18 >= v27)
        {
          [v26 maxZoomFactor];
          if (v18 <= v28)
          {

            goto LABEL_25;
          }
        }
      }

      v23 = [v21 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

  if (v35)
  {
    v29 = os_log_create("com.apple.camera", "Camera");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v42 = v18;
      _os_log_impl(&dword_1A3640000, v29, OS_LOG_TYPE_DEFAULT, "Ignoring zoom request, depth delivery is enabled but zoomFactor of %f is not supported", buf, 0xCu);
    }
  }

  else
  {
LABEL_25:
    if ([(CAMRampToVideoZoomFactorCommand *)self _videoZoomRampTuning])
    {
      v33 = [CAMCaptureConversions AVCaptureDeviceVideoZoomRampTuningForCAMVideoZoomRampTuning:[(CAMRampToVideoZoomFactorCommand *)self _videoZoomRampTuning]];
      v32 = v18;
      *&v34 = v32;
      [v11 rampToVideoZoomFactor:v33 withTuning:v34];
    }

    else if (v10 <= 0.0)
    {
      if (v8 <= 0.0)
      {
        [v11 setVideoZoomFactor:v18];
      }

      else
      {
        *&v31 = v8;
        [v11 rampToVideoZoomFactor:v18 withRate:v31];
      }
    }

    else
    {
      *&v30 = v18;
      [v11 rampExponentiallyToVideoZoomFactor:v30 withDuration:v10];
    }
  }
}

@end