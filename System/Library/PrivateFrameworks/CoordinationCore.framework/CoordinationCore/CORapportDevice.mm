@interface CORapportDevice
- (BOOL)hasSameBackingDeviceAs:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)producesElectionCapableTransport;
- (CORapportDevice)initWithCompanionLinkDevice:(id)a3 sourceTransport:(id)a4;
- (NSString)IDSIdentifier;
- (NSString)description;
- (NSUUID)HomeKitIdentifier;
- (id)companionLinkProvider;
- (id)newTransportWithExecutionContext:(id)a3;
- (unint64_t)hash;
- (void)setCompanionLinkProvider:(id)a3;
@end

@implementation CORapportDevice

- (CORapportDevice)initWithCompanionLinkDevice:(id)a3 sourceTransport:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = CORapportDevice;
  v9 = [(CORapportDevice *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_device, a3);
    objc_storeStrong(&v10->_sourceTransport, a4);
    objc_initWeak(&location, v10);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __63__CORapportDevice_initWithCompanionLinkDevice_sourceTransport___block_invoke;
    v14[3] = &unk_278E162C0;
    objc_copyWeak(&v16, &location);
    v15 = v7;
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
  v6 = [(CORapportDevice *)self IDSIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, IDS: %@>", v5, self, v6];

  return v7;
}

- (NSString)IDSIdentifier
{
  IDSIdentifier = self->_IDSIdentifier;
  if (!IDSIdentifier)
  {
    v4 = [(CORapportDevice *)self device];
    v5 = [v4 idsDeviceIdentifier];
    v6 = self->_IDSIdentifier;
    self->_IDSIdentifier = v5;

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
  v22 = *MEMORY[0x277D85DE8];
  HomeKitIdentifier = self->_HomeKitIdentifier;
  if (!HomeKitIdentifier)
  {
    v4 = [(CORapportDevice *)self device];
    v5 = [v4 homeKitIdentifier];

    if (!v5)
    {
      v6 = [(CORapportDevice *)self IDSIdentifier];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v7 = [(CORapportDevice *)self sourceTransport];
      v8 = [v7 client];
      v9 = [v8 activeDevices];

      v5 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v5)
      {
        v10 = *v18;
        while (2)
        {
          for (i = 0; i != v5; i = (i + 1))
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v9);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            v13 = [v12 idsDeviceIdentifier];
            if (v13 && ![v6 compare:v13 options:1])
            {
              v5 = [v12 homeKitIdentifier];

              goto LABEL_14;
            }
          }

          v5 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    v14 = self->_HomeKitIdentifier;
    self->_HomeKitIdentifier = v5;

    HomeKitIdentifier = self->_HomeKitIdentifier;
  }

  v15 = *MEMORY[0x277D85DE8];

  return HomeKitIdentifier;
}

- (BOOL)producesElectionCapableTransport
{
  v2 = [(CORapportDevice *)self sourceTransport];
  v3 = [v2 executionContext];
  v4 = [v3 leaderElectionConfigured];

  return v4;
}

- (id)newTransportWithExecutionContext:(id)a3
{
  v4 = a3;
  v5 = [[CORapportTransport alloc] initWithDiscoveryRecord:self executionContext:v4];

  v6 = [(CORapportDevice *)self sourceTransport];
  [v6 setAsSink:v5];

  return v5;
}

- (BOOL)hasSameBackingDeviceAs:(id)a3
{
  v4 = a3;
  v5 = [(CORapportDevice *)self IDSIdentifier];
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

  else if ([(CORapportDevice *)v4 conformsToProtocol:&unk_2857CCAF8])
  {
    v6 = [(CORapportDevice *)self IDSIdentifier];
    v7 = [(CORapportDevice *)v5 IDSIdentifier];
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
  v2 = [(CORapportDevice *)self IDSIdentifier];
  v3 = [v2 hash];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 hash];

  return v6 ^ v3;
}

@end