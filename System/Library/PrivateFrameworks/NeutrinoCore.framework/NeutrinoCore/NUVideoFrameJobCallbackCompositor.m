@interface NUVideoFrameJobCallbackCompositor
- (void)fulfillVideoCompositionRequest:(id)a3;
@end

@implementation NUVideoFrameJobCallbackCompositor

- (void)fulfillVideoCompositionRequest:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 videoCompositionInstruction];
  v6 = [v5 renderJob];
  v7 = [v5 colorSpace];
  v8 = [v4 sourceTrackIDs];
  v9 = [v8 count];

  if (v9)
  {
    v10 = [(NUVideoCompositor *)self videoFramesFromRequest:v4];
    v11 = [(NUVideoCompositor *)self videoMetadataSamplesFromRequest:v4];
    v12 = [(NUVideoCompositor *)self videoSampleSlicesFromRequest:v4];
    v13 = [v4 renderContext];
    v14 = [v13 newPixelBuffer];

    if (v14)
    {
      [(NUVideoCompositor *)self setColorSpaceOfDestinationBuffer:v14 fromPrimarySourceBufferOfRequest:v4];
      if (+[NUGlobalSettings videoCompositorDebugMode]== 2)
      {
        NUDebugWatermarkCVPixelBuffer(v14, 2);
      }

      if (v4)
      {
        [v4 compositionTime];
      }

      else
      {
        buf = 0uLL;
        v24 = 0;
      }

      v21 = v10;
      v22 = 0;
      v17 = [v6 renderVideoFrames:v10 videoMetadataSamples:v11 videoSampleSlices:v12 intoPixelBuffer:v14 time:&buf colorSpace:v7 playbackDirection:-[NUVideoCompositor playbackDirection](self error:{"playbackDirection"), &v22}];
      v18 = v22;
      if ([(NUVideoCompositor *)self testAndSetVideoCompositionRequestFinished:v4])
      {
        if (v17)
        {
          [(NUVideoCompositor *)self finishCompositionRequest:v4 withComposedVideoFrame:v14];
        }

        else
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_1198);
          }

          v20 = _NULogger;
          if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf) = 138412290;
            *(&buf + 4) = v18;
            _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Failed to export video: %@", &buf, 0xCu);
          }

          [v4 finishWithError:v18];
        }
      }

      else
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_1198);
        }

        v19 = _NULogger;
        if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
        {
          LOWORD(buf) = 0;
          _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "NUVideoFrameJobCallbackCompositor testAndSetVideoCompositionRequestFinished returned false. Skipping frame", &buf, 2u);
        }
      }

      CFRelease(v14);

      v10 = v21;
    }

    else
    {
      v16 = [NUError unknownError:@"Unable to allocate destination buffer" object:0];
      [(NUVideoCompositor *)self failVideoCompositionRequest:v4 error:v16];
    }
  }

  else
  {
    v15 = [NUError unknownError:@"No sourceTrackIDs" object:0];
    [(NUVideoCompositor *)self failVideoCompositionRequest:v4 error:v15];
  }
}

@end