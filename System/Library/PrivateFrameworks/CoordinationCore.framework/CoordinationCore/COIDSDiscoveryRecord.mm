@interface COIDSDiscoveryRecord
- (BOOL)hasSameBackingDeviceAs:(id)a3;
- (BOOL)isEqual:(id)a3;
- (COIDSDiscoveryRecord)initWithIdsIdentifier:(id)a3 deviceTokenURI:(id)a4;
- (NSString)description;
- (id)newTransportWithExecutionContext:(id)a3;
- (unint64_t)hash;
@end

@implementation COIDSDiscoveryRecord

- (COIDSDiscoveryRecord)initWithIdsIdentifier:(id)a3 deviceTokenURI:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = COIDSDiscoveryRecord;
  v8 = [(COIDSDiscoveryRecord *)&v14 init];
  if (v8)
  {
    v9 = [v6 copy];
    IDSIdentifier = v8->_IDSIdentifier;
    v8->_IDSIdentifier = v9;

    v11 = [v7 copy];
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
  v6 = [(COIDSDiscoveryRecord *)self IDSIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, IDS: %@>", v5, self, v6];

  return v7;
}

- (BOOL)hasSameBackingDeviceAs:(id)a3
{
  v4 = a3;
  v5 = [(COIDSDiscoveryRecord *)self IDSIdentifier];
  v6 = [v4 IDSIdentifier];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(COIDSDiscoveryRecord *)self IDSIdentifier];
  v3 = [v2 hash];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v5 hash];

  return v6 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(COIDSDiscoveryRecord *)self IDSIdentifier];
      v6 = [(COIDSDiscoveryRecord *)v4 IDSIdentifier];
      v7 = [v5 isEqualToString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)newTransportWithExecutionContext:(id)a3
{
  v4 = a3;
  v5 = [(COIDSDiscoveryRecord *)self serviceDirector];
  v6 = [v5 transportWithDiscoveryRecord:self withExecutionContext:v4];

  return v6;
}

@end