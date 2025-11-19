@interface C2MultipeerDiscoveryRequest
- (C2MultipeerDiscoveryRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation C2MultipeerDiscoveryRequest

- (void)encodeWithCoder:(id)a3
{
  requestUUID = self->_requestUUID;
  v5 = a3;
  [v5 encodeObject:requestUUID forKey:@"requestUUID"];
  [v5 encodeObject:self->_chunkSignature forKey:@"chunkSignature"];
  [v5 encodeObject:self->_containerIdentifier forKey:@"containerIdentifier"];
}

- (C2MultipeerDiscoveryRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = C2MultipeerDiscoveryRequest;
  v5 = [(C2MultipeerDiscoveryRequest *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestUUID"];
    requestUUID = v5->_requestUUID;
    v5->_requestUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"chunkSignature"];
    chunkSignature = v5->_chunkSignature;
    v5->_chunkSignature = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"containerIdentifier"];
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
  v6 = [(C2MultipeerDiscoveryRequest *)self requestUUID];
  v7 = [(C2MultipeerDiscoveryRequest *)self chunkSignature];
  v8 = [(C2MultipeerDiscoveryRequest *)self containerIdentifier];
  v9 = [v3 stringWithFormat:@"<%@ uuid=%@ chunkSignature=%@ containerIdentifier=%@>", v5, v6, v7, v8];

  return v9;
}

@end