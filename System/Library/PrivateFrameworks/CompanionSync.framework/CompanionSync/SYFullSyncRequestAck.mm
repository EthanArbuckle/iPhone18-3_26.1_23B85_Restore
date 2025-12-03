@interface SYFullSyncRequestAck
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SYFullSyncRequestAck

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYFullSyncRequestAck;
  v4 = [(SYFullSyncRequestAck *)&v8 description];
  dictionaryRepresentation = [(SYFullSyncRequestAck *)self dictionaryRepresentation];
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

  requestSyncID = self->_requestSyncID;
  if (requestSyncID)
  {
    [dictionary setObject:requestSyncID forKey:@"requestSyncID"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_accepted];
  [dictionary setObject:v7 forKey:@"accepted"];

  error = self->_error;
  if (error)
  {
    dictionaryRepresentation2 = [(SYErrorInfo *)error dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"error"];
  }

  inProgressSyncID = self->_inProgressSyncID;
  if (inProgressSyncID)
  {
    [dictionary setObject:inProgressSyncID forKey:@"inProgressSyncID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_header)
  {
    [SYFullSyncRequestAck writeTo:];
  }

  v6 = toCopy;
  PBDataWriterWriteSubmessage();
  if (!self->_requestSyncID)
  {
    [SYFullSyncRequestAck writeTo:];
  }

  PBDataWriterWriteStringField();
  accepted = self->_accepted;
  PBDataWriterWriteBOOLField();
  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_inProgressSyncID)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setHeader:self->_header];
  [toCopy setRequestSyncID:self->_requestSyncID];
  v4 = toCopy;
  toCopy[40] = self->_accepted;
  if (self->_error)
  {
    [toCopy setError:?];
    v4 = toCopy;
  }

  if (self->_inProgressSyncID)
  {
    [toCopy setInProgressSyncID:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_requestSyncID copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  *(v5 + 40) = self->_accepted;
  v10 = [(SYErrorInfo *)self->_error copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NSString *)self->_inProgressSyncID copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  header = self->_header;
  if (header | *(equalCopy + 2))
  {
    if (![(SYMessageHeader *)header isEqual:?])
    {
      goto LABEL_14;
    }
  }

  requestSyncID = self->_requestSyncID;
  if (requestSyncID | *(equalCopy + 4))
  {
    if (![(NSString *)requestSyncID isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v7 = *(equalCopy + 40);
  if (self->_accepted)
  {
    if ((*(equalCopy + 40) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 40))
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  error = self->_error;
  if (error | *(equalCopy + 1) && ![(SYErrorInfo *)error isEqual:?])
  {
    goto LABEL_14;
  }

  inProgressSyncID = self->_inProgressSyncID;
  if (inProgressSyncID | *(equalCopy + 3))
  {
    v10 = [(NSString *)inProgressSyncID isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_15:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(SYMessageHeader *)self->_header hash];
  v4 = [(NSString *)self->_requestSyncID hash]^ v3;
  v5 = 2654435761 * self->_accepted;
  v6 = v4 ^ [(SYErrorInfo *)self->_error hash];
  return v6 ^ [(NSString *)self->_inProgressSyncID hash]^ v5;
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
    [(SYFullSyncRequestAck *)self setHeader:?];
  }

  if (*(v9 + 4))
  {
    [(SYFullSyncRequestAck *)self setRequestSyncID:?];
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
    [(SYFullSyncRequestAck *)self setError:?];
  }

  if (*(v9 + 3))
  {
    [(SYFullSyncRequestAck *)self setInProgressSyncID:?];
  }
}

@end