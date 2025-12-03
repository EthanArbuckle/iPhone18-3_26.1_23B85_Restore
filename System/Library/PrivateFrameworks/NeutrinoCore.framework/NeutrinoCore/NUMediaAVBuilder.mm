@interface NUMediaAVBuilder
- (BOOL)buildAVObjectsWithOptions:(id)options error:(id *)error;
- (NUMediaAVBuilder)init;
- (NUMediaAVBuilder)initWithContainer:(id)container;
@end

@implementation NUMediaAVBuilder

- (BOOL)buildAVObjectsWithOptions:(id)options error:(id *)error
{
  v155 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  errorCopy = error;
  if (!error)
  {
    v68 = NUAssertLogger_2109();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      *&buf[4] = v69;
      _os_log_error_impl(&dword_1C0184000, v68, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v71 = NUAssertLogger_2109();
    v72 = os_log_type_enabled(v71, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v72)
      {
        v75 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v76 = MEMORY[0x1E696AF00];
        v77 = v75;
        callStackSymbols = [v76 callStackSymbols];
        v79 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v75;
        *&buf[12] = 2114;
        *&buf[14] = v79;
        _os_log_error_impl(&dword_1C0184000, v71, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v72)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v74 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v74;
      _os_log_error_impl(&dword_1C0184000, v71, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMediaAVBuilder buildAVObjectsWithOptions:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 476, @"Invalid parameter not satisfying: %s", v80, v81, v82, v83, "error != NULL");
  }

  v7 = optionsCopy;
  containerFormat = [(NUContainerMedia *)self->_container containerFormat];
  if ([containerFormat containerMediaType] != 2)
  {
    [NUError errorWithCode:2 reason:@"invalid container media type" object:containerFormat];
    *errorCopy = v52 = 0;
    goto LABEL_72;
  }

  channelToRender = [v7 channelToRender];
  name = [channelToRender name];
  v11 = [name isEqualToString:@"primary"];

  if ((v11 & 1) == 0)
  {
    v84 = NUAssertLogger_2109();
    if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
    {
      v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Building for non-primary channels is currently unsupported"];
      *buf = 138543362;
      *&buf[4] = v85;
      _os_log_error_impl(&dword_1C0184000, v84, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v86 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v87 = NUAssertLogger_2109();
    v88 = os_log_type_enabled(v87, OS_LOG_TYPE_ERROR);
    if (v86)
    {
      if (v88)
      {
        v91 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v92 = MEMORY[0x1E696AF00];
        v93 = v91;
        callStackSymbols3 = [v92 callStackSymbols];
        v95 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v91;
        *&buf[12] = 2114;
        *&buf[14] = v95;
        _os_log_error_impl(&dword_1C0184000, v87, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v88)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v90 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v90;
      _os_log_error_impl(&dword_1C0184000, v87, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMediaAVBuilder buildAVObjectsWithOptions:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 486, @"Building for non-primary channels is currently unsupported", v96, v97, v98, v99, v100);
  }

  container = self->_container;
  channelToRender2 = [v7 channelToRender];
  v14 = [(NUContainerMedia *)container mediaForChannel:channelToRender2];

  if (!v14)
  {
    channelToRender3 = [v7 channelToRender];
    *errorCopy = [NUError missingError:@"Missing media for channel" object:channelToRender3];

    v52 = 0;
    goto LABEL_71;
  }

  v15 = objc_alloc_init(MEMORY[0x1E6988048]);
  v113 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v115 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v116 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v122 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  v149 = 0u;
  components = [containerFormat components];
  v105 = [components countByEnumeratingWithState:&v146 objects:v154 count:16];
  if (!v105)
  {

    objc_storeStrong(&self->_videoAsset, v15);
    goto LABEL_52;
  }

  v17 = 0;
  v18 = *v147;
  v110 = v14;
  v111 = containerFormat;
  v118 = v15;
  v103 = *v147;
  selfCopy = self;
  v109 = components;
  do
  {
    v19 = 0;
    do
    {
      if (*v147 != v18)
      {
        objc_enumerationMutation(components);
      }

      v108 = v19;
      v20 = *(*(&v146 + 1) + 8 * v19);
      components2 = [(NUContainerMedia *)self->_container components];
      v114 = v20;
      v22 = [components2 objectForKeyedSubscript:v20];

      requiredSourceMedias = [v22 requiredSourceMedias];
      if (![requiredSourceMedias count])
      {
        *errorCopy = [NUError missingError:@"missing source media" object:v22];
LABEL_50:

        v52 = 0;
LABEL_69:

        v15 = v118;
        goto LABEL_70;
      }

      v112 = v22;
      v107 = v17;
      v106 = [requiredSourceMedias count] > 1;
      v142 = 0u;
      v143 = 0u;
      v144 = 0u;
      v145 = 0u;
      v24 = requiredSourceMedias;
      v25 = [v24 countByEnumeratingWithState:&v142 objects:v153 count:16];
      v15 = v118;
      if (!v25)
      {
        goto LABEL_42;
      }

      v26 = v25;
      v27 = *v143;
      while (2)
      {
        v28 = 0;
        v117 = v26;
        do
        {
          if (*v143 != v27)
          {
            objc_enumerationMutation(v24);
          }

          v29 = *(*(&v142 + 1) + 8 * v28);
          format = [v29 format];
          if ([format mediaType])
          {
            asset = [v29 asset];
            type = [asset type];

            if (type == 2)
            {
              v33 = v27;
              v34 = v24;
              asset2 = [v29 asset];
              resourceID = [v29 resourceID];
              resourceID2 = [asset2 avAssetTrackForResourceID:resourceID error:errorCopy];

              if (!resourceID2)
              {
                resourceID2 = [v29 resourceID];
                *errorCopy = [NUError missingError:@"missing asset track for resource" object:resourceID2];
LABEL_49:

                requiredSourceMedias = v34;
                v14 = v110;
                containerFormat = v111;
                components = v109;
                v22 = v112;
                goto LABEL_50;
              }

              if (![v122 containsIndex:{objc_msgSend(resourceID2, "trackID")}])
              {
                mediaType = [resourceID2 mediaType];
                if (mediaType)
                {
                  v39 = mediaType;
                  v40 = [v15 addMutableTrackWithMediaType:mediaType preferredTrackID:{objc_msgSend(resourceID2, "trackID")}];
                  [resourceID2 timeRange];
                  if (v141)
                  {
                    [resourceID2 timeRange];
                    if (v140)
                    {
                      [resourceID2 timeRange];
                      if (!v139)
                      {
                        [resourceID2 timeRange];
                        if ((v138 & 0x8000000000000000) == 0)
                        {
                          [resourceID2 timeRange];
                          time2 = **&MEMORY[0x1E6960CC0];
                          if (![v40 insertTimeRange:buf ofTrack:resourceID2 atTime:&time2 error:errorCopy])
                          {
                            *errorCopy = [NUError failureError:@"failed to insert track" object:resourceID2];

                            goto LABEL_49;
                          }
                        }
                      }
                    }
                  }

                  v119 = v39;
                  [v122 addIndex:{objc_msgSend(resourceID2, "trackID")}];
                  [v116 addObject:v29];
                  v41 = v40;
                  v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v40, "trackID")}];
                  v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(resourceID2, "trackID")}];
                  [v115 setObject:v42 forKeyedSubscript:v43];

                  v44 = v7;
                  channelToRender4 = [v7 channelToRender];
                  name2 = [channelToRender4 name];
                  v47 = [v114 isEqualToString:name2];

                  if (v47)
                  {
                    v48 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v41, "trackID")}];
                    [v113 addObject:v48];
                  }

                  v7 = v44;
                  v26 = v117;
                  v15 = v118;
                  goto LABEL_39;
                }

                if (_NULogOnceToken != -1)
                {
                  dispatch_once(&_NULogOnceToken, &__block_literal_global_381);
                }

                v50 = _NULogger;
                if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
                {
                  v101 = MEMORY[0x1E696AD98];
                  log = v50;
                  format2 = [v29 format];
                  v51 = [v101 numberWithInteger:{objc_msgSend(format2, "mediaType")}];
                  *buf = 138412290;
                  *&buf[4] = v51;
                  _os_log_error_impl(&dword_1C0184000, log, OS_LOG_TYPE_ERROR, "Unsupported media type %@, skipping", buf, 0xCu);
                }
              }

LABEL_39:
              v24 = v34;
              v27 = v33;
              goto LABEL_40;
            }
          }

          else
          {
          }

          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_381);
          }

          v49 = _NULogger;
          if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            *&buf[4] = v29;
            _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "Unspecified/unsupported media type for source %@, skipping", buf, 0xCu);
          }

LABEL_40:
          ++v28;
        }

        while (v26 != v28);
        v26 = [v24 countByEnumeratingWithState:&v142 objects:v153 count:16];
        if (v26)
        {
          continue;
        }

        break;
      }

LABEL_42:
      v17 = v106 | v107;

      components = v109;
      v19 = v108 + 1;
      self = selfCopy;
      v14 = v110;
      containerFormat = v111;
      v18 = v103;
    }

    while (v108 + 1 != v105);
    v105 = [v109 countByEnumeratingWithState:&v146 objects:v154 count:16];
  }

  while (v105);

  objc_storeStrong(&selfCopy->_videoAsset, v15);
  if (v17)
  {
LABEL_53:
    v118 = v15;
    v132 = MEMORY[0x1E69E9820];
    v133 = 3221225472;
    v134 = __52__NUMediaAVBuilder_buildAVObjectsWithOptions_error___block_invoke;
    v135 = &unk_1E8109720;
    v136 = v7;
    v54 = PFFind();
    asset3 = [v54 asset];
    resourceID3 = [v54 resourceID];
    v57 = [asset3 avAssetTrackForResourceID:resourceID3 error:errorCopy];

    if (v57)
    {
      v58 = objc_alloc_init(MEMORY[0x1E6988060]);
      [v57 naturalSize];
      [v58 setRenderSize:?];
      [v58 setSourceTrackIDForFrameTiming:{objc_msgSend(v57, "trackID")}];
      [v57 minFrameDuration];
      if (v131)
      {
        [v57 minFrameDuration];
        *buf = v129;
        epoch = v130;
      }

      else
      {
        [v57 nominalFrameRate];
        if (v59 <= 0.0)
        {
          CMTimeMake(&v127, 1, 30);
          *buf = *&v127.value;
          epoch = v127.epoch;
        }

        else
        {
          [v57 nominalFrameRate];
          CMTimeMakeWithSeconds(&v128, 1.0 / v60, 600);
          *buf = *&v128.value;
          epoch = v128.epoch;
        }
      }

      *&buf[16] = epoch;
      [v58 setFrameDuration:buf];
      if (v58 && ([v58 frameDuration], (v126 & 1) != 0) && (objc_msgSend(v58, "frameDuration"), time2 = **&MEMORY[0x1E6960CC0], CMTimeCompare(buf, &time2) > 0))
      {
        v62 = objc_alloc_init(NUVideoCompositionInstruction);
        [v57 timeRange];
        *buf = v123;
        *&buf[16] = v124;
        v152 = v125;
        [(NUVideoCompositionInstruction *)v62 setTimeRange:buf];
        v63 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v57, "trackID")}];
        [(NUVideoCompositionInstruction *)v62 setSourceIdentifier:@"video" forTrackID:v63];

        [(NUVideoCompositionInstruction *)v62 setRequiredSourceTrackIDs:v113];
        [(NUVideoCompositionInstruction *)v62 setVideoMedia:self->_container];
        renderNode = [(NUContainerMedia *)self->_container renderNode];
        [(NUVideoCompositionInstruction *)v62 setVideoRenderPrepareNode:renderNode];

        v150 = v62;
        v52 = 1;
        v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
        [v58 setInstructions:v65];

        requiredSourceSampleDataTrackIDs = [(NUVideoCompositionInstruction *)v62 requiredSourceSampleDataTrackIDs];
        [v58 setSourceSampleDataTrackIDs:requiredSourceSampleDataTrackIDs];

        [v58 setCustomVideoCompositorClass:objc_opt_class()];
        objc_storeStrong(&self->_videoComposition, v58);
      }

      else
      {
        [NUError invalidError:@"Invalid frame duration for video track" object:v57];
        *errorCopy = v52 = 0;
      }
    }

    else
    {
      v52 = 0;
    }

    components = v136;
    goto LABEL_69;
  }

LABEL_52:
  if ([v14 isFiltered])
  {
    goto LABEL_53;
  }

  v52 = 1;
LABEL_70:

LABEL_71:
LABEL_72:

  return v52;
}

uint64_t __52__NUMediaAVBuilder_buildAVObjectsWithOptions_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 format];
  v4 = [*(a1 + 32) channelToRender];
  v5 = [v4 format];
  v6 = [v3 isEqualToChannelFormat:v5];

  return v6;
}

- (NUMediaAVBuilder)initWithContainer:(id)container
{
  v30 = *MEMORY[0x1E69E9840];
  containerCopy = container;
  if (!containerCopy)
  {
    v9 = NUAssertLogger_2109();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "container != nil"];
      *buf = 138543362;
      v27 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_2109();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v16 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v17 = MEMORY[0x1E696AF00];
        v18 = v16;
        callStackSymbols = [v17 callStackSymbols];
        v20 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMediaAVBuilder initWithContainer:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 468, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "container != nil");
  }

  v5 = containerCopy;
  v25.receiver = self;
  v25.super_class = NUMediaAVBuilder;
  v6 = [(NUMediaAVBuilder *)&v25 init];
  container = v6->_container;
  v6->_container = v5;

  return v6;
}

- (NUMediaAVBuilder)init
{
  v33 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_379);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = NSStringFromSelector(a2);
    v9 = [v4 stringWithFormat:@"Initializer not available: -[%@ %@], use designated initializer instead.", v7, v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_379);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_379);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v11 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v12 = MEMORY[0x1E696AF00];
      v13 = v11;
      callStackSymbols = [v12 callStackSymbols];
      v15 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v15;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v16 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v18 = MEMORY[0x1E696AF00];
    v19 = specific;
    v20 = v16;
    callStackSymbols2 = [v18 callStackSymbols];
    v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v30 = specific;
    v31 = 2114;
    v32 = v22;
    _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v23 = objc_opt_class();
  v24 = NSStringFromClass(v23);
  NSStringFromSelector(a2);
  objc_claimAutoreleasedReturnValue();
  _NUAssertFailHandler("[NUMediaAVBuilder init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 464, @"Initializer not available: [%@ %@], use designated initializer instead.", v25, v26, v27, v28, v24);
}

@end