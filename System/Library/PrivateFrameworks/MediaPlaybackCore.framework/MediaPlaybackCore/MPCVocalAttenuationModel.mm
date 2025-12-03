@interface MPCVocalAttenuationModel
+ (id)_filePathsForModelAtURL:(id)l;
+ (id)_plistForModelAtURL:(id)l error:(id *)error;
- (id)description;
@end

@implementation MPCVocalAttenuationModel

- (id)description
{
  v3 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4];
  if (self)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ID: %@", self->_identifier];
    [v3 addObject:v4];

    if (self->_blockSize)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"BlockSize: %lu", self->_blockSize];
      [v3 addObject:v5];
    }

    batchSize = self->_batchSize;
  }

  else
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ID: %@", 0];
    [v3 addObject:v22];

    batchSize = 0;
  }

  batchSize = [MEMORY[0x1E696AEC0] stringWithFormat:@"BatchSize: %lu", batchSize];
  [v3 addObject:batchSize];

  if (self)
  {
    if (self->_sampleRate)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SampleRate: %luHz", self->_sampleRate];
      [v3 addObject:v8];
    }

    if (self->_lookaheadSize)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"LookaheadSize: %lu", self->_lookaheadSize];
      [v3 addObject:v9];
    }

    if (self->_taskIteration)
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TaskIteration: %lu", self->_taskIteration];
      [v3 addObject:v10];
    }

    processingDelay = self->_processingDelay;
    if (processingDelay > 0.0)
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Delay: %3.1fms", processingDelay * 1000.0];
      [v3 addObject:v12];
    }

    basePath = self->_basePath;
  }

  else
  {
    basePath = 0;
  }

  basePath = [MEMORY[0x1E696AEC0] stringWithFormat:@"BasePath: %@", basePath];
  [v3 addObject:basePath];

  if (self)
  {
    plistPath = self->_plistPath;
  }

  else
  {
    plistPath = 0;
  }

  plistPath = [MEMORY[0x1E696AEC0] stringWithFormat:@"Plist: %@", plistPath];
  [v3 addObject:plistPath];

  v17 = MEMORY[0x1E696AEC0];
  v18 = objc_opt_class();
  msv_compactDescription = [v3 msv_compactDescription];
  v20 = [v17 stringWithFormat:@"<%p - %@> - %@", self, v18, msv_compactDescription];

  return v20;
}

+ (id)_filePathsForModelAtURL:(id)l
{
  v29[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v5 = *MEMORY[0x1E695DC30];
  v6 = *MEMORY[0x1E695DB78];
  v29[0] = *MEMORY[0x1E695DC30];
  v29[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];
  v19 = defaultManager;
  v20 = lCopy;
  v8 = [defaultManager enumeratorAtURL:lCopy includingPropertiesForKeys:v7 options:4 errorHandler:0];

  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v25;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v24 + 1) + 8 * i);
        v23 = 0;
        [v14 getResourceValue:&v23 forKey:v6 error:0];
        v15 = v23;
        if (([v15 BOOLValue] & 1) == 0)
        {
          v22 = 0;
          [v14 getResourceValue:&v22 forKey:v5 error:0];
          v16 = v22;
          if ([v16 hasPrefix:@"."])
          {
            [v9 skipDescendants];
          }

          else
          {
            [array addObject:v14];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v11);
  }

  v17 = [array copy];

  return v17;
}

+ (id)_plistForModelAtURL:(id)l error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  lCopy = l;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [lCopy path];
  v21 = 0;
  v8 = [defaultManager contentsOfDirectoryAtPath:path error:&v21];
  v9 = v21;

  if (!v9)
  {
    v13 = [v8 msv_filter:&__block_literal_global_39];

    if ([v13 count])
    {
      if ([v13 count] < 2)
      {
        firstObject = [v13 firstObject];
        v12 = [MEMORY[0x1E695DFF8] URLWithString:firstObject relativeToURL:lCopy];

        goto LABEL_14;
      }

      v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = [v13 count];
        *buf = 134218242;
        v23 = v15;
        v24 = 2114;
        v25 = lCopy;
        v16 = "[AP] - MPCVAModel - More than one [%ld] plist found at %{public}@";
        v17 = v14;
        v18 = 22;
LABEL_11:
        _os_log_impl(&dword_1C5C61000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);
      }
    }

    else
    {
      v14 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v23 = lCopy;
        v16 = "[AP] - MPCVAModel - No plist found at %{public}@";
        v17 = v14;
        v18 = 12;
        goto LABEL_11;
      }
    }

    v12 = 0;
LABEL_14:
    v8 = v13;
    goto LABEL_15;
  }

  v10 = os_log_create("com.apple.amp.mediaplaybackcore", "Playback");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v23 = lCopy;
    v24 = 2114;
    v25 = v9;
    _os_log_impl(&dword_1C5C61000, v10, OS_LOG_TYPE_ERROR, "[AP] - MPCVAModel - Unable to retrieve content at %{public}@: %{public}@", buf, 0x16u);
  }

  v11 = v9;
  v12 = 0;
  *error = v9;
LABEL_15:

  return v12;
}

uint64_t __54__MPCVocalAttenuationModel__plistForModelAtURL_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [v2 isEqualToString:@"plist"];

  return v3;
}

uint64_t __55__MPCVocalAttenuationModel_vocalAttenuationModelAtURL___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 pathExtension];
  v3 = [v2 isEqualToString:@"plist"];

  return v3;
}

@end