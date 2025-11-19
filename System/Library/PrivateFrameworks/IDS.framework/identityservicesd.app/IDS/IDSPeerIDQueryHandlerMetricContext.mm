@interface IDSPeerIDQueryHandlerMetricContext
- (IDSPeerIDQueryHandlerMetricContext)initWithDidFlightToServer:(BOOL)a3 responseCode:(id)a4;
@end

@implementation IDSPeerIDQueryHandlerMetricContext

- (IDSPeerIDQueryHandlerMetricContext)initWithDidFlightToServer:(BOOL)a3 responseCode:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = IDSPeerIDQueryHandlerMetricContext;
  v8 = [(IDSPeerIDQueryHandlerMetricContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_didFlightToServer = a3;
    objc_storeStrong(&v8->_responseCode, a4);
  }

  return v9;
}

@end