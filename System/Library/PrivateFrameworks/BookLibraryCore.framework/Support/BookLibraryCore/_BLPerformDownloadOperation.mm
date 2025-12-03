@interface _BLPerformDownloadOperation
- (BLDownloadPipeline)pipeline;
- (_BLPerformDownloadOperation)initWithBLDownloadPipeline:(id)pipeline response:(id)response completion:(id)completion;
- (void)run;
@end

@implementation _BLPerformDownloadOperation

- (_BLPerformDownloadOperation)initWithBLDownloadPipeline:(id)pipeline response:(id)response completion:(id)completion
{
  pipelineCopy = pipeline;
  responseCopy = response;
  completionCopy = completion;
  v16.receiver = self;
  v16.super_class = _BLPerformDownloadOperation;
  v11 = [(_BLPerformDownloadOperation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_pipeline, pipelineCopy);
    objc_storeStrong(&v12->_response, response);
    v13 = [completionCopy copy];
    downloadStartCompletionBlock = v12->_downloadStartCompletionBlock;
    v12->_downloadStartCompletionBlock = v13;
  }

  return v12;
}

- (void)run
{
  WeakRetained = objc_loadWeakRetained(&self->_pipeline);
  [WeakRetained doq_performDownloadOperation:self->_response completion:self->_downloadStartCompletionBlock];
}

- (BLDownloadPipeline)pipeline
{
  WeakRetained = objc_loadWeakRetained(&self->_pipeline);

  return WeakRetained;
}

@end