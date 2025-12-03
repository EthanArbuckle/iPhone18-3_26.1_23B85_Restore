@interface SYEndSyncSessionResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYEndSyncSessionResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYEndSyncSessionResponse;
  v4 = [(SYEndSyncSessionResponse *)&v8 description];
  dictionaryRepresentation = [(SYEndSyncSessionResponse *)self dictionaryRepresentation];
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

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation2 = [(SYErrorInfo *)error dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"error"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_didRollback];
    [dictionary setObject:v9 forKey:@"didRollback"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_header)
  {
    [SYEndSyncSessionResponse writeTo:];
  }

  v6 = toCopy;
  PBDataWriterWriteSubmessage();
  if (!self->_sessionID)
  {
    [SYEndSyncSessionResponse writeTo:];
  }

  PBDataWriterWriteStringField();
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    didRollback = self->_didRollback;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setHeader:self->_header];
  [toCopy setSessionID:self->_sessionID];
  if (self->_error)
  {
    [toCopy setError:?];
  }

  if (*&self->_has)
  {
    toCopy[32] = self->_didRollback;
    toCopy[36] |= 1u;
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

  v10 = [(SYErrorInfo *)self->_error copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_didRollback;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  header = self->_header;
  if (header | *(equalCopy + 2))
  {
    if (![(SYMessageHeader *)header isEqual:?])
    {
      goto LABEL_10;
    }
  }

  sessionID = self->_sessionID;
  if (sessionID | *(equalCopy + 3))
  {
    if (![(NSString *)sessionID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  error = self->_error;
  if (error | *(equalCopy + 1))
  {
    if (![(SYErrorInfo *)error isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v8 = (*(equalCopy + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    if (self->_didRollback)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_10;
    }

    v8 = 1;
  }

LABEL_11:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(SYMessageHeader *)self->_header hash];
  v4 = [(NSString *)self->_sessionID hash];
  v5 = [(SYErrorInfo *)self->_error hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_didRollback;
  }

  else
  {
    v6 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6;
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

    [(SYEndSyncSessionResponse *)self setHeader:?];
  }

  fromCopy = v9;
LABEL_7:
  if (*(fromCopy + 3))
  {
    [(SYEndSyncSessionResponse *)self setSessionID:?];
    fromCopy = v9;
  }

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

    error = [(SYEndSyncSessionResponse *)self setError:?];
  }

  fromCopy = v9;
LABEL_15:
  if (*(fromCopy + 36))
  {
    self->_didRollback = *(fromCopy + 32);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](error, fromCopy);
}

@end