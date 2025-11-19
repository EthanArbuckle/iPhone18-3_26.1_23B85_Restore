@interface ICCRTTCompatibleDocument
+ (id)makeSharedTopotextTimestampFromData:(id)a3;
- (ICCRTTCompatibleDocument)initWithVersion:(id)a3 startVersion:(id)a4 rootObject:(id)a5 replica:(id)a6;
- (ICCRTTCompatibleDocument)initWithVersion:(id)a3 startVersion:(id)a4 rootObject:(id)a5 replica:(id)a6 topoTimestamp:(id)a7;
- (unint64_t)mergeResultForMergingWithDocument:(id)a3;
- (void)mergeTimestampWithDocument:(id)a3;
- (void)realizeLocalChanges;
@end

@implementation ICCRTTCompatibleDocument

- (ICCRTTCompatibleDocument)initWithVersion:(id)a3 startVersion:(id)a4 rootObject:(id)a5 replica:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[TTICCRVectorMultiTimestamp alloc] initWithCapacity:2];
  v15 = [(ICCRTTCompatibleDocument *)self initWithVersion:v13 startVersion:v12 rootObject:v11 replica:v10 topoTimestamp:v14];

  return v15;
}

- (ICCRTTCompatibleDocument)initWithVersion:(id)a3 startVersion:(id)a4 rootObject:(id)a5 replica:(id)a6 topoTimestamp:(id)a7
{
  v12 = a7;
  v18.receiver = self;
  v18.super_class = ICCRTTCompatibleDocument;
  v13 = [(ICCRDocument *)&v18 initWithVersion:a3 startVersion:a4 rootObject:a5 replica:a6];
  v14 = v13;
  if (v13)
  {
    [(ICCRTTCompatibleDocument *)v13 setSharedTopotextTimestamp:v12];
    v15 = [MEMORY[0x277CBEB18] array];
    [(ICCRTTCompatibleDocument *)v14 setStringsWithClocksNeedingUpdating:v15];

    v16 = [MEMORY[0x277CBEB18] array];
    [(ICCRTTCompatibleDocument *)v14 setStringsWithClocksToResetAfterRealizingLocalChanges:v16];
  }

  return v14;
}

+ (id)makeSharedTopotextTimestampFromData:(id)a3
{
  v3 = a3;
  v4 = [(ICTTVectorMultiTimestamp *)[TTICCRVectorMultiTimestamp alloc] initWithData:v3 andCapacity:2];

  return v4;
}

- (unint64_t)mergeResultForMergingWithDocument:(id)a3
{
  v4 = a3;
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
    v9 = [(ICCRDocument *)&v11 mergeResultForMergingWithDocument:v4];
  }

  return v9;
}

- (void)mergeTimestampWithDocument:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ICCRTTCompatibleDocument;
  [(ICCRDocument *)&v19 mergeTimestampWithDocument:v4];
  objc_opt_class();
  v5 = ICDynamicCast();
  if (v5)
  {
    v6 = [(ICCRTTCompatibleDocument *)self sharedTopotextTimestamp];
    v7 = [v5 sharedTopotextTimestamp];
    [v6 mergeWithTimestamp:v7];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = [(ICCRTTCompatibleDocument *)self stringsWithClocksNeedingUpdating];
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
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
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          [v13 updateClock];
          [v13 checkTimestampLogStyleErrors:1];
          [v13 resetLocalReplicaClocksToTimestampValues];
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
      }

      while (v10);
    }

    v14 = [(ICCRTTCompatibleDocument *)self stringsWithClocksNeedingUpdating];
    [v14 removeAllObjects];
  }
}

- (void)realizeLocalChanges
{
  v17 = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = ICCRTTCompatibleDocument;
  [(ICCRDocument *)&v15 realizeLocalChanges];
  v3 = [(ICCRTTCompatibleDocument *)self stringsWithClocksToResetAfterRealizingLocalChanges];
  v4 = [v3 copy];

  v5 = [(ICCRTTCompatibleDocument *)self stringsWithClocksToResetAfterRealizingLocalChanges];
  [v5 removeAllObjects];

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