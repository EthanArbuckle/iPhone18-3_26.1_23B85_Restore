@interface PDApplePayCloudStoreRecordFetchOperation
- (PDApplePayCloudStoreRecordFetchOperation)init;
- (id)description;
- (void)addCompletion:(id)a3;
- (void)callCompletionsWithError:(id)a3 cloudStoreRecords:(id)a4;
@end

@implementation PDApplePayCloudStoreRecordFetchOperation

- (PDApplePayCloudStoreRecordFetchOperation)init
{
  v6.receiver = self;
  v6.super_class = PDApplePayCloudStoreRecordFetchOperation;
  v2 = [(PDApplePayCloudStoreRecordFetchOperation *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    completions = v2->_completions;
    v2->_completions = v3;
  }

  return v2;
}

- (void)addCompletion:(id)a3
{
  completions = self->_completions;
  v4 = objc_retainBlock(a3);
  [(NSMutableSet *)completions pk_safelyAddObject:v4];
}

- (void)callCompletionsWithError:(id)a3 cloudStoreRecords:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NSMutableSet *)self->_completions copy];
  [(NSMutableSet *)self->_completions removeAllObjects];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        (*(*(*(&v14 + 1) + 8 * v13) + 16))(*(*(&v14 + 1) + 8 * v13));
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<%@: %p ", objc_opt_class(), self];;
  v4 = [(PDApplePayCloudStoreRecordFetchOperation *)self identifier];
  [v3 appendFormat:@"identifier: '%@'; ", v4];

  [v3 appendFormat:@"task: '%@'; ", self->_task];
  [v3 appendFormat:@"completions: %ld; ", -[NSMutableSet count](self->_completions, "count")];
  [v3 appendFormat:@">"];

  return v3;
}

@end