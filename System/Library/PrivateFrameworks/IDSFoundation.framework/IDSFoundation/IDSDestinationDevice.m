@interface IDSDestinationDevice
- (IDSDestinationDevice)initWithCoder:(id)a3;
- (IDSDestinationDevice)initWithDeviceURI:(id)a3;
- (IDSDestinationDevice)initWithIDSDeviceURI:(id)a3;
- (IDSDestinationDevice)initWithRapportPublicIdentifierURI:(id)a3;
- (IDSDestinationDevice)initWithURI:(id)a3 isGuest:(BOOL)a4;
- (id)description;
- (id)destinationURIs;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSDestinationDevice

- (id)destinationURIs
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = [(IDSDestinationDevice *)self destinationURI];
  v4 = [v3 prefixedURI];
  v5 = [v2 setWithObject:v4];

  return v5;
}

- (IDSDestinationDevice)initWithRapportPublicIdentifierURI:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"guest-device:"])
  {
    v5 = [[IDSURI alloc] initWithPrefixedURI:v4];
    self = [(IDSDestinationDevice *)self initWithURI:v5 isGuest:1];

    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (IDSDestinationDevice)initWithIDSDeviceURI:(id)a3
{
  v4 = a3;
  if (([v4 hasPrefix:@"device:"] & 1) != 0 || objc_msgSend(v4, "hasPrefix:", @"self-token:"))
  {
    v5 = [[IDSURI alloc] initWithPrefixedURI:v4];
    self = [(IDSDestinationDevice *)self initWithURI:v5 isGuest:0];

    v6 = self;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (IDSDestinationDevice)initWithDeviceURI:(id)a3
{
  v4 = a3;
  if ([v4 hasPrefix:@"guest-device:"])
  {
    self = [(IDSDestinationDevice *)self initWithRapportPublicIdentifierURI:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (IDSDestinationDevice)initWithURI:(id)a3 isGuest:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = IDSDestinationDevice;
  v8 = [(IDSDestinationDevice *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_destinationURI, a3);
    v9->_isGuest = a4;
  }

  return v9;
}

- (IDSDestinationDevice)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kURIKey"];
  v6 = [v4 decodeBoolForKey:@"kIsGuestKey"];

  v7 = [(IDSDestinationDevice *)self initWithURI:v5 isGuest:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(IDSDestinationDevice *)self destinationURI];
  [v5 encodeObject:v4 forKey:@"kURIKey"];

  [v5 encodeBool:-[IDSDestinationDevice isGuest](self forKey:{"isGuest"), @"kIsGuestKey"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(IDSDestinationDevice *)self destinationURI];
  v7 = [(IDSDestinationDevice *)self isGuest];
  v8 = @"NO";
  if (v7)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@:%p uri: %@ isGuest: %@>", v5, self, v6, v8];

  return v9;
}

@end