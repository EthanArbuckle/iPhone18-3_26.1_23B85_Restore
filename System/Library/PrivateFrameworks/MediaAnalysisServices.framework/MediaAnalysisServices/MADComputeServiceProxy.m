@interface MADComputeServiceProxy
- (MADComputeServiceProxy)initWithCoordinator:(id)a3;
- (void)handleResults:(id)a3 assetRepresentation:(id)a4 requestID:(id)a5 error:(id)a6 acknowledgement:(id)a7;
- (void)reportProgress:(double)a3 requestID:(id)a4;
@end

@implementation MADComputeServiceProxy

- (MADComputeServiceProxy)initWithCoordinator:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = MADComputeServiceProxy;
  v5 = [(MADComputeServiceProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_coordinator, v4);
  }

  return v6;
}

- (void)reportProgress:(double)a3 requestID:(id)a4
{
  v8 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reportProgress:v8 requestID:a3];
  }
}

- (void)handleResults:(id)a3 assetRepresentation:(id)a4 requestID:(id)a5 error:(id)a6 acknowledgement:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  WeakRetained = objc_loadWeakRetained(&self->_coordinator);
  v18 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained handleResults:v12 assetRepresentation:v13 requestID:v14 error:v15 acknowledgement:v16];
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      [MADComputeServiceProxy handleResults:assetRepresentation:requestID:error:acknowledgement:];
    }

    v16[2](v16, 0);
  }
}

@end