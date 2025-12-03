@interface C2MultipeerDiscoveryResponse
- (C2MultipeerDiscoveryResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation C2MultipeerDiscoveryResponse

- (void)encodeWithCoder:(id)coder
{
  requestUUID = self->_requestUUID;
  coderCopy = coder;
  [coderCopy encodeObject:requestUUID forKey:@"requestUUID"];
  [coderCopy encodeObject:self->_chunkSignature forKey:@"chunkSignature"];
  [coderCopy encodeBool:self->_chunkAvailable forKey:@"chunkAvailable"];
}

- (C2MultipeerDiscoveryResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = C2MultipeerDiscoveryResponse;
  v5 = [(C2MultipeerDiscoveryResponse *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestUUID"];
    requestUUID = v5->_requestUUID;
    v5->_requestUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chunkSignature"];
    chunkSignature = v5->_chunkSignature;
    v5->_chunkSignature = v8;

    v5->_chunkAvailable = [coderCopy decodeBoolForKey:@"chunkAvailable"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestUUID = [(C2MultipeerDiscoveryResponse *)self requestUUID];
  chunkSignature = [(C2MultipeerDiscoveryResponse *)self chunkSignature];
  chunkAvailable = [(C2MultipeerDiscoveryResponse *)self chunkAvailable];
  v9 = @"N";
  if (chunkAvailable)
  {
    v9 = @"Y";
  }

  v10 = [v3 stringWithFormat:@"<%@ uuid=%@ chunkSignature=%@ chunkAvailable=%@>", v5, requestUUID, chunkSignature, v9];

  return v10;
}

@end