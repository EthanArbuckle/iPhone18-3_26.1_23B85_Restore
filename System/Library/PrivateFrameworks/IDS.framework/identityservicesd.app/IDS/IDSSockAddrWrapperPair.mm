@interface IDSSockAddrWrapperPair
+ (id)shortDescriptionForLocalAddress:(id)address remoteAddress:(id)remoteAddress;
+ (id)wrapperPairWithLocalAddress:(id)address remoteAddress:(id)remoteAddress;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToSockAddrWrapperPair:(id)pair;
- (IDSSockAddrWrapperPair)initWithLocalAddress:(id)address remoteAddress:(id)remoteAddress;
@end

@implementation IDSSockAddrWrapperPair

+ (id)wrapperPairWithLocalAddress:(id)address remoteAddress:(id)remoteAddress
{
  remoteAddressCopy = remoteAddress;
  addressCopy = address;
  v7 = [[IDSSockAddrWrapperPair alloc] initWithLocalAddress:addressCopy remoteAddress:remoteAddressCopy];

  return v7;
}

- (IDSSockAddrWrapperPair)initWithLocalAddress:(id)address remoteAddress:(id)remoteAddress
{
  addressCopy = address;
  remoteAddressCopy = remoteAddress;
  v14.receiver = self;
  v14.super_class = IDSSockAddrWrapperPair;
  v8 = [(IDSSockAddrWrapperPair *)&v14 init];
  if (v8)
  {
    v9 = [addressCopy copy];
    localAddress = v8->_localAddress;
    v8->_localAddress = v9;

    v11 = [remoteAddressCopy copy];
    remoteAddress = v8->_remoteAddress;
    v8->_remoteAddress = v11;
  }

  return v8;
}

+ (id)shortDescriptionForLocalAddress:(id)address remoteAddress:(id)remoteAddress
{
  remoteAddressCopy = remoteAddress;
  saPortHostOrder = [address saPortHostOrder];
  saPortHostOrder2 = [remoteAddressCopy saPortHostOrder];

  return [NSString stringWithFormat:@"%u:::%u", saPortHostOrder, saPortHostOrder2];
}

- (BOOL)isEqualToSockAddrWrapperPair:(id)pair
{
  pairCopy = pair;
  localAddress = self->_localAddress;
  localAddress = [pairCopy localAddress];
  if ([(IDSSockAddrWrapper *)localAddress isEqualToWrapper:localAddress])
  {
    remoteAddress = self->_remoteAddress;
    remoteAddress = [pairCopy remoteAddress];
    v9 = [(IDSSockAddrWrapper *)remoteAddress isEqualToWrapper:remoteAddress];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (v5 == objc_opt_class())
  {
    v6 = [(IDSSockAddrWrapperPair *)self isEqualToSockAddrWrapperPair:equalCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end