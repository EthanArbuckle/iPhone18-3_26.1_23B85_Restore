@interface JESoftLinkedMTStandardIDService
- (JESoftLinkedMTStandardIDService)initWithAMSBag:(id)a3;
- (JESoftLinkedMTStandardIDService)initWithConfigDictionary:(id)a3;
- (id)idFieldsForTopic:(id)a3;
- (id)idFieldsForTopic:(id)a3 options:(id)a4;
- (id)mtPromiseToAMSPromise:(id)a3;
- (id)resetIDForTopics:(id)a3;
- (id)secretValueForNamespace:(id)a3 options:(id)a4;
- (id)sync;
- (void)performMaintenanceWithCompletion:(id)a3;
- (void)queryIDForTopic:(id)a3 type:(int64_t)a4 options:(id)a5 completion:(id)a6;
@end

@implementation JESoftLinkedMTStandardIDService

- (JESoftLinkedMTStandardIDService)initWithAMSBag:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = JESoftLinkedMTStandardIDService;
  v5 = [(JESoftLinkedMTStandardIDService *)&v8 init];
  if (v5)
  {
    v6 = [objc_alloc(getMTStandardIDServiceClass()) initWithAMSBag:v4];
    [(JESoftLinkedMTStandardIDService *)v5 setBacking:v6];
  }

  return v5;
}

- (JESoftLinkedMTStandardIDService)initWithConfigDictionary:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = JESoftLinkedMTStandardIDService;
  v5 = [(JESoftLinkedMTStandardIDService *)&v8 init];
  if (v5)
  {
    v6 = [objc_alloc(getMTStandardIDServiceClass()) initWithConfigDictionary:v4];
    [(JESoftLinkedMTStandardIDService *)v5 setBacking:v6];
  }

  return v5;
}

- (id)sync
{
  v3 = [(JESoftLinkedMTStandardIDService *)self backing];
  v4 = [v3 sync];

  v5 = [(JESoftLinkedMTStandardIDService *)self mtPromiseToAMSPromise:v4];

  return v5;
}

- (id)resetIDForTopics:(id)a3
{
  v4 = a3;
  v5 = [(JESoftLinkedMTStandardIDService *)self backing];
  v6 = [v5 resetIDForTopics:v4 options:0];

  v7 = [(JESoftLinkedMTStandardIDService *)self mtPromiseToAMSPromise:v6];

  return v7;
}

- (id)idFieldsForTopic:(id)a3
{
  v4 = a3;
  v5 = [(JESoftLinkedMTStandardIDService *)self backing];
  v6 = [v5 IDFieldsForTopic:v4 options:0];

  v7 = [(JESoftLinkedMTStandardIDService *)self mtPromiseToAMSPromise:v6];

  return v7;
}

- (id)idFieldsForTopic:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(JESoftLinkedMTStandardIDService *)self backing];
  v9 = [v8 IDFieldsForTopic:v7 options:v6];

  v10 = [(JESoftLinkedMTStandardIDService *)self mtPromiseToAMSPromise:v9];

  return v10;
}

- (id)secretValueForNamespace:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(JESoftLinkedMTStandardIDService *)self backing];
  v9 = [v8 secretValueForNamespace:v7 options:v6];

  v10 = [(JESoftLinkedMTStandardIDService *)self mtPromiseToAMSPromise:v9];

  return v10;
}

- (void)queryIDForTopic:(id)a3 type:(int64_t)a4 options:(id)a5 completion:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(JESoftLinkedMTStandardIDService *)self backing];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __75__JESoftLinkedMTStandardIDService_queryIDForTopic_type_options_completion___block_invoke;
  v15[3] = &unk_1E794ACB8;
  v16 = v10;
  v14 = v10;
  [v13 queryIDForTopic:v12 type:a4 options:v11 completion:v15];
}

void __75__JESoftLinkedMTStandardIDService_queryIDForTopic_type_options_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15[5] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5 && ([v5 effectiveDate], v7 = objc_claimAutoreleasedReturnValue(), v7, v7))
  {
    v14[0] = @"idString";
    v8 = [v5 idString];
    v15[0] = v8;
    v14[1] = @"idType";
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v5, "idType")}];
    v15[1] = v9;
    v14[2] = @"effectiveDate";
    v10 = [v5 effectiveDate];
    v15[2] = v10;
    v14[3] = @"expirationDate";
    v11 = [v5 expirationDate];
    v15[3] = v11;
    v14[4] = @"isSynchronized";
    v12 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v5, "isSynchronized")}];
    v15[4] = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:5];

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (id)mtPromiseToAMSPromise:(id)a3
{
  v3 = MEMORY[0x1E698CA58];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __57__JESoftLinkedMTStandardIDService_mtPromiseToAMSPromise___block_invoke;
  v13[3] = &unk_1E794ACE0;
  v6 = v5;
  v14 = v6;
  [v4 addErrorBlock:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __57__JESoftLinkedMTStandardIDService_mtPromiseToAMSPromise___block_invoke_2;
  v11[3] = &unk_1E794AD08;
  v7 = v6;
  v12 = v7;
  [v4 addSuccessBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

- (void)performMaintenanceWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(JESoftLinkedMTStandardIDService *)self backing];
  [v5 performMaintenanceWithCompletion:v4];
}

@end