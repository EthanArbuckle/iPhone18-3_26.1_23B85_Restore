@interface SYSyncSessionRestartRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYSyncSessionRestartRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYSyncSessionRestartRequest;
  v4 = [(SYSyncSessionRestartRequest *)&v8 description];
  v5 = [(SYSyncSessionRestartRequest *)self dictionaryRepresentation];
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

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_header)
  {
    [SYSyncSessionRestartRequest writeTo:];
  }

  v5 = v4;
  PBDataWriterWriteSubmessage();
  if (!self->_sessionID)
  {
    [SYSyncSessionRestartRequest writeTo:];
  }

  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)a3
{
  header = self->_header;
  v5 = a3;
  [v5 setHeader:header];
  [v5 setSessionID:self->_sessionID];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:a3];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_sessionID copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | v4[1])) || -[SYMessageHeader isEqual:](header, "isEqual:")))
  {
    sessionID = self->_sessionID;
    if (sessionID | v4[2])
    {
      v7 = [(NSString *)sessionID isEqual:?];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v6 = v4[1];
  v7 = v4;
  if (header)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    header = [(SYMessageHeader *)header mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    header = [(SYSyncSessionRestartRequest *)self setHeader:?];
  }

  v4 = v7;
LABEL_7:
  if (v4[2])
  {
    header = [(SYSyncSessionRestartRequest *)self setSessionID:?];
    v4 = v7;
  }

  MEMORY[0x1EEE66BB8](header, v4);
}

@end