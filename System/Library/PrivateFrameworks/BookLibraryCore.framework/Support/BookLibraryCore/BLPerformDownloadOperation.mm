@interface BLPerformDownloadOperation
- (BLPerformDownloadOperation)initWithBLDownloadPipeline:(id)a3 response:(id)a4 completion:(id)a5;
- (void)run;
@end

@implementation BLPerformDownloadOperation

- (BLPerformDownloadOperation)initWithBLDownloadPipeline:(id)a3 response:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = BLPerformDownloadOperation;
  v11 = [(BLOperation *)&v15 init];
  if (v11)
  {
    v12 = [[_BLPerformDownloadOperation alloc] initWithBLDownloadPipeline:v8 response:v9 completion:v10];
    operation = v11->_operation;
    v11->_operation = v12;
  }

  return v11;
}

- (void)run
{
  v2 = [(BLPerformDownloadOperation *)self operation];
  [v2 run];
}

@end