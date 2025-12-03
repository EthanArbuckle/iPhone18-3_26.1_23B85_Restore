@interface CDMBaseRequestHandler
- (CDMBaseRequestHandler)init;
- (CDMBaseRequestHandler)initWithId:(id)id serviceGraph:(id)graph;
- (unint64_t)getHandlerState;
@end

@implementation CDMBaseRequestHandler

- (unint64_t)getHandlerState
{
  if (self->_handlerState == 1)
  {
    getEndNode = [(CDMServiceGraph *)self->_serviceGraph getEndNode];
    if ([getEndNode isFinished])
    {
      getEndNode2 = [(CDMServiceGraph *)self->_serviceGraph getEndNode];
      isCancelled = [getEndNode2 isCancelled];

      if ((isCancelled & 1) == 0)
      {
        self->_handlerState = 2;
      }
    }

    else
    {
    }
  }

  return self->_handlerState;
}

- (CDMBaseRequestHandler)initWithId:(id)id serviceGraph:(id)graph
{
  idCopy = id;
  graphCopy = graph;
  v12.receiver = self;
  v12.super_class = CDMBaseRequestHandler;
  v9 = [(CDMBaseRequestHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_handlerState = 0;
    objc_storeStrong(&v9->_serviceGraph, graph);
    objc_storeStrong(&v10->_handlerId, id);
  }

  return v10;
}

- (CDMBaseRequestHandler)init
{
  [InvalidMethodCalledException raise:@"InvalidMethodCalledException" format:@"init shouldn't be called"];

  return 0;
}

@end