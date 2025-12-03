@interface C2MultipeerChunkDataResponse
- (C2MultipeerChunkDataResponse)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation C2MultipeerChunkDataResponse

- (void)encodeWithCoder:(id)coder
{
  requestUUID = self->_requestUUID;
  coderCopy = coder;
  [coderCopy encodeObject:requestUUID forKey:@"requestUUID"];
  [coderCopy encodeObject:self->_chunkData forKey:@"chunkData"];
}

- (C2MultipeerChunkDataResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = C2MultipeerChunkDataResponse;
  v5 = [(C2MultipeerChunkDataResponse *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"requestUUID"];
    requestUUID = v5->_requestUUID;
    v5->_requestUUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"chunkData"];
    chunkData = v5->_chunkData;
    v5->_chunkData = v8;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  requestUUID = [(C2MultipeerChunkDataResponse *)self requestUUID];
  chunkData = [(C2MultipeerChunkDataResponse *)self chunkData];
  v8 = [v3 stringWithFormat:@"<%@ uuid=%@ chunkDataLength=%llu>", v5, requestUUID, objc_msgSend(chunkData, "length")];

  return v8;
}

@end