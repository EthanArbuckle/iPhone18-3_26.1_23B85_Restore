@interface SYStartSyncSessionResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYStartSyncSessionResponse

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYStartSyncSessionResponse;
  v4 = [(SYStartSyncSessionResponse *)&v8 description];
  dictionaryRepresentation = [(SYStartSyncSessionResponse *)self dictionaryRepresentation];
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

  v10 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsRollback];
  [dictionary setObject:v10 forKey:@"supportsRollback"];

  v11 = [MEMORY[0x1E696AD98] numberWithBool:self->_supportsRestart];
  [dictionary setObject:v11 forKey:@"supportsRestart"];

  metadata = self->_metadata;
  if (metadata)
  {
    [dictionary setObject:metadata forKey:@"metadata"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_header)
  {
    [SYStartSyncSessionResponse writeTo:];
  }

  PBDataWriterWriteSubmessage();
  if (!self->_sessionID)
  {
    [SYStartSyncSessionResponse writeTo:];
  }

  PBDataWriterWriteStringField();
  accepted = self->_accepted;
  PBDataWriterWriteBOOLField();
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }

  supportsRollback = self->_supportsRollback;
  PBDataWriterWriteBOOLField();
  supportsRestart = self->_supportsRestart;
  PBDataWriterWriteBOOLField();
  if (self->_metadata)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setHeader:self->_header];
  [toCopy setSessionID:self->_sessionID];
  v4 = toCopy;
  toCopy[40] = self->_accepted;
  if (self->_error)
  {
    [toCopy setError:?];
    v4 = toCopy;
  }

  v4[42] = self->_supportsRollback;
  v4[41] = self->_supportsRestart;
  if (self->_metadata)
  {
    [toCopy setMetadata:?];
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
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  *(v5 + 40) = self->_accepted;
  v10 = [(SYErrorInfo *)self->_error copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  *(v5 + 42) = self->_supportsRollback;
  *(v5 + 41) = self->_supportsRestart;
  v12 = [(NSData *)self->_metadata copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  header = self->_header;
  if (header | *(equalCopy + 2))
  {
    if (![(SYMessageHeader *)header isEqual:?])
    {
      goto LABEL_18;
    }
  }

  sessionID = self->_sessionID;
  if (sessionID | *(equalCopy + 4))
  {
    if (![(NSString *)sessionID isEqual:?])
    {
      goto LABEL_18;
    }
  }

  v7 = *(equalCopy + 40);
  if (self->_accepted)
  {
    if ((*(equalCopy + 40) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_18;
  }

  error = self->_error;
  if (error | *(equalCopy + 1) && ![(SYErrorInfo *)error isEqual:?])
  {
    goto LABEL_18;
  }

  v9 = *(equalCopy + 42);
  if (!self->_supportsRollback)
  {
    if ((*(equalCopy + 42) & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    v11 = 0;
    goto LABEL_19;
  }

  if ((*(equalCopy + 42) & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_16:
  v10 = *(equalCopy + 41);
  if (self->_supportsRestart)
  {
    if ((*(equalCopy + 41) & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 41))
  {
    goto LABEL_18;
  }

  metadata = self->_metadata;
  if (metadata | *(equalCopy + 3))
  {
    v11 = [(NSData *)metadata isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_19:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(SYMessageHeader *)self->_header hash];
  v4 = [(NSString *)self->_sessionID hash]^ v3;
  v5 = 2654435761 * self->_accepted;
  v6 = v4 ^ [(SYErrorInfo *)self->_error hash]^ v5 ^ (2654435761 * self->_supportsRollback) ^ (2654435761 * self->_supportsRestart);
  return v6 ^ [(NSData *)self->_metadata hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  header = self->_header;
  v9 = fromCopy;
  v6 = *(fromCopy + 2);
  if (header)
  {
    if (v6)
    {
      [(SYMessageHeader *)header mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(SYStartSyncSessionResponse *)self setHeader:?];
  }

  if (*(v9 + 4))
  {
    [(SYStartSyncSessionResponse *)self setSessionID:?];
  }

  self->_accepted = *(v9 + 40);
  error = self->_error;
  v8 = *(v9 + 1);
  if (error)
  {
    if (v8)
    {
      [(SYErrorInfo *)error mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(SYStartSyncSessionResponse *)self setError:?];
  }

  self->_supportsRollback = *(v9 + 42);
  self->_supportsRestart = *(v9 + 41);
  if (*(v9 + 3))
  {
    [(SYStartSyncSessionResponse *)self setMetadata:?];
  }
}

@end