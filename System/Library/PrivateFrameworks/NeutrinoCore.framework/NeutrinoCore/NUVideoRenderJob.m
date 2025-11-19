@interface NUVideoRenderJob
- (BOOL)prepare:(id *)a3;
- (BOOL)requiresVideoComposition;
- (id)generateVideoComposition:(id *)a3;
- (id)result;
- (id)scalePolicy;
@end

@implementation NUVideoRenderJob

- (id)result
{
  v3 = objc_alloc_init(_NUVideoRenderResult);
  v4 = [(NURenderJob *)self outputVideo];
  [(_NUVideoRenderResult *)v3 setVideo:v4];

  v5 = [(NURenderJob *)self outputVideoComposition];
  [(_NUVideoRenderResult *)v3 setVideoComposition:v5];

  v6 = [(NURenderJob *)self outputAudioMix];
  [(_NUVideoRenderResult *)v3 setAudioMix:v6];

  v7 = [(NURenderJob *)self outputGeometry];
  [(_NUVideoRenderResult *)v3 setGeometry:v7];

  return v3;
}

- (id)generateVideoComposition:(id *)a3
{
  v53 = *MEMORY[0x1E69E9840];
  v51.receiver = self;
  v51.super_class = NUVideoRenderJob;
  v46 = [(NURenderJob *)&v51 generateVideoComposition:?];
  v5 = [NUVideoUtilities deepMutableCopyVideoComposition:?];
  v6 = [(NURenderJob *)self composition];
  if (v6)
  {
    v7 = v6;
    v8 = [(NURenderJob *)self composition];
    [NUCompositionUtilities isHDRComposition:v8];
  }

  [v5 setCustomVideoCompositorClass:objc_opt_class()];
  v9 = [(NURenderJob *)self outputVideo];
  v10 = [v9 tracksWithMediaType:*MEMORY[0x1E6987608]];
  if ([v10 count] == 1)
  {
    v11 = [v10 objectAtIndexedSubscript:0];
    [v5 setSourceTrackIDForFrameTiming:{objc_msgSend(v11, "trackID")}];
  }

  v12 = [NUVideoUtilities firstEnabledVideoTrackInAsset:v9 error:a3];
  v43 = v10;
  v44 = v9;
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
  v14 = [v5 instructions];
  v15 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
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
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v47 + 1) + 8 * i);
        v20 = [(NURenderJob *)self request];
        v21 = [v20 composition];
        [v19 setAdjustmentComposition:v21];

        v22 = [(NURenderJob *)self request];
        v23 = [v22 media];
        [v19 setVideoMedia:v23];

        v24 = [(NURenderJob *)self request];
        v25 = [v24 pipelineFilters];
        [v19 setPipelineFilters:v25];

        v26 = [(NURenderJob *)self renderScale];
        [v19 setRenderScale:{v26, v27}];
        v28 = [(NUVideoRenderJob *)self videoRenderRequest];
        v29 = [v28 colorSpace];
        [v19 setColorSpace:v29];

        [v19 setIsDolbyVision:v13];
        v30 = [(NURenderJob *)self request];
        v31 = [v30 renderContext];
        [v19 setRenderContext:v31];

        v32 = [(NURenderJob *)self prepareNode];
        [v19 setVideoRenderPrepareNode:v32];

        v33 = [(NURenderJob *)self request];
        [v19 setSampleMode:{objc_msgSend(v33, "sampleMode")}];

        v34 = [(NURenderJob *)self request];
        v35 = [v34 name];
        v36 = [v35 stringByReplacingOccurrencesOfString:@"-NUVideoRenderRequest" withString:&stru_1F3F4BA98];
        [v19 setName:v36];
      }

      v16 = [v14 countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v16);
  }

  if (v13)
  {
    [v45 setPerFrameHDRDisplayMetadataPolicy:*MEMORY[0x1E6987D28]];
  }

  v37 = [v45 instructions];
  v38 = [v37 firstObject];
  v39 = [v38 requiredSourceSampleDataTrackIDs];
  [v45 setSourceSampleDataTrackIDs:v39];

  v40 = [v45 copy];

  return v40;
}

- (BOOL)requiresVideoComposition
{
  v3.receiver = self;
  v3.super_class = NUVideoRenderJob;
  return [(NURenderJob *)&v3 requiresVideoComposition];
}

- (BOOL)prepare:(id *)a3
{
  v14.receiver = self;
  v14.super_class = NUVideoRenderJob;
  v4 = [(NURenderJob *)&v14 prepare:a3];
  if (v4 && ![(NURenderJob *)self _shouldWaitForDependentJobs])
  {
    v5 = [(NURenderJob *)self outputVideoComposition];

    if (!v5)
    {
      v6 = [(NURenderJob *)self outputGeometry];
      v7 = [NUImageGeometry alloc];
      if (v6)
      {
        [v6 extent];
      }

      else
      {
        v12 = 0u;
        v13 = 0u;
      }

      v8 = [v6 orientation];
      v9 = [v6 spaceMap];
      v10 = [(NUImageGeometry *)v7 initWithExtent:&v12 renderScale:NUScaleOne orientation:v8 spaceMap:v9];
      [(NURenderJob *)self setOutputGeometry:v10];
    }
  }

  return v4;
}

- (id)scalePolicy
{
  v2 = [(NUVideoRenderJob *)self videoRenderRequest];
  v3 = [v2 scalePolicy];

  return v3;
}

@end