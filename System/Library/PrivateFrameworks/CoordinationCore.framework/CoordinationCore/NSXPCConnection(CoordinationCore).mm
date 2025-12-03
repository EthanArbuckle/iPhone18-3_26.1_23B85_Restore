@interface NSXPCConnection(CoordinationCore)
- (id)co_ClientBundleIdentifier;
- (id)co_PeerInstance;
@end

@implementation NSXPCConnection(CoordinationCore)

- (id)co_ClientBundleIdentifier
{
  bundleIdentifier = objc_getAssociatedObject(self, sel_co_ClientBundleIdentifier);
  if (!bundleIdentifier)
  {
    [self auditToken];
    CPCopyBundleIdentifierAndTeamFromAuditToken();
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    [self co_SetClientBundleIdentifier:{bundleIdentifier, v5, v6, v7, v8}];
  }

  return bundleIdentifier;
}

- (id)co_PeerInstance
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = objc_getAssociatedObject(self, sel_co_PeerInstance);
  if (!v2)
  {
    v6[0] = 0;
    v6[1] = 0;
    _xpcConnection = [self _xpcConnection];
    if (_xpcConnection && xpc_connection_get_peer_instance())
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