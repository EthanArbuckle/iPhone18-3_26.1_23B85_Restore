@interface CPLCKFeedbackOperation
- (CPLCKFeedbackOperation)initWithFeedbackMessages:(id)messages;
@end

@implementation CPLCKFeedbackOperation

- (CPLCKFeedbackOperation)initWithFeedbackMessages:(id)messages
{
  messagesCopy = messages;
  v6 = objc_alloc_init(CPLServerFeedbackRequest);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = messagesCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [v6 addMessages:*(*(&v20 + 1) + 8 * i)];
      }

      v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v8);
  }

  data = [v6 data];
  if (!data)
  {
    sub_100198AEC(a2, self, v6);
  }

  v12 = objc_opt_class();
  v19.receiver = self;
  v19.super_class = CPLCKFeedbackOperation;
  v13 = [(CPLCKFeedbackOperation *)&v19 initWithServiceName:@"Feedback" functionName:@"submit" responseClass:v12];
  v14 = v13;
  if (v13)
  {
    [(CPLCKFeedbackOperation *)v13 setRequest:v6];
    objc_initWeak(&location, v14);
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10003F6FC;
    v16[3] = &unk_100273E78;
    objc_copyWeak(&v17, &location);
    [(CPLCKFeedbackOperation *)v14 setCodeOperationCompletionBlock:v16];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v14;
}

@end