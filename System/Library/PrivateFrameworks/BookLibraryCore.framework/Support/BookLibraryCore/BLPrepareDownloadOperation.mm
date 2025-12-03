@interface BLPrepareDownloadOperation
+ (void)enumerateOperationsWithDownloads:(id)downloads downloadPolicyManager:(id)manager usingBlock:(id)block;
- (NSString)downloadIdentifier;
- (id)_initWithDownload:(id)download policy:(id)policy;
- (id)outputBlock;
- (void)run;
- (void)setOutputBlock:(id)block;
@end

@implementation BLPrepareDownloadOperation

- (id)_initWithDownload:(id)download policy:(id)policy
{
  downloadCopy = download;
  policyCopy = policy;
  v12.receiver = self;
  v12.super_class = BLPrepareDownloadOperation;
  v8 = [(BLOperation *)&v12 init];
  if (v8)
  {
    v9 = [[_BLPrepareDownloadOperation alloc] _initWithOperation:v8 download:downloadCopy policy:policyCopy];
    operation = v8->_operation;
    v8->_operation = v9;
  }

  return v8;
}

+ (void)enumerateOperationsWithDownloads:(id)downloads downloadPolicyManager:(id)manager usingBlock:(id)block
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009974C;
  v9[3] = &unk_10011E200;
  managerCopy = manager;
  blockCopy = block;
  v7 = blockCopy;
  v8 = managerCopy;
  [downloads enumerateObjectsUsingBlock:v9];
}

- (NSString)downloadIdentifier
{
  operation = [(BLPrepareDownloadOperation *)self operation];
  downloadIdentifier = [operation downloadIdentifier];

  return downloadIdentifier;
}

- (id)outputBlock
{
  [(BLOperation *)self lock];
  operation = [(BLPrepareDownloadOperation *)self operation];
  outputBlock = [operation outputBlock];
  v5 = [outputBlock copy];

  [(BLOperation *)self unlock];
  v6 = objc_retainBlock(v5);

  return v6;
}

- (void)setOutputBlock:(id)block
{
  blockCopy = block;
  [(BLOperation *)self lock];
  operation = [(BLPrepareDownloadOperation *)self operation];
  [operation setOutputBlock:blockCopy];

  [(BLOperation *)self unlock];
}

- (void)run
{
  operation = [(BLPrepareDownloadOperation *)self operation];
  [operation run];
}

@end