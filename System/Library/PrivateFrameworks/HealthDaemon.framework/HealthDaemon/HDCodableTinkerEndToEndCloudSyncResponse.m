@interface HDCodableTinkerEndToEndCloudSyncResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableTinkerEndToEndCloudSyncResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableTinkerEndToEndCloudSyncResponse;
  v4 = [(HDCodableTinkerEndToEndCloudSyncResponse *)&v8 description];
  v5 = [(HDCodableTinkerEndToEndCloudSyncResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier)
  {
    [v3 setObject:requestIdentifier forKey:@"requestIdentifier"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [v4 setObject:v6 forKey:@"success"];
  }

  error = self->_error;
  if (error)
  {
    v8 = [(HDCodableError *)error dictionaryRepresentation];
    [v4 setObject:v8 forKey:@"error"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_requestIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_requestIdentifier)
  {
    [v4 setRequestIdentifier:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    v4[24] = self->_success;
    v4[28] |= 1u;
  }

  if (self->_error)
  {
    [v5 setError:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestIdentifier copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  if (*&self->_has)
  {
    *(v5 + 24) = self->_success;
    *(v5 + 28) |= 1u;
  }

  v8 = [(HDCodableError *)self->_error copyWithZone:a3];
  v9 = *(v5 + 8);
  *(v5 + 8) = v8;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier | *(v4 + 2))
  {
    if (![(NSString *)requestIdentifier isEqual:?])
    {
      goto LABEL_9;
    }
  }

  v6 = *(v4 + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(v4 + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v6 = *(v4 + 24);
  if (!self->_success)
  {
LABEL_5:
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if ((*(v4 + 24) & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  error = self->_error;
  if (error | *(v4 + 1))
  {
    v8 = [(HDCodableError *)error isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestIdentifier hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_success;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(HDCodableError *)self->_error hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (*(v4 + 2))
  {
    [(HDCodableTinkerEndToEndCloudSyncResponse *)self setRequestIdentifier:?];
    v4 = v7;
  }

  if (v4[28])
  {
    self->_success = v4[24];
    *&self->_has |= 1u;
  }

  error = self->_error;
  v6 = *(v4 + 1);
  if (error)
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    error = [(HDCodableError *)error mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_11;
    }

    error = [(HDCodableTinkerEndToEndCloudSyncResponse *)self setError:?];
  }

  v4 = v7;
LABEL_11:

  MEMORY[0x2821F96F8](error, v4);
}

@end