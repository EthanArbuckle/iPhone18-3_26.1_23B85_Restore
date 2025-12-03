@interface NUVideoRenderJob
- (BOOL)prepare:(id *)prepare;
- (BOOL)requiresVideoComposition;
- (id)generateVideoComposition:(id *)composition;
- (id)result;
- (id)scalePolicy;
@end

@implementation NUVideoRenderJob

- (id)result
{
  v3 = objc_alloc_init(_NUVideoRenderResult);
  outputVideo = [(NURenderJob *)self outputVideo];
  [(_NUVideoRenderResult *)v3 setVideo:outputVideo];

  outputVideoComposition = [(NURenderJob *)self outputVideoComposition];
  [(_NUVideoRenderResult *)v3 setVideoComposition:outputVideoComposition];

  outputAudioMix = [(NURenderJob *)self outputAudioMix];
  [(_NUVideoRenderResult *)v3 setAudioMix:outputAudioMix];

  outputGeometry = [(NURenderJob *)self outputGeometry];
  [(_NUVideoRenderResult *)v3 setGeometry:outputGeometry];

  return v3;
}

- (id)generateVideoComposition:(id *)composition
{
  v53 = *MEMORY[0x1E69E9840];
  v51.receiver = self;
  v51.super_class = NUVideoRenderJob;
  v46 = [(NURenderJob *)&v51 generateVideoComposition:?];
  v5 = [NUVideoUtilities deepMutableCopyVideoComposition:?];
  composition = [(NURenderJob *)self composition];
  if (composition)
  {
    v7 = composition;
    composition2 = [(NURenderJob *)self composition];
    [NUCompositionUtilities isHDRComposition:composition2];
  }

  [v5 setCustomVideoCompositorClass:objc_opt_class()];
  outputVideo = [(NURenderJob *)self outputVideo];
  v10 = [outputVideo tracksWithMediaType:*MEMORY[0x1E6987608]];
  if ([v10 count] == 1)
  {
    v11 = [v10 objectAtIndexedSubscript:0];
    [v5 setSourceTrackIDForFrameTiming:{objc_msgSend(v11, "trackID")}];
  }

  v12 = [NUVideoUtilities firstEnabledVideoTrackInAsset:outputVideo error:composition];
  v43 = v10;
  v44 = outputVideo;
  v42 = v12;
  if (v12)
  {
    v13 = [NUVideoUtilities videoTrackContainsDolbyVisionMetadata:v12];
  }

  else
  {
    v13 = 0;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = v5;
  instructions = [v5 instructions];
  v15 = [instructions countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v48;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v48 != v17)
        {
          objc_enumerationMutation(instructions);
        }

        v19 = *(*(&v47 + 1) + 8 * i);
        request = [(NURenderJob *)self request];
        composition3 = [request composition];
        [v19 setAdjustmentComposition:composition3];

        request2 = [(NURenderJob *)self request];
        media = [request2 media];
        [v19 setVideoMedia:media];

        request3 = [(NURenderJob *)self request];
        pipelineFilters = [request3 pipelineFilters];
        [v19 setPipelineFilters:pipelineFilters];

        renderScale = [(NURenderJob *)self renderScale];
        [v19 setRenderScale:{renderScale, v27}];
        videoRenderRequest = [(NUVideoRenderJob *)self videoRenderRequest];
        colorSpace = [videoRenderRequest colorSpace];
        [v19 setColorSpace:colorSpace];

        [v19 setIsDolbyVision:v13];
        request4 = [(NURenderJob *)self request];
        renderContext = [request4 renderContext];
        [v19 setRenderContext:renderContext];

        prepareNode = [(NURenderJob *)self prepareNode];
        [v19 setVideoRenderPrepareNode:prepareNode];

        request5 = [(NURenderJob *)self request];
        [v19 setSampleMode:{objc_msgSend(request5, "sampleMode")}];

        request6 = [(NURenderJob *)self request];
        name = [request6 name];
        v36 = [name stringByReplacingOccurrencesOfString:@"-NUVideoRenderRequest" withString:&stru_1F3F4BA98];
        [v19 setName:v36];
      }

      v16 = [instructions countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v16);
  }

  if (v13)
  {
    [v45 setPerFrameHDRDisplayMetadataPolicy:*MEMORY[0x1E6987D28]];
  }

  instructions2 = [v45 instructions];
  firstObject = [instructions2 firstObject];
  requiredSourceSampleDataTrackIDs = [firstObject requiredSourceSampleDataTrackIDs];
  [v45 setSourceSampleDataTrackIDs:requiredSourceSampleDataTrackIDs];

  v40 = [v45 copy];

  return v40;
}

- (BOOL)requiresVideoComposition
{
  v3.receiver = self;
  v3.super_class = NUVideoRenderJob;
  return [(NURenderJob *)&v3 requiresVideoComposition];
}

- (BOOL)prepare:(id *)prepare
{
  v14.receiver = self;
  v14.super_class = NUVideoRenderJob;
  v4 = [(NURenderJob *)&v14 prepare:prepare];
  if (v4 && ![(NURenderJob *)self _shouldWaitForDependentJobs])
  {
    outputVideoComposition = [(NURenderJob *)self outputVideoComposition];

    if (!outputVideoComposition)
    {
      outputGeometry = [(NURenderJob *)self outputGeometry];
      v7 = [NUImageGeometry alloc];
      if (outputGeometry)
      {
        [outputGeometry extent];
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
      }

      orientation = [outputGeometry orientation];
      spaceMap = [outputGeometry spaceMap];
      v10 = [(NUImageGeometry *)v7 initWithExtent:&v12 renderScale:NUScaleOne orientation:orientation spaceMap:spaceMap];
      [(NURenderJob *)self setOutputGeometry:v10];
    }
  }

  return v4;
}

- (id)scalePolicy
{
  videoRenderRequest = [(NUVideoRenderJob *)self videoRenderRequest];
  scalePolicy = [videoRenderRequest scalePolicy];

  return scalePolicy;
}

@end