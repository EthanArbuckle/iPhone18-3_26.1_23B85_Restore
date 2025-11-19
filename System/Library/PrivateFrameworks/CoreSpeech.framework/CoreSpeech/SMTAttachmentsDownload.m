@interface SMTAttachmentsDownload
+ (void)initialize;
- (SMTAttachmentsDownload)initWithQueue:(id)a3;
- (void)cancel;
- (void)downloadAttachments:(id)a3 completion:(id)a4;
@end

@implementation SMTAttachmentsDownload

- (void)downloadAttachments:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003938;
  block[3] = &unk_100038F78;
  v13 = self;
  v14 = v7;
  v12 = v6;
  v9 = v7;
  v10 = v6;
  dispatch_async(queue, block);
}

- (void)cancel
{
  [(NSURLSession *)self->_session invalidateAndCancel];
  session = self->_session;
  self->_session = 0;
}

- (SMTAttachmentsDownload)initWithQueue:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = SMTAttachmentsDownload;
  v6 = [(SMTAttachmentsDownload *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, a3);
    v8 = +[NSURLSessionConfiguration defaultSessionConfiguration];
    [v8 setAllowsCellularAccess:0];
    [v8 setNetworkServiceType:3];
    v9 = objc_alloc_init(NSOperationQueue);
    [v9 setUnderlyingQueue:v7->_queue];
    v10 = [NSURLSession sessionWithConfiguration:v8 delegate:v7 delegateQueue:v9];
    session = v7->_session;
    v7->_session = v10;
  }

  return v7;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    qword_10003FF10 = os_log_create("com.apple.speech.speechmodeltraining", "SMTAttachmentsDownload");

    _objc_release_x1();
  }
}

@end