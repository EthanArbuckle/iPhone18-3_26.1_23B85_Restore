@interface CRKScreenshotService
- (CRKScreenshotService)init;
- (void)run;
- (void)setupSignalHandler;
@end

@implementation CRKScreenshotService

- (CRKScreenshotService)init
{
  v9.receiver = self;
  v9.super_class = CRKScreenshotService;
  v2 = [(CRKScreenshotService *)&v9 init];
  v3 = v2;
  if (v2)
  {
    [(CRKScreenshotService *)v2 setupSignalHandler];
    v4 = objc_opt_new();
    requestServicer = v3->_requestServicer;
    v3->_requestServicer = v4;

    v6 = [[CSSXPCListenerDelegate alloc] initWithExportedObject:v3->_requestServicer];
    listenerDelegate = v3->_listenerDelegate;
    v3->_listenerDelegate = v6;
  }

  return v3;
}

- (void)run
{
  v3 = objc_autoreleasePoolPush();
  v5 = +[NSXPCListener serviceListener];
  listenerDelegate = [(CRKScreenshotService *)self listenerDelegate];
  [v5 setDelegate:listenerDelegate];

  objc_autoreleasePoolPop(v3);
  [v5 resume];
}

- (void)setupSignalHandler
{
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  mSIGTERMSource = self->mSIGTERMSource;
  self->mSIGTERMSource = v3;

  dispatch_source_set_event_handler(self->mSIGTERMSource, &stru_10000C5B8);
  v5 = self->mSIGTERMSource;

  dispatch_resume(v5);
}

@end