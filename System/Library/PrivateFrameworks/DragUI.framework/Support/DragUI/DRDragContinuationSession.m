@interface DRDragContinuationSession
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (DRDragContinuationSession)initWithDragSession:(id)a3;
- (DRDragSession)dragSession;
@end

@implementation DRDragContinuationSession

- (DRDragContinuationSession)initWithDragSession:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = DRDragContinuationSession;
  v5 = [(DRDragContinuationSession *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dragSession, v4);
    v7 = +[NSXPCListener anonymousListener];
    listener = v6->_listener;
    v6->_listener = v7;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    [(NSXPCListener *)v6->_listener resume];
  }

  return v6;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [(DRDragContinuationSession *)self continuationConnection];

  if (!v6)
  {
    v7 = [[DRDragContinuation alloc] initWithContinuationSession:self];
    [v5 setExportedObject:v7];

    v8 = _DUINewDragContinuationInterface();
    [v5 setExportedInterface:v8];

    [v5 resume];
    [(DRDragContinuationSession *)self setContinuationConnection:v5];
  }

  return v6 == 0;
}

- (DRDragSession)dragSession
{
  WeakRetained = objc_loadWeakRetained(&self->_dragSession);

  return WeakRetained;
}

@end