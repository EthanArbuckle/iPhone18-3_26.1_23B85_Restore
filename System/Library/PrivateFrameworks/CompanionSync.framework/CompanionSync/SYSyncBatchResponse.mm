@interface SYSyncBatchResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYSyncBatchResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYSyncBatchResponse;
  v4 = [(SYSyncBatchResponse *)&v8 description];
  dictionaryRepresentation = [(SYSyncBatchResponse *)self dictionaryRepresentation];
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

  sessionID = self->_sessionID;
  if (sessionID)
  {
    [dictionary setObject:sessionID forKey:@"sessionID"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_index];
  [dictionary setObject:v7 forKey:@"index"];

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
    [SYSyncBatchResponse writeTo:];
  }

  PBDataWriterWriteSubmessage();
  if (!self->_sessionID)
  {
    [SYSyncBatchResponse writeTo:];
  }

  PBDataWriterWriteStringField();
  index = self->_index;
  PBDataWriterWriteUint64Field();
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setHeader:self->_header];
  [toCopy setSessionID:self->_sessionID];
  v4 = toCopy;
  toCopy[1] = self->_index;
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
  v7 = v5[3];
  v5[3] = v6;

  v8 = [(NSString *)self->_sessionID copyWithZone:zone];
  v9 = v5[4];
  v5[4] = v8;

  v5[1] = self->_index;
  v10 = [(SYErrorInfo *)self->_error copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | equalCopy[3])) || -[SYMessageHeader isEqual:](header, "isEqual:")) && ((sessionID = self->_sessionID, !(sessionID | equalCopy[4])) || -[NSString isEqual:](sessionID, "isEqual:")) && self->_index == equalCopy[1])
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
  v4 = [(NSString *)self->_sessionID hash]^ v3;
  v5 = 2654435761u * self->_index;
  return v4 ^ [(SYErrorInfo *)self->_error hash]^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v6 = fromCopy[3];
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

    [(SYSyncBatchResponse *)self setHeader:?];
  }

  fromCopy = v9;
LABEL_7:
  if (fromCopy[4])
  {
    [(SYSyncBatchResponse *)self setSessionID:?];
    fromCopy = v9;
  }

  self->_index = fromCopy[1];
  error = self->_error;
  v8 = fromCopy[2];
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

    error = [(SYSyncBatchResponse *)self setError:?];
  }

  fromCopy = v9;
LABEL_15:

  MEMORY[0x1EEE66BB8](error, fromCopy);
}

@end