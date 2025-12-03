@interface FCNotificationPayloadOperation
- (FCNotificationPayloadOperation)init;
- (FCNotificationPayloadOperation)initWithContext:(id)context notificationItems:(id)items;
- (void)operationWillFinishWithError:(id)error;
- (void)performOperation;
@end

@implementation FCNotificationPayloadOperation

- (FCNotificationPayloadOperation)init
{
  v16 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[FCNotificationPayloadOperation init]";
    v10 = 2080;
    v11 = "FCNotificationPayloadOperation.m";
    v12 = 1024;
    v13 = 44;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D930];
  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@: %s", @"Do not call method", "-[FCNotificationPayloadOperation init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (FCNotificationPayloadOperation)initWithContext:(id)context notificationItems:(id)items
{
  contextCopy = context;
  itemsCopy = items;
  v12.receiver = self;
  v12.super_class = FCNotificationPayloadOperation;
  v9 = [(FCOperation *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_notificationItems, items);
  }

  return v10;
}

- (void)performOperation
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __50__FCNotificationPayloadOperation_performOperation__block_invoke;
  v13[3] = &unk_1E7C396C0;
  v13[4] = self;
  v3 = [MEMORY[0x1E69B68F8] firstly:v13];
  v4 = zalgo();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __50__FCNotificationPayloadOperation_performOperation__block_invoke_2;
  v12[3] = &unk_1E7C3B298;
  v12[4] = self;
  v5 = [v3 thenOn:v4 then:v12];
  v6 = zalgo();
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __50__FCNotificationPayloadOperation_performOperation__block_invoke_3;
  v11[3] = &unk_1E7C3B2C0;
  v11[4] = self;
  v7 = [v5 thenOn:v6 then:v11];
  v8 = zalgo();
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __50__FCNotificationPayloadOperation_performOperation__block_invoke_10;
  v10[3] = &unk_1E7C36E50;
  v10[4] = self;
  v9 = [v7 errorOn:v8 error:v10];
}

id __50__FCNotificationPayloadOperation_performOperation__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = [*(v1 + 376) configurationManager];
    v3 = FCCoreConfigurationPromise(v2);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

id __50__FCNotificationPayloadOperation_performOperation__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  if (v2)
  {
    v4 = objc_alloc(MEMORY[0x1E69B68F8]);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke;
    v7[3] = &unk_1E7C3B310;
    v7[4] = v2;
    v8 = v3;
    v5 = [v4 initWithResolver:v7];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __50__FCNotificationPayloadOperation_performOperation__block_invoke_3(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = v5;
    v8 = [v6 shortOperationDescription];
    v13 = 138543618;
    v14 = v8;
    v15 = 2048;
    v16 = [v4 count];
    _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ will finish with %lu notification payloads", &v13, 0x16u);
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    objc_storeStrong((v9 + 392), a2);
    v10 = *(a1 + 32);
  }

  else
  {
    v10 = 0;
  }

  [v10 finishedPerformingOperationWithError:0];

  v11 = *MEMORY[0x1E69E9840];
  return 0;
}

- (void)operationWillFinishWithError:(id)error
{
  errorCopy = error;
  completionHandler = [(FCNotificationPayloadOperation *)self completionHandler];

  if (completionHandler)
  {
    completionHandler2 = [(FCNotificationPayloadOperation *)self completionHandler];
    v6 = completionHandler2;
    if (self)
    {
      resultNotificationPayloads = self->_resultNotificationPayloads;
    }

    else
    {
      resultNotificationPayloads = 0;
    }

    if (resultNotificationPayloads)
    {
      v8 = resultNotificationPayloads;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F0];
    }

    (*(completionHandler2 + 16))(completionHandler2, v8, errorCopy);
  }
}

void __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  if (v7)
  {
    v7 = v7[48];
  }

  v8 = v7;
  v9 = [v8 fc_dictionaryWithKeyBlock:&__block_literal_global_189 valueBlock:&__block_literal_global_15_4];

  if ([v9 count])
  {
    v10 = FCOperationLog;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [*(a1 + 32) shortOperationDescription];
      v12 = *(a1 + 32);
      v35 = v6;
      if (v12)
      {
        v12 = v12[48];
      }

      v13 = v12;
      v14 = [v13 count];
      v15 = *(a1 + 32);
      if (v15)
      {
        v15 = v15[48];
      }

      v16 = v15;
      v17 = [v16 fc_arrayByTransformingWithBlock:&__block_literal_global_20_2];
      *buf = 138543874;
      v50 = v11;
      v51 = 2048;
      v52 = v14;
      v53 = 2114;
      v54 = v17;
      _os_log_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ will fetch payloads for %lu notification items: %{public}@@", buf, 0x20u);

      v6 = v35;
    }

    v18 = objc_alloc_init(FCCKMultiFetchQueryOperation);
    v19 = *(a1 + 32);
    if (v19)
    {
      v20 = *(v19 + 376);
    }

    else
    {
      v20 = 0;
    }

    v21 = [v20 internalContentContext];
    v22 = [v21 contentDatabase];
    [(FCCKMultiFetchQueryOperation *)v18 setDatabase:v22];

    v23 = MEMORY[0x1E695DEC8];
    v45[0] = MEMORY[0x1E69E9820];
    v45[1] = 3221225472;
    v45[2] = __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_23;
    v45[3] = &unk_1E7C36D40;
    v46 = v9;
    v24 = [v23 fc_array:v45];
    [(FCCKMultiFetchQueryOperation *)v18 setRecordIDs:v24];

    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_3_27;
    v44[3] = &unk_1E7C36D40;
    v44[4] = *(a1 + 32);
    v25 = [MEMORY[0x1E695DEC8] fc_array:v44];
    [(FCCKMultiFetchQueryOperation *)v18 setRecordSpecs:v25];

    v26 = objc_opt_new();
    newValue[0] = MEMORY[0x1E69E9820];
    newValue[1] = 3221225472;
    newValue[2] = __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_4_30;
    newValue[3] = &unk_1E7C37FE0;
    v28 = v26;
    v43 = v28;
    if (v18)
    {
      objc_setProperty_nonatomic_copy(v18, v27, newValue, 440);
    }

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_5;
    v36[3] = &unk_1E7C47F90;
    v40 = v6;
    v29 = *(a1 + 32);
    v30 = *(a1 + 40);
    v37 = v28;
    v38 = v29;
    v39 = v30;
    v41 = v5;
    v31 = v5;
    v33 = v28;
    if (v18)
    {
      objc_setProperty_nonatomic_copy(v18, v32, v36, 448);
    }

    [*(a1 + 32) associateChildOperation:v18];
    [(FCOperation *)v18 start];
  }

  else
  {
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_4;
    v47[3] = &unk_1E7C37BC0;
    v47[4] = *(a1 + 32);
    v48 = v5;
    v18 = v5;
    __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_4(v47);
  }

  v34 = *MEMORY[0x1E69E9840];
}

uint64_t __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_4(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ will end early because there are no notification items", &v8, 0xCu);
  }

  result = (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_23(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_2_24;
  v6[3] = &unk_1E7C43470;
  v7 = v3;
  v5 = v3;
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
}

void __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_2_24(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 addObject:a2];
  [*(a1 + 32) addObject:v6];
}

void __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_3_27(uint64_t a1, void *a2)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_opt_new();
  v6 = v4;
  if (v4)
  {
    objc_setProperty_nonatomic_copy(v4, v5, @"NotificationItem", 16);
  }

  v46[0] = @"body";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:1];
  v9 = v7;
  if (v6)
  {
    objc_setProperty_nonatomic_copy(v6, v8, v7, 24);

    objc_setProperty_nonatomic_copy(v6, v10, MEMORY[0x1E695E0F0], 32);
  }

  else
  {
  }

  [v3 addObject:v6];
  v11 = objc_opt_new();
  v13 = v11;
  if (v11)
  {
    objc_setProperty_nonatomic_copy(v11, v12, @"Article", 16);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    v15 = *(v14 + 376);
  }

  else
  {
    v15 = 0;
  }

  v16 = [v15 internalContentContext];
  v17 = [v16 articleRecordSource];
  v19 = [v17 desiredKeys];
  if (v13)
  {
    objc_setProperty_nonatomic_copy(v13, v18, v19, 24);
  }

  v45[0] = @"sourceChannelTagID";
  v45[1] = @"parentIssueID";
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v45 count:2];
  if (v13)
  {
    objc_setProperty_nonatomic_copy(v13, v20, v21, 32);
  }

  [v3 addObject:v13];
  v22 = objc_opt_new();
  v24 = v22;
  if (v22)
  {
    objc_setProperty_nonatomic_copy(v22, v23, @"Tag", 16);
  }

  v25 = *(a1 + 32);
  if (v25)
  {
    v26 = *(v25 + 376);
  }

  else
  {
    v26 = 0;
  }

  v27 = [v26 internalContentContext];
  v28 = [v27 tagRecordSource];
  v29 = [v28 desiredKeys];
  v31 = v29;
  if (v24)
  {
    objc_setProperty_nonatomic_copy(v24, v30, v29, 24);

    objc_setProperty_nonatomic_copy(v24, v32, MEMORY[0x1E695E0F0], 32);
  }

  else
  {
  }

  [v3 addObject:v24];
  v33 = objc_opt_new();
  v35 = v33;
  if (v33)
  {
    objc_setProperty_nonatomic_copy(v33, v34, @"Issue", 16);
  }

  v36 = *(a1 + 32);
  if (v36)
  {
    v37 = *(v36 + 376);
  }

  else
  {
    v37 = 0;
  }

  v38 = [v37 internalContentContext];
  v39 = [v38 issueRecordSource];
  v40 = [v39 desiredKeys];
  v42 = v40;
  if (v35)
  {
    objc_setProperty_nonatomic_copy(v35, v41, v40, 24);

    objc_setProperty_nonatomic_copy(v35, v43, MEMORY[0x1E695E0F0], 32);
  }

  else
  {
  }

  [v3 addObject:v35];

  v44 = *MEMORY[0x1E69E9840];
}

void __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_5(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v42 = MEMORY[0x1E69E9820];
    v43 = 3221225472;
    v44 = __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_6;
    v45 = &unk_1E7C37778;
    v47 = *(a1 + 56);
    v46 = v4;
    v47[2](v47, v46);

    v5 = v47;
  }

  else
  {
    v5 = [*(a1 + 32) readOnlyArray];
    v6 = [v5 fc_dictionaryWithKeyBlock:&__block_literal_global_34_3];
    v7 = [v5 fc_arrayOfObjectsPassingTest:&__block_literal_global_37_2];
    v8 = [v5 fc_arrayOfObjectsPassingTest:&__block_literal_global_39_1];
    v9 = [v5 fc_arrayOfObjectsPassingTest:&__block_literal_global_41_3];
    v10 = *(a1 + 40);
    if (v10)
    {
      v11 = *(v10 + 376);
    }

    else
    {
      v11 = 0;
    }

    v12 = [v11 internalContentContext];
    v13 = [v12 articleRecordSource];
    v37 = v7;
    v14 = [v13 convertRecords:v7];

    v15 = *(a1 + 40);
    if (v15)
    {
      v16 = *(v15 + 376);
    }

    else
    {
      v16 = 0;
    }

    v17 = [v16 internalContentContext];
    v18 = [v17 tagRecordSource];
    v36 = v8;
    v19 = [v18 convertRecords:v8];

    v20 = *(a1 + 40);
    if (v20)
    {
      v21 = *(v20 + 376);
    }

    else
    {
      v21 = 0;
    }

    v22 = [v21 internalContentContext];
    v23 = [v22 issueRecordSource];
    v35 = v9;
    v24 = [v23 convertRecords:v9];

    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    if (v25)
    {
      v25 = v25[47];
    }

    v27 = v25;
    v28 = [v27 assetManager];
    v29 = FCHeadlinesWithHeldRecords(v26, v28, v14, v19, v24, 1, 1);

    v30 = *(a1 + 40);
    if (v30)
    {
      v31 = *(v30 + 384);
    }

    else
    {
      v31 = 0;
    }

    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_11;
    v38[3] = &unk_1E7C47F68;
    v39 = v29;
    v40 = v30;
    v41 = v6;
    v32 = v6;
    v33 = v29;
    v34 = [v31 fc_arrayByTransformingWithBlock:v38];
    (*(*(a1 + 64) + 16))();
  }
}

id __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_7(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 recordType];
  if ([v3 isEqualToString:@"NotificationItem"])
  {
    v4 = [v2 recordID];
    v5 = [v4 recordName];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

uint64_t __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_8(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"Article"];

  return v3;
}

uint64_t __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_9(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"Tag"];

  return v3;
}

uint64_t __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_10(uint64_t a1, void *a2)
{
  v2 = [a2 recordType];
  v3 = [v2 isEqualToString:@"Issue"];

  return v3;
}

FCNotificationPayload *__80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_11(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v5 = [v3 articleID];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = v6;
    v8 = a1[6];
    v9 = [v3 identifier];
    v10 = [v8 objectForKeyedSubscript:v9];
    v11 = [v10 objectForKeyedSubscript:@"body"];
    v12 = v11;
    if (v11)
    {
      v13 = v11;
    }

    else
    {
      v13 = [v7 shortExcerpt];
    }

    v15 = v13;

    if (v15)
    {
      v16 = v15;
      v14 = [[FCNotificationPayload alloc] initWithNotificationItem:v3 headline:v7 bodyText:v16];
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_43;
      v18[3] = &unk_1E7C397D0;
      v18[4] = a1[5];
      v19 = v3;
      v14 = __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_43(v18);
    }
  }

  else
  {
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_12;
    v20[3] = &unk_1E7C397D0;
    v20[4] = a1[5];
    v21 = v3;
    v14 = __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_12(v20);
  }

  return v14;
}

uint64_t __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_12(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v6 = [*(a1 + 40) articleID];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ omitting payload for notification item because it has no headline, articleID=%{public}@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

uint64_t __80__FCNotificationPayloadOperation__promiseNotificationPayloadsWithConfiguration___block_invoke_43(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = FCOperationLog;
  if (os_log_type_enabled(FCOperationLog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 shortOperationDescription];
    v6 = [*(a1 + 40) articleID];
    v9 = 138543618;
    v10 = v5;
    v11 = 2114;
    v12 = v6;
    _os_log_impl(&dword_1B63EF000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ omitting payload for notification item because it has no body text, articleID=%{public}@", &v9, 0x16u);
  }

  v7 = *MEMORY[0x1E69E9840];
  return 0;
}

@end