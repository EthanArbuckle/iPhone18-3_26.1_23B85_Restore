@interface SYSyncSessionRestartRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYSyncSessionRestartRequest

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYSyncSessionRestartRequest;
  v4 = [(SYSyncSessionRestartRequest *)&v8 description];
  dictionaryRepresentation = [(SYSyncSessionRestartRequest *)self dictionaryRepresentation];
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

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_header)
  {
    [SYSyncSessionRestartRequest writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
  if (!self->_sessionID)
  {
    [SYSyncSessionRestartRequest writeTo:];
  }

  PBDataWriterWriteStringField();
}

- (void)copyTo:(id)to
{
  header = self->_header;
  toCopy = to;
  [toCopy setHeader:header];
  [toCopy setSessionID:self->_sessionID];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_sessionID copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((header = self->_header, !(header | equalCopy[1])) || -[SYMessageHeader isEqual:](header, "isEqual:")))
  {
    sessionID = self->_sessionID;
    if (sessionID | equalCopy[2])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v6 = fromCopy[1];
  v7 = fromCopy;
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

  fromCopy = v7;
LABEL_7:
  if (fromCopy[2])
  {
    header = [(SYSyncSessionRestartRequest *)self setSessionID:?];
    fromCopy = v7;
  }

  MEMORY[0x1EEE66BB8](header, fromCopy);
}

@end