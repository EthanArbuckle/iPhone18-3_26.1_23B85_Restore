@interface SBImageAnalyzer
- (SBImageAnalyzer)init;
- (id)executeAnalysisRequest:(id)a3 completion:(id)a4;
- (id)executeAnalysisRequest:(id)a3 error:(id *)a4;
- (void)_self_invalidate;
- (void)cancelRequest:(id)a3;
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

- (void)cancelRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 requestIdentifier];
  if (v6)
  {
    v7 = v5->_operationQueue;
    operationQueue = v5->_operationQueue;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100001450;
    v10[3] = &unk_100008360;
    v9 = v7;
    v11 = v9;
    v12 = v6;
    [(NSOperationQueue *)operationQueue addBarrierBlock:v10];
  }

  objc_sync_exit(v5);
}

- (id)executeAnalysisRequest:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  objc_sync_enter(v8);
  if (v8->_operationQueue)
  {
    v9 = [[SBImageAnalyzerOperation alloc] initWithRequest:v6 completion:v7];
    [(NSOperationQueue *)v8->_operationQueue addOperation:v9];
    objc_initWeak(&location, v8);
    v10 = [(SBImageAnalyzerOperation *)v9 progress];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000017D8;
    v13[3] = &unk_100008388;
    objc_copyWeak(&v15, &location);
    v14 = v6;
    [v10 setCancellationHandler:v13];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
LABEL_5:

    goto LABEL_6;
  }

  if (v7)
  {
    v17 = NSLocalizedFailureReasonErrorKey;
    v18 = @"invalidated";
    v9 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v11 = [NSError errorWithDomain:@"PRUISAnalyzer" code:-1 userInfo:v9];
    v7[2](v7, 0, v11);

    v10 = 0;
    goto LABEL_5;
  }

  v10 = 0;
LABEL_6:
  objc_sync_exit(v8);

  return v10;
}

- (id)executeAnalysisRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = self;
  objc_sync_enter(v7);
  if (!v7->_operationQueue)
  {
    if (a4)
    {
      v22 = NSLocalizedFailureReasonErrorKey;
      v23 = @"invalidated";
      v12 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      *a4 = [NSError errorWithDomain:@"SBImageAnalyzer" code:-1 userInfo:v12];
    }

    objc_sync_exit(v7);

    v8 = 0;
    goto LABEL_12;
  }

  v8 = [[SBImageAnalyzerOperation alloc] initWithRequest:v6 completion:0];
  objc_sync_exit(v7);

  operationQueue = v7->_operationQueue;
  v21 = v8;
  v10 = [NSArray arrayWithObjects:&v21 count:1];
  [(NSOperationQueue *)operationQueue addOperations:v10 waitUntilFinished:1];

  v11 = [(SBImageAnalyzerOperation *)v8 response];

  if (v11)
  {
    a4 = [(SBImageAnalyzerOperation *)v8 response];
    goto LABEL_13;
  }

  if (a4)
  {
    v13 = [(SBImageAnalyzerOperation *)v8 error];
    v14 = v13;
    if (v13)
    {
      v15 = v13;
      *a4 = v14;
    }

    else
    {
      v19 = NSLocalizedFailureReasonErrorKey;
      v20 = @"unknown error";
      v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      v17 = [NSError errorWithDomain:@"PRUISAnalyzer" code:-2 userInfo:v16];
      *a4 = v17;
    }

LABEL_12:
    a4 = 0;
  }

LABEL_13:

  return a4;
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