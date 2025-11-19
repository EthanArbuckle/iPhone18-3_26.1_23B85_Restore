@interface ICIndexItemsByIdentifiersOperation
- (ICIndexItemsByIdentifiersOperation)initWithSearchableIndex:(id)a3 dataSources:(id)a4 objectIDURIsToIndex:(id)a5;
- (void)main;
@end

@implementation ICIndexItemsByIdentifiersOperation

- (ICIndexItemsByIdentifiersOperation)initWithSearchableIndex:(id)a3 dataSources:(id)a4 objectIDURIsToIndex:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = ICIndexItemsByIdentifiersOperation;
  v9 = [(ICIndexItemsOperation *)&v12 initWithSearchableIndex:a3 dataSources:a4];
  v10 = v9;
  if (v9)
  {
    [(ICIndexItemsByIdentifiersOperation *)v9 setObjectIDURIsToIndex:v8];
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
  v3 = [(ICIndexItemsOperation *)self dataSources];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [(ICIndexItemsByIdentifiersOperation *)self objectIDURIsToIndex];
        v10 = [(ICIndexItemsOperation *)self managedObjectContextForDataSource:v8];
        [v8 stageObjectIDURIsForIndexing:v9 context:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11.receiver = self;
  v11.super_class = ICIndexItemsByIdentifiersOperation;
  [(ICIndexItemsOperation *)&v11 main];
}

@end