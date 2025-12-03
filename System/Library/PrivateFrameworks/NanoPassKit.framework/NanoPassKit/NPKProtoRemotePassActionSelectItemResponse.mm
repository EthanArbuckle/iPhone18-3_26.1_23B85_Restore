@interface NPKProtoRemotePassActionSelectItemResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsResult:(id)result;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoRemotePassActionSelectItemResponse

- (int)StringAsResult:(id)result
{
  resultCopy = result;
  if ([resultCopy isEqualToString:@"Unknown"])
  {
    v4 = 0;
  }

  else if ([resultCopy isEqualToString:@"Successful"])
  {
    v4 = 1;
  }

  else if ([resultCopy isEqualToString:@"Fail"])
  {
    v4 = 2;
  }

  else if ([resultCopy isEqualToString:@"Reject"])
  {
    v4 = 3;
  }

  else if ([resultCopy isEqualToString:@"Unsupported"])
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
  v8.super_class = NPKProtoRemotePassActionSelectItemResponse;
  v4 = [(NPKProtoRemotePassActionSelectItemResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoRemotePassActionSelectItemResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  requestUniqueID = self->_requestUniqueID;
  if (requestUniqueID)
  {
    [dictionary setObject:requestUniqueID forKey:@"requestUniqueID"];
  }

  v6 = self->_result;
  if (v6 >= 5)
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_result];
  }

  else
  {
    v7 = off_279945978[v6];
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

  serviceProviderDataData = self->_serviceProviderDataData;
  if (serviceProviderDataData)
  {
    [v4 setObject:serviceProviderDataData forKey:@"serviceProviderDataData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_requestUniqueID)
  {
    [NPKProtoRemotePassActionSelectItemResponse writeTo:];
  }

  v8 = toCopy;
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

  v7 = v8;
  if (self->_serviceProviderDataData)
  {
    PBDataWriterWriteDataField();
    v7 = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setRequestUniqueID:self->_requestUniqueID];
  v4 = toCopy;
  toCopy[8] = self->_result;
  if (self->_incrementCurrency)
  {
    [toCopy setIncrementCurrency:?];
    v4 = toCopy;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = self->_incrementAmount;
    *(v4 + 48) |= 1u;
  }

  if (self->_serviceProviderDataData)
  {
    [toCopy setServiceProviderDataData:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestUniqueID copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  *(v5 + 32) = self->_result;
  v8 = [(NSString *)self->_incrementCurrency copyWithZone:zone];
  v9 = *(v5 + 16);
  *(v5 + 16) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_incrementAmount;
    *(v5 + 48) |= 1u;
  }

  v10 = [(NSData *)self->_serviceProviderDataData copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  requestUniqueID = self->_requestUniqueID;
  if (requestUniqueID | *(equalCopy + 3))
  {
    if (![(NSString *)requestUniqueID isEqual:?])
    {
      goto LABEL_14;
    }
  }

  if (self->_result != *(equalCopy + 8))
  {
    goto LABEL_14;
  }

  incrementCurrency = self->_incrementCurrency;
  if (incrementCurrency | *(equalCopy + 2))
  {
    if (![(NSString *)incrementCurrency isEqual:?])
    {
      goto LABEL_14;
    }
  }

  v7 = *(equalCopy + 48);
  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_incrementAmount != *(equalCopy + 1))
    {
      goto LABEL_14;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_14:
    v9 = 0;
    goto LABEL_15;
  }

  serviceProviderDataData = self->_serviceProviderDataData;
  if (serviceProviderDataData | *(equalCopy + 5))
  {
    v9 = [(NSData *)serviceProviderDataData isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_15:

  return v9;
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

  return (2654435761 * v4) ^ v3 ^ v5 ^ v6 ^ [(NSData *)self->_serviceProviderDataData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 3))
  {
    [(NPKProtoRemotePassActionSelectItemResponse *)self setRequestUniqueID:?];
    fromCopy = v5;
  }

  self->_result = *(fromCopy + 8);
  if (*(fromCopy + 2))
  {
    [(NPKProtoRemotePassActionSelectItemResponse *)self setIncrementCurrency:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 48))
  {
    self->_incrementAmount = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 5))
  {
    [(NPKProtoRemotePassActionSelectItemResponse *)self setServiceProviderDataData:?];
    fromCopy = v5;
  }
}

@end