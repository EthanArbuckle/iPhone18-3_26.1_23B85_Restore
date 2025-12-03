@interface SMTAttachmentsDownload
+ (void)initialize;
- (SMTAttachmentsDownload)initWithQueue:(id)queue;
- (void)cancel;
- (void)downloadAttachments:(id)attachments completion:(id)completion;
@end

@implementation SMTAttachmentsDownload

- (void)downloadAttachments:(id)attachments completion:(id)completion
{
  attachmentsCopy = attachments;
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100003938;
  block[3] = &unk_100038F78;
  selfCopy = self;
  v14 = completionCopy;
  v12 = attachmentsCopy;
  v9 = completionCopy;
  v10 = attachmentsCopy;
  dispatch_async(queue, block);
}

- (void)cancel
{
  [(NSURLSession *)self->_session invalidateAndCancel];
  session = self->_session;
  self->_session = 0;
}

- (SMTAttachmentsDownload)initWithQueue:(id)queue
{
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = SMTAttachmentsDownload;
  v6 = [(SMTAttachmentsDownload *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
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
  if (objc_opt_class() == self)
  {
    qword_10003FF10 = os_log_create("com.apple.speech.speechmodeltraining", "SMTAttachmentsDownload");

    _objc_release_x1();
  }
}

@end