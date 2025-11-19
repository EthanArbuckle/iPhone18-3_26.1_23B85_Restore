@interface IMServiceReachabilityResponseBlockHandler
- (IMServiceReachabilityResponseBlockHandler)initWithBlock:(id)a3;
- (void)reachabilityRequest:(id)a3 updatedWithResult:(id)a4;
@end

@implementation IMServiceReachabilityResponseBlockHandler

- (IMServiceReachabilityResponseBlockHandler)initWithBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = IMServiceReachabilityResponseBlockHandler;
  v5 = [(IMServiceReachabilityResponseBlockHandler *)&v9 init];
  if (v5)
  {
    v6 = _Block_copy(v4);
    block = v5->_block;
    v5->_block = v6;
  }

  return v5;
}

- (void)reachabilityRequest:(id)a3 updatedWithResult:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(IMServiceReachabilityResponseBlockHandler *)self block];
  v8[2](v8, v7, v6);
}

@end