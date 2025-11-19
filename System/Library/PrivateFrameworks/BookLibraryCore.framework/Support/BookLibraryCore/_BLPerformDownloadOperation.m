@interface _BLPerformDownloadOperation
- (BLDownloadPipeline)pipeline;
- (_BLPerformDownloadOperation)initWithBLDownloadPipeline:(id)a3 response:(id)a4 completion:(id)a5;
- (void)run;
@end

@implementation _BLPerformDownloadOperation

- (_BLPerformDownloadOperation)initWithBLDownloadPipeline:(id)a3 response:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = _BLPerformDownloadOperation;
  v11 = [(_BLPerformDownloadOperation *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_pipeline, v8);
    objc_storeStrong(&v12->_response, a4);
    v13 = [v10 copy];
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