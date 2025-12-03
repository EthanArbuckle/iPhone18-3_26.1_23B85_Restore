@interface MADComputeServiceProxy
- (MADComputeServiceProxy)initWithCoordinator:(id)coordinator;
- (void)handleResults:(id)results assetRepresentation:(id)representation requestID:(id)d error:(id)error acknowledgement:(id)acknowledgement;
- (void)reportProgress:(double)progress requestID:(id)d;
@end

@implementation MADComputeServiceProxy

- (MADComputeServiceProxy)initWithCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  v8.receiver = self;
  v8.super_class = MADComputeServiceProxy;
  v5 = [(MADComputeServiceProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_coordinator, coordinatorCopy);
  }

  return v6;
}

- (void)reportProgress:(double)progress requestID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reportProgress:dCopy requestID:progress];
  }
}

- (void)handleResults:(id)results assetRepresentation:(id)representation requestID:(id)d error:(id)error acknowledgement:(id)acknowledgement
{
  resultsCopy = results;
  representationCopy = representation;
  dCopy = d;
  errorCopy = error;
  acknowledgementCopy = acknowledgement;
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  v18 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleResults:resultsCopy assetRepresentation:representationCopy requestID:dCopy error:errorCopy acknowledgement:acknowledgementCopy];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADComputeServiceProxy handleResults:assetRepresentation:requestID:error:acknowledgement:];
    }

    acknowledgementCopy[2](acknowledgementCopy, 0);
  }
}

@end