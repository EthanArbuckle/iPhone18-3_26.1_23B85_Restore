@interface NPKProtoRemotePassActionEnterValueRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoRemotePassActionEnterValueRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRemotePassActionEnterValueRequest;
  v4 = [(NPKProtoRemotePassActionEnterValueRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoRemotePassActionEnterValueRequest *)self dictionaryRepresentation];
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

  balanceIdentifier = self->_balanceIdentifier;
  if (balanceIdentifier)
  {
    [v4 setObject:balanceIdentifier forKey:@"balanceIdentifier"];
  }

  balanceLabel = self->_balanceLabel;
  if (balanceLabel)
  {
    [v4 setObject:balanceLabel forKey:@"balanceLabel"];
  }

  currentBalanceCurrency = self->_currentBalanceCurrency;
  if (currentBalanceCurrency)
  {
    [v4 setObject:currentBalanceCurrency forKey:@"currentBalanceCurrency"];
  }

  v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_currentBalanceAmount];
  [v4 setObject:v9 forKey:@"currentBalanceAmount"];

  paymentPassActionData = self->_paymentPassActionData;
  if (paymentPassActionData)
  {
    [v4 setObject:paymentPassActionData forKey:@"paymentPassActionData"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_requestUniqueID)
  {
    [NPKProtoRemotePassActionEnterValueRequest writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_balanceIdentifier)
  {
    [NPKProtoRemotePassActionEnterValueRequest writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_balanceLabel)
  {
    [NPKProtoRemotePassActionEnterValueRequest writeTo:];
  }

  PBDataWriterWriteStringField();
  if (!self->_currentBalanceCurrency)
  {
    [NPKProtoRemotePassActionEnterValueRequest writeTo:];
  }

  PBDataWriterWriteStringField();
  currentBalanceAmount = self->_currentBalanceAmount;
  PBDataWriterWriteSint64Field();
  if (self->_paymentPassActionData)
  {
    PBDataWriterWriteDataField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setRequestUniqueID:self->_requestUniqueID];
  [toCopy setBalanceIdentifier:self->_balanceIdentifier];
  [toCopy setBalanceLabel:self->_balanceLabel];
  [toCopy setCurrentBalanceCurrency:self->_currentBalanceCurrency];
  v4 = toCopy;
  toCopy[1] = self->_currentBalanceAmount;
  if (self->_paymentPassActionData)
  {
    [toCopy setPaymentPassActionData:?];
    v4 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_requestUniqueID copyWithZone:zone];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(NSString *)self->_balanceIdentifier copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_balanceLabel copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_currentBalanceCurrency copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v5[1] = self->_currentBalanceAmount;
  v14 = [(NSData *)self->_paymentPassActionData copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((requestUniqueID = self->_requestUniqueID, !(requestUniqueID | equalCopy[6])) || -[NSString isEqual:](requestUniqueID, "isEqual:")) && ((balanceIdentifier = self->_balanceIdentifier, !(balanceIdentifier | equalCopy[2])) || -[NSString isEqual:](balanceIdentifier, "isEqual:")) && ((balanceLabel = self->_balanceLabel, !(balanceLabel | equalCopy[3])) || -[NSString isEqual:](balanceLabel, "isEqual:")) && ((currentBalanceCurrency = self->_currentBalanceCurrency, !(currentBalanceCurrency | equalCopy[4])) || -[NSString isEqual:](currentBalanceCurrency, "isEqual:")) && self->_currentBalanceAmount == equalCopy[1])
  {
    paymentPassActionData = self->_paymentPassActionData;
    if (paymentPassActionData | equalCopy[5])
    {
      v10 = [(NSData *)paymentPassActionData isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_requestUniqueID hash];
  v4 = [(NSString *)self->_balanceIdentifier hash]^ v3;
  v5 = [(NSString *)self->_balanceLabel hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_currentBalanceCurrency hash];
  v7 = 2654435761 * self->_currentBalanceAmount;
  return v6 ^ [(NSData *)self->_paymentPassActionData hash]^ v7;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[6])
  {
    [(NPKProtoRemotePassActionEnterValueRequest *)self setRequestUniqueID:?];
  }

  if (fromCopy[2])
  {
    [(NPKProtoRemotePassActionEnterValueRequest *)self setBalanceIdentifier:?];
  }

  if (fromCopy[3])
  {
    [(NPKProtoRemotePassActionEnterValueRequest *)self setBalanceLabel:?];
  }

  if (fromCopy[4])
  {
    [(NPKProtoRemotePassActionEnterValueRequest *)self setCurrentBalanceCurrency:?];
  }

  self->_currentBalanceAmount = fromCopy[1];
  if (fromCopy[5])
  {
    [(NPKProtoRemotePassActionEnterValueRequest *)self setPaymentPassActionData:?];
  }
}

@end