@interface CCDatabaseSetChangeEnumerator
+ (unint64_t)localItemInstanceCountFromBookmark:(id)a3;
+ (unint64_t)sharedItemCountFromBookmark:(id)a3;
- (BOOL)_imputeChanges:(id *)a3;
- (BOOL)_obtainDatabaseAccess:(id *)a3;
- (BOOL)_resetDatabaseAccess:(id *)a3;
- (BOOL)beginWithBookmark:(id)a3 error:(id *)a4;
- (BOOL)isBookmarkUpToDate:(id)a3;
- (BOOL)reset:(id *)a3;
- (CCDatabaseSetChangeEnumerator)init;
- (CCDatabaseSetChangeEnumerator)initWithSet:(id)a3 readAccess:(id)a4;
- (id)_contentMessageFromContentData:(id)a3;
- (id)_metaContentMessageFromMetaContentData:(id)a3;
- (id)itemInstanceCount:(id *)a3;
- (id)next;
- (id)nextBookmark;
- (id)sharedItemCount:(id *)a3;
- (int64_t)_lastDeltaDate;
- (int64_t)_localResourceGenerationFromDatabaseDeviceMapping;
- (void)_lastDeltaDate;
- (void)_localResourceGenerationFromDatabaseDeviceMapping;
- (void)dealloc;
- (void)nextBookmark;
@end

@implementation CCDatabaseSetChangeEnumerator

- (id)next
{
  v69 = *MEMORY[0x1E69E9840];
  if (!self->_provenanceEnumerator)
  {
    p_super = __biome_log_for_category();
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_FAULT))
    {
      [CCDatabaseSetChangeEnumerator next];
    }

    goto LABEL_51;
  }

  p_super = 0;
  *&v2 = 138412546;
  v56 = v2;
  do
  {
    if (!self->_nextRow)
    {
      v5 = [(CCDatabaseValueRowEnumerator *)self->_provenanceEnumerator nextRow];
      v6 = [CCDatabaseJoinedProvenance joinedProvenanceFromDatabaseValueRow:v5];
      nextRow = self->_nextRow;
      self->_nextRow = v6;

      if (!v6)
      {
        break;
      }
    }

    v8 = objc_autoreleasePoolPush();
    v9 = [(CCDatabaseJoinedProvenance *)self->_nextRow provenance];
    v10 = [(CCDatabaseJoinedProvenance *)self->_nextRow provenance];
    v11 = [v10 contentHash];

    v12 = [(CCDatabaseJoinedProvenance *)self->_nextRow provenance];
    v13 = [v12 instanceHash];

    v14 = [(CCDatabaseJoinedProvenance *)self->_nextRow contentData];
    v15 = [(CCDatabaseJoinedProvenance *)self->_nextRow metaContentData];
    if (!v11)
    {
      v23 = __biome_log_for_category();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v66 = v9;
        _os_log_error_impl(&dword_1B6DB2000, v23, OS_LOG_TYPE_ERROR, "missing content hash, provenance row is not enumerable: %@", buf, 0xCu);
      }

      v24 = 0;
      v16 = self->_nextRow;
      self->_nextRow = 0;
      goto LABEL_43;
    }

    v64 = v14;
    v16 = [v9 deviceRowId];
    v17 = [(CCDatabaseDeviceMapping *)self->_deviceMapping siteIdentifierForDeviceRowId:v16];
    if (!v17)
    {
      v25 = __biome_log_for_category();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = v56;
        v66 = v16;
        v67 = 2112;
        v68 = v9;
        _os_log_error_impl(&dword_1B6DB2000, v25, OS_LOG_TYPE_ERROR, "could not find device with rowId: %@ for provenance row: %@", buf, 0x16u);
      }

      v24 = 0;
      v26 = self->_nextRow;
      self->_nextRow = 0;
      goto LABEL_42;
    }

    v62 = v13;
    v60 = v8;
    v63 = [(CCDatabaseDeviceMapping *)self->_deviceMapping deviceForDeviceRowId:v16];
    v18 = [v9 contentState];
    v19 = [v18 unsignedIntValue];

    v20 = [v9 metaContentState];
    v21 = [v20 unsignedIntValue];

    if (!p_super)
    {
      goto LABEL_19;
    }

    if (([p_super containsContentHash:v11]& 1) != 0)
    {
      v59 = p_super;
      v22 = self->_nextRow;
      self->_nextRow = 0;
      goto LABEL_20;
    }

    if (([p_super containsChangesAfterDeduplication]& 1) == 0)
    {

LABEL_19:
      v27 = self->_nextRow;
      self->_nextRow = 0;

      v22 = [(CCDatabaseSetChangeEnumerator *)self _contentMessageFromContentData:v64];
      v28 = [[CCSharedItem alloc] initWithSharedIdentifier:v11 content:v22];
      v59 = [[CCMutableSetChange alloc] initWithSharedItem:v28 changeType:1];

LABEL_20:
      v29 = [v9 contentSequenceNumber];
      v30 = [v29 unsignedIntegerValue];

      v61 = [objc_alloc(getCKDistributedTimestampClass()) initWithSiteIdentifierObject:v17 clockValue:v30];
      if (v19 == 2)
      {
        p_super = &v59->super;
        if ([(CKDistributedTimestampStateVector *)self->_contentRemovalsVector atomStateForTimestamp:v61]== 2)
        {
          [(CCMutableSetChange *)v59 appendRemovedDevices:v63];
          [(CCDatabaseSetStateVectorBuilder *)self->_seenContentBuilder addClockValue:v30 withAtomState:2 forDeviceRowId:v16];
        }
      }

      else
      {
        p_super = &v59->super;
        if (v19 == 1)
        {
          if ([(CKDistributedTimestampStateVector *)self->_contentContentsVector atomStateForTimestamp:v61]== 1)
          {
            [(CCMutableSetChange *)v59 appendAddedDevices:v63];
            [(CCDatabaseSetStateVectorBuilder *)self->_seenContentBuilder addClockValue:v30 withAtomState:1 forDeviceRowId:v16];
          }

          if (v21 != 2)
          {
            [(CCMutableSetChange *)v59 appendAllDevices:v63];
          }
        }
      }

      v31 = [v9 metaContentSequenceNumber];

      if (v31)
      {
        v32 = [v9 metaContentSequenceNumber];
        v33 = [v32 unsignedIntegerValue];

        v34 = [objc_alloc(getCKDistributedTimestampClass()) initWithSiteIdentifierObject:v17 clockValue:v33];
        if (v21 == 2)
        {
          if ([(CKDistributedTimestampStateVector *)self->_metaContentRemovalsVector atomStateForTimestamp:v34]== 2)
          {
            v39 = [[CCItemInstance alloc] initWithSharedIdentifier:v11 instanceIdentifier:v62 content:0 metaContent:0];
            [p_super appendRemovedLocalInstances:v39];
            [(CCDatabaseSetStateVectorBuilder *)self->_seenMetaContentBuilder addClockValue:v33 withAtomState:2 forDeviceRowId:v16];
            goto LABEL_38;
          }
        }

        else if (v21 == 1)
        {
          v58 = v34;
          if ([(CKDistributedTimestampStateVector *)self->_metaContentContentsVector atomStateForTimestamp:v34]== 1 && v15)
          {
            v57 = [(CCDatabaseSetChangeEnumerator *)self _metaContentMessageFromMetaContentData:v15];
            v35 = [CCItemInstance alloc];
            v36 = [p_super sharedItem];
            v37 = [v36 content];
            v38 = [(CCItemInstance *)v35 initWithSharedIdentifier:v11 instanceIdentifier:v62 content:v37 metaContent:v57];

            p_super = &v59->super;
            [(CCMutableSetChange *)v59 appendAddedLocalInstances:v38];
            [(CCDatabaseSetStateVectorBuilder *)self->_seenMetaContentBuilder addClockValue:v33 withAtomState:1 forDeviceRowId:v16];

            goto LABEL_37;
          }

          if (v15)
          {
LABEL_37:
            v39 = [(CCDatabaseSetChangeEnumerator *)self _metaContentMessageFromMetaContentData:v15];
            v40 = [CCItemInstance alloc];
            v41 = [p_super sharedItem];
            v42 = [v41 content];
            v43 = [(CCItemInstance *)v40 initWithSharedIdentifier:v11 instanceIdentifier:v62 content:v42 metaContent:v39];

            p_super = &v59->super;
            v34 = v58;
            [(CCMutableSetChange *)v59 appendAllLocalInstances:v43];

LABEL_38:
          }
        }
      }

      v24 = 0;
      goto LABEL_41;
    }

    v24 = 1;
LABEL_41:
    v8 = v60;
    v13 = v62;
    v26 = v63;
LABEL_42:

    v14 = v64;
LABEL_43:

    objc_autoreleasePoolPop(v8);
  }

  while (!v24);
  if (!self->_nextRow && ![p_super containsChangesAfterDeduplication])
  {
LABEL_51:
    v49 = 0;
    goto LABEL_59;
  }

  v44 = [p_super removedDevices];
  if ([v44 count])
  {
    v45 = [p_super allDevices];
    v46 = [v45 count];

    if (!v46)
    {
      v47 = p_super;
      v48 = 2;
      goto LABEL_56;
    }
  }

  else
  {
  }

  v50 = [p_super addedDevices];
  v51 = [p_super allDevices];
  if ([v50 isEqual:v51])
  {
    v52 = [p_super removedDevices];
    v53 = [v52 count];

    if (!v53)
    {
      v47 = p_super;
      v48 = 0;
LABEL_56:
      [v47 setSharedItemChangeType:v48];
    }
  }

  else
  {
  }

  v49 = [p_super copy];
LABEL_59:

  v54 = *MEMORY[0x1E69E9840];

  return v49;
}

- (id)nextBookmark
{
  p_provenanceEnumerator = &self->_provenanceEnumerator;
  provenanceEnumerator = self->_provenanceEnumerator;
  if (!provenanceEnumerator)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseSetChangeEnumerator nextBookmark];
    }

    goto LABEL_7;
  }

  v5 = [(CCDatabaseValueRowEnumerator *)provenanceEnumerator error];

  if (v5)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CCDatabaseSetChangeEnumerator *)p_provenanceEnumerator nextBookmark];
    }

LABEL_7:

LABEL_8:
    v7 = 0;
    goto LABEL_9;
  }

  v9 = [(CCDatabaseSetChangeEnumerator *)self _localResourceGenerationFromDatabaseDeviceMapping];
  if (v9 < 0)
  {
    goto LABEL_8;
  }

  v10 = v9;
  getCKDistributedTimestampStateVectorClass_0();
  v11 = objc_opt_new();
  [v11 unionStateVector:self->_lastContentStateVector];
  v12 = [(CCDatabaseSetStateVectorBuilder *)self->_seenContentBuilder build];
  [v11 unionStateVector:v12];

  getCKDistributedTimestampStateVectorClass_0();
  v13 = objc_opt_new();
  [v13 unionStateVector:self->_lastMetaContentStateVector];
  v14 = [(CCDatabaseSetStateVectorBuilder *)self->_seenMetaContentBuilder build];
  [v13 unionStateVector:v14];

  v7 = [[CCSetChangeBookmark alloc] initWithContentVector:v11 metaContentVector:v13 localResourceGeneration:v10 lastDeltaDate:[(CCDatabaseSetChangeEnumerator *)self _lastDeltaDate] set:self->_set];
LABEL_9:

  return v7;
}

- (int64_t)_localResourceGenerationFromDatabaseDeviceMapping
{
  p_deviceMapping = &self->_deviceMapping;
  v3 = [(CCDatabaseDeviceMapping *)self->_deviceMapping localDeviceSite];
  v4 = [v3 resourceGeneration];

  if (v4)
  {
    v5 = [v4 longLongValue];
  }

  else
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [(CCDatabaseSetChangeEnumerator *)p_deviceMapping _localResourceGenerationFromDatabaseDeviceMapping];
    }

    v5 = -1;
  }

  return v5;
}

- (int64_t)_lastDeltaDate
{
  lastDeltaDate = self->_lastDeltaDate;
  if (lastDeltaDate)
  {
    return [(NSNumber *)lastDeltaDate longLongValue];
  }

  stateReader = self->_stateReader;
  v10 = 0;
  v5 = [(CCDatabaseSetStateReader *)stateReader lastDeltaDate:&v10];
  v6 = v10;
  v7 = self->_lastDeltaDate;
  self->_lastDeltaDate = v5;

  if (self->_lastDeltaDate)
  {
LABEL_3:

    lastDeltaDate = self->_lastDeltaDate;
    return [(NSNumber *)lastDeltaDate longLongValue];
  }

  if (!v6)
  {
    self->_lastDeltaDate = &unk_1F2EC9300;

    goto LABEL_3;
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [(CCDatabaseSetChangeEnumerator *)self _lastDeltaDate];
  }

  return -1;
}

- (void)dealloc
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "dealloc - %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (CCDatabaseSetChangeEnumerator)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCDatabaseSetChangeEnumerator)initWithSet:(id)a3 readAccess:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CCDatabaseSetChangeEnumerator;
  v9 = [(CCDatabaseSetChangeEnumerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_set, a3);
    objc_storeStrong(&v10->_readAccess, a4);
  }

  return v10;
}

- (BOOL)beginWithBookmark:(id)a3 error:(id *)a4
{
  v87 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v70 = 0;
  v7 = [(CCDatabaseSetChangeEnumerator *)self _obtainDatabaseAccess:&v70];
  v8 = v70;
  v9 = v8;
  if (!v7)
  {
    v24 = [v8 domain];
    if ([v24 isEqual:@"com.apple.CascadeSets.Set"])
    {
      v25 = [v9 code];

      if (v25 == 4)
      {
        lastMetaContentStateVector = __biome_log_for_category();
        if (os_log_type_enabled(lastMetaContentStateVector, OS_LOG_TYPE_DEFAULT))
        {
          v26 = objc_opt_class();
          *buf = 138412546;
          v84 = v26;
          v85 = 2112;
          v86 = v9;
          _os_log_impl(&dword_1B6DB2000, lastMetaContentStateVector, OS_LOG_TYPE_DEFAULT, "%@: %@", buf, 0x16u);
        }

LABEL_19:
        v12 = v9;
        goto LABEL_20;
      }
    }

    else
    {
    }

    v27 = MEMORY[0x1E696ABC0];
    v28 = *MEMORY[0x1E698F0B0];
    v81[0] = *MEMORY[0x1E696A578];
    lastMetaContentStateVector = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ failed access database", objc_opt_class()];
    v82[0] = lastMetaContentStateVector;
    v81[1] = *MEMORY[0x1E696AA08];
    v29 = v9;
    if (!v9)
    {
      v29 = [MEMORY[0x1E695DFB0] null];
    }

    v82[1] = v29;
    v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v82 forKeys:v81 count:2];
    v31 = [v27 errorWithDomain:v28 code:3 userInfo:v30];
    CCSetError(a4, v31);

    if (!v9)
    {
    }

    goto LABEL_19;
  }

  stateReader = self->_stateReader;
  v69 = v9;
  v11 = [(CCDatabaseSetStateReader *)stateReader constructDeviceMapping:&v69];
  v12 = v69;

  deviceMapping = self->_deviceMapping;
  self->_deviceMapping = v11;

  if (!self->_deviceMapping)
  {
    v36 = MEMORY[0x1E696ABC0];
    v37 = *MEMORY[0x1E698F0B0];
    v79[0] = *MEMORY[0x1E696A578];
    lastMetaContentStateVector = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@ failed to construct device mapping", objc_opt_class()];
    v80[0] = lastMetaContentStateVector;
    v79[1] = *MEMORY[0x1E696AA08];
    v38 = v12;
    if (!v12)
    {
      v38 = [MEMORY[0x1E695DFB0] null];
    }

    v80[1] = v38;
    v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:v79 count:2];
    v40 = [v36 errorWithDomain:v37 code:3 userInfo:v39];
    CCSetError(a4, v40);

    if (v12)
    {
      goto LABEL_20;
    }

    goto LABEL_43;
  }

  v14 = [(CCDatabaseSetChangeEnumerator *)self _localResourceGenerationFromDatabaseDeviceMapping];
  if (v14 < 0)
  {
    lastMetaContentStateVector = __biome_log_for_category();
    if (os_log_type_enabled(lastMetaContentStateVector, OS_LOG_TYPE_DEFAULT))
    {
      v41 = objc_opt_class();
      *buf = 138412290;
      v84 = v41;
      _os_log_impl(&dword_1B6DB2000, lastMetaContentStateVector, OS_LOG_TYPE_DEFAULT, "%@ Will complete enumeration without error due to invalid database state", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (!v6)
  {
    v42 = objc_alloc_init(getCKDistributedTimestampStateVectorClass_0());
    lastContentStateVector = self->_lastContentStateVector;
    self->_lastContentStateVector = v42;

    v44 = objc_alloc_init(getCKDistributedTimestampStateVectorClass_0());
    lastMetaContentStateVector = self->_lastMetaContentStateVector;
    self->_lastMetaContentStateVector = v44;
    goto LABEL_29;
  }

  v15 = v14;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v46 = objc_alloc(MEMORY[0x1E696ABC0]);
    v77 = *MEMORY[0x1E696A578];
    v47 = MEMORY[0x1E696AEC0];
    v48 = objc_opt_class();
    lastMetaContentStateVector = NSStringFromClass(v48);
    v49 = objc_opt_class();
    v50 = NSStringFromClass(v49);
    v51 = [v47 stringWithFormat:@"The provided bookmark was of class %@, but we expected %@", lastMetaContentStateVector, v50];
    v78 = v51;
    v52 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    v53 = [v46 initWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:v52];
    CCSetError(a4, v53);

    goto LABEL_20;
  }

  lastMetaContentStateVector = v6;
  v17 = +[CCSetChangeBookmark currentBookmarkVersion];
  v18 = [lastMetaContentStateVector bookmarkVersion];
  if (v18 != v17)
  {
    v56 = MEMORY[0x1E696ABC0];
    v57 = *MEMORY[0x1E698F0B0];
    v75 = *MEMORY[0x1E696A278];
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Current bookmark version requirement (%d) invalidates the provided bookmark (%d): %@", v17, v18, lastMetaContentStateVector];
    v76 = v38;
    v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v76 forKeys:&v75 count:1];
    v59 = v56;
    v60 = v57;
LABEL_42:
    v67 = [v59 errorWithDomain:v60 code:2 userInfo:v58];
    CCSetError(a4, v67);

LABEL_43:
    goto LABEL_20;
  }

  v19 = [lastMetaContentStateVector localResourceGeneration];
  if (!v19 || v19 != v15)
  {
    v65 = MEMORY[0x1E696ABC0];
    v66 = *MEMORY[0x1E698F0B0];
    v73 = *MEMORY[0x1E696A278];
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Database resource generation (%lld) invalidates the provided bookmark (%lld): %@", v15, v19, lastMetaContentStateVector];
    v74 = v38;
    v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v74 forKeys:&v73 count:1];
    v59 = v65;
    v60 = v66;
    goto LABEL_42;
  }

  v20 = [lastMetaContentStateVector contentVector];
  v21 = self->_lastContentStateVector;
  self->_lastContentStateVector = v20;

  v22 = [lastMetaContentStateVector metaContentVector];
  v23 = self->_lastMetaContentStateVector;
  self->_lastMetaContentStateVector = v22;

LABEL_29:
  v68 = v12;
  v45 = [(CCDatabaseSetChangeEnumerator *)self _imputeChanges:&v68];
  v33 = v68;

  if (v45)
  {
    v32 = 1;
    goto LABEL_21;
  }

  v54 = [v33 domain];
  if ([v54 isEqual:@"com.apple.CascadeSets.Set"])
  {
    v55 = 2 * ([v33 code]== 2);
  }

  else
  {
    v55 = 0;
  }

  v61 = MEMORY[0x1E696ABC0];
  v62 = *MEMORY[0x1E698F0B0];
  v71 = *MEMORY[0x1E696AA08];
  lastMetaContentStateVector = v33;
  if (!v33)
  {
    lastMetaContentStateVector = [MEMORY[0x1E695DFB0] null];
  }

  v72 = lastMetaContentStateVector;
  v63 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
  v64 = [v61 errorWithDomain:v62 code:v55 userInfo:v63];
  CCSetError(a4, v64);

  if (v33)
  {
    v32 = 0;
    goto LABEL_21;
  }

  v12 = 0;
LABEL_20:

  v32 = 0;
  v33 = v12;
LABEL_21:

  v34 = *MEMORY[0x1E69E9840];
  return v32;
}

- (BOOL)_obtainDatabaseAccess:(id *)a3
{
  if (self->_databaseAccess && self->_stateReader)
  {
    return 1;
  }

  set = self->_set;
  readAccess = self->_readAccess;
  v15 = 0;
  v8 = [(CCDataResourceReadAccess *)readAccess databaseReadAccessForSet:set error:&v15];
  v9 = v15;
  databaseAccess = self->_databaseAccess;
  self->_databaseAccess = v8;

  v11 = self->_databaseAccess;
  v5 = v11 != 0;
  if (v11)
  {
    v12 = [[CCDatabaseSetStateReader alloc] initWithDatabaseAccess:self->_databaseAccess siteIdentifierFormat:2];
    stateReader = self->_stateReader;
    self->_stateReader = v12;
  }

  else
  {
    CCSetError(a3, v9);
  }

  return v5;
}

- (BOOL)reset:(id *)a3
{
  lastContentStateVector = self->_lastContentStateVector;
  self->_lastContentStateVector = 0;

  lastMetaContentStateVector = self->_lastMetaContentStateVector;
  self->_lastMetaContentStateVector = 0;

  contentContentsVector = self->_contentContentsVector;
  self->_contentContentsVector = 0;

  contentRemovalsVector = self->_contentRemovalsVector;
  self->_contentRemovalsVector = 0;

  metaContentContentsVector = self->_metaContentContentsVector;
  self->_metaContentContentsVector = 0;

  metaContentRemovalsVector = self->_metaContentRemovalsVector;
  self->_metaContentRemovalsVector = 0;

  nextRow = self->_nextRow;
  self->_nextRow = 0;

  seenContentBuilder = self->_seenContentBuilder;
  self->_seenContentBuilder = 0;

  seenMetaContentBuilder = self->_seenMetaContentBuilder;
  self->_seenMetaContentBuilder = 0;

  provenanceEnumerator = self->_provenanceEnumerator;
  self->_provenanceEnumerator = 0;

  localResourceGeneration = self->_localResourceGeneration;
  self->_localResourceGeneration = 0;

  lastDeltaDate = self->_lastDeltaDate;
  self->_lastDeltaDate = 0;

  deviceMapping = self->_deviceMapping;
  self->_deviceMapping = 0;

  return [(CCDatabaseSetChangeEnumerator *)self _resetDatabaseAccess:a3];
}

- (BOOL)_resetDatabaseAccess:(id *)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  databaseAccess = self->_databaseAccess;
  if (!databaseAccess)
  {
    v7 = 0;
    goto LABEL_9;
  }

  v16 = 0;
  v5 = [(CCDatabaseReadOnlyAccess *)databaseAccess reset:&v16];
  v6 = v16;
  v7 = v6;
  if (v5)
  {
LABEL_9:
    v13 = 1;
    goto LABEL_10;
  }

  v8 = MEMORY[0x1E696ABC0];
  v9 = *MEMORY[0x1E698F0B0];
  v17[0] = *MEMORY[0x1E696AA08];
  v10 = v6;
  if (!v6)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v17[1] = *MEMORY[0x1E696A278];
  v18[0] = v10;
  v18[1] = @"Failed to reset database";
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v12 = [v8 errorWithDomain:v9 code:0 userInfo:v11];
  CCSetError(a3, v12);

  if (!v7)
  {
  }

  v13 = 0;
LABEL_10:

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

- (id)sharedItemCount:(id *)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  if ([(CCDatabaseSetChangeEnumerator *)self _obtainDatabaseAccess:?])
  {
    stateReader = self->_stateReader;
    v17 = 0;
    v6 = [(CCDatabaseSetStateReader *)stateReader sharedItemCount:&v17];
    v7 = v17;
    v8 = v7;
    if (!v6)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E698F0B0];
      v18[0] = *MEMORY[0x1E696AA08];
      v11 = v7;
      if (!v7)
      {
        v11 = [MEMORY[0x1E695DFB0] null];
      }

      v18[1] = *MEMORY[0x1E696A278];
      v19[0] = v11;
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to count shared items in set: %@", self->_set];
      v19[1] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
      v14 = [v9 errorWithDomain:v10 code:0 userInfo:v13];
      CCSetError(a3, v14);

      if (!v8)
      {
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)itemInstanceCount:(id *)a3
{
  v19[2] = *MEMORY[0x1E69E9840];
  if ([(CCDatabaseSetChangeEnumerator *)self _obtainDatabaseAccess:?])
  {
    stateReader = self->_stateReader;
    v17 = 0;
    v6 = [(CCDatabaseSetStateReader *)stateReader itemInstanceCount:&v17];
    v7 = v17;
    v8 = v7;
    if (!v6)
    {
      v9 = MEMORY[0x1E696ABC0];
      v10 = *MEMORY[0x1E698F0B0];
      v18[0] = *MEMORY[0x1E696AA08];
      v11 = v7;
      if (!v7)
      {
        v11 = [MEMORY[0x1E695DFB0] null];
      }

      v18[1] = *MEMORY[0x1E696A278];
      v19[0] = v11;
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to count item instances in set: %@", self->_set];
      v19[1] = v12;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:v18 count:2];
      v14 = [v9 errorWithDomain:v10 code:0 userInfo:v13];
      CCSetError(a3, v14);

      if (!v8)
      {
      }
    }
  }

  else
  {
    v6 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];

  return v6;
}

- (BOOL)isBookmarkUpToDate:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = __biome_log_for_category();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [CCSerializedSetChangeEnumerator isBookmarkUpToDate:];
    }

    goto LABEL_10;
  }

  v11 = 0;
  v5 = [(CCDatabaseSetChangeEnumerator *)self _obtainDatabaseAccess:&v11];
  v6 = v11;
  if (!v5)
  {
    v9 = __biome_log_for_category();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseSetChangeEnumerator isBookmarkUpToDate:];
    }

    goto LABEL_10;
  }

  v7 = [(CCDatabaseSetChangeEnumerator *)self _lastDeltaDate];
  if (v7 < 0)
  {
LABEL_10:
    v8 = 0;
    goto LABEL_11;
  }

  v8 = v7 == [v4 lastDeltaDate];
LABEL_11:

  return v8;
}

- (BOOL)_imputeChanges:(id *)a3
{
  v98 = *MEMORY[0x1E69E9840];
  stateReader = self->_stateReader;
  deviceMapping = self->_deviceMapping;
  v93 = 0;
  v94 = 0;
  v92 = 0;
  v6 = [(CCDatabaseSetStateReader *)stateReader constructStateVectorsFromDatabaseWithDeviceMapping:deviceMapping outContent:&v94 outMetaContent:&v93 error:&v92];
  v73 = v94;
  v71 = v93;
  v72 = v92;
  v7 = __biome_log_for_category();
  v8 = v7;
  if (!v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

    CCSetError(a3, v72);
    goto LABEL_32;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    [CCDatabaseSetChangeEnumerator _imputeChanges:];
  }

  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    [CCDatabaseSetChangeEnumerator _imputeChanges:];
  }

  if (!v73)
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

    goto LABEL_31;
  }

  if (!v71)
  {
    v18 = __biome_log_for_category();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

LABEL_31:

LABEL_32:
    v19 = 0;
    goto LABEL_33;
  }

  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  p_lastContentStateVector = &self->_lastContentStateVector;
  obj = [(CKDistributedTimestampStateVector *)self->_lastContentStateVector allSiteIdentifiers];
  v10 = [obj countByEnumeratingWithState:&v88 objects:v97 count:16];
  if (v10)
  {
    v77 = 0;
    v11 = *v89;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v89 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v88 + 1) + 8 * i);
        v14 = [(CCDatabaseDeviceMapping *)self->_deviceMapping deviceRowIdForSiteIdentifier:v13];

        if (!v14)
        {
          v84 = 0;
          v85 = &v84;
          v86 = 0x2020000000;
          v87 = 0;
          v15 = *p_lastContentStateVector;
          v83[0] = MEMORY[0x1E69E9820];
          v83[1] = 3221225472;
          v83[2] = __48__CCDatabaseSetChangeEnumerator__imputeChanges___block_invoke;
          v83[3] = &unk_1E7C8B800;
          v83[4] = &v84;
          [v15 enumerateClockValuesForSiteIdentifier:v13 usingBlock:v83];
          if (*(v85 + 24) == 1)
          {
            v22 = __biome_log_for_category();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
            {
              v23 = [CCDatabaseDeviceMapping descriptionForSiteIdentifier:v13];
              [(CCDatabaseSetChangeEnumerator *)v23 _imputeChanges:buf, v22];
            }

            v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:0];
            CCSetError(a3, v24);

            _Block_object_dispose(&v84, 8);
            v19 = 0;
            goto LABEL_92;
          }

          if (!v77)
          {
            v77 = objc_alloc_init(MEMORY[0x1E695DF70]);
          }

          v16 = __biome_log_for_category();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v17 = [CCDatabaseDeviceMapping descriptionForSiteIdentifier:v13];
            *buf = 138412290;
            v96 = v17;
            _os_log_impl(&dword_1B6DB2000, v16, OS_LOG_TYPE_DEFAULT, "Found expired site: %@ eligible for cleanup from the client provided state vector", buf, 0xCu);
          }

          [v77 addObject:v13];
          _Block_object_dispose(&v84, 8);
        }
      }

      v10 = [obj countByEnumeratingWithState:&v88 objects:v97 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v77 = 0;
  }

  if ([v77 count])
  {
    [CCDatabaseSetStateVectorBuilder removeSiteIdentifiers:v77 fromStateVector:*p_lastContentStateVector];
  }

  v25 = __biome_log_for_category();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    [CCDatabaseSetChangeEnumerator _imputeChanges:?];
  }

  v26 = __biome_log_for_category();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
  {
    [CCDatabaseSetChangeEnumerator _imputeChanges:];
  }

  obj = [*p_lastContentStateVector clockVector];
  v27 = [v73 isGreaterThanOrEqualToVector:obj];
  v28 = __biome_log_for_category();
  v29 = v28;
  if (v27)
  {
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:?];
    }

    v30 = __biome_log_for_category();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

    v31 = [(CKDistributedTimestampStateVector *)self->_lastMetaContentStateVector clockVector];
    if (([v71 isGreaterThanOrEqualToVector:v31] & 1) == 0)
    {
      v63 = __biome_log_for_category();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
      {
        [(CCDatabaseSetChangeEnumerator *)v71 _imputeChanges:?];
      }

      v32 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:0];
      CCSetError(a3, v32);
      v19 = 0;
      goto LABEL_90;
    }

    v32 = [objc_alloc(getCKMergeableDeltaVectorsClass()) initWithPreviousStateVector:*p_lastContentStateVector currentStateVector:v73];
    v33 = [v32 contents];
    v34 = [v32 removals];
    v75 = [objc_alloc(getCKMergeableDeltaVectorsClass()) initWithPreviousStateVector:self->_lastMetaContentStateVector currentStateVector:v71];
    v68 = [v75 contents];
    v70 = [v75 removals];
    v35 = __biome_log_for_category();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

    v36 = __biome_log_for_category();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

    v37 = __biome_log_for_category();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

    v38 = __biome_log_for_category();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEBUG))
    {
      [CCDatabaseSetChangeEnumerator _imputeChanges:];
    }

    v84 = 0;
    v85 = &v84;
    v86 = 0x2020000000;
    v87 = 1;
    v39 = objc_autoreleasePoolPush();
    v40 = self->_stateReader;
    v41 = self->_deviceMapping;
    v81[4] = &v84;
    v82 = 0;
    v81[0] = MEMORY[0x1E69E9820];
    v81[1] = 3221225472;
    v81[2] = __48__CCDatabaseSetChangeEnumerator__imputeChanges___block_invoke_48;
    v81[3] = &unk_1E7C8B828;
    v42 = [(CCDatabaseSetStateReader *)v40 enumerateProvenanceRecordsForStateVector:v34 withType:0 selectAtomsInState:2 skipOverAtomsInState:1 deviceMapping:v41 error:&v82 usingBlock:v81];
    v43 = v82;
    objc_autoreleasePoolPop(v39);
    if (!v42)
    {
      v64 = __biome_log_for_category();
      if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseSetChangeEnumerator _imputeChanges:];
      }

      CCSetError(a3, v43);
      v19 = 0;
      goto LABEL_89;
    }

    v44 = objc_autoreleasePoolPush();
    v45 = self->_stateReader;
    v46 = self->_deviceMapping;
    v79[0] = MEMORY[0x1E69E9820];
    v79[1] = 3221225472;
    v79[2] = __48__CCDatabaseSetChangeEnumerator__imputeChanges___block_invoke_50;
    v79[3] = &unk_1E7C8B828;
    v79[4] = &v84;
    v80 = 0;
    v47 = [(CCDatabaseSetStateReader *)v45 enumerateProvenanceRecordsForStateVector:v70 withType:1 selectAtomsInState:2 skipOverAtomsInState:1 deviceMapping:v46 error:&v80 usingBlock:v79];
    v67 = v80;
    objc_autoreleasePoolPop(v44);
    if (!v47)
    {
      v65 = __biome_log_for_category();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseSetChangeEnumerator _imputeChanges:];
      }

      CCSetError(a3, v67);
      v19 = 0;
      goto LABEL_88;
    }

    if (v85[3])
    {
      objc_storeStrong(&self->_contentContentsVector, v33);
      objc_storeStrong(&self->_contentRemovalsVector, v34);
      objc_storeStrong(&self->_metaContentContentsVector, v68);
      objc_storeStrong(&self->_metaContentRemovalsVector, v70);
      v48 = [[CCDatabaseSetStateVectorBuilder alloc] initWithDeviceMapping:self->_deviceMapping missingAtomsImplied:0];
      seenContentBuilder = self->_seenContentBuilder;
      self->_seenContentBuilder = v48;

      v50 = [[CCDatabaseSetStateVectorBuilder alloc] initWithDeviceMapping:self->_deviceMapping missingAtomsImplied:0];
      seenMetaContentBuilder = self->_seenMetaContentBuilder;
      self->_seenMetaContentBuilder = v50;

      v52 = objc_autoreleasePoolPush();
      v53 = self->_stateReader;
      v54 = self->_seenContentBuilder;
      v55 = self->_seenMetaContentBuilder;
      v56 = self->_deviceMapping;
      v78 = 0;
      v57 = [(CCDatabaseSetStateReader *)v53 provenanceRecordEnumeratorForContentDeltaVector:v32 metaContentDeltaVector:v75 seenContentBuilder:v54 seenMetaContentBuilder:v55 deviceMapping:v56 error:&v78];
      v58 = v78;
      objc_autoreleasePoolPop(v52);
      provenanceEnumerator = self->_provenanceEnumerator;
      p_provenanceEnumerator = &self->_provenanceEnumerator;
      *p_provenanceEnumerator = v57;

      if (*p_provenanceEnumerator)
      {
        v61 = v58 == 0;
      }

      else
      {
        v61 = 0;
      }

      v19 = v61;
      if (v61)
      {
        goto LABEL_87;
      }

      v62 = __biome_log_for_category();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseSetChangeEnumerator _imputeChanges:?];
      }

      CCSetError(a3, v58);
    }

    else
    {
      v66 = __biome_log_for_category();
      if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseSetChangeEnumerator _imputeChanges:];
      }

      v58 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:0];
      CCSetError(a3, v58);
    }

    v19 = 0;
LABEL_87:

LABEL_88:
LABEL_89:

    _Block_object_dispose(&v84, 8);
LABEL_90:

    goto LABEL_91;
  }

  if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
  {
    [(CCDatabaseSetChangeEnumerator *)v73 _imputeChanges:?];
  }

  v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.CascadeSets.Set" code:2 userInfo:0];
  CCSetError(a3, v31);
  v19 = 0;
LABEL_91:

LABEL_92:
LABEL_33:

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

uint64_t __48__CCDatabaseSetChangeEnumerator__imputeChanges___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int a5, _BYTE *a6)
{
  if (a5 == 1)
  {
    *(*(*(result + 32) + 8) + 24) = 1;
    *a6 = 1;
  }

  return result;
}

void __48__CCDatabaseSetChangeEnumerator__imputeChanges___block_invoke_48(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v5 = [v7 contentState];
  if ([v5 unsignedIntValue] == 2)
  {
    v6 = [v7 contentHash];

    if (!v6)
    {
      *a3 = 1;
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  else
  {
  }
}

void __48__CCDatabaseSetChangeEnumerator__imputeChanges___block_invoke_50(uint64_t a1, void *a2, _BYTE *a3)
{
  v7 = a2;
  v5 = [v7 metaContentState];
  if ([v5 unsignedIntValue] == 2)
  {
    v6 = [v7 instanceHash];

    if (!v6)
    {
      *a3 = 1;
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  else
  {
  }
}

- (id)_contentMessageFromContentData:(id)a3
{
  if (a3)
  {
    set = self->_set;
    v4 = a3;
    v9 = 0;
    v5 = [CCItemMessage contentMessageForItemType:[(CCSet *)set itemType] data:v4 error:&v9];

    v6 = v9;
    if (!v5)
    {
      v7 = __biome_log_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseSetChangeEnumerator _contentMessageFromContentData:];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_metaContentMessageFromMetaContentData:(id)a3
{
  if (a3)
  {
    set = self->_set;
    v4 = a3;
    v9 = 0;
    v5 = [CCItemMessage metaContentMessageForItemType:[(CCSet *)set itemType] data:v4 error:&v9];

    v6 = v9;
    if (!v5)
    {
      v7 = __biome_log_for_category();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [CCDatabaseSetChangeEnumerator _contentMessageFromContentData:];
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (unint64_t)sharedItemCountFromBookmark:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [v3 contentVector];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__CCDatabaseSetChangeEnumerator_sharedItemCountFromBookmark___block_invoke;
  v7[3] = &unk_1E7C8B850;
  v7[4] = &v8;
  [v4 enumerateAllClockValuesUsingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __61__CCDatabaseSetChangeEnumerator_sharedItemCountFromBookmark___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a6 == 1)
  {
    *(*(*(result + 32) + 8) + 24) += a4;
  }

  return result;
}

+ (unint64_t)localItemInstanceCountFromBookmark:(id)a3
{
  v3 = a3;
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v4 = [v3 metaContentVector];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __68__CCDatabaseSetChangeEnumerator_localItemInstanceCountFromBookmark___block_invoke;
  v7[3] = &unk_1E7C8B850;
  v7[4] = &v8;
  [v4 enumerateAllClockValuesUsingBlock:v7];

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);

  return v5;
}

uint64_t __68__CCDatabaseSetChangeEnumerator_localItemInstanceCountFromBookmark___block_invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a6 == 1)
  {
    *(*(*(result + 32) + 8) + 24) += a4;
  }

  return result;
}

- (void)nextBookmark
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = [*a1 error];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_1B6DB2000, v2, v3, "Returning nil bookmark after enumerator error: %@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_localResourceGenerationFromDatabaseDeviceMapping
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v2, v3, "Unexpected - local resource version not found in device mapping: %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_lastDeltaDate
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v2, v3, "failed to read last delta date for set: %@ error: %@");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)isBookmarkUpToDate:.cold.2()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v0, v1, "Failed to access database for bookmark: %@ error: %@");
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_imputeChanges:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to construct content and metacontent state vectors from database: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_imputeChanges:.cold.2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2(&dword_1B6DB2000, v0, v1, "contentStateVector %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_imputeChanges:.cold.3()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2(&dword_1B6DB2000, v0, v1, "metaContentStateVector %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_imputeChanges:(uint8_t *)buf .cold.4(void *a1, uint64_t *a2, uint8_t *buf, os_log_t log)
{
  v5 = *a2;
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = v5;
  _os_log_error_impl(&dword_1B6DB2000, log, OS_LOG_TYPE_ERROR, "Client provided state vector contains present content for site: %@ which has already expired and been cleaned up: %@", buf, 0x16u);
}

- (void)_imputeChanges:(uint64_t *)a1 .cold.5(uint64_t *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_2(&dword_1B6DB2000, v2, v3, "lastContentVector %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_imputeChanges:(uint64_t)a1 .cold.7(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8(&dword_1B6DB2000, v3, v4, "Current content state vector has regressed from last known client provided state vector current:%@ last:%@");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_imputeChanges:(uint64_t)a1 .cold.8(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_1_2(&dword_1B6DB2000, v2, v3, "lastMetaContentVector %@", v4, v5, v6, v7, v9);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_imputeChanges:(uint64_t)a1 .cold.10(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_8(&dword_1B6DB2000, v3, v4, "Current meta content state vector has regressed from last known client provided state vector current:%@ last:%@");
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_imputeChanges:.cold.11()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2(&dword_1B6DB2000, v0, v1, "contentContentsVector %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_imputeChanges:.cold.12()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2(&dword_1B6DB2000, v0, v1, "contentRemovalsVector %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_imputeChanges:.cold.13()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2(&dword_1B6DB2000, v0, v1, "metaContentContentsVector %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_imputeChanges:.cold.14()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2(&dword_1B6DB2000, v0, v1, "metaContentRemovalsVector %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_imputeChanges:.cold.15()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to enumerate provenance rows for tombstoned content: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_imputeChanges:.cold.16()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "Failed to enumerate provenance rows for tombstoned metacontent: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_imputeChanges:(uint64_t *)a1 .cold.18(uint64_t *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_0_3(&dword_1B6DB2000, v2, v3, "Could not construct provenance enumerator %@ with error: %@");
  v4 = *MEMORY[0x1E69E9840];
}

- (void)_contentMessageFromContentData:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_0(&dword_1B6DB2000, v0, v1, "error initializing metacontent message: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end