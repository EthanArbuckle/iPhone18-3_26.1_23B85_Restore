@interface SYSyncSessionRestartResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYSyncSessionRestartResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYSyncSessionRestartResponse;
  v4 = [(SYSyncSessionRestartResponse *)&v8 description];
  v5 = [(SYSyncSessionRestartResponse *)self dictionaryRepresentation];
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

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_accepted];
  [v3 setObject:v7 forKey:@"accepted"];

  error = self->_error;
  if (error)
  {
    v9 = [(SYErrorInfo *)error dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"error"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setHeader:self->_header];
  [v5 setSessionID:self->_sessionID];
  v4 = v5;
  v5[32] = self->_accepted;
  if (self->_error)
  {
    [v5 setError:?];
    v4 = v5;
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

  *(v5 + 32) = self->_accepted;
  v10 = [(SYErrorInfo *)self->_error copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_8;
  }

  header = self->_header;
  if (header | *(v4 + 2))
  {
    if (![(SYMessageHeader *)header isEqual:?])
    {
      goto LABEL_8;
    }
  }

  sessionID = self->_sessionID;
  if (sessionID | *(v4 + 3))
  {
    if (![(NSString *)sessionID isEqual:?])
    {
      goto LABEL_8;
    }
  }

  v7 = *(v4 + 32);
  if (self->_accepted)
  {
    if ((*(v4 + 32) & 1) == 0)
    {
LABEL_8:
      v8 = 0;
      goto LABEL_9;
    }
  }

  else if (*(v4 + 32))
  {
    goto LABEL_8;
  }

  error = self->_error;
  if (error | *(v4 + 1))
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

    [(SYSyncSessionRestartResponse *)self setHeader:?];
  }

  v4 = v9;
LABEL_7:
  if (*(v4 + 3))
  {
    [(SYSyncSessionRestartResponse *)self setSessionID:?];
    v4 = v9;
  }

  self->_accepted = *(v4 + 32);
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

    error = [(SYSyncSessionRestartResponse *)self setError:?];
  }

  v4 = v9;
LABEL_15:

  MEMORY[0x1EEE66BB8](error, v4);
}

@end