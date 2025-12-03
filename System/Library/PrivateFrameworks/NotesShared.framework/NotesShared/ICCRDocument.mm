@interface ICCRDocument
+ (id)documentWithReplica:(id)replica;
+ (id)documentWithRootObject:(id)object replica:(id)replica;
- (ICCRDocument)init;
- (ICCRDocument)initWithReplica:(id)replica;
- (ICCRDocument)initWithVersion:(id)version startVersion:(id)startVersion rootObject:(id)object replica:(id)replica;
- (id)archivedData;
- (id)copyForReplica:(id)replica;
- (id)deltaSince:(id)since;
- (id)description;
- (id)localObject:(id)object;
- (unint64_t)mergeResultForMergingWithDocument:(id)document;
- (unint64_t)mergeWithData:(id)data;
- (unint64_t)mergeWithDocument:(id)document;
- (void)mergeTimestampWithDocument:(id)document;
- (void)realizeLocalChanges;
- (void)setDocumentFor:(id)for;
- (void)setRootObject:(id)object;
- (void)updateGraphDocumentPointers;
- (void)updateObjectsSet;
- (void)walkGraph:(id)graph root:(id)root;
@end

@implementation ICCRDocument

+ (id)documentWithReplica:(id)replica
{
  replicaCopy = replica;
  v4 = [ICCRDocument alloc];
  v5 = objc_alloc_init(ICCRVectorTimestamp);
  v6 = [(ICCRDocument *)v4 initWithVersion:v5 rootObject:0 replica:replicaCopy];

  return v6;
}

+ (id)documentWithRootObject:(id)object replica:(id)replica
{
  replicaCopy = replica;
  objectCopy = object;
  v7 = [ICCRDocument alloc];
  v8 = objc_alloc_init(ICCRVectorTimestamp);
  v9 = [(ICCRDocument *)v7 initWithVersion:v8 rootObject:objectCopy replica:replicaCopy];

  return v9;
}

- (ICCRDocument)init
{
  uUID = [MEMORY[0x277CCAD78] UUID];
  v4 = [(ICCRDocument *)self initWithReplica:uUID];

  return v4;
}

- (ICCRDocument)initWithReplica:(id)replica
{
  replicaCopy = replica;
  v5 = objc_alloc_init(ICCRVectorTimestamp);
  v6 = [(ICCRDocument *)self initWithVersion:v5 startVersion:0 rootObject:0 replica:replicaCopy];

  return v6;
}

- (ICCRDocument)initWithVersion:(id)version startVersion:(id)startVersion rootObject:(id)object replica:(id)replica
{
  versionCopy = version;
  startVersionCopy = startVersion;
  objectCopy = object;
  replicaCopy = replica;
  v21.receiver = self;
  v21.super_class = ICCRDocument;
  v15 = [(ICCRDocument *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_version, version);
    v17 = [(ICCRVectorTimestamp *)v16->_version clockForUUID:replicaCopy];
    v16->_replicaClock = v17;
    v16->_unserializedReplicaClock = v17;
    objc_storeStrong(&v16->_startVersion, startVersion);
    objc_storeStrong(&v16->_rootObject, object);
    objc_storeStrong(&v16->_replica, replica);
    v18 = objc_alloc_init(MEMORY[0x277CBEB38]);
    objects = v16->_objects;
    v16->_objects = v18;

    if (objectCopy)
    {
      [(ICCRDocument *)v16 setDocumentFor:objectCopy];
    }
  }

  return v16;
}

- (void)setRootObject:(id)object
{
  objectCopy = object;
  if (self->_rootObject != objectCopy)
  {
    v6 = objectCopy;
    objc_storeStrong(&self->_rootObject, object);
    [(ICCRDocument *)self setDocumentFor:v6];
    objectCopy = v6;
  }
}

- (id)copyForReplica:(id)replica
{
  replicaCopy = replica;
  archivedData = [(ICCRDocument *)self archivedData];
  v6 = [ICCRDocument unarchiveFromData:archivedData replica:replicaCopy];

  return v6;
}

- (id)archivedData
{
  [(ICCRDocument *)self realizeLocalChanges];

  return [ICCRCoderArchiver encodedDataWithDocument:self];
}

- (id)localObject:(id)object
{
  objectCopy = object;
  if ([objectCopy conformsToProtocol:&unk_28275B6C8])
  {
    objects = [(ICCRDocument *)self objects];
    identity = [objectCopy identity];
    v7 = [objects objectForKeyedSubscript:identity];

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = objectCopy;
    }

    v9 = v8;

    objectCopy = v9;
  }

  return objectCopy;
}

- (unint64_t)mergeResultForMergingWithDocument:(id)document
{
  documentCopy = document;
  objc_opt_class();
  rootObject = [(ICCRDocument *)self rootObject];
  v6 = ICDynamicCast();

  objc_opt_class();
  rootObject2 = [documentCopy rootObject];
  v8 = ICDynamicCast();

  if (v6)
  {
    v9 = v8 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9 && ([v6 identity], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "identity"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, !v12) || (objc_msgSend(documentCopy, "startVersion"), (v13 = objc_claimAutoreleasedReturnValue()) != 0) && (v14 = v13, objc_msgSend(documentCopy, "startVersion"), v15 = objc_claimAutoreleasedReturnValue(), -[ICCRDocument version](self, "version"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v15, "compare:", v16), v16, v15, v14, (v17 & 4) != 0))
  {
    v21 = 0;
  }

  else
  {
    version = [(ICCRDocument *)self version];
    version2 = [documentCopy version];
    v20 = [version compare:version2];

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

- (void)mergeTimestampWithDocument:(id)document
{
  documentCopy = document;
  version = [(ICCRDocument *)self version];
  version2 = [documentCopy version];

  [version mergeWith:version2];
}

- (unint64_t)mergeWithData:(id)data
{
  v33 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  replica = [(ICCRDocument *)self replica];
  v6 = [ICCRDocument unarchiveFromData:dataCopy replica:replica];

  [(ICCRDocument *)self realizeLocalChanges];
  v7 = [(ICCRDocument *)self mergeResultForMergingWithDocument:v6];
  if (v7 == 2)
  {
    v27 = dataCopy;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    objects = [(ICCRDocument *)self objects];
    v9 = [objects copy];
    objectEnumerator = [v9 objectEnumerator];

    v11 = [objectEnumerator countByEnumeratingWithState:&v28 objects:v32 count:16];
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
            objc_enumerationMutation(objectEnumerator);
          }

          v15 = *(*(&v28 + 1) + 8 * v14);
          objects2 = [v6 objects];
          identity = [v15 identity];
          v18 = [objects2 objectForKeyedSubscript:identity];
          [v15 mergeWith:v18];

          ++v14;
        }

        while (v12 != v14);
        v12 = [objectEnumerator countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v12);
    }

    rootObject = [(ICCRDocument *)self rootObject];
    rootObject2 = [v6 rootObject];
    [rootObject mergeWith:rootObject2];

    [(ICCRDocument *)self mergeTimestampWithDocument:v6];
    version = [(ICCRDocument *)self version];
    replica2 = [(ICCRDocument *)self replica];
    v23 = [version clockForUUID:replica2];
    replicaClock = [(ICCRDocument *)self replicaClock];

    dataCopy = v27;
    if (v23 != replicaClock)
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

- (void)walkGraph:(id)graph root:(id)root
{
  graphCopy = graph;
  rootCopy = root;
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
  v9 = graphCopy;
  v13 = v9;
  v14 = &v15;
  v10 = _Block_copy(aBlock);
  objc_storeWeak(v16 + 5, v10);
  (*(v9 + 2))(v9, rootCopy);
  [rootCopy walkGraph:v10];

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
  [self replicaClock];
  version = [self version];
  replica = [self replica];
  [version clockForUUID:replica];
  OUTLINED_FUNCTION_3_1(&dword_214D51000, v4, v5, "Version clock should equal cached replica clock: %ld => %ld", v6, v7, v8, v9, 0);
}

- (void)updateGraphDocumentPointers
{
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__ICCRDocument_updateGraphDocumentPointers__block_invoke;
  v4[3] = &unk_278197AD8;
  v4[4] = self;
  rootObject = [(ICCRDocument *)self rootObject];
  [(ICCRDocument *)self walkGraph:v4 root:rootObject];
}

- (void)updateObjectsSet
{
  objects = [(ICCRDocument *)self objects];
  [objects removeAllObjects];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __32__ICCRDocument_updateObjectsSet__block_invoke;
  v5[3] = &unk_278197AD8;
  v5[4] = self;
  rootObject = [(ICCRDocument *)self rootObject];
  [(ICCRDocument *)self walkGraph:v5 root:rootObject];
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

- (void)setDocumentFor:(id)for
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __31__ICCRDocument_setDocumentFor___block_invoke;
  v3[3] = &unk_278197AD8;
  v3[4] = self;
  [(ICCRDocument *)self walkGraph:v3 root:for];
}

- (unint64_t)mergeWithDocument:(id)document
{
  archivedData = [document archivedData];
  v5 = [(ICCRDocument *)self mergeWithData:archivedData];

  return v5;
}

- (id)deltaSince:(id)since
{
  sinceCopy = since;
  [(ICCRDocument *)self realizeLocalChanges];
  version = [(ICCRDocument *)self version];
  v6 = [sinceCopy compare:version];

  if (v6)
  {
    rootObject = [(ICCRDocument *)self rootObject];
    v9 = [rootObject deltaSince:sinceCopy in:self];

    v10 = [ICCRDocument alloc];
    version2 = [(ICCRDocument *)self version];
    replica = [(ICCRDocument *)self replica];
    v13 = [(ICCRDocument *)v10 initWithVersion:version2 startVersion:sinceCopy rootObject:v9 replica:replica];

    archivedData = [(ICCRDocument *)v13 archivedData];
  }

  else
  {
    archivedData = 0;
  }

  return archivedData;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  version = [(ICCRDocument *)self version];
  shortDescription = [version shortDescription];
  rootObject = [(ICCRDocument *)self rootObject];
  v9 = [v3 stringWithFormat:@"<%@ %p version=%@ root=%@>", v5, self, shortDescription, rootObject];

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