@interface NUVideoExportJob
- (BOOL)render:(id *)a3;
- (BOOL)renderVideoFrames:(id)a3 videoMetadataSamples:(id)a4 videoSampleSlices:(id)a5 intoPixelBuffer:(__CVBuffer *)a6 time:(id *)a7 colorSpace:(id)a8 playbackDirection:(int64_t)a9 error:(id *)a10;
- (BOOL)requiresVideoComposition;
- (BOOL)wantsRenderNodeCached;
- (BOOL)writeVideoFrom:(id)a3 toWriter:(id)a4 stillImageTime:(id *)a5 createCustomMetadata:(BOOL)a6 geometryTransform:(id)a7 inputSize:(CGSize)a8 outputSize:(CGSize)a9 error:(id *)a10;
- (NUVideoExportJob)initWithExportRequest:(id)a3;
- (NUVideoExportJob)initWithVideoExportRequest:(id)a3;
- (id)generateVideoComposition:(id *)a3;
- (id)prepareNodeWithPipelineState:(id)a3 error:(id *)a4;
- (id)renderNodeWithPipelineState:(id)a3 error:(id *)a4;
- (id)renderer:(id *)a3;
- (id)result;
- (id)scalePolicy;
- (void)updateDigestWithRenderedFrame:(__CVBuffer *)a3;
@end

@implementation NUVideoExportJob

- (void)updateDigestWithRenderedFrame:(__CVBuffer *)a3
{
  v5 = [(NUVideoExportJob *)self digest];

  if (v5)
  {
    WidthOfPlane = CVPixelBufferGetWidthOfPlane(a3, 0);
    HeightOfPlane = CVPixelBufferGetHeightOfPlane(a3, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
    v15 = CVPixelBufferGetWidthOfPlane(a3, 1uLL);
    v9 = CVPixelBufferGetHeightOfPlane(a3, 1uLL);
    v10 = CVPixelBufferGetBytesPerRowOfPlane(a3, 1uLL);
    CVPixelBufferLockBaseAddress(a3, 0);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
    for (i = CVPixelBufferGetBaseAddressOfPlane(a3, 1uLL); HeightOfPlane; --HeightOfPlane)
    {
      v13 = [(NUVideoExportJob *)self digest];
      [v13 addBytes:BaseAddressOfPlane length:WidthOfPlane];

      BaseAddressOfPlane += BytesPerRowOfPlane;
    }

    for (; v9; --v9)
    {
      v14 = [(NUVideoExportJob *)self digest];
      [v14 addBytes:i length:2 * v15];

      i += v10;
    }

    CVPixelBufferUnlockBaseAddress(a3, 0);
  }
}

- (BOOL)renderVideoFrames:(id)a3 videoMetadataSamples:(id)a4 videoSampleSlices:(id)a5 intoPixelBuffer:(__CVBuffer *)a6 time:(id *)a7 colorSpace:(id)a8 playbackDirection:(int64_t)a9 error:(id *)a10
{
  v16.receiver = self;
  v16.super_class = NUVideoExportJob;
  v15 = *a7;
  v12 = [(NURenderJob *)&v16 renderVideoFrames:a3 videoMetadataSamples:a4 videoSampleSlices:a5 intoPixelBuffer:a6 time:&v15 colorSpace:a8 playbackDirection:a9 error:a10];
  if (v12)
  {
    v13 = [(NUVideoExportJob *)self digest];

    if (v13)
    {
      [(NUVideoExportJob *)self updateDigestWithRenderedFrame:a6];
    }
  }

  return v12;
}

- (id)renderNodeWithPipelineState:(id)a3 error:(id *)a4
{
  v9.receiver = self;
  v9.super_class = NUVideoExportJob;
  v5 = [(NURenderJob *)&v9 renderNodeWithPipelineState:a3 error:a4];
  if ([(NUVideoExportJob *)self wantsRenderNodeCached])
  {
    v6 = [(NURenderJob *)self request];
    v7 = [v6 renderContext];
    [v7 setLastRenderNode:v5];
  }

  return v5;
}

- (BOOL)writeVideoFrom:(id)a3 toWriter:(id)a4 stillImageTime:(id *)a5 createCustomMetadata:(BOOL)a6 geometryTransform:(id)a7 inputSize:(CGSize)a8 outputSize:(CGSize)a9 error:(id *)a10
{
  height = a9.height;
  width = a9.width;
  v13 = a8.height;
  v14 = a8.width;
  v15 = a6;
  v20 = a7;
  v21 = a4;
  v22 = a3;
  v23 = [(NUVideoExportJob *)self videoExportRequest];
  v24 = [v23 progress];
  v28 = *a5;
  LOBYTE(a10) = [NUVideoUtilities readFromReader:v22 andWriteToWriter:v21 stillImageTime:&v28 createCustomMetadata:v15 geometryTransform:v20 inputSize:v24 outputSize:v14 progress:v13 error:width, height, a10];

  v25 = [(NURenderJob *)self request];
  v26 = [v25 renderContext];
  [v26 setLastRenderNode:0];

  return a10;
}

- (BOOL)render:(id *)a3
{
  v440 = *MEMORY[0x1E69E9840];
  if (!a3)
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
        v271 = [v269 callStackSymbols];
        v272 = [v271 componentsJoinedByString:@"\n"];
        *v435 = 138543618;
        *&v435[4] = v268;
        *&v435[12] = 2114;
        *&v435[14] = v272;
        _os_log_error_impl(&dword_1C0184000, v263, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v435, 0x16u);
      }
    }

    else if (v264)
    {
      v265 = [MEMORY[0x1E696AF00] callStackSymbols];
      v266 = [v265 componentsJoinedByString:@"\n"];
      *v435 = 138543362;
      *&v435[4] = v266;
      _os_log_error_impl(&dword_1C0184000, v263, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v435, 0xCu);
    }

    _NUAssertFailHandler("[NUVideoExportJob render:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Render/NUVideoExportJob.m", 240, @"Invalid parameter not satisfying: %s", v273, v274, v275, v276, "error != nil");
  }

  v320 = [(NUVideoExportJob *)self videoExportRequest];
  v318 = [(NUVideoExportJob *)self videoProperties];
  v3 = objc_alloc(MEMORY[0x1E6987E78]);
  v4 = [(NURenderJob *)self outputVideo];
  v423 = 0;
  v5 = [v3 initWithAsset:v4 error:&v423];
  v6 = v423;

  if (!v5)
  {
    v317 = [(NURenderJob *)self outputVideo];
    [NUError errorWithCode:1 reason:@"Failed to initialize AVAssetReader" object:v317 underlyingError:v6];
    *a3 = v9 = 0;
    goto LABEL_128;
  }

  v317 = [v320 destinationURL];
  v7 = [v317 pathExtension];
  v314 = NUFileTypeFromExtension(v7);

  v422 = v6;
  v319 = [objc_alloc(MEMORY[0x1E6987ED8]) initWithURL:v317 fileType:v314 error:&v422];
  v312 = v422;

  if (!v319)
  {
    [NUError errorWithCode:1 reason:@"Failed to inialize AVAssetWriter for URL" object:v317 underlyingError:v312];
    *a3 = v9 = 0;
    goto LABEL_127;
  }

  v8 = [v320 metadata];
  [v319 setMetadata:v8];

  v344 = [MEMORY[0x1E695DF70] array];
  v336 = [MEMORY[0x1E695DF70] array];
  v330 = [MEMORY[0x1E695DF70] array];
  v328 = [MEMORY[0x1E695DF70] array];
  memset(&v421, 0, sizeof(v421));
  if (v318)
  {
    [v318 livePhotoKeyFrameTime];
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
  v10 = [(NURenderJob *)self outputVideo];
  v11 = [v10 tracks];

  v12 = [v11 countByEnumeratingWithState:&v417 objects:v439 count:16];
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
        objc_enumerationMutation(v11);
      }

      v18 = *(*(&v417 + 1) + 8 * v17);
      v19 = [v18 mediaType];
      v20 = [v19 isEqualToString:v14];

      if (v20)
      {
        [v344 addObject:v18];
        newTimescale = [v18 naturalTimeScale];
        [v18 estimatedDataRate];
        if (v16 < v21)
        {
          v16 = v21;
        }
      }

      else
      {
        v22 = [v18 mediaType];
        v23 = [v22 isEqualToString:v15];

        if (v23)
        {
          [v336 addObject:v18];
          goto LABEL_26;
        }

        v24 = [v18 mediaType];
        v25 = [v24 isEqualToString:v352];

        if (v25)
        {
          [v330 addObject:v18];
          goto LABEL_26;
        }

        v26 = [v18 mediaType];
        v27 = [v26 isEqualToString:v337];

        if (!v27)
        {
LABEL_25:
          [v328 addObject:v18];
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
          v29 = [(NURenderJob *)self renderNode];
          v30 = [v29 canPropagateOriginalLivePhotoMetadataTrack];

          if (v30)
          {
            goto LABEL_25;
          }
        }

        else if ([NUVideoUtilities metadataTrackContainsPortraitVideoData:v18])
        {
          if ([v320 includeCinematicVideoTracks])
          {
            goto LABEL_25;
          }
        }

        else if ([NUVideoUtilities metadataTrackContainsCinematicAudioData:v18])
        {
          if ([v320 includeCinematicVideoTracks])
          {
            goto LABEL_25;
          }
        }

        else if (!+[NUVideoUtilities metadataTrackContainsSemanticStyleData:](NUVideoUtilities, "metadataTrackContainsSemanticStyleData:", v18) || [v320 includeSemanticStyleTracks])
        {
          goto LABEL_25;
        }
      }

LABEL_26:
      ++v17;
    }

    while (v12 != v17);
    v31 = [v11 countByEnumeratingWithState:&v417 objects:v439 count:16];
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

  v313 = [v320 outputSettings];
  v32 = *MEMORY[0x1E6987CB0];
  v33 = [v313 objectForKeyedSubscript:*MEMORY[0x1E6987CB0]];
  v34 = v33 == 0;

  if (v34)
  {
    +[NUVideoUtilities defaultExportCodecForHDRVideo:](NUVideoUtilities, "defaultExportCodecForHDRVideo:", [v318 isHDR]);
  }

  else
  {
    [v313 objectForKeyedSubscript:v32];
  }
  v35 = ;
  v36 = NUTypeCodeFromString(v35);

  v311 = [(NURenderJob *)self outputGeometry];
  v37 = [v311 scaledSize];
  v308 = v38;
  v309 = v37;
  if ((v37 | v38))
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
        v287 = [v285 callStackSymbols];
        v288 = [v287 componentsJoinedByString:@"\n"];
        *v435 = 138543618;
        *&v435[4] = v284;
        *&v435[12] = 2114;
        *&v435[14] = v288;
        _os_log_error_impl(&dword_1C0184000, v280, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v435, 0x16u);
      }
    }

    else if (v281)
    {
      v282 = [MEMORY[0x1E696AF00] callStackSymbols];
      v283 = [v282 componentsJoinedByString:@"\n"];
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
    *a3 = v9 = 0;
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

  v307 = [v344 firstObject];
  ConfigureAssistantTimingFromTrack(v316, v307);
  v41 = [v307 formatDescriptions];
  [v316 setSourceVideoFormat:objc_msgSend(v41, "firstObject")];

  v42 = [(NURenderJob *)self fullSizeGeometry];
  v43 = [v42 size];
  v302 = v44;
  v303 = v43;

  if (v318)
  {
    v45 = [v318 originalSize];
    v302 = v46;
    v303 = v45;
  }

  v353 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v47 = [(NURenderJob *)self outputVideoComposition];
  v48 = v47 == 0;

  if (v48)
  {
    v51 = [v307 formatDescriptions];
    v52 = [v51 firstObject];

    MediaSubType = CMFormatDescriptionGetMediaSubType(v52);
    v54 = [v311 renderScale];
    v56 = v55;
    v57 = [(NURenderJob *)self fullSizeGeometry];
    if (v57)
    {
      v58 = [(NURenderJob *)self fullSizeGeometry];
      v59 = [v58 renderScale];
      v61 = v60;
    }

    else
    {
      v59 = [(NURenderJob *)self renderScale];
      v61 = v91;
    }

    if (NUScaleCompare(v54, v56, v59, v61) || ([v320 bypassOutputSettingsIfNoComposition] & 1) == 0 && ((objc_msgSend(v313, "objectForKeyedSubscript:", v32), (v97 = objc_claimAutoreleasedReturnValue()) != 0) ? (v98 = v36 == MediaSubType) : (v98 = 1), v98 ? (v99 = 0) : (v99 = 1), v97, v99))
    {
      newTimescalea = +[NUVideoUtilities defaultVideoSettingsForAVAssetReader];
      v92 = [v316 videoSettings];
      v93 = [v92 mutableCopy];

      [v93 addEntriesFromDictionary:v313];
      v94 = [MEMORY[0x1E696AD98] numberWithInteger:v309];
      [v93 setObject:v94 forKeyedSubscript:*MEMORY[0x1E6987E08]];

      v95 = [MEMORY[0x1E696AD98] numberWithInteger:v308];
      [v93 setObject:v95 forKeyedSubscript:*MEMORY[0x1E6987D70]];

      [v93 removeObjectForKey:*MEMORY[0x1E6987DC8]];
      if (v318)
      {
        [v318 cleanAperture];
        v96 = [NUVideoUtilities cleanApertureVideoSettingsFor:v435 scale:v54 videoSize:v56, v309, v308];
        [v93 setObject:v96 forKeyedSubscript:*MEMORY[0x1E6987C88]];
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
    v100 = [(NURenderJob *)self outputVideo];
    v101 = *MEMORY[0x1E6987608];
    v333 = [v100 tracksWithMediaType:*MEMORY[0x1E6987608]];

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
            *a3 = [NUError unknownError:@"Cannot add video track output to asset reader" object:v105];

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
          v108 = [v318 trackMetadata];
          v109 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v105, "trackID")}];
          v110 = [v108 objectForKeyedSubscript:v109];
          [v107 setMetadata:v110];

          if (([v319 canAddInput:v107] & 1) == 0)
          {
            *a3 = [NUError unknownError:@"Cannot add video track input to asset writer" object:v107];

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
    v49 = [(NURenderJob *)self outputVideoComposition];
    v50 = v49;
    if (v49)
    {
      [v49 frameDuration];
    }

    else
    {
      v414 = 0uLL;
      v415 = 0;
    }

    *v435 = v414;
    *&v435[16] = v415;
    [v316 setSourceVideoMinFrameDuration:v435];

    v62 = [(NURenderJob *)self outputVideoComposition];
    v63 = v62;
    if (v62)
    {
      [v62 frameDuration];
    }

    else
    {
      v412 = 0uLL;
      v413 = 0;
    }

    *v435 = v412;
    *&v435[16] = v413;
    [v316 setSourceVideoAverageFrameDuration:v435];

    v64 = [(NURenderJob *)self outputVideoComposition];
    v304 = [v64 sourceTrackIDForFrameTiming];

    if (v304)
    {
      v65 = [(NURenderJob *)self outputVideo];
      v66 = [v65 trackWithTrackID:v304];

      ConfigureAssistantTimingFromTrack(v316, v66);
    }

    v67 = objc_opt_new();
    v411 = 0u;
    v410 = 0u;
    v409 = 0u;
    v408 = 0u;
    v68 = [(NURenderJob *)self outputVideoComposition];
    obj = [v68 instructions];

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
          v72 = [v71 requiredSourceTrackIDs];
          v73 = [v72 countByEnumeratingWithState:&v404 objects:v437 count:16];
          if (v73)
          {
            v74 = *v405;
            do
            {
              for (j = 0; j != v73; ++j)
              {
                if (*v405 != v74)
                {
                  objc_enumerationMutation(v72);
                }

                v76 = MEMORY[0x1E69C0708];
                v77 = [*(*(&v404 + 1) + 8 * j) intValue];
                v78 = [v5 asset];
                v79 = [v76 trackWithTrackID:v77 forAsset:v78];

                if (([v67 containsObject:v79] & 1) == 0)
                {
                  [v67 addObject:v79];
                }
              }

              v73 = [v72 countByEnumeratingWithState:&v404 objects:v437 count:16];
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
    v80 = [(NURenderJob *)self outputVideoComposition];
    [v332 setVideoComposition:v80];

    [v332 setAlwaysCopiesSampleData:0];
    if (([v5 canAddOutput:v332] & 1) == 0)
    {
      *a3 = [NUError unknownError:@"Cannot add video composition output to asset reader" object:v332];

      goto LABEL_123;
    }

    [v5 addOutput:v332];
    v81 = [v316 videoSettings];
    v339 = [v81 mutableCopy];

    [v339 addEntriesFromDictionary:v313];
    v82 = [MEMORY[0x1E696AD98] numberWithInteger:v309];
    [v339 setObject:v82 forKeyedSubscript:*MEMORY[0x1E6987E08]];

    v83 = [MEMORY[0x1E696AD98] numberWithInteger:v308];
    [v339 setObject:v83 forKeyedSubscript:*MEMORY[0x1E6987D70]];

    [v339 removeObjectForKey:*MEMORY[0x1E6987DC8]];
    v84 = [v320 colorSpace];
    LOBYTE(v83) = v84 == 0;

    if (v83)
    {
      [v339 setObject:0 forKeyedSubscript:*MEMORY[0x1E6987D20]];
    }

    else
    {
      v85 = [v320 colorSpace];
      v86 = [v85 cvPixelBufferAttachments];

      v87 = objc_opt_new();
      v88 = [v86 objectForKeyedSubscript:*MEMORY[0x1E6965D88]];
      [v87 setObject:v88 forKeyedSubscript:*MEMORY[0x1E6987D08]];

      v89 = [v86 objectForKeyedSubscript:*MEMORY[0x1E6965F30]];
      [v87 setObject:v89 forKeyedSubscript:*MEMORY[0x1E6987DE8]];

      v90 = [v86 objectForKeyedSubscript:*MEMORY[0x1E6965F98]];
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

    v126 = [NUVideoUtilities videoTrackContainsDolbyVisionMetadata:v307];
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
    obja = [v311 transformWithSourceSpace:@"/Image" destinationSpace:@"/masterSpace" error:&v403];
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

    v132 = [(NURenderJob *)self fullSizeGeometry];
    if (v132)
    {
      v133 = [(NURenderJob *)self fullSizeGeometry];
      v134 = [v133 renderScale];
      v136 = v135;
    }

    else
    {
      v134 = [(NURenderJob *)self renderScale];
      v136 = v137;
    }

    v138 = [v311 renderScale];
    v140 = NUScaleDivide(v138, v139, v134, v136);
    if (v318)
    {
      v142 = v140;
      v143 = v141;
      [v318 cleanAperture];
      v144 = [NUVideoUtilities cleanApertureVideoSettingsFor:v435 scale:v142 videoSize:v143, v309, v308];
      [v339 setObject:v144 forKeyedSubscript:*MEMORY[0x1E6987C88]];
    }

    v145 = objc_alloc(MEMORY[0x1E6987EE0]);
    v146 = [v145 initWithMediaType:*MEMORY[0x1E6987608] outputSettings:v339];
    [v146 setMediaTimeScale:newTimescale];
    v147 = [(NUVideoExportJob *)self videoExportRequest];
    v148 = [v147 applyOrientationAsMetadata];

    if (v148)
    {
      v149 = [v311 orientation];
    }

    else
    {
      v149 = 1;
    }

    v150 = [v311 size];
    [NUVideoUtilities preferredTransformFromOrientation:v149 size:v150, v151];
    *v435 = v400;
    *&v435[16] = v401;
    v436 = v402;
    [v146 setTransform:v435];
    v152 = [(NURenderJob *)self outputVideoComposition];
    [v152 renderSize];
    [v146 setNaturalSize:?];

    if (v304)
    {
      v153 = [v318 trackMetadata];
      v154 = [MEMORY[0x1E696AD98] numberWithInt:v304];
      v155 = [v153 objectForKeyedSubscript:v154];
      [v146 setMetadata:v155];
    }

    v156 = [v319 canAddInput:v146];
    if (v156)
    {
      [v319 addInput:v146];
      v157 = [MEMORY[0x1E696AD98] numberWithInt:v304];
      [v353 setObject:v146 forKeyedSubscript:v157];
    }

    else
    {
      *a3 = [NUError unknownError:@"Cannot add video track input to asset writer" object:v146];
    }

    if ((v156 & 1) == 0)
    {
      goto LABEL_124;
    }
  }

  v158 = [(NURenderJob *)self outputAudioMix];
  if (!v158 || (v159 = [v330 count] == 0, v158, v159))
  {
    v387 = 0u;
    v388 = 0u;
    v385 = 0u;
    v386 = 0u;
    v180 = v330;
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
        *a3 = [NUError unknownError:@"Cannot add audio track output to asset writer" object:v5];

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

    *a3 = [NUError unknownError:@"Cannot add audio track output to asset reader" object:v5];
LABEL_202:

    goto LABEL_124;
  }

  v160 = [(NURenderJob *)self outputVideo];
  newTimescaleb = [NUVideoUtilities cinematicAudioTrackInAsset:v160];

  if (!newTimescaleb)
  {
    v326 = [v330 firstObject];
    v189 = [v326 formatDescriptions];
    v190 = [v189 firstObject];

    v191 = [objc_alloc(MEMORY[0x1E6987E80]) initWithAudioTracks:v330 audioSettings:0];
    v192 = [(NURenderJob *)self outputAudioMix];
    [v191 setAudioMix:v192];

    [v191 setAlwaysCopiesSampleData:0];
    if ([v5 canAddOutput:v191])
    {
      [v5 addOutput:v191];
      [v316 setSourceAudioFormat:v190];
      v193 = [v316 audioSettings];
      if (v193 || ([NUVideoUtilities assetWriterAudioSettingsForAudioTrackFormatDescription:v190], (v193 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v194 = *MEMORY[0x1E69582B0];
        v195 = [v313 objectForKeyedSubscript:*MEMORY[0x1E69582B0]];

        v196 = *MEMORY[0x1E6958348];
        v197 = [v313 objectForKeyedSubscript:*MEMORY[0x1E6958348]];

        if (v195 != 0 || v197 != 0)
        {
          v198 = v195 != 0;
          v199 = [v193 mutableCopy];
          if (v198)
          {
            v200 = [v313 objectForKeyedSubscript:v194];
            [v199 setObject:v200 forKeyedSubscript:v194];
          }

          if (v197)
          {
            v201 = [v313 objectForKeyedSubscript:v196];
            [v199 setObject:v201 forKeyedSubscript:v196];
          }

          v202 = v199;
        }

        else
        {
          v202 = v193;
        }

        v203 = objc_alloc(MEMORY[0x1E6987EE0]);
        v204 = [v203 initWithMediaType:*MEMORY[0x1E69875A0] outputSettings:v202];
        v205 = [v319 canAddInput:v204];
        if (v205)
        {
          [v319 addInput:v204];
          v206 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v326, "trackID")}];
          [v353 setObject:v204 forKeyedSubscript:v206];
        }

        else
        {
          *a3 = [NUError unknownError:@"Cannot add audio track output to asset writer" object:v5];
        }

        if (v205)
        {
          v180 = 0;
          goto LABEL_220;
        }

LABEL_313:

        goto LABEL_124;
      }

      *a3 = [NUError unknownError:@"Cannot obtain audio settings for track" object:v326];
    }

    else
    {
      *a3 = [NUError unknownError:@"Cannot add audio mix output to asset reader" object:v191];
    }

LABEL_312:

    goto LABEL_313;
  }

  if ([v330 count] >= 3)
  {
    v161 = NULogger();
    if (os_log_type_enabled(v161, OS_LOG_TYPE_ERROR))
    {
      v267 = [v330 count];
      *v435 = 134217984;
      *&v435[4] = v267;
      _os_log_error_impl(&dword_1C0184000, v161, OS_LOG_TYPE_ERROR, "Expected 2 audio tracks, got %lu", v435, 0xCu);
    }
  }

  v326 = [MEMORY[0x1E69C0708] associatedTracksOfTypeForTrack:newTimescaleb trackAssociationType:*MEMORY[0x1E6987B08]];
  v341 = [v326 firstObject];
  if (!v341)
  {
    *a3 = [NUError missingError:@"Expected audio fallback track for track" object:newTimescaleb];
    goto LABEL_312;
  }

  v391 = 0u;
  v392 = 0u;
  v389 = 0u;
  v390 = 0u;
  v305 = v330;
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
      if (v164 == newTimescaleb || v164 == v341)
      {
        v166 = [NUVideoUtilities assetReaderAudioSettingsForTrackType:v164 == newTimescaleb];
        v167 = objc_alloc(MEMORY[0x1E6987E80]);
        v432 = newTimescaleb;
        v168 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v432 count:1];
        v169 = [v167 initWithAudioTracks:v168 audioSettings:v166];

        v170 = [(NURenderJob *)self outputAudioMix];
        [v169 setAudioMix:v170];

        [v169 setAlwaysCopiesSampleData:0];
        if ([v5 canAddOutput:v169])
        {
          [v5 addOutput:v169];
          v171 = [v164 formatDescriptions];
          v172 = [v171 count] == 0;

          if (v172)
          {
            v259 = [NUError errorWithCode:3 reason:@"Missing format description" object:v164];
          }

          else
          {
            v173 = [v164 formatDescriptions];
            v174 = [v173 firstObject];

            StreamBasicDescription = CMAudioFormatDescriptionGetStreamBasicDescription(v174);
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

              *a3 = [NUError unknownError:@"Cannot add audio track output to asset writer" object:v5];

              v166 = v176;
              goto LABEL_311;
            }

            v259 = [NUError errorWithCode:2 reason:@"ASBD: Invalid format description" object:v174];
          }
        }

        else
        {
          v259 = [NUError unknownError:@"Cannot add audio mix output to asset reader" object:v169];
        }

        *a3 = v259;
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
        v179 = [v164 trackID];
        *v435 = 67109120;
        *&v435[4] = v179;
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

  if (([v320 includeCinematicVideoTracks] & 1) != 0 || objc_msgSend(v320, "includeSemanticStyleTracks"))
  {
    v383 = 0u;
    v384 = 0u;
    v381 = 0u;
    v382 = 0u;
    newTimescalec = v336;
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
          *a3 = [NUError unknownError:@"Cannot add video track output to asset reader" object:v210];

          goto LABEL_302;
        }

        [v5 addOutput:v211];

        v212 = objc_alloc(MEMORY[0x1E6987EE0]);
        v213 = [v210 mediaType];
        v214 = [v212 initWithMediaType:v213 outputSettings:0];

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
          *a3 = [NUError unknownError:@"Cannot add video track input to asset writer" object:v214];

LABEL_302:
LABEL_124:
          v9 = 0;
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
  newTimescaled = v328;
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
        *a3 = [NUError unknownError:@"Cannot add track output to asset reader" object:v5];
LABEL_305:

        goto LABEL_124;
      }

      [v5 addOutput:v220];
      v221 = SourceFormatHintForTrack(v219);
      v222 = objc_alloc(MEMORY[0x1E6987EE0]);
      v223 = [v219 mediaType];
      v224 = [v222 initWithMediaType:v223 outputSettings:0 sourceFormatHint:v221];

      if (([v319 canAddInput:v224] & 1) == 0)
      {
        *a3 = [NUError unknownError:@"Cannot add track input to asset writer" object:v5];

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
  v226 = [(NURenderJob *)self outputVideo];
  v297 = [v226 tracks];

  v296 = [v297 countByEnumeratingWithState:&v370 objects:v428 count:16];
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
          objc_enumerationMutation(v297);
          v228 = v229;
        }

        v295 = v228;
        v230 = *(*(&v370 + 1) + 8 * v228);
        v366 = 0u;
        v367 = 0u;
        v368 = 0u;
        v369 = 0u;
        v298 = [v230 availableTrackAssociationTypes];
        v306 = [v298 countByEnumeratingWithState:&v366 objects:v427 count:16];
        if (v306)
        {
          v301 = *v367;
          do
          {
            for (m = 0; m != v306; m = m + 1)
            {
              if (*v367 != v301)
              {
                objc_enumerationMutation(v298);
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
                        v241 = [v230 trackID];
                        v242 = [v235 trackID];
                        *v435 = 67109634;
                        *&v435[4] = v241;
                        *&v435[8] = 1024;
                        *&v435[10] = v242;
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

            v306 = [v298 countByEnumeratingWithState:&v366 objects:v427 count:16];
          }

          while (v306);
        }

        v228 = v295 + 1;
        v227 = v294;
      }

      while (v295 + 1 != v296);
      v296 = [v297 countByEnumeratingWithState:&v370 objects:v428 count:16];
      v227 = v294;
    }

    while (v296);
  }

  v360 = 0u;
  v361 = 0u;
  v358 = 0u;
  v359 = 0u;
  v335 = [v318 trackGroups];
  *newTimescalef = [v335 countByEnumeratingWithState:&v358 objects:v425 count:16];
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
          objc_enumerationMutation(v335);
        }

        v244 = *(*(&v358 + 1) + 8 * v243);
        v245 = objc_alloc(MEMORY[0x1E695DF70]);
        v246 = [v244 trackIDs];
        v247 = [v245 initWithCapacity:{objc_msgSend(v246, "count")}];

        v356 = 0u;
        v357 = 0u;
        v354 = 0u;
        v355 = 0u;
        v248 = [v244 trackIDs];
        v249 = 0;
        v250 = [v248 countByEnumeratingWithState:&v354 objects:v424 count:16];
        if (v250)
        {
          v251 = *v355;
          do
          {
            for (ii = 0; ii != v250; ++ii)
            {
              if (*v355 != v251)
              {
                objc_enumerationMutation(v248);
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

            v250 = [v248 countByEnumeratingWithState:&v354 objects:v424 count:16];
          }

          while (v250);
        }

        v254 = [v247 count];
        v255 = [v244 trackIDs];
        v256 = v254 == [v255 count];

        if (v256)
        {
          v257 = [objc_alloc(MEMORY[0x1E6987EF0]) initWithInputs:v247 defaultInput:v249];
          if (([v319 canAddInputGroup:v257] & 1) == 0)
          {
            *a3 = [NUError unknownError:@"Cannot add input group to asset writer" object:v257];

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
            v258 = [v244 trackIDs];
            *v435 = 138543362;
            *&v435[4] = v258;
            _os_log_impl(&dword_1C0184000, v257, OS_LOG_TYPE_DEFAULT, "Missing track group inputs for track group %{public}@, ignored.", v435, 0xCu);
          }
        }

        ++v243;
      }

      while (v243 != *newTimescalef);
      *newTimescalef = [v335 countByEnumeratingWithState:&v358 objects:v425 count:16];
      if (*newTimescalef)
      {
        continue;
      }

      break;
    }
  }

  *v435 = v421;
  v9 = [(NUVideoExportJob *)self writeVideoFrom:v5 toWriter:v319 stillImageTime:v435 createCustomMetadata:flags & 1 geometryTransform:obja inputSize:a3 outputSize:v303 error:v302, v309, v308];
LABEL_125:

LABEL_126:
LABEL_127:

  v6 = v312;
LABEL_128:

  return v9;
}

- (id)renderer:(id *)a3
{
  v5 = [(NURenderJob *)self priority];
  v6 = [v5 isLow];

  v7 = [(NURenderJob *)self device];
  v8 = v7;
  if (v6)
  {
    [v7 lowPriorityRendererWithoutIntermediateCaching:a3];
  }

  else
  {
    [v7 rendererWithoutIntermediateCaching:a3];
  }
  v9 = ;

  return v9;
}

- (id)generateVideoComposition:(id *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v24.receiver = self;
  v24.super_class = NUVideoExportJob;
  v4 = [(NURenderJob *)&v24 generateVideoComposition:a3];
  if (v4)
  {
    v5 = [NUVideoUtilities deepMutableCopyVideoComposition:v4];
    v6 = [(NUVideoExportJob *)self videoProperties];
    [v6 isHDR];

    [v5 setCustomVideoCompositorClass:objc_opt_class()];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v7 = [v5 instructions];
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [(NURenderJob *)self composition];
          [v12 setAdjustmentComposition:v13];

          v14 = [(NURenderJob *)self request];
          v15 = [v14 pipelineFilters];
          [v12 setPipelineFilters:v15];

          v16 = [(NUVideoExportJob *)self videoExportRequest];
          v17 = [v16 colorSpace];
          [v12 setColorSpace:v17];

          [v12 setRenderJob:self];
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v25 count:16];
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
  v3 = [(NUVideoExportJob *)self videoExportRequest];
  v4 = [(NURenderJob *)self prepareNode];
  v32 = 0;
  v5 = [v4 videoProperties:&v32];
  v6 = v32;
  [(NUVideoExportJob *)self setVideoProperties:v5];

  v7 = [(NUVideoExportJob *)self videoProperties];

  if (!v7)
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

  v9 = [(NURenderJob *)self outputVideo];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v10 = [MEMORY[0x1E69C0708] tracksWithMediaType:*MEMORY[0x1E6987608] forAsset:v9];
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
        v16 = [v15 segments];
        v17 = [v16 count];

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
  v19 = [v3 destinationURL];
  v20 = [v19 pathExtension];
  v10 = [v18 typeWithFilenameExtension:v20];

  if (![v10 conformsToType:*MEMORY[0x1E6982F80]])
  {
LABEL_20:
    v25 = 1;
    goto LABEL_21;
  }

  if (([v3 applyOrientationAsMetadata] & 1) != 0 || (-[NURenderJob outputGeometry](self, "outputGeometry"), v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "orientation"), v21, -[NUVideoExportJob videoProperties](self, "videoProperties"), v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "orientation"), v23, v25 = 1, v22 == 1) && v24 == 1)
  {
    v27.receiver = self;
    v27.super_class = NUVideoExportJob;
    v25 = [(NURenderJob *)&v27 requiresVideoComposition];
  }

LABEL_21:

  return v25;
}

- (id)prepareNodeWithPipelineState:(id)a3 error:(id *)a4
{
  v16.receiver = self;
  v16.super_class = NUVideoExportJob;
  v6 = [(NURenderJob *)&v16 prepareNodeWithPipelineState:a3 error:?];
  if (v6)
  {
    v7 = [(NUVideoExportJob *)self videoExportRequest];
    v8 = [v7 applyOrientationAsMetadata];

    if (v8)
    {
      v9 = [v6 outputImageGeometry:a4];
      v10 = v9;
      if (!v9)
      {
        goto LABEL_11;
      }

      v11 = [v9 orientation];
      v12 = 6;
      if (v11 != 8)
      {
        v12 = v11;
      }

      if (v11 == 6)
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
  v4 = [(NUVideoExportJob *)self videoExportRequest];
  v5 = [v4 destinationURL];
  [(_NUExportResult *)v3 setDestinationURL:v5];

  v6 = [(NURenderJob *)self outputGeometry];
  [(_NUExportResult *)v3 setGeometry:v6];

  v7 = [(NUVideoExportJob *)self digest];
  v8 = [v7 stringValue];
  [(_NUVideoExportResult *)v3 setDigest:v8];

  return v3;
}

- (id)scalePolicy
{
  v2 = [(NUVideoExportJob *)self videoExportRequest];
  v3 = [v2 scalePolicy];

  return v3;
}

- (BOOL)wantsRenderNodeCached
{
  v2 = [(NURenderJob *)self outputVideoComposition];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 sourceVideoTrackWindowsForTrackIDs];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NUVideoExportJob)initWithExportRequest:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
      v16 = [v14 callStackSymbols];
      v17 = [v16 componentsJoinedByString:@"\n"];
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
    v23 = [v20 callStackSymbols];
    v24 = [v23 componentsJoinedByString:@"\n"];
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

- (NUVideoExportJob)initWithVideoExportRequest:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = NUVideoExportJob;
  v5 = [(NUExportJob *)&v9 initWithExportRequest:v4];
  if (v5)
  {
    v6 = [v4 composition];
    [(NURenderJob *)v5 setComposition:v6];

    if ([v4 computeDigest])
    {
      v7 = objc_alloc_init(NUDigest);
      [(NUVideoExportJob *)v5 setDigest:v7];
    }
  }

  return v5;
}

@end