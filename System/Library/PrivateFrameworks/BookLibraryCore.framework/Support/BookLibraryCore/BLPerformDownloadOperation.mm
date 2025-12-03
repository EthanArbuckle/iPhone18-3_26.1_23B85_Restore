@interface BLPerformDownloadOperation
- (BLPerformDownloadOperation)initWithBLDownloadPipeline:(id)pipeline response:(id)response completion:(id)completion;
- (void)run;
@end

@implementation BLPerformDownloadOperation

- (BLPerformDownloadOperation)initWithBLDownloadPipeline:(id)pipeline response:(id)response completion:(id)completion
{
  pipelineCopy = pipeline;
  responseCopy = response;
  completionCopy = completion;
  v15.receiver = self;
  v15.super_class = BLPerformDownloadOperation;
  v11 = [(BLOperation *)&v15 init];
  if (v11)
  {
    v12 = [[_BLPerformDownloadOperation alloc] initWithBLDownloadPipeline:pipelineCopy response:responseCopy completion:completionCopy];
    operation = v11->_operation;
    v11->_operation = v12;
  }

  return v11;
}

- (void)run
{
  operation = [(BLPerformDownloadOperation *)self operation];
  [operation run];
}

@end