@interface NWLinkConnection
- (NWLinkConnection)initWithBaseNWLinkConnection:(id)a3 type:(unint64_t)a4;
- (NWLinkConnection)initWithType:(unint64_t)a3 interfaceIndex:(unsigned int)a4 localEndpoint:(id)a5 remoteEndpoint:(id)a6;
- (NWLinkConnection)initWithType:(unint64_t)a3 interfaceIndex:(unsigned int)a4 localEndpoint:(id)a5 remoteEndpoint:(id)a6 isH2Connection:(BOOL)a7;
- (NWLinkConnection)parent;
- (void)setConnection:(id)a3;
@end

@implementation NWLinkConnection

- (NWLinkConnection)initWithType:(unint64_t)a3 interfaceIndex:(unsigned int)a4 localEndpoint:(id)a5 remoteEndpoint:(id)a6
{
  v11 = a5;
  v12 = a6;
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

    v14->_type = a3;
    v14->_interfaceIndex = a4;
    objc_storeStrong(&v14->_localEndpoint, a5);
    objc_storeStrong(&v14->_remoteEndpoint, a6);
    v14->_state = 0;
  }

  return v14;
}

- (NWLinkConnection)initWithType:(unint64_t)a3 interfaceIndex:(unsigned int)a4 localEndpoint:(id)a5 remoteEndpoint:(id)a6 isH2Connection:(BOOL)a7
{
  v7 = a7;
  v13 = a5;
  v14 = a6;
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

    v16->_type = a3;
    v16->_interfaceIndex = a4;
    v19 = 80;
    if (v7)
    {
      v19 = 88;
    }

    objc_storeStrong((&v16->super.isa + v19), a5);
    objc_storeStrong(&v16->_remoteEndpoint, a6);
    v16->_isH2Connection = v7;
    v16->_state = 0;
  }

  return v16;
}

- (NWLinkConnection)initWithBaseNWLinkConnection:(id)a3 type:(unint64_t)a4
{
  v6 = a3;
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

    v8->_type = a4;
    v8->_interfaceIndex = [v6 interfaceIndex];
    v11 = [v6 localEndpoint];
    localEndpoint = v8->_localEndpoint;
    v8->_localEndpoint = v11;

    v13 = [v6 remoteEndpoint];
    remoteEndpoint = v8->_remoteEndpoint;
    v8->_remoteEndpoint = v13;

    v8->_supportsNAT64 = [v6 supportsNAT64];
    v15 = [v6 sessionID];
    sessionID = v8->_sessionID;
    v8->_sessionID = v15;

    v8->_isH2Connection = [v6 isH2Connection];
    v8->_hasRequiredInterface = [v6 hasRequiredInterface];
    v8->_state = 0;
  }

  return v8;
}

- (void)setConnection:(id)a3
{
  objc_storeStrong(&self->_connection, a3);
  v5 = a3;
  id = nw_connection_get_id();

  self->_connectionID = id;
}

- (NWLinkConnection)parent
{
  WeakRetained = objc_loadWeakRetained(&self->_parent);

  return WeakRetained;
}

@end