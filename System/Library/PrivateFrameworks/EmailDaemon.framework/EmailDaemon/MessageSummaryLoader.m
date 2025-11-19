@interface MessageSummaryLoader
- (BOOL)summaryLoaded;
- (MessageSummaryLoader)initWithMessage:(id)a3;
- (id)_bodyLoader;
- (id)requestSummary;
- (int64_t)priority;
- (void)cancelSummaryRequest;
- (void)notifyContentsAvailable:(id)a3 forMessage:(id)a4;
- (void)notifyContentsUnavailableForMessage:(id)a3 error:(id)a4;
@end

@implementation MessageSummaryLoader

- (MessageSummaryLoader)initWithMessage:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = MessageSummaryLoader;
  v6 = [(MessageSummaryLoader *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, a3);
    v8 = +[NSDate date];
    [v8 timeIntervalSince1970];
    v7->_order = v9;
  }

  return v7;
}

- (BOOL)summaryLoaded
{
  v3 = [(MessageSummaryLoader *)self message];
  v4 = [v3 summary];
  if (v4)
  {
    v5 = [(MessageSummaryLoader *)self message];
    v6 = [v5 headersIfAvailable];
    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)requestSummary
{
  v3 = +[EFPromise promise];
  [(MessageSummaryLoader *)self setSummaryPromise:v3];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100047F48;
  v8[3] = &unk_100156400;
  v8[4] = self;
  v4 = +[EFScheduler mainThreadScheduler];
  [v4 performBlock:v8];

  v5 = [(MessageSummaryLoader *)self summaryPromise];
  v6 = [v5 future];

  return v6;
}

- (void)cancelSummaryRequest
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10004806C;
  v3[3] = &unk_100156400;
  v3[4] = self;
  v2 = +[EFScheduler mainThreadScheduler];
  [v2 performBlock:v3];
}

- (void)notifyContentsAvailable:(id)a3 forMessage:(id)a4
{
  v6 = a3;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004822C;
  v10[3] = &unk_1001573C0;
  v7 = a4;
  v11 = v7;
  v12 = self;
  v8 = v6;
  v13 = v8;
  v9 = +[EFScheduler mainThreadScheduler];
  [v9 performBlock:v10];
}

- (void)notifyContentsUnavailableForMessage:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000483E8;
  v11[3] = &unk_1001573C0;
  v8 = v6;
  v12 = v8;
  v13 = self;
  v9 = v7;
  v14 = v9;
  v10 = +[EFScheduler mainThreadScheduler];
  [v10 performBlock:v11];
}

- (int64_t)priority
{
  v2 = MFUserAgent();
  if ([v2 isForeground])
  {
    v3 = 200;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_bodyLoader
{
  v2 = [(MessageSummaryLoader *)self message];
  v3 = [v2 account];
  v4 = [MessageBodyLoader loaderForAccount:v3];

  return v4;
}

@end