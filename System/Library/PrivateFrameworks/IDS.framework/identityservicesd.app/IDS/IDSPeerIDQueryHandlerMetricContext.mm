@interface IDSPeerIDQueryHandlerMetricContext
- (IDSPeerIDQueryHandlerMetricContext)initWithDidFlightToServer:(BOOL)server responseCode:(id)code;
@end

@implementation IDSPeerIDQueryHandlerMetricContext

- (IDSPeerIDQueryHandlerMetricContext)initWithDidFlightToServer:(BOOL)server responseCode:(id)code
{
  codeCopy = code;
  v11.receiver = self;
  v11.super_class = IDSPeerIDQueryHandlerMetricContext;
  v8 = [(IDSPeerIDQueryHandlerMetricContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_didFlightToServer = server;
    objc_storeStrong(&v8->_responseCode, code);
  }

  return v9;
}

@end