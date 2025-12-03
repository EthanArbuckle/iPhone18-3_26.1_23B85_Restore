@interface MADArtworkServer
- (MADArtworkServer)init;
- (void)processArtworkColorAnalysisRequest:(id)request withReply:(id)reply;
- (void)processArtworkRequest:(id)request completionHandler:(id)handler;
@end

@implementation MADArtworkServer

- (void)processArtworkColorAnalysisRequest:(id)request withReply:(id)reply
{
  requestCopy = request;
  replyCopy = reply;
  v9 = sub_100001B34(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [requestCopy debugDescription];
    *buf = 138543362;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received artwork color analysis request: %{public}@", buf, 0xCu);
  }

  operationClass = [requestCopy operationClass];
  if (!operationClass)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MADArtworkServer.m" lineNumber:81 description:@"Artwork service color analysis request must specify an operationClass"];
  }

  v12 = [[operationClass alloc] initWithArtworkRequest:requestCopy];
  [v12 setQueuePriority:{objc_msgSend(requestCopy, "operationPriority")}];
  objc_initWeak(buf, v12);
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100000FC0;
  v20 = &unk_1000041B8;
  objc_copyWeak(&v24, buf);
  v13 = requestCopy;
  v21 = v13;
  v14 = replyCopy;
  selfCopy = self;
  v23 = v14;
  [v12 setCompletionBlock:&v17];
  v15 = [(MADArtworkServer *)self artworkServiceQueue:v17];
  [v15 addOperation:v12];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (void)processArtworkRequest:(id)request completionHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  v9 = sub_100001B34(3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [requestCopy debugDescription];
    *buf = 138543362;
    v26 = v10;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Received artwork request: %{public}@", buf, 0xCu);
  }

  operationClass = [requestCopy operationClass];
  if (!operationClass)
  {
    v16 = +[NSAssertionHandler currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"MADArtworkServer.m" lineNumber:45 description:@"Artwork service request must specify an operationClass"];
  }

  v12 = [[operationClass alloc] initWithArtworkRequest:requestCopy];
  [v12 setQueuePriority:{objc_msgSend(requestCopy, "operationPriority")}];
  objc_initWeak(buf, v12);
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1000014BC;
  v20 = &unk_1000041B8;
  objc_copyWeak(&v24, buf);
  v13 = requestCopy;
  v21 = v13;
  v14 = handlerCopy;
  selfCopy = self;
  v23 = v14;
  [v12 setCompletionBlock:&v17];
  v15 = [(MADArtworkServer *)self artworkServiceQueue:v17];
  [v15 addOperation:v12];

  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);
}

- (MADArtworkServer)init
{
  v9.receiver = self;
  v9.super_class = MADArtworkServer;
  v2 = [(MADArtworkServer *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    [(MADArtworkServer *)v2 setArtworkServiceQueue:v3];

    artworkServiceQueue = [(MADArtworkServer *)v2 artworkServiceQueue];
    [artworkServiceQueue setMaxConcurrentOperationCount:1];

    artworkServiceQueue2 = [(MADArtworkServer *)v2 artworkServiceQueue];
    [artworkServiceQueue2 setName:@"com.apple.mediaartworkd.artworkServiceQueue"];

    v6 = dispatch_queue_create("com.apple.mediaartworkd.calloutQueue", 0);
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v6;
  }

  return v2;
}

@end