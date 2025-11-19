@interface SYBatchSyncStart
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SYBatchSyncStart

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SYBatchSyncStart;
  v4 = [(SYBatchSyncStart *)&v8 description];
  v5 = [(SYBatchSyncStart *)self dictionaryRepresentation];
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

  syncID = self->_syncID;
  if (syncID)
  {
    [v3 setObject:syncID forKey:@"syncID"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_estimatedChangeCount];
    [v3 setObject:v7 forKey:@"estimatedChangeCount"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if (!self->_header)
  {
    [SYBatchSyncStart writeTo:];
  }

  PBDataWriterWriteSubmessage();
  if (!self->_syncID)
  {
    [SYBatchSyncStart writeTo:];
  }

  PBDataWriterWriteStringField();
  if (*&self->_has)
  {
    estimatedChangeCount = self->_estimatedChangeCount;
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  [v4 setHeader:self->_header];
  [v4 setSyncID:self->_syncID];
  if (*&self->_has)
  {
    *(v4 + 2) = self->_estimatedChangeCount;
    *(v4 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(SYMessageHeader *)self->_header copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_syncID copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_estimatedChangeCount;
    *(v5 + 32) |= 1u;
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

  syncID = self->_syncID;
  if (syncID | *(v4 + 3))
  {
    if (![(NSString *)syncID isEqual:?])
    {
      goto LABEL_10;
    }
  }

  v7 = (*(v4 + 32) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) != 0 && self->_estimatedChangeCount == *(v4 + 2))
    {
      v7 = 1;
      goto LABEL_11;
    }

LABEL_10:
    v7 = 0;
  }

LABEL_11:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(SYMessageHeader *)self->_header hash];
  v4 = [(NSString *)self->_syncID hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_estimatedChangeCount;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  header = self->_header;
  v6 = *(v4 + 2);
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

    header = [(SYBatchSyncStart *)self setHeader:?];
  }

  v4 = v7;
LABEL_7:
  if (*(v4 + 3))
  {
    header = [(SYBatchSyncStart *)self setSyncID:?];
    v4 = v7;
  }

  if (*(v4 + 32))
  {
    self->_estimatedChangeCount = *(v4 + 2);
    *&self->_has |= 1u;
  }

  MEMORY[0x1EEE66BB8](header, v4);
}

@end