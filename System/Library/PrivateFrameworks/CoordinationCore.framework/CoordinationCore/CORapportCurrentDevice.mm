@interface CORapportCurrentDevice
- (BOOL)hasSameBackingDeviceAs:(id)as;
- (BOOL)isEqual:(id)equal;
- (BOOL)producesElectionCapableTransport;
- (CORapportBrowser)browser;
- (CORapportCurrentDevice)initWithClient:(id)client browser:(id)browser;
- (NSString)IDSIdentifier;
- (NSString)description;
- (NSUUID)HomeKitIdentifier;
- (id)companionLinkProvider;
- (id)newTransportWithExecutionContext:(id)context;
- (unint64_t)hash;
- (void)setCompanionLinkProvider:(id)provider;
@end

@implementation CORapportCurrentDevice

- (CORapportCurrentDevice)initWithClient:(id)client browser:(id)browser
{
  clientCopy = client;
  browserCopy = browser;
  v18.receiver = self;
  v18.super_class = CORapportCurrentDevice;
  v9 = [(CORapportCurrentDevice *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_client, client);
    v11 = objc_initWeak(&location, browserCopy);
    objc_storeWeak(&v10->_browser, browserCopy);

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __49__CORapportCurrentDevice_initWithClient_browser___block_invoke;
    v15[3] = &unk_278E183B0;
    v16 = clientCopy;
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
  iDSIdentifier = [(CORapportCurrentDevice *)self IDSIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, IDS: %@", v5, self, iDSIdentifier];

  return v7;
}

- (NSString)IDSIdentifier
{
  IDSIdentifier = self->_IDSIdentifier;
  if (!IDSIdentifier)
  {
    client = [(CORapportCurrentDevice *)self client];
    localDevice = [client localDevice];
    idsDeviceIdentifier = [localDevice idsDeviceIdentifier];
    v7 = self->_IDSIdentifier;
    self->_IDSIdentifier = idsDeviceIdentifier;

    IDSIdentifier = self->_IDSIdentifier;
  }

  return IDSIdentifier;
}

- (void)setCompanionLinkProvider:(id)provider
{
  v4 = MEMORY[0x245D5FF10](provider, a2);
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
  client = [(CORapportCurrentDevice *)self client];
  localDevice = [client localDevice];
  homeKitIdentifier = [localDevice homeKitIdentifier];

  return homeKitIdentifier;
}

- (BOOL)producesElectionCapableTransport
{
  browser = [(CORapportCurrentDevice *)self browser];
  sourceTransport = [browser sourceTransport];
  executionContext = [sourceTransport executionContext];
  leaderElectionConfigured = [executionContext leaderElectionConfigured];

  return leaderElectionConfigured;
}

- (id)newTransportWithExecutionContext:(id)context
{
  contextCopy = context;
  v5 = [[CORapportTransport alloc] initWithDiscoveryRecord:self executionContext:contextCopy];

  browser = [(CORapportCurrentDevice *)self browser];
  [browser setSourceTransport:v5];

  return v5;
}

- (BOOL)hasSameBackingDeviceAs:(id)as
{
  asCopy = as;
  iDSIdentifier = [(CORapportCurrentDevice *)self IDSIdentifier];
  iDSIdentifier2 = [asCopy IDSIdentifier];

  LOBYTE(asCopy) = [iDSIdentifier isEqualToString:iDSIdentifier2];
  return asCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v8 = 1;
  }

  else if ([(CORapportCurrentDevice *)equalCopy conformsToProtocol:&unk_2857CCAF8])
  {
    iDSIdentifier = [(CORapportCurrentDevice *)self IDSIdentifier];
    iDSIdentifier2 = [(CORapportCurrentDevice *)v5 IDSIdentifier];
    v8 = [iDSIdentifier isEqualToString:iDSIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  iDSIdentifier = [(CORapportCurrentDevice *)self IDSIdentifier];
  v3 = [iDSIdentifier hash];
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