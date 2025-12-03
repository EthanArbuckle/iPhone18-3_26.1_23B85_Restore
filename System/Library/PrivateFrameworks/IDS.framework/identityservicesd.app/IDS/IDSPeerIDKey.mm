@interface IDSPeerIDKey
+ (id)peerIDKeyWithService:(id)service fromURI:(id)i toURI:(id)rI;
- (BOOL)isEqual:(id)equal;
- (IDSPeerIDKey)initWithCoder:(id)coder;
- (IDSPeerIDKey)initWithService:(id)service fromURI:(id)i toURI:(id)rI;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSPeerIDKey

- (unint64_t)hash
{
  service = [(IDSPeerIDKey *)self service];
  v4 = [service hash];
  fromURI = [(IDSPeerIDKey *)self fromURI];
  v6 = [fromURI hash] ^ v4;
  toURI = [(IDSPeerIDKey *)self toURI];
  v8 = [toURI hash];

  return v6 ^ v8;
}

+ (id)peerIDKeyWithService:(id)service fromURI:(id)i toURI:(id)rI
{
  rICopy = rI;
  iCopy = i;
  serviceCopy = service;
  v11 = [[self alloc] initWithService:serviceCopy fromURI:iCopy toURI:rICopy];

  return v11;
}

- (IDSPeerIDKey)initWithService:(id)service fromURI:(id)i toURI:(id)rI
{
  serviceCopy = service;
  iCopy = i;
  rICopy = rI;
  v11 = rICopy;
  selfCopy = 0;
  if (serviceCopy && iCopy && rICopy)
  {
    v17.receiver = self;
    v17.super_class = IDSPeerIDKey;
    v13 = [(IDSPeerIDKey *)&v17 init];
    if (v13)
    {
      v14 = [serviceCopy copy];
      service = v13->_service;
      v13->_service = v14;

      objc_storeStrong(&v13->_fromURI, i);
      objc_storeStrong(&v13->_toURI, rI);
      v13->_hasMatchingURIs = [iCopy isEqualToURI:v11];
    }

    self = v13;
    selfCopy = self;
  }

  return selfCopy;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    service = [v5 service];
    service2 = [(IDSPeerIDKey *)self service];
    if ([service isEqualToString:service2])
    {
      fromURI = [v5 fromURI];
      fromURI2 = [(IDSPeerIDKey *)self fromURI];
      if ([fromURI isEqual:fromURI2])
      {
        toURI = [v5 toURI];
        toURI2 = [(IDSPeerIDKey *)self toURI];
        v12 = [toURI isEqual:toURI2];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)description
{
  service = [(IDSPeerIDKey *)self service];
  fromURI = [(IDSPeerIDKey *)self fromURI];
  toURI = [(IDSPeerIDKey *)self toURI];
  v6 = [NSString stringWithFormat:@"<service:%@, from:%@, to:%@>", service, fromURI, toURI];

  return v6;
}

- (IDSPeerIDKey)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"fromURI"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"toURI"];

  v8 = [(IDSPeerIDKey *)self initWithService:v5 fromURI:v6 toURI:v7];
  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  service = [(IDSPeerIDKey *)self service];
  [coderCopy encodeObject:service forKey:@"service"];

  fromURI = [(IDSPeerIDKey *)self fromURI];
  [coderCopy encodeObject:fromURI forKey:@"fromURI"];

  toURI = [(IDSPeerIDKey *)self toURI];
  [coderCopy encodeObject:toURI forKey:@"toURI"];
}

@end