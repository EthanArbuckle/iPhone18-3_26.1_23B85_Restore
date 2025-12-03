@interface ICCRTTCompatibleDocument
+ (id)makeSharedTopotextTimestampFromData:(id)data;
- (ICCRTTCompatibleDocument)initWithVersion:(id)version startVersion:(id)startVersion rootObject:(id)object replica:(id)replica;
- (ICCRTTCompatibleDocument)initWithVersion:(id)version startVersion:(id)startVersion rootObject:(id)object replica:(id)replica topoTimestamp:(id)timestamp;
- (unint64_t)mergeResultForMergingWithDocument:(id)document;
- (void)mergeTimestampWithDocument:(id)document;
- (void)realizeLocalChanges;
@end

@implementation ICCRTTCompatibleDocument

- (ICCRTTCompatibleDocument)initWithVersion:(id)version startVersion:(id)startVersion rootObject:(id)object replica:(id)replica
{
  replicaCopy = replica;
  objectCopy = object;
  startVersionCopy = startVersion;
  versionCopy = version;
  v14 = [[TTICCRVectorMultiTimestamp alloc] initWithCapacity:2];
  v15 = [(ICCRTTCompatibleDocument *)self initWithVersion:versionCopy startVersion:startVersionCopy rootObject:objectCopy replica:replicaCopy topoTimestamp:v14];

  return v15;
}

- (ICCRTTCompatibleDocument)initWithVersion:(id)version startVersion:(id)startVersion rootObject:(id)object replica:(id)replica topoTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v18.receiver = self;
  v18.super_class = ICCRTTCompatibleDocument;
  v13 = [(ICCRDocument *)&v18 initWithVersion:version startVersion:startVersion rootObject:object replica:replica];
  v14 = v13;
  if (v13)
  {
    [(ICCRTTCompatibleDocument *)v13 setSharedTopotextTimestamp:timestampCopy];
    array = [MEMORY[0x277CBEB18] array];
    [(ICCRTTCompatibleDocument *)v14 setStringsWithClocksNeedingUpdating:array];

    array2 = [MEMORY[0x277CBEB18] array];
    [(ICCRTTCompatibleDocument *)v14 setStringsWithClocksToResetAfterRealizingLocalChanges:array2];
  }

  return v14;
}

+ (id)makeSharedTopotextTimestampFromData:(id)data
{
  dataCopy = data;
  v4 = [(ICTTVectorMultiTimestamp *)[TTICCRVectorMultiTimestamp alloc] initWithData:dataCopy andCapacity:2];

  return v4;
}

- (unint64_t)mergeResultForMergingWithDocument:(id)document
{
  documentCopy = document;
  objc_opt_class();
  v5 = ICDynamicCast();
  if (v5 && (-[ICCRTTCompatibleDocument sharedTopotextTimestamp](self, "sharedTopotextTimestamp"), v6 = objc_claimAutoreleasedReturnValue(), [v5 sharedTopotextTimestamp], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "compareTo:", v7), v7, v6, (v8 & 1) != 0))
  {
    v9 = 2;
  }

  else
  {
    v11.receiver = self;
    v11.super_class = ICCRTTCompatibleDocument;
    v9 = [(ICCRDocument *)&v11 mergeResultForMergingWithDocument:documentCopy];
  }

  return v9;
}

- (void)mergeTimestampWithDocument:(id)document
{
  v21 = *MEMORY[0x277D85DE8];
  documentCopy = document;
  v19.receiver = self;
  v19.super_class = ICCRTTCompatibleDocument;
  [(ICCRDocument *)&v19 mergeTimestampWithDocument:documentCopy];
  objc_opt_class();
  v5 = ICDynamicCast();
  if (v5)
  {
    sharedTopotextTimestamp = [(ICCRTTCompatibleDocument *)self sharedTopotextTimestamp];
    sharedTopotextTimestamp2 = [v5 sharedTopotextTimestamp];
    [sharedTopotextTimestamp mergeWithTimestamp:sharedTopotextTimestamp2];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    stringsWithClocksNeedingUpdating = [(ICCRTTCompatibleDocument *)self stringsWithClocksNeedingUpdating];
    v9 = [stringsWithClocksNeedingUpdating countByEnumeratingWithState:&v15 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(stringsWithClocksNeedingUpdating);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          [v13 updateClock];
          [v13 checkTimestampLogStyleErrors:1];
          [v13 resetLocalReplicaClocksToTimestampValues];
        }

        v10 = [stringsWithClocksNeedingUpdating countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }

    stringsWithClocksNeedingUpdating2 = [(ICCRTTCompatibleDocument *)self stringsWithClocksNeedingUpdating];
    [stringsWithClocksNeedingUpdating2 removeAllObjects];
  }
}

- (void)realizeLocalChanges
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = ICCRTTCompatibleDocument;
  [(ICCRDocument *)&v15 realizeLocalChanges];
  stringsWithClocksToResetAfterRealizingLocalChanges = [(ICCRTTCompatibleDocument *)self stringsWithClocksToResetAfterRealizingLocalChanges];
  v4 = [stringsWithClocksToResetAfterRealizingLocalChanges copy];

  stringsWithClocksToResetAfterRealizingLocalChanges2 = [(ICCRTTCompatibleDocument *)self stringsWithClocksToResetAfterRealizingLocalChanges];
  [stringsWithClocksToResetAfterRealizingLocalChanges2 removeAllObjects];

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) resetLocalReplicaClocksToTimestampValues];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

@end