@interface CPLCloudKitSendFeedbackTask
- (CPLCloudKitSendFeedbackTask)initWithController:(id)a3 messages:(id)a4 completionHandler:(id)a5;
- (void)runOperations;
@end

@implementation CPLCloudKitSendFeedbackTask

- (CPLCloudKitSendFeedbackTask)initWithController:(id)a3 messages:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v16.receiver = self;
  v16.super_class = CPLCloudKitSendFeedbackTask;
  v10 = [(CPLCloudKitTransportTask *)&v16 initWithController:a3];
  if (v10)
  {
    v11 = [v8 copy];
    messages = v10->_messages;
    v10->_messages = v11;

    v13 = [v9 copy];
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v13;

    [(CPLCloudKitTransportTask *)v10 setBoostable:0];
  }

  return v10;
}

- (void)runOperations
{
  v23 = 0;
  v3 = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v23];
  v4 = v23;
  if (v3)
  {
    v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_messages, "count")}];
    v6 = [(CPLCloudKitTransportTask *)self mainScopeIdentifier];
    v17 = v6;
    if ([v6 isEqualToString:CPLPrimaryScopeIdentifier])
    {
      v7 = 0;
    }

    else
    {
      v7 = objc_alloc_init(CPLServerFeedbackKeyAndValue);
      [v7 setKey:{@"mainZone", v6}];
      [v7 setValue:v6];
    }

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v8 = self->_messages;
    v9 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v20;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v20 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v19 + 1) + 8 * i) serverMessage];
          v14 = v13;
          if (v7)
          {
            v15 = [v13 copy];

            [v15 addKeysAndValues:v7];
            v14 = v15;
          }

          [v5 addObject:v14];
        }

        v10 = [(NSArray *)v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v10);
    }

    v16 = [[CPLCKFeedbackOperation alloc] initWithFeedbackMessages:v5];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10003789C;
    v18[3] = &unk_100272468;
    v18[4] = self;
    [(CPLCKFeedbackOperation *)v16 setFeedbackCompletionBlock:v18];
    [(CPLCloudKitTransportTask *)self launchOperation:v16 type:1 withContext:0];
  }

  else
  {
    (*(self->_completionHandler + 2))();
  }
}

@end