@interface NUGeometrySpaceMap
+ (BOOL)_canReduceSpaces:(id)spaces withSpaces:(id)withSpaces;
+ (id)_reduceSpaces:(id)spaces withSpaces:(id)withSpaces;
- (NUGeometrySpaceMap)init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)spaceForKey:(id)key;
- (id)spacesForKey:(id)key;
- (id)taggedSpacesForKey:(id)key;
- (id)transformWithSourceSpace:(id)space destinationSpace:(id)destinationSpace error:(id *)error;
- (unint64_t)count;
- (void)addTagNode:(id)node;
- (void)applyTransform:(id)transform;
- (void)enumerateSpacesUsingBlock:(id)block;
- (void)mergeWithSpaceMap:(id)map;
- (void)setSpace:(id)space forKey:(id)key;
- (void)setSpaces:(id)spaces forKey:(id)key;
- (void)setSpacesFromMap:(id)map andPruneAgainstTagNode:(id)node withPath:(id)path;
@end

@implementation NUGeometrySpaceMap

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(NSMutableDictionary *)self->_spaces count];
  if ([(NSMutableDictionary *)self->_spaces count])
  {
    spaces = self->_spaces;
  }

  else
  {
    spaces = @"{}";
  }

  return [v3 stringWithFormat:@"<%@:%p spaces (%lu)  :: %@>", v4, self, v5, spaces];
}

- (id)transformWithSourceSpace:(id)space destinationSpace:(id)destinationSpace error:(id *)error
{
  v78 = *MEMORY[0x1E69E9840];
  spaceCopy = space;
  destinationSpaceCopy = destinationSpace;
  if (!spaceCopy)
  {
    v26 = NUAssertLogger_9883();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "srcSpaceName != nil"];
      *buf = 138543362;
      v75 = v27;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v29 = NUAssertLogger_9883();
    v30 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v30)
      {
        v47 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v48 = MEMORY[0x1E696AF00];
        v49 = v47;
        callStackSymbols = [v48 callStackSymbols];
        v51 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v75 = v47;
        v76 = 2114;
        v77 = v51;
        _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v30)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v32 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v75 = v32;
      _os_log_error_impl(&dword_1C0184000, v29, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUGeometrySpaceMap transformWithSourceSpace:destinationSpace:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometrySpaceMap.m", 418, @"Invalid parameter not satisfying: %s", v52, v53, v54, v55, "srcSpaceName != nil");
  }

  v10 = destinationSpaceCopy;
  if (!destinationSpaceCopy)
  {
    v33 = NUAssertLogger_9883();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "dstSpaceName != nil"];
      *buf = 138543362;
      v75 = v34;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v35 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v36 = NUAssertLogger_9883();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
    if (v35)
    {
      if (v37)
      {
        v56 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v57 = MEMORY[0x1E696AF00];
        v58 = v56;
        callStackSymbols3 = [v57 callStackSymbols];
        v60 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v75 = v56;
        v76 = 2114;
        v77 = v60;
        _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v37)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v39 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v75 = v39;
      _os_log_error_impl(&dword_1C0184000, v36, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUGeometrySpaceMap transformWithSourceSpace:destinationSpace:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometrySpaceMap.m", 419, @"Invalid parameter not satisfying: %s", v61, v62, v63, v64, "dstSpaceName != nil");
  }

  if (!error)
  {
    v40 = NUAssertLogger_9883();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v75 = v41;
      _os_log_error_impl(&dword_1C0184000, v40, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v43 = NUAssertLogger_9883();
    v44 = os_log_type_enabled(v43, OS_LOG_TYPE_ERROR);
    if (v42)
    {
      if (v44)
      {
        v65 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v66 = MEMORY[0x1E696AF00];
        v67 = v65;
        callStackSymbols5 = [v66 callStackSymbols];
        v69 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v75 = v65;
        v76 = 2114;
        v77 = v69;
        _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v44)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v46 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v75 = v46;
      _os_log_error_impl(&dword_1C0184000, v43, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUGeometrySpaceMap transformWithSourceSpace:destinationSpace:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometrySpaceMap.m", 420, @"Invalid parameter not satisfying: %s", v70, v71, v72, v73, "error != NULL");
  }

  v11 = [(NUGeometrySpaceMap *)self taggedSpacesForKey:spaceCopy];
  v12 = v11;
  if (!v11)
  {
    v23 = [NUError missingError:@"No such space" object:spaceCopy];
LABEL_11:
    v22 = 0;
    *error = v23;
    goto LABEL_16;
  }

  if ([v11 count] != 1)
  {
    v23 = [NUError errorWithCode:2 reason:@"Ill-posed space map / incorrect number of entries for the source space" object:v12];
    goto LABEL_11;
  }

  v13 = [(NUGeometrySpaceMap *)self taggedSpacesForKey:v10];
  v14 = v13;
  if (!v13)
  {
    v24 = [NUError missingError:@"No such space" object:v10];
LABEL_14:
    v22 = 0;
    *error = v24;
    goto LABEL_15;
  }

  if ([v13 count] != 1)
  {
    v24 = [NUError errorWithCode:2 reason:@"Ill-posed space map / incorrect number of entries for the destination space" object:v14];
    goto LABEL_14;
  }

  v15 = [v12 objectAtIndexedSubscript:0];
  space = [v15 space];

  v17 = [v14 objectAtIndexedSubscript:0];
  space2 = [v17 space];

  v19 = [NUCompoundTransform alloc];
  transformStack = [space transformStack];
  transformStack2 = [space2 transformStack];
  v22 = [(NUCompoundTransform *)v19 initWithSrcTransforms:transformStack dstTransforms:transformStack2];

LABEL_15:
LABEL_16:

  return v22;
}

- (void)mergeWithSpaceMap:(id)map
{
  v30 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  if (!mapCopy)
  {
    v7 = NUAssertLogger_9883();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "otherSpaceMap != nil"];
      *buf = 138543362;
      v27 = v8;
      _os_log_error_impl(&dword_1C0184000, v7, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v10 = NUAssertLogger_9883();
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
        *buf = 138543618;
        v27 = v14;
        v28 = 2114;
        v29 = v18;
        _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v11)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v13 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v13;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUGeometrySpaceMap mergeWithSpaceMap:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometrySpaceMap.m", 373, @"Invalid parameter not satisfying: %s", v19, v20, v21, v22, "otherSpaceMap != nil");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__NUGeometrySpaceMap_mergeWithSpaceMap___block_invoke;
  block[3] = &unk_1E810B958;
  v24 = mapCopy;
  selfCopy = self;
  v6 = mapCopy;
  dispatch_sync(queue, block);
}

uint64_t __40__NUGeometrySpaceMap_mergeWithSpaceMap___block_invoke(uint64_t a1)
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__NUGeometrySpaceMap_mergeWithSpaceMap___block_invoke_2;
  v3[3] = &unk_1E8109FD0;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 enumerateSpacesUsingBlock:v3];
}

void __40__NUGeometrySpaceMap_mergeWithSpaceMap___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [*(*(a1 + 32) + 16) objectForKey:v11];
  v7 = v6;
  if (v6)
  {
    if ([v6 isEqualToArray:v5])
    {
      goto LABEL_9;
    }

    if (![NUGeometrySpaceMap _canReduceSpaces:v7 withSpaces:v5])
    {
      v9 = [v7 mutableCopy];
      v10 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v5 copyItems:1];
      [v9 addObjectsFromArray:v10];
      [*(*(a1 + 32) + 16) setObject:v9 forKey:v11];

      goto LABEL_8;
    }

    v8 = [NUGeometrySpaceMap _reduceSpaces:v7 withSpaces:v5];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v5 copyItems:1];
  }

  v9 = v8;
  [*(*(a1 + 32) + 16) setObject:v8 forKey:v11];
LABEL_8:

LABEL_9:
}

- (void)enumerateSpacesUsingBlock:(id)block
{
  blockCopy = block;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__NUGeometrySpaceMap_enumerateSpacesUsingBlock___block_invoke;
  v7[3] = &unk_1E810BA70;
  v7[4] = self;
  v8 = blockCopy;
  v6 = blockCopy;
  dispatch_sync(queue, v7);
}

- (void)setSpacesFromMap:(id)map andPruneAgainstTagNode:(id)node withPath:(id)path
{
  v69 = *MEMORY[0x1E69E9840];
  mapCopy = map;
  nodeCopy = node;
  pathCopy = path;
  geometryNode = [nodeCopy geometryNode];
  if (!geometryNode)
  {
    v35 = NUAssertLogger_9883();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      pathCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Cannot find the node for the given tag '%@' in the map", pathCopy];
      *buf = 138543362;
      v66 = pathCopy;
      _os_log_error_impl(&dword_1C0184000, v35, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v38 = NUAssertLogger_9883();
    v39 = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v39)
      {
        v42 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v43 = MEMORY[0x1E696AF00];
        v44 = v42;
        callStackSymbols = [v43 callStackSymbols];
        v46 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v66 = v42;
        v67 = 2114;
        v68 = v46;
        _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v39)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v41 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v66 = v41;
      _os_log_error_impl(&dword_1C0184000, v38, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUGeometrySpaceMap setSpacesFromMap:andPruneAgainstTagNode:withPath:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometrySpaceMap.m", 292, @"Cannot find the node for the given tag '%@' in the map", v47, v48, v49, v50, pathCopy);
  }

  v12 = geometryNode;
  spaceMapKey = [geometryNode spaceMapKey];
  v14 = [mapCopy taggedSpacesForKey:spaceMapKey];

  if (v14)
  {
    v51 = v12;
    selfCopy = self;
    v53 = mapCopy;
    v54 = pathCopy;
    v15 = objc_opt_new();
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v59 objects:v64 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v60;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v60 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v59 + 1) + 8 * i);
          tagNodes = [v21 tagNodes];
          if ([tagNodes containsObject:nodeCopy])
          {
            v23 = [_NUTaggedSpace alloc];
            space = [v21 space];
            v25 = [(_NUTaggedSpace *)v23 initWithSpace:space];

            [v15 addObject:v25];
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v59 objects:v64 count:16];
      }

      while (v18);
    }

    if (![v15 count])
    {
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v26 = v16;
      v27 = [v26 countByEnumeratingWithState:&v55 objects:v63 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v56;
        do
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v56 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v55 + 1) + 8 * j);
            v32 = [_NUTaggedSpace alloc];
            space2 = [v31 space];
            v34 = [(_NUTaggedSpace *)v32 initWithSpace:space2];

            [v15 addObject:v34];
          }

          v28 = [v26 countByEnumeratingWithState:&v55 objects:v63 count:16];
        }

        while (v28);
      }
    }

    pathCopy = v54;
    [(NUGeometrySpaceMap *)selfCopy setSpaces:v15 forKey:v54];

    mapCopy = v53;
    v12 = v51;
  }
}

- (void)setSpaces:(id)spaces forKey:(id)key
{
  v50 = *MEMORY[0x1E69E9840];
  spacesCopy = spaces;
  keyCopy = key;
  if (!spacesCopy)
  {
    v11 = NUAssertLogger_9883();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "spaces != nil"];
      *buf = 138543362;
      v47 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_9883();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v25;
        v48 = 2114;
        v49 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUGeometrySpaceMap setSpaces:forKey:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometrySpaceMap.m", 276, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "spaces != nil");
  }

  if (!keyCopy)
  {
    v18 = NUAssertLogger_9883();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "key != nil"];
      *buf = 138543362;
      v47 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_9883();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols3 = [v35 callStackSymbols];
        v38 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v47 = v34;
        v48 = 2114;
        v49 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v47 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUGeometrySpaceMap setSpaces:forKey:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometrySpaceMap.m", 277, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "key != nil");
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__NUGeometrySpaceMap_setSpaces_forKey___block_invoke;
  block[3] = &unk_1E810B3A0;
  block[4] = self;
  v44 = spacesCopy;
  v45 = keyCopy;
  v9 = keyCopy;
  v10 = spacesCopy;
  dispatch_sync(queue, block);
}

void __39__NUGeometrySpaceMap_setSpaces_forKey___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v3 = [*(a1 + 40) copy];
  [v2 setObject:v3 forKey:*(a1 + 48)];
}

- (void)setSpace:(id)space forKey:(id)key
{
  v48 = *MEMORY[0x1E69E9840];
  spaceCopy = space;
  keyCopy = key;
  if (!spaceCopy)
  {
    v11 = NUAssertLogger_9883();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "space != nil"];
      *buf = 138543362;
      v45 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_9883();
    v15 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v15)
      {
        v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v26 = MEMORY[0x1E696AF00];
        v27 = v25;
        callStackSymbols = [v26 callStackSymbols];
        v29 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v25;
        v46 = 2114;
        v47 = v29;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUGeometrySpaceMap setSpace:forKey:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometrySpaceMap.m", 267, @"Invalid parameter not satisfying: %s", v30, v31, v32, v33, "space != nil");
  }

  v8 = keyCopy;
  if (!keyCopy)
  {
    v18 = NUAssertLogger_9883();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "key != nil"];
      *buf = 138543362;
      v45 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_9883();
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_ERROR);
    if (v20)
    {
      if (v22)
      {
        v34 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v35 = MEMORY[0x1E696AF00];
        v36 = v34;
        callStackSymbols3 = [v35 callStackSymbols];
        v38 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v45 = v34;
        v46 = 2114;
        v47 = v38;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v45 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUGeometrySpaceMap setSpace:forKey:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometrySpaceMap.m", 268, @"Invalid parameter not satisfying: %s", v39, v40, v41, v42, "key != nil");
  }

  v9 = [[_NUTaggedSpace alloc] initWithSpace:spaceCopy];
  v43 = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v43 count:1];
  [(NUGeometrySpaceMap *)self setSpaces:v10 forKey:v8];
}

- (id)spaceForKey:(id)key
{
  v30 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (!keyCopy)
  {
    v10 = NUAssertLogger_9883();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "key != nil"];
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_1C0184000, v10, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v13 = NUAssertLogger_9883();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v14)
      {
        v17 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v18 = MEMORY[0x1E696AF00];
        v19 = v17;
        callStackSymbols = [v18 callStackSymbols];
        v21 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v14)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v16 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v27 = v16;
      _os_log_error_impl(&dword_1C0184000, v13, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUGeometrySpaceMap spaceForKey:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometrySpaceMap.m", 255, @"Invalid parameter not satisfying: %s", v22, v23, v24, v25, "key != nil");
  }

  v5 = keyCopy;
  v6 = [(NUGeometrySpaceMap *)self taggedSpacesForKey:keyCopy];
  if ([v6 count] == 1)
  {
    v7 = [v6 objectAtIndexedSubscript:0];
    space = [v7 space];
  }

  else
  {
    space = 0;
  }

  return space;
}

- (id)spacesForKey:(id)key
{
  v41 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  if (!keyCopy)
  {
    v16 = NUAssertLogger_9883();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "key != nil"];
      *buf = 138543362;
      v38 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_9883();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v20)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v38 = v23;
        v39 = 2114;
        v40 = v27;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v38 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NUGeometrySpaceMap spacesForKey:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Geometry/NUGeometrySpaceMap.m", 238, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "key != nil");
  }

  v5 = keyCopy;
  v6 = [(NUGeometrySpaceMap *)self taggedSpacesForKey:keyCopy];
  v7 = v6;
  if (v6)
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          space = [*(*(&v32 + 1) + 8 * i) space];
          [v8 addObject:space];
        }

        v11 = [v9 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v11);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)taggedSpacesForKey:(id)key
{
  keyCopy = key;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__9999;
  v16 = __Block_byref_object_dispose__10000;
  v17 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__NUGeometrySpaceMap_taggedSpacesForKey___block_invoke;
  block[3] = &unk_1E810B500;
  v10 = keyCopy;
  v11 = &v12;
  block[4] = self;
  v6 = keyCopy;
  dispatch_sync(queue, block);
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __41__NUGeometrySpaceMap_taggedSpacesForKey___block_invoke(void *a1)
{
  *(*(a1[6] + 8) + 40) = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];

  return MEMORY[0x1EEE66BB8]();
}

- (void)addTagNode:(id)node
{
  nodeCopy = node;
  geometryNode = [nodeCopy geometryNode];
  spaceMapKey = [geometryNode spaceMapKey];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__NUGeometrySpaceMap_addTagNode___block_invoke;
  block[3] = &unk_1E810B3A0;
  block[4] = self;
  v11 = spaceMapKey;
  v12 = nodeCopy;
  v8 = nodeCopy;
  v9 = spaceMapKey;
  dispatch_sync(queue, block);
}

void __33__NUGeometrySpaceMap_addTagNode___block_invoke(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1[4] + 16) objectForKeyedSubscript:a1[5]];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) addTagNode:a1[6]];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)applyTransform:(id)transform
{
  transformCopy = transform;
  v5 = transformCopy;
  if (transformCopy)
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __37__NUGeometrySpaceMap_applyTransform___block_invoke;
    v6[3] = &unk_1E8109FD0;
    v7 = transformCopy;
    [(NUGeometrySpaceMap *)self enumerateSpacesUsingBlock:v6];
  }
}

void __37__NUGeometrySpaceMap_applyTransform___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) space];
        [v9 appendTransform:*(a1 + 32)];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__NUGeometrySpaceMap_count__block_invoke;
  v5[3] = &unk_1E810B980;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __27__NUGeometrySpaceMap_count__block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 16) count];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[NUGeometrySpaceMap allocWithZone:](NUGeometrySpaceMap init];
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __35__NUGeometrySpaceMap_copyWithZone___block_invoke;
  block[3] = &unk_1E810B750;
  v7 = v5;
  v11 = v7;
  selfCopy = self;
  zoneCopy = zone;
  dispatch_sync(queue, block);
  v8 = v7;

  return v8;
}

uint64_t __35__NUGeometrySpaceMap_copyWithZone___block_invoke(void *a1)
{
  *(a1[4] + 16) = [*(a1[5] + 16) mutableCopyWithZone:a1[6]];

  return MEMORY[0x1EEE66BB8]();
}

- (NUGeometrySpaceMap)init
{
  v9.receiver = self;
  v9.super_class = NUGeometrySpaceMap;
  v2 = [(NUGeometrySpaceMap *)&v9 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("NUGeometrySpaceMap", v3);
  queue = v2->_queue;
  v2->_queue = v4;

  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  spaces = v2->_spaces;
  v2->_spaces = v6;

  return v2;
}

+ (id)_reduceSpaces:(id)spaces withSpaces:(id)withSpaces
{
  withSpacesCopy = withSpaces;
  v6 = [spaces mutableCopy];
  if ([withSpacesCopy count])
  {
    v7 = 0;
    do
    {
      v8 = [withSpacesCopy objectAtIndexedSubscript:v7];
      v9 = [v6 objectAtIndexedSubscript:v7];
      [v9 mergeSpace:v8];

      ++v7;
    }

    while (v7 < [withSpacesCopy count]);
  }

  return v6;
}

+ (BOOL)_canReduceSpaces:(id)spaces withSpaces:(id)withSpaces
{
  v29 = *MEMORY[0x1E69E9840];
  spacesCopy = spaces;
  withSpacesCopy = withSpaces;
  v7 = [spacesCopy count];
  if (v7 == [withSpacesCopy count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v8 = spacesCopy;
    v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v24;
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v23 + 1) + 8 * v12) hasTransform])
        {
          break;
        }

        if (v10 == ++v12)
        {
          v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
          if (v10)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = withSpacesCopy;
      v13 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
      if (!v13)
      {
        v17 = 1;
        goto LABEL_21;
      }

      v14 = v13;
      v15 = *v20;
LABEL_12:
      v16 = 0;
      while (1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v8);
        }

        if ([*(*(&v19 + 1) + 8 * v16) hasTransform])
        {
          break;
        }

        if (v14 == ++v16)
        {
          v14 = [v8 countByEnumeratingWithState:&v19 objects:v27 count:16];
          v17 = 1;
          if (v14)
          {
            goto LABEL_12;
          }

          goto LABEL_21;
        }
      }
    }

    v17 = 0;
LABEL_21:

    goto LABEL_22;
  }

  v17 = 0;
LABEL_22:

  return v17;
}

@end