@interface CORapportDevice
- (BOOL)hasSameBackingDeviceAs:(id)as;
- (BOOL)isEqual:(id)equal;
- (BOOL)producesElectionCapableTransport;
- (CORapportDevice)initWithCompanionLinkDevice:(id)device sourceTransport:(id)transport;
- (NSString)IDSIdentifier;
- (NSString)description;
- (NSUUID)HomeKitIdentifier;
- (id)companionLinkProvider;
- (id)newTransportWithExecutionContext:(id)context;
- (unint64_t)hash;
- (void)setCompanionLinkProvider:(id)provider;
@end

@implementation CORapportDevice

- (CORapportDevice)initWithCompanionLinkDevice:(id)device sourceTransport:(id)transport
{
  deviceCopy = device;
  transportCopy = transport;
  v18.receiver = self;
  v18.super_class = CORapportDevice;
  v9 = [(CORapportDevice *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, device);
    objc_storeStrong(&v10->_sourceTransport, transport);
    objc_initWeak(&location, v10);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__CORapportDevice_initWithCompanionLinkDevice_sourceTransport___block_invoke;
    v14[3] = &unk_278E162C0;
    objc_copyWeak(&v16, &location);
    v15 = deviceCopy;
    v11 = MEMORY[0x245D5FF10](v14);
    companionLinkProvider = v10->_companionLinkProvider;
    v10->_companionLinkProvider = v11;

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v10;
}

id __63__CORapportDevice_initWithCompanionLinkDevice_sourceTransport___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = MEMORY[0x277D44160];
    v5 = *(a1 + 32);
    v6 = [WeakRetained sourceTransport];
    v7 = [v6 client];
    v8 = [v7 dispatchQueue];
    v9 = [v4 co_companionLinkClientToDevice:v5 dispatchQueue:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  iDSIdentifier = [(CORapportDevice *)self IDSIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, IDS: %@>", v5, self, iDSIdentifier];

  return v7;
}

- (NSString)IDSIdentifier
{
  IDSIdentifier = self->_IDSIdentifier;
  if (!IDSIdentifier)
  {
    device = [(CORapportDevice *)self device];
    idsDeviceIdentifier = [device idsDeviceIdentifier];
    v6 = self->_IDSIdentifier;
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
  v22 = *MEMORY[0x277D85DE8];
  HomeKitIdentifier = self->_HomeKitIdentifier;
  if (!HomeKitIdentifier)
  {
    device = [(CORapportDevice *)self device];
    homeKitIdentifier = [device homeKitIdentifier];

    if (!homeKitIdentifier)
    {
      iDSIdentifier = [(CORapportDevice *)self IDSIdentifier];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      sourceTransport = [(CORapportDevice *)self sourceTransport];
      client = [sourceTransport client];
      activeDevices = [client activeDevices];

      homeKitIdentifier = [activeDevices countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (homeKitIdentifier)
      {
        v10 = *v18;
        while (2)
        {
          for (i = 0; i != homeKitIdentifier; i = (i + 1))
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(activeDevices);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            idsDeviceIdentifier = [v12 idsDeviceIdentifier];
            if (idsDeviceIdentifier && ![iDSIdentifier compare:idsDeviceIdentifier options:1])
            {
              homeKitIdentifier = [v12 homeKitIdentifier];

              goto LABEL_14;
            }
          }

          homeKitIdentifier = [activeDevices countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (homeKitIdentifier)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    v14 = self->_HomeKitIdentifier;
    self->_HomeKitIdentifier = homeKitIdentifier;

    HomeKitIdentifier = self->_HomeKitIdentifier;
  }

  v15 = *MEMORY[0x277D85DE8];

  return HomeKitIdentifier;
}

- (BOOL)producesElectionCapableTransport
{
  sourceTransport = [(CORapportDevice *)self sourceTransport];
  executionContext = [sourceTransport executionContext];
  leaderElectionConfigured = [executionContext leaderElectionConfigured];

  return leaderElectionConfigured;
}

- (id)newTransportWithExecutionContext:(id)context
{
  contextCopy = context;
  v5 = [[CORapportTransport alloc] initWithDiscoveryRecord:self executionContext:contextCopy];

  sourceTransport = [(CORapportDevice *)self sourceTransport];
  [sourceTransport setAsSink:v5];

  return v5;
}

- (BOOL)hasSameBackingDeviceAs:(id)as
{
  asCopy = as;
  iDSIdentifier = [(CORapportDevice *)self IDSIdentifier];
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

  else if ([(CORapportDevice *)equalCopy conformsToProtocol:&unk_2857CCAF8])
  {
    iDSIdentifier = [(CORapportDevice *)self IDSIdentifier];
    iDSIdentifier2 = [(CORapportDevice *)v5 IDSIdentifier];
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
  iDSIdentifier = [(CORapportDevice *)self IDSIdentifier];
  v3 = [iDSIdentifier hash];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 hash];

  return v6 ^ v3;
}

@end