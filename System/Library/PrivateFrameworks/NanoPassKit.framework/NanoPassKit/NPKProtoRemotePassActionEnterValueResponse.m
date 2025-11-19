@interface NPKProtoRemotePassActionEnterValueResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsResult:(id)a3;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoRemotePassActionEnterValueResponse

- (int)StringAsResult:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"Successful"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"Fail"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"Reject"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"Unsupported"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRemotePassActionEnterValueResponse;
  v4 = [(NPKProtoRemotePassActionEnterValueResponse *)&v8 description];
  v5 = [(NPKProtoRemotePassActionEnterValueResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  requestUniqueID = self->_requestUniqueID;
  if (requestUniqueID)
  {
    [v3 setObject:requestUniqueID forKey:@"requestUniqueID"];
  }

  v6 = self->_result;
  if (v6 >= 5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_result];
  }

  else
  {
    v7 = off_279949230[v6];
  }

  [v4 setObject:v7 forKey:@"result"];

  incrementCurrency = self->_incrementCurrency;
  if (incrementCurrency)
  {
    [v4 setObject:incrementCurrency forKey:@"incrementCurrency"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_incrementAmount];
    [v4 setObject:v9 forKey:@"incrementAmount"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  if (!self->_requestUniqueID)
  {
    [NPKProtoRemotePassActionEnterValueResponse writeTo:];
  }

  v7 = v4;
  PBDataWriterWriteStringField();
  result = self->_result;
  PBDataWriterWriteInt32Field();
  if (self->_incrementCurrency)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    incrementAmount = self->_incrementAmount;
    PBDataWriterWriteSint64Field();
  }
}

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setRequestUniqueID:self->_requestUniqueID];
  v4 = v5;
  v5[8] = self->_result;
  if (self->_incrementCurrency)
  {
    [v5 setIncrementCurrency:?];
    v4 = v5;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_incrementAmount;
    *(v4 + 36) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestUniqueID copyWithZone:a3];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 32) = self->_result;
  v8 = [(NSString *)self->_incrementCurrency copyWithZone:a3];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_incrementAmount;
    *(v5 + 36) |= 1u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  requestUniqueID = self->_requestUniqueID;
  if (requestUniqueID | *(v4 + 3))
  {
    if (![(NSString *)requestUniqueID isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (self->_result != *(v4 + 8))
  {
    goto LABEL_11;
  }

  incrementCurrency = self->_incrementCurrency;
  if (incrementCurrency | *(v4 + 2))
  {
    if (![(NSString *)incrementCurrency isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v7 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) != 0 && self->_incrementAmount == *(v4 + 1))
    {
      v7 = 1;
      goto LABEL_12;
    }

LABEL_11:
    v7 = 0;
  }

LABEL_12:

  return v7;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestUniqueID hash];
  v4 = self->_result;
  v5 = [(NSString *)self->_incrementCurrency hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_incrementAmount;
  }

  else
  {
    v6 = 0;
  }

  return (2654435761 * v4) ^ v3 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (*(v4 + 3))
  {
    [(NPKProtoRemotePassActionEnterValueResponse *)self setRequestUniqueID:?];
    v4 = v5;
  }

  self->_result = *(v4 + 8);
  if (*(v4 + 2))
  {
    [(NPKProtoRemotePassActionEnterValueResponse *)self setIncrementCurrency:?];
    v4 = v5;
  }

  if (*(v4 + 36))
  {
    self->_incrementAmount = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end