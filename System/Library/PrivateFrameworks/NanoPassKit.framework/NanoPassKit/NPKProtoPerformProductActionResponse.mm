@interface NPKProtoPerformProductActionResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoPerformProductActionResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoPerformProductActionResponse;
  v4 = [(NPKProtoPerformProductActionResponse *)&v8 description];
  v5 = [(NPKProtoPerformProductActionResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [v3 setObject:v4 forKey:@"pending"];
  }

  availableProductsData = self->_availableProductsData;
  if (availableProductsData)
  {
    [v3 setObject:availableProductsData forKey:@"availableProductsData"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v3 setObject:errorData forKey:@"errorData"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_availableProductsData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[24] = self->_pending;
    v4[28] |= 1u;
  }

  v5 = v4;
  if (self->_availableProductsData)
  {
    [v4 setAvailableProductsData:?];
    v4 = v5;
  }

  if (self->_errorData)
  {
    [v5 setErrorData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_pending;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSData *)self->_availableProductsData copyWithZone:a3];
  v8 = v6[1];
  v6[1] = v7;

  v9 = [(NSData *)self->_errorData copyWithZone:a3];
  v10 = v6[2];
  v6[2] = v9;

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = *(v4 + 24);
    if (self->_pending)
    {
      if (*(v4 + 24))
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  availableProductsData = self->_availableProductsData;
  if (availableProductsData | *(v4 + 1) && ![(NSData *)availableProductsData isEqual:?])
  {
    goto LABEL_9;
  }

  errorData = self->_errorData;
  if (errorData | *(v4 + 2))
  {
    v8 = [(NSData *)errorData isEqual:?];
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
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_pending;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSData *)self->_availableProductsData hash]^ v3;
  return v4 ^ [(NSData *)self->_errorData hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[28])
  {
    self->_pending = v4[24];
    *&self->_has |= 1u;
  }

  v5 = v4;
  if (*(v4 + 1))
  {
    [(NPKProtoPerformProductActionResponse *)self setAvailableProductsData:?];
    v4 = v5;
  }

  if (*(v4 + 2))
  {
    [(NPKProtoPerformProductActionResponse *)self setErrorData:?];
    v4 = v5;
  }
}

@end