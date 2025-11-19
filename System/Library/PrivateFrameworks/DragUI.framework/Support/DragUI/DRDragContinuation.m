@interface DRDragContinuation
- (DRDragContinuation)initWithContinuationSession:(id)a3;
- (DRDragContinuationSession)continuationSession;
- (void)dragContinuationDidFinishRequestingData;
- (void)requestItemCollectionWithReply:(id)a3;
@end

@implementation DRDragContinuation

- (DRDragContinuation)initWithContinuationSession:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DRDragContinuation;
  v5 = [(DRDragContinuation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_continuationSession, v4);
  }

  return v6;
}

- (void)requestItemCollectionWithReply:(id)a3
{
  v4 = a3;
  v5 = [(DRDragContinuation *)self dataTransferSession];

  if (!v5)
  {
    v6 = [(DRDragContinuation *)self continuationSession];
    v7 = [v6 dragSession];
    v8 = +[NSXPCConnection currentConnection];
    v9 = v8;
    if (v8)
    {
      [v8 auditToken];
    }

    else
    {
      v16 = 0u;
      v17 = 0u;
    }

    v10 = [(DRDragContinuation *)self filterBlockForLaunchServicesUTIs:v16];
    v11 = [v7 newDataTransferSessionWithDestinationAuditToken:&v16 filter:v10];
    [(DRDragContinuation *)self setDataTransferSession:v11];
  }

  v12 = [(DRDragContinuation *)self dataTransferSession];
  v13 = [v12 destinationItemCollection];
  v14 = [(DRDragContinuation *)self dataTransferSession];
  v15 = [v14 destinationDataProviderEndpoint];
  v4[2](v4, v13, v15);
}

- (void)dragContinuationDidFinishRequestingData
{
  v4 = [(DRDragContinuation *)self continuationSession];
  v3 = [v4 dragSession];
  [v3 didFinishRequestingDataForDragContinuation:self];
}

- (DRDragContinuationSession)continuationSession
{
  WeakRetained = objc_loadWeakRetained(&self->_continuationSession);

  return WeakRetained;
}

@end