@interface MPCVocalAttenuationModelProviderImplementation
- (BOOL)isValidEspressoFile:(id)a3;
- (BOOL)isValidModelFile:(id)a3;
- (BOOL)isValidPlistModelFile:(id)a3;
- (BOOL)moveModelFromURL:(id)a3 toURL:(id)a4;
- (BOOL)validateModelAtURL:(id)a3;
- (MPCVocalAttenuationModelProviderImplementation)init;
- (NSString)basePath;
- (NSString)modelName;
- (NSString)plistPath;
- (id)_setupPaths;
- (id)baseDirectoryURL;
- (id)baseModelDirectoryURL;
- (id)bundleModelDirectoryURL;
- (id)directoriesAtURL:(id)a3;
- (id)latestModelDirectoryAtURL:(id)a3;
- (id)remoteModelDirectoryURL;
- (void)prepareWithCompletion:(id)a3;
- (void)purgeModelAtURL:(id)a3;
- (void)purgeSideLoadedModelDirectoriesAtURL:(id)a3;
@end

@implementation MPCVocalAttenuationModelProviderImplementation

- (id)baseDirectoryURL
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFF8];
  v4 = MSVMobileHomeDirectory();
  v23[0] = v4;
  v23[1] = @"Media/Espresso";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v6 = [v3 fileURLWithPathComponents:v5];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8 isDirectory:0];

  if ((v9 & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v6 path];
    v16 = 0;
    v12 = [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v16];
    v13 = v16;

    if ((v12 & 1) == 0)
    {
      v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543874;
        v18 = self;
        v19 = 2114;
        v20 = v6;
        v21 = 2114;
        v22 = v13;
        _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_FAULT, "[AP] - %{public}@ - Failed to create directory at URL: %{public}@ error: %{public}@", buf, 0x20u);
      }
    }
  }

  return v6;
}

- (id)_setupPaths
{
  v108 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:2];
  v4 = [(MPCVocalAttenuationModelProviderImplementation *)self baseDirectoryURL];
  [(MPCVocalAttenuationModelProviderImplementation *)self purgeModelAtURL:v4];
  v5 = [(MPCVocalAttenuationModelProviderImplementation *)self baseModelDirectoryURL];
  v6 = [(MPCVocalAttenuationModelProviderImplementation *)self latestModelDirectoryAtURL:v5];
  v7 = [(MPCVocalAttenuationModelProviderImplementation *)self remoteModelDirectoryURL];
  v97 = self;
  v8 = [(MPCVocalAttenuationModelProviderImplementation *)self bundleModelDirectoryURL];
  v9 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v10 = [v9 shouldUseSideLoadedVocalAttenuationModel];

  v11 = [MEMORY[0x1E69708A8] standardUserDefaults];
  v12 = [v11 shouldUseRemoteVocalAttenuationModel];

  if (v10 && v6)
  {
    [v3 addObject:v6];
    v13 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = [v6 path];
      *buf = 138543362;
      v105 = v14;
      _os_log_impl(&dword_1C5C61000, v13, OS_LOG_TYPE_DEBUG, "[AP] - MPCModelProvider - sideLoadedModelDirectory: %{public}@", buf, 0xCu);
    }
  }

  if (v7)
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  if (v15 == 1)
  {
    [v3 addObject:v7];
    v16 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = [v7 path];
      *buf = 138543362;
      v105 = v17;
      _os_log_impl(&dword_1C5C61000, v16, OS_LOG_TYPE_DEBUG, "[AP] - MPCModelProvider - remoteModelDirectoryURL: %{public}@", buf, 0xCu);
    }
  }

  if (v12)
  {
    if (!v5)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (v5)
    {
      v18 = v10;
    }

    else
    {
      v18 = 0;
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  [v3 addObject:v5];
  v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
  {
    v20 = [v5 path];
    *buf = 138543362;
    v105 = v20;
    _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_DEBUG, "[AP] - MPCModelProvider - baseModelDirectoryURL: %{public}@", buf, 0xCu);
  }

LABEL_23:
  if (v8)
  {
    [v3 addObject:v8];
    v21 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = [v8 path];
      *buf = 138543362;
      v105 = v22;
      _os_log_impl(&dword_1C5C61000, v21, OS_LOG_TYPE_DEBUG, "[AP] - MPCModelProvider - bundleModelDirectoryURL: %{public}@", buf, 0xCu);
    }
  }

  if ([v3 count])
  {
    v95 = v5;
    v96 = v8;
    v93 = v4;
    v94 = v7;
    v91 = v3;
    v92 = v6;
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v23 = v3;
    v24 = [v23 countByEnumeratingWithState:&v98 objects:v103 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v99;
LABEL_30:
      v27 = 0;
      while (1)
      {
        if (*v99 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v98 + 1) + 8 * v27);
        v29 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v30 = [v28 path];
          *buf = 138543362;
          v105 = v30;
          _os_log_impl(&dword_1C5C61000, v29, OS_LOG_TYPE_DEFAULT, "[AP] - MPCModelProvider - Validating model in: %{public}@", buf, 0xCu);
        }

        v31 = [(MPCVocalAttenuationModelProviderImplementation *)v97 validateModelAtURL:v28];
        v32 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        v33 = v32;
        if (v31)
        {
          break;
        }

        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v34 = [v28 path];
          *buf = 138543362;
          v105 = v34;
          _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_INFO, "[AP] - MPCModelProvider - Invalid model in: %{public}@:", buf, 0xCu);
        }

        if (v25 == ++v27)
        {
          v25 = [v23 countByEnumeratingWithState:&v98 objects:v103 count:16];
          if (v25)
          {
            goto LABEL_30;
          }

          goto LABEL_40;
        }
      }

      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v35 = [v28 path];
        *buf = 138543362;
        v105 = v35;
        _os_log_impl(&dword_1C5C61000, v33, OS_LOG_TYPE_DEFAULT, "[AP] - MPCModelProvider - Valid model found in: %{public}@:", buf, 0xCu);
      }

      v36 = v28;
      v4 = v93;
      v5 = v95;
      v8 = v96;
      if (v36)
      {
        if ([v36 isEqual:v96] & 1) != 0 || (objc_msgSend(v36, "isEqual:", v95))
        {
          v3 = v91;
        }

        else
        {
          v55 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          v3 = v91;
          if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
          {
            v56 = [v95 path];
            *buf = 138543362;
            v105 = v56;
            _os_log_impl(&dword_1C5C61000, v55, OS_LOG_TYPE_DEFAULT, "[AP] - MPCModelProvider - Purging models in %{public}@", buf, 0xCu);
          }

          [(MPCVocalAttenuationModelProviderImplementation *)v97 purgeModelAtURL:v95];
          v57 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
          {
            v58 = [v36 path];
            v59 = [v95 path];
            *buf = 138543618;
            v105 = v58;
            v106 = 2114;
            v107 = v59;
            _os_log_impl(&dword_1C5C61000, v57, OS_LOG_TYPE_DEFAULT, "[AP] - MPCModelProvider - Moving new model: %{public}@ -> %{public}@", buf, 0x16u);
          }

          if ([(MPCVocalAttenuationModelProviderImplementation *)v97 moveModelFromURL:v36 toURL:v95])
          {
            v60 = v95;

            v36 = v60;
          }

          v61 = [MEMORY[0x1E69708A8] standardUserDefaults];
          v62 = [v61 shouldPurgeSideLoadedVocalAttenuationModels];

          if (v62)
          {
            v63 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
            if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
            {
              v64 = [v95 path];
              *buf = 138543362;
              v105 = v64;
              _os_log_impl(&dword_1C5C61000, v63, OS_LOG_TYPE_DEFAULT, "[AP] - MPCModelProvider - Purging side-loaded directories in %{public}@", buf, 0xCu);
            }

            [(MPCVocalAttenuationModelProviderImplementation *)v97 purgeSideLoadedModelDirectoriesAtURL:v95];
          }
        }

        v37 = v36;
        v38 = [objc_opt_self() _filePathsForModelAtURL:v37];
        v39 = [v38 count];
        v40 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        v41 = v40;
        if (v39 == 3)
        {
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            v42 = [v38 valueForKey:@"path"];
            *buf = 138543618;
            v105 = v37;
            v106 = 2114;
            v107 = v42;
            _os_log_impl(&dword_1C5C61000, v41, OS_LOG_TYPE_DEFAULT, "[AP] - MPCVAModel - Found model files urls at %{public}@: %{public}@", buf, 0x16u);
          }

          v43 = [v38 msv_filter:&__block_literal_global_900];
          v44 = [v43 firstObject];

          v45 = [objc_alloc(MEMORY[0x1E695DF90]) initWithContentsOfURL:v44];
          v46 = [(MPCVocalAttenuationModel *)v44 path];
          v47 = [v46 containsString:@"/System/Library/PrivateFrameworks/MediaPlaybackCore.framework/"];

          if (v47)
          {
            v41 = 0;
          }

          else
          {
            v65 = [(MPCVocalAttenuationModel *)v37 path];
            [v45 setObject:v65 forKeyedSubscript:@"ModelNetPathBase"];

            v66 = [v45 objectForKeyedSubscript:@"ModelNetPath"];
            v67 = [v66 lastPathComponent];
            [v45 setObject:v67 forKeyedSubscript:@"ModelNetPath"];

            v102 = 0;
            [v45 writeToURL:v44 error:&v102];
            v41 = v102;
            if (v41)
            {
              v68 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543618;
                v105 = v44;
                v106 = 2114;
                v107 = v41;
                _os_log_impl(&dword_1C5C61000, v68, OS_LOG_TYPE_ERROR, "[AP] - MPCVAModel - Error writing plist to url %{public}@: %{public}@", buf, 0x16u);
              }
            }
          }

          v54 = objc_alloc_init(MPCVocalAttenuationModel);
          v69 = [(MPCVocalAttenuationModel *)v44 path];
          [(MPCVocalAttenuationModel *)v54 setPlistPath:v69];

          [(MPCVocalAttenuationModel *)v54 setFiles:v38];
          v70 = [v45 objectForKeyedSubscript:@"TaskID"];
          [(MPCVocalAttenuationModel *)v54 setIdentifier:v70];

          v71 = [v45 objectForKeyedSubscript:@"ModelNetPathBase"];
          [(MPCVocalAttenuationModel *)v54 setBasePath:v71];

          v72 = [v45 objectForKeyedSubscript:@"BlockSize"];
          if (v72)
          {
            v73 = [v45 objectForKeyedSubscript:@"BlockSize"];
            -[MPCVocalAttenuationModel setBlockSize:](v54, "setBlockSize:", [v73 integerValue]);
          }

          else
          {
            [(MPCVocalAttenuationModel *)v54 setBlockSize:-1];
          }

          v74 = [v45 objectForKeyedSubscript:@"BatchSize"];
          if (v74)
          {
            v75 = [v45 objectForKeyedSubscript:@"BatchSize"];
            -[MPCVocalAttenuationModel setBatchSize:](v54, "setBatchSize:", [v75 integerValue]);
          }

          else
          {
            [(MPCVocalAttenuationModel *)v54 setBatchSize:1];
          }

          v76 = [v45 objectForKeyedSubscript:@"SampleRate"];
          if (v76)
          {
            v77 = [v45 objectForKeyedSubscript:@"SampleRate"];
            -[MPCVocalAttenuationModel setSampleRate:](v54, "setSampleRate:", [v77 integerValue]);
          }

          else
          {
            [(MPCVocalAttenuationModel *)v54 setSampleRate:-1];
          }

          v78 = [v45 objectForKeyedSubscript:@"LookaheadSize"];
          if (v78)
          {
            v79 = [v45 objectForKeyedSubscript:@"LookaheadSize"];
            -[MPCVocalAttenuationModel setLookaheadSize:](v54, "setLookaheadSize:", [v79 integerValue]);
          }

          else
          {
            [(MPCVocalAttenuationModel *)v54 setLookaheadSize:-1];
          }

          v80 = [v45 objectForKeyedSubscript:@"TaskIteration"];
          if (v80)
          {
            v81 = [v45 objectForKeyedSubscript:@"TaskIteration"];
            -[MPCVocalAttenuationModel setTaskIteration:](v54, "setTaskIteration:", [v81 integerValue]);
          }

          else
          {
            [(MPCVocalAttenuationModel *)v54 setTaskIteration:1];
          }

          if (v54 && (sampleRate = v54->_sampleRate) != 0 && (blockSize = v54->_blockSize) != 0 && (lookaheadSize = v54->_lookaheadSize) != 0)
          {
            v85 = (lookaheadSize + blockSize) / sampleRate;
          }

          else
          {
            v85 = 0.0;
          }

          [(MPCVocalAttenuationModel *)v54 setProcessingDelay:v85];

          v7 = v94;
          v5 = v95;
        }

        else
        {
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v105 = v37;
            v106 = 2114;
            v107 = 0;
            _os_log_impl(&dword_1C5C61000, v41, OS_LOG_TYPE_ERROR, "[AP] - MPCVAModel - Error retrieving model files urls at %{public}@: %{public}@", buf, 0x16u);
          }

          v54 = 0;
        }

        model = v97->_model;
        v97->_model = v54;

        v87 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
        if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
        {
          v88 = v97->_model;
          *buf = 138543362;
          v105 = v88;
          _os_log_impl(&dword_1C5C61000, v87, OS_LOG_TYPE_DEFAULT, "[AP] - MPCModelProvider - Model %{public}@", buf, 0xCu);
        }

        v53 = 0;
        v89 = 2;
        if (!v97->_model)
        {
          v89 = 3;
        }

        v97->_state = v89;
        v8 = v96;
        goto LABEL_100;
      }
    }

    else
    {
LABEL_40:

      v4 = v93;
      v5 = v95;
      v8 = v96;
    }

    v97->_state = 3;
    v48 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      v49 = [v23 valueForKey:@"path"];
      v50 = [v49 msv_compactDescription];
      *buf = 138412290;
      v105 = v50;
      _os_log_impl(&dword_1C5C61000, v48, OS_LOG_TYPE_ERROR, "[AP] - MPCModelProvider - No valid models found in %@", buf, 0xCu);
    }

    v51 = MEMORY[0x1E696ABC0];
    v37 = [v23 valueForKey:@"path"];
    v52 = [(MPCVocalAttenuationModel *)v37 msv_compactDescription];
    v53 = [v51 msv_errorWithDomain:@"MPCSuntoryError" code:102 debugDescription:{@"No valid models found in %@", v52}];

    v3 = v91;
LABEL_100:

    v6 = v92;
  }

  else
  {
    v97->_state = 3;
    v53 = [MEMORY[0x1E696ABC0] msv_errorWithDomain:@"MPCSuntoryError" code:101 debugDescription:@"No vocal attenuation model available"];
  }

  return v53;
}

- (id)baseModelDirectoryURL
{
  v23[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFF8];
  v4 = MSVMobileHomeDirectory();
  v23[0] = v4;
  v23[1] = @"Media/Espresso/Model";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v6 = [v3 fileURLWithPathComponents:v5];

  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 path];
  v9 = [v7 fileExistsAtPath:v8 isDirectory:0];

  if ((v9 & 1) == 0)
  {
    v10 = [MEMORY[0x1E696AC08] defaultManager];
    v11 = [v6 path];
    v16 = 0;
    v12 = [v10 createDirectoryAtPath:v11 withIntermediateDirectories:1 attributes:0 error:&v16];
    v13 = v16;

    if ((v12 & 1) == 0)
    {
      v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 138543874;
        v18 = self;
        v19 = 2114;
        v20 = v6;
        v21 = 2114;
        v22 = v13;
        _os_log_impl(&dword_1C5C61000, v14, OS_LOG_TYPE_FAULT, "[AP] - %{public}@ - Failed to create directory at URL: %{public}@ error: %{public}@", buf, 0x20u);
      }
    }
  }

  return v6;
}

- (MPCVocalAttenuationModelProviderImplementation)init
{
  v6.receiver = self;
  v6.super_class = MPCVocalAttenuationModelProviderImplementation;
  v2 = [(MPCVocalAttenuationModelProviderImplementation *)&v6 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.MediaPlaybackCore.VAModelProviderCreationQueue", 0);
    creationQueue = v2->_creationQueue;
    v2->_creationQueue = v3;
  }

  return v2;
}

- (id)remoteModelDirectoryURL
{
  v2 = [MEMORY[0x1E69708A8] standardUserDefaults];
  [v2 shouldUseRemoteVocalAttenuationModel];

  return 0;
}

- (id)bundleModelDirectoryURL
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 URLForResource:@"czutbtg4y9" withExtension:0];

  return v3;
}

- (NSString)modelName
{
  model = self->_model;
  if (model)
  {
    return model->_identifier;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isValidEspressoFile:(id)a3
{
  v3 = a3;
  v4 = [v3 lastPathComponent];
  if ([v4 isEqualToString:@"vi-nnet.mil"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 lastPathComponent];
    v5 = [v6 isEqualToString:@"vi-nnet.weight.bin"];
  }

  return v5;
}

- (BOOL)isValidPlistModelFile:(id)a3
{
  v4 = a3;
  v5 = [v4 lastPathComponent];
  v6 = [v5 containsString:@"nnet"];
  if ((v6 & 1) != 0 || ([v4 lastPathComponent], v3 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "containsString:", @"auxf")))
  {
    v7 = [v4 pathExtension];
    v8 = [v7 isEqualToString:@"plist"];

    if (v6)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_7:
  return v8;
}

- (BOOL)isValidModelFile:(id)a3
{
  v4 = a3;
  v5 = [(MPCVocalAttenuationModelProviderImplementation *)self isValidPlistModelFile:v4]|| [(MPCVocalAttenuationModelProviderImplementation *)self isValidEspressoFile:v4];

  return v5;
}

- (BOOL)moveModelFromURL:(id)a3 toURL:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v30 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v36 = 0;
  v8 = [v7 contentsOfDirectoryAtURL:v6 includingPropertiesForKeys:0 options:4 error:&v36];
  v9 = v36;
  if (v9)
  {
    v10 = v9;
    v11 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [v6 path];
      *buf = 138543618;
      v38 = v12;
      v39 = 2114;
      v40 = v10;
      _os_log_impl(&dword_1C5C61000, v11, OS_LOG_TYPE_ERROR, "[AP] - MPCModelProvider - Error getting content of directory at URL %{public}@: %{public}@", buf, 0x16u);
    }

    v13 = 0;
  }

  else
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = v8;
    v14 = [v11 countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v14)
    {
      v15 = v14;
      v28 = v8;
      v29 = v6;
      v10 = 0;
      v16 = *v33;
      while (2)
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v33 != v16)
          {
            objc_enumerationMutation(v11);
          }

          v18 = *(*(&v32 + 1) + 8 * i);
          if ([(MPCVocalAttenuationModelProviderImplementation *)self isValidModelFile:v18, v28, v29])
          {
            v19 = v18;
            v20 = MEMORY[0x1E695DFF8];
            v21 = [v19 lastPathComponent];
            v22 = [v20 fileURLWithPath:v21 relativeToURL:v30];

            v31 = 0;
            LOBYTE(v21) = [v7 moveItemAtURL:v19 toURL:v22 error:&v31];
            v23 = v31;
            v10 = v23;
            if ((v21 & 1) == 0 && v23)
            {
              v24 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                v25 = [v19 path];
                v26 = [v22 path];
                *buf = 138543874;
                v38 = v25;
                v39 = 2114;
                v40 = v26;
                v41 = 2114;
                v42 = v10;
                _os_log_impl(&dword_1C5C61000, v24, OS_LOG_TYPE_ERROR, "[AP] - MPCModelProvider - Error moving file %{public}@ -> %{public}@: %{public}@", buf, 0x20u);
              }

              v13 = 0;
              goto LABEL_20;
            }
          }
        }

        v15 = [v11 countByEnumeratingWithState:&v32 objects:v43 count:16];
        v13 = 1;
        if (v15)
        {
          continue;
        }

        break;
      }

LABEL_20:
      v8 = v28;
      v6 = v29;
    }

    else
    {
      v10 = 0;
      v13 = 1;
    }
  }

  return v13;
}

- (void)purgeSideLoadedModelDirectoriesAtURL:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(MPCVocalAttenuationModelProviderImplementation *)self directoriesAtURL:a3];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v5)
  {
    v7 = v5;
    v24 = *v28;
    v23 = *MEMORY[0x1E696A328];
    v8 = *MEMORY[0x1E696A360];
    *&v6 = 138543618;
    v21 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        v35[0] = v23;
        v35[1] = v8;
        v36[0] = @"mobile";
        v36[1] = @"mobile";
        v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:v35 count:{2, v21}];
        v12 = [v10 path];
        v26 = 0;
        v13 = [v4 setAttributes:v11 ofItemAtPath:v12 error:&v26];
        v14 = v26;

        if ((v13 & 1) == 0 && v14)
        {
          v15 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = [v10 path];
            *buf = v21;
            v32 = v16;
            v33 = 2114;
            v34 = v14;
            _os_log_impl(&dword_1C5C61000, v15, OS_LOG_TYPE_ERROR, "[AP] - MPCModelProvider - Error changing attributes for directory %{public}@: %{public}@", buf, 0x16u);
          }
        }

        v25 = v14;
        v17 = [v4 removeItemAtURL:v10 error:&v25];
        v18 = v25;

        if ((v17 & 1) == 0 && v18)
        {
          v19 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = [v10 path];
            *buf = v21;
            v32 = v20;
            v33 = 2114;
            v34 = v18;
            _os_log_impl(&dword_1C5C61000, v19, OS_LOG_TYPE_ERROR, "[AP] - MPCModelProvider - Error removing  directory %{public}@: %{public}@", buf, 0x16u);
          }
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v7);
  }
}

- (void)purgeModelAtURL:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v30 = 0;
  v5 = [v4 contentsOfDirectoryAtURL:v3 includingPropertiesForKeys:0 options:4 error:&v30];
  v6 = v30;
  if (v6)
  {
    v7 = v6;
    v8 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [v3 path];
      *buf = 138543618;
      v33 = v9;
      v34 = 2114;
      v35 = v7;
      _os_log_impl(&dword_1C5C61000, v8, OS_LOG_TYPE_ERROR, "[AP] - MPCModelProvider - Error getting content of directory at URL %{public}@: %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = v5;
    v10 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v22 = v5;
      v23 = v3;
      v7 = 0;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          v25 = 0;
          v15 = [v14 path];
          v16 = [v4 fileExistsAtPath:v15 isDirectory:&v25];
          v17 = v25;

          if (v16)
          {
            if ((v17 & 1) == 0)
            {

              v24 = 0;
              v18 = [v4 removeItemAtURL:v14 error:&v24];
              v19 = v24;
              v7 = v19;
              if ((v18 & 1) == 0)
              {
                if (v19)
                {
                  v20 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    v21 = [v14 path];
                    *buf = 138543618;
                    v33 = v21;
                    v34 = 2114;
                    v35 = v7;
                    _os_log_impl(&dword_1C5C61000, v20, OS_LOG_TYPE_ERROR, "[AP] - MPCModelProvider - Error removing  file %{public}@: %{public}@", buf, 0x16u);
                  }
                }
              }
            }
          }
        }

        v11 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v11);
      v5 = v22;
      v3 = v23;
    }

    else
    {
      v7 = 0;
    }
  }
}

- (BOOL)validateModelAtURL:(id)a3
{
  v63[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  v5 = *MEMORY[0x1E695DC30];
  v6 = *MEMORY[0x1E695DB78];
  v63[0] = *MEMORY[0x1E695DC30];
  v63[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v63 count:2];
  v36 = v4;
  v37 = v3;
  v8 = [v4 enumeratorAtURL:v3 includingPropertiesForKeys:v7 options:4 errorHandler:0];

  v41 = [MEMORY[0x1E695DF70] array];
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v53;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v53 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v52 + 1) + 8 * i);
        v51 = 0;
        [v14 getResourceValue:&v51 forKey:v6 error:0];
        v15 = v51;
        if (([v15 BOOLValue] & 1) == 0)
        {
          v50 = 0;
          [v14 getResourceValue:&v50 forKey:v5 error:0];
          v16 = v50;
          if ([v16 hasPrefix:@"."])
          {
            [v9 skipDescendants];
          }

          else
          {
            [v41 addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v11);
  }

  if ([v41 count])
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v17 = [(MPCVocalAttenuationModelProviderImplementation *)self modelFileExtensions];
    v18 = [v17 countByEnumeratingWithState:&v46 objects:v61 count:16];
    if (!v18)
    {
      v30 = 1;
      goto LABEL_41;
    }

    v19 = v18;
    obj = v17;
    v39 = *v47;
LABEL_16:
    v20 = 0;
LABEL_17:
    if (*v47 != v39)
    {
      objc_enumerationMutation(obj);
    }

    v21 = *(*(&v46 + 1) + 8 * v20);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v22 = v41;
    v23 = [v22 countByEnumeratingWithState:&v42 objects:v60 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = *v43;
LABEL_21:
      v26 = 0;
      while (1)
      {
        if (*v43 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v42 + 1) + 8 * v26);
        v28 = [v27 pathExtension];
        if ([v21 isEqualToString:v28])
        {
          v29 = [(MPCVocalAttenuationModelProviderImplementation *)self isValidModelFile:v27];

          if (v29)
          {

            if (++v20 != v19)
            {
              goto LABEL_17;
            }

            v17 = obj;
            v19 = [obj countByEnumeratingWithState:&v46 objects:v61 count:16];
            v30 = 1;
            if (v19)
            {
              goto LABEL_16;
            }

LABEL_41:
            v33 = v37;
            goto LABEL_42;
          }
        }

        else
        {
        }

        if (v24 == ++v26)
        {
          v24 = [v22 countByEnumeratingWithState:&v42 objects:v60 count:16];
          if (v24)
          {
            goto LABEL_21;
          }

          break;
        }
      }
    }

    v31 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v57 = v21;
      v58 = 2114;
      v59 = v22;
      _os_log_impl(&dword_1C5C61000, v31, OS_LOG_TYPE_ERROR, "[AP] - MPCModelProvider - Missing model file for extension %{public}@ - Files:%{public}@", buf, 0x16u);
    }

    v30 = 0;
    v32 = v36;
    v33 = v37;
    v17 = obj;
  }

  else
  {
    v17 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v30 = 0;
      goto LABEL_41;
    }

    v33 = v37;
    v34 = [v37 path];
    *buf = 138543362;
    v57 = v34;
    _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, "[AP] - MPCModelProvider - No model files in %{public}@", buf, 0xCu);

    v30 = 0;
LABEL_42:
    v32 = v36;
  }

  return v30;
}

- (id)directoriesAtURL:(id)a3
{
  v3 = MEMORY[0x1E696AC08];
  v4 = a3;
  v5 = [v3 defaultManager];
  v9 = 0;
  v6 = [v5 contentsOfDirectoryAtURL:v4 includingPropertiesForKeys:0 options:4 error:&v9];

  if (v9)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v7 = [v6 msv_filter:&__block_literal_global_28];
  }

  return v7;
}

- (id)latestModelDirectoryAtURL:(id)a3
{
  v3 = [(MPCVocalAttenuationModelProviderImplementation *)self directoriesAtURL:a3];
  if ([v3 count])
  {
    if ([v3 count] < 2)
    {
      v5 = [v3 firstObject];
    }

    else
    {
      v4 = [v3 sortedArrayUsingComparator:&__block_literal_global_1014];
      v5 = [v4 lastObject];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __76__MPCVocalAttenuationModelProviderImplementation_latestModelDirectoryAtURL___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = 0;
  v4 = *MEMORY[0x1E695DAA8];
  v5 = a3;
  [a2 getResourceValue:&v10 forKey:v4 error:0];
  v9 = 0;
  v6 = v10;
  [v5 getResourceValue:&v9 forKey:v4 error:0];

  v7 = [v6 compare:v9];
  return v7;
}

- (void)prepareWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(MPCVocalAttenuationModelProviderImplementation *)self state];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v4[2](v4, [(MPCVocalAttenuationModelProviderImplementation *)self state], 0);
    }

    else if (v5 == 3)
    {
      v8 = [(MPCVocalAttenuationModelProviderImplementation *)self state];
      v9 = [(MPCVocalAttenuationModelProviderImplementation *)self loadingError];
      (v4)[2](v4, v8, v9);
    }
  }

  else
  {
    if (!v5)
    {
      [(MPCVocalAttenuationModelProviderImplementation *)self setLoadingError:0];
      [(MPCVocalAttenuationModelProviderImplementation *)self setModel:0];
      creationQueue = self->_creationQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __72__MPCVocalAttenuationModelProviderImplementation_prepareWithCompletion___block_invoke;
      block[3] = &unk_1E8239170;
      block[4] = self;
      v14 = v4;
      dispatch_async(creationQueue, block);
      v7 = v14;
      goto LABEL_9;
    }

    if (v5 == 1)
    {
      v6 = self->_creationQueue;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __72__MPCVocalAttenuationModelProviderImplementation_prepareWithCompletion___block_invoke_3;
      v11[3] = &unk_1E8239170;
      v11[4] = self;
      v12 = v4;
      dispatch_async(v6, v11);
      v7 = v12;
LABEL_9:
    }
  }
}

void __72__MPCVocalAttenuationModelProviderImplementation_prepareWithCompletion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _setupPaths];
  [*(a1 + 32) setLoadingError:v2];

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __72__MPCVocalAttenuationModelProviderImplementation_prepareWithCompletion___block_invoke_2;
  v4[3] = &unk_1E8239170;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  dispatch_async(MEMORY[0x1E69E96A0], v4);
}

uint64_t __72__MPCVocalAttenuationModelProviderImplementation_prepareWithCompletion___block_invoke_3(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) state];
  v3 = *(v1 + 16);

  return v3(v1, v2, 0);
}

void __72__MPCVocalAttenuationModelProviderImplementation_prepareWithCompletion___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) state];
  v4 = [*(a1 + 32) loadingError];
  (*(v2 + 16))(v2, v3, v4);
}

- (NSString)basePath
{
  model = self->_model;
  if (model)
  {
    return model->_basePath;
  }

  else
  {
    return 0;
  }
}

- (NSString)plistPath
{
  model = self->_model;
  if (model)
  {
    return model->_plistPath;
  }

  else
  {
    return 0;
  }
}

@end