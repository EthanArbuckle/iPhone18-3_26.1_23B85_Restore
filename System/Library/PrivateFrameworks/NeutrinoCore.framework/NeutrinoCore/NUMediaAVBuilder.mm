@interface NUMediaAVBuilder
- (BOOL)buildAVObjectsWithOptions:(id)a3 error:(id *)a4;
- (NUMediaAVBuilder)init;
- (NUMediaAVBuilder)initWithContainer:(id)a3;
@end

@implementation NUMediaAVBuilder

- (BOOL)buildAVObjectsWithOptions:(id)a3 error:(id *)a4
{
  v155 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v121 = a4;
  if (!a4)
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
        v78 = [v76 callStackSymbols];
        v79 = [v78 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v75;
        *&buf[12] = 2114;
        *&buf[14] = v79;
        _os_log_error_impl(&dword_1C0184000, v71, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v72)
    {
      v73 = [MEMORY[0x1E696AF00] callStackSymbols];
      v74 = [v73 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v74;
      _os_log_error_impl(&dword_1C0184000, v71, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMediaAVBuilder buildAVObjectsWithOptions:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 476, @"Invalid parameter not satisfying: %s", v80, v81, v82, v83, "error != NULL");
  }

  v7 = v6;
  v8 = [(NUContainerMedia *)self->_container containerFormat];
  if ([v8 containerMediaType] != 2)
  {
    [NUError errorWithCode:2 reason:@"invalid container media type" object:v8];
    *v121 = v52 = 0;
    goto LABEL_72;
  }

  v9 = [v7 channelToRender];
  v10 = [v9 name];
  v11 = [v10 isEqualToString:@"primary"];

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
        v94 = [v92 callStackSymbols];
        v95 = [v94 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v91;
        *&buf[12] = 2114;
        *&buf[14] = v95;
        _os_log_error_impl(&dword_1C0184000, v87, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v88)
    {
      v89 = [MEMORY[0x1E696AF00] callStackSymbols];
      v90 = [v89 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v90;
      _os_log_error_impl(&dword_1C0184000, v87, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMediaAVBuilder buildAVObjectsWithOptions:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 486, @"Building for non-primary channels is currently unsupported", v96, v97, v98, v99, v100);
  }

  container = self->_container;
  v13 = [v7 channelToRender];
  v14 = [(NUContainerMedia *)container mediaForChannel:v13];

  if (!v14)
  {
    v53 = [v7 channelToRender];
    *v121 = [NUError missingError:@"Missing media for channel" object:v53];

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
  v16 = [v8 components];
  v105 = [v16 countByEnumeratingWithState:&v146 objects:v154 count:16];
  if (!v105)
  {

    objc_storeStrong(&self->_videoAsset, v15);
    goto LABEL_52;
  }

  v17 = 0;
  v18 = *v147;
  v110 = v14;
  v111 = v8;
  v118 = v15;
  v103 = *v147;
  v104 = self;
  v109 = v16;
  do
  {
    v19 = 0;
    do
    {
      if (*v147 != v18)
      {
        objc_enumerationMutation(v16);
      }

      v108 = v19;
      v20 = *(*(&v146 + 1) + 8 * v19);
      v21 = [(NUContainerMedia *)self->_container components];
      v114 = v20;
      v22 = [v21 objectForKeyedSubscript:v20];

      v23 = [v22 requiredSourceMedias];
      if (![v23 count])
      {
        *v121 = [NUError missingError:@"missing source media" object:v22];
LABEL_50:

        v52 = 0;
LABEL_69:

        v15 = v118;
        goto LABEL_70;
      }

      v112 = v22;
      v107 = v17;
      v106 = [v23 count] > 1;
      v142 = 0u;
      v143 = 0u;
      v144 = 0u;
      v145 = 0u;
      v24 = v23;
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
          v30 = [v29 format];
          if ([v30 mediaType])
          {
            v31 = [v29 asset];
            v32 = [v31 type];

            if (v32 == 2)
            {
              v33 = v27;
              v34 = v24;
              v35 = [v29 asset];
              v36 = [v29 resourceID];
              v37 = [v35 avAssetTrackForResourceID:v36 error:v121];

              if (!v37)
              {
                v37 = [v29 resourceID];
                *v121 = [NUError missingError:@"missing asset track for resource" object:v37];
LABEL_49:

                v23 = v34;
                v14 = v110;
                v8 = v111;
                v16 = v109;
                v22 = v112;
                goto LABEL_50;
              }

              if (![v122 containsIndex:{objc_msgSend(v37, "trackID")}])
              {
                v38 = [v37 mediaType];
                if (v38)
                {
                  v39 = v38;
                  v40 = [v15 addMutableTrackWithMediaType:v38 preferredTrackID:{objc_msgSend(v37, "trackID")}];
                  [v37 timeRange];
                  if (v141)
                  {
                    [v37 timeRange];
                    if (v140)
                    {
                      [v37 timeRange];
                      if (!v139)
                      {
                        [v37 timeRange];
                        if ((v138 & 0x8000000000000000) == 0)
                        {
                          [v37 timeRange];
                          time2 = **&MEMORY[0x1E6960CC0];
                          if (![v40 insertTimeRange:buf ofTrack:v37 atTime:&time2 error:v121])
                          {
                            *v121 = [NUError failureError:@"failed to insert track" object:v37];

                            goto LABEL_49;
                          }
                        }
                      }
                    }
                  }

                  v119 = v39;
                  [v122 addIndex:{objc_msgSend(v37, "trackID")}];
                  [v116 addObject:v29];
                  v41 = v40;
                  v42 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v40, "trackID")}];
                  v43 = [MEMORY[0x1E696AD98] numberWithInt:{objc_msgSend(v37, "trackID")}];
                  [v115 setObject:v42 forKeyedSubscript:v43];

                  v44 = v7;
                  v45 = [v7 channelToRender];
                  v46 = [v45 name];
                  v47 = [v114 isEqualToString:v46];

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
                  v120 = [v29 format];
                  v51 = [v101 numberWithInteger:{objc_msgSend(v120, "mediaType")}];
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

      v16 = v109;
      v19 = v108 + 1;
      self = v104;
      v14 = v110;
      v8 = v111;
      v18 = v103;
    }

    while (v108 + 1 != v105);
    v105 = [v109 countByEnumeratingWithState:&v146 objects:v154 count:16];
  }

  while (v105);

  objc_storeStrong(&v104->_videoAsset, v15);
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
    v55 = [v54 asset];
    v56 = [v54 resourceID];
    v57 = [v55 avAssetTrackForResourceID:v56 error:v121];

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
        v64 = [(NUContainerMedia *)self->_container renderNode];
        [(NUVideoCompositionInstruction *)v62 setVideoRenderPrepareNode:v64];

        v150 = v62;
        v52 = 1;
        v65 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v150 count:1];
        [v58 setInstructions:v65];

        v66 = [(NUVideoCompositionInstruction *)v62 requiredSourceSampleDataTrackIDs];
        [v58 setSourceSampleDataTrackIDs:v66];

        [v58 setCustomVideoCompositorClass:objc_opt_class()];
        objc_storeStrong(&self->_videoComposition, v58);
      }

      else
      {
        [NUError invalidError:@"Invalid frame duration for video track" object:v57];
        *v121 = v52 = 0;
      }
    }

    else
    {
      v52 = 0;
    }

    v16 = v136;
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

- (NUMediaAVBuilder)initWithContainer:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
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
        v19 = [v17 callStackSymbols];
        v20 = [v19 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v16;
        v28 = 2114;
        v29 = v20;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      v14 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUMediaAVBuilder initWithContainer:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUMedia.m", 468, @"Invalid parameter not satisfying: %s", v21, v22, v23, v24, "container != nil");
  }

  v5 = v4;
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
      v14 = [v12 callStackSymbols];
      v15 = [v14 componentsJoinedByString:@"\n"];
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
    v21 = [v18 callStackSymbols];
    v22 = [v21 componentsJoinedByString:@"\n"];
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