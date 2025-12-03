@interface C2MultipeerChunkDataRequest
- (C2MultipeerChunkDataRequest)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation C2MultipeerChunkDataRequest

- (void)encodeWithCoder:(id)coder
{
  requestUUID = self->_requestUUID;
  coderCopy = coder;
  [coderCopy encodeObject:requestUUID forKey:@"requestUUID"];
  [coderCopy encodeBool:self->_chunkDataRequested forKey:@"chunkDataRequested"];
}

- (C2MultipeerChunkDataRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = C2MultipeerChunkDataRequest;
  v5 = [(C2MultipeerChunkDataRequest *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestUUID"];
    requestUUID = v5->_requestUUID;
    v5->_requestUUID = v6;

    v5->_chunkDataRequested = [coderCopy decodeBoolForKey:@"chunkDataRequested"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestUUID = [(C2MultipeerChunkDataRequest *)self requestUUID];
  chunkDataRequested = [(C2MultipeerChunkDataRequest *)self chunkDataRequested];
  v8 = @"N";
  if (chunkDataRequested)
  {
    v8 = @"Y";
  }

  v9 = [v3 stringWithFormat:@"<%@ uuid=%@ chunkDataRequested=%@>", v5, requestUUID, v8];

  return v9;
}

@end