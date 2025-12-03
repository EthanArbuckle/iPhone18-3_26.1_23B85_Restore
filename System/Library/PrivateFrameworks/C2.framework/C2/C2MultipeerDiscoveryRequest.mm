@interface C2MultipeerDiscoveryRequest
- (C2MultipeerDiscoveryRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation C2MultipeerDiscoveryRequest

- (void)encodeWithCoder:(id)coder
{
  requestUUID = self->_requestUUID;
  coderCopy = coder;
  [coderCopy encodeObject:requestUUID forKey:@"requestUUID"];
  [coderCopy encodeObject:self->_chunkSignature forKey:@"chunkSignature"];
  [coderCopy encodeObject:self->_containerIdentifier forKey:@"containerIdentifier"];
}

- (C2MultipeerDiscoveryRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = C2MultipeerDiscoveryRequest;
  v5 = [(C2MultipeerDiscoveryRequest *)&v13 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestUUID"];
    requestUUID = v5->_requestUUID;
    v5->_requestUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chunkSignature"];
    chunkSignature = v5->_chunkSignature;
    v5->_chunkSignature = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
    containerIdentifier = v5->_containerIdentifier;
    v5->_containerIdentifier = v10;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestUUID = [(C2MultipeerDiscoveryRequest *)self requestUUID];
  chunkSignature = [(C2MultipeerDiscoveryRequest *)self chunkSignature];
  containerIdentifier = [(C2MultipeerDiscoveryRequest *)self containerIdentifier];
  v9 = [v3 stringWithFormat:@"<%@ uuid=%@ chunkSignature=%@ containerIdentifier=%@>", v5, requestUUID, chunkSignature, containerIdentifier];

  return v9;
}

@end