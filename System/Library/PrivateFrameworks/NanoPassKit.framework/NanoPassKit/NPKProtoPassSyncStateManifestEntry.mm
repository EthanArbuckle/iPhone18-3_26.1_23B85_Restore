@interface NPKProtoPassSyncStateManifestEntry
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoPassSyncStateManifestEntry

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPassSyncStateManifestEntry;
  v4 = [(NPKProtoPassSyncStateManifestEntry *)&v8 description];
  v5 = [(NPKProtoPassSyncStateManifestEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  relativePath = self->_relativePath;
  if (relativePath)
  {
    [v3 setObject:relativePath forKey:@"relativePath"];
  }

  fileHash = self->_fileHash;
  if (fileHash)
  {
    [v4 setObject:fileHash forKey:@"fileHash"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_relativePath)
  {
    [NPKProtoPassSyncStateManifestEntry writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteStringField();
  if (!self->_fileHash)
  {
    [NPKProtoPassSyncStateManifestEntry writeTo:];
  }

  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)a3
{
  relativePath = self->_relativePath;
  v5 = a3;
  [v5 setRelativePath:relativePath];
  [v5 setFileHash:self->_fileHash];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_relativePath copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_fileHash copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((relativePath = self->_relativePath, !(relativePath | v4[2])) || -[NSString isEqual:](relativePath, "isEqual:")))
  {
    fileHash = self->_fileHash;
    if (fileHash | v4[1])
    {
      v7 = [(NSString *)fileHash isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(NPKProtoPassSyncStateManifestEntry *)self setRelativePath:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKProtoPassSyncStateManifestEntry *)self setFileHash:?];
    v4 = v5;
  }
}

@end