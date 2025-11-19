@interface NSXPCConnection(CoordinationCore)
- (id)co_ClientBundleIdentifier;
- (id)co_PeerInstance;
@end

@implementation NSXPCConnection(CoordinationCore)

- (id)co_ClientBundleIdentifier
{
  v2 = objc_getAssociatedObject(a1, sel_co_ClientBundleIdentifier);
  if (!v2)
  {
    [a1 auditToken];
    CPCopyBundleIdentifierAndTeamFromAuditToken();
    v3 = [MEMORY[0x277CCA8D8] mainBundle];
    v2 = [v3 bundleIdentifier];

    [a1 co_SetClientBundleIdentifier:{v2, v5, v6, v7, v8}];
  }

  return v2;
}

- (id)co_PeerInstance
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = objc_getAssociatedObject(a1, sel_co_PeerInstance);
  if (!v2)
  {
    v6[0] = 0;
    v6[1] = 0;
    v3 = [a1 _xpcConnection];
    if (v3 && xpc_connection_get_peer_instance())
    {
      v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v6];
    }

    else
    {
      v2 = 0;
    }
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

@end