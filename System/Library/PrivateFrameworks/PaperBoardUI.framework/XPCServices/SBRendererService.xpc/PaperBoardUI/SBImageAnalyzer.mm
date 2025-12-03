@interface SBImageAnalyzer
- (SBImageAnalyzer)init;
- (id)executeAnalysisRequest:(id)request completion:(id)completion;
- (id)executeAnalysisRequest:(id)request error:(id *)error;
- (void)_self_invalidate;
- (void)cancelRequest:(id)request;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SBImageAnalyzer

- (SBImageAnalyzer)init
{
  v6.receiver = self;
  v6.super_class = SBImageAnalyzer;
  v2 = [(SBImageAnalyzer *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    [(NSOperationQueue *)v2->_operationQueue setName:@"SBImageAnalyzer"];
    [(NSOperationQueue *)v2->_operationQueue setMaxConcurrentOperationCount:1];
  }

  return v2;
}

- (void)dealloc
{
  [(SBImageAnalyzer *)self _self_invalidate];
  v3.receiver = self;
  v3.super_class = SBImageAnalyzer;
  [(SBImageAnalyzer *)&v3 dealloc];
}

- (void)cancelRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  requestIdentifier = [requestCopy requestIdentifier];
  if (requestIdentifier)
  {
    v7 = selfCopy->_operationQueue;
    operationQueue = selfCopy->_operationQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001450;
    v10[3] = &unk_100008360;
    v9 = v7;
    v11 = v9;
    v12 = requestIdentifier;
    [(NSOperationQueue *)operationQueue addBarrierBlock:v10];
  }

  objc_sync_exit(selfCopy);
}

- (id)executeAnalysisRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_operationQueue)
  {
    v9 = [[SBImageAnalyzerOperation alloc] initWithRequest:requestCopy completion:completionCopy];
    [(NSOperationQueue *)selfCopy->_operationQueue addOperation:v9];
    objc_initWeak(&location, selfCopy);
    progress = [(SBImageAnalyzerOperation *)v9 progress];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000017D8;
    v13[3] = &unk_100008388;
    objc_copyWeak(&v15, &location);
    v14 = requestCopy;
    [progress setCancellationHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
LABEL_5:

    goto LABEL_6;
  }

  if (completionCopy)
  {
    v17 = NSLocalizedFailureReasonErrorKey;
    v18 = @"invalidated";
    v9 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v11 = [NSError errorWithDomain:@"PRUISAnalyzer" code:-1 userInfo:v9];
    completionCopy[2](completionCopy, 0, v11);

    progress = 0;
    goto LABEL_5;
  }

  progress = 0;
LABEL_6:
  objc_sync_exit(selfCopy);

  return progress;
}

- (id)executeAnalysisRequest:(id)request error:(id *)error
{
  requestCopy = request;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_operationQueue)
  {
    if (error)
    {
      v22 = NSLocalizedFailureReasonErrorKey;
      v23 = @"invalidated";
      v12 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      *error = [NSError errorWithDomain:@"SBImageAnalyzer" code:-1 userInfo:v12];
    }

    objc_sync_exit(selfCopy);

    v8 = 0;
    goto LABEL_12;
  }

  v8 = [[SBImageAnalyzerOperation alloc] initWithRequest:requestCopy completion:0];
  objc_sync_exit(selfCopy);

  operationQueue = selfCopy->_operationQueue;
  v21 = v8;
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  [(NSOperationQueue *)operationQueue addOperations:v10 waitUntilFinished:1];

  response = [(SBImageAnalyzerOperation *)v8 response];

  if (response)
  {
    error = [(SBImageAnalyzerOperation *)v8 response];
    goto LABEL_13;
  }

  if (error)
  {
    error = [(SBImageAnalyzerOperation *)v8 error];
    v14 = error;
    if (error)
    {
      v15 = error;
      *error = v14;
    }

    else
    {
      v19 = NSLocalizedFailureReasonErrorKey;
      v20 = @"unknown error";
      v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v17 = [NSError errorWithDomain:@"PRUISAnalyzer" code:-2 userInfo:v16];
      *error = v17;
    }

LABEL_12:
    error = 0;
  }

LABEL_13:

  return error;
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  [(SBImageAnalyzer *)obj _self_invalidate];
  objc_sync_exit(obj);
}

- (void)_self_invalidate
{
  v3 = self->_operationQueue;
  operationQueue = self->_operationQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001BA4;
  v7[3] = &unk_1000083B0;
  v8 = v3;
  v5 = v3;
  [(NSOperationQueue *)operationQueue addBarrierBlock:v7];
  v6 = self->_operationQueue;
  self->_operationQueue = 0;
}

@end