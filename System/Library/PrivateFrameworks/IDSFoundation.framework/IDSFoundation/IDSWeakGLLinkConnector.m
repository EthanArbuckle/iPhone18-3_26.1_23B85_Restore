@interface IDSWeakGLLinkConnector
- (IDSGLLinkConnector)glLinkConnector;
- (IDSWeakGLLinkConnector)initWithGLLinkConnector:(id)a3;
- (void)connectRelayLinkFromCandidate:(id)a3 toCandidate:(id)a4 withUniqueID:(id)a5 relaySessionID:(id)a6 glLinkProtocol:(int64_t)a7 replacesLinkWithUniqueID:(id)a8;
- (void)disconnectRelayLinkWithUniqueID:(id)a3 glLinkProtocol:(int64_t)a4;
- (void)linkEngineDidRemoveLinkWithUniqueID:(id)a3;
- (void)reconnectRelayLinkWithUniqueID:(id)a3 glLinkProtocol:(int64_t)a4;
- (void)startNewAllocationFromInterface:(int)a3 toInterface:(int)a4;
@end

@implementation IDSWeakGLLinkConnector

- (IDSWeakGLLinkConnector)initWithGLLinkConnector:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = IDSWeakGLLinkConnector;
  v5 = [(IDSWeakGLLinkConnector *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_glLinkConnector, v4);
  }

  return v6;
}

- (void)connectRelayLinkFromCandidate:(id)a3 toCandidate:(id)a4 withUniqueID:(id)a5 relaySessionID:(id)a6 glLinkProtocol:(int64_t)a7 replacesLinkWithUniqueID:(id)a8
{
  v20 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  WeakRetained = objc_loadWeakRetained(&self->_glLinkConnector);
  v19 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained connectRelayLinkFromCandidate:v20 toCandidate:v14 withUniqueID:v15 relaySessionID:v16 glLinkProtocol:a7 replacesLinkWithUniqueID:v17];
  }
}

- (void)disconnectRelayLinkWithUniqueID:(id)a3 glLinkProtocol:(int64_t)a4
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_glLinkConnector);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained disconnectRelayLinkWithUniqueID:v8 glLinkProtocol:a4];
  }
}

- (void)linkEngineDidRemoveLinkWithUniqueID:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_glLinkConnector);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained linkEngineDidRemoveLinkWithUniqueID:v6];
  }
}

- (void)reconnectRelayLinkWithUniqueID:(id)a3 glLinkProtocol:(int64_t)a4
{
  v8 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_glLinkConnector);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reconnectRelayLinkWithUniqueID:v8 glLinkProtocol:a4];
  }
}

- (void)startNewAllocationFromInterface:(int)a3 toInterface:(int)a4
{
  v4 = *&a4;
  v5 = *&a3;
  WeakRetained = objc_loadWeakRetained(&self->_glLinkConnector);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    [WeakRetained startNewAllocationFromInterface:v5 toInterface:v4];
    WeakRetained = v7;
  }
}

- (IDSGLLinkConnector)glLinkConnector
{
  WeakRetained = objc_loadWeakRetained(&self->_glLinkConnector);

  return WeakRetained;
}

@end