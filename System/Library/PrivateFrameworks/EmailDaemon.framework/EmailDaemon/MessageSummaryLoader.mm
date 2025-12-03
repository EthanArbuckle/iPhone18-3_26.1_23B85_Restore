@interface MessageSummaryLoader
- (BOOL)summaryLoaded;
- (MessageSummaryLoader)initWithMessage:(id)message;
- (id)_bodyLoader;
- (id)requestSummary;
- (int64_t)priority;
- (void)cancelSummaryRequest;
- (void)notifyContentsAvailable:(id)available forMessage:(id)message;
- (void)notifyContentsUnavailableForMessage:(id)message error:(id)error;
@end

@implementation MessageSummaryLoader

- (MessageSummaryLoader)initWithMessage:(id)message
{
  messageCopy = message;
  v11.receiver = self;
  v11.super_class = MessageSummaryLoader;
  v6 = [(MessageSummaryLoader *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_message, message);
    v8 = +[NSDate date];
    [v8 timeIntervalSince1970];
    v7->_order = v9;
  }

  return v7;
}

- (BOOL)summaryLoaded
{
  message = [(MessageSummaryLoader *)self message];
  summary = [message summary];
  if (summary)
  {
    message2 = [(MessageSummaryLoader *)self message];
    headersIfAvailable = [message2 headersIfAvailable];
    v7 = headersIfAvailable != 0;
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

  summaryPromise = [(MessageSummaryLoader *)self summaryPromise];
  future = [summaryPromise future];

  return future;
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

- (void)notifyContentsAvailable:(id)available forMessage:(id)message
{
  availableCopy = available;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10004822C;
  v10[3] = &unk_1001573C0;
  messageCopy = message;
  v11 = messageCopy;
  selfCopy = self;
  v8 = availableCopy;
  v13 = v8;
  v9 = +[EFScheduler mainThreadScheduler];
  [v9 performBlock:v10];
}

- (void)notifyContentsUnavailableForMessage:(id)message error:(id)error
{
  messageCopy = message;
  errorCopy = error;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000483E8;
  v11[3] = &unk_1001573C0;
  v8 = messageCopy;
  v12 = v8;
  selfCopy = self;
  v9 = errorCopy;
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
  message = [(MessageSummaryLoader *)self message];
  account = [message account];
  v4 = [MessageBodyLoader loaderForAccount:account];

  return v4;
}

@end