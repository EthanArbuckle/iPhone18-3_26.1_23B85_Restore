@interface NPKProtoReclaimUnusedSEMemoryResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoReclaimUnusedSEMemoryResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoReclaimUnusedSEMemoryResponse;
  v4 = [(NPKProtoReclaimUnusedSEMemoryResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoReclaimUnusedSEMemoryResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  snapshotData = self->_snapshotData;
  if (snapshotData)
  {
    [dictionary setObject:snapshotData forKey:@"snapshotData"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v4 setObject:errorData forKey:@"errorData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_snapshotData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_snapshotData)
  {
    [toCopy setSnapshotData:?];
    toCopy = v5;
  }

  if (self->_errorData)
  {
    [v5 setErrorData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_snapshotData copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_errorData copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((snapshotData = self->_snapshotData, !(snapshotData | equalCopy[2])) || -[NSData isEqual:](snapshotData, "isEqual:")))
  {
    errorData = self->_errorData;
    if (errorData | equalCopy[1])
    {
      v7 = [(NSData *)errorData isEqual:?];
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
    [(NPKProtoReclaimUnusedSEMemoryResponse *)self setSnapshotData:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKProtoReclaimUnusedSEMemoryResponse *)self setErrorData:?];
    fromCopy = v5;
  }
}

@end