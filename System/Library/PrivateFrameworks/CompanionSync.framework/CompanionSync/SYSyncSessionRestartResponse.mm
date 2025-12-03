@interface SYSyncSessionRestartResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYSyncSessionRestartResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYSyncSessionRestartResponse;
  v4 = [(SYSyncSessionRestartResponse *)&v8 description];
  dictionaryRepresentation = [(SYSyncSessionRestartResponse *)self dictionaryRepresentation];
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

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_accepted];
  [dictionary setObject:v7 forKey:@"accepted"];

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
    [SYSyncSessionRestartResponse writeTo:];
  }

  PBDataWriterWriteSubmessage();
  if (!self->_sessionID)
  {
    [SYSyncSessionRestartResponse writeTo:];
  }

  PBDataWriterWriteStringField();
  accepted = self->_accepted;
  PBDataWriterWriteBOOLField();
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
  toCopy[32] = self->_accepted;
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
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_sessionID copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  *(v5 + 32) = self->_accepted;
  v10 = [(SYErrorInfo *)self->_error copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  header = self->_header;
  if (header | *(equalCopy + 2))
  {
    if (![(SYMessageHeader *)header isEqual:?])
    {
      goto LABEL_8;
    }
  }

  sessionID = self->_sessionID;
  if (sessionID | *(equalCopy + 3))
  {
    if (![(NSString *)sessionID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = *(equalCopy + 32);
  if (self->_accepted)
  {
    if ((*(equalCopy + 32) & 1) == 0)
    {
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 32))
  {
    goto LABEL_8;
  }

  error = self->_error;
  if (error | *(equalCopy + 1))
  {
    v8 = [(SYErrorInfo *)error isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_9:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(SYMessageHeader *)self->_header hash];
  v4 = [(NSString *)self->_sessionID hash]^ v3;
  v5 = 2654435761 * self->_accepted;
  return v4 ^ [(SYErrorInfo *)self->_error hash]^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v6 = *(fromCopy + 2);
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

    [(SYSyncSessionRestartResponse *)self setHeader:?];
  }

  fromCopy = v9;
LABEL_7:
  if (*(fromCopy + 3))
  {
    [(SYSyncSessionRestartResponse *)self setSessionID:?];
    fromCopy = v9;
  }

  self->_accepted = *(fromCopy + 32);
  error = self->_error;
  v8 = *(fromCopy + 1);
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

    error = [(SYSyncSessionRestartResponse *)self setError:?];
  }

  fromCopy = v9;
LABEL_15:

  MEMORY[0x1EEE66BB8](error, fromCopy);
}

@end