@interface IDSDestinationDevice
- (IDSDestinationDevice)initWithCoder:(id)coder;
- (IDSDestinationDevice)initWithDeviceURI:(id)i;
- (IDSDestinationDevice)initWithIDSDeviceURI:(id)i;
- (IDSDestinationDevice)initWithRapportPublicIdentifierURI:(id)i;
- (IDSDestinationDevice)initWithURI:(id)i isGuest:(BOOL)guest;
- (id)description;
- (id)destinationURIs;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSDestinationDevice

- (id)destinationURIs
{
  v2 = MEMORY[0x1E695DFD8];
  destinationURI = [(IDSDestinationDevice *)self destinationURI];
  prefixedURI = [destinationURI prefixedURI];
  v5 = [v2 setWithObject:prefixedURI];

  return v5;
}

- (IDSDestinationDevice)initWithRapportPublicIdentifierURI:(id)i
{
  iCopy = i;
  if ([iCopy hasPrefix:@"guest-device:"])
  {
    v5 = [[IDSURI alloc] initWithPrefixedURI:iCopy];
    self = [(IDSDestinationDevice *)self initWithURI:v5 isGuest:1];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IDSDestinationDevice)initWithIDSDeviceURI:(id)i
{
  iCopy = i;
  if (([iCopy hasPrefix:@"device:"] & 1) != 0 || objc_msgSend(iCopy, "hasPrefix:", @"self-token:"))
  {
    v5 = [[IDSURI alloc] initWithPrefixedURI:iCopy];
    self = [(IDSDestinationDevice *)self initWithURI:v5 isGuest:0];

    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IDSDestinationDevice)initWithDeviceURI:(id)i
{
  iCopy = i;
  if ([iCopy hasPrefix:@"guest-device:"])
  {
    self = [(IDSDestinationDevice *)self initWithRapportPublicIdentifierURI:iCopy];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (IDSDestinationDevice)initWithURI:(id)i isGuest:(BOOL)guest
{
  iCopy = i;
  v11.receiver = self;
  v11.super_class = IDSDestinationDevice;
  v8 = [(IDSDestinationDevice *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_destinationURI, i);
    v9->_isGuest = guest;
  }

  return v9;
}

- (IDSDestinationDevice)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kURIKey"];
  v6 = [coderCopy decodeBoolForKey:@"kIsGuestKey"];

  v7 = [(IDSDestinationDevice *)self initWithURI:v5 isGuest:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  destinationURI = [(IDSDestinationDevice *)self destinationURI];
  [coderCopy encodeObject:destinationURI forKey:@"kURIKey"];

  [coderCopy encodeBool:-[IDSDestinationDevice isGuest](self forKey:{"isGuest"), @"kIsGuestKey"}];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  destinationURI = [(IDSDestinationDevice *)self destinationURI];
  isGuest = [(IDSDestinationDevice *)self isGuest];
  v8 = @"NO";
  if (isGuest)
  {
    v8 = @"YES";
  }

  v9 = [v3 stringWithFormat:@"<%@:%p uri: %@ isGuest: %@>", v5, self, destinationURI, v8];

  return v9;
}

@end