@interface ICIndexItemsByIdentifiersOperation
- (ICIndexItemsByIdentifiersOperation)initWithSearchableIndex:(id)index dataSources:(id)sources objectIDURIsToIndex:(id)toIndex;
- (void)main;
@end

@implementation ICIndexItemsByIdentifiersOperation

- (ICIndexItemsByIdentifiersOperation)initWithSearchableIndex:(id)index dataSources:(id)sources objectIDURIsToIndex:(id)toIndex
{
  toIndexCopy = toIndex;
  v12.receiver = self;
  v12.super_class = ICIndexItemsByIdentifiersOperation;
  v9 = [(ICIndexItemsOperation *)&v12 initWithSearchableIndex:index dataSources:sources];
  v10 = v9;
  if (v9)
  {
    [(ICIndexItemsByIdentifiersOperation *)v9 setObjectIDURIsToIndex:toIndexCopy];
  }

  return v10;
}

- (void)main
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  dataSources = [(ICIndexItemsOperation *)self dataSources];
  v4 = [dataSources countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(dataSources);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        objectIDURIsToIndex = [(ICIndexItemsByIdentifiersOperation *)self objectIDURIsToIndex];
        v10 = [(ICIndexItemsOperation *)self managedObjectContextForDataSource:v8];
        [v8 stageObjectIDURIsForIndexing:objectIDURIsToIndex context:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [dataSources countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11.receiver = self;
  v11.super_class = ICIndexItemsByIdentifiersOperation;
  [(ICIndexItemsOperation *)&v11 main];
}

@end