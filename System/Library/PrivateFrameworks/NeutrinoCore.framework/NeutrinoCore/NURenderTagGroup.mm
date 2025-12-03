@interface NURenderTagGroup
+ (BOOL)validatePath:(id)path error:(id *)error;
- (NURenderTagGroup)init;
- (NURenderTagGroup)parent;
- (id)_descriptionWithLevel:(int64_t)level;
- (id)_nodeWithPathComponents:(id)components atIndex:(unint64_t)index;
- (id)_root;
- (id)addTag:(id)tag forNode:(id)node;
- (id)childWithName:(id)name;
- (id)description;
- (id)finalizeMap:(id)map;
- (id)leafName;
- (id)nodeWithPath:(id)path;
- (id)path;
- (void)_composePathComponents:(id)components;
- (void)addChild:(id)child withName:(id)name;
- (void)removeChildWithName:(id)name;
- (void)visitEveryTagWithBlock:(id)block;
@end

@implementation NURenderTagGroup

- (NURenderTagGroup)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

- (id)finalizeMap:(id)map
{
  mapCopy = map;
  v5 = objc_alloc_init(NUGeometrySpaceMap);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __32__NURenderTagGroup_finalizeMap___block_invoke;
  v11[3] = &unk_1E810AFD0;
  v6 = v5;
  v12 = v6;
  v13 = mapCopy;
  v7 = mapCopy;
  [(NURenderTagGroup *)self visitEveryTagWithBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (void)visitEveryTagWithBlock:(id)block
{
  blockCopy = block;
  tags = self->_tags;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__NURenderTagGroup_visitEveryTagWithBlock___block_invoke;
  v11[3] = &unk_1E810AF80;
  v11[4] = self;
  v6 = blockCopy;
  v12 = v6;
  [(NSMutableDictionary *)tags enumerateKeysAndObjectsUsingBlock:v11];
  children = self->_children;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __43__NURenderTagGroup_visitEveryTagWithBlock___block_invoke_2;
  v9[3] = &unk_1E810AFA8;
  v10 = v6;
  v8 = v6;
  [(NSMutableDictionary *)children enumerateKeysAndObjectsUsingBlock:v9];
}

void __43__NURenderTagGroup_visitEveryTagWithBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AEC0];
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 path];
  v11[0] = v7;
  v8 = [v6 name];
  v11[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:2];
  v10 = [v4 pathWithComponents:v9];

  (*(*(a1 + 40) + 16))();
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  path = [(NURenderTagGroup *)self path];
  v6 = [(NURenderTagGroup *)self _descriptionWithLevel:0];
  v7 = [v3 stringWithFormat:@"<%@:%p path: %@ %@>", v4, self, path, v6];

  return v7;
}

- (id)_descriptionWithLevel:(int64_t)level
{
  v5 = [MEMORY[0x1E696AD60] stringWithFormat:@"tags : %@\n", self->_tags];
  if ([(NSMutableDictionary *)self->_children count])
  {
    if (level >= 1)
    {
      levelCopy = level;
      do
      {
        [v5 appendString:@"  "];
        --levelCopy;
      }

      while (levelCopy);
    }

    [v5 appendFormat:@"> Children (%d):", -[NSMutableDictionary count](self->_children, "count")];
    children = self->_children;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __42__NURenderTagGroup__descriptionWithLevel___block_invoke;
    v9[3] = &unk_1E810AF58;
    v10 = v5;
    levelCopy2 = level;
    [(NSMutableDictionary *)children enumerateKeysAndObjectsUsingBlock:v9];
  }

  return v5;
}

void __42__NURenderTagGroup__descriptionWithLevel___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  [*(a1 + 32) appendString:@"\n"];
  v6 = *(a1 + 40);
  if (v6 >= 1)
  {
    for (i = 0; i < v6; ++i)
    {
      [*(a1 + 32) appendString:@"--"];
      v6 = *(a1 + 40);
    }
  }

  v8 = *(a1 + 32);
  v9 = [v5 _descriptionWithLevel:v6 + 1];
  [v8 appendFormat:@"> '%@'  %@", v10, v9];
}

- (id)nodeWithPath:(id)path
{
  pathComponents = [path pathComponents];
  v5 = [(NURenderTagGroup *)self _nodeWithPathComponents:pathComponents atIndex:0];

  return v5;
}

- (id)_nodeWithPathComponents:(id)components atIndex:(unint64_t)index
{
  componentsCopy = components;
  v7 = index + 1;
  if ([componentsCopy count] == index + 1)
  {
    tags = self->_tags;
    v9 = [componentsCopy objectAtIndexedSubscript:index];
    v10 = [(NSMutableDictionary *)tags objectForKey:v9];
LABEL_6:
    v16 = v10;

    goto LABEL_7;
  }

  v11 = [componentsCopy objectAtIndexedSubscript:index];
  v12 = [v11 isEqualToString:@".."];

  if (v12)
  {
    parent = [(NURenderTagGroup *)self parent];
    v9 = parent;
    v14 = componentsCopy;
    v15 = v7;
LABEL_5:
    v10 = [parent _nodeWithPathComponents:v14 atIndex:v15];
    goto LABEL_6;
  }

  v18 = [componentsCopy objectAtIndexedSubscript:index];
  v19 = [v18 isEqualToString:@"."];

  if (v19)
  {
    v16 = [(NURenderTagGroup *)self _nodeWithPathComponents:componentsCopy atIndex:index + 1];
  }

  else
  {
    v20 = [componentsCopy objectAtIndexedSubscript:index];
    v21 = [v20 isEqualToString:@"/"];

    if (v21)
    {
      parent = [(NURenderTagGroup *)self _root];
      v9 = parent;
      v14 = componentsCopy;
      v15 = 1;
      goto LABEL_5;
    }

    children = self->_children;
    v23 = [componentsCopy objectAtIndexedSubscript:index];
    v24 = [(NSMutableDictionary *)children objectForKey:v23];

    v16 = [v24 _nodeWithPathComponents:componentsCopy atIndex:v7];
  }

LABEL_7:

  return v16;
}

- (id)_root
{
  parent = [(NURenderTagGroup *)self parent];
  v4 = parent;
  if (parent)
  {
    selfCopy = [parent _root];
  }

  else
  {
    selfCopy = self;
  }

  v6 = selfCopy;

  return v6;
}

- (id)addTag:(id)tag forNode:(id)node
{
  v63 = *MEMORY[0x1E69E9840];
  tagCopy = tag;
  nodeCopy = node;
  if (!tagCopy)
  {
    v11 = NUAssertLogger_22844();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v60 = v12;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v14 = NUAssertLogger_22844();
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
        v60 = v32;
        v61 = 2114;
        v62 = v36;
        _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v15)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v17 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = v17;
      _os_log_error_impl(&dword_1C0184000, v14, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTagGroup addTag:forNode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderTagGroup.m", 109, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "name != nil");
  }

  v8 = nodeCopy;
  if (!nodeCopy)
  {
    v18 = NUAssertLogger_22844();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "node != nil"];
      *buf = 138543362;
      v60 = v19;
      _os_log_error_impl(&dword_1C0184000, v18, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v20 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v21 = NUAssertLogger_22844();
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
        v60 = v41;
        v61 = 2114;
        v62 = v45;
        _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v22)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v24 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = v24;
      _os_log_error_impl(&dword_1C0184000, v21, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTagGroup addTag:forNode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderTagGroup.m", 110, @"Invalid parameter not satisfying: %s", v46, v47, v48, v49, "node != nil");
  }

  [(NURenderTagGroup *)self nodeWithPath:tagCopy];
  if (objc_claimAutoreleasedReturnValue())
  {
    v25 = NUAssertLogger_22844();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      tagCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed when attempting to add tag - key '%@' is already present", tagCopy];
      *buf = 138543362;
      v60 = tagCopy;
      _os_log_error_impl(&dword_1C0184000, v25, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v27 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v28 = NUAssertLogger_22844();
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
        v60 = v50;
        v61 = 2114;
        v62 = v54;
        _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v29)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v31 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v60 = v31;
      _os_log_error_impl(&dword_1C0184000, v28, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTagGroup addTag:forNode:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderTagGroup.m", 114, @"Failed when attempting to add tag - key '%@' is already present", v55, v56, v57, v58, tagCopy);
  }

  v9 = [[NURenderTagNode alloc] initWithInput:v8 name:tagCopy];
  [(NSMutableDictionary *)self->_tags setValue:v9 forKey:tagCopy];

  return v9;
}

- (id)path
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 addObject:@"/"];
  [(NURenderTagGroup *)self _composePathComponents:v3];
  v4 = [MEMORY[0x1E696AEC0] pathWithComponents:v3];

  return v4;
}

- (void)_composePathComponents:(id)components
{
  componentsCopy = components;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _composePathComponents:componentsCopy];
  }

  leafName = [(NURenderTagGroup *)self leafName];
  if (leafName)
  {
    [componentsCopy addObject:leafName];
  }
}

- (id)leafName
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__22870;
  v12 = __Block_byref_object_dispose__22871;
  v13 = 0;
  WeakRetained = objc_loadWeakRetained(&self->_parent);
  children = [WeakRetained children];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __28__NURenderTagGroup_leafName__block_invoke;
  v7[3] = &unk_1E810AF30;
  v7[4] = self;
  v7[5] = &v8;
  [children enumerateKeysAndObjectsUsingBlock:v7];

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __28__NURenderTagGroup_leafName__block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v8 = a2;
  if (*(a1 + 32) == a3)
  {
    v9 = v8;
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    v8 = v9;
    *a4 = 1;
  }
}

- (void)removeChildWithName:(id)name
{
  v27 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!nameCopy)
  {
    v6 = NUAssertLogger_22844();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v24 = v7;
      _os_log_error_impl(&dword_1C0184000, v6, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v9 = NUAssertLogger_22844();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v10)
      {
        v13 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v14 = MEMORY[0x1E696AF00];
        v15 = v13;
        callStackSymbols = [v14 callStackSymbols];
        v17 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v24 = v13;
        v25 = 2114;
        v26 = v17;
        _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v10)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v12 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v24 = v12;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTagGroup removeChildWithName:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderTagGroup.m", 57, @"Invalid parameter not satisfying: %s", v18, v19, v20, v21, "name != nil");
  }

  v22 = nameCopy;
  v5 = [(NSMutableDictionary *)self->_children objectForKey:nameCopy];
  [v5 setParent:0];
  [(NSMutableDictionary *)self->_children removeObjectForKey:v22];
}

- (id)childWithName:(id)name
{
  v28 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  if (!nameCopy)
  {
    v8 = NUAssertLogger_22844();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v25 = v9;
      _os_log_error_impl(&dword_1C0184000, v8, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v11 = NUAssertLogger_22844();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v12)
      {
        v15 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v16 = MEMORY[0x1E696AF00];
        v17 = v15;
        callStackSymbols = [v16 callStackSymbols];
        v19 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v25 = v15;
        v26 = 2114;
        v27 = v19;
        _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v12)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v14 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v25 = v14;
      _os_log_error_impl(&dword_1C0184000, v11, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTagGroup childWithName:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderTagGroup.m", 50, @"Invalid parameter not satisfying: %s", v20, v21, v22, v23, "name != nil");
  }

  v5 = nameCopy;
  v6 = [(NSMutableDictionary *)self->_children objectForKey:nameCopy];

  return v6;
}

- (void)addChild:(id)child withName:(id)name
{
  v79 = *MEMORY[0x1E69E9840];
  childCopy = child;
  nameCopy = name;
  if (!childCopy)
  {
    v9 = NUAssertLogger_22844();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "child != nil"];
      *buf = 138543362;
      v76 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_22844();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v37 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v38 = MEMORY[0x1E696AF00];
        v39 = v37;
        callStackSymbols = [v38 callStackSymbols];
        v41 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v37;
        v77 = 2114;
        v78 = v41;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTagGroup addChild:withName:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderTagGroup.m", 38, @"Invalid parameter not satisfying: %s", v42, v43, v44, v45, "child != nil");
  }

  if (!nameCopy)
  {
    v16 = NUAssertLogger_22844();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "name != nil"];
      *buf = 138543362;
      v76 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_22844();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (v20)
      {
        v46 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v47 = MEMORY[0x1E696AF00];
        v48 = v46;
        callStackSymbols3 = [v47 callStackSymbols];
        v50 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v46;
        v77 = 2114;
        v78 = v50;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTagGroup addChild:withName:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderTagGroup.m", 39, @"Invalid parameter not satisfying: %s", v51, v52, v53, v54, "name != nil");
  }

  parent = [childCopy parent];

  if (parent)
  {
    v23 = NUAssertLogger_22844();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Attempting to add a child that is already parented"];
      *buf = 138543362;
      v76 = v24;
      _os_log_error_impl(&dword_1C0184000, v23, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v25 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v26 = NUAssertLogger_22844();
    v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
    if (v25)
    {
      if (v27)
      {
        v55 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v56 = MEMORY[0x1E696AF00];
        v57 = v55;
        callStackSymbols5 = [v56 callStackSymbols];
        v59 = [callStackSymbols5 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v55;
        v77 = 2114;
        v78 = v59;
        _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v27)
    {
      callStackSymbols6 = [MEMORY[0x1E696AF00] callStackSymbols];
      v29 = [callStackSymbols6 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v29;
      _os_log_error_impl(&dword_1C0184000, v26, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTagGroup addChild:withName:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderTagGroup.m", 41, @"Attempting to add a child that is already parented", v60, v61, v62, v63, v73);
  }

  v8 = [(NSMutableDictionary *)self->_children objectForKey:nameCopy];

  if (v8)
  {
    v30 = NUAssertLogger_22844();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"A child node with that tag is already present!"];
      *buf = 138543362;
      v76 = v31;
      _os_log_error_impl(&dword_1C0184000, v30, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v33 = NUAssertLogger_22844();
    v34 = os_log_type_enabled(v33, OS_LOG_TYPE_ERROR);
    if (v32)
    {
      if (v34)
      {
        v64 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v65 = MEMORY[0x1E696AF00];
        v66 = v64;
        callStackSymbols7 = [v65 callStackSymbols];
        v68 = [callStackSymbols7 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v76 = v64;
        v77 = 2114;
        v78 = v68;
        _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v34)
    {
      callStackSymbols8 = [MEMORY[0x1E696AF00] callStackSymbols];
      v36 = [callStackSymbols8 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v76 = v36;
      _os_log_error_impl(&dword_1C0184000, v33, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("[NURenderTagGroup addChild:withName:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderTagGroup.m", 42, @"A child node with that tag is already present!", v69, v70, v71, v72, v73);
  }

  [childCopy setParent:self];
  [(NSMutableDictionary *)self->_children setObject:childCopy forKey:nameCopy];
}

- (NURenderTagGroup)init
{
  v8.receiver = self;
  v8.super_class = NURenderTagGroup;
  v2 = [(NURenderTagGroup *)&v8 init];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  tags = v2->_tags;
  v2->_tags = v3;

  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  children = v2->_children;
  v2->_children = v5;

  return v2;
}

+ (BOOL)validatePath:(id)path error:(id *)error
{
  v45 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!pathCopy)
  {
    v9 = NUAssertLogger_22844();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "path != nil"];
      *buf = 138543362;
      v42 = v10;
      _os_log_error_impl(&dword_1C0184000, v9, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    specific = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v12 = NUAssertLogger_22844();
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (specific)
    {
      if (v13)
      {
        v23 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v24 = MEMORY[0x1E696AF00];
        v25 = v23;
        callStackSymbols = [v24 callStackSymbols];
        v27 = [callStackSymbols componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v23;
        v43 = 2114;
        v44 = v27;
        _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v13)
    {
      callStackSymbols2 = [MEMORY[0x1E696AF00] callStackSymbols];
      v15 = [callStackSymbols2 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v15;
      _os_log_error_impl(&dword_1C0184000, v12, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NURenderTagGroup validatePath:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderTagGroup.m", 125, @"Invalid parameter not satisfying: %s", v28, v29, v30, v31, "path != nil");
  }

  if (!error)
  {
    v16 = NUAssertLogger_22844();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid parameter not satisfying: %s", "error != NULL"];
      *buf = 138543362;
      v42 = v17;
      _os_log_error_impl(&dword_1C0184000, v16, OS_LOG_TYPE_ERROR, "Fail: %{public}@", buf, 0xCu);
    }

    v18 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
    v19 = NUAssertLogger_22844();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (v18)
    {
      if (v20)
      {
        v32 = dispatch_get_specific(NUCurrentlyExecutingJobNameKey);
        v33 = MEMORY[0x1E696AF00];
        v34 = v32;
        callStackSymbols3 = [v33 callStackSymbols];
        v36 = [callStackSymbols3 componentsJoinedByString:@"\n"];
        *buf = 138543618;
        v42 = v32;
        v43 = 2114;
        v44 = v36;
        _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "job: %{public}@\nTrace:\n%{public}@", buf, 0x16u);
      }
    }

    else if (v20)
    {
      callStackSymbols4 = [MEMORY[0x1E696AF00] callStackSymbols];
      v22 = [callStackSymbols4 componentsJoinedByString:@"\n"];
      *buf = 138543362;
      v42 = v22;
      _os_log_error_impl(&dword_1C0184000, v19, OS_LOG_TYPE_ERROR, "Trace:\n%{public}@", buf, 0xCu);
    }

    _NUAssertFailHandler("+[NURenderTagGroup validatePath:error:]", "/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/neutrino/Core/Pipeline/NURenderTagGroup.m", 126, @"Invalid parameter not satisfying: %s", v37, v38, v39, v40, "error != NULL");
  }

  v6 = pathCopy;
  v7 = [pathCopy isEqualToString:&stru_1F3F4BA98];
  if (v7)
  {
    *error = [NUError mismatchError:@"Empty paths not allowed" object:v6];
  }

  return v7 ^ 1;
}

@end