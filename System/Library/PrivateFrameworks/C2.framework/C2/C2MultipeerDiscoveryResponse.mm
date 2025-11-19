@interface C2MultipeerDiscoveryResponse
- (C2MultipeerDiscoveryResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation C2MultipeerDiscoveryResponse

- (void)encodeWithCoder:(id)a3
{
  requestUUID = self->_requestUUID;
  v5 = a3;
  [v5 encodeObject:requestUUID forKey:@"requestUUID"];
  [v5 encodeObject:self->_chunkSignature forKey:@"chunkSignature"];
  [v5 encodeBool:self->_chunkAvailable forKey:@"chunkAvailable"];
}

- (C2MultipeerDiscoveryResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = C2MultipeerDiscoveryResponse;
  v5 = [(C2MultipeerDiscoveryResponse *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestUUID"];
    requestUUID = v5->_requestUUID;
    v5->_requestUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"chunkSignature"];
    chunkSignature = v5->_chunkSignature;
    v5->_chunkSignature = v8;

    v5->_chunkAvailable = [v4 decodeBoolForKey:@"chunkAvailable"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(C2MultipeerDiscoveryResponse *)self requestUUID];
  v7 = [(C2MultipeerDiscoveryResponse *)self chunkSignature];
  v8 = [(C2MultipeerDiscoveryResponse *)self chunkAvailable];
  v9 = @"N";
  if (v8)
  {
    v9 = @"Y";
  }

  v10 = [v3 stringWithFormat:@"<%@ uuid=%@ chunkSignature=%@ chunkAvailable=%@>", v5, v6, v7, v9];

  return v10;
}

@end