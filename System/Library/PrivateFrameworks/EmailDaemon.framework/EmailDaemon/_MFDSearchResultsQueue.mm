@interface _MFDSearchResultsQueue
- (BOOL)handleItems:(id)a3;
- (_MFDSearchResultsQueue)initWithKeys:(id)a3 resultsProxy:(id)a4;
- (void)finishWithError:(id)a3;
@end

@implementation _MFDSearchResultsQueue

- (_MFDSearchResultsQueue)initWithKeys:(id)a3 resultsProxy:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = _MFDSearchResultsQueue;
  v8 = [(_MFDSearchResultsQueue *)&v18 initWithMaximumSize:32 latency:1.79769313e308];
  if (v8)
  {
    v9 = [EFScheduler serialDispatchQueueSchedulerWithName:@"com.apple.mobilemail.search.results" qualityOfService:25];
    scheduler = v8->_scheduler;
    v8->_scheduler = v9;

    v11 = [[MFMessageResultsGenerator alloc] initWithKeys:v6 downloadIfNecessary:0];
    generator = v8->_generator;
    v8->_generator = v11;

    v13 = v8->_generator;
    v14 = sub_100027C70();
    v15 = [v14 defaultAttachmentManager];
    [(MFMessageResultsGenerator *)v13 setAttachmentManager:v15];

    objc_storeStrong(&v8->_resultsProxy, a4);
    v16 = v8;
  }

  return v8;
}

- (BOOL)handleItems:(id)a3
{
  v4 = a3;
  scheduler = self->_scheduler;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100066778;
  v8[3] = &unk_1001563D8;
  v9 = v4;
  v10 = self;
  v6 = v4;
  [(EFScheduler *)scheduler performBlock:v8];

  return 1;
}

- (void)finishWithError:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _MFDSearchResultsQueue;
  [(_MFDSearchResultsQueue *)&v9 flush];
  scheduler = self->_scheduler;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100066A38;
  v7[3] = &unk_1001563D8;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  [(EFScheduler *)scheduler performBlock:v7];
}

@end