@interface DRDragContinuationSession
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DRDragContinuationSession)initWithDragSession:(id)session;
- (DRDragSession)dragSession;
@end

@implementation DRDragContinuationSession

- (DRDragContinuationSession)initWithDragSession:(id)session
{
  sessionCopy = session;
  v10.receiver = self;
  v10.super_class = DRDragContinuationSession;
  v5 = [(DRDragContinuationSession *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dragSession, sessionCopy);
    v7 = +[NSXPCListener anonymousListener];
    listener = v6->_listener;
    v6->_listener = v7;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    [(NSXPCListener *)v6->_listener resume];
  }

  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  continuationConnection = [(DRDragContinuationSession *)self continuationConnection];

  if (!continuationConnection)
  {
    v7 = [[DRDragContinuation alloc] initWithContinuationSession:self];
    [connectionCopy setExportedObject:v7];

    v8 = _DUINewDragContinuationInterface();
    [connectionCopy setExportedInterface:v8];

    [connectionCopy resume];
    [(DRDragContinuationSession *)self setContinuationConnection:connectionCopy];
  }

  return continuationConnection == 0;
}

- (DRDragSession)dragSession
{
  WeakRetained = objc_loadWeakRetained(&self->_dragSession);

  return WeakRetained;
}

@end