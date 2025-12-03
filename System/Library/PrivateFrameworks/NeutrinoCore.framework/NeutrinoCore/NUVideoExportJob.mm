@interface NUVideoExportJob
- (BOOL)render:(id *)render;
- (BOOL)renderVideoFrames:(id)frames videoMetadataSamples:(id)samples videoSampleSlices:(id)slices intoPixelBuffer:(__CVBuffer *)buffer time:(id *)time colorSpace:(id)space playbackDirection:(int64_t)direction error:(id *)self0;
- (BOOL)requiresVideoComposition;
- (BOOL)wantsRenderNodeCached;
- (BOOL)writeVideoFrom:(id)from toWriter:(id)writer stillImageTime:(id *)time createCustomMetadata:(BOOL)metadata geometryTransform:(id)transform inputSize:(CGSize)size outputSize:(CGSize)outputSize error:(id *)self0;
- (NUVideoExportJob)initWithExportRequest:(id)request;
- (NUVideoExportJob)initWithVideoExportRequest:(id)request;
- (id)generateVideoComposition:(id *)composition;
- (id)prepareNodeWithPipelineState:(id)state error:(id *)error;
- (id)renderNodeWithPipelineState:(id)state error:(id *)error;
- (id)renderer:(id *)renderer;
- (id)result;
- (id)scalePolicy;
- (void)updateDigestWithRenderedFrame:(__CVBuffer *)frame;
@end

@implementation NUVideoExportJob

- (void)updateDigestWithRenderedFrame:(__CVBuffer *)frame
{
  digest = [(NUVideoExportJob *)self digest];

  if (digest)
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(frame, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(frame, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(frame, 0);
    v15 = CVPixelBufferGetWidthOfPlane(frame, 1uLL);
    v9 = CVPixelBufferGetHeightOfPlane(frame, 1uLL);
    v10 = CVPixelBufferGetBytesPerRowOfPlane(frame, 1uLL);
    CVPixelBufferLockBaseAddress(frame, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(frame, 0);
    for (i = CVPixelBufferGetBaseAddressOfPlane(frame, 1uLL); HeightOfPlane; --HeightOfPlane)
    {
      digest2 = [(NUVideoExportJob *)self digest];
      [digest2 addBytes:BaseAddressOfPlane length:WidthOfPlane];

      BaseAddressOfPlane += BytesPerRowOfPlane;
    }

    for (; v9; --v9)
    {
      digest3 = [(NUVideoExportJob *)self digest];
      [digest3 addBytes:i length:2 * v15];

      i += v10;
    }

    CVPixelBufferUnlockBaseAddress(frame, 0);
  }
}

- (BOOL)renderVideoFrames:(id)frames videoMetadataSamples:(id)samples videoSampleSlices:(id)slices intoPixelBuffer:(__CVBuffer *)buffer time:(id *)time colorSpace:(id)space playbackDirection:(int64_t)direction error:(id *)self0
{
  v16.receiver = self;
  v16.super_class = NUVideoExportJob;
  v15 = *time;
  v12 = [(NURenderJob *)&v16 renderVideoFrames:frames videoMetadataSamples:samples videoSampleSlices:slices intoPixelBuffer:buffer time:&v15 colorSpace:space playbackDirection:direction error:error];
  if (v12)
  {
    digest = [(NUVideoExportJob *)self digest];

    if (digest)
    {
      [(NUVideoExportJob *)self updateDigestWithRenderedFrame:buffer];
    }
  }

  return v12;
}

- (id)renderNodeWithPipelineState:(id)state error:(id *)error
{
  v9.receiver = self;
  v9.super_class = NUVideoExportJob;
  v5 = [(NURenderJob *)&v9 renderNodeWithPipelineState:state error:error];
  if ([(NUVideoExportJob *)self wantsRenderNodeCached])
  {
    request = [(NURenderJob *)self request];
    renderContext = [request renderContext];
    [renderContext setLastRenderNode:v5];
  }

  return v5;
}

- (BOOL)writeVideoFrom:(id)from toWriter:(id)writer stillImageTime:(id *)time createCustomMetadata:(BOOL)metadata geometryTransform:(id)transform inputSize:(CGSize)size outputSize:(CGSize)outputSize error:(id *)self0
{
  height = outputSize.height;
  width = outputSize.width;
  v13 = size.height;
  v14 = size.width;
  metadataCopy = metadata;
  transformCopy = transform;
  writerCopy = writer;
  fromCopy = from;
  videoExportRequest = [(NUVideoExportJob *)self videoExportRequest];
  progress = [videoExportRequest progress];
  v28 = *time;
  LOBYTE(error) = [NUVideoUtilities readFromReader:fromCopy andWriteToWriter:writerCopy stillImageTime:&v28 createCustomMetadata:metadataCopy geometryTransform:transformCopy inputSize:progress outputSize:v14 progress:v13 error:width, height, error];

  request = [(NURenderJob *)self request];
  renderContext = [request renderContext];
  [renderContext setLastRenderNode:0];

  return error;
}

- (BOOL)render:(id *)render
{
  v440 = *MEMORY[0x1E69E9840];
  if (!render)
  {
    v260 = NUAssertLogger_3938();
    if (os_log_type_enabled(v260, OS_LOG_TYPE_ERROR))
    {
      v261 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *v435 = 138543362;
      *&v435[4] = v261;
      _os_log_error_impl(&dword_1C0184000, v260, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v435, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v263 = NUAssertLogger_3938();
    v264 = os_log_type_enabled(v263, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v264)
      {
        v268 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v269 = MEMORY[0x1E696AF00];
        v270 = v268;
        callStackSymbols = [v269 callStackSymbols];
        v272 = [callStackSymbols componentsJoinedByString:@"\n"];
        *v435 = 138543618;
        *&v435[4] = v268;
        *&v435[12] = 2114;
        *&v435[14] = v272;
        _os_log_error_impl(&dword_1C0184000, v263, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v435, 0x16u);
      }
    }

    else if (v264)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v266 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *v435 = 138543362;
      *&v435[4] = v266;
      _os_log_error_impl(&dword_1C0184000, v263, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v435, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoExportJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoExportJob.m", 240, @"Invalid parameter not satisfying: %s", v273, v274, v275, v276, "error != nil");
  }

  videoExportRequest = [(NUVideoExportJob *)self videoExportRequest];
  videoProperties = [(NUVideoExportJob *)self videoProperties];
  v3 = objc_alloc(MEMORY[0x1E6987E78]);
  outputVideo = [(NURenderJob *)self outputVideo];
  v423 = 0;
  v5 = [v3 initWithAsset:outputVideo error:&v423];
  v6 = v423;

  if (!v5)
  {
    outputVideo2 = [(NURenderJob *)self outputVideo];
    [NUError errorWithCode:1 reason:@"Failed to initialize AVAssetReader" object:outputVideo2 underlyingError:v6];
    *render = v3083 = 0;
    goto LABEL_128;
  }

  outputVideo2 = [videoExportRequest destinationURL];
  pathExtension = [outputVideo2 pathExtension];
  v314 = NUFileTypeFromExtension(pathExtension);

  v422 = v6;
  v319 = [objc_alloc(MEMORY[0x1E6987ED8]) initWithURL:outputVideo2 fileType:v314 error:&v422];
  v312 = v422;

  if (!v319)
  {
    [NUError errorWithCode:1 reason:@"Failed to inialize AVAssetWriter for URL" object:outputVideo2 underlyingError:v312];
    *render = v3083 = 0;
    goto LABEL_127;
  }

  metadata = [videoExportRequest metadata];
  [v319 setMetadata:metadata];

  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  memset(&v421, 0, sizeof(v421));
  if (videoProperties)
  {
    [videoProperties livePhotoKeyFrameTime];
    flags = v421.flags;
  }

  else
  {
    flags = 0;
  }

  v420 = 0u;
  v419 = 0u;
  v418 = 0u;
  v417 = 0u;
  outputVideo3 = [(NURenderJob *)self outputVideo];
  tracks = [outputVideo3 tracks];

  v12 = [tracks countByEnumeratingWithState:&v417 objects:v439 count:16];
  if (!v12)
  {
    newTimescale = 600;
    v16 = 0.0;
    goto LABEL_44;
  }

  v13 = *v418;
  v14 = *MEMORY[0x1E6987608];
  v15 = *MEMORY[0x1E69875B0];
  v352 = *MEMORY[0x1E69875A0];
  v337 = *MEMORY[0x1E69875D0];
  newTimescale = 600;
  v16 = 0.0;
  do
  {
    v17 = 0;
    do
    {
      if (*v418 != v13)
      {
        objc_enumerationMutation(tracks);
      }

      v18 = *(*(&v417 + 1) + 8 * v17);
      mediaType = [v18 mediaType];
      v20 = [mediaType isEqualToString:v14];

      if (v20)
      {
        [array addObject:v18];
        newTimescale = [v18 naturalTimeScale];
        [v18 estimatedDataRate];
        if (v16 < v21)
        {
          v16 = v21;
        }
      }

      else
      {
        mediaType2 = [v18 mediaType];
        v23 = [mediaType2 isEqualToString:v15];

        if (v23)
        {
          [array2 addObject:v18];
          goto LABEL_26;
        }

        mediaType3 = [v18 mediaType];
        v25 = [mediaType3 isEqualToString:v352];

        if (v25)
        {
          [array3 addObject:v18];
          goto LABEL_26;
        }

        mediaType4 = [v18 mediaType];
        v27 = [mediaType4 isEqualToString:v337];

        if (!v27)
        {
LABEL_25:
          [array4 addObject:v18];
          goto LABEL_26;
        }

        v28 = [NUVideoUtilities isMetadataTrackStillImageDisplayTimeMarkerInLivePhoto:v18];
        if ([NUVideoUtilities isMetadataTrackWithStillImageTransformInLivePhoto:v18])
        {
          flags = 1;
          goto LABEL_26;
        }

        flags &= !v28;
        if ([NUVideoUtilities isMetadataTrackWithLivePhotoInfo:v18])
        {
          renderNode = [(NURenderJob *)self renderNode];
          canPropagateOriginalLivePhotoMetadataTrack = [renderNode canPropagateOriginalLivePhotoMetadataTrack];

          if (canPropagateOriginalLivePhotoMetadataTrack)
          {
            goto LABEL_25;
          }
        }

        else if ([NUVideoUtilities metadataTrackContainsPortraitVideoData:v18])
        {
          if ([videoExportRequest includeCinematicVideoTracks])
          {
            goto LABEL_25;
          }
        }

        else if ([NUVideoUtilities metadataTrackContainsCinematicAudioData:v18])
        {
          if ([videoExportRequest includeCinematicVideoTracks])
          {
            goto LABEL_25;
          }
        }

        else if (!+[NUVideoUtilities metadataTrackContainsSemanticStyleData:](NUVideoUtilities, "metadataTrackContainsSemanticStyleData:", v18) || [videoExportRequest includeSemanticStyleTracks])
        {
          goto LABEL_25;
        }
      }

LABEL_26:
      ++v17;
    }

    while (v12 != v17);
    v31 = [tracks countByEnumeratingWithState:&v417 objects:v439 count:16];
    v12 = v31;
  }

  while (v31);
LABEL_44:

  if (v421.flags)
  {
    time = v421;
    CMTimeConvertScale(v435, &time, newTimescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v421 = *v435;
  }

  outputSettings = [videoExportRequest outputSettings];
  v32 = *MEMORY[0x1E6987CB0];
  v33 = [outputSettings objectForKeyedSubscript:*MEMORY[0x1E6987CB0]];
  v34 = v33 == 0;

  if (v34)
  {
    +[NUVideoUtilities defaultExportCodecForHDRVideo:](NUVideoUtilities, "defaultExportCodecForHDRVideo:", [videoProperties isHDR]);
  }

  else
  {
    [outputSettings objectForKeyedSubscript:v32];
  }
  v35 = ;
  v36 = NUTypeCodeFromString(v35);

  outputGeometry = [(NURenderJob *)self outputGeometry];
  scaledSize = [outputGeometry scaledSize];
  v308 = v38;
  v309 = scaledSize;
  if ((scaledSize | v38))
  {
    v277 = NUAssertLogger_3938();
    if (os_log_type_enabled(v277, OS_LOG_TYPE_ERROR))
    {
      v278 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Expected even dimensions for the exported video"];
      *v435 = 138543362;
      *&v435[4] = v278;
      _os_log_error_impl(&dword_1C0184000, v277, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v435, 0xCu);
    }

    v279 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v280 = NUAssertLogger_3938();
    v281 = os_log_type_enabled(v280, OS_LOG_TYPE_ERROR);
    if (v279)
    {
      if (v281)
      {
        v284 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v285 = MEMORY[0x1E696AF00];
        v286 = v284;
        callStackSymbols3 = [v285 callStackSymbols];
        v288 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *v435 = 138543618;
        *&v435[4] = v284;
        *&v435[12] = 2114;
        *&v435[14] = v288;
        _os_log_error_impl(&dword_1C0184000, v280, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v435, 0x16u);
      }
    }

    else if (v281)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v283 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *v435 = 138543362;
      *&v435[4] = v283;
      _os_log_error_impl(&dword_1C0184000, v280, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v435, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoExportJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoExportJob.m", 352, @"Expected even dimensions for the exported video", v289, v290, v291, v292, v293);
  }

  v310 = [NUVideoUtilities bestOutputSettingsPresetForTargetVideoSize:"bestOutputSettingsPresetForTargetVideoSize:codec:" codec:?];
  v316 = [MEMORY[0x1E6988080] outputSettingsAssistantWithPreset:v310];
  if (!v316)
  {
    [NUError unknownError:@"Failed to instantiate assistant for preset" object:v310];
    *render = v3083 = 0;
    goto LABEL_126;
  }

  time.value = 0;
  if (v309 <= v308)
  {
    v39 = v308;
  }

  else
  {
    v39 = v309;
  }

  if (v309 >= v308)
  {
    v40 = v308;
  }

  else
  {
    v40 = v309;
  }

  if (!CMVideoFormatDescriptionCreate(0, v36, v39, v40, 0, &time))
  {
    [v316 setSourceVideoFormat:time.value];
    CFRelease(time.value);
  }

  firstObject = [array firstObject];
  ConfigureAssistantTimingFromTrack(v316, firstObject);
  formatDescriptions = [firstObject formatDescriptions];
  [v316 setSourceVideoFormat:objc_msgSend(formatDescriptions, "firstObject")];

  fullSizeGeometry = [(NURenderJob *)self fullSizeGeometry];
  v43 = [fullSizeGeometry size];
  v302 = v44;
  v303 = v43;

  if (videoProperties)
  {
    originalSize = [videoProperties originalSize];
    v302 = v46;
    v303 = originalSize;
  }

  v353 = objc_alloc_init(MEMORY[0x1E695DF90]);
  outputVideoComposition = [(NURenderJob *)self outputVideoComposition];
  v48 = outputVideoComposition == 0;

  if (v48)
  {
    formatDescriptions2 = [firstObject formatDescriptions];
    firstObject2 = [formatDescriptions2 firstObject];

    MediaSubType = CMFormatDescriptionGetMediaSubType(firstObject2);
    renderScale = [outputGeometry renderScale];
    v56 = v55;
    fullSizeGeometry2 = [(NURenderJob *)self fullSizeGeometry];
    if (fullSizeGeometry2)
    {
      fullSizeGeometry3 = [(NURenderJob *)self fullSizeGeometry];
      renderScale2 = [fullSizeGeometry3 renderScale];
      v61 = v60;
    }

    else
    {
      renderScale2 = [(NURenderJob *)self renderScale];
      v61 = v91;
    }

    if (NUScaleCompare(renderScale, v56, renderScale2, v61) || ([videoExportRequest bypassOutputSettingsIfNoComposition] & 1) == 0 && ((objc_msgSend(outputSettings, "objectForKeyedSubscript:", v32), (v97 = objc_claimAutoreleasedReturnValue()) != 0) ? (v98 = v36 == MediaSubType) : (v98 = 1), v98 ? (v99 = 0) : (v99 = 1), v97, v99))
    {
      newTimescalea = +[NUVideoUtilities defaultVideoSettingsForAVAssetReader];
      videoSettings = [v316 videoSettings];
      v93 = [videoSettings mutableCopy];

      [v93 addEntriesFromDictionary:outputSettings];
      v94 = [MEMORY[0x1E696AD98] numberWithInteger:v309];
      [v93 setObject:v94 forKeyedSubscript:*MEMORY[0x1E6987E08]];

      v95 = [MEMORY[0x1E696AD98] numberWithInteger:v308];
      [v93 setObject:v95 forKeyedSubscript:*MEMORY[0x1E6987D70]];

      [v93 removeObjectForKey:*MEMORY[0x1E6987DC8]];
      if (videoProperties)
      {
        [videoProperties cleanAperture];
        v308 = [NUVideoUtilities cleanApertureVideoSettingsFor:v435 scale:renderScale videoSize:v56, v309, v308];
        [v93 setObject:v308 forKeyedSubscript:*MEMORY[0x1E6987C88]];
      }

      v340 = v93;
    }

    else
    {
      v340 = 0;
      newTimescalea = 0;
    }

    v399 = 0u;
    v398 = 0u;
    v396 = 0u;
    v397 = 0u;
    outputVideo4 = [(NURenderJob *)self outputVideo];
    v101 = *MEMORY[0x1E6987608];
    v333 = [outputVideo4 tracksWithMediaType:*MEMORY[0x1E6987608]];

    v102 = [v333 countByEnumeratingWithState:&v396 objects:v434 count:16];
    if (v102)
    {
      v103 = *v397;
      do
      {
        for (i = 0; i != v102; ++i)
        {
          if (*v397 != v103)
          {
            objc_enumerationMutation(v333);
          }

          v105 = *(*(&v396 + 1) + 8 * i);
          v106 = [objc_alloc(MEMORY[0x1E6987EA8]) initWithTrack:v105 outputSettings:newTimescalea];
          [v106 setAlwaysCopiesSampleData:0];
          if (([v5 canAddOutput:v106] & 1) == 0)
          {
            *render = [NUError unknownError:@"Cannot add video track output to asset reader" object:v105];

            goto LABEL_122;
          }

          [v5 addOutput:v106];

          v107 = [objc_alloc(MEMORY[0x1E6987EE0]) initWithMediaType:v101 outputSettings:v340];
          if (v105)
          {
            [v105 preferredTransform];
          }

          else
          {
            v394 = 0u;
            v395 = 0u;
            v393 = 0u;
          }

          *v435 = v393;
          *&v435[16] = v394;
          v436 = v395;
          [v107 setTransform:v435];
          [v105 naturalSize];
          [v107 setNaturalSize:?];
          [v107 setMediaTimeScale:{objc_msgSend(v105, "naturalTimeScale")}];
          trackMetadata = [videoProperties trackMetadata];
          v109 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v105, "trackID")}];
          v110 = [trackMetadata objectForKeyedSubscript:v109];
          [v107 setMetadata:v110];

          if (([v319 canAddInput:v107] & 1) == 0)
          {
            *render = [NUError unknownError:@"Cannot add video track input to asset writer" object:v107];

LABEL_122:
LABEL_123:
            obja = 0;
            goto LABEL_124;
          }

          [v319 addInput:v107];
          v111 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v105, "trackID")}];
          [v353 setObject:v107 forKeyedSubscript:v111];
        }

        v102 = [v333 countByEnumeratingWithState:&v396 objects:v434 count:16];
      }

      while (v102);
    }

    obja = 0;
  }

  else
  {
    outputVideoComposition2 = [(NURenderJob *)self outputVideoComposition];
    v50 = outputVideoComposition2;
    if (outputVideoComposition2)
    {
      [outputVideoComposition2 frameDuration];
    }

    else
    {
      v414 = 0uLL;
      v415 = 0;
    }

    *v435 = v414;
    *&v435[16] = v415;
    [v316 setSourceVideoMinFrameDuration:v435];

    outputVideoComposition3 = [(NURenderJob *)self outputVideoComposition];
    v63 = outputVideoComposition3;
    if (outputVideoComposition3)
    {
      [outputVideoComposition3 frameDuration];
    }

    else
    {
      v412 = 0uLL;
      v413 = 0;
    }

    *v435 = v412;
    *&v435[16] = v413;
    [v316 setSourceVideoAverageFrameDuration:v435];

    outputVideoComposition4 = [(NURenderJob *)self outputVideoComposition];
    sourceTrackIDForFrameTiming = [outputVideoComposition4 sourceTrackIDForFrameTiming];

    if (sourceTrackIDForFrameTiming)
    {
      outputVideo5 = [(NURenderJob *)self outputVideo];
      v66 = [outputVideo5 trackWithTrackID:sourceTrackIDForFrameTiming];

      ConfigureAssistantTimingFromTrack(v316, v66);
    }

    v67 = objc_opt_new();
    v411 = 0u;
    v410 = 0u;
    v409 = 0u;
    v408 = 0u;
    outputVideoComposition5 = [(NURenderJob *)self outputVideoComposition];
    obj = [outputVideoComposition5 instructions];

    v331 = [obj countByEnumeratingWithState:&v408 objects:v438 count:16];
    if (v331)
    {
      v324 = *v409;
      do
      {
        v69 = 0;
        do
        {
          if (*v409 != v324)
          {
            v70 = v69;
            objc_enumerationMutation(obj);
            v69 = v70;
          }

          v338 = v69;
          v71 = *(*(&v408 + 1) + 8 * v69);
          v404 = 0u;
          v405 = 0u;
          v406 = 0u;
          v407 = 0u;
          requiredSourceTrackIDs = [v71 requiredSourceTrackIDs];
          v73 = [requiredSourceTrackIDs countByEnumeratingWithState:&v404 objects:v437 count:16];
          if (v73)
          {
            v74 = *v405;
            do
            {
              for (j = 0; j != v73; ++j)
              {
                if (*v405 != v74)
                {
                  objc_enumerationMutation(requiredSourceTrackIDs);
                }

                v76 = MEMORY[0x1E69C0708];
                intValue = [*(*(&v404 + 1) + 8 * j) intValue];
                asset = [v5 asset];
                v79 = [v76 trackWithTrackID:intValue forAsset:asset];

                if (([v67 containsObject:v79] & 1) == 0)
                {
                  [v67 addObject:v79];
                }
              }

              v73 = [requiredSourceTrackIDs countByEnumeratingWithState:&v404 objects:v437 count:16];
            }

            while (v73);
          }

          v69 = v338 + 1;
        }

        while (v338 + 1 != v331);
        v331 = [obj countByEnumeratingWithState:&v408 objects:v438 count:16];
      }

      while (v331);
    }

    v332 = [objc_alloc(MEMORY[0x1E6987EB8]) initWithVideoTracks:v67 videoSettings:0];
    outputVideoComposition6 = [(NURenderJob *)self outputVideoComposition];
    [v332 setVideoComposition:outputVideoComposition6];

    [v332 setAlwaysCopiesSampleData:0];
    if (([v5 canAddOutput:v332] & 1) == 0)
    {
      *render = [NUError unknownError:@"Cannot add video composition output to asset reader" object:v332];

      goto LABEL_123;
    }

    [v5 addOutput:v332];
    videoSettings2 = [v316 videoSettings];
    v339 = [videoSettings2 mutableCopy];

    [v339 addEntriesFromDictionary:outputSettings];
    v82 = [MEMORY[0x1E696AD98] numberWithInteger:v309];
    [v339 setObject:v82 forKeyedSubscript:*MEMORY[0x1E6987E08]];

    v83 = [MEMORY[0x1E696AD98] numberWithInteger:v308];
    [v339 setObject:v83 forKeyedSubscript:*MEMORY[0x1E6987D70]];

    [v339 removeObjectForKey:*MEMORY[0x1E6987DC8]];
    colorSpace = [videoExportRequest colorSpace];
    LOBYTE(v83) = colorSpace == 0;

    if (v83)
    {
      [v339 setObject:0 forKeyedSubscript:*MEMORY[0x1E6987D20]];
    }

    else
    {
      colorSpace2 = [videoExportRequest colorSpace];
      cvPixelBufferAttachments = [colorSpace2 cvPixelBufferAttachments];

      v87 = objc_opt_new();
      v88 = [cvPixelBufferAttachments objectForKeyedSubscript:*MEMORY[0x1E6965D88]];
      [v87 setObject:v88 forKeyedSubscript:*MEMORY[0x1E6987D08]];

      v89 = [cvPixelBufferAttachments objectForKeyedSubscript:*MEMORY[0x1E6965F30]];
      [v87 setObject:v89 forKeyedSubscript:*MEMORY[0x1E6987DE8]];

      v90 = [cvPixelBufferAttachments objectForKeyedSubscript:*MEMORY[0x1E6965F98]];
      [v87 setObject:v90 forKeyedSubscript:*MEMORY[0x1E6987E10]];

      [v339 setObject:v87 forKeyedSubscript:*MEMORY[0x1E6987D20]];
    }

    v113 = +[NUGlobalSettings enforceMinimumBitRateForExportedVideos];
    v114 = MEMORY[0x1E6987D30];
    if (v113 || +[NUGlobalSettings enforceMinimumBitRateForCinematicVideos](NUGlobalSettings, "enforceMinimumBitRateForCinematicVideos") && (-[NURenderJob composition](self, "composition"), v115 = objc_claimAutoreleasedReturnValue(), [v115 objectForKeyedSubscript:@"portraitVideo"], v116 = objc_claimAutoreleasedReturnValue(), v117 = v116 == 0, v116, v115, !v117))
    {
      v118 = *v114;
      v119 = [v339 objectForKeyedSubscript:*v114];
      v120 = *MEMORY[0x1E6987C60];
      v121 = [v119 objectForKeyedSubscript:*MEMORY[0x1E6987C60]];

      if (v121)
      {
        [v121 floatValue];
        if (v122 >= v16)
        {
          v16 = v122;
        }

        v123 = [v339 objectForKeyedSubscript:v118];
        v124 = [v123 mutableCopy];

        v125 = [MEMORY[0x1E696AD98] numberWithInteger:v16];
        [v124 setObject:v125 forKeyedSubscript:v120];

        [v339 setObject:v124 forKeyedSubscript:v118];
      }
    }

    v126 = [NUVideoUtilities videoTrackContainsDolbyVisionMetadata:firstObject];
    v127 = MEMORY[0x1E6983CB0];
    if (!v126)
    {
      v127 = MEMORY[0x1E6983CB8];
    }

    v299 = *v127;
    v128 = *v114;
    v129 = [v339 objectForKeyedSubscript:*v114];
    v325 = [v129 mutableCopy];

    [v325 setObject:v299 forKeyedSubscript:*MEMORY[0x1E6983670]];
    [v339 setObject:v325 forKeyedSubscript:v128];
    v403 = 0;
    obja = [outputGeometry transformWithSourceSpace:@"/Image" destinationSpace:@"/masterSpace" error:&v403];
    v130 = v403;
    if (!obja)
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_144_3965);
      }

      v131 = _NULogger;
      if (os_log_type_enabled(v131, OS_LOG_TYPE_DEBUG))
      {
        *v435 = 138412290;
        *&v435[4] = v130;
        _os_log_debug_impl(&dword_1C0184000, v131, OS_LOG_TYPE_DEBUG, "can't get mapping from input to output space, %@", v435, 0xCu);
      }
    }

    fullSizeGeometry4 = [(NURenderJob *)self fullSizeGeometry];
    if (fullSizeGeometry4)
    {
      fullSizeGeometry5 = [(NURenderJob *)self fullSizeGeometry];
      renderScale3 = [fullSizeGeometry5 renderScale];
      v136 = v135;
    }

    else
    {
      renderScale3 = [(NURenderJob *)self renderScale];
      v136 = v137;
    }

    renderScale4 = [outputGeometry renderScale];
    v140 = NUScaleDivide(renderScale4, v139, renderScale3, v136);
    if (videoProperties)
    {
      v142 = v140;
      v143 = v141;
      [videoProperties cleanAperture];
      v3082 = [NUVideoUtilities cleanApertureVideoSettingsFor:v435 scale:v142 videoSize:v143, v309, v308];
      [v339 setObject:v3082 forKeyedSubscript:*MEMORY[0x1E6987C88]];
    }

    v145 = objc_alloc(MEMORY[0x1E6987EE0]);
    v146 = [v145 initWithMediaType:*MEMORY[0x1E6987608] outputSettings:v339];
    [v146 setMediaTimeScale:newTimescale];
    videoExportRequest2 = [(NUVideoExportJob *)self videoExportRequest];
    applyOrientationAsMetadata = [videoExportRequest2 applyOrientationAsMetadata];

    if (applyOrientationAsMetadata)
    {
      orientation = [outputGeometry orientation];
    }

    else
    {
      orientation = 1;
    }

    v150 = [outputGeometry size];
    [NUVideoUtilities preferredTransformFromOrientation:orientation size:v150, v151];
    *v435 = v400;
    *&v435[16] = v401;
    v436 = v402;
    [v146 setTransform:v435];
    outputVideoComposition7 = [(NURenderJob *)self outputVideoComposition];
    [outputVideoComposition7 renderSize];
    [v146 setNaturalSize:?];

    if (sourceTrackIDForFrameTiming)
    {
      trackMetadata2 = [videoProperties trackMetadata];
      v154 = [MEMORY[0x1E696AD98] numberWithInt:sourceTrackIDForFrameTiming];
      v155 = [trackMetadata2 objectForKeyedSubscript:v154];
      [v146 setMetadata:v155];
    }

    v156 = [v319 canAddInput:v146];
    if (v156)
    {
      [v319 addInput:v146];
      v157 = [MEMORY[0x1E696AD98] numberWithInt:sourceTrackIDForFrameTiming];
      [v353 setObject:v146 forKeyedSubscript:v157];
    }

    else
    {
      *render = [NUError unknownError:@"Cannot add video track input to asset writer" object:v146];
    }

    if ((v156 & 1) == 0)
    {
      goto LABEL_124;
    }
  }

  outputAudioMix = [(NURenderJob *)self outputAudioMix];
  if (!outputAudioMix || (v159 = [array3 count] == 0, outputAudioMix, v159))
  {
    v387 = 0u;
    v388 = 0u;
    v385 = 0u;
    v386 = 0u;
    v180 = array3;
    v181 = [v180 countByEnumeratingWithState:&v385 objects:v431 count:16];
    if (!v181)
    {
      goto LABEL_220;
    }

    v182 = *v386;
    v183 = *MEMORY[0x1E69875A0];
LABEL_192:
    v184 = 0;
    while (1)
    {
      if (*v386 != v182)
      {
        objc_enumerationMutation(v180);
      }

      v185 = *(*(&v385 + 1) + 8 * v184);
      v186 = [objc_alloc(MEMORY[0x1E6987EA8]) initWithTrack:v185 outputSettings:0];
      [v186 setAlwaysCopiesSampleData:0];
      if (([v5 canAddOutput:v186] & 1) == 0)
      {
        break;
      }

      [v5 addOutput:v186];
      v187 = [objc_alloc(MEMORY[0x1E6987EE0]) initWithMediaType:v183 outputSettings:0 sourceFormatHint:SourceFormatHintForTrack(v185)];
      [v187 setMarksOutputTrackAsEnabled:{objc_msgSend(v185, "isEnabled")}];
      if (([v319 canAddInput:v187] & 1) == 0)
      {
        *render = [NUError unknownError:@"Cannot add audio track output to asset writer" object:v5];

        goto LABEL_202;
      }

      [v319 addInput:v187];
      v188 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v185, "trackID")}];
      [v353 setObject:v187 forKeyedSubscript:v188];

      if (v181 == ++v184)
      {
        v181 = [v180 countByEnumeratingWithState:&v385 objects:v431 count:16];
        if (!v181)
        {
          goto LABEL_220;
        }

        goto LABEL_192;
      }
    }

    *render = [NUError unknownError:@"Cannot add audio track output to asset reader" object:v5];
LABEL_202:

    goto LABEL_124;
  }

  outputVideo6 = [(NURenderJob *)self outputVideo];
  newTimescaleb = [NUVideoUtilities cinematicAudioTrackInAsset:outputVideo6];

  if (!newTimescaleb)
  {
    firstObject3 = [array3 firstObject];
    formatDescriptions3 = [firstObject3 formatDescriptions];
    firstObject4 = [formatDescriptions3 firstObject];

    v191 = [objc_alloc(MEMORY[0x1E6987E80]) initWithAudioTracks:array3 audioSettings:0];
    outputAudioMix2 = [(NURenderJob *)self outputAudioMix];
    [v191 setAudioMix:outputAudioMix2];

    [v191 setAlwaysCopiesSampleData:0];
    if ([v5 canAddOutput:v191])
    {
      [v5 addOutput:v191];
      [v316 setSourceAudioFormat:firstObject4];
      audioSettings = [v316 audioSettings];
      if (audioSettings || ([NUVideoUtilities assetWriterAudioSettingsForAudioTrackFormatDescription:firstObject4], (audioSettings = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v194 = *MEMORY[0x1E69582B0];
        v195 = [outputSettings objectForKeyedSubscript:*MEMORY[0x1E69582B0]];

        v196 = *MEMORY[0x1E6958348];
        v197 = [outputSettings objectForKeyedSubscript:*MEMORY[0x1E6958348]];

        if (v195 != 0 || v197 != 0)
        {
          v198 = v195 != 0;
          v199 = [audioSettings mutableCopy];
          if (v198)
          {
            v200 = [outputSettings objectForKeyedSubscript:v194];
            [v199 setObject:v200 forKeyedSubscript:v194];
          }

          if (v197)
          {
            v201 = [outputSettings objectForKeyedSubscript:v196];
            [v199 setObject:v201 forKeyedSubscript:v196];
          }

          v202 = v199;
        }

        else
        {
          v202 = audioSettings;
        }

        v203 = objc_alloc(MEMORY[0x1E6987EE0]);
        v204 = [v203 initWithMediaType:*MEMORY[0x1E69875A0] outputSettings:v202];
        v205 = [v319 canAddInput:v204];
        if (v205)
        {
          [v319 addInput:v204];
          v206 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(firstObject3, "trackID")}];
          [v353 setObject:v204 forKeyedSubscript:v206];
        }

        else
        {
          *render = [NUError unknownError:@"Cannot add audio track output to asset writer" object:v5];
        }

        if (v205)
        {
          v180 = 0;
          goto LABEL_220;
        }

LABEL_313:

        goto LABEL_124;
      }

      *render = [NUError unknownError:@"Cannot obtain audio settings for track" object:firstObject3];
    }

    else
    {
      *render = [NUError unknownError:@"Cannot add audio mix output to asset reader" object:v191];
    }

LABEL_312:

    goto LABEL_313;
  }

  if ([array3 count] >= 3)
  {
    v161 = NULogger();
    if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
    {
      v267 = [array3 count];
      *v435 = 134217984;
      *&v435[4] = v267;
      _os_log_error_impl(&dword_1C0184000, v161, OS_LOG_TYPE_ERROR, "Expected 2 audio tracks, got %lu", v435, 0xCu);
    }
  }

  firstObject3 = [MEMORY[0x1E69C0708] associatedTracksOfTypeForTrack:newTimescaleb trackAssociationType:*MEMORY[0x1E6987B08]];
  v326FirstObject = [firstObject3 firstObject];
  if (!v326FirstObject)
  {
    *render = [NUError missingError:@"Expected audio fallback track for track" object:newTimescaleb];
    goto LABEL_312;
  }

  v391 = 0u;
  v392 = 0u;
  v389 = 0u;
  v390 = 0u;
  v305 = array3;
  v162 = [v305 countByEnumeratingWithState:&v389 objects:v433 count:16];
  if (!v162)
  {
    goto LABEL_189;
  }

  v334 = *v390;
  v300 = *MEMORY[0x1E69875A0];
  while (2)
  {
    v163 = 0;
    while (2)
    {
      if (*v390 != v334)
      {
        objc_enumerationMutation(v305);
      }

      v164 = *(*(&v389 + 1) + 8 * v163);
      if (v164 == newTimescaleb || v164 == v326FirstObject)
      {
        newTimescaleb = [NUVideoUtilities assetReaderAudioSettingsForTrackType:v164 == newTimescaleb];
        v167 = objc_alloc(MEMORY[0x1E6987E80]);
        v432 = newTimescaleb;
        v168 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v432 count:1];
        v169 = [v167 initWithAudioTracks:v168 audioSettings:newTimescaleb];

        outputAudioMix3 = [(NURenderJob *)self outputAudioMix];
        [v169 setAudioMix:outputAudioMix3];

        [v169 setAlwaysCopiesSampleData:0];
        if ([v5 canAddOutput:v169])
        {
          [v5 addOutput:v169];
          formatDescriptions4 = [v164 formatDescriptions];
          v172 = [formatDescriptions4 count] == 0;

          if (v172)
          {
            v259 = [NUError errorWithCode:3 reason:@"Missing format description" object:v164];
          }

          else
          {
            formatDescriptions5 = [v164 formatDescriptions];
            firstObject5 = [formatDescriptions5 firstObject];

            StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(firstObject5);
            if (StreamBasicDescription)
            {
              v176 = [NUVideoUtilities assetWriterAudioSettingsForTrackWithSampleRate:v164 == newTimescaleb isAmbisonic:StreamBasicDescription->mSampleRate];

              v177 = [objc_alloc(MEMORY[0x1E6987EE0]) initWithMediaType:v300 outputSettings:v176];
              [v177 setMarksOutputTrackAsEnabled:v164 != newTimescaleb];
              v178 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v164, "trackID")}];
              [v353 setObject:v177 forKeyedSubscript:v178];

              if ([v319 canAddInput:v177])
              {
                [v319 addInput:v177];

                goto LABEL_187;
              }

              *render = [NUError unknownError:@"Cannot add audio track output to asset writer" object:v5];

              newTimescaleb = v176;
              goto LABEL_311;
            }

            v259 = [NUError errorWithCode:2 reason:@"ASBD: Invalid format description" object:firstObject5];
          }
        }

        else
        {
          v259 = [NUError unknownError:@"Cannot add audio mix output to asset reader" object:v169];
        }

        *render = v259;
LABEL_311:

        goto LABEL_312;
      }

      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_144_3965);
      }

      v176 = _NULogger;
      if (os_log_type_enabled(v176, OS_LOG_TYPE_ERROR))
      {
        trackID = [v164 trackID];
        *v435 = 67109120;
        *&v435[4] = trackID;
        _os_log_error_impl(&dword_1C0184000, v176, OS_LOG_TYPE_ERROR, "Unexpected audio track %d, skipping", v435, 8u);
      }

LABEL_187:

      if (v162 != ++v163)
      {
        continue;
      }

      break;
    }

    v162 = [v305 countByEnumeratingWithState:&v389 objects:v433 count:16];
    if (v162)
    {
      continue;
    }

    break;
  }

LABEL_189:

  v180 = newTimescaleb;
LABEL_220:

  if (([videoExportRequest includeCinematicVideoTracks] & 1) != 0 || objc_msgSend(videoExportRequest, "includeSemanticStyleTracks"))
  {
    v383 = 0u;
    v384 = 0u;
    v381 = 0u;
    v382 = 0u;
    newTimescalec = array2;
    v207 = [newTimescalec countByEnumeratingWithState:&v381 objects:v430 count:16];
    if (!v207)
    {
      goto LABEL_234;
    }

    v208 = *v382;
    while (1)
    {
      for (k = 0; k != v207; ++k)
      {
        if (*v382 != v208)
        {
          objc_enumerationMutation(newTimescalec);
        }

        v210 = *(*(&v381 + 1) + 8 * k);
        v211 = [objc_alloc(MEMORY[0x1E6987EA8]) initWithTrack:v210 outputSettings:0];
        [v211 setAlwaysCopiesSampleData:0];
        if (([v5 canAddOutput:v211] & 1) == 0)
        {
          *render = [NUError unknownError:@"Cannot add video track output to asset reader" object:v210];

          goto LABEL_302;
        }

        [v5 addOutput:v211];

        v212 = objc_alloc(MEMORY[0x1E6987EE0]);
        mediaType5 = [v210 mediaType];
        v214 = [v212 initWithMediaType:mediaType5 outputSettings:0];

        if (v210)
        {
          [v210 preferredTransform];
        }

        else
        {
          v379 = 0u;
          v380 = 0u;
          v378 = 0u;
        }

        *v435 = v378;
        *&v435[16] = v379;
        v436 = v380;
        [v214 setTransform:v435];
        [v210 naturalSize];
        [v214 setNaturalSize:?];
        [v214 setMediaTimeScale:{objc_msgSend(v210, "naturalTimeScale")}];
        if (([v319 canAddInput:v214] & 1) == 0)
        {
          *render = [NUError unknownError:@"Cannot add video track input to asset writer" object:v214];

LABEL_302:
LABEL_124:
          v3083 = 0;
          goto LABEL_125;
        }

        [v319 addInput:v214];
        v215 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v210, "trackID")}];
        [v353 setObject:v214 forKeyedSubscript:v215];
      }

      v207 = [newTimescalec countByEnumeratingWithState:&v381 objects:v430 count:16];
      if (!v207)
      {
LABEL_234:

        break;
      }
    }
  }

  v376 = 0u;
  v377 = 0u;
  v374 = 0u;
  v375 = 0u;
  newTimescaled = array4;
  v216 = [newTimescaled countByEnumeratingWithState:&v374 objects:v429 count:16];
  if (!v216)
  {
    goto LABEL_244;
  }

  v217 = *v375;
  while (2)
  {
    v218 = 0;
    while (2)
    {
      if (*v375 != v217)
      {
        objc_enumerationMutation(newTimescaled);
      }

      v219 = *(*(&v374 + 1) + 8 * v218);
      v220 = [objc_alloc(MEMORY[0x1E6987EA8]) initWithTrack:v219 outputSettings:0];
      [v220 setAlwaysCopiesSampleData:0];
      if (([v5 canAddOutput:v220] & 1) == 0)
      {
        *render = [NUError unknownError:@"Cannot add track output to asset reader" object:v5];
LABEL_305:

        goto LABEL_124;
      }

      [v5 addOutput:v220];
      v221 = SourceFormatHintForTrack(v219);
      v222 = objc_alloc(MEMORY[0x1E6987EE0]);
      mediaType6 = [v219 mediaType];
      v224 = [v222 initWithMediaType:mediaType6 outputSettings:0 sourceFormatHint:v221];

      if (([v319 canAddInput:v224] & 1) == 0)
      {
        *render = [NUError unknownError:@"Cannot add track input to asset writer" object:v5];

        goto LABEL_305;
      }

      [v319 addInput:v224];
      v225 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v219, "trackID")}];
      [v353 setObject:v224 forKeyedSubscript:v225];

      if (v216 != ++v218)
      {
        continue;
      }

      break;
    }

    v216 = [newTimescaled countByEnumeratingWithState:&v374 objects:v429 count:16];
    if (v216)
    {
      continue;
    }

    break;
  }

LABEL_244:

  v372 = 0u;
  v373 = 0u;
  v370 = 0u;
  v371 = 0u;
  outputVideo7 = [(NURenderJob *)self outputVideo];
  tracks2 = [outputVideo7 tracks];

  v296 = [tracks2 countByEnumeratingWithState:&v370 objects:v428 count:16];
  if (v296)
  {
    v227 = *v371;
    v294 = *v371;
    do
    {
      v228 = 0;
      do
      {
        if (*v371 != v227)
        {
          v229 = v228;
          objc_enumerationMutation(tracks2);
          v228 = v229;
        }

        v295 = v228;
        v230 = *(*(&v370 + 1) + 8 * v228);
        v366 = 0u;
        v367 = 0u;
        v368 = 0u;
        v369 = 0u;
        availableTrackAssociationTypes = [v230 availableTrackAssociationTypes];
        v306 = [availableTrackAssociationTypes countByEnumeratingWithState:&v366 objects:v427 count:16];
        if (v306)
        {
          v301 = *v367;
          do
          {
            for (m = 0; m != v306; m = m + 1)
            {
              if (*v367 != v301)
              {
                objc_enumerationMutation(availableTrackAssociationTypes);
              }

              v231 = *(*(&v366 + 1) + 8 * m);
              v362 = 0u;
              v363 = 0u;
              v364 = 0u;
              v365 = 0u;
              *newTimescalee = v231;
              v342 = [MEMORY[0x1E69C0708] associatedTracksOfTypeForTrack:v230 trackAssociationType:?];
              v232 = [v342 countByEnumeratingWithState:&v362 objects:v426 count:16];
              if (v232)
              {
                v233 = *v363;
                do
                {
                  for (n = 0; n != v232; ++n)
                  {
                    if (*v363 != v233)
                    {
                      objc_enumerationMutation(v342);
                    }

                    v235 = *(*(&v362 + 1) + 8 * n);
                    v236 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v230, "trackID")}];
                    v237 = [v353 objectForKeyedSubscript:v236];

                    v238 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v235, "trackID")}];
                    v239 = [v353 objectForKeyedSubscript:v238];

                    if (v237 && v239)
                    {
                      [v237 addTrackAssociationWithTrackOfInput:v239 type:*newTimescalee];
                    }

                    else
                    {
                      if (_NULogOnceToken != -1)
                      {
                        dispatch_once(&_NULogOnceToken, &__block_literal_global_144_3965);
                      }

                      v240 = _NULogger;
                      if (os_log_type_enabled(v240, OS_LOG_TYPE_INFO))
                      {
                        trackID2 = [v230 trackID];
                        trackID3 = [v235 trackID];
                        *v435 = 67109634;
                        *&v435[4] = trackID2;
                        *&v435[8] = 1024;
                        *&v435[10] = trackID3;
                        *&v435[14] = 2112;
                        *&v435[16] = *newTimescalee;
                        _os_log_impl(&dword_1C0184000, v240, OS_LOG_TYPE_INFO, "Missing inputs for track association, skipping (%d <- %d: %@)", v435, 0x18u);
                      }
                    }
                  }

                  v232 = [v342 countByEnumeratingWithState:&v362 objects:v426 count:16];
                }

                while (v232);
              }
            }

            v306 = [availableTrackAssociationTypes countByEnumeratingWithState:&v366 objects:v427 count:16];
          }

          while (v306);
        }

        v228 = v295 + 1;
        v227 = v294;
      }

      while (v295 + 1 != v296);
      v296 = [tracks2 countByEnumeratingWithState:&v370 objects:v428 count:16];
      v227 = v294;
    }

    while (v296);
  }

  v360 = 0u;
  v361 = 0u;
  v358 = 0u;
  v359 = 0u;
  trackGroups = [videoProperties trackGroups];
  *newTimescalef = [trackGroups countByEnumeratingWithState:&v358 objects:v425 count:16];
  if (*newTimescalef)
  {
    v343 = *v359;
    while (2)
    {
      v243 = 0;
      do
      {
        if (*v359 != v343)
        {
          objc_enumerationMutation(trackGroups);
        }

        v244 = *(*(&v358 + 1) + 8 * v243);
        v245 = objc_alloc(MEMORY[0x1E695DF70]);
        trackIDs = [v244 trackIDs];
        v247 = [v245 initWithCapacity:{objc_msgSend(trackIDs, "count")}];

        v356 = 0u;
        v357 = 0u;
        v354 = 0u;
        v355 = 0u;
        trackIDs2 = [v244 trackIDs];
        v249 = 0;
        v250 = [trackIDs2 countByEnumeratingWithState:&v354 objects:v424 count:16];
        if (v250)
        {
          v251 = *v355;
          do
          {
            for (ii = 0; ii != v250; ++ii)
            {
              if (*v355 != v251)
              {
                objc_enumerationMutation(trackIDs2);
              }

              v253 = [v353 objectForKeyedSubscript:*(*(&v354 + 1) + 8 * ii)];
              if (v253)
              {
                [v247 addObject:v253];
                if (!v249)
                {
                  if ([v253 marksOutputTrackAsEnabled])
                  {
                    v249 = v253;
                  }

                  else
                  {
                    v249 = 0;
                  }
                }
              }
            }

            v250 = [trackIDs2 countByEnumeratingWithState:&v354 objects:v424 count:16];
          }

          while (v250);
        }

        v254 = [v247 count];
        trackIDs3 = [v244 trackIDs];
        v256 = v254 == [trackIDs3 count];

        if (v256)
        {
          v257 = [objc_alloc(MEMORY[0x1E6987EF0]) initWithInputs:v247 defaultInput:v249];
          if (([v319 canAddInputGroup:v257] & 1) == 0)
          {
            *render = [NUError unknownError:@"Cannot add input group to asset writer" object:v257];

            goto LABEL_124;
          }

          [v319 addInputGroup:v257];
        }

        else
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_144_3965);
          }

          v257 = _NULogger;
          if (os_log_type_enabled(v257, OS_LOG_TYPE_DEFAULT))
          {
            trackIDs4 = [v244 trackIDs];
            *v435 = 138543362;
            *&v435[4] = trackIDs4;
            _os_log_impl(&dword_1C0184000, v257, OS_LOG_TYPE_DEFAULT, "Missing track group inputs for track group %{public}@, ignored.", v435, 0xCu);
          }
        }

        ++v243;
      }

      while (v243 != *newTimescalef);
      *newTimescalef = [trackGroups countByEnumeratingWithState:&v358 objects:v425 count:16];
      if (*newTimescalef)
      {
        continue;
      }

      break;
    }
  }

  *v435 = v421;
  v3083 = [(NUVideoExportJob *)self writeVideoFrom:v5 toWriter:v319 stillImageTime:v435 createCustomMetadata:flags & 1 geometryTransform:obja inputSize:render outputSize:v303 error:v302, v309, v308];
LABEL_125:

LABEL_126:
LABEL_127:

  v6 = v312;
LABEL_128:

  return v3083;
}

- (id)renderer:(id *)renderer
{
  priority = [(NURenderJob *)self priority];
  isLow = [priority isLow];

  device = [(NURenderJob *)self device];
  v8 = device;
  if (isLow)
  {
    [device lowPriorityRendererWithoutIntermediateCaching:renderer];
  }

  else
  {
    [device rendererWithoutIntermediateCaching:renderer];
  }
  v9 = ;

  return v9;
}

- (id)generateVideoComposition:(id *)composition
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = NUVideoExportJob;
  v4 = [(NURenderJob *)&v24 generateVideoComposition:composition];
  if (v4)
  {
    v5 = [NUVideoUtilities deepMutableCopyVideoComposition:v4];
    videoProperties = [(NUVideoExportJob *)self videoProperties];
    [videoProperties isHDR];

    [v5 setCustomVideoCompositorClass:objc_opt_class()];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    instructions = [v5 instructions];
    v8 = [instructions countByEnumeratingWithState:&v20 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(instructions);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          composition = [(NURenderJob *)self composition];
          [v12 setAdjustmentComposition:composition];

          request = [(NURenderJob *)self request];
          pipelineFilters = [request pipelineFilters];
          [v12 setPipelineFilters:pipelineFilters];

          videoExportRequest = [(NUVideoExportJob *)self videoExportRequest];
          colorSpace = [videoExportRequest colorSpace];
          [v12 setColorSpace:colorSpace];

          [v12 setRenderJob:self];
        }

        v9 = [instructions countByEnumeratingWithState:&v20 objects:v25 count:16];
      }

      while (v9);
    }

    v18 = [v5 copy];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)requiresVideoComposition
{
  v36 = *MEMORY[0x1E69E9840];
  videoExportRequest = [(NUVideoExportJob *)self videoExportRequest];
  prepareNode = [(NURenderJob *)self prepareNode];
  v32 = 0;
  v5 = [prepareNode videoProperties:&v32];
  v6 = v32;
  [(NUVideoExportJob *)self setVideoProperties:v5];

  videoProperties = [(NUVideoExportJob *)self videoProperties];

  if (!videoProperties)
  {
    if (_NULogOnceToken != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_144_3965);
    }

    v8 = _NULogger;
    if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v35 = v6;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Failed to prepare video properties: %@", buf, 0xCu);
    }
  }

  outputVideo = [(NURenderJob *)self outputVideo];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:outputVideo];
  v11 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
LABEL_8:
    v14 = 0;
    while (1)
    {
      if (*v29 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v15 = *(*(&v28 + 1) + 8 * v14);
      if ([v15 isEnabled])
      {
        segments = [v15 segments];
        v17 = [segments count];

        if (v17 > 1)
        {
          goto LABEL_20;
        }
      }

      if (v12 == ++v14)
      {
        v12 = [v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v12)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  v18 = MEMORY[0x1E69C08F0];
  destinationURL = [videoExportRequest destinationURL];
  pathExtension = [destinationURL pathExtension];
  v10 = [v18 typeWithFilenameExtension:pathExtension];

  if (![v10 conformsToType:*MEMORY[0x1E6982F80]])
  {
LABEL_20:
    requiresVideoComposition = 1;
    goto LABEL_21;
  }

  if (([videoExportRequest applyOrientationAsMetadata] & 1) != 0 || (-[NURenderJob outputGeometry](self, "outputGeometry"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "orientation"), v21, -[NUVideoExportJob videoProperties](self, "videoProperties"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "orientation"), v23, requiresVideoComposition = 1, v22 == 1) && v24 == 1)
  {
    v27.receiver = self;
    v27.super_class = NUVideoExportJob;
    requiresVideoComposition = [(NURenderJob *)&v27 requiresVideoComposition];
  }

LABEL_21:

  return requiresVideoComposition;
}

- (id)prepareNodeWithPipelineState:(id)state error:(id *)error
{
  v16.receiver = self;
  v16.super_class = NUVideoExportJob;
  v6 = [(NURenderJob *)&v16 prepareNodeWithPipelineState:state error:?];
  if (v6)
  {
    videoExportRequest = [(NUVideoExportJob *)self videoExportRequest];
    applyOrientationAsMetadata = [videoExportRequest applyOrientationAsMetadata];

    if (applyOrientationAsMetadata)
    {
      v9 = [v6 outputImageGeometry:error];
      v10 = v9;
      if (!v9)
      {
        goto LABEL_11;
      }

      orientation = [v9 orientation];
      v12 = 6;
      if (orientation != 8)
      {
        v12 = orientation;
      }

      if (orientation == 6)
      {
        v13 = 8;
      }

      else
      {
        v13 = v12;
      }

      v14 = [(NUOrientationNode *)[NUResetOrientationNode alloc] initWithOrientation:v13 input:v6];

      v6 = v14;
    }
  }

  v6 = v6;
  v10 = v6;
LABEL_11:

  return v10;
}

- (id)result
{
  v3 = objc_alloc_init(_NUVideoExportResult);
  videoExportRequest = [(NUVideoExportJob *)self videoExportRequest];
  destinationURL = [videoExportRequest destinationURL];
  [(_NUExportResult *)v3 setDestinationURL:destinationURL];

  outputGeometry = [(NURenderJob *)self outputGeometry];
  [(_NUExportResult *)v3 setGeometry:outputGeometry];

  digest = [(NUVideoExportJob *)self digest];
  stringValue = [digest stringValue];
  [(_NUVideoExportResult *)v3 setDigest:stringValue];

  return v3;
}

- (id)scalePolicy
{
  videoExportRequest = [(NUVideoExportJob *)self videoExportRequest];
  scalePolicy = [videoExportRequest scalePolicy];

  return scalePolicy;
}

- (BOOL)wantsRenderNodeCached
{
  outputVideoComposition = [(NURenderJob *)self outputVideoComposition];
  v3 = outputVideoComposition;
  if (outputVideoComposition)
  {
    sourceVideoTrackWindowsForTrackIDs = [outputVideoComposition sourceVideoTrackWindowsForTrackIDs];
    v5 = [sourceVideoTrackWindowsForTrackIDs count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NUVideoExportJob)initWithExportRequest:(id)request
{
  v35 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_4036);
  }

  v5 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v6 = MEMORY[0x1E696AEC0];
    v7 = v5;
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = NSStringFromSelector(a2);
    v11 = [v6 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v9, v10];
    *buf = 138543362;
    v32 = v11;
    _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v12 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v12 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_4036);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_4036);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v13 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v14 = MEMORY[0x1E696AF00];
      v15 = v13;
      callStackSymbols = [v14 callStackSymbols];
      v17 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v17;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v18 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = MEMORY[0x1E696AF00];
    v21 = specific;
    v22 = v18;
    callStackSymbols2 = [v20 callStackSymbols];
    v24 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v32 = specific;
    v33 = 2114;
    v34 = v24;
    _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v25 = objc_opt_class();
  v26 = NSStringFromClass(v25);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUVideoExportJob initWithExportRequest:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoExportJob.m", 90, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

- (NUVideoExportJob)initWithVideoExportRequest:(id)request
{
  requestCopy = request;
  v9.receiver = self;
  v9.super_class = NUVideoExportJob;
  v5 = [(NUExportJob *)&v9 initWithExportRequest:requestCopy];
  if (v5)
  {
    composition = [requestCopy composition];
    [(NURenderJob *)v5 setComposition:composition];

    if ([requestCopy computeDigest])
    {
      v7 = objc_alloc_init(NUDigest);
      [(NUVideoExportJob *)v5 setDigest:v7];
    }
  }

  return v5;
}

@end