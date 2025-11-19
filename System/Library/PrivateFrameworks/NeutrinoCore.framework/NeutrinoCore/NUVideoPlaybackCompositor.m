@interface NUVideoPlaybackCompositor
- (void)fulfillVideoCompositionRequest:(id)a3;
@end

@implementation NUVideoPlaybackCompositor

- (void)fulfillVideoCompositionRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 videoCompositionInstruction];
  v6 = [v5 videoMedia];

  v7 = [NUVideoPlaybackFrameRequest alloc];
  if (v6)
  {
    v8 = [v5 videoMedia];
    v9 = [(NURenderRequest *)v7 initWithMedia:v8];
  }

  else
  {
    v8 = [v5 adjustmentComposition];
    v9 = [(NURenderRequest *)v7 initWithComposition:v8];
  }

  v10 = v9;

  v11 = [[NUPriority alloc] initWithLevel:0];
  [v10 setPriority:v11];

  v12 = [v5 renderContext];

  if (v12)
  {
    v13 = v5;
  }

  else
  {
    v13 = v10;
  }

  if (v12)
  {
    v14 = v10;
  }

  else
  {
    v14 = v5;
  }

  v15 = [v13 renderContext];
  [v14 setRenderContext:v15];

  v16 = [v4 sourceTrackIDs];
  v17 = [v16 count];

  if (!v17)
  {
    v21 = @"No sourceTrackIDs";
LABEL_18:
    v22 = [NUError unknownError:v21 object:0];
    [(NUVideoCompositor *)self failVideoCompositionRequest:v4 error:v22];

    goto LABEL_31;
  }

  v18 = [v4 renderContext];
  v19 = [v18 newPixelBuffer];

  if (!v19)
  {
    v21 = @"Unable to allocate destination buffer";
    goto LABEL_18;
  }

  [(NUVideoCompositor *)self setColorSpaceOfDestinationBuffer:v19 fromPrimarySourceBufferOfRequest:v4];
  if (+[NUGlobalSettings videoCompositorDebugMode]== 2)
  {
    NUDebugWatermarkCVPixelBuffer(v19, 2);
  }

  v20 = [v5 videoRenderPrepareNode];
  [v10 setVideoRenderPrepareNode:v20];

  [v10 setDestinationBuffer:v19];
  cf = v19;
  if (v4)
  {
    [v4 compositionTime];
  }

  else
  {
    v60 = 0uLL;
    v61 = 0;
  }

  v58 = v60;
  v59 = v61;
  [v10 setEvaluationTime:&v58];
  v23 = [v5 pipelineFilters];
  [v10 setPipelineFilters:v23];

  v24 = [(NUVideoCompositor *)self videoFramesFromRequest:v4];
  [v10 setVideoFrames:v24];

  v25 = [(NUVideoCompositor *)self videoSampleSlicesFromRequest:v4];
  [v10 setVideoSampleSlices:v25];

  v26 = [(NUVideoCompositor *)self videoMetadataSamplesFromRequest:v4];
  [v10 setVideoMetadataSamples:v26];

  v27 = [v5 renderScale];
  [v10 setRenderScale:{v27, v28}];
  v29 = [v5 colorSpace];
  [v10 setColorSpace:v29];

  [v10 setIsDolbyVision:{objc_msgSend(v5, "isDolbyVision")}];
  [v5 playbackRate];
  [v10 setPlaybackRate:?];
  v30 = [v4 renderContext];
  v31 = [v30 videoComposition];
  v32 = v31;
  if (v31)
  {
    [v31 frameDuration];
  }

  else
  {
    v56 = 0uLL;
    v57 = 0;
  }

  v58 = v56;
  v59 = v57;
  [v10 setFrameDuration:&v58];

  [v10 setSampleMode:{objc_msgSend(v5, "sampleMode")}];
  [v10 setPlaybackDirection:{-[NUVideoCompositor playbackDirection](self, "playbackDirection")}];
  v45 = MEMORY[0x1E696AEC0];
  v33 = [(NUVideoPlaybackCompositor *)self label];
  v34 = v33;
  if (!v33)
  {
    v34 = [v5 name];
  }

  v47 = self;
  v35 = [v4 renderContext];
  v36 = [v4 renderContext];
  [v36 size];
  v38 = v37;
  v39 = [v4 renderContext];
  [v39 size];
  v41 = v40;
  if (v4)
  {
    [v4 compositionTime];
    v42 = v53;
    [v4 compositionTime];
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

  v44 = [v45 stringWithFormat:@"%@-avcontext(%x)-%.0fx%.0f-playback-t=%lld-%d", v34, v35, v38, v41, v42, v43];
  [v10 setName:v44];

  if (!v33)
  {
  }

  v48[0] = MEMORY[0x1E69E9820];
  v48[1] = 3221225472;
  v48[2] = __60__NUVideoPlaybackCompositor_fulfillVideoCompositionRequest___block_invoke;
  v48[3] = &unk_1E810A470;
  v48[4] = v47;
  v49 = v4;
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