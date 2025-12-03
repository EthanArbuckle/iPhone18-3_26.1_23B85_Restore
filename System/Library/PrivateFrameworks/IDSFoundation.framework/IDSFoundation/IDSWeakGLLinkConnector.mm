@interface IDSWeakGLLinkConnector
- (IDSGLLinkConnector)glLinkConnector;
- (IDSWeakGLLinkConnector)initWithGLLinkConnector:(id)connector;
- (void)connectRelayLinkFromCandidate:(id)candidate toCandidate:(id)toCandidate withUniqueID:(id)d relaySessionID:(id)iD glLinkProtocol:(int64_t)protocol replacesLinkWithUniqueID:(id)uniqueID;
- (void)disconnectRelayLinkWithUniqueID:(id)d glLinkProtocol:(int64_t)protocol;
- (void)linkEngineDidRemoveLinkWithUniqueID:(id)d;
- (void)reconnectRelayLinkWithUniqueID:(id)d glLinkProtocol:(int64_t)protocol;
- (void)startNewAllocationFromInterface:(int)interface toInterface:(int)toInterface;
@end

@implementation IDSWeakGLLinkConnector

- (IDSWeakGLLinkConnector)initWithGLLinkConnector:(id)connector
{
  connectorCopy = connector;
  v8.receiver = self;
  v8.super_class = IDSWeakGLLinkConnector;
  v5 = [(IDSWeakGLLinkConnector *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_glLinkConnector, connectorCopy);
  }

  return v6;
}

- (void)connectRelayLinkFromCandidate:(id)candidate toCandidate:(id)toCandidate withUniqueID:(id)d relaySessionID:(id)iD glLinkProtocol:(int64_t)protocol replacesLinkWithUniqueID:(id)uniqueID
{
  candidateCopy = candidate;
  toCandidateCopy = toCandidate;
  dCopy = d;
  iDCopy = iD;
  uniqueIDCopy = uniqueID;
  WeakRetained = objc_loadWeakRetained(&self->_glLinkConnector);
  v19 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained connectRelayLinkFromCandidate:candidateCopy toCandidate:toCandidateCopy withUniqueID:dCopy relaySessionID:iDCopy glLinkProtocol:protocol replacesLinkWithUniqueID:uniqueIDCopy];
  }
}

- (void)disconnectRelayLinkWithUniqueID:(id)d glLinkProtocol:(int64_t)protocol
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_glLinkConnector);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained disconnectRelayLinkWithUniqueID:dCopy glLinkProtocol:protocol];
  }
}

- (void)linkEngineDidRemoveLinkWithUniqueID:(id)d
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_glLinkConnector);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained linkEngineDidRemoveLinkWithUniqueID:dCopy];
  }
}

- (void)reconnectRelayLinkWithUniqueID:(id)d glLinkProtocol:(int64_t)protocol
{
  dCopy = d;
  WeakRetained = objc_loadWeakRetained(&self->_glLinkConnector);
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained reconnectRelayLinkWithUniqueID:dCopy glLinkProtocol:protocol];
  }
}

- (void)startNewAllocationFromInterface:(int)interface toInterface:(int)toInterface
{
  v4 = *&toInterface;
  v5 = *&interface;
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