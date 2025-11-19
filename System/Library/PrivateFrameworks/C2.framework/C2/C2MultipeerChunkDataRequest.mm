@interface C2MultipeerChunkDataRequest
- (C2MultipeerChunkDataRequest)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation C2MultipeerChunkDataRequest

- (void)encodeWithCoder:(id)a3
{
  requestUUID = self->_requestUUID;
  v5 = a3;
  [v5 encodeObject:requestUUID forKey:@"requestUUID"];
  [v5 encodeBool:self->_chunkDataRequested forKey:@"chunkDataRequested"];
}

- (C2MultipeerChunkDataRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = C2MultipeerChunkDataRequest;
  v5 = [(C2MultipeerChunkDataRequest *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestUUID"];
    requestUUID = v5->_requestUUID;
    v5->_requestUUID = v6;

    v5->_chunkDataRequested = [v4 decodeBoolForKey:@"chunkDataRequested"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(C2MultipeerChunkDataRequest *)self requestUUID];
  v7 = [(C2MultipeerChunkDataRequest *)self chunkDataRequested];
  v8 = @"N";
  if (v7)
  {
    v8 = @"Y";
  }

  v9 = [v3 stringWithFormat:@"<%@ uuid=%@ chunkDataRequested=%@>", v5, v6, v8];

  return v9;
}

@end