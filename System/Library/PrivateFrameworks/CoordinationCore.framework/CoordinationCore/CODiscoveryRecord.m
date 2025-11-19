@interface CODiscoveryRecord
+ (CODiscoveryRecord)discoveryRecordWithConstituent:(id)a3 rapportIdentifier:(id)a4 IDSIdentifier:(id)a5 peerAddress:(id)a6 port:(int)a7;
+ (CODiscoveryRecord)discoveryRecordWithNode:(id)a3;
+ (CODiscoveryRecord)discoveryRecordWithNodeController:(id)a3;
- (BOOL)hasSameBackingDeviceAs:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToDiscoveryRecord:(id)a3;
- (BOOL)producesElectionCapableTransport;
- (BOOL)shouldAdvertise;
- (CODiscoveryRecord)initWithCoder:(id)a3;
- (CODiscoveryRecord)initWithDiscoveryRecord:(id)a3;
- (NSString)description;
- (NSUUID)HomeKitIdentifier;
- (RPCompanionLinkDevice)companionLinkDevice;
- (id)_initWithConstituent:(id)a3 rapportIdentifier:(id)a4 IDSIdentifier:(id)a5 destinations:(id)a6;
- (id)companionLinkProvider;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)newTransportWithExecutionContext:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setCompanionLinkProvider:(id)a3;
@end

@implementation CODiscoveryRecord

- (id)_initWithConstituent:(id)a3 rapportIdentifier:(id)a4 IDSIdentifier:(id)a5 destinations:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v23.receiver = self;
  v23.super_class = CODiscoveryRecord;
  v15 = [(CODiscoveryRecord *)&v23 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_constituent, a3);
    objc_storeStrong(&v16->_rapportIdentifier, a4);
    objc_storeStrong(&v16->_IDSIdentifier, a5);
    objc_storeStrong(&v16->_destinations, a6);
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

+ (CODiscoveryRecord)discoveryRecordWithNodeController:(id)a3
{
  v4 = a3;
  v5 = [v4 node];
  v6 = [v5 remote];

  v7 = [v4 rapportTransport];

  v8 = [v7 client];
  v9 = [v8 destinationDevice];

  v10 = [v9 identifier];
  v11 = [v9 idsDeviceIdentifier];
  v12 = [v9 ipAddress];
  v13 = [v9 listeningPort];
  if (v13 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = [a1 _destinationForPeerAddress:v12 listeningPort:v13];
  }

  v15 = 0;
  if (v6 && v10 && v11 && v14)
  {
    v16 = [objc_alloc(MEMORY[0x277CBEB70]) initWithObject:v14];
    v15 = [[a1 alloc] _initWithConstituent:v6 rapportIdentifier:v10 IDSIdentifier:v11 destinations:v16];
  }

  return v15;
}

+ (CODiscoveryRecord)discoveryRecordWithNode:(id)a3
{
  v4 = a3;
  v5 = [v4 remote];
  v6 = [v4 client];
  v7 = [v6 destinationDevice];

  v8 = [v7 identifier];
  v9 = [v4 IDSIdentifier];

  v10 = [v7 ipAddress];
  v11 = [v7 listeningPort];
  if (v11 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = [a1 _destinationForPeerAddress:v10 listeningPort:v11];
  }

  v13 = 0;
  if (v5 && v8 && v9 && v12)
  {
    v14 = [objc_alloc(MEMORY[0x277CBEB70]) initWithObject:v12];
    v13 = [[a1 alloc] _initWithConstituent:v5 rapportIdentifier:v8 IDSIdentifier:v9 destinations:v14];
  }

  return v13;
}

+ (CODiscoveryRecord)discoveryRecordWithConstituent:(id)a3 rapportIdentifier:(id)a4 IDSIdentifier:(id)a5 peerAddress:(id)a6 port:(int)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [a1 _destinationForPeerAddress:a6 listeningPort:a7];
  v16 = [v15 length];
  if (!a7 || v16)
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
    v17 = [[a1 alloc] _initWithConstituent:v12 rapportIdentifier:v13 IDSIdentifier:v14 destinations:v18];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (CODiscoveryRecord)initWithDiscoveryRecord:(id)a3
{
  v4 = a3;
  v5 = [v4 constituent];
  v6 = [v5 copy];
  v7 = [v4 rapportIdentifier];
  v8 = [v7 copy];
  v9 = [v4 IDSIdentifier];
  v10 = [v9 copy];
  v11 = [v4 destinations];

  v12 = [v11 copy];
  v13 = [(CODiscoveryRecord *)self _initWithConstituent:v6 rapportIdentifier:v8 IDSIdentifier:v10 destinations:v12];

  return v13;
}

- (CODiscoveryRecord)initWithCoder:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 decodeIntegerForKey:@"version"] == 1)
  {
    v5 = MEMORY[0x277CBEB98];
    v6 = objc_opt_class();
    v7 = [v5 setWithObjects:{v6, objc_opt_class(), 0}];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"constituent"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rapportIdentifier"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IDSIdentifier"];
    v11 = [v4 decodeObjectOfClasses:v7 forKey:@"destinations"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:1 forKey:@"version"];
  v5 = [(CODiscoveryRecord *)self constituent];
  [v4 encodeObject:v5 forKey:@"constituent"];

  v6 = [(CODiscoveryRecord *)self rapportIdentifier];
  [v4 encodeObject:v6 forKey:@"rapportIdentifier"];

  v7 = [(CODiscoveryRecord *)self IDSIdentifier];
  [v4 encodeObject:v7 forKey:@"IDSIdentifier"];

  v8 = [(CODiscoveryRecord *)self destinations];
  [v4 encodeObject:v8 forKey:@"destinations"];
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
  v21 = *MEMORY[0x277D85DE8];
  v3 = self->_HomeKitIdentifier;
  if (!v3)
  {
    v4 = [(CODiscoveryRecord *)self IDSIdentifier];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = [(CODiscoveryRecord *)self sourceTransport];
    v6 = [v5 client];
    v7 = [v6 activeDevices];

    v3 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v3)
    {
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v3; i = (i + 1))
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v7);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = [v10 idsDeviceIdentifier];
          if (v11 && ![v4 compare:v11 options:1])
          {
            v12 = [v10 homeKitIdentifier];
            HomeKitIdentifier = self->_HomeKitIdentifier;
            self->_HomeKitIdentifier = v12;

            v3 = v12;
            goto LABEL_13;
          }
        }

        v3 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
  v2 = [(CODiscoveryRecord *)self sourceTransport];
  v3 = [v2 executionContext];
  v4 = [v3 leaderElectionConfigured];

  return v4;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [COMutableDiscoveryRecord alloc];

  return [(CODiscoveryRecord *)v4 initWithDiscoveryRecord:self];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(CODiscoveryRecord *)self constituent];
  v7 = [(CODiscoveryRecord *)self rapportIdentifier];
  v8 = [(CODiscoveryRecord *)self IDSIdentifier];
  v9 = [(CODiscoveryRecord *)self destinations];
  v10 = [v3 stringWithFormat:@"<%@: %p, c(%@) r(%@) i(%@) d(%@)>", v5, self, v6, v7, v8, v9];

  return v10;
}

- (unint64_t)hash
{
  v2 = [(CODiscoveryRecord *)self constituent];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
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

- (BOOL)hasSameBackingDeviceAs:(id)a3
{
  v4 = a3;
  v5 = [(CODiscoveryRecord *)self IDSIdentifier];
  v6 = [v4 IDSIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (id)newTransportWithExecutionContext:(id)a3
{
  v4 = a3;
  v5 = [[CORapportTransport alloc] initWithDiscoveryRecord:self executionContext:v4];

  v6 = [(CODiscoveryRecord *)self sourceTransport];
  [v6 setAsSink:v5];

  return v5;
}

- (BOOL)isEqualToDiscoveryRecord:(id)a3
{
  v4 = a3;
  v5 = [(CODiscoveryRecord *)self constituent];
  v6 = [v4 constituent];
  if ([v5 isEqual:v6])
  {
    v7 = [(CODiscoveryRecord *)self rapportIdentifier];
    v8 = [v4 rapportIdentifier];
    if ([v7 isEqualToString:v8])
    {
      v9 = [(CODiscoveryRecord *)self IDSIdentifier];
      v10 = [v4 IDSIdentifier];
      if ([v9 isEqualToString:v10])
      {
        v11 = [(CODiscoveryRecord *)self destinations];
        v12 = [v4 destinations];
        v13 = [v11 isEqualToOrderedSet:v12];
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
  v2 = [(CODiscoveryRecord *)self destinations];
  v3 = [v2 count] != 0;

  return v3;
}

- (RPCompanionLinkDevice)companionLinkDevice
{
  companionLinkDevice = self->_companionLinkDevice;
  if (!companionLinkDevice)
  {
    v4 = objc_alloc_init(MEMORY[0x277D44170]);
    v5 = [(CODiscoveryRecord *)self rapportIdentifier];
    [v4 setIdentifier:v5];

    v6 = [(CODiscoveryRecord *)self destinations];
    v7 = [v6 firstObject];
    [v4 setIpAddress:v7];

    v8 = self->_companionLinkDevice;
    self->_companionLinkDevice = v4;

    companionLinkDevice = self->_companionLinkDevice;
  }

  return companionLinkDevice;
}

@end