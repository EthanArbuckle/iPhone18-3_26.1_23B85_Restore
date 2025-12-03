@interface NURenderNode
+ (id)nodeFromCache:(id)cache;
+ (id)nodeFromCache:(id)cache cache:(id)a4;
+ (id)resampleImage:(id)image by:(id)by sampleMode:(int64_t)mode extent:(id *)extent colorSpace:(id)space;
- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)data;
- (BOOL)canPropagateOriginalLivePhotoMetadataTrack;
- (BOOL)hasCyclicalDependencyForInput:(id)input;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRenderNode:(id)node;
- (BOOL)isEqualToSettingsAndInputs:(id)inputs;
- (BOOL)isEquivalentToRenderNode:(id)node;
- (BOOL)requiresAudioMix;
- (BOOL)requiresVideoComposition;
- (BOOL)shouldCacheNodeForPipelineState:(id)state;
- (BOOL)shouldInvalidateCachedAudioMix;
- (NURenderNode)init;
- (NURenderNode)initWithSettings:(id)settings inputs:(id)inputs;
- (id)_descriptionWithOffset:(int64_t)offset showInputs:(BOOL)inputs map:(id)map;
- (id)_dictionaryToSingleLineString:(id)string;
- (id)_evaluateAudioMix:(id *)mix;
- (id)_evaluateAuxiliaryImageForType:(int64_t)type error:(id *)error;
- (id)_evaluateGeometrySpaceMap:(id *)map;
- (id)_evaluateImage:(id *)image;
- (id)_evaluateImageGeometry:(id *)geometry;
- (id)_evaluateImageProperties:(id *)properties;
- (id)_evaluateTimedMetadataSampleWithIdentifier:(id)identifier atTime:(id *)time error:(id *)error;
- (id)_evaluateVideo:(id *)video;
- (id)_evaluateVideoAttributes:(id *)attributes;
- (id)_evaluateVideoComposition:(id *)composition;
- (id)_evaluateVideoProperties:(id *)properties;
- (id)debugDescription;
- (id)debugQuickLookObject;
- (id)evaluateRenderDependenciesWithRequest:(id)request error:(id *)error;
- (id)geometryNode;
- (id)imageProperties:(id *)properties;
- (id)nodeByReplayingAgainstCache:(id)cache error:(id *)error;
- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)originalAuxiliaryImageForType:(int64_t)type error:(id *)error;
- (id)outputAudioMix:(id *)mix;
- (id)outputGeometrySpaceMap:(id *)map;
- (id)outputImage:(id *)image;
- (id)outputImageGeometry:(id *)geometry;
- (id)outputTimedMetadataSampleWithIdentifier:(id)identifier atTime:(id *)time error:(id *)error;
- (id)outputVideo:(id *)video;
- (id)outputVideoComposition:(id *)composition;
- (id)placeholderNodeWithCachedInputs:(id)inputs;
- (id)resamplingColorSpace;
- (id)resolvedNodeWithCachedInputs:(id)inputs cache:(id)cache pipelineState:(id)state error:(id *)error;
- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error;
- (id)uniqueInputNode;
- (id)videoProperties:(id *)properties;
- (unint64_t)_hash;
- (unint64_t)hash;
- (unint64_t)settingsAndInputsHash;
- (void)_appendInputsWithOffset:(int64_t)offset to:(id)to map:(id)map;
- (void)invalidateCachedAudioMix;
- (void)nu_updateDigest:(id)digest;
- (void)resetInput:(id)input forKey:(id)key;
- (void)setEvaluatedForMode:(int64_t)mode;
@end

@implementation NURenderNode

- (BOOL)isEquivalentToRenderNode:(id)node
{
  nodeCopy = node;
  if (nodeCopy == self)
  {
    v12 = 1;
  }

  else
  {
    v5 = objc_opt_class();
    if (v5 == objc_opt_class() && (-[NURenderNode settings](self, "settings"), v6 = objc_claimAutoreleasedReturnValue(), -[NURenderNode settings](nodeCopy, "settings"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v6 isEqualToDictionary:v7], v7, v6, v8))
    {
      inputs = [(NURenderNode *)self inputs];
      inputs2 = [(NURenderNode *)nodeCopy inputs];
      v11 = [inputs count];
      if (v11 == [inputs2 count])
      {
        v17 = 0;
        v18 = &v17;
        v19 = 0x2020000000;
        v20 = 1;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __41__NURenderNode_isEquivalentToRenderNode___block_invoke;
        v14[3] = &unk_1E810A858;
        v15 = inputs2;
        v16 = &v17;
        [inputs enumerateKeysAndObjectsUsingBlock:v14];
        v12 = *(v18 + 24);

        _Block_object_dispose(&v17, 8);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12 & 1;
}

void __41__NURenderNode_isEquivalentToRenderNode___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v7 = *(a1 + 32);
  v8 = a3;
  v9 = [v7 objectForKeyedSubscript:a2];
  LOBYTE(a2) = [v9 isEquivalentToRenderNode:v8];

  if ((a2 & 1) == 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)nu_updateDigest:(id)digest
{
  digestCopy = digest;
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [digestCopy addString:v5];

  [digestCopy addCString:"settings"];
  settings = [(NURenderNode *)self settings];
  [settings nu_updateDigest:digestCopy];

  [digestCopy addCString:"inputs"];
  inputs = [(NURenderNode *)self inputs];
  [inputs nu_updateDigest:digestCopy];

  [digestCopy addCString:"end"];
}

- (unint64_t)hash
{
  result = self->_hashValue;
  if (!result)
  {
    result = [(NURenderNode *)self _hash];
    self->_hashValue = result;
  }

  return result;
}

- (unint64_t)_hash
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = 0x412264519ABB7 * [v4 hash];

  return (0x1C820311EBB3D9 * [(NURenderNode *)self settingsAndInputsHash]) ^ v5;
}

- (unint64_t)settingsAndInputsHash
{
  v3 = NUDeepDictionaryHash(self->_settings);
  v4 = self->_inputs;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __NURenderNodeDictionaryHash_block_invoke;
  v7[3] = &unk_1E810B7B0;
  v7[4] = &v8;
  [(NSDictionary *)v4 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return (0x22FE22F4190DAFLL * v5) ^ (0x18705A47792769 * v3);
}

- (BOOL)isEqualToRenderNode:(id)node
{
  nodeCopy = node;
  v5 = objc_opt_class();
  v6 = v5 == objc_opt_class() && [(NURenderNode *)self isEqualToSettingsAndInputs:nodeCopy];

  return v6;
}

- (BOOL)isEqualToSettingsAndInputs:(id)inputs
{
  inputsCopy = inputs;
  v5 = inputsCopy[3];
  v6 = self->_inputs;
  v7 = v5;
  v8 = [(NSDictionary *)v6 count];
  if (v8 != [v7 count])
  {

    goto LABEL_5;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 1;
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __NURenderNodeDictionaryEqual_block_invoke;
  v18 = &unk_1E810A858;
  v9 = v7;
  v19 = v9;
  v20 = &v21;
  [(NSDictionary *)v6 enumerateKeysAndObjectsUsingBlock:&v15];
  v10 = *(v22 + 24);

  _Block_object_dispose(&v21, 8);
  if (v10 != 1)
  {
LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v11 = [(NURenderNode *)self settings:v15];
  settings = [inputsCopy settings];
  v13 = [v11 isEqualToDictionary:settings];

LABEL_6:
  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(NURenderNode *)self isEqualToRenderNode:equalCopy];
  }

  return v5;
}

- (id)_descriptionWithOffset:(int64_t)offset showInputs:(BOOL)inputs map:(id)map
{
  inputsCopy = inputs;
  mapCopy = map;
  v8 = MEMORY[0x1E696AD60];
  v9 = objc_opt_class();
  evaluatedForMode = [(NURenderNode *)self evaluatedForMode];
  if ((evaluatedForMode - 1) > 2)
  {
    v11 = @"Prepare";
  }

  else
  {
    v11 = off_1E8109570[evaluatedForMode - 1];
  }

  v12 = v11;
  isCached = [(NURenderNode *)self isCached];
  v14 = [(NURenderNode *)self hash];
  descriptionSubClassHook = [(NURenderNode *)self descriptionSubClassHook];
  v16 = [(NURenderNode *)self _dictionaryToSingleLineString:self->_settings];
  v17 = [v8 stringWithFormat:@"<%@:%p> evaluated=%@ cached=%d hash=%lu %@ settings=%@", v9, self, v12, isCached, v14, descriptionSubClassHook, v16];

  if (inputsCopy)
  {
    [(NURenderNode *)self _appendInputsWithOffset:offset to:v17 map:mapCopy];
  }

  return v17;
}

- (void)_appendInputsWithOffset:(int64_t)offset to:(id)to map:(id)map
{
  v37 = *MEMORY[0x1E69E9840];
  toCopy = to;
  mapCopy = map;
  selfCopy = self;
  allKeys = [(NSDictionary *)self->_inputs allKeys];
  v10 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v11 = mapCopy;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v10;
  v30 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v30)
  {
    v31 = offset + 1;
    v27 = *v33;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        v13 = v11;
        if (*v33 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v32 + 1) + 8 * i);
        v15 = [(NSDictionary *)selfCopy->_inputs objectForKey:v14];
        v16 = [MEMORY[0x1E696AD60] stringWithFormat:@"\n"];
        v17 = v16;
        if ((offset & 0x8000000000000000) == 0)
        {
          [v16 appendString:@"|"];
        }

        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%2ld", v31];
        [v17 appendString:v18];
        offsetCopy = offset;
        if (offset >= 1)
        {
          do
          {
            [v17 appendString:@"--"];
            --offsetCopy;
          }

          while (offsetCopy);
        }

        if ((offset & 0x8000000000000000) == 0)
        {
          [v17 appendString:@">"];
        }

        v20 = [v11 objectForKey:v15];
        if (v20)
        {
          v21 = v20;
          [toCopy appendFormat:@"%@ '%@' : %@", v17, v14, v20];
        }

        else
        {
          v22 = [v15 _descriptionWithOffset:v31 showInputs:1 map:v11];
          [toCopy appendFormat:@"%@ '%@' : %@", v17, v14, v22];

          if (!v11)
          {
            goto LABEL_17;
          }

          v23 = MEMORY[0x1E696AEC0];
          v24 = objc_opt_class();
          aliasDescription = [v15 aliasDescription];
          v21 = [v23 stringWithFormat:@"<%@:%p> %@", v24, v15, aliasDescription];

          v11 = v13;
          [v13 setObject:v21 forKey:v15];
        }

LABEL_17:
      }

      v30 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v30);
  }
}

- (id)_dictionaryToSingleLineString:(id)string
{
  v3 = [string description];
  v4 = [v3 stringByReplacingOccurrencesOfString:@"\n" withString:&stru_1F3F4BA98];

  v5 = [v4 stringByReplacingOccurrencesOfString:@"\t" withString:@" "];

  v6 = [v5 stringByReplacingOccurrencesOfString:@"    " withString:@" "];

  v7 = [v6 length];
  if (v7 >= 0xFF)
  {
    v8 = 255;
  }

  else
  {
    v8 = v7;
  }

  v9 = [v6 substringToIndex:v8];

  return v9;
}

- (id)debugDescription
{
  v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:514 valueOptions:0 capacity:0];
  v4 = [(NURenderNode *)self _descriptionWithOffset:0 showInputs:1 map:v3];

  return v4;
}

- (id)_evaluateVideoProperties:(id *)properties
{
  v33 = *MEMORY[0x1E69E9840];
  if (!properties)
  {
    v11 = NUAssertLogger_16336();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v30 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_16336();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        callStackSymbols = [v19 callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v18;
        v31 = 2114;
        v32 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderNode _evaluateVideoProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 1177, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "error != NULL");
  }

  if (self->_dominantInputKey)
  {
    v5 = [(NSDictionary *)self->_inputs objectForKey:?];
    v6 = [(NSDictionary *)v5 videoProperties:properties];
    if (!v6 && !*properties)
    {
      1183 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate video properties", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 1183];
      *properties = [NUError unknownError:1183 object:v5];
    }

LABEL_11:

    goto LABEL_12;
  }

  memset(v27, 0, sizeof(v27));
  v5 = self->_inputs;
  if ([(NSDictionary *)v5 countByEnumeratingWithState:v27 objects:v28 count:16])
  {
    v8 = [(NSDictionary *)self->_inputs objectForKey:**(&v27[0] + 1)];
    v6 = [v8 videoProperties:properties];
    if (!v6 && !*properties)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate video properties", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 1195, *&v27[0]];
      *properties = [NUError unknownError:v9 object:v8];
    }

    goto LABEL_11;
  }

  [NUError unknownError:@"unable to resolve video properties -- no inputs" object:self];
  *properties = v6 = 0;
LABEL_12:

  return v6;
}

- (id)videoProperties:(id *)properties
{
  if ([(NURenderNode *)self isCached])
  {
    cached_videoProperties = [(NURenderNode *)self cached_videoProperties];
    if (!cached_videoProperties)
    {
      v6 = [(NURenderNode *)self _evaluateVideoProperties:properties];
      cached_videoProperties = v6;
      if (properties && !v6 && !*properties)
      {
        1164 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate video properties", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 1164];
        *properties = [NUError unknownError:1164 object:self];
      }

      [(NURenderNode *)self setCached_videoProperties:cached_videoProperties];
    }
  }

  else
  {
    cached_videoProperties = [(NURenderNode *)self _evaluateVideoProperties:properties];
  }

  return cached_videoProperties;
}

- (id)_evaluateImageProperties:(id *)properties
{
  v33 = *MEMORY[0x1E69E9840];
  if (!properties)
  {
    v11 = NUAssertLogger_16336();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v30 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_16336();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        callStackSymbols = [v19 callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v18;
        v31 = 2114;
        v32 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderNode _evaluateImageProperties:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 1126, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "error != NULL");
  }

  if (self->_dominantInputKey)
  {
    v5 = [(NSDictionary *)self->_inputs objectForKey:?];
    v6 = [(NSDictionary *)v5 imageProperties:properties];
    if (!v6 && !*properties)
    {
      1132 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate image properties", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 1132];
      *properties = [NUError unknownError:1132 object:v5];
    }

LABEL_11:

    goto LABEL_12;
  }

  memset(v27, 0, sizeof(v27));
  v5 = self->_inputs;
  if ([(NSDictionary *)v5 countByEnumeratingWithState:v27 objects:v28 count:16])
  {
    v8 = [(NSDictionary *)self->_inputs objectForKey:**(&v27[0] + 1)];
    v6 = [v8 imageProperties:properties];
    if (!v6 && !*properties)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate image properties", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 1146, *&v27[0]];
      *properties = [NUError unknownError:v9 object:v8];
    }

    goto LABEL_11;
  }

  [NUError unknownError:@"unable to resolve image properties -- no inputs" object:self];
  *properties = v6 = 0;
LABEL_12:

  return v6;
}

- (id)imageProperties:(id *)properties
{
  if ([(NURenderNode *)self isCached])
  {
    cached_imageProperties = [(NURenderNode *)self cached_imageProperties];
    if (!cached_imageProperties)
    {
      v6 = [(NURenderNode *)self _evaluateImageProperties:properties];
      cached_imageProperties = v6;
      if (properties && !v6 && !*properties)
      {
        1113 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate image properties", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 1113];
        *properties = [NUError unknownError:1113 object:self];
      }

      [(NURenderNode *)self setCached_imageProperties:cached_imageProperties];
    }
  }

  else
  {
    cached_imageProperties = [(NURenderNode *)self _evaluateImageProperties:properties];
  }

  return cached_imageProperties;
}

- (id)_evaluateVideoAttributes:(id *)attributes
{
  dominantInputKey = self->_dominantInputKey;
  inputs = self->_inputs;
  if (dominantInputKey)
  {
    goto LABEL_4;
  }

  if ([(NSDictionary *)inputs count]== 1)
  {
    inputs = self->_inputs;
    dominantInputKey = *MEMORY[0x1E695FAB0];
LABEL_4:
    v7 = [(NSDictionary *)inputs objectForKey:dominantInputKey];
    v8 = [v7 outputVideoAttributes:attributes];

    goto LABEL_5;
  }

  v8 = 0;
LABEL_5:

  return v8;
}

- (id)_evaluateImageGeometry:(id *)geometry
{
  v70 = *MEMORY[0x1E69E9840];
  if (!geometry)
  {
    v39 = NUAssertLogger_16336();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      *&buf[4] = v40;
      _os_log_error_impl(&dword_1C0184000, v39, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v42 = NUAssertLogger_16336();
    v43 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v43)
      {
        v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        callStackSymbols = [v47 callStackSymbols];
        v50 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        *&buf[4] = v46;
        *&buf[12] = 2114;
        *&buf[14] = v50;
        _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v43)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v45 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      *&buf[4] = v45;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderNode _evaluateImageGeometry:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 965, @"Invalid parameter not satisfying: %s", v51, v52, v53, v54, "error != nil");
  }

  geometryCopy = geometry;
  selfCopy = self;
  v5 = *(&NUScaleOne + 1);
  v6 = NUScaleOne;
  v64 = 0u;
  v65 = 0u;
  if (self->_dominantInputKey)
  {
    v7 = [(NSDictionary *)self->_inputs objectForKey:?];
    v8 = [(NSDictionary *)v7 outputImageGeometry:geometryCopy];
    v9 = v8;
    if (v8)
    {
      renderScale = [v8 renderScale];
      if (renderScale >= 1 && v11 > 0)
      {
        v6 = renderScale;
        v5 = v11;
        [v9 extent];
        orientation = [v9 orientation];
        roundingPolicy = [v9 roundingPolicy];

        goto LABEL_31;
      }

      v13 = [NUError errorWithCode:1 reason:@"invalid scale for input node" object:v7];
    }

    else
    {
      v13 = [NUError errorWithCode:1 reason:@"unable to evaluate image geometry" object:v7 underlyingError:*geometryCopy];
    }

    *geometryCopy = v13;

LABEL_41:
    v34 = 0;
    goto LABEL_42;
  }

  v62 = 0uLL;
  v63 = 0uLL;
  v60 = 0uLL;
  v61 = 0uLL;
  v7 = self->_inputs;
  v56 = [(NSDictionary *)v7 countByEnumeratingWithState:&v60 objects:v68 count:16];
  if (!v56)
  {
    roundingPolicy = 0;
    orientation = 1;
    goto LABEL_31;
  }

  v14 = v5;
  v15 = v6;
  v57 = *v61;
  v58 = 0;
  v16 = 1;
  v59 = 1;
  obj = v7;
  while (2)
  {
    for (i = 0; i != v56; ++i)
    {
      if (*v61 != v57)
      {
        objc_enumerationMutation(obj);
      }

      v18 = selfCopy;
      v19 = [(NSDictionary *)selfCopy->_inputs objectForKey:*(*(&v60 + 1) + 8 * i)];
      v20 = geometryCopy;
      v21 = [v19 outputImageGeometry:geometryCopy];
      v22 = v21;
      if (!v21)
      {
        v35 = [NUError errorWithCode:1 reason:@"unable to evaluate image geometry" object:v19 underlyingError:*v20];
        goto LABEL_40;
      }

      renderScale2 = [v21 renderScale];
      if (renderScale2 < 1 || v24 <= 0)
      {
        v36 = @"invalid scale for input node";
        goto LABEL_35;
      }

      v26 = renderScale2;
      v27 = v24;
      if (v16)
      {
        [v22 extent];
        v64 = 0u;
        v65 = 0u;
        orientation2 = [v22 orientation];
        roundingPolicy2 = [v22 roundingPolicy];
        v14 = v27;
        goto LABEL_25;
      }

      v26 = v15;
      if (!NUScaleEqual(renderScale2, v24, v15, v14))
      {
        v36 = @"mismatch of rendering scales across inputs";
LABEL_35:
        v37 = 1;
LABEL_39:
        v35 = [NUError errorWithCode:v37 reason:v36 object:v19];
LABEL_40:
        *v20 = v35;

        goto LABEL_41;
      }

      [v22 extent];
      memset(buf, 0, 32);
      v66 = v64;
      v67 = v65;
      NU::RectT<long>::add(&v66, buf);
      v64 = v66;
      v65 = v67;
      orientation2 = v59;
      if (v59 != [v22 orientation])
      {
        v36 = @"incompatible orientations for multiple inputs";
LABEL_38:
        v37 = 5;
        goto LABEL_39;
      }

      roundingPolicy3 = [v22 roundingPolicy];
      roundingPolicy2 = v58;
      if (v58 != roundingPolicy3)
      {
        v36 = @"incompatible rounding policy for multiple inputs";
        goto LABEL_38;
      }

LABEL_25:
      v58 = roundingPolicy2;
      v59 = orientation2;
      v15 = v26;

      v16 = 0;
      geometryCopy = v20;
      selfCopy = v18;
    }

    v7 = obj;
    v16 = 0;
    v56 = [(NSDictionary *)obj countByEnumeratingWithState:&v60 objects:v68 count:16];
    if (v56)
    {
      continue;
    }

    break;
  }

  v6 = v15;
  v5 = v14;
  roundingPolicy = v58;
  orientation = v59;
LABEL_31:

  v33 = [NUImageGeometry alloc];
  *buf = v64;
  *&buf[16] = v65;
  v34 = [(NUImageGeometry *)v33 initWithExtent:buf renderScale:v6 orientation:v5 spaceMap:orientation roundingPolicy:0, roundingPolicy];
LABEL_42:

  return v34;
}

- (id)outputImageGeometry:(id *)geometry
{
  if ([(NURenderNode *)self isCached])
  {
    cached_outputImageGeometry = [(NURenderNode *)self cached_outputImageGeometry];
    if (!cached_outputImageGeometry)
    {
      v6 = [(NURenderNode *)self _evaluateImageGeometry:geometry];
      if (v6)
      {
        cached_outputImageGeometry = v6;
        [(NURenderNode *)self setCached_outputImageGeometry:v6];
      }

      else
      {
        if (geometry && !*geometry)
        {
          v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate image geometry", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 951];
          *geometry = [NUError unknownError:v8 object:self];
        }

        cached_outputImageGeometry = 0;
      }
    }
  }

  else
  {
    cached_outputImageGeometry = [(NURenderNode *)self _evaluateImageGeometry:geometry];
  }

  return cached_outputImageGeometry;
}

- (id)_evaluateGeometrySpaceMap:(id *)map
{
  v65 = *MEMORY[0x1E69E9840];
  if (!map)
  {
    v22 = NUAssertLogger_16336();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v62 = v23;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v25 = NUAssertLogger_16336();
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v26)
      {
        v29 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v30 = MEMORY[0x1E696AF00];
        v31 = v29;
        callStackSymbols = [v30 callStackSymbols];
        v33 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v29;
        v63 = 2114;
        v64 = v33;
        _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v26)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v28 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v28;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderNode _evaluateGeometrySpaceMap:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 903, @"Invalid parameter not satisfying: %s", v34, v35, v36, v37, "error != nil");
  }

  if ([(NURenderNode *)self isGeometryNode])
  {
    v5 = objc_alloc_init(NUGeometrySpaceMap);
    if (self->_dominantInputKey)
    {
      dominantInputKey = self->_dominantInputKey;
      inputs = [MEMORY[0x1E695DEC8] arrayWithObjects:&dominantInputKey count:1];
    }

    else
    {
      inputs = [(NURenderNode *)self inputs];
    }

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v10 = inputs;
    v11 = [v10 countByEnumeratingWithState:&v55 objects:v59 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v56;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v56 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [(NURenderNode *)self inputForKey:*(*(&v55 + 1) + 8 * i)];
          v16 = [v15 outputGeometrySpaceMap:map];
          if (!v16)
          {
            if (!*map)
            {
              v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate geometry space map", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 919, v55];
              *map = [NUError unknownError:v20 object:v15];
            }

            v8 = 0;
            goto LABEL_22;
          }

          v17 = v16;
          [(NUGeometrySpaceMap *)v5 mergeWithSpaceMap:v16];
        }

        v12 = [v10 countByEnumeratingWithState:&v55 objects:v59 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    v18 = objc_opt_new();
    spaceMapKey = [(NURenderNode *)self spaceMapKey];
    [(NUGeometrySpaceMap *)v5 setSpace:v18 forKey:spaceMapKey];

    v8 = v5;
LABEL_22:
  }

  else
  {
    uniqueInputNode = [(NURenderNode *)self uniqueInputNode];
    if (!uniqueInputNode)
    {
      v38 = NUAssertLogger_16336();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SpaceMap :: Nodes with 0 or 2 or more inputs must be geometry nodes"];
        *buf = 138543362;
        v62 = v39;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
      }

      v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v41 = NUAssertLogger_16336();
      v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
      if (v40)
      {
        if (v42)
        {
          v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v46 = MEMORY[0x1E696AF00];
          v47 = v45;
          callStackSymbols3 = [v46 callStackSymbols];
          v49 = [callStackSymbols3 componentsJoinedByString:@"\n"];
          *buf = 138543618;
          v62 = v45;
          v63 = 2114;
          v64 = v49;
          _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
        }
      }

      else if (v42)
      {
        callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
        v44 = [callStackSymbols4 componentsJoinedByString:@"\n"];
        *buf = 138543362;
        v62 = v44;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
      }

      _NUAssertFailHandler("[NURenderNode _evaluateGeometrySpaceMap:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 934, @"SpaceMap :: Nodes with 0 or 2 or more inputs must be geometry nodes", v50, v51, v52, v53, v54);
    }

    v5 = uniqueInputNode;
    v8 = [(NUGeometrySpaceMap *)uniqueInputNode outputGeometrySpaceMap:map];
    if (!v8 && !*map)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate geometry space map", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 937];
      *map = [NUError unknownError:v9 object:v5];
    }
  }

  return v8;
}

- (id)geometryNode
{
  v26 = *MEMORY[0x1E69E9840];
  if ([(NURenderNode *)self isGeometryNode])
  {
    selfCopy = self;
  }

  else
  {
    uniqueInputNode = [(NURenderNode *)self uniqueInputNode];
    if (!uniqueInputNode)
    {
      v7 = NUAssertLogger_16336();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"GeometryNode :: Nodes with 0 or 2 or more inputs must be geometry nodes"];
        *v23 = 138543362;
        *&v23[4] = v8;
        _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", v23, 0xCu);
      }

      specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
      v10 = NUAssertLogger_16336();
      v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
      if (specific)
      {
        if (v11)
        {
          v14 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
          v15 = MEMORY[0x1E696AF00];
          v16 = v14;
          callStackSymbols = [v15 callStackSymbols];
          v18 = [callStackSymbols componentsJoinedByString:@"\n"];
          *v23 = 138543618;
          *&v23[4] = v14;
          v24 = 2114;
          v25 = v18;
          _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", v23, 0x16u);
        }
      }

      else if (v11)
      {
        callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
        v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
        *v23 = 138543362;
        *&v23[4] = v13;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", v23, 0xCu);
      }

      _NUAssertFailHandler("[NURenderNode geometryNode]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 895, @"GeometryNode :: Nodes with 0 or 2 or more inputs must be geometry nodes", v19, v20, v21, v22, *v23);
    }

    v5 = uniqueInputNode;
    selfCopy = [uniqueInputNode geometryNode];
  }

  return selfCopy;
}

- (id)uniqueInputNode
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__16409;
  v13 = __Block_byref_object_dispose__16410;
  v14 = 0;
  inputs = [(NURenderNode *)self inputs];
  v4 = [inputs count];

  if (v4 == 1)
  {
    inputs2 = [(NURenderNode *)self inputs];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __31__NURenderNode_uniqueInputNode__block_invoke;
    v8[3] = &unk_1E810B7B0;
    v8[4] = &v9;
    [inputs2 enumerateKeysAndObjectsUsingBlock:v8];
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)outputGeometrySpaceMap:(id *)map
{
  if ([(NURenderNode *)self isCached])
  {
    cached_geometrySpaceMap = [(NURenderNode *)self cached_geometrySpaceMap];
    if (!cached_geometrySpaceMap)
    {
      v6 = [(NURenderNode *)self _evaluateGeometrySpaceMap:map];
      cached_geometrySpaceMap = v6;
      if (map && !v6 && !*map)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate geometry space map", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 863];
        *map = [NUError unknownError:v7 object:self];
      }

      [(NURenderNode *)self setCached_geometrySpaceMap:cached_geometrySpaceMap];
    }
  }

  else
  {
    cached_geometrySpaceMap = [(NURenderNode *)self _evaluateGeometrySpaceMap:map];
  }

  return cached_geometrySpaceMap;
}

- (id)_evaluateAuxiliaryImageForType:(int64_t)type error:(id *)error
{
  v35 = *MEMORY[0x1E69E9840];
  if (!error)
  {
    v13 = NUAssertLogger_16336();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v32 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_16336();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v32 = v20;
        v33 = 2114;
        v34 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v32 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderNode _evaluateAuxiliaryImageForType:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 828, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "error != NULL");
  }

  if (self->_dominantInputKey)
  {
    v7 = [(NSDictionary *)self->_inputs objectForKey:?];
    v8 = [(NSDictionary *)v7 originalAuxiliaryImageForType:type error:error];
    if (!v8 && !*error)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate auxiliary image", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 834];
      *error = [NUError unknownError:v9 object:v7];
    }

LABEL_11:

    goto LABEL_12;
  }

  memset(v29, 0, sizeof(v29));
  v7 = self->_inputs;
  if ([(NSDictionary *)v7 countByEnumeratingWithState:v29 objects:v30 count:16])
  {
    v10 = [(NSDictionary *)self->_inputs objectForKey:**(&v29[0] + 1)];
    v8 = [v10 originalAuxiliaryImageForType:type error:error];
    if (!v8 && !*error)
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate evaluate auxiliary image", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 845, *&v29[0]];
      *error = [NUError unknownError:v11 object:v10];
    }

    goto LABEL_11;
  }

  [NUError unknownError:@"unable to resolve evaluate auxiliary image" object:self];
  *error = v8 = 0;
LABEL_12:

  return v8;
}

- (id)originalAuxiliaryImageForType:(int64_t)type error:(id *)error
{
  if ([(NURenderNode *)self isCached])
  {
    if (type > 0xB)
    {
      v7 = @"Invalid";
    }

    else
    {
      v7 = off_1E8109908[type];
    }

    v9 = v7;
    cached_auxiliaryImages = [(NURenderNode *)self cached_auxiliaryImages];
    v8 = [cached_auxiliaryImages objectForKeyedSubscript:v9];

    if (!v8)
    {
      v11 = [(NURenderNode *)self _evaluateAuxiliaryImageForType:type error:error];
      v8 = v11;
      if (error && !v11 && !*error)
      {
        v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate portrait effects matte", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 816];
        *error = [NUError unknownError:v12 object:self];
      }

      cached_auxiliaryImages2 = [(NURenderNode *)self cached_auxiliaryImages];
      [cached_auxiliaryImages2 setObject:v8 forKeyedSubscript:v9];
    }
  }

  else
  {
    v8 = [(NURenderNode *)self _evaluateAuxiliaryImageForType:type error:error];
  }

  return v8;
}

- (BOOL)canPropagateOriginalLivePhotoMetadataTrack
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_dominantInputKey)
  {
    v3 = [(NSDictionary *)self->_inputs objectForKey:?];
    canPropagateOriginalLivePhotoMetadataTrack = [(NSDictionary *)v3 canPropagateOriginalLivePhotoMetadataTrack];
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = self->_inputs;
    v5 = [(NSDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v3);
          }

          v9 = [(NSDictionary *)self->_inputs objectForKey:*(*(&v12 + 1) + 8 * i), v12];
          canPropagateOriginalLivePhotoMetadataTrack2 = [v9 canPropagateOriginalLivePhotoMetadataTrack];

          if (!canPropagateOriginalLivePhotoMetadataTrack2)
          {
            canPropagateOriginalLivePhotoMetadataTrack = 0;
            goto LABEL_13;
          }
        }

        v6 = [(NSDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    canPropagateOriginalLivePhotoMetadataTrack = 1;
  }

LABEL_13:

  return canPropagateOriginalLivePhotoMetadataTrack;
}

- (BOOL)canPropagateOriginalAuxiliaryData:(int64_t)data
{
  v11 = *MEMORY[0x1E69E9840];
  if (self->_dominantInputKey)
  {
    v5 = [(NSDictionary *)self->_inputs objectForKey:?];
    v6 = [(NSDictionary *)v5 canPropagateOriginalAuxiliaryData:data];
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    v5 = self->_inputs;
    if ([(NSDictionary *)v5 countByEnumeratingWithState:v9 objects:v10 count:16])
    {
      v7 = [(NSDictionary *)self->_inputs objectForKey:**(&v9[0] + 1), *&v9[0]];
      v6 = [v7 canPropagateOriginalAuxiliaryData:data];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)_evaluateImage:(id *)image
{
  v32 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_16353);
  }

  v3 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v4 = MEMORY[0x1E696AEC0];
    v5 = v3;
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v4 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v7];
    *buf = 138543362;
    v29 = v8;
    _os_log_error_impl(&dword_1C0184000, v5, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v9 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v9 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_16353);
      }

      goto LABEL_8;
    }

    if (v9 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_16353);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v10 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v11 = MEMORY[0x1E696AF00];
      v12 = v10;
      callStackSymbols = [v11 callStackSymbols];
      v14 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v29 = v14;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v15 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v17 = MEMORY[0x1E696AF00];
    v18 = specific;
    v19 = v15;
    callStackSymbols2 = [v17 callStackSymbols];
    v21 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v29 = specific;
    v30 = 2114;
    v31 = v21;
    _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  _NUAssertFailHandler("[NURenderNode _evaluateImage:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 771, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v24, v25, v26, v27, v23);
}

- (id)debugQuickLookObject
{
  cached_outputImage = [(NURenderNode *)self cached_outputImage];
  v4 = cached_outputImage;
  if (cached_outputImage)
  {
    emptyImage = cached_outputImage;
LABEL_3:
    debugQuickLookObject = emptyImage;
    goto LABEL_6;
  }

  if (!self->_dominantInputKey)
  {
    emptyImage = [MEMORY[0x1E695F658] emptyImage];
    goto LABEL_3;
  }

  v7 = [(NSDictionary *)self->_inputs objectForKey:?];
  debugQuickLookObject = [v7 debugQuickLookObject];

LABEL_6:

  return debugQuickLookObject;
}

- (id)_evaluateTimedMetadataSampleWithIdentifier:(id)identifier atTime:(id *)time error:(id *)error
{
  identifierCopy = identifier;
  inputs = self->_inputs;
  if (self->_dominantInputKey)
  {
    v10 = [(NSDictionary *)inputs objectForKey:?];
    v11 = v10;
    v17 = *&time->var0;
    var3 = time->var3;
LABEL_5:
    error = [v10 _evaluateTimedMetadataSampleWithIdentifier:identifierCopy atTime:&v17 error:error];

    goto LABEL_6;
  }

  if ([(NSDictionary *)inputs count]== 1)
  {
    v12 = self->_inputs;
    allKeys = [(NSDictionary *)v12 allKeys];
    v14 = [allKeys objectAtIndexedSubscript:0];
    v11 = [(NSDictionary *)v12 objectForKeyedSubscript:v14];

    v17 = *&time->var0;
    var3 = time->var3;
    v10 = v11;
    goto LABEL_5;
  }

  if (error)
  {
    if (!*error)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate timed metadata sample with multiple, or zero, inputs", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 751];
      *error = [NUError unknownError:v16 object:self];
    }

    error = 0;
  }

LABEL_6:

  return error;
}

- (id)outputTimedMetadataSampleWithIdentifier:(id)identifier atTime:(id *)time error:(id *)error
{
  v7 = *time;
  v5 = [(NURenderNode *)self _evaluateTimedMetadataSampleWithIdentifier:identifier atTime:&v7 error:error];

  return v5;
}

- (id)outputImage:(id *)image
{
  if ([(NURenderNode *)self isCached])
  {
    cached_outputImage = [(NURenderNode *)self cached_outputImage];
    if (!cached_outputImage)
    {
      v6 = [(NURenderNode *)self _evaluateImage:image];
      cached_outputImage = v6;
      if (image && !v6 && !*image)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate output image", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 723];
        *image = [NUError unknownError:v7 object:self];
      }

      [(NURenderNode *)self setCached_outputImage:cached_outputImage];
    }
  }

  else
  {
    cached_outputImage = [(NURenderNode *)self _evaluateImage:image];
  }

  return cached_outputImage;
}

- (void)invalidateCachedAudioMix
{
  v13 = *MEMORY[0x1E69E9840];
  [(NURenderNode *)self setCached_outputAudioMix:0];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  allValues = [(NSDictionary *)self->_inputs allValues];
  v4 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v8 + 1) + 8 * v7++) invalidateCachedAudioMix];
      }

      while (v5 != v7);
      v5 = [allValues countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (BOOL)shouldInvalidateCachedAudioMix
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  allValues = [(NSDictionary *)self->_inputs allValues];
  v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = *v8;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(allValues);
        }

        if ([*(*(&v7 + 1) + 8 * i) shouldInvalidateCachedAudioMix])
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [allValues countByEnumeratingWithState:&v7 objects:v11 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v3;
}

- (id)_evaluateAudioMix:(id *)mix
{
  v33 = *MEMORY[0x1E69E9840];
  if (!mix)
  {
    v11 = NUAssertLogger_16336();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v30 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_16336();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v19 = MEMORY[0x1E696AF00];
        v20 = v18;
        callStackSymbols = [v19 callStackSymbols];
        v22 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v18;
        v31 = 2114;
        v32 = v22;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderNode _evaluateAudioMix:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 664, @"Invalid parameter not satisfying: %s", v23, v24, v25, v26, "error != NULL");
  }

  if (self->_dominantInputKey)
  {
    v5 = [(NSDictionary *)self->_inputs objectForKey:?];
    v6 = [(NSDictionary *)v5 outputAudioMix:mix];
    if (!v6 && !*mix)
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate audio mix", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 671];
      *mix = [NUError unknownError:v7 object:v5];
    }

LABEL_11:

    goto LABEL_12;
  }

  memset(v27, 0, sizeof(v27));
  v5 = self->_inputs;
  if ([(NSDictionary *)v5 countByEnumeratingWithState:v27 objects:v28 count:16])
  {
    v8 = [(NSDictionary *)self->_inputs objectForKey:**(&v27[0] + 1)];
    v6 = [v8 outputAudioMix:mix];
    if (!v6 && !*mix)
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate audio mix", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 683, *&v27[0]];
      *mix = [NUError unknownError:v9 object:v8];
    }

    goto LABEL_11;
  }

  [NUError unsupportedError:@"cannot generate audio mix" object:objc_opt_class()];
  *mix = v6 = 0;
LABEL_12:

  return v6;
}

- (id)outputAudioMix:(id *)mix
{
  if ([(NURenderNode *)self isCached])
  {
    cached_outputAudioMix = [(NURenderNode *)self cached_outputAudioMix];
    if (!cached_outputAudioMix)
    {
      v6 = [(NURenderNode *)self _evaluateAudioMix:mix];
      cached_outputAudioMix = v6;
      if (mix && !v6 && !*mix)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate audio mix", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 651];
        *mix = [NUError unknownError:v7 object:self];
      }

      [(NURenderNode *)self setCached_outputAudioMix:cached_outputAudioMix];
    }
  }

  else
  {
    cached_outputAudioMix = [(NURenderNode *)self _evaluateAudioMix:mix];
  }

  return cached_outputAudioMix;
}

- (BOOL)requiresAudioMix
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_inputs;
  v4 = [(NSDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSDictionary *)self->_inputs objectForKey:*(*(&v12 + 1) + 8 * i), v12];
        requiresAudioMix = [v8 requiresAudioMix];

        if (requiresAudioMix)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_evaluateVideoComposition:(id *)composition
{
  v152 = *MEMORY[0x1E69E9840];
  if (!composition)
  {
    v76 = NUAssertLogger_16336();
    if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
    {
      v77 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      LODWORD(v144.start.value) = 138543362;
      *(&v144.start.value + 4) = v77;
      _os_log_error_impl(&dword_1C0184000, v76, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v144, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v79 = NUAssertLogger_16336();
    v80 = os_log_type_enabled(v79, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v80)
      {
        v83 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v84 = MEMORY[0x1E696AF00];
        v85 = v83;
        callStackSymbols = [v84 callStackSymbols];
        v87 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(v144.start.value) = 138543618;
        *(&v144.start.value + 4) = v83;
        LOWORD(v144.start.flags) = 2114;
        *(&v144.start.flags + 2) = v87;
        _os_log_error_impl(&dword_1C0184000, v79, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v144, 0x16u);
      }
    }

    else if (v80)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v82 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(v144.start.value) = 138543362;
      *(&v144.start.value + 4) = v82;
      _os_log_error_impl(&dword_1C0184000, v79, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v144, 0xCu);
    }

    _NUAssertFailHandler("[NURenderNode _evaluateVideoComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 497, @"Invalid parameter not satisfying: %s", v88, v89, v90, v91, "error != nil");
  }

  compositionCopy = composition;
  selfCopy = self;
  if (![(NSDictionary *)self->_inputs count])
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"This type of source node (%@) cannot generate an AVVideoComposition", objc_opt_class()];
    *compositionCopy = [NUError errorWithCode:9 reason:v9 object:selfCopy];

    v7 = 0;
    goto LABEL_87;
  }

  if ([(NSDictionary *)selfCopy->_inputs count]== 1)
  {
    memset(v141, 0, sizeof(v141));
    v5 = selfCopy->_inputs;
    if ([(NSDictionary *)v5 countByEnumeratingWithState:v141 objects:v151 count:16])
    {
      v6 = [(NSDictionary *)selfCopy->_inputs objectForKey:**(&v141[0] + 1)];
      v7 = [v6 outputVideoComposition:compositionCopy];
      if (!v7 && !*compositionCopy)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate video composition", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 517];
        *compositionCopy = [NUError unknownError:v8 object:v6];
      }

      goto LABEL_87;
    }
  }

  v11 = *MEMORY[0x1E695F060];
  v10 = *(MEMORY[0x1E695F060] + 8);
  v12 = MEMORY[0x1E6960CC0];
  value = *MEMORY[0x1E6960CC0];
  flags = *(MEMORY[0x1E6960CC0] + 12);
  timescale = *(MEMORY[0x1E6960CC0] + 8);
  v14 = *(MEMORY[0x1E6960CC0] + 16);
  v15 = objc_opt_new();
  v137 = 0u;
  v138 = 0u;
  v139 = 0u;
  v140 = 0u;
  v16 = selfCopy->_inputs;
  v108 = [(NSDictionary *)v16 countByEnumeratingWithState:&v137 objects:v148 count:16];
  if (!v108)
  {
    v18 = v14;
    goto LABEL_82;
  }

  v110 = *v138;
  v17 = 1;
  v18 = v14;
  v103 = v14;
  v104 = selfCopy;
  v106 = v16;
  do
  {
    v19 = 0;
    do
    {
      if (*v138 != v110)
      {
        objc_enumerationMutation(v16);
      }

      v112 = v19;
      v113 = [(NSDictionary *)selfCopy->_inputs objectForKey:*(*(&v137 + 1) + 8 * v19)];
      v20 = [v113 outputVideoComposition:compositionCopy];
      if (!v20)
      {
        if (*compositionCopy)
        {
          v21 = 0;
LABEL_79:
          v54 = v113;
        }

        else
        {
          v75 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate video composition", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 537];
          v54 = v113;
          *compositionCopy = [NUError unknownError:v75 object:v113];

          v21 = 0;
        }

        v7 = 0;
        goto LABEL_86;
      }

      v21 = v20;
      [v20 frameDuration];
      time1.start.value = value;
      time1.start.timescale = timescale;
      time1.start.flags = flags;
      time1.start.epoch = v18;
      CMTimeMaximum(&v144.start, &time1.start, &time2.start);
      value = v144.start.value;
      flags = v144.start.flags;
      timescale = v144.start.timescale;
      epoch = v144.start.epoch;
      [v21 renderSize];
      v25 = v23;
      v26 = v24;
      v111 = epoch;
      if ((v17 & 1) == 0)
      {
        if (v23 != v11 || v24 != v10)
        {
          *compositionCopy = [NUError errorWithCode:5 reason:@"Mixed resolutions not currently supported" object:0];
          goto LABEL_79;
        }

        v131 = 0u;
        v132 = 0u;
        v129 = 0u;
        v130 = 0u;
        instructions = [v21 instructions];
        v100 = [instructions countByEnumeratingWithState:&v129 objects:v146 count:16];
        if (!v100)
        {
          goto LABEL_75;
        }

        v35 = *v130;
        v94 = flags;
        v95 = *v130;
LABEL_34:
        v36 = 0;
        v37 = 0uLL;
        while (1)
        {
          if (*v130 != v35)
          {
            v38 = v36;
            objc_enumerationMutation(instructions);
            v36 = v38;
            v37 = 0uLL;
          }

          v102 = v36;
          v114 = *(*(&v129 + 1) + 8 * v36);
          v125 = v37;
          v126 = v37;
          v127 = v37;
          v128 = v37;
          obj = v15;
          v99 = [obj countByEnumeratingWithState:&v125 objects:v145 count:16];
          if (v99)
          {
            break;
          }

LABEL_71:

          v36 = v102 + 1;
          v37 = 0uLL;
          v35 = v95;
          if (v102 + 1 == v100)
          {
            v100 = [instructions countByEnumeratingWithState:&v129 objects:v146 count:{16, 0.0}];
            if (!v100)
            {
              goto LABEL_75;
            }

            goto LABEL_34;
          }
        }

        v105 = *v126;
        while (2)
        {
          v39 = 0;
LABEL_40:
          if (*v126 != v105)
          {
            v40 = v39;
            objc_enumerationMutation(obj);
            v39 = v40;
          }

          v98 = v39;
          v41 = *(*(&v125 + 1) + 8 * v39);
          if ([v41 isEqual:v114])
          {
            goto LABEL_71;
          }

          v42 = 0uLL;
          memset(&v144, 0, sizeof(v144));
          if (v114)
          {
            [v114 timeRange];
            v42 = 0uLL;
            if (v41)
            {
              goto LABEL_45;
            }

LABEL_47:
            *&time1.start.epoch = v42;
            *&time1.duration.timescale = v42;
            *&time1.start.value = v42;
          }

          else
          {
            memset(&time2, 0, sizeof(time2));
            if (!v41)
            {
              goto LABEL_47;
            }

LABEL_45:
            [v41 timeRange];
          }

          CMTimeRangeGetIntersection(&v144, &time2, &time1);
          if ((v144.start.flags & 1) == 0 || (v144.duration.flags & 1) == 0 || v144.duration.epoch || v144.duration.value < 0)
          {
            flags = v94;
            goto LABEL_71;
          }

          requiredSourceTrackIDs = [v114 requiredSourceTrackIDs];
          requiredSourceTrackIDs2 = [v41 requiredSourceTrackIDs];
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          v122 = 0u;
          v44 = requiredSourceTrackIDs;
          v97 = [v44 countByEnumeratingWithState:&v119 objects:v143 count:16];
          if (v97)
          {
            v45 = *v120;
            v96 = compositionCopy;
            v101 = v44;
            v93 = *v120;
            do
            {
              v46 = 0;
              do
              {
                if (*v120 != v45)
                {
                  objc_enumerationMutation(v44);
                }

                v47 = *(*(&v119 + 1) + 8 * v46);
                v115 = 0u;
                v116 = 0u;
                v117 = 0u;
                v118 = 0u;
                v48 = requiredSourceTrackIDs2;
                v49 = [v48 countByEnumeratingWithState:&v115 objects:v142 count:16];
                if (v49)
                {
                  v50 = v49;
                  v51 = *v116;
                  while (2)
                  {
                    for (i = 0; i != v50; ++i)
                    {
                      if (*v116 != v51)
                      {
                        objc_enumerationMutation(v48);
                      }

                      if ([v47 isEqual:*(*(&v115 + 1) + 8 * i)])
                      {
                        *v96 = [NUError errorWithCode:5 reason:@"time ranges for tracks cannot overlap" object:v47];

                        v16 = v106;
                        goto LABEL_79;
                      }
                    }

                    v50 = [v48 countByEnumeratingWithState:&v115 objects:v142 count:16];
                    if (v50)
                    {
                      continue;
                    }

                    break;
                  }
                }

                ++v46;
                v14 = v103;
                selfCopy = v104;
                v16 = v106;
                v44 = v101;
                v45 = v93;
              }

              while (v46 != v97);
              compositionCopy = v96;
              v97 = [v101 countByEnumeratingWithState:&v119 objects:v143 count:16];
            }

            while (v97);
          }

          v39 = v98 + 1;
          flags = v94;
          if (v98 + 1 == v99)
          {
            v99 = [obj countByEnumeratingWithState:&v125 objects:v145 count:16];
            if (v99)
            {
              continue;
            }

            goto LABEL_71;
          }

          goto LABEL_40;
        }
      }

      v135 = 0u;
      v136 = 0u;
      v133 = 0u;
      v134 = 0u;
      instructions = [v21 instructions];
      v28 = [instructions countByEnumeratingWithState:&v133 objects:v147 count:16];
      if (v28)
      {
        v29 = v28;
        v30 = flags;
        v31 = *v134;
        do
        {
          for (j = 0; j != v29; ++j)
          {
            if (*v134 != v31)
            {
              objc_enumerationMutation(instructions);
            }

            v33 = *(*(&v133 + 1) + 8 * j);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              if (_NULogOnceToken != -1)
              {
                dispatch_once(&_NULogOnceToken, &__block_literal_global_16353);
              }

              v56 = _NUAssertLogger;
              if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
              {
                v57 = MEMORY[0x1E696AEC0];
                v58 = v56;
                v59 = [v57 stringWithFormat:@"incorrect class of video instruction"];
                LODWORD(v144.start.value) = 138543362;
                *(&v144.start.value + 4) = v59;
                _os_log_error_impl(&dword_1C0184000, v58, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v144, 0xCu);

                v60 = _NULogOnceToken;
                v61 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey) == 0;
                if (v60 != -1)
                {
                  dispatch_once(&_NULogOnceToken, &__block_literal_global_16353);
                }
              }

              else
              {
                v61 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey) == 0;
              }

              v62 = _NUAssertLogger;
              v63 = os_log_type_enabled(v62, OS_LOG_TYPE_ERROR);
              if (v61)
              {
                if (v63)
                {
                  callStackSymbols3 = [MEMORY[0x1E696AF00] callStackSymbols];
                  v65 = [callStackSymbols3 componentsJoinedByString:@"\n"];
                  LODWORD(v144.start.value) = 138543362;
                  *(&v144.start.value + 4) = v65;
                  _os_log_error_impl(&dword_1C0184000, v62, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v144, 0xCu);
                }
              }

              else if (v63)
              {
                v66 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
                v67 = MEMORY[0x1E696AF00];
                v68 = v66;
                callStackSymbols4 = [v67 callStackSymbols];
                v70 = [callStackSymbols4 componentsJoinedByString:@"\n"];
                LODWORD(v144.start.value) = 138543618;
                *(&v144.start.value + 4) = v66;
                LOWORD(v144.start.flags) = 2114;
                *(&v144.start.flags + 2) = v70;
                _os_log_error_impl(&dword_1C0184000, v62, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v144, 0x16u);
              }

              _NUAssertFailHandler("[NURenderNode _evaluateVideoComposition:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 556, @"incorrect class of video instruction", v71, v72, v73, v74, v92);
            }

            [v15 addObject:v33];
          }

          v29 = [instructions countByEnumeratingWithState:&v133 objects:v147 count:16];
        }

        while (v29);
        v10 = v26;
        v11 = v25;
        v16 = v106;
        flags = v30;
        v14 = v103;
        selfCopy = v104;
      }

      else
      {
        v10 = v26;
        v11 = v25;
      }

LABEL_75:

      v17 = 0;
      v18 = v111;
      v19 = v112 + 1;
    }

    while (v112 + 1 != v108);
    v53 = [(NSDictionary *)v16 countByEnumeratingWithState:&v137 objects:v148 count:16];
    v17 = 0;
    v12 = MEMORY[0x1E6960CC0];
    v108 = v53;
  }

  while (v53);
LABEL_82:

  if ((flags & 1) != 0 && (v144.start.value = value, v144.start.timescale = timescale, v144.start.flags = flags, v144.start.epoch = v18, *&time2.start.value = *v12, time2.start.epoch = v14, CMTimeCompare(&v144.start, &time2.start) > 0))
  {
    v7 = objc_alloc_init(MEMORY[0x1E6988060]);
    [v7 setRenderSize:{v11, v10}];
    v144.start.value = value;
    v144.start.timescale = timescale;
    v144.start.flags = flags;
    v144.start.epoch = v18;
    [v7 setFrameDuration:&v144];
    [v7 setInstructions:v15];
  }

  else
  {
    [NUError invalidError:@"Invalid frame duration for render node" object:selfCopy];
    *compositionCopy = v7 = 0;
  }

LABEL_86:

LABEL_87:

  return v7;
}

- (id)outputVideoComposition:(id *)composition
{
  if ([(NURenderNode *)self isCached])
  {
    cached_outputVideoComposition = [(NURenderNode *)self cached_outputVideoComposition];
    if (!cached_outputVideoComposition)
    {
      v6 = [(NURenderNode *)self _evaluateVideoComposition:composition];
      cached_outputVideoComposition = v6;
      if (composition && !v6 && !*composition)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate video composition", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 484];
        *composition = [NUError unknownError:v7 object:self];
      }

      [(NURenderNode *)self setCached_outputVideoComposition:cached_outputVideoComposition];
    }
  }

  else
  {
    cached_outputVideoComposition = [(NURenderNode *)self _evaluateVideoComposition:composition];
  }

  return cached_outputVideoComposition;
}

- (BOOL)requiresVideoComposition
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_inputs;
  v4 = [(NSDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [(NSDictionary *)self->_inputs objectForKey:*(*(&v12 + 1) + 8 * i), v12];
        requiresVideoComposition = [v8 requiresVideoComposition];

        if (requiresVideoComposition)
        {
          v10 = 1;
          goto LABEL_11;
        }
      }

      v5 = [(NSDictionary *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (id)_evaluateVideo:(id *)video
{
  v51 = *MEMORY[0x1E69E9840];
  if (!video)
  {
    v24 = NUAssertLogger_16336();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != nil"];
      *buf = 138543362;
      v48 = v25;
      _os_log_error_impl(&dword_1C0184000, v24, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v27 = NUAssertLogger_16336();
    v28 = os_log_type_enabled(v27, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v28)
      {
        v31 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v32 = MEMORY[0x1E696AF00];
        v33 = v31;
        callStackSymbols = [v32 callStackSymbols];
        v35 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v48 = v31;
        v49 = 2114;
        v50 = v35;
        _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v28)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v30 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v48 = v30;
      _os_log_error_impl(&dword_1C0184000, v27, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderNode _evaluateVideo:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 410, @"Invalid parameter not satisfying: %s", v36, v37, v38, v39, "error != nil");
  }

  if (![(NSDictionary *)self->_inputs count])
  {
    v9 = @"Cannot generate an AVComposition. no inputs.";
    v10 = 9;
LABEL_26:
    [NUError errorWithCode:v10 reason:v9 object:self];
    *video = v7 = 0;
    goto LABEL_27;
  }

  if ([(NSDictionary *)self->_inputs count]== 1)
  {
    memset(v44, 0, sizeof(v44));
    v5 = self->_inputs;
    if ([(NSDictionary *)v5 countByEnumeratingWithState:v44 objects:v46 count:16])
    {
      v6 = [(NSDictionary *)self->_inputs objectForKey:**(&v44[0] + 1)];
      v7 = [v6 outputVideo:video];
      if (!v7 && !*video)
      {
        v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to get video", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 429];
        *video = [NUError unknownError:v8 object:v6];
      }

      goto LABEL_27;
    }
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v11 = self->_inputs;
  v12 = [(NSDictionary *)v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (!v12)
  {

LABEL_25:
    v9 = @"[NURenderNode _evaluateVideo] expected outputAsset to be set.";
    v10 = 1;
    goto LABEL_26;
  }

  v13 = v12;
  v7 = 0;
  v14 = *v41;
  while (2)
  {
    v15 = 0;
    v16 = v7;
    do
    {
      if (*v41 != v14)
      {
        objc_enumerationMutation(v11);
      }

      v17 = *(*(&v40 + 1) + 8 * v15);
      v18 = [(NSDictionary *)self->_inputs objectForKey:v17];
      v19 = [v18 outputVideo:video];
      if (!v19)
      {
        v21 = [NUError errorWithCode:1 reason:@"Cannot get AV composition for input node" object:v18 underlyingError:*video];
        *video = v21;
        if (!v21)
        {
          v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to get video from %@", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 445, v17];
          *video = [NUError unknownError:v22 object:v18];
        }

        v7 = 0;
        goto LABEL_27;
      }

      v20 = v19;
      v7 = [v19 copy];

      ++v15;
      v16 = v7;
    }

    while (v13 != v15);
    v13 = [(NSDictionary *)v11 countByEnumeratingWithState:&v40 objects:v45 count:16];
    if (v13)
    {
      continue;
    }

    break;
  }

  if (!v7)
  {
    goto LABEL_25;
  }

LABEL_27:

  return v7;
}

- (id)outputVideo:(id *)video
{
  if ([(NURenderNode *)self isCached])
  {
    cached_outputVideo = [(NURenderNode *)self cached_outputVideo];
    if (!cached_outputVideo)
    {
      v6 = [(NURenderNode *)self _evaluateVideo:video];
      cached_outputVideo = v6;
      if (video && !v6 && !*video)
      {
        v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to get video", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 397];
        *video = [NUError unknownError:v7 object:self];
      }

      [(NURenderNode *)self setCached_outputVideo:cached_outputVideo];
    }
  }

  else
  {
    cached_outputVideo = [(NURenderNode *)self _evaluateVideo:video];
  }

  return cached_outputVideo;
}

- (id)evaluateRenderDependenciesWithRequest:(id)request error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  if (![(NURenderNode *)self evaluatedForMode])
  {
    v19 = NUAssertLogger_16336();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Node hasn't been evaluated for render"];
      *buf = 138543362;
      v42 = v20;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v22 = NUAssertLogger_16336();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v23)
      {
        v26 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v27 = MEMORY[0x1E696AF00];
        v28 = v26;
        callStackSymbols = [v27 callStackSymbols];
        v30 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v26;
        v43 = 2114;
        v44 = v30;
        _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v23)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v25 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v25;
      _os_log_error_impl(&dword_1C0184000, v22, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderNode evaluateRenderDependenciesWithRequest:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 367, @"Node hasn't been evaluated for render", v31, v32, v33, v34, v35);
  }

  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v8 = self->_inputs;
  v9 = [(NSDictionary *)v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [(NURenderNode *)self inputForKey:*(*(&v36 + 1) + 8 * i)];
        v14 = [v13 evaluateRenderDependenciesWithRequest:requestCopy error:error];
        if (!v14)
        {
          if (error && !*error)
          {
            v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: unable to evaluate dependencies", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 377, v36];
            *error = [NUError unknownError:v17 object:v13];
          }

          v16 = 0;
          goto LABEL_15;
        }

        v15 = v14;
        [v7 addEntriesFromDictionary:v14];
      }

      v10 = [(NSDictionary *)v8 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = v7;
LABEL_15:

  return v16;
}

- (void)setEvaluatedForMode:(int64_t)mode
{
  v32 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  _evaluatedForMode = [(NURenderNode *)selfCopy _evaluatedForMode];
  if (mode)
  {
    v6 = _evaluatedForMode;
    if (_evaluatedForMode != mode)
    {
      if (_evaluatedForMode)
      {
        if (_NULogOnceToken != -1)
        {
          dispatch_once(&_NULogOnceToken, &__block_literal_global_16353);
        }

        v7 = _NUAssertLogger;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = MEMORY[0x1E696AEC0];
          if (v6 > 3)
          {
            v9 = @"Prepare";
          }

          else
          {
            v9 = off_1E8109570[v6 - 1];
          }

          v10 = v9;
          if ((mode - 1) > 2)
          {
            v11 = @"Prepare";
          }

          else
          {
            v11 = off_1E8109570[mode - 1];
          }

          v12 = v11;
          selfCopy = [v8 stringWithFormat:@"Node is already evaluated for %@ -> %@\n%@", v10, v12, selfCopy];
          *buf = 138543362;
          v29 = selfCopy;
          _os_log_impl(&dword_1C0184000, v7, OS_LOG_TYPE_DEFAULT, "Continue: %{public}@", buf, 0xCu);
        }

        if (dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_16353);
          }

          v14 = _NUAssertLogger;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
            callStackSymbols = [MEMORY[0x1E696AF00] callStackSymbols];
            v17 = [callStackSymbols componentsJoinedByString:@"\n"];
            *buf = 138543618;
            v29 = v15;
            v30 = 2114;
            v31 = v17;
            _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
          }
        }

        else
        {
          if (_NULogOnceToken != -1)
          {
            dispatch_once(&_NULogOnceToken, &__block_literal_global_16353);
          }

          v14 = _NUAssertLogger;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
            v26 = [callStackSymbols2 componentsJoinedByString:@"\n"];
            *buf = 138543362;
            v29 = v26;
            _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
          }
        }

        if (v6 > 3)
        {
          v18 = @"Prepare";
        }

        else
        {
          v18 = off_1E8109570[v6 - 1];
        }

        v19 = v18;
        if ((mode - 1) > 2)
        {
          v20 = @"Prepare";
        }

        else
        {
          v20 = off_1E8109570[mode - 1];
        }

        v27 = v20;
        _NUAssertContinueHandler("[NURenderNode setEvaluatedForMode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 357, @"Node is already evaluated for %@ -> %@\n%@", v21, v22, v23, v24, v19);
      }

      [(NURenderNode *)selfCopy set_evaluatedForMode:mode];
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)resolvedNodeWithCachedInputs:(id)inputs settings:(id)settings pipelineState:(id)state error:(id *)error
{
  settingsCopy = settings;
  inputsCopy = inputs;
  v10 = objc_alloc(objc_opt_class());
  v11 = [inputsCopy copy];

  v12 = *(v10 + 3);
  *(v10 + 3) = v11;

  v13 = [settingsCopy copy];
  v14 = *(v10 + 4);
  *(v10 + 4) = v13;

  objc_storeStrong(v10 + 16, self->_dominantInputKey);
  _generateSpaceMapKey = [v10 _generateSpaceMapKey];
  v16 = *(v10 + 17);
  *(v10 + 17) = _generateSpaceMapKey;

  *(v10 + 18) = *&self->_nodeCreationTime;
  objc_storeStrong(v10 + 19, self->_nodeCreationJobName);
  *(v10 + 20) = self->_cacheHitsCount;

  return v10;
}

- (id)placeholderNodeWithCachedInputs:(id)inputs
{
  v25 = *MEMORY[0x1E69E9840];
  inputsCopy = inputs;
  if ([inputsCopy count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(inputsCopy, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v5 = inputsCopy;
    v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v21;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v11 = [v5 objectForKey:{*(*(&v20 + 1) + 8 * i), v20}];
          if (![v11 isPlaceholderNode] || (objc_msgSend(v11, "inputs"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "count"), v12, v13))
          {
            spaceMapKey = [v11 spaceMapKey];
            [v4 setObject:v11 forKeyedSubscript:spaceMapKey];

            v15 = v11;
            v8 = v15;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v7);
    }

    else
    {
      v8 = 0;
    }

    if ([v4 count] == 1)
    {
      v18 = v8;
    }

    else
    {
      v18 = [[NUPlaceholderNode alloc] initWithInputs:v4];
    }

    v17 = v18;
  }

  else
  {
    v16 = [NUPlaceholderNode alloc];
    v17 = [(NUPlaceholderNode *)v16 initWithInputs:MEMORY[0x1E695E0F8]];
  }

  return v17;
}

- (id)resolvedNodeWithCachedInputs:(id)inputs cache:(id)cache pipelineState:(id)state error:(id *)error
{
  inputsCopy = inputs;
  cacheCopy = cache;
  stateCopy = state;
  if (![(NURenderNode *)self shouldCacheNodeForPipelineState:stateCopy])
  {
    v15 = [(NURenderNode *)self placeholderNodeWithCachedInputs:inputsCopy];
    goto LABEL_6;
  }

  v13 = [(NURenderNode *)self evaluateSettings:self->_settings pipelineState:stateCopy error:error];
  if (!v13)
  {
    if (!error || *error)
    {
      goto LABEL_14;
    }

    v17 = 262;
    goto LABEL_13;
  }

  v14 = [(NURenderNode *)self resolvedNodeWithCachedInputs:inputsCopy settings:v13 pipelineState:stateCopy error:error];
  if (v14)
  {
    v15 = v14;

LABEL_6:
    v16 = [NURenderNode nodeFromCache:v15 cache:cacheCopy];

    [v16 setEvaluatedForMode:{objc_msgSend(stateCopy, "evaluationMode")}];
    goto LABEL_15;
  }

  if (error && !*error)
  {
    v17 = 271;
LABEL_13:
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: failed to evaluate settings", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", v17];
    *error = [NUError unknownError:v18 object:self];
  }

LABEL_14:

  v16 = 0;
LABEL_15:

  return v16;
}

- (BOOL)shouldCacheNodeForPipelineState:(id)state
{
  v33 = *MEMORY[0x1E69E9840];
  stateCopy = state;
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_16353);
  }

  v4 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = v4;
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [v5 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v8];
    *buf = 138543362;
    v30 = v9;
    _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v10 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v10 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_16353);
      }

      goto LABEL_8;
    }

    if (v10 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_16353);
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
  _NUAssertFailHandler("[NURenderNode shouldCacheNodeForPipelineState:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 252, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v25, v26, v27, v28, v24);
}

- (id)nodeByReplayingAgainstCache:(id)cache pipelineState:(id)state error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  stateCopy = state;
  v9 = objc_alloc(MEMORY[0x1E695DF90]);
  inputs = [(NURenderNode *)self inputs];
  v11 = [v9 initWithCapacity:{objc_msgSend(inputs, "count")}];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_inputs;
  v12 = [(NSDictionary *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v28;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v28 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v27 + 1) + 8 * i);
        v17 = [(NSDictionary *)self->_inputs objectForKey:v16];
        v18 = cacheCopy;
        v19 = [v17 nodeByReplayingAgainstCache:cacheCopy pipelineState:stateCopy error:error];
        if (!v19)
        {
          if (error && !*error)
          {
            v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: failed to replay against cache", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 241];
            *error = [NUError unknownError:v23 object:v17];
          }

          v22 = 0;
          v21 = stateCopy;
          goto LABEL_14;
        }

        v20 = v19;
        [v11 setObject:v19 forKeyedSubscript:v16];

        cacheCopy = v18;
      }

      v13 = [(NSDictionary *)obj countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v21 = stateCopy;
  v22 = [(NURenderNode *)self resolvedNodeWithCachedInputs:v11 cache:cacheCopy pipelineState:stateCopy error:error];
LABEL_14:

  return v22;
}

- (id)nodeByReplayingAgainstCache:(id)cache error:(id *)error
{
  v33 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  if (!cacheCopy)
  {
    v13 = NUAssertLogger_16336();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "state != nil"];
      *buf = 138543362;
      v30 = v14;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = NUAssertLogger_16336();
    v17 = os_log_type_enabled(v16, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v17)
      {
        v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v21 = MEMORY[0x1E696AF00];
        v22 = v20;
        callStackSymbols = [v21 callStackSymbols];
        v24 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v30 = v20;
        v31 = 2114;
        v32 = v24;
        _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v17)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v19 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v30 = v19;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderNode nodeByReplayingAgainstCache:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 224, @"Invalid parameter not satisfying: %s", v25, v26, v27, v28, "state != nil");
  }

  v7 = cacheCopy;
  v8 = +[NURenderNodeCache sharedInstance];
  v9 = [(NURenderNode *)self nodeByReplayingAgainstCache:v8 pipelineState:v7 error:error];
  v10 = v9;
  if (error && !v9 && !*error)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"missing error %s:%d: failed to replay against cache", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 228];
    *error = [NUError unknownError:v11 object:self];
  }

  return v10;
}

- (void)resetInput:(id)input forKey:(id)key
{
  v65 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  keyCopy = key;
  if (!inputCopy)
  {
    v11 = NUAssertLogger_16336();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "input != nil"];
      *buf = 138543362;
      v62 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_16336();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        callStackSymbols = [v33 callStackSymbols];
        v36 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v32;
        v63 = 2114;
        v64 = v36;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderNode resetInput:forKey:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 195, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "input != nil");
  }

  if (!keyCopy)
  {
    v18 = NUAssertLogger_16336();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "key != nil"];
      *buf = 138543362;
      v62 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_16336();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v41 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v42 = MEMORY[0x1E696AF00];
        v43 = v41;
        callStackSymbols3 = [v42 callStackSymbols];
        v45 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v41;
        v63 = 2114;
        v64 = v45;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderNode resetInput:forKey:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 196, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "key != nil");
  }

  if ([(NURenderNode *)self isCached])
  {
    v25 = NUAssertLogger_16336();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot mutate a cached node!"];
      *buf = 138543362;
      v62 = v26;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_16336();
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (v27)
    {
      if (v29)
      {
        v50 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v51 = MEMORY[0x1E696AF00];
        v52 = v50;
        callStackSymbols5 = [v51 callStackSymbols];
        v54 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v62 = v50;
        v63 = 2114;
        v64 = v54;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v62 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderNode resetInput:forKey:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 197, @"Cannot mutate a cached node!", v55, v56, v57, v58, v59);
  }

  v7 = [(NSDictionary *)self->_inputs objectForKeyedSubscript:keyCopy];

  if (v7 != inputCopy)
  {
    v8 = [(NSDictionary *)self->_inputs mutableCopy];
    [v8 setObject:inputCopy forKeyedSubscript:keyCopy];
    v9 = [v8 copy];
    inputs = self->_inputs;
    self->_inputs = v9;

    self->_hashValue = 0;
  }
}

- (BOOL)hasCyclicalDependencyForInput:(id)input
{
  v19 = *MEMORY[0x1E69E9840];
  inputCopy = input;
  if ([inputCopy isEqualToRenderNode:self])
  {
    v5 = 1;
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    inputs = [inputCopy inputs];
    v7 = [inputs countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(inputs);
          }

          v11 = [inputCopy inputForKey:*(*(&v14 + 1) + 8 * i)];
          v12 = [(NURenderNode *)self hasCyclicalDependencyForInput:v11];

          if (v12)
          {
            v5 = 1;
            goto LABEL_13;
          }
        }

        v8 = [inputs countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
LABEL_13:
  }

  return v5;
}

- (NURenderNode)initWithSettings:(id)settings inputs:(id)inputs
{
  v68 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  inputsCopy = inputs;
  if (!settingsCopy)
  {
    v31 = NUAssertLogger_16336();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "settings != nil"];
      *buf = 138543362;
      v65 = v32;
      _os_log_error_impl(&dword_1C0184000, v31, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v34 = NUAssertLogger_16336();
    v35 = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v35)
      {
        v45 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v46 = MEMORY[0x1E696AF00];
        v47 = v45;
        callStackSymbols = [v46 callStackSymbols];
        v49 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v45;
        v66 = 2114;
        v67 = v49;
        _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v35)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v37 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v37;
      _os_log_error_impl(&dword_1C0184000, v34, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 95, @"Invalid parameter not satisfying: %s", v50, v51, v52, v53, "settings != nil");
  }

  v8 = inputsCopy;
  if (!inputsCopy)
  {
    v38 = NUAssertLogger_16336();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputs != nil"];
      *buf = 138543362;
      v65 = v39;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v40 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v41 = NUAssertLogger_16336();
    v42 = os_log_type_enabled(v41, OS_LOG_TYPE_ERROR);
    if (v40)
    {
      if (v42)
      {
        v54 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v55 = MEMORY[0x1E696AF00];
        v56 = v54;
        callStackSymbols3 = [v55 callStackSymbols];
        v58 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v65 = v54;
        v66 = 2114;
        v67 = v58;
        _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v42)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v44 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v65 = v44;
      _os_log_error_impl(&dword_1C0184000, v41, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderNode initWithSettings:inputs:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 96, @"Invalid parameter not satisfying: %s", v59, v60, v61, v62, "inputs != nil");
  }

  v63.receiver = self;
  v63.super_class = NURenderNode;
  v9 = [(NURenderNode *)&v63 init];
  v9->_nodeCreationTime = NUAbsoluteTime();
  v10 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
  v11 = v10;
  if (v10)
  {
    v12 = [v10 copy];
  }

  else
  {
    v12 = @"N/A";
  }

  nodeCreationJobName = v9->_nodeCreationJobName;
  v9->_nodeCreationJobName = &v12->isa;

  v14 = [v8 copy];
  inputs = v9->_inputs;
  v9->_inputs = v14;

  v9->_isGeometryNode = 0;
  v9->_hashValue = 0;
  v16 = [settingsCopy objectForKey:@"__dominantInputSettingsKey"];
  dominantInputKey = v9->_dominantInputKey;
  v9->_dominantInputKey = v16;

  if (v9->_dominantInputKey)
  {
    v18 = [settingsCopy mutableCopy];
    [(NSString *)v18 removeObjectForKey:@"__dominantInputSettingsKey"];
    v19 = [(NSString *)v18 copy];
    settings = v9->_settings;
    v9->_settings = v19;

    v21 = [v8 objectForKeyedSubscript:v9->_dominantInputKey];

    if (!v21)
    {
      v22 = v9->_dominantInputKey;
      v9->_dominantInputKey = 0;
    }

    goto LABEL_11;
  }

  v23 = [settingsCopy copy];
  v24 = v9->_settings;
  v9->_settings = v23;

  v25 = *MEMORY[0x1E695FAB0];
  v26 = [v8 objectForKeyedSubscript:*MEMORY[0x1E695FAB0]];

  if (v26)
  {
    v27 = v25;
    v18 = v9->_dominantInputKey;
    v9->_dominantInputKey = v27;
LABEL_11:
  }

  _generateSpaceMapKey = [(NURenderNode *)v9 _generateSpaceMapKey];
  spaceMapKey = v9->_spaceMapKey;
  v9->_spaceMapKey = _generateSpaceMapKey;

  return v9;
}

- (NURenderNode)init
{
  v31 = *MEMORY[0x1E69E9840];
  if (_NULogOnceToken != -1)
  {
    dispatch_once(&_NULogOnceToken, &__block_literal_global_16353);
  }

  v2 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v3 stringWithFormat:@"This is an abstract method! Subclass '%@' should provide concrete implementation", v6];
    *buf = 138543362;
    v28 = v7;
    _os_log_error_impl(&dword_1C0184000, v4, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);

    v8 = _NULogOnceToken;
    if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
    {
      if (v8 != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_16353);
      }

      goto LABEL_8;
    }

    if (v8 != -1)
    {
      dispatch_once(&_NULogOnceToken, &__block_literal_global_16353);
    }
  }

  else if (!dispatch_get_specific(NUCurrentlyExecutingJobNameKey))
  {
LABEL_8:
    v9 = _NUAssertLogger;
    if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
    {
      v10 = MEMORY[0x1E696AF00];
      v11 = v9;
      callStackSymbols = [v10 callStackSymbols];
      v13 = [callStackSymbols componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v28 = v13;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    goto LABEL_14;
  }

  v14 = _NUAssertLogger;
  if (os_log_type_enabled(_NUAssertLogger, OS_LOG_TYPE_ERROR))
  {
    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v16 = MEMORY[0x1E696AF00];
    v17 = specific;
    v18 = v14;
    callStackSymbols2 = [v16 callStackSymbols];
    v20 = [callStackSymbols2 componentsJoinedByString:@"\n"];
    *buf = 138543618;
    v28 = specific;
    v29 = 2114;
    v30 = v20;
    _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
  }

LABEL_14:
  v21 = objc_opt_class();
  v22 = NSStringFromClass(v21);
  _NUAssertFailHandler("[NURenderNode init]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 89, @"This is an abstract method! Subclass '%@' should provide concrete implementation", v23, v24, v25, v26, v22);
}

+ (id)nodeFromCache:(id)cache cache:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  cacheCopy = cache;
  v6 = a4;
  if (!cacheCopy)
  {
    v10 = NUAssertLogger_16336();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "node != nil"];
      *buf = 138543362;
      v43 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_16336();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v24 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v25 = MEMORY[0x1E696AF00];
        v26 = v24;
        callStackSymbols = [v25 callStackSymbols];
        v28 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v24;
        v44 = 2114;
        v45 = v28;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NURenderNode nodeFromCache:cache:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 214, @"Invalid parameter not satisfying: %s", v29, v30, v31, v32, "node != nil");
  }

  v7 = v6;
  if (!v6)
  {
    v17 = NUAssertLogger_16336();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "cache != nil"];
      *buf = 138543362;
      v43 = v18;
      _os_log_error_impl(&dword_1C0184000, v17, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v19 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v20 = NUAssertLogger_16336();
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
    if (v19)
    {
      if (v21)
      {
        v33 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v34 = MEMORY[0x1E696AF00];
        v35 = v33;
        callStackSymbols3 = [v34 callStackSymbols];
        v37 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v43 = v33;
        v44 = 2114;
        v45 = v37;
        _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v21)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v23 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v43 = v23;
      _os_log_error_impl(&dword_1C0184000, v20, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NURenderNode nodeFromCache:cache:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 215, @"Invalid parameter not satisfying: %s", v38, v39, v40, v41, "cache != nil");
  }

  v8 = [v6 retrieveAndCacheNode:cacheCopy];
  [v8 setCached:1];

  return v8;
}

+ (id)nodeFromCache:(id)cache
{
  cacheCopy = cache;
  v4 = +[NURenderNodeCache sharedInstance];
  v5 = [NURenderNode nodeFromCache:cacheCopy cache:v4];

  return v5;
}

- (id)resamplingColorSpace
{
  v13 = *MEMORY[0x1E69E9840];
  if (+[NUGlobalSettings resampleInSourceColorSpace])
  {
    v10 = 0;
    v3 = [(NURenderNode *)self imageProperties:&v10];
    v4 = v10;
    if (v3)
    {
      colorSpace = [v3 colorSpace];
      if ([colorSpace hasCICP])
      {
        v6 = colorSpace;
      }

      else
      {
        v6 = 0;
      }

      v7 = v6;
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_424);
      }

      v8 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v12 = v4;
        _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Failed to load image properties for rescaling, error: %@", buf, 0xCu);
      }

      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)resampleImage:(id)image by:(id)by sampleMode:(int64_t)mode extent:(id *)extent colorSpace:(id)space
{
  var1 = by.var1;
  var0 = by.var0;
  v117[2] = *MEMORY[0x1E69E9840];
  imageCopy = image;
  spaceCopy = space;
  if (!imageCopy)
  {
    v35 = NUAssertLogger_16336();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "inputImage != nil"];
      LODWORD(v115.a) = 138543362;
      *(&v115.a + 4) = v36;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v115, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v38 = NUAssertLogger_16336();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v39)
      {
        v56 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v57 = MEMORY[0x1E696AF00];
        v58 = v56;
        callStackSymbols = [v57 callStackSymbols];
        v60 = [callStackSymbols componentsJoinedByString:@"\n"];
        LODWORD(v115.a) = 138543618;
        *(&v115.a + 4) = v56;
        WORD2(v115.b) = 2114;
        *(&v115.b + 6) = v60;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v115, 0x16u);
      }
    }

    else if (v39)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      LODWORD(v115.a) = 138543362;
      *(&v115.a + 4) = v41;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v115, 0xCu);
    }

    _NUAssertFailHandler("+[NURenderNode(Resampling) resampleImage:by:sampleMode:extent:colorSpace:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 1432, @"Invalid parameter not satisfying: %s", v61, v62, v63, v64, "inputImage != nil");
  }

  if (var0 < 1 || var1 <= 0)
  {
    v42 = NUAssertLogger_16336();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUScaleIsValid(scale)"];
      LODWORD(v115.a) = 138543362;
      *(&v115.a + 4) = v43;
      _os_log_error_impl(&dword_1C0184000, v42, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v115, 0xCu);
    }

    v44 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v45 = NUAssertLogger_16336();
    v46 = os_log_type_enabled(v45, OS_LOG_TYPE_ERROR);
    if (v44)
    {
      if (v46)
      {
        v65 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v66 = MEMORY[0x1E696AF00];
        v67 = v65;
        callStackSymbols3 = [v66 callStackSymbols];
        v69 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        LODWORD(v115.a) = 138543618;
        *(&v115.a + 4) = v65;
        WORD2(v115.b) = 2114;
        *(&v115.b + 6) = v69;
        _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v115, 0x16u);
      }
    }

    else if (v46)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v48 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      LODWORD(v115.a) = 138543362;
      *(&v115.a + 4) = v48;
      _os_log_error_impl(&dword_1C0184000, v45, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v115, 0xCu);
    }

    _NUAssertFailHandler("+[NURenderNode(Resampling) resampleImage:by:sampleMode:extent:colorSpace:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 1433, @"Invalid parameter not satisfying: %s", v70, v71, v72, v73, "NUScaleIsValid(scale)");
  }

  if (!extent->var1.var0 || !extent->var1.var1)
  {
    v49 = NUAssertLogger_16336();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v50 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "NUPixelRectIsEmpty(extent) == NO"];
      LODWORD(v115.a) = 138543362;
      *(&v115.a + 4) = v50;
      _os_log_error_impl(&dword_1C0184000, v49, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v115, 0xCu);
    }

    v51 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v52 = NUAssertLogger_16336();
    v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
    if (v51)
    {
      if (v53)
      {
        v74 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v75 = MEMORY[0x1E696AF00];
        v76 = v74;
        callStackSymbols5 = [v75 callStackSymbols];
        v78 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        LODWORD(v115.a) = 138543618;
        *(&v115.a + 4) = v74;
        WORD2(v115.b) = 2114;
        *(&v115.b + 6) = v78;
        _os_log_error_impl(&dword_1C0184000, v52, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v115, 0x16u);
      }
    }

    else if (v53)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v55 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      LODWORD(v115.a) = 138543362;
      *(&v115.a + 4) = v55;
      _os_log_error_impl(&dword_1C0184000, v52, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v115, 0xCu);
    }

    _NUAssertFailHandler("+[NURenderNode(Resampling) resampleImage:by:sampleMode:extent:colorSpace:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 1434, @"Invalid parameter not satisfying: %s", v79, v80, v81, v82, "NUPixelRectIsEmpty(extent) == NO");
  }

  v14 = spaceCopy;
  if (spaceCopy)
  {
    v15 = [imageCopy imageByColorMatchingWorkingSpaceToColorSpace:{objc_msgSend(spaceCopy, "CGColorSpace")}];
    v16 = v15;
    v17 = v15 != 0;
    if (v15)
    {
      v18 = v15;

      imageCopy = v18;
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_424);
      }

      v19 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v115.a) = 138543362;
        *(&v115.a + 4) = v14;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Failed to color match input image to color space: %{public}@", &v115, 0xCu);
      }
    }
  }

  else
  {
    v17 = 0;
  }

  imageByClampingToExtent = [imageCopy imageByClampingToExtent];
  v21 = NUScaleToDouble(var0, var1);
  v22 = *&v21;
  if (mode == 1)
  {
    _imageBySamplingNearest = [imageByClampingToExtent _imageBySamplingNearest];

    imageByClampingToExtent = _imageBySamplingNearest;
    goto LABEL_21;
  }

  if (mode != 3)
  {
LABEL_21:
    CGAffineTransformMakeScale(&v115, *&v22, *&v22);
    outputImage = [imageByClampingToExtent imageByApplyingTransform:&v115 highQualityDownsample:1];
    goto LABEL_22;
  }

  v116[0] = *MEMORY[0x1E695FAB0];
  v116[1] = @"inputScale";
  v117[0] = imageByClampingToExtent;
  v23 = [MEMORY[0x1E696AD98] numberWithDouble:v21];
  v117[1] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v117 forKeys:v116 count:2];

  v25 = [MEMORY[0x1E695F648] filterWithName:@"CILanczosScaleTransform" withInputParameters:v24];
  if (!v25)
  {
    v83 = NUAssertLogger_16336();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      v84 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to resolve CILanczosScaleTransform scale %f", v22];
      LODWORD(v115.a) = 138543362;
      *(&v115.a + 4) = v84;
      _os_log_error_impl(&dword_1C0184000, v83, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v115, 0xCu);
    }

    v85 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v86 = NUAssertLogger_16336();
    v87 = os_log_type_enabled(v86, OS_LOG_TYPE_ERROR);
    if (v85)
    {
      if (v87)
      {
        v97 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v98 = MEMORY[0x1E696AF00];
        v99 = v97;
        callStackSymbols7 = [v98 callStackSymbols];
        v101 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        LODWORD(v115.a) = 138543618;
        *(&v115.a + 4) = v97;
        WORD2(v115.b) = 2114;
        *(&v115.b + 6) = v101;
        _os_log_error_impl(&dword_1C0184000, v86, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v115, 0x16u);
      }
    }

    else if (v87)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v89 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      LODWORD(v115.a) = 138543362;
      *(&v115.a + 4) = v89;
      _os_log_error_impl(&dword_1C0184000, v86, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v115, 0xCu);
    }

    _NUAssertFailHandler("+[NURenderNode(Resampling) resampleImage:by:sampleMode:extent:colorSpace:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 1457, @"Unable to resolve CILanczosScaleTransform scale %f", v102, v103, v104, v105, v22);
  }

  v26 = v25;
  outputImage = [v25 outputImage];

  if (!outputImage)
  {
    v90 = NUAssertLogger_16336();
    if (os_log_type_enabled(v90, OS_LOG_TYPE_ERROR))
    {
      v91 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unable to apply scale with CILanczosScaleTransform: %@", v26];
      LODWORD(v115.a) = 138543362;
      *(&v115.a + 4) = v91;
      _os_log_error_impl(&dword_1C0184000, v90, OS_LOG_TYPE_ERROR, "Fail: %{public}@", &v115, 0xCu);
    }

    v92 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v93 = NUAssertLogger_16336();
    v94 = os_log_type_enabled(v93, OS_LOG_TYPE_ERROR);
    if (v92)
    {
      if (v94)
      {
        v106 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v107 = MEMORY[0x1E696AF00];
        v108 = v106;
        callStackSymbols9 = [v107 callStackSymbols];
        v110 = [callStackSymbols9 componentsJoinedByString:@"\n"];
        LODWORD(v115.a) = 138543618;
        *(&v115.a + 4) = v106;
        WORD2(v115.b) = 2114;
        *(&v115.b + 6) = v110;
        _os_log_error_impl(&dword_1C0184000, v93, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", &v115, 0x16u);
      }
    }

    else if (v94)
    {
      callStackSymbols10 = [MEMORY[0x1E696AF00] callStackSymbols];
      v96 = [callStackSymbols10 componentsJoinedByString:@"\n"];
      LODWORD(v115.a) = 138543362;
      *(&v115.a + 4) = v96;
      _os_log_error_impl(&dword_1C0184000, v93, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", &v115, 0xCu);
    }

    _NUAssertFailHandler("+[NURenderNode(Resampling) resampleImage:by:sampleMode:extent:colorSpace:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderNode.m", 1460, @"Unable to apply scale with CILanczosScaleTransform: %@", v111, v112, v113, v114, v26);
  }

  imageByClampingToExtent = v24;
LABEL_22:

  if (v17)
  {
    v29 = [outputImage imageByColorMatchingColorSpaceToWorkingSpace:{objc_msgSend(v14, "CGColorSpace")}];
    v30 = v29;
    if (v29)
    {
      v31 = v29;

      outputImage = v31;
    }

    else
    {
      if (_NULogOnceToken != -1)
      {
        dispatch_once(&_NULogOnceToken, &__block_literal_global_424);
      }

      v32 = _NULogger;
      if (os_log_type_enabled(_NULogger, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v115.a) = 138543362;
        *(&v115.a + 4) = v14;
        _os_log_error_impl(&dword_1C0184000, v32, OS_LOG_TYPE_ERROR, "Failed to color match output image to color space: %{public}@", &v115, 0xCu);
      }
    }
  }

  v33 = [outputImage imageByCroppingToRect:{extent->var0.var0, extent->var0.var1, extent->var1.var0, extent->var1.var1}];

  return v33;
}

@end