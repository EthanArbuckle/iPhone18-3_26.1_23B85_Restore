@interface C2MultipeerChunkDataResponse
- (C2MultipeerChunkDataResponse)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation C2MultipeerChunkDataResponse

- (void)encodeWithCoder:(id)a3
{
  requestUUID = self->_requestUUID;
  v5 = a3;
  [v5 encodeObject:requestUUID forKey:@"requestUUID"];
  [v5 encodeObject:self->_chunkData forKey:@"chunkData"];
}

- (C2MultipeerChunkDataResponse)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = C2MultipeerChunkDataResponse;
  v5 = [(C2MultipeerChunkDataResponse *)&v11 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"requestUUID"];
    requestUUID = v5->_requestUUID;
    v5->_requestUUID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"chunkData"];
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
  v6 = [(C2MultipeerChunkDataResponse *)self requestUUID];
  v7 = [(C2MultipeerChunkDataResponse *)self chunkData];
  v8 = [v3 stringWithFormat:@"<%@ uuid=%@ chunkDataLength=%llu>", v5, v6, objc_msgSend(v7, "length")];

  return v8;
}

@end