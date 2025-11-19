@interface ICCRDocument
+ (id)documentWithReplica:(id)a3;
+ (id)documentWithRootObject:(id)a3 replica:(id)a4;
- (ICCRDocument)init;
- (ICCRDocument)initWithReplica:(id)a3;
- (ICCRDocument)initWithVersion:(id)a3 startVersion:(id)a4 rootObject:(id)a5 replica:(id)a6;
- (id)archivedData;
- (id)copyForReplica:(id)a3;
- (id)deltaSince:(id)a3;
- (id)description;
- (id)localObject:(id)a3;
- (unint64_t)mergeResultForMergingWithDocument:(id)a3;
- (unint64_t)mergeWithData:(id)a3;
- (unint64_t)mergeWithDocument:(id)a3;
- (void)mergeTimestampWithDocument:(id)a3;
- (void)realizeLocalChanges;
- (void)setDocumentFor:(id)a3;
- (void)setRootObject:(id)a3;
- (void)updateGraphDocumentPointers;
- (void)updateObjectsSet;
- (void)walkGraph:(id)a3 root:(id)a4;
@end

@implementation ICCRDocument

+ (id)documentWithReplica:(id)a3
{
  v3 = a3;
  v4 = [ICCRDocument alloc];
  v5 = objc_alloc_init(ICCRVectorTimestamp);
  v6 = [(ICCRDocument *)v4 initWithVersion:v5 rootObject:0 replica:v3];

  return v6;
}

+ (id)documentWithRootObject:(id)a3 replica:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [ICCRDocument alloc];
  v8 = objc_alloc_init(ICCRVectorTimestamp);
  v9 = [(ICCRDocument *)v7 initWithVersion:v8 rootObject:v6 replica:v5];

  return v9;
}

- (ICCRDocument)init
{
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = [(ICCRDocument *)self initWithReplica:v3];

  return v4;
}

- (ICCRDocument)initWithReplica:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(ICCRVectorTimestamp);
  v6 = [(ICCRDocument *)self initWithVersion:v5 startVersion:0 rootObject:0 replica:v4];

  return v6;
}

- (ICCRDocument)initWithVersion:(id)a3 startVersion:(id)a4 rootObject:(id)a5 replica:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = ICCRDocument;
  v15 = [(ICCRDocument *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_version, a3);
    v17 = [(ICCRVectorTimestamp *)v16->_version clockForUUID:v14];
    v16->_replicaClock = v17;
    v16->_unserializedReplicaClock = v17;
    objc_storeStrong(&v16->_startVersion, a4);
    objc_storeStrong(&v16->_rootObject, a5);
    objc_storeStrong(&v16->_replica, a6);
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objects = v16->_objects;
    v16->_objects = v18;

    if (v13)
    {
      [(ICCRDocument *)v16 setDocumentFor:v13];
    }
  }

  return v16;
}

- (void)setRootObject:(id)a3
{
  v5 = a3;
  if (self->_rootObject != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_rootObject, a3);
    [(ICCRDocument *)self setDocumentFor:v6];
    v5 = v6;
  }
}

- (id)copyForReplica:(id)a3
{
  v4 = a3;
  v5 = [(ICCRDocument *)self archivedData];
  v6 = [ICCRDocument unarchiveFromData:v5 replica:v4];

  return v6;
}

- (id)archivedData
{
  [(ICCRDocument *)self realizeLocalChanges];

  return [ICCRCoderArchiver encodedDataWithDocument:self];
}

- (id)localObject:(id)a3
{
  v4 = a3;
  if ([v4 conformsToProtocol:&unk_28275B6C8])
  {
    v5 = [(ICCRDocument *)self objects];
    v6 = [v4 identity];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = v4;
    }

    v9 = v8;

    v4 = v9;
  }

  return v4;
}

- (unint64_t)mergeResultForMergingWithDocument:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(ICCRDocument *)self rootObject];
  v6 = ICDynamicCast();

  objc_opt_class();
  v7 = [v4 rootObject];
  v8 = ICDynamicCast();

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && ([v6 identity], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identity"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, !v12) || (objc_msgSend(v4, "startVersion"), (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, objc_msgSend(v4, "startVersion"), v15 = objc_claimAutoreleasedReturnValue(), -[ICCRDocument version](self, "version"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "compare:", v16), v16, v15, v14, (v17 & 4) != 0))
  {
    v21 = 0;
  }

  else
  {
    v18 = [(ICCRDocument *)self version];
    v19 = [v4 version];
    v20 = [v18 compare:v19];

    if (v20)
    {
      v21 = 2;
    }

    else
    {
      v21 = 1;
    }
  }

  return v21;
}

- (void)mergeTimestampWithDocument:(id)a3
{
  v4 = a3;
  v6 = [(ICCRDocument *)self version];
  v5 = [v4 version];

  [v6 mergeWith:v5];
}

- (unint64_t)mergeWithData:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(ICCRDocument *)self replica];
  v6 = [ICCRDocument unarchiveFromData:v4 replica:v5];

  [(ICCRDocument *)self realizeLocalChanges];
  v7 = [(ICCRDocument *)self mergeResultForMergingWithDocument:v6];
  if (v7 == 2)
  {
    v27 = v4;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = [(ICCRDocument *)self objects];
    v9 = [v8 copy];
    v10 = [v9 objectEnumerator];

    v11 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v29;
      do
      {
        v14 = 0;
        do
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v28 + 1) + 8 * v14);
          v16 = [v6 objects];
          v17 = [v15 identity];
          v18 = [v16 objectForKeyedSubscript:v17];
          [v15 mergeWith:v18];

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    v19 = [(ICCRDocument *)self rootObject];
    v20 = [v6 rootObject];
    [v19 mergeWith:v20];

    [(ICCRDocument *)self mergeTimestampWithDocument:v6];
    v21 = [(ICCRDocument *)self version];
    v22 = [(ICCRDocument *)self replica];
    v23 = [v21 clockForUUID:v22];
    v24 = [(ICCRDocument *)self replicaClock];

    v4 = v27;
    if (v23 != v24)
    {
      v25 = os_log_create("com.apple.notes", "Topotext");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        [ICCRDocument mergeWithData:?];
      }
    }

    [(ICCRDocument *)self updateGraphDocumentPointers];
    [(ICCRDocument *)self updateObjectsSet];
    v7 = 2;
  }

  return v7;
}

- (void)walkGraph:(id)a3 root:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x277CCAA50] hashTableWithOptions:514];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3042000000;
  v18 = __Block_byref_object_copy__34;
  v19 = __Block_byref_object_dispose__34;
  v20 = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __31__ICCRDocument_walkGraph_root___block_invoke;
  aBlock[3] = &unk_278197AB0;
  v8 = v7;
  v12 = v8;
  v9 = v5;
  v13 = v9;
  v14 = &v15;
  v10 = _Block_copy(aBlock);
  objc_storeWeak(v16 + 5, v10);
  (*(v9 + 2))(v9, v6);
  [v6 walkGraph:v10];

  _Block_object_dispose(&v15, 8);
  objc_destroyWeak(&v20);
}

void __31__ICCRDocument_walkGraph_root___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v6 = v3;
    v4 = [*(a1 + 32) containsObject:v3];
    v3 = v6;
    if ((v4 & 1) == 0)
    {
      [*(a1 + 32) addObject:v6];
      (*(*(a1 + 40) + 16))();
      WeakRetained = objc_loadWeakRetained((*(*(a1 + 48) + 8) + 40));
      [v6 walkGraph:WeakRetained];

      v3 = v6;
    }
  }
}

- (void)realizeLocalChanges
{
  [a1 replicaClock];
  v2 = [a1 version];
  v3 = [a1 replica];
  [v2 clockForUUID:v3];
  OUTLINED_FUNCTION_3_1(&dword_214D51000, v4, v5, "Version clock should equal cached replica clock: %ld => %ld", v6, v7, v8, v9, 0);
}

- (void)updateGraphDocumentPointers
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__ICCRDocument_updateGraphDocumentPointers__block_invoke;
  v4[3] = &unk_278197AD8;
  v4[4] = self;
  v3 = [(ICCRDocument *)self rootObject];
  [(ICCRDocument *)self walkGraph:v4 root:v3];
}

- (void)updateObjectsSet
{
  v3 = [(ICCRDocument *)self objects];
  [v3 removeAllObjects];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__ICCRDocument_updateObjectsSet__block_invoke;
  v5[3] = &unk_278197AD8;
  v5[4] = self;
  v4 = [(ICCRDocument *)self rootObject];
  [(ICCRDocument *)self walkGraph:v5 root:v4];
}

void __32__ICCRDocument_updateObjectsSet__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  if ([v7 conformsToProtocol:&unk_28275B6C8])
  {
    v3 = *(a1 + 32);
    v4 = v7;
    v5 = [v3 objects];
    v6 = [v4 identity];
    [v5 setObject:v4 forKeyedSubscript:v6];
  }
}

- (void)setDocumentFor:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __31__ICCRDocument_setDocumentFor___block_invoke;
  v3[3] = &unk_278197AD8;
  v3[4] = self;
  [(ICCRDocument *)self walkGraph:v3 root:a3];
}

- (unint64_t)mergeWithDocument:(id)a3
{
  v4 = [a3 archivedData];
  v5 = [(ICCRDocument *)self mergeWithData:v4];

  return v5;
}

- (id)deltaSince:(id)a3
{
  v4 = a3;
  [(ICCRDocument *)self realizeLocalChanges];
  v5 = [(ICCRDocument *)self version];
  v6 = [v4 compare:v5];

  if (v6)
  {
    v8 = [(ICCRDocument *)self rootObject];
    v9 = [v8 deltaSince:v4 in:self];

    v10 = [ICCRDocument alloc];
    v11 = [(ICCRDocument *)self version];
    v12 = [(ICCRDocument *)self replica];
    v13 = [(ICCRDocument *)v10 initWithVersion:v11 startVersion:v4 rootObject:v9 replica:v12];

    v7 = [(ICCRDocument *)v13 archivedData];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(ICCRDocument *)self version];
  v7 = [v6 shortDescription];
  v8 = [(ICCRDocument *)self rootObject];
  v9 = [v3 stringWithFormat:@"<%@ %p version=%@ root=%@>", v5, self, v7, v8];

  return v9;
}

- (void)mergeWithData:(void *)a1 .cold.1(void *a1)
{
  v2 = [a1 version];
  v3 = [a1 replica];
  [v2 clockForUUID:v3];
  [a1 replicaClock];
  OUTLINED_FUNCTION_3_1(&dword_214D51000, v4, v5, "Merging should not modify local replica clock: %ld => %ld", v6, v7, v8, v9, 0);
}

@end