@interface NPKProtoPassSyncStateManifestEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoPassSyncStateManifestEntry

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPassSyncStateManifestEntry;
  v4 = [(NPKProtoPassSyncStateManifestEntry *)&v8 description];
  dictionaryRepresentation = [(NPKProtoPassSyncStateManifestEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  relativePath = self->_relativePath;
  if (relativePath)
  {
    [dictionary setObject:relativePath forKey:@"relativePath"];
  }

  fileHash = self->_fileHash;
  if (fileHash)
  {
    [v4 setObject:fileHash forKey:@"fileHash"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_relativePath)
  {
    [NPKProtoPassSyncStateManifestEntry writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_fileHash)
  {
    [NPKProtoPassSyncStateManifestEntry writeTo:];
  }

  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)to
{
  relativePath = self->_relativePath;
  toCopy = to;
  [toCopy setRelativePath:relativePath];
  [toCopy setFileHash:self->_fileHash];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_relativePath copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_fileHash copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((relativePath = self->_relativePath, !(relativePath | equalCopy[2])) || -[NSString isEqual:](relativePath, "isEqual:")))
  {
    fileHash = self->_fileHash;
    if (fileHash | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(NPKProtoPassSyncStateManifestEntry *)self setRelativePath:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKProtoPassSyncStateManifestEntry *)self setFileHash:?];
    fromCopy = v5;
  }
}

@end