@interface SYBatchChunkAck
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYBatchChunkAck

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYBatchChunkAck;
  v4 = [(SYBatchChunkAck *)&v8 description];
  dictionaryRepresentation = [(SYBatchChunkAck *)self dictionaryRepresentation];
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

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_chunkIndex];
  [dictionary setObject:v7 forKey:@"chunkIndex"];

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
    [SYBatchChunkAck writeTo:];
  }

  PBDataWriterWriteSubmessage();
  if (!self->_syncID)
  {
    [SYBatchChunkAck writeTo:];
  }

  PBDataWriterWriteStringField();
  chunkIndex = self->_chunkIndex;
  PBDataWriterWriteUint32Field();
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
  v4 = toCopy;
  toCopy[2] = self->_chunkIndex;
  if (self->_error)
  {
    [toCopy setError:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_syncID copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  *(v5 + 8) = self->_chunkIndex;
  v10 = [(SYErrorInfo *)self->_error copyWithZone:zone];
  v11 = *(v5 + 16);
  *(v5 + 16) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | equalCopy[3])) || -[SYMessageHeader isEqual:](header, "isEqual:")) && ((syncID = self->_syncID, !(syncID | equalCopy[4])) || -[NSString isEqual:](syncID, "isEqual:")) && self->_chunkIndex == *(equalCopy + 2))
  {
    error = self->_error;
    if (error | equalCopy[2])
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
  v5 = 2654435761 * self->_chunkIndex;
  return v4 ^ [(SYErrorInfo *)self->_error hash]^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v6 = *(fromCopy + 3);
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

    [(SYBatchChunkAck *)self setHeader:?];
  }

  fromCopy = v9;
LABEL_7:
  if (*(fromCopy + 4))
  {
    [(SYBatchChunkAck *)self setSyncID:?];
    fromCopy = v9;
  }

  self->_chunkIndex = *(fromCopy + 2);
  error = self->_error;
  v8 = *(fromCopy + 2);
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

    error = [(SYBatchChunkAck *)self setError:?];
  }

  fromCopy = v9;
LABEL_15:

  MEMORY[0x1EEE66BB8](error, fromCopy);
}

@end