@interface IDSIPCBroadcaster
- (IDSIPCBroadcaster)init;
- (id)broadcastProxyForTargets:(id)targets messageContext:(id)context protocol:(id)protocol;
@end

@implementation IDSIPCBroadcaster

- (IDSIPCBroadcaster)init
{
  v8.receiver = self;
  v8.super_class = IDSIPCBroadcaster;
  v2 = [(IDSIPCBroadcaster *)&v8 init];
  if (v2)
  {
    v3 = +[IMRemoteObjectBroadcaster defaultBroadcaster];
    xpcBroadcaster = v2->_xpcBroadcaster;
    v2->_xpcBroadcaster = v3;

    v5 = objc_alloc_init(IDSNWBroadcaster);
    nwBroadcaster = v2->_nwBroadcaster;
    v2->_nwBroadcaster = v5;
  }

  return v2;
}

- (id)broadcastProxyForTargets:(id)targets messageContext:(id)context protocol:(id)protocol
{
  targetsCopy = targets;
  contextCopy = context;
  protocolCopy = protocol;
  v10 = objc_alloc_init(NSMutableArray);
  v11 = objc_alloc_init(NSMutableArray);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = targetsCopy;
  v13 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v32;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v32 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v31 + 1) + 8 * i);
        type = [v17 type];
        v19 = v10;
        if (type)
        {
          if (type != 1)
          {
            continue;
          }

          v19 = v11;
        }

        remoteObject = [v17 remoteObject];
        [v19 addObject:remoteObject];
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  v21 = [IDSIPCBroadcastProxy alloc];
  xpcBroadcaster = [(IDSIPCBroadcaster *)self xpcBroadcaster];
  v23 = [v10 copy];
  [xpcBroadcaster broadcastProxyForTargets:v23 messageContext:contextCopy protocol:protocolCopy];
  v24 = v29 = contextCopy;
  nwBroadcaster = [(IDSIPCBroadcaster *)self nwBroadcaster];
  v26 = [nwBroadcaster broadcastProxyForTargets:v11];
  v27 = [(IDSIPCBroadcastProxy *)v21 initWithProtocol:protocolCopy xpcProxy:v24 nwProxy:v26];

  return v27;
}

@end