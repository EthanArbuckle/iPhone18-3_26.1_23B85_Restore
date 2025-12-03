@interface CPLCloudKitSendFeedbackTask
- (CPLCloudKitSendFeedbackTask)initWithController:(id)controller messages:(id)messages completionHandler:(id)handler;
- (void)runOperations;
@end

@implementation CPLCloudKitSendFeedbackTask

- (CPLCloudKitSendFeedbackTask)initWithController:(id)controller messages:(id)messages completionHandler:(id)handler
{
  messagesCopy = messages;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = CPLCloudKitSendFeedbackTask;
  v10 = [(CPLCloudKitTransportTask *)&v16 initWithController:controller];
  if (v10)
  {
    v11 = [messagesCopy copy];
    messages = v10->_messages;
    v10->_messages = v11;

    v13 = [handlerCopy copy];
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
    mainScopeIdentifier = [(CPLCloudKitTransportTask *)self mainScopeIdentifier];
    v17 = mainScopeIdentifier;
    if ([mainScopeIdentifier isEqualToString:CPLPrimaryScopeIdentifier])
    {
      v7 = 0;
    }

    else
    {
      v7 = objc_alloc_init(CPLServerFeedbackKeyAndValue);
      [v7 setKey:{@"mainZone", mainScopeIdentifier}];
      [v7 setValue:mainScopeIdentifier];
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

          serverMessage = [*(*(&v19 + 1) + 8 * i) serverMessage];
          v14 = serverMessage;
          if (v7)
          {
            v15 = [serverMessage copy];

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