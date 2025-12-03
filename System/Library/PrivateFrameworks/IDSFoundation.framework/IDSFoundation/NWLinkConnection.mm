@interface NWLinkConnection
- (NWLinkConnection)initWithBaseNWLinkConnection:(id)connection type:(unint64_t)type;
- (NWLinkConnection)initWithType:(unint64_t)type interfaceIndex:(unsigned int)index localEndpoint:(id)endpoint remoteEndpoint:(id)remoteEndpoint;
- (NWLinkConnection)initWithType:(unint64_t)type interfaceIndex:(unsigned int)index localEndpoint:(id)endpoint remoteEndpoint:(id)remoteEndpoint isH2Connection:(BOOL)connection;
- (NWLinkConnection)parent;
- (void)setConnection:(id)connection;
@end

@implementation NWLinkConnection

- (NWLinkConnection)initWithType:(unint64_t)type interfaceIndex:(unsigned int)index localEndpoint:(id)endpoint remoteEndpoint:(id)remoteEndpoint
{
  endpointCopy = endpoint;
  remoteEndpointCopy = remoteEndpoint;
  v18.receiver = self;
  v18.super_class = NWLinkConnection;
  v13 = [(NWLinkConnection *)&v18 init];
  v14 = v13;
  if (v13)
  {
    if (!v13->_children)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      children = v14->_children;
      v14->_children = v15;
    }

    v14->_type = type;
    v14->_interfaceIndex = index;
    objc_storeStrong(&v14->_localEndpoint, endpoint);
    objc_storeStrong(&v14->_remoteEndpoint, remoteEndpoint);
    v14->_state = 0;
  }

  return v14;
}

- (NWLinkConnection)initWithType:(unint64_t)type interfaceIndex:(unsigned int)index localEndpoint:(id)endpoint remoteEndpoint:(id)remoteEndpoint isH2Connection:(BOOL)connection
{
  connectionCopy = connection;
  endpointCopy = endpoint;
  remoteEndpointCopy = remoteEndpoint;
  v21.receiver = self;
  v21.super_class = NWLinkConnection;
  v15 = [(NWLinkConnection *)&v21 init];
  v16 = v15;
  if (v15)
  {
    if (!v15->_children)
    {
      v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      children = v16->_children;
      v16->_children = v17;
    }

    v16->_type = type;
    v16->_interfaceIndex = index;
    v19 = 80;
    if (connectionCopy)
    {
      v19 = 88;
    }

    objc_storeStrong((&v16->super.isa + v19), endpoint);
    objc_storeStrong(&v16->_remoteEndpoint, remoteEndpoint);
    v16->_isH2Connection = connectionCopy;
    v16->_state = 0;
  }

  return v16;
}

- (NWLinkConnection)initWithBaseNWLinkConnection:(id)connection type:(unint64_t)type
{
  connectionCopy = connection;
  v18.receiver = self;
  v18.super_class = NWLinkConnection;
  v7 = [(NWLinkConnection *)&v18 init];
  v8 = v7;
  if (v7)
  {
    if (!v7->_children)
    {
      v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      children = v8->_children;
      v8->_children = v9;
    }

    v8->_type = type;
    v8->_interfaceIndex = [connectionCopy interfaceIndex];
    localEndpoint = [connectionCopy localEndpoint];
    localEndpoint = v8->_localEndpoint;
    v8->_localEndpoint = localEndpoint;

    remoteEndpoint = [connectionCopy remoteEndpoint];
    remoteEndpoint = v8->_remoteEndpoint;
    v8->_remoteEndpoint = remoteEndpoint;

    v8->_supportsNAT64 = [connectionCopy supportsNAT64];
    sessionID = [connectionCopy sessionID];
    sessionID = v8->_sessionID;
    v8->_sessionID = sessionID;

    v8->_isH2Connection = [connectionCopy isH2Connection];
    v8->_hasRequiredInterface = [connectionCopy hasRequiredInterface];
    v8->_state = 0;
  }

  return v8;
}

- (void)setConnection:(id)connection
{
  objc_storeStrong(&self->_connection, connection);
  connectionCopy = connection;
  id = nw_connection_get_id();

  self->_connectionID = id;
}

- (NWLinkConnection)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end