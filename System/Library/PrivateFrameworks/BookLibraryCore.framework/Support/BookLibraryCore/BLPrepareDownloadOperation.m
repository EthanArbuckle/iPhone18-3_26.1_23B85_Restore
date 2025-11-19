@interface BLPrepareDownloadOperation
+ (void)enumerateOperationsWithDownloads:(id)a3 downloadPolicyManager:(id)a4 usingBlock:(id)a5;
- (NSString)downloadIdentifier;
- (id)_initWithDownload:(id)a3 policy:(id)a4;
- (id)outputBlock;
- (void)run;
- (void)setOutputBlock:(id)a3;
@end

@implementation BLPrepareDownloadOperation

- (id)_initWithDownload:(id)a3 policy:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = BLPrepareDownloadOperation;
  v8 = [(BLOperation *)&v12 init];
  if (v8)
  {
    v9 = [[_BLPrepareDownloadOperation alloc] _initWithOperation:v8 download:v6 policy:v7];
    operation = v8->_operation;
    v8->_operation = v9;
  }

  return v8;
}

+ (void)enumerateOperationsWithDownloads:(id)a3 downloadPolicyManager:(id)a4 usingBlock:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009974C;
  v9[3] = &unk_10011E200;
  v10 = a4;
  v11 = a5;
  v7 = v11;
  v8 = v10;
  [a3 enumerateObjectsUsingBlock:v9];
}

- (NSString)downloadIdentifier
{
  v2 = [(BLPrepareDownloadOperation *)self operation];
  v3 = [v2 downloadIdentifier];

  return v3;
}

- (id)outputBlock
{
  [(BLOperation *)self lock];
  v3 = [(BLPrepareDownloadOperation *)self operation];
  v4 = [v3 outputBlock];
  v5 = [v4 copy];

  [(BLOperation *)self unlock];
  v6 = objc_retainBlock(v5);

  return v6;
}

- (void)setOutputBlock:(id)a3
{
  v4 = a3;
  [(BLOperation *)self lock];
  v5 = [(BLPrepareDownloadOperation *)self operation];
  [v5 setOutputBlock:v4];

  [(BLOperation *)self unlock];
}

- (void)run
{
  v2 = [(BLPrepareDownloadOperation *)self operation];
  [v2 run];
}

@end