@interface DRDragContinuation
- (DRDragContinuation)initWithContinuationSession:(id)session;
- (DRDragContinuationSession)continuationSession;
- (void)dragContinuationDidFinishRequestingData;
- (void)requestItemCollectionWithReply:(id)reply;
@end

@implementation DRDragContinuation

- (DRDragContinuation)initWithContinuationSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = DRDragContinuation;
  v5 = [(DRDragContinuation *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_continuationSession, sessionCopy);
  }

  return v6;
}

- (void)requestItemCollectionWithReply:(id)reply
{
  replyCopy = reply;
  dataTransferSession = [(DRDragContinuation *)self dataTransferSession];

  if (!dataTransferSession)
  {
    continuationSession = [(DRDragContinuation *)self continuationSession];
    dragSession = [continuationSession dragSession];
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
    v11 = [dragSession newDataTransferSessionWithDestinationAuditToken:&v16 filter:v10];
    [(DRDragContinuation *)self setDataTransferSession:v11];
  }

  dataTransferSession2 = [(DRDragContinuation *)self dataTransferSession];
  destinationItemCollection = [dataTransferSession2 destinationItemCollection];
  dataTransferSession3 = [(DRDragContinuation *)self dataTransferSession];
  destinationDataProviderEndpoint = [dataTransferSession3 destinationDataProviderEndpoint];
  replyCopy[2](replyCopy, destinationItemCollection, destinationDataProviderEndpoint);
}

- (void)dragContinuationDidFinishRequestingData
{
  continuationSession = [(DRDragContinuation *)self continuationSession];
  dragSession = [continuationSession dragSession];
  [dragSession didFinishRequestingDataForDragContinuation:self];
}

- (DRDragContinuationSession)continuationSession
{
  WeakRetained = objc_loadWeakRetained(&self->_continuationSession);

  return WeakRetained;
}

@end