@interface SYFullSyncRequestAck
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYFullSyncRequestAck

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYFullSyncRequestAck;
  v4 = [(SYFullSyncRequestAck *)&v8 description];
  v5 = [(SYFullSyncRequestAck *)self dictionaryRepresentation];
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

  requestSyncID = self->_requestSyncID;
  if (requestSyncID)
  {
    [v3 setObject:requestSyncID forKey:@"requestSyncID"];
  }

  v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_accepted];
  [v3 setObject:v7 forKey:@"accepted"];

  error = self->_error;
  if (error)
  {
    v9 = [(SYErrorInfo *)error dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"error"];
  }

  inProgressSyncID = self->_inProgressSyncID;
  if (inProgressSyncID)
  {
    [v3 setObject:inProgressSyncID forKey:@"inProgressSyncID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_header)
  {
    [SYFullSyncRequestAck writeTo:];
  }

  v6 = v4;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setHeader:self->_header];
  [v5 setRequestSyncID:self->_requestSyncID];
  v4 = v5;
  v5[40] = self->_accepted;
  if (self->_error)
  {
    [v5 setError:?];
    v4 = v5;
  }

  if (self->_inProgressSyncID)
  {
    [v5 setInProgressSyncID:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_requestSyncID copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  *(v5 + 40) = self->_accepted;
  v10 = [(SYErrorInfo *)self->_error copyWithZone:a3];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v12 = [(NSString *)self->_inProgressSyncID copyWithZone:a3];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  header = self->_header;
  if (header | *(v4 + 2))
  {
    if (![(SYMessageHeader *)header isEqual:?])
    {
      goto LABEL_14;
    }
  }

  requestSyncID = self->_requestSyncID;
  if (requestSyncID | *(v4 + 4))
  {
    if (![(NSString *)requestSyncID isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v7 = *(v4 + 40);
  if (self->_accepted)
  {
    if ((*(v4 + 40) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_14:
    v10 = 0;
    goto LABEL_15;
  }

  error = self->_error;
  if (error | *(v4 + 1) && ![(SYErrorInfo *)error isEqual:?])
  {
    goto LABEL_14;
  }

  inProgressSyncID = self->_inProgressSyncID;
  if (inProgressSyncID | *(v4 + 3))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v9 = v4;
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