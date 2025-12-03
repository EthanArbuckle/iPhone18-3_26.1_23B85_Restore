@interface DOCThumbnailGenerator
+ (DOCThumbnailGenerator)sharedGenerator;
- (DOCThumbnailGenerator)init;
- (id)_alternateThumbnailKeyForNode:(id)node originalKey:(id)key descriptor:(id)descriptor;
- (id)_currentNodeThumbnailsBatch;
- (id)_endCurrentThumbnailsBatch;
- (id)_thumbnailFallbackForNode:(id)node descriptor:(id)descriptor currentThumbnail:(id)thumbnail;
- (id)_thumbnailForNode:(id)node descriptor:(id)descriptor forceFetch:(BOOL)fetch;
- (id)iconForNode:(id)node descriptor:(id)descriptor;
- (id)iconForURL:(id)l descriptor:(id)descriptor;
- (id)startBatching;
- (void)endBatching:(id)batching;
- (void)markThumbnailAsRecentlyUsed:(id)used;
- (void)performInBatch:(id)batch;
- (void)startBatching;
@end

@implementation DOCThumbnailGenerator

+ (DOCThumbnailGenerator)sharedGenerator
{
  if (sharedGenerator_onceToken != -1)
  {
    +[DOCThumbnailGenerator sharedGenerator];
  }

  v3 = sharedGenerator_sharedGenerator;

  return v3;
}

uint64_t __40__DOCThumbnailGenerator_sharedGenerator__block_invoke()
{
  sharedGenerator_sharedGenerator = objc_alloc_init(DOCThumbnailGenerator);

  return MEMORY[0x2821F96F8]();
}

- (DOCThumbnailGenerator)init
{
  v8.receiver = self;
  v8.super_class = DOCThumbnailGenerator;
  v2 = [(DOCThumbnailGenerator *)&v8 init];
  if (v2)
  {
    mEMORY[0x277CDAAE0] = [MEMORY[0x277CDAAE0] sharedGenerator];
    thumbnailGenerator = v2->_thumbnailGenerator;
    v2->_thumbnailGenerator = mEMORY[0x277CDAAE0];

    v5 = objc_opt_new();
    thumbnailCache = v2->_thumbnailCache;
    v2->_thumbnailCache = v5;
  }

  return v2;
}

- (id)startBatching
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"DOCThumbnailGeneratorNodeThumbnailsBatchKey"];
  v5 = [threadDictionary objectForKeyedSubscript:@"DOCThumbnailActiveBatchingTokensKey"];
  if (![v5 count])
  {
    if (v4)
    {
      [DOCThumbnailGenerator startBatching];
    }

    v6 = objc_opt_new();

    [threadDictionary setObject:v6 forKeyedSubscript:@"DOCThumbnailGeneratorNodeThumbnailsBatchKey"];
    weakObjectsPointerArray = [MEMORY[0x277CCAC18] weakObjectsPointerArray];

    [threadDictionary setObject:weakObjectsPointerArray forKeyedSubscript:@"DOCThumbnailActiveBatchingTokensKey"];
    v5 = weakObjectsPointerArray;
    v4 = v6;
  }

  v8 = objc_opt_new();
  [v5 addPointer:v8];

  return v8;
}

- (id)_endCurrentThumbnailsBatch
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"DOCThumbnailGeneratorNodeThumbnailsBatchKey"];
  v5 = [v4 copy];

  [threadDictionary setObject:0 forKeyedSubscript:@"DOCThumbnailGeneratorNodeThumbnailsBatchKey"];

  return v5;
}

- (id)_thumbnailForNode:(id)node descriptor:(id)descriptor forceFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  nodeCopy = node;
  descriptorCopy = descriptor;
  v10 = [DOCThumbnailKey alloc];
  thumbnailIdentifier = [nodeCopy thumbnailIdentifier];
  v12 = [(DOCThumbnailKey *)v10 initWithPrimaryKey:thumbnailIdentifier descriptor:descriptorCopy];

  v13 = [(DOCThumbnailGenerator *)self _alternateThumbnailKeyForNode:nodeCopy originalKey:v12 descriptor:descriptorCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cachedThumbnailNodes = [(DOCThumbnailCache *)selfCopy->_thumbnailCache cachedThumbnailNodes];
  v16 = [cachedThumbnailNodes objectForKey:v12];

  if (!v16)
  {
    cachedThumbnailNodes2 = [(DOCThumbnailCache *)selfCopy->_thumbnailCache cachedThumbnailNodes];
    v16 = [cachedThumbnailNodes2 objectForKey:v13];
  }

  objc_sync_exit(selfCopy);

  v18 = [(DOCThumbnailGenerator *)selfCopy _thumbnailFallbackForNode:nodeCopy descriptor:descriptorCopy currentThumbnail:v16];
  if (!v18)
  {
    v18 = [(DOCThumbnailGenerator *)selfCopy iconForNode:nodeCopy descriptor:descriptorCopy];
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_11:
    v23 = [[DOCNodeThumbnail alloc] initWithGenerator:selfCopy node:nodeCopy descriptor:descriptorCopy fallback:v18];
    _currentNodeThumbnailsBatch = [(DOCThumbnailGenerator *)selfCopy _currentNodeThumbnailsBatch];
    v25 = _currentNodeThumbnailsBatch;
    if (fetchCopy)
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }

    if (_currentNodeThumbnailsBatch)
    {
      v27 = objc_opt_new();
      [v27 setThumbnail:v23];
      [v27 setFetchOptions:v26];
      [v25 addObject:v27];
    }

    else
    {
      [(DOCNodeThumbnail *)v23 fetchWithOptions:v26];
    }

    v28 = selfCopy;
    objc_sync_enter(v28);
    cachedThumbnailNodes3 = [(DOCThumbnailCache *)selfCopy->_thumbnailCache cachedThumbnailNodes];
    [cachedThumbnailNodes3 setObject:v23 forKey:v12];

    cachedThumbnailNodes4 = [(DOCThumbnailCache *)selfCopy->_thumbnailCache cachedThumbnailNodes];
    [cachedThumbnailNodes4 setObject:v23 forKey:v13];

    objc_sync_exit(v28);
    v22 = v23;

    goto LABEL_18;
  }

  if (!v16)
  {
    goto LABEL_11;
  }

LABEL_5:
  [v16 setFallback:v18];
  thumbnailIdentifier2 = [nodeCopy thumbnailIdentifier];
  [v16 updateNodeThumbnailIdentifierTo:thumbnailIdentifier2];

  if (fetchCopy)
  {
    [v16 fetchWithOptions:3];
  }

  if (v13)
  {
    v20 = selfCopy;
    objc_sync_enter(v20);
    cachedThumbnailNodes5 = [(DOCThumbnailCache *)selfCopy->_thumbnailCache cachedThumbnailNodes];
    [cachedThumbnailNodes5 setObject:v16 forKey:v13];

    objc_sync_exit(v20);
  }

  v22 = v16;
LABEL_18:

  return v22;
}

- (id)_alternateThumbnailKeyForNode:(id)node originalKey:(id)key descriptor:(id)descriptor
{
  keyCopy = key;
  descriptorCopy = descriptor;
  nodeCopy = node;
  fpfs_fpItem = [nodeCopy fpfs_fpItem];

  v11 = 0;
  if (fpfs_fpItem && fpfs_fpItem != nodeCopy)
  {
    primaryKey = [keyCopy primaryKey];
    customFolderId = [primaryKey customFolderId];

    if (customFolderId)
    {
      v11 = 0;
    }

    else
    {
      v14 = [DOCThumbnailKey alloc];
      thumbnailIdentifier = [fpfs_fpItem thumbnailIdentifier];
      v11 = [(DOCThumbnailKey *)v14 initWithPrimaryKey:thumbnailIdentifier descriptor:descriptorCopy];
    }
  }

  return v11;
}

- (id)_thumbnailFallbackForNode:(id)node descriptor:(id)descriptor currentThumbnail:(id)thumbnail
{
  nodeCopy = node;
  descriptorCopy = descriptor;
  thumbnailCopy = thumbnail;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [descriptorCopy size];
  v12 = v11;
  [descriptorCopy scale];
  v14 = v13;
  [descriptorCopy size];
  v16 = v15;
  [descriptorCopy scale];
  v18 = v17;
  memset(&enumerator, 0, sizeof(enumerator));
  cachedThumbnailNodes = [(DOCThumbnailCache *)selfCopy->_thumbnailCache cachedThumbnailNodes];
  NSEnumerateMapTable(&enumerator, cachedThumbnailNodes);
  obj = &selfCopy->super.isa;
  v20 = v16 * v18 + v12 * v14;

  v21 = 0;
  v22 = 0;
  value = 0;
  key = 0;
LABEL_2:
  v76 = v21;
  v77 = v22;
  while (1)
  {
    do
    {
      if (!NSNextMapEnumeratorPair(&enumerator, &key, &value))
      {
        goto LABEL_14;
      }

      v23 = key;

      v24 = value;
      style = [descriptorCopy style];
      style2 = [v24 style];
      thumbnailIdentifier = [nodeCopy thumbnailIdentifier];
      nodeThumbnailIdentifier = [v24 nodeThumbnailIdentifier];
      v5 = [thumbnailIdentifier isEqual:nodeThumbnailIdentifier];

      identifier = [nodeCopy identifier];
      node = [v24 node];
      identifier2 = [node identifier];
      LODWORD(nodeThumbnailIdentifier) = [identifier isEqual:identifier2];

      isRepresentativeIcon = [v24 isRepresentativeIcon];
      v33 = style == style2;
      v22 = v24;
      v21 = v23;
    }

    while ((v33 & isRepresentativeIcon & (v5 | nodeThumbnailIdentifier)) != 1);
    [descriptorCopy size];
    v35 = v34;
    v37 = v36;
    [v24 size];
    if (v35 == v39 && v37 == v38)
    {
      [descriptorCopy scale];
      v41 = v40;
      [v24 scale];
      if (((v41 == v42) & v5) == 1)
      {
        break;
      }
    }

    if (!v77)
    {
      v59 = v24;
      goto LABEL_12;
    }

    [v24 size];
    v44 = v43;
    [v24 scale];
    v46 = v45;
    [v24 size];
    v48 = v47;
    [v24 scale];
    v50 = v49;
    [v77 size];
    v52 = v51;
    [v77 scale];
    v54 = v53;
    [v77 size];
    v56 = v55;
    [v77 scale];
    v22 = v24;
    v21 = v23;
    if (vabdd_f64(v48 * v50 + v44 * v46, v20) < vabdd_f64(v56 * v57 + v52 * v54, v20))
    {
      v58 = v24;

LABEL_12:
      v21 = v23;

      v22 = v24;
      goto LABEL_2;
    }
  }

  v22 = v24;

  v21 = v23;
  v76 = v21;
  v77 = v22;
LABEL_14:
  NSEndMapTableEnumeration(&enumerator);
  if (!v77)
  {
LABEL_21:
    v65 = 1;
    goto LABEL_28;
  }

  if (v77 == thumbnailCopy)
  {
    fallback = [v77 fallback];
    if ([fallback isRepresentativeIcon])
    {
      v72 = fallback;
    }

    else
    {
      v72 = 0;
    }

    v5 = v72;
    goto LABEL_27;
  }

  [descriptorCopy size];
  v61 = v60;
  v63 = v62;
  [v77 size];
  v65 = 1;
  if (v61 == v66 && v63 == v64)
  {
    [descriptorCopy scale];
    v68 = v67;
    [v77 scale];
    if (v68 == v69)
    {
      thumbnailImage = [v77 thumbnailImage];

      if (thumbnailImage)
      {
        [v77 setFallback:0];
        fallback = [obj[1] cachedThumbnailNodes];
        [fallback removeObjectForKey:v76];
LABEL_27:

        v65 = v77 != thumbnailCopy;
        goto LABEL_28;
      }

      goto LABEL_21;
    }
  }

LABEL_28:

  objc_sync_exit(obj);
  if (v65)
  {
    v5 = v77;
  }

  return v5;
}

- (id)iconForURL:(id)l descriptor:(id)descriptor
{
  v4 = [DOCThumbnailRequest iconRequestForURL:l descriptor:descriptor thumbnailGenerator:self->_thumbnailGenerator];
  v5 = [[DOCIconPromise alloc] initWithRequest:v4];

  return v5;
}

- (id)iconForNode:(id)node descriptor:(id)descriptor
{
  v4 = [DOCThumbnailRequest iconRequestForNode:node descriptor:descriptor thumbnailGenerator:self->_thumbnailGenerator];
  v5 = [[DOCIconPromise alloc] initWithRequest:v4];

  return v5;
}

- (void)markThumbnailAsRecentlyUsed:(id)used
{
  thumbnailCache = self->_thumbnailCache;
  usedCopy = used;
  recentlyUsedNodes = [(DOCThumbnailCache *)thumbnailCache recentlyUsedNodes];
  v5 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:usedCopy];
  [recentlyUsedNodes setObject:usedCopy forKey:v5];
}

- (id)_currentNodeThumbnailsBatch
{
  currentThread = [MEMORY[0x277CCACC8] currentThread];
  threadDictionary = [currentThread threadDictionary];

  v4 = [threadDictionary objectForKeyedSubscript:@"DOCThumbnailGeneratorNodeThumbnailsBatchKey"];

  return v4;
}

- (void)performInBatch:(id)batch
{
  batchCopy = batch;
  if (batchCopy)
  {
    startBatching = [(DOCThumbnailGenerator *)self startBatching];
    if (startBatching)
    {
      batchCopy[2]();
      [(DOCThumbnailGenerator *)self endBatching:startBatching];
    }
  }

  else
  {
    [(DOCThumbnailGenerator *)a2 performInBatch:&v7];
    startBatching = v7;
  }
}

- (void)endBatching:(id)batching
{
  batchingCopy = batching;
  if (batchingCopy)
  {
    currentThread = [MEMORY[0x277CCACC8] currentThread];
    threadDictionary = [currentThread threadDictionary];

    v7 = [threadDictionary objectForKeyedSubscript:@"DOCThumbnailActiveBatchingTokensKey"];
    [batchingCopy _setInvalidated:1];
    [v7 compact];
    if (![v7 count])
    {
      goto LABEL_6;
    }

    v8 = 0;
    while ([v7 pointerAtIndex:v8] != batchingCopy)
    {
      if (++v8 >= [v7 count])
      {
        goto LABEL_6;
      }
    }

    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
LABEL_6:
      [DOCThumbnailGenerator endBatching:];
    }

    else
    {
      [v7 removePointerAtIndex:v8];
    }

    if (![v7 count])
    {
      _endCurrentThumbnailsBatch = [(DOCThumbnailGenerator *)self _endCurrentThumbnailsBatch];
      if (!_endCurrentThumbnailsBatch)
      {
        [DOCThumbnailGenerator endBatching:];
      }

      if ([_endCurrentThumbnailsBatch count])
      {
        thumbnailGenerator = self->_thumbnailGenerator;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __37__DOCThumbnailGenerator_endBatching___block_invoke;
        v11[3] = &unk_278FB38C0;
        v12 = _endCurrentThumbnailsBatch;
        [(QLThumbnailGenerator *)thumbnailGenerator performInBatch:v11];
      }
    }
  }

  else
  {
    [DOCThumbnailGenerator endBatching:];
  }
}

void __37__DOCThumbnailGenerator_endBatching___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v10;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v10 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v9 + 1) + 8 * i);
        v7 = [v6 thumbnail];
        [v7 fetchWithOptions:{objc_msgSend(v6, "fetchOptions")}];
      }

      v3 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v3);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (uint64_t)performInBatch:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  *a3 = v6;
  return [v6 handleFailureInMethod:a1 object:a2 file:@"DOCThumbnailGenerator.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"batchingBlock != nil"}];
}

- (void)startBatching
{
  OUTLINED_FUNCTION_0();
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)endBatching:.cold.1()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)endBatching:.cold.2()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)endBatching:.cold.3()
{
  OUTLINED_FUNCTION_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1();
  [v0 handleFailureInMethod:@"batchingToken != nil" object:? file:? lineNumber:? description:?];
}

@end