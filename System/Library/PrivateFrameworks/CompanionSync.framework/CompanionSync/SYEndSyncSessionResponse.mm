@interface SYEndSyncSessionResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYEndSyncSessionResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYEndSyncSessionResponse;
  v4 = [(SYEndSyncSessionResponse *)&v8 description];
  v5 = [(SYEndSyncSessionResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  header = self->_header;
  if (header)
  {
    v5 = [(SYMessageHeader *)header dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"header"];
  }

  sessionID = self->_sessionID;
  if (sessionID)
  {
    [v3 setObject:sessionID forKey:@"sessionID"];
  }

  error = self->_error;
  if (error)
  {
    v8 = [(SYErrorInfo *)error dictionaryRepresentation];
    [v3 setObject:v8 forKey:@"error"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_didRollback];
    [v3 setObject:v9 forKey:@"didRollback"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_header)
  {
    [SYEndSyncSessionResponse writeTo:];
  }

  v6 = v4;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setHeader:self->_header];
  [v4 setSessionID:self->_sessionID];
  if (self->_error)
  {
    [v4 setError:?];
  }

  if (*&self->_has)
  {
    v4[32] = self->_didRollback;
    v4[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_sessionID copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(SYErrorInfo *)self->_error copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  if (*&self->_has)
  {
    *(v5 + 32) = self->_didRollback;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  header = self->_header;
  if (header | *(v4 + 2))
  {
    if (![(SYMessageHeader *)header isEqual:?])
    {
      goto LABEL_10;
    }
  }

  sessionID = self->_sessionID;
  if (sessionID | *(v4 + 3))
  {
    if (![(NSString *)sessionID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  error = self->_error;
  if (error | *(v4 + 1))
  {
    if (![(SYErrorInfo *)error isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v8 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_11;
    }

    if (self->_didRollback)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (*(v4 + 32))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v6 = *(v4 + 2);
  v9 = v4;
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

  v4 = v9;
LABEL_7:
  if (*(v4 + 3))
  {
    [(SYEndSyncSessionResponse *)self setSessionID:?];
    v4 = v9;
  }

  error = self->_error;
  v8 = *(v4 + 1);
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

  v4 = v9;
LABEL_15:
  if (*(v4 + 36))
  {
    self->_didRollback = *(v4 + 32);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](error, v4);
}

@end