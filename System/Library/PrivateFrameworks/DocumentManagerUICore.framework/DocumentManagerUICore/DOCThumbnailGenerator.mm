@interface DOCThumbnailGenerator
+ (DOCThumbnailGenerator)sharedGenerator;
- (DOCThumbnailGenerator)init;
- (id)_alternateThumbnailKeyForNode:(id)a3 originalKey:(id)a4 descriptor:(id)a5;
- (id)_currentNodeThumbnailsBatch;
- (id)_endCurrentThumbnailsBatch;
- (id)_thumbnailFallbackForNode:(id)a3 descriptor:(id)a4 currentThumbnail:(id)a5;
- (id)_thumbnailForNode:(id)a3 descriptor:(id)a4 forceFetch:(BOOL)a5;
- (id)iconForNode:(id)a3 descriptor:(id)a4;
- (id)iconForURL:(id)a3 descriptor:(id)a4;
- (id)startBatching;
- (void)endBatching:(id)a3;
- (void)markThumbnailAsRecentlyUsed:(id)a3;
- (void)performInBatch:(id)a3;
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
    v3 = [MEMORY[0x277CDAAE0] sharedGenerator];
    thumbnailGenerator = v2->_thumbnailGenerator;
    v2->_thumbnailGenerator = v3;

    v5 = objc_opt_new();
    thumbnailCache = v2->_thumbnailCache;
    v2->_thumbnailCache = v5;
  }

  return v2;
}

- (id)startBatching
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"DOCThumbnailGeneratorNodeThumbnailsBatchKey"];
  v5 = [v3 objectForKeyedSubscript:@"DOCThumbnailActiveBatchingTokensKey"];
  if (![v5 count])
  {
    if (v4)
    {
      [DOCThumbnailGenerator startBatching];
    }

    v6 = objc_opt_new();

    [v3 setObject:v6 forKeyedSubscript:@"DOCThumbnailGeneratorNodeThumbnailsBatchKey"];
    v7 = [MEMORY[0x277CCAC18] weakObjectsPointerArray];

    [v3 setObject:v7 forKeyedSubscript:@"DOCThumbnailActiveBatchingTokensKey"];
    v5 = v7;
    v4 = v6;
  }

  v8 = objc_opt_new();
  [v5 addPointer:v8];

  return v8;
}

- (id)_endCurrentThumbnailsBatch
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"DOCThumbnailGeneratorNodeThumbnailsBatchKey"];
  v5 = [v4 copy];

  [v3 setObject:0 forKeyedSubscript:@"DOCThumbnailGeneratorNodeThumbnailsBatchKey"];

  return v5;
}

- (id)_thumbnailForNode:(id)a3 descriptor:(id)a4 forceFetch:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v10 = [DOCThumbnailKey alloc];
  v11 = [v8 thumbnailIdentifier];
  v12 = [(DOCThumbnailKey *)v10 initWithPrimaryKey:v11 descriptor:v9];

  v13 = [(DOCThumbnailGenerator *)self _alternateThumbnailKeyForNode:v8 originalKey:v12 descriptor:v9];
  v14 = self;
  objc_sync_enter(v14);
  v15 = [(DOCThumbnailCache *)v14->_thumbnailCache cachedThumbnailNodes];
  v16 = [v15 objectForKey:v12];

  if (!v16)
  {
    v17 = [(DOCThumbnailCache *)v14->_thumbnailCache cachedThumbnailNodes];
    v16 = [v17 objectForKey:v13];
  }

  objc_sync_exit(v14);

  v18 = [(DOCThumbnailGenerator *)v14 _thumbnailFallbackForNode:v8 descriptor:v9 currentThumbnail:v16];
  if (!v18)
  {
    v18 = [(DOCThumbnailGenerator *)v14 iconForNode:v8 descriptor:v9];
    if (v16)
    {
      goto LABEL_5;
    }

LABEL_11:
    v23 = [[DOCNodeThumbnail alloc] initWithGenerator:v14 node:v8 descriptor:v9 fallback:v18];
    v24 = [(DOCThumbnailGenerator *)v14 _currentNodeThumbnailsBatch];
    v25 = v24;
    if (v5)
    {
      v26 = 2;
    }

    else
    {
      v26 = 0;
    }

    if (v24)
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

    v28 = v14;
    objc_sync_enter(v28);
    v29 = [(DOCThumbnailCache *)v14->_thumbnailCache cachedThumbnailNodes];
    [v29 setObject:v23 forKey:v12];

    v30 = [(DOCThumbnailCache *)v14->_thumbnailCache cachedThumbnailNodes];
    [v30 setObject:v23 forKey:v13];

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
  v19 = [v8 thumbnailIdentifier];
  [v16 updateNodeThumbnailIdentifierTo:v19];

  if (v5)
  {
    [v16 fetchWithOptions:3];
  }

  if (v13)
  {
    v20 = v14;
    objc_sync_enter(v20);
    v21 = [(DOCThumbnailCache *)v14->_thumbnailCache cachedThumbnailNodes];
    [v21 setObject:v16 forKey:v13];

    objc_sync_exit(v20);
  }

  v22 = v16;
LABEL_18:

  return v22;
}

- (id)_alternateThumbnailKeyForNode:(id)a3 originalKey:(id)a4 descriptor:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = [v9 fpfs_fpItem];

  v11 = 0;
  if (v10 && v10 != v9)
  {
    v12 = [v7 primaryKey];
    v13 = [v12 customFolderId];

    if (v13)
    {
      v11 = 0;
    }

    else
    {
      v14 = [DOCThumbnailKey alloc];
      v15 = [v10 thumbnailIdentifier];
      v11 = [(DOCThumbnailKey *)v14 initWithPrimaryKey:v15 descriptor:v8];
    }
  }

  return v11;
}

- (id)_thumbnailFallbackForNode:(id)a3 descriptor:(id)a4 currentThumbnail:(id)a5
{
  v78 = a3;
  v9 = a4;
  v75 = a5;
  v10 = self;
  objc_sync_enter(v10);
  [v9 size];
  v12 = v11;
  [v9 scale];
  v14 = v13;
  [v9 size];
  v16 = v15;
  [v9 scale];
  v18 = v17;
  memset(&enumerator, 0, sizeof(enumerator));
  v19 = [(DOCThumbnailCache *)v10->_thumbnailCache cachedThumbnailNodes];
  NSEnumerateMapTable(&enumerator, v19);
  obj = &v10->super.isa;
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
      v25 = [v9 style];
      v26 = [v24 style];
      v27 = [v78 thumbnailIdentifier];
      v28 = [v24 nodeThumbnailIdentifier];
      v5 = [v27 isEqual:v28];

      v29 = [v78 identifier];
      v30 = [v24 node];
      v31 = [v30 identifier];
      LODWORD(v28) = [v29 isEqual:v31];

      v32 = [v24 isRepresentativeIcon];
      v33 = v25 == v26;
      v22 = v24;
      v21 = v23;
    }

    while ((v33 & v32 & (v5 | v28)) != 1);
    [v9 size];
    v35 = v34;
    v37 = v36;
    [v24 size];
    if (v35 == v39 && v37 == v38)
    {
      [v9 scale];
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

  if (v77 == v75)
  {
    v71 = [v77 fallback];
    if ([v71 isRepresentativeIcon])
    {
      v72 = v71;
    }

    else
    {
      v72 = 0;
    }

    v5 = v72;
    goto LABEL_27;
  }

  [v9 size];
  v61 = v60;
  v63 = v62;
  [v77 size];
  v65 = 1;
  if (v61 == v66 && v63 == v64)
  {
    [v9 scale];
    v68 = v67;
    [v77 scale];
    if (v68 == v69)
    {
      v70 = [v77 thumbnailImage];

      if (v70)
      {
        [v77 setFallback:0];
        v71 = [obj[1] cachedThumbnailNodes];
        [v71 removeObjectForKey:v76];
LABEL_27:

        v65 = v77 != v75;
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

- (id)iconForURL:(id)a3 descriptor:(id)a4
{
  v4 = [DOCThumbnailRequest iconRequestForURL:a3 descriptor:a4 thumbnailGenerator:self->_thumbnailGenerator];
  v5 = [[DOCIconPromise alloc] initWithRequest:v4];

  return v5;
}

- (id)iconForNode:(id)a3 descriptor:(id)a4
{
  v4 = [DOCThumbnailRequest iconRequestForNode:a3 descriptor:a4 thumbnailGenerator:self->_thumbnailGenerator];
  v5 = [[DOCIconPromise alloc] initWithRequest:v4];

  return v5;
}

- (void)markThumbnailAsRecentlyUsed:(id)a3
{
  thumbnailCache = self->_thumbnailCache;
  v4 = a3;
  v6 = [(DOCThumbnailCache *)thumbnailCache recentlyUsedNodes];
  v5 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v4];
  [v6 setObject:v4 forKey:v5];
}

- (id)_currentNodeThumbnailsBatch
{
  v2 = [MEMORY[0x277CCACC8] currentThread];
  v3 = [v2 threadDictionary];

  v4 = [v3 objectForKeyedSubscript:@"DOCThumbnailGeneratorNodeThumbnailsBatchKey"];

  return v4;
}

- (void)performInBatch:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v5 = [(DOCThumbnailGenerator *)self startBatching];
    if (v5)
    {
      v6[2]();
      [(DOCThumbnailGenerator *)self endBatching:v5];
    }
  }

  else
  {
    [(DOCThumbnailGenerator *)a2 performInBatch:&v7];
    v5 = v7;
  }
}

- (void)endBatching:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x277CCACC8] currentThread];
    v6 = [v5 threadDictionary];

    v7 = [v6 objectForKeyedSubscript:@"DOCThumbnailActiveBatchingTokensKey"];
    [v4 _setInvalidated:1];
    [v7 compact];
    if (![v7 count])
    {
      goto LABEL_6;
    }

    v8 = 0;
    while ([v7 pointerAtIndex:v8] != v4)
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
      v9 = [(DOCThumbnailGenerator *)self _endCurrentThumbnailsBatch];
      if (!v9)
      {
        [DOCThumbnailGenerator endBatching:];
      }

      if ([v9 count])
      {
        thumbnailGenerator = self->_thumbnailGenerator;
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __37__DOCThumbnailGenerator_endBatching___block_invoke;
        v11[3] = &unk_278FB38C0;
        v12 = v9;
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
  v1 = [MEMORY[0x277CCA890] currentHandler];
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