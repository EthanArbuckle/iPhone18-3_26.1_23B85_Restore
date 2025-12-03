@interface COIDSDiscoveryRecord
- (BOOL)hasSameBackingDeviceAs:(id)as;
- (BOOL)isEqual:(id)equal;
- (COIDSDiscoveryRecord)initWithIdsIdentifier:(id)identifier deviceTokenURI:(id)i;
- (NSString)description;
- (id)newTransportWithExecutionContext:(id)context;
- (unint64_t)hash;
@end

@implementation COIDSDiscoveryRecord

- (COIDSDiscoveryRecord)initWithIdsIdentifier:(id)identifier deviceTokenURI:(id)i
{
  identifierCopy = identifier;
  iCopy = i;
  v14.receiver = self;
  v14.super_class = COIDSDiscoveryRecord;
  v8 = [(COIDSDiscoveryRecord *)&v14 init];
  if (v8)
  {
    v9 = [identifierCopy copy];
    IDSIdentifier = v8->_IDSIdentifier;
    v8->_IDSIdentifier = v9;

    v11 = [iCopy copy];
    deviceTokenURI = v8->_deviceTokenURI;
    v8->_deviceTokenURI = v11;
  }

  return v8;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  iDSIdentifier = [(COIDSDiscoveryRecord *)self IDSIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, IDS: %@>", v5, self, iDSIdentifier];

  return v7;
}

- (BOOL)hasSameBackingDeviceAs:(id)as
{
  asCopy = as;
  iDSIdentifier = [(COIDSDiscoveryRecord *)self IDSIdentifier];
  iDSIdentifier2 = [asCopy IDSIdentifier];

  LOBYTE(asCopy) = [iDSIdentifier isEqualToString:iDSIdentifier2];
  return asCopy;
}

- (unint64_t)hash
{
  iDSIdentifier = [(COIDSDiscoveryRecord *)self IDSIdentifier];
  v3 = [iDSIdentifier hash];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 hash];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      iDSIdentifier = [(COIDSDiscoveryRecord *)self IDSIdentifier];
      iDSIdentifier2 = [(COIDSDiscoveryRecord *)equalCopy IDSIdentifier];
      v7 = [iDSIdentifier isEqualToString:iDSIdentifier2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)newTransportWithExecutionContext:(id)context
{
  contextCopy = context;
  serviceDirector = [(COIDSDiscoveryRecord *)self serviceDirector];
  v6 = [serviceDirector transportWithDiscoveryRecord:self withExecutionContext:contextCopy];

  return v6;
}

@end