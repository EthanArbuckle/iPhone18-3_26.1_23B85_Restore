@interface SYBatchSyncEnd
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYBatchSyncEnd

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYBatchSyncEnd;
  v4 = [(SYBatchSyncEnd *)&v8 description];
  dictionaryRepresentation = [(SYBatchSyncEnd *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  header = self->_header;
  if (header)
  {
    dictionaryRepresentation = [(SYMessageHeader *)header dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"header"];
  }

  syncID = self->_syncID;
  if (syncID)
  {
    [dictionary setObject:syncID forKey:@"syncID"];
  }

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation2 = [(SYErrorInfo *)error dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"error"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_header)
  {
    [SYBatchSyncEnd writeTo:];
  }

  PBDataWriterWriteSubmessage();
  if (!self->_syncID)
  {
    [SYBatchSyncEnd writeTo:];
  }

  PBDataWriterWriteStringField();
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setHeader:self->_header];
  [toCopy setSyncID:self->_syncID];
  if (self->_error)
  {
    [toCopy setError:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_syncID copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(SYErrorInfo *)self->_error copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | equalCopy[2])) || -[SYMessageHeader isEqual:](header, "isEqual:")) && ((syncID = self->_syncID, !(syncID | equalCopy[3])) || -[NSString isEqual:](syncID, "isEqual:")))
  {
    error = self->_error;
    if (error | equalCopy[1])
    {
      v8 = [(SYErrorInfo *)error isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(SYMessageHeader *)self->_header hash];
  v4 = [(NSString *)self->_syncID hash]^ v3;
  return v4 ^ [(SYErrorInfo *)self->_error hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v6 = fromCopy[2];
  v9 = fromCopy;
  if (header)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SYMessageHeader *)header mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    [(SYBatchSyncEnd *)self setHeader:?];
  }

  fromCopy = v9;
LABEL_7:
  if (fromCopy[3])
  {
    [(SYBatchSyncEnd *)self setSyncID:?];
    fromCopy = v9;
  }

  error = self->_error;
  v8 = fromCopy[1];
  if (error)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    error = [(SYErrorInfo *)error mergeFrom:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    error = [(SYBatchSyncEnd *)self setError:?];
  }

  fromCopy = v9;
LABEL_15:

  MEMORY[0x1EEE66BB8](error, fromCopy);
}

@end