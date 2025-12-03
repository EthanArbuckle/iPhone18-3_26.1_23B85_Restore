@interface CODiscoveryRecord
+ (CODiscoveryRecord)discoveryRecordWithConstituent:(id)constituent rapportIdentifier:(id)identifier IDSIdentifier:(id)sIdentifier peerAddress:(id)address port:(int)port;
+ (CODiscoveryRecord)discoveryRecordWithNode:(id)node;
+ (CODiscoveryRecord)discoveryRecordWithNodeController:(id)controller;
- (BOOL)hasSameBackingDeviceAs:(id)as;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToDiscoveryRecord:(id)record;
- (BOOL)producesElectionCapableTransport;
- (BOOL)shouldAdvertise;
- (CODiscoveryRecord)initWithCoder:(id)coder;
- (CODiscoveryRecord)initWithDiscoveryRecord:(id)record;
- (NSString)description;
- (NSUUID)HomeKitIdentifier;
- (RPCompanionLinkDevice)companionLinkDevice;
- (id)_initWithConstituent:(id)constituent rapportIdentifier:(id)identifier IDSIdentifier:(id)sIdentifier destinations:(id)destinations;
- (id)companionLinkProvider;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)newTransportWithExecutionContext:(id)context;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setCompanionLinkProvider:(id)provider;
@end

@implementation CODiscoveryRecord

- (id)_initWithConstituent:(id)constituent rapportIdentifier:(id)identifier IDSIdentifier:(id)sIdentifier destinations:(id)destinations
{
  constituentCopy = constituent;
  identifierCopy = identifier;
  sIdentifierCopy = sIdentifier;
  destinationsCopy = destinations;
  v23.receiver = self;
  v23.super_class = CODiscoveryRecord;
  v15 = [(CODiscoveryRecord *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_constituent, constituent);
    objc_storeStrong(&v16->_rapportIdentifier, identifier);
    objc_storeStrong(&v16->_IDSIdentifier, sIdentifier);
    objc_storeStrong(&v16->_destinations, destinations);
    objc_initWeak(&location, v16);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __87__CODiscoveryRecord__initWithConstituent_rapportIdentifier_IDSIdentifier_destinations___block_invoke;
    v20[3] = &unk_278E18F48;
    objc_copyWeak(&v21, &location);
    v17 = MEMORY[0x245D5FF10](v20);
    companionLinkProvider = v16->_companionLinkProvider;
    v16->_companionLinkProvider = v17;

    objc_destroyWeak(&v21);
    objc_destroyWeak(&location);
  }

  return v16;
}

id __87__CODiscoveryRecord__initWithConstituent_rapportIdentifier_IDSIdentifier_destinations___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = MEMORY[0x277D44160];
    v4 = [WeakRetained companionLinkDevice];
    v5 = [v2 sourceTransport];
    v6 = [v5 client];
    v7 = [v6 dispatchQueue];
    v8 = [v3 co_companionLinkClientToDevice:v4 dispatchQueue:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (CODiscoveryRecord)discoveryRecordWithNodeController:(id)controller
{
  controllerCopy = controller;
  node = [controllerCopy node];
  remote = [node remote];

  rapportTransport = [controllerCopy rapportTransport];

  client = [rapportTransport client];
  destinationDevice = [client destinationDevice];

  identifier = [destinationDevice identifier];
  idsDeviceIdentifier = [destinationDevice idsDeviceIdentifier];
  ipAddress = [destinationDevice ipAddress];
  listeningPort = [destinationDevice listeningPort];
  if (listeningPort < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = [self _destinationForPeerAddress:ipAddress listeningPort:listeningPort];
  }

  v15 = 0;
  if (remote && identifier && idsDeviceIdentifier && v14)
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB70]) initWithObject:v14];
    v15 = [[self alloc] _initWithConstituent:remote rapportIdentifier:identifier IDSIdentifier:idsDeviceIdentifier destinations:v16];
  }

  return v15;
}

+ (CODiscoveryRecord)discoveryRecordWithNode:(id)node
{
  nodeCopy = node;
  remote = [nodeCopy remote];
  client = [nodeCopy client];
  destinationDevice = [client destinationDevice];

  identifier = [destinationDevice identifier];
  iDSIdentifier = [nodeCopy IDSIdentifier];

  ipAddress = [destinationDevice ipAddress];
  listeningPort = [destinationDevice listeningPort];
  if (listeningPort < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = [self _destinationForPeerAddress:ipAddress listeningPort:listeningPort];
  }

  v13 = 0;
  if (remote && identifier && iDSIdentifier && v12)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB70]) initWithObject:v12];
    v13 = [[self alloc] _initWithConstituent:remote rapportIdentifier:identifier IDSIdentifier:iDSIdentifier destinations:v14];
  }

  return v13;
}

+ (CODiscoveryRecord)discoveryRecordWithConstituent:(id)constituent rapportIdentifier:(id)identifier IDSIdentifier:(id)sIdentifier peerAddress:(id)address port:(int)port
{
  constituentCopy = constituent;
  identifierCopy = identifier;
  sIdentifierCopy = sIdentifier;
  v15 = [self _destinationForPeerAddress:address listeningPort:port];
  v16 = [v15 length];
  if (!port || v16)
  {
    if (v15)
    {
      v18 = [objc_alloc(MEMORY[0x277CBEB70]) initWithObject:v15];
    }

    else
    {
      v18 = objc_alloc_init(MEMORY[0x277CBEB70]);
    }

    v19 = v18;
    v17 = [[self alloc] _initWithConstituent:constituentCopy rapportIdentifier:identifierCopy IDSIdentifier:sIdentifierCopy destinations:v18];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (CODiscoveryRecord)initWithDiscoveryRecord:(id)record
{
  recordCopy = record;
  constituent = [recordCopy constituent];
  v6 = [constituent copy];
  rapportIdentifier = [recordCopy rapportIdentifier];
  v8 = [rapportIdentifier copy];
  iDSIdentifier = [recordCopy IDSIdentifier];
  v10 = [iDSIdentifier copy];
  destinations = [recordCopy destinations];

  v12 = [destinations copy];
  v13 = [(CODiscoveryRecord *)self _initWithConstituent:v6 rapportIdentifier:v8 IDSIdentifier:v10 destinations:v12];

  return v13;
}

- (CODiscoveryRecord)initWithCoder:(id)coder
{
  v28 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  if ([coderCopy decodeIntegerForKey:@"version"] == 1)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"constituent"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rapportIdentifier"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IDSIdentifier"];
    v11 = [coderCopy decodeObjectOfClasses:v7 forKey:@"destinations"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      v23 = 0u;
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v12 = [v11 copy];
      v13 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        v14 = v13;
        v21 = v7;
        v22 = v8;
        v15 = *v24;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v24 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = *(*(&v23 + 1) + 8 * i);
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {

              v11 = 0;
              goto LABEL_16;
            }
          }

          v14 = [v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }

LABEL_16:
        v7 = v21;
        v8 = v22;
      }

      if (!v8)
      {
        goto LABEL_22;
      }
    }

    else
    {

      v11 = 0;
      if (!v8)
      {
        goto LABEL_22;
      }
    }

    if (v9 && v10 && v11)
    {
      v18 = [(CODiscoveryRecord *)self _initWithConstituent:v8 rapportIdentifier:v9 IDSIdentifier:v10 destinations:v11];
LABEL_23:

      goto LABEL_24;
    }

LABEL_22:

    v18 = 0;
    goto LABEL_23;
  }

  v18 = 0;
LABEL_24:

  v19 = *MEMORY[0x277D85DE8];
  return v18;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:1 forKey:@"version"];
  constituent = [(CODiscoveryRecord *)self constituent];
  [coderCopy encodeObject:constituent forKey:@"constituent"];

  rapportIdentifier = [(CODiscoveryRecord *)self rapportIdentifier];
  [coderCopy encodeObject:rapportIdentifier forKey:@"rapportIdentifier"];

  iDSIdentifier = [(CODiscoveryRecord *)self IDSIdentifier];
  [coderCopy encodeObject:iDSIdentifier forKey:@"IDSIdentifier"];

  destinations = [(CODiscoveryRecord *)self destinations];
  [coderCopy encodeObject:destinations forKey:@"destinations"];
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
  v21 = *MEMORY[0x277D85DE8];
  v3 = self->_HomeKitIdentifier;
  if (!v3)
  {
    iDSIdentifier = [(CODiscoveryRecord *)self IDSIdentifier];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    sourceTransport = [(CODiscoveryRecord *)self sourceTransport];
    client = [sourceTransport client];
    activeDevices = [client activeDevices];

    v3 = [activeDevices countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v3)
    {
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v3; i = (i + 1))
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(activeDevices);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          idsDeviceIdentifier = [v10 idsDeviceIdentifier];
          if (idsDeviceIdentifier && ![iDSIdentifier compare:idsDeviceIdentifier options:1])
          {
            homeKitIdentifier = [v10 homeKitIdentifier];
            HomeKitIdentifier = self->_HomeKitIdentifier;
            self->_HomeKitIdentifier = homeKitIdentifier;

            v3 = homeKitIdentifier;
            goto LABEL_13;
          }
        }

        v3 = [activeDevices countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)producesElectionCapableTransport
{
  sourceTransport = [(CODiscoveryRecord *)self sourceTransport];
  executionContext = [sourceTransport executionContext];
  leaderElectionConfigured = [executionContext leaderElectionConfigured];

  return leaderElectionConfigured;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [COMutableDiscoveryRecord alloc];

  return [(CODiscoveryRecord *)v4 initWithDiscoveryRecord:self];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  constituent = [(CODiscoveryRecord *)self constituent];
  rapportIdentifier = [(CODiscoveryRecord *)self rapportIdentifier];
  iDSIdentifier = [(CODiscoveryRecord *)self IDSIdentifier];
  destinations = [(CODiscoveryRecord *)self destinations];
  v10 = [v3 stringWithFormat:@"<%@: %p, c(%@) r(%@) i(%@) d(%@)>", v5, self, constituent, rapportIdentifier, iDSIdentifier, destinations];

  return v10;
}

- (unint64_t)hash
{
  constituent = [(CODiscoveryRecord *)self constituent];
  v3 = [constituent hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(CODiscoveryRecord *)self isEqualToDiscoveryRecord:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)hasSameBackingDeviceAs:(id)as
{
  asCopy = as;
  iDSIdentifier = [(CODiscoveryRecord *)self IDSIdentifier];
  iDSIdentifier2 = [asCopy IDSIdentifier];

  LOBYTE(asCopy) = [iDSIdentifier isEqualToString:iDSIdentifier2];
  return asCopy;
}

- (id)newTransportWithExecutionContext:(id)context
{
  contextCopy = context;
  v5 = [[CORapportTransport alloc] initWithDiscoveryRecord:self executionContext:contextCopy];

  sourceTransport = [(CODiscoveryRecord *)self sourceTransport];
  [sourceTransport setAsSink:v5];

  return v5;
}

- (BOOL)isEqualToDiscoveryRecord:(id)record
{
  recordCopy = record;
  constituent = [(CODiscoveryRecord *)self constituent];
  constituent2 = [recordCopy constituent];
  if ([constituent isEqual:constituent2])
  {
    rapportIdentifier = [(CODiscoveryRecord *)self rapportIdentifier];
    rapportIdentifier2 = [recordCopy rapportIdentifier];
    if ([rapportIdentifier isEqualToString:rapportIdentifier2])
    {
      iDSIdentifier = [(CODiscoveryRecord *)self IDSIdentifier];
      iDSIdentifier2 = [recordCopy IDSIdentifier];
      if ([iDSIdentifier isEqualToString:iDSIdentifier2])
      {
        destinations = [(CODiscoveryRecord *)self destinations];
        destinations2 = [recordCopy destinations];
        v13 = [destinations isEqualToOrderedSet:destinations2];
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)shouldAdvertise
{
  destinations = [(CODiscoveryRecord *)self destinations];
  v3 = [destinations count] != 0;

  return v3;
}

- (RPCompanionLinkDevice)companionLinkDevice
{
  companionLinkDevice = self->_companionLinkDevice;
  if (!companionLinkDevice)
  {
    v4 = objc_alloc_init(MEMORY[0x277D44170]);
    rapportIdentifier = [(CODiscoveryRecord *)self rapportIdentifier];
    [v4 setIdentifier:rapportIdentifier];

    destinations = [(CODiscoveryRecord *)self destinations];
    firstObject = [destinations firstObject];
    [v4 setIpAddress:firstObject];

    v8 = self->_companionLinkDevice;
    self->_companionLinkDevice = v4;

    companionLinkDevice = self->_companionLinkDevice;
  }

  return companionLinkDevice;
}

@end