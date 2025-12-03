@interface NUVideoPlaybackCompositor
- (void)fulfillVideoCompositionRequest:(id)request;
@end

@implementation NUVideoPlaybackCompositor

- (void)fulfillVideoCompositionRequest:(id)request
{
  requestCopy = request;
  videoCompositionInstruction = [requestCopy videoCompositionInstruction];
  videoMedia = [videoCompositionInstruction videoMedia];

  v7 = [NUVideoPlaybackFrameRequest alloc];
  if (videoMedia)
  {
    videoMedia2 = [videoCompositionInstruction videoMedia];
    v9 = [(NURenderRequest *)v7 initWithMedia:videoMedia2];
  }

  else
  {
    videoMedia2 = [videoCompositionInstruction adjustmentComposition];
    v9 = [(NURenderRequest *)v7 initWithComposition:videoMedia2];
  }

  v10 = v9;

  v11 = [[NUPriority alloc] initWithLevel:0];
  [v10 setPriority:v11];

  renderContext = [videoCompositionInstruction renderContext];

  if (renderContext)
  {
    v13 = videoCompositionInstruction;
  }

  else
  {
    v13 = v10;
  }

  if (renderContext)
  {
    v14 = v10;
  }

  else
  {
    v14 = videoCompositionInstruction;
  }

  renderContext2 = [v13 renderContext];
  [v14 setRenderContext:renderContext2];

  sourceTrackIDs = [requestCopy sourceTrackIDs];
  v17 = [sourceTrackIDs count];

  if (!v17)
  {
    v21 = @"No sourceTrackIDs";
LABEL_18:
    v22 = [NUError unknownError:v21 object:0];
    [(NUVideoCompositor *)self failVideoCompositionRequest:requestCopy error:v22];

    goto LABEL_31;
  }

  renderContext3 = [requestCopy renderContext];
  newPixelBuffer = [renderContext3 newPixelBuffer];

  if (!newPixelBuffer)
  {
    v21 = @"Unable to allocate destination buffer";
    goto LABEL_18;
  }

  [(NUVideoCompositor *)self setColorSpaceOfDestinationBuffer:newPixelBuffer fromPrimarySourceBufferOfRequest:requestCopy];
  if (+[NUGlobalSettings videoCompositorDebugMode]== 2)
  {
    NUDebugWatermarkCVPixelBuffer(newPixelBuffer, 2);
  }

  videoRenderPrepareNode = [videoCompositionInstruction videoRenderPrepareNode];
  [v10 setVideoRenderPrepareNode:videoRenderPrepareNode];

  [v10 setDestinationBuffer:newPixelBuffer];
  cf = newPixelBuffer;
  if (requestCopy)
  {
    [requestCopy compositionTime];
  }

  else
  {
    v60 = 0uLL;
    v61 = 0;
  }

  v58 = v60;
  v59 = v61;
  [v10 setEvaluationTime:&v58];
  pipelineFilters = [videoCompositionInstruction pipelineFilters];
  [v10 setPipelineFilters:pipelineFilters];

  v24 = [(NUVideoCompositor *)self videoFramesFromRequest:requestCopy];
  [v10 setVideoFrames:v24];

  v25 = [(NUVideoCompositor *)self videoSampleSlicesFromRequest:requestCopy];
  [v10 setVideoSampleSlices:v25];

  v26 = [(NUVideoCompositor *)self videoMetadataSamplesFromRequest:requestCopy];
  [v10 setVideoMetadataSamples:v26];

  renderScale = [videoCompositionInstruction renderScale];
  [v10 setRenderScale:{renderScale, v28}];
  colorSpace = [videoCompositionInstruction colorSpace];
  [v10 setColorSpace:colorSpace];

  [v10 setIsDolbyVision:{objc_msgSend(videoCompositionInstruction, "isDolbyVision")}];
  [videoCompositionInstruction playbackRate];
  [v10 setPlaybackRate:?];
  renderContext4 = [requestCopy renderContext];
  videoComposition = [renderContext4 videoComposition];
  v32 = videoComposition;
  if (videoComposition)
  {
    [videoComposition frameDuration];
  }

  else
  {
    v56 = 0uLL;
    v57 = 0;
  }

  v58 = v56;
  v59 = v57;
  [v10 setFrameDuration:&v58];

  [v10 setSampleMode:{objc_msgSend(videoCompositionInstruction, "sampleMode")}];
  [v10 setPlaybackDirection:{-[NUVideoCompositor playbackDirection](self, "playbackDirection")}];
  v45 = MEMORY[0x1E696AEC0];
  label = [(NUVideoPlaybackCompositor *)self label];
  name = label;
  if (!label)
  {
    name = [videoCompositionInstruction name];
  }

  selfCopy = self;
  renderContext5 = [requestCopy renderContext];
  renderContext6 = [requestCopy renderContext];
  [renderContext6 size];
  v38 = v37;
  renderContext7 = [requestCopy renderContext];
  [renderContext7 size];
  v41 = v40;
  if (requestCopy)
  {
    [requestCopy compositionTime];
    v42 = v53;
    [requestCopy compositionTime];
    v43 = v51;
  }

  else
  {
    v43 = 0;
    v42 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
    v51 = 0;
    v52 = 0;
    v50 = 0;
  }

  v44 = [v45 stringWithFormat:@"%@-avcontext(%x)-%.0fx%.0f-playback-t=%lld-%d", name, renderContext5, v38, v41, v42, v43];
  [v10 setName:v44];

  if (!label)
  {
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __60__NUVideoPlaybackCompositor_fulfillVideoCompositionRequest___block_invoke;
  v48[3] = &unk_1E810A470;
  v48[4] = selfCopy;
  v49 = requestCopy;
  [v10 submit:v48];
  CFRelease(cf);

LABEL_31:
}

void __60__NUVideoPlaybackCompositor_fulfillVideoCompositionRequest___block_invoke(uint64_t a1, void *a2)
{
  v10 = 0;
  v3 = [a2 result:&v10];
  v4 = v10;
  v5 = [v3 frame];
  if ([*(a1 + 32) testAndSetVideoCompositionRequestFinished:*(a1 + 40)])
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    if (v5)
    {
      [v6 finishCompositionRequest:v7 withComposedVideoFrame:v5];
    }

    else
    {
      [v6 failVideoCompositionRequest:v7 error:v4];
    }
  }

  else
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_8439);
    }

    v8 = _NURenderLogger;
    if (os_log_type_enabled(_NURenderLogger, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "NUVideoPlaybackCompositor testAndSetVideoCompositionRequestFinished returned false. Skipping frame", v9, 2u);
    }
  }
}

@end