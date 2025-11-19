@interface CORapportCurrentDevice
- (BOOL)hasSameBackingDeviceAs:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)producesElectionCapableTransport;
- (CORapportBrowser)browser;
- (CORapportCurrentDevice)initWithClient:(id)a3 browser:(id)a4;
- (NSString)IDSIdentifier;
- (NSString)description;
- (NSUUID)HomeKitIdentifier;
- (id)companionLinkProvider;
- (id)newTransportWithExecutionContext:(id)a3;
- (unint64_t)hash;
- (void)setCompanionLinkProvider:(id)a3;
@end

@implementation CORapportCurrentDevice

- (CORapportCurrentDevice)initWithClient:(id)a3 browser:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = CORapportCurrentDevice;
  v9 = [(CORapportCurrentDevice *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, a3);
    v11 = objc_initWeak(&location, v8);
    objc_storeWeak(&v10->_browser, v8);

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__CORapportCurrentDevice_initWithClient_browser___block_invoke;
    v15[3] = &unk_278E183B0;
    v16 = v7;
    v12 = MEMORY[0x245D5FF10](v15);
    companionLinkProvider = v10->_companionLinkProvider;
    v10->_companionLinkProvider = v12;

    objc_destroyWeak(&location);
  }

  return v10;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CORapportCurrentDevice *)self IDSIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, IDS: %@", v5, self, v6];

  return v7;
}

- (NSString)IDSIdentifier
{
  IDSIdentifier = self->_IDSIdentifier;
  if (!IDSIdentifier)
  {
    v4 = [(CORapportCurrentDevice *)self client];
    v5 = [v4 localDevice];
    v6 = [v5 idsDeviceIdentifier];
    v7 = self->_IDSIdentifier;
    self->_IDSIdentifier = v6;

    IDSIdentifier = self->_IDSIdentifier;
  }

  return IDSIdentifier;
}

- (void)setCompanionLinkProvider:(id)a3
{
  v4 = MEMORY[0x245D5FF10](a3, a2);
  companionLinkProvider = self->_companionLinkProvider;
  self->_companionLinkProvider = v4;

  MEMORY[0x2821F96F8]();
}

- (id)companionLinkProvider
{
  v2 = MEMORY[0x245D5FF10](self->_companionLinkProvider, a2);

  return v2;
}

- (NSUUID)HomeKitIdentifier
{
  v2 = [(CORapportCurrentDevice *)self client];
  v3 = [v2 localDevice];
  v4 = [v3 homeKitIdentifier];

  return v4;
}

- (BOOL)producesElectionCapableTransport
{
  v2 = [(CORapportCurrentDevice *)self browser];
  v3 = [v2 sourceTransport];
  v4 = [v3 executionContext];
  v5 = [v4 leaderElectionConfigured];

  return v5;
}

- (id)newTransportWithExecutionContext:(id)a3
{
  v4 = a3;
  v5 = [[CORapportTransport alloc] initWithDiscoveryRecord:self executionContext:v4];

  v6 = [(CORapportCurrentDevice *)self browser];
  [v6 setSourceTransport:v5];

  return v5;
}

- (BOOL)hasSameBackingDeviceAs:(id)a3
{
  v4 = a3;
  v5 = [(CORapportCurrentDevice *)self IDSIdentifier];
  v6 = [v4 IDSIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v8 = 1;
  }

  else if ([(CORapportCurrentDevice *)v4 conformsToProtocol:&unk_2857CCAF8])
  {
    v6 = [(CORapportCurrentDevice *)self IDSIdentifier];
    v7 = [(CORapportCurrentDevice *)v5 IDSIdentifier];
    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(CORapportCurrentDevice *)self IDSIdentifier];
  v3 = [v2 hash];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 hash];

  return v6 ^ v3;
}

- (CORapportBrowser)browser
{
  WeakRetained = objc_loadWeakRetained(&self->_browser);

  return WeakRetained;
}

@end