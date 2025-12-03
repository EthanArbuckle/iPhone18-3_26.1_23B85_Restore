@interface NUVideoFrameJobCallbackCompositor
- (void)fulfillVideoCompositionRequest:(id)request;
@end

@implementation NUVideoFrameJobCallbackCompositor

- (void)fulfillVideoCompositionRequest:(id)request
{
  v25 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  videoCompositionInstruction = [requestCopy videoCompositionInstruction];
  renderJob = [videoCompositionInstruction renderJob];
  colorSpace = [videoCompositionInstruction colorSpace];
  sourceTrackIDs = [requestCopy sourceTrackIDs];
  v9 = [sourceTrackIDs count];

  if (v9)
  {
    v10 = [(NUVideoCompositor *)self videoFramesFromRequest:requestCopy];
    v11 = [(NUVideoCompositor *)self videoMetadataSamplesFromRequest:requestCopy];
    v12 = [(NUVideoCompositor *)self videoSampleSlicesFromRequest:requestCopy];
    renderContext = [requestCopy renderContext];
    newPixelBuffer = [renderContext newPixelBuffer];

    if (newPixelBuffer)
    {
      [(NUVideoCompositor *)self setColorSpaceOfDestinationBuffer:newPixelBuffer fromPrimarySourceBufferOfRequest:requestCopy];
      if (+[NUGlobalSettings videoCompositorDebugMode]== 2)
      {
        NUDebugWatermarkCVPixelBuffer(newPixelBuffer, 2);
      }

      if (requestCopy)
      {
        [requestCopy compositionTime];
      }

      else
      {
        buf = 0uLL;
        v24 = 0;
      }

      v21 = v10;
      v22 = 0;
      v17 = [renderJob renderVideoFrames:v10 videoMetadataSamples:v11 videoSampleSlices:v12 intoPixelBuffer:newPixelBuffer time:&buf colorSpace:colorSpace playbackDirection:-[NUVideoCompositor playbackDirection](self error:{"playbackDirection"), &v22}];
      v18 = v22;
      if ([(NUVideoCompositor *)self testAndSetVideoCompositionRequestFinished:requestCopy])
      {
        if (v17)
        {
          [(NUVideoCompositor *)self finishCompositionRequest:requestCopy withComposedVideoFrame:newPixelBuffer];
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

          [requestCopy finishWithError:v18];
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

      CFRelease(newPixelBuffer);

      v10 = v21;
    }

    else
    {
      v16 = [NUError unknownError:@"Unable to allocate destination buffer" object:0];
      [(NUVideoCompositor *)self failVideoCompositionRequest:requestCopy error:v16];
    }
  }

  else
  {
    v15 = [NUError unknownError:@"No sourceTrackIDs" object:0];
    [(NUVideoCompositor *)self failVideoCompositionRequest:requestCopy error:v15];
  }
}

@end