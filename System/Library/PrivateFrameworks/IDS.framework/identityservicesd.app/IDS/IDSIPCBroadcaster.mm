@interface IDSIPCBroadcaster
- (IDSIPCBroadcaster)init;
- (id)broadcastProxyForTargets:(id)a3 messageContext:(id)a4 protocol:(id)a5;
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

- (id)broadcastProxyForTargets:(id)a3 messageContext:(id)a4 protocol:(id)a5
{
  v8 = a3;
  v9 = a4;
  v30 = a5;
  v10 = objc_alloc_init(NSMutableArray);
  v11 = objc_alloc_init(NSMutableArray);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v12 = v8;
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
        v18 = [v17 type];
        v19 = v10;
        if (v18)
        {
          if (v18 != 1)
          {
            continue;
          }

          v19 = v11;
        }

        v20 = [v17 remoteObject];
        [v19 addObject:v20];
      }

      v14 = [v12 countByEnumeratingWithState:&v31 objects:v35 count:16];
    }

    while (v14);
  }

  v21 = [IDSIPCBroadcastProxy alloc];
  v22 = [(IDSIPCBroadcaster *)self xpcBroadcaster];
  v23 = [v10 copy];
  [v22 broadcastProxyForTargets:v23 messageContext:v9 protocol:v30];
  v24 = v29 = v9;
  v25 = [(IDSIPCBroadcaster *)self nwBroadcaster];
  v26 = [v25 broadcastProxyForTargets:v11];
  v27 = [(IDSIPCBroadcastProxy *)v21 initWithProtocol:v30 xpcProxy:v24 nwProxy:v26];

  return v27;
}

@end