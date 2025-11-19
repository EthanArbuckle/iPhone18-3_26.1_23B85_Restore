@interface _NUVideoAsset
- (_NUVideoAsset)initWithIdentifier:(id)a3;
- (_NUVideoAsset)initWithVideoURL:(id)a3;
- (_NUVideoAsset)initWithVideoURL:(id)a3 identifier:(id)a4;
- (id)_loadMediaWithOptions:(id)a3 error:(id *)a4;
- (id)avAssetTrackForResourceID:(id)a3 error:(id *)a4;
@end

@implementation _NUVideoAsset

- (id)avAssetTrackForResourceID:(id)a3 error:(id *)a4
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 track];
  }

  else
  {
    [NUError unknownError:@"Unknown asset resource" object:v5];
    *a4 = v6 = 0;
  }

  return v6;
}

- (id)_loadMediaWithOptions:(id)a3 error:(id *)a4
{
  v5 = self;
  v123 = *MEMORY[0x1E69E9840];
  v6 = [(_NUVideoAsset *)self videoURL];
  v120 = 0;
  v7 = *MEMORY[0x1E695DAA0];
  v119 = 0;
  v8 = [v6 getResourceValue:&v120 forKey:v7 error:&v119];
  v9 = v120;
  v10 = v119;
  if ((v8 & 1) == 0)
  {
    v79 = [NUError errorWithCode:1 reason:@"Failed to get URL resource value" object:v6 underlyingError:v10];
LABEL_38:
    v29 = 0;
    *a4 = v79;
    goto LABEL_55;
  }

  if ([v9 conformsToType:*MEMORY[0x1E6982FF8]])
  {
    v11 = v5;
    v12 = [MEMORY[0x1E696AC08] defaultManager];
    v13 = [v6 path];
    v118 = v10;
    v14 = [v12 destinationOfSymbolicLinkAtPath:v13 error:&v118];
    v15 = v118;

    if (v14)
    {
      v16 = [MEMORY[0x1E695DFF8] fileURLWithPath:v14 relativeToURL:v6];

      v116 = 0;
      v117 = 0;
      v17 = [v16 getResourceValue:&v117 forKey:v7 error:&v116];
      v18 = v117;

      v10 = v116;
      if (v17)
      {

        v6 = v16;
        v9 = v18;
        v5 = v11;
        goto LABEL_6;
      }

      v80 = [NUError errorWithCode:1 reason:@"Failed to get resolved URL resource value" object:v16 underlyingError:v10];
      v6 = v16;
      v9 = v18;
    }

    else
    {
      v80 = [NUError errorWithCode:1 reason:@"Failed to resolve symlink" object:v6 underlyingError:v15];
      v10 = v15;
    }

    *a4 = v80;

    v29 = 0;
    goto LABEL_55;
  }

LABEL_6:
  if (v9 && ([v9 conformsToType:*MEMORY[0x1E6982EE8]] & 1) == 0)
  {
    v79 = [NUError invalidError:@"Not a movie file" object:v9];
    goto LABEL_38;
  }

  v19 = [NUVideoFileSourceDefinition alloc];
  v20 = [(_NUVideoAsset *)v5 videoURL];
  v21 = [v9 identifier];
  v22 = [(NUFileSourceDefinition *)v19 initWithURL:v20 UTI:v21];

  v23 = [(_NUAsset *)v5 identifier];
  v115 = 0;
  v24 = [(NUSingleSourceDefinition *)v22 sourceContainerNodeWithIdentifier:v23 error:&v115];
  v25 = v115;

  sourceContainerNode = v5->_sourceContainerNode;
  v5->_sourceContainerNode = v24;

  if (v5->_sourceContainerNode)
  {
    v27 = objc_alloc_init(NURenderPipelineState);
    [(NURenderPipelineState *)v27 setMediaComponentType:2];
    [(NURenderPipelineState *)v27 setEvaluationMode:0];
    v28 = v5->_sourceContainerNode;
    v114 = 0;
    v29 = [(NUSourceContainerNode *)v28 sourceNodeForPipelineState:v27 error:&v114];
    v30 = v114;

    v95 = v29;
    if (v29)
    {
      v94 = v22;
      v113 = 0;
      v31 = [(_NUAssetContainerMedia *)v29 asset:&v113];
      v32 = v113;

      v33 = v31;
      if (v31)
      {
        v112 = 0;
        v93 = v31;
        v34 = [NUVideoUtilities firstEnabledVideoTrackInAsset:v31 error:&v112];
        v35 = v112;

        v92 = v34;
        if (v34)
        {
          v36 = v5->_sourceContainerNode;
          v111 = 0;
          v37 = [(NUSourceContainerNode *)v36 preparedSourceNodeForPipelineState:v27 pipelineSettings:MEMORY[0x1E695E0F8] sourceSettings:MEMORY[0x1E695E0F8] error:&v111];
          v32 = v111;

          if (v37)
          {
            v110 = 0;
            v38 = [(_NUAssetContainerMedia *)v29 _evaluateVideoProperties:&v110];
            v90 = v110;

            if (_NULogOnceToken != -1)
            {
              dispatch_once(&_NULogOnceToken, &__block_literal_global_417_10867);
            }

            v39 = _NULogger;
            v91 = v37;
            if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_DEFAULT))
            {
              v40 = v39;
              v41 = [v38 auxiliaryVideoTrackProperties];
              *buf = 138412546;
              *&buf[4] = v38;
              *&buf[12] = 2112;
              *&buf[14] = v41;
              _os_log_impl(&dword_1C0184000, v40, OS_LOG_TYPE_DEFAULT, "Video Properties: %@, Aux Props: %@", buf, 0x16u);
            }

            if (v38)
            {
              v88 = v6;
              v89 = v9;
              obja = objc_alloc_init(MEMORY[0x1E695DF90]);
              v42 = +[NUChannel primary];
              v43 = [NUChannelImageMediaFormat videoImageFormat:1];
              v44 = [_NUMediaGeometry alloc];
              v45 = [v38 size];
              v46 = v37;
              v47 = v27;
              v49 = v48;
              v50 = v38;
              v51 = [v38 orientation];
              [v50 duration];
              v84 = [(_NUMediaGeometry *)v44 initWithSize:v45 orientation:v49 duration:v51, buf];
              v85 = v43;
              v83 = [[_NUVideoAssetMedia alloc] initWithVideoAsset:v5 track:v92 format:v43 geometry:v84];
              v52 = [[_NURenderMedia alloc] initWithBaseMedia:v83 renderNode:v46];
              v86 = v42;
              v53 = [v42 name];
              v82 = v52;
              [obja setObject:v52 forKeyedSubscript:v53];

              v54 = [v50 auxiliaryVideoTrackProperties];
              v104[0] = MEMORY[0x1E69E9820];
              v104[1] = 3221225472;
              v104[2] = __45___NUVideoAsset__loadMediaWithOptions_error___block_invoke;
              v104[3] = &unk_1E810A0C0;
              v105 = v47;
              v106 = v5;
              v55 = v5;
              v56 = v93;
              v107 = v56;
              v87 = v50;
              v108 = v50;
              v57 = obja;
              v109 = v57;
              [v54 enumerateKeysAndObjectsUsingBlock:v104];

              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              obj = [v56 tracks];
              v58 = [obj countByEnumeratingWithState:&v100 objects:v121 count:16];
              if (!v58)
              {
                goto LABEL_36;
              }

              v59 = v58;
              v60 = *v101;
              v61 = *MEMORY[0x1E69875A0];
              v96 = *MEMORY[0x1E69875D0];
              while (1)
              {
                for (i = 0; i != v59; ++i)
                {
                  if (*v101 != v60)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v63 = *(*(&v100 + 1) + 8 * i);
                  v64 = [v63 mediaType];
                  v65 = [v64 isEqualToString:v61];

                  if (v65)
                  {
                    v66 = +[NUChannelAudioMediaFormat genericAudioFormat];
                    v67 = [_NUMediaGeometry alloc];
                    if (v63)
                    {
                      [v63 timeRange];
                    }

                    else
                    {
                      memset(&v99[3], 0, 32);
                    }

                    *buf = *(&v99[3] + 8);
                    *&buf[16] = *(&v99[4] + 1);
                    v71 = [(_NUMediaGeometry *)v67 initWithDuration:buf];
                    v72 = [[_NUVideoAssetMedia alloc] initWithVideoAsset:v55 track:v63 format:v66 geometry:v71];
                    v73 = v57;
                    v74 = v72;
                    v75 = @"audio";
                  }

                  else
                  {
                    v68 = [v63 mediaType];
                    v69 = [v68 isEqualToString:v96];

                    if (!v69)
                    {
                      continue;
                    }

                    v66 = +[NUChannelMetadataMediaFormat videoMetadataFormat];
                    v70 = [_NUMediaGeometry alloc];
                    if (v63)
                    {
                      [v63 timeRange];
                    }

                    else
                    {
                      memset(v99, 0, 32);
                    }

                    *buf = *(v99 + 8);
                    *&buf[16] = *(&v99[1] + 1);
                    v71 = [(_NUMediaGeometry *)v70 initWithDuration:buf];
                    v72 = [[_NUVideoAssetMedia alloc] initWithVideoAsset:v55 track:v63 format:v66 geometry:v71];
                    v73 = v57;
                    v74 = v72;
                    v75 = @"metadata";
                  }

                  [v73 setObject:v74 forKeyedSubscript:v75];
                }

                v59 = [obj countByEnumeratingWithState:&v100 objects:v121 count:16];
                if (!v59)
                {
LABEL_36:

                  v76 = [_NUContainerMedia alloc];
                  v77 = [(_NUMedia *)v83 geometry];
                  v78 = [(_NUContainerMedia *)v76 initWithContainerType:2 components:v57 geometry:v77];

                  v29 = [[_NUAssetContainerMedia alloc] initWithAsset:v55 containerMedia:v78];
                  v6 = v88;
                  v9 = v89;
                  v38 = v87;
                  v27 = v47;
                  v37 = v91;
                  v34 = v92;
                  v32 = v90;
                  goto LABEL_49;
                }
              }
            }

            v32 = v90;
            [NUError errorWithCode:1 reason:@"Failed to evaluate video properties" object:v29 underlyingError:v90];
            *a4 = v29 = 0;
            v34 = v92;
LABEL_49:
          }

          else
          {
            [NUError errorWithCode:1 reason:@"Failed to prepare image source node" object:v5 underlyingError:v32];
            *a4 = v29 = 0;
          }

          v22 = v94;
        }

        else
        {
          [NUError errorWithCode:1 reason:@"Failed to load main video track" object:v5 underlyingError:v35];
          *a4 = v29 = 0;
          v32 = v35;
          v22 = v94;
          v34 = 0;
        }

        v33 = v93;
      }

      else
      {
        [NUError errorWithCode:1 reason:@"Failed to load AVAsset" object:v5 underlyingError:v32];
        *a4 = v29 = 0;
        v22 = v94;
      }

      v30 = v32;
    }

    else
    {
      *a4 = [NUError errorWithCode:1 reason:@"Failed to create source node" object:v5 underlyingError:v30];
    }

    v25 = v30;
  }

  else
  {
    [NUError errorWithCode:1 reason:@"Failed to create source container node" object:v5 underlyingError:v25];
    *a4 = v29 = 0;
  }

  v10 = v25;
LABEL_55:

  return v29;
}

- (_NUVideoAsset)initWithVideoURL:(id)a3 identifier:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    v12 = NUAssertLogger_10839();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "fileURL != nil"];
      *buf = 138543362;
      v46 = v13;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v15 = NUAssertLogger_10839();
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v16)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        v29 = [v27 callStackSymbols];
        v30 = [v29 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v26;
        v47 = 2114;
        v48 = v30;
        _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v16)
    {
      v17 = [MEMORY[0x1E696AF00] callStackSymbols];
      v18 = [v17 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v18;
      _os_log_error_impl(&dword_1C0184000, v15, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUVideoAsset initWithVideoURL:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 366, @"Invalid parameter not satisfying: %s", v31, v32, v33, v34, "fileURL != nil");
  }

  v8 = v7;
  if (!v7)
  {
    v19 = NUAssertLogger_10839();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "identifier != nil"];
      *buf = 138543362;
      v46 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v21 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_10839();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (v21)
    {
      if (v23)
      {
        v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v36 = MEMORY[0x1E696AF00];
        v37 = v35;
        v38 = [v36 callStackSymbols];
        v39 = [v38 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v46 = v35;
        v47 = 2114;
        v48 = v39;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      v24 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [v24 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v46 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[_NUVideoAsset initWithVideoURL:identifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 367, @"Invalid parameter not satisfying: %s", v40, v41, v42, v43, "identifier != nil");
  }

  v44.receiver = self;
  v44.super_class = _NUVideoAsset;
  v9 = [(_NUAsset *)&v44 initWithIdentifier:v7];
  videoURL = v9->_videoURL;
  v9->_videoURL = v6;

  return v9;
}

- (_NUVideoAsset)initWithVideoURL:(id)a3
{
  v4 = a3;
  v5 = [v4 absoluteString];
  v6 = [(_NUVideoAsset *)self initWithVideoURL:v4 identifier:v5];

  return v6;
}

- (_NUVideoAsset)initWithIdentifier:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
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
        dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
      }

      goto LABEL_8;
    }

    if (v12 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_10855);
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
  _NUAssertFailHandler("[_NUVideoAsset initWithIdentifier:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/API/NUAsset.m", 358, @"Initializer not available: [%@ %@], use designated initializer instead.", v27, v28, v29, v30, v26);
}

@end