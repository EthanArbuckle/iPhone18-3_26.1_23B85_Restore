@interface CDMBaseRequestHandler
- (CDMBaseRequestHandler)init;
- (CDMBaseRequestHandler)initWithId:(id)a3 serviceGraph:(id)a4;
- (unint64_t)getHandlerState;
@end

@implementation CDMBaseRequestHandler

- (unint64_t)getHandlerState
{
  if (self->_handlerState == 1)
  {
    v3 = [(CDMServiceGraph *)self->_serviceGraph getEndNode];
    if ([v3 isFinished])
    {
      v4 = [(CDMServiceGraph *)self->_serviceGraph getEndNode];
      v5 = [v4 isCancelled];

      if ((v5 & 1) == 0)
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

- (CDMBaseRequestHandler)initWithId:(id)a3 serviceGraph:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = CDMBaseRequestHandler;
  v9 = [(CDMBaseRequestHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_handlerState = 0;
    objc_storeStrong(&v9->_serviceGraph, a4);
    objc_storeStrong(&v10->_handlerId, a3);
  }

  return v10;
}

- (CDMBaseRequestHandler)init
{
  [InvalidMethodCalledException raise:@"InvalidMethodCalledException" format:@"init shouldn't be called"];

  return 0;
}

@end