@interface SYStartSyncSession
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYStartSyncSession

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYStartSyncSession;
  v4 = [(SYStartSyncSession *)&v8 description];
  v5 = [(SYStartSyncSession *)self dictionaryRepresentation];
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

  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_isResetSync];
  [v3 setObject:v6 forKey:@"isResetSync"];

  sessionID = self->_sessionID;
  if (sessionID)
  {
    [v3 setObject:sessionID forKey:@"sessionID"];
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_expectsRollbackSupport];
  [v3 setObject:v8 forKey:@"expectsRollbackSupport"];

  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_expectsRestartSupport];
  [v3 setObject:v9 forKey:@"expectsRestartSupport"];

  v10 = [MEMORY[0x1E696AD98] numberWithDouble:self->_sessionTimeout];
  [v3 setObject:v10 forKey:@"sessionTimeout"];

  metadata = self->_metadata;
  if (metadata)
  {
    [v3 setObject:metadata forKey:@"metadata"];
  }

  reason = self->_reason;
  if (reason)
  {
    [v3 setObject:reason forKey:@"reason"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_header)
  {
    [SYStartSyncSession writeTo:];
  }

  v9 = v4;
  PBDataWriterWriteSubmessage();
  isResetSync = self->_isResetSync;
  PBDataWriterWriteBOOLField();
  if (!self->_sessionID)
  {
    [SYStartSyncSession writeTo:];
  }

  PBDataWriterWriteStringField();
  expectsRollbackSupport = self->_expectsRollbackSupport;
  PBDataWriterWriteBOOLField();
  expectsRestartSupport = self->_expectsRestartSupport;
  PBDataWriterWriteBOOLField();
  sessionTimeout = self->_sessionTimeout;
  PBDataWriterWriteDoubleField();
  if (self->_metadata)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_reason)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setHeader:self->_header];
  *(v5 + 50) = self->_isResetSync;
  [v5 setSessionID:self->_sessionID];
  v4 = v5;
  *(v5 + 49) = self->_expectsRollbackSupport;
  *(v5 + 48) = self->_expectsRestartSupport;
  *(v5 + 1) = *&self->_sessionTimeout;
  if (self->_metadata)
  {
    [v5 setMetadata:?];
    v4 = v5;
  }

  if (self->_reason)
  {
    [v5 setReason:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  *(v5 + 50) = self->_isResetSync;
  v8 = [(NSString *)self->_sessionID copyWithZone:a3];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  *(v5 + 49) = self->_expectsRollbackSupport;
  *(v5 + 48) = self->_expectsRestartSupport;
  *(v5 + 8) = self->_sessionTimeout;
  v10 = [(NSData *)self->_metadata copyWithZone:a3];
  v11 = *(v5 + 24);
  *(v5 + 24) = v10;

  v12 = [(NSString *)self->_reason copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  header = self->_header;
  if (header | *(v4 + 2))
  {
    if (![(SYMessageHeader *)header isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v6 = *(v4 + 50);
  if (self->_isResetSync)
  {
    if ((*(v4 + 50) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 50))
  {
    goto LABEL_23;
  }

  sessionID = self->_sessionID;
  if (sessionID | *(v4 + 5) && ![(NSString *)sessionID isEqual:?])
  {
    goto LABEL_23;
  }

  v8 = *(v4 + 49);
  if (self->_expectsRollbackSupport)
  {
    if ((*(v4 + 49) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 49))
  {
    goto LABEL_23;
  }

  v9 = *(v4 + 48);
  if (!self->_expectsRestartSupport)
  {
    if ((*(v4 + 48) & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_23:
    v12 = 0;
    goto LABEL_24;
  }

  if ((*(v4 + 48) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (self->_sessionTimeout != *(v4 + 1))
  {
    goto LABEL_23;
  }

  metadata = self->_metadata;
  if (metadata | *(v4 + 3))
  {
    if (![(NSData *)metadata isEqual:?])
    {
      goto LABEL_23;
    }
  }

  reason = self->_reason;
  if (reason | *(v4 + 4))
  {
    v12 = [(NSString *)reason isEqual:?];
  }

  else
  {
    v12 = 1;
  }

LABEL_24:

  return v12;
}

- (unint64_t)hash
{
  v3 = [(SYMessageHeader *)self->_header hash];
  isResetSync = self->_isResetSync;
  v5 = [(NSString *)self->_sessionID hash];
  sessionTimeout = self->_sessionTimeout;
  if (sessionTimeout < 0.0)
  {
    sessionTimeout = -sessionTimeout;
  }

  *v6.i64 = floor(sessionTimeout + 0.5);
  *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v7.i64[0] = vbslq_s8(vnegq_f64(v9), v7, v6).i64[0];
  v12 = (sessionTimeout - *v6.i64) * 1.84467441e19;
  v13 = 2654435761u * *v7.i64;
  v14 = v13 + v12;
  if (v12 <= 0.0)
  {
    v14 = 2654435761u * *v7.i64;
  }

  v15 = v13 - fabs(v12);
  if (v12 < 0.0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v14;
  }

  expectsRollbackSupport = self->_expectsRollbackSupport;
  expectsRestartSupport = self->_expectsRestartSupport;
  v17 = (2654435761 * isResetSync) ^ v3 ^ v5 ^ (2654435761 * expectsRollbackSupport) ^ (2654435761 * expectsRestartSupport) ^ [(NSData *)self->_metadata hash];
  return v17 ^ [(NSString *)self->_reason hash]^ v16;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v7 = v4;
  v6 = *(v4 + 2);
  if (header)
  {
    if (v6)
    {
      [(SYMessageHeader *)header mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SYStartSyncSession *)self setHeader:?];
  }

  self->_isResetSync = *(v7 + 50);
  if (*(v7 + 5))
  {
    [(SYStartSyncSession *)self setSessionID:?];
  }

  self->_expectsRollbackSupport = *(v7 + 49);
  self->_expectsRestartSupport = *(v7 + 48);
  self->_sessionTimeout = *(v7 + 1);
  if (*(v7 + 3))
  {
    [(SYStartSyncSession *)self setMetadata:?];
  }

  if (*(v7 + 4))
  {
    [(SYStartSyncSession *)self setReason:?];
  }
}

@end