@interface NPKProtoRemotePassActionEnterValueRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoRemotePassActionEnterValueRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRemotePassActionEnterValueRequest;
  v4 = [(NPKProtoRemotePassActionEnterValueRequest *)&v8 description];
  v5 = [(NPKProtoRemotePassActionEnterValueRequest *)self dictionaryRepresentation];
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

- (void)writeTo:(id)a3
{
  v5 = a3;
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

- (void)copyTo:(id)a3
{
  v5 = a3;
  [v5 setRequestUniqueID:self->_requestUniqueID];
  [v5 setBalanceIdentifier:self->_balanceIdentifier];
  [v5 setBalanceLabel:self->_balanceLabel];
  [v5 setCurrentBalanceCurrency:self->_currentBalanceCurrency];
  v4 = v5;
  v5[1] = self->_currentBalanceAmount;
  if (self->_paymentPassActionData)
  {
    [v5 setPaymentPassActionData:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_requestUniqueID copyWithZone:a3];
  v7 = v5[6];
  v5[6] = v6;

  v8 = [(NSString *)self->_balanceIdentifier copyWithZone:a3];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(NSString *)self->_balanceLabel copyWithZone:a3];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(NSString *)self->_currentBalanceCurrency copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v5[1] = self->_currentBalanceAmount;
  v14 = [(NSData *)self->_paymentPassActionData copyWithZone:a3];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((requestUniqueID = self->_requestUniqueID, !(requestUniqueID | v4[6])) || -[NSString isEqual:](requestUniqueID, "isEqual:")) && ((balanceIdentifier = self->_balanceIdentifier, !(balanceIdentifier | v4[2])) || -[NSString isEqual:](balanceIdentifier, "isEqual:")) && ((balanceLabel = self->_balanceLabel, !(balanceLabel | v4[3])) || -[NSString isEqual:](balanceLabel, "isEqual:")) && ((currentBalanceCurrency = self->_currentBalanceCurrency, !(currentBalanceCurrency | v4[4])) || -[NSString isEqual:](currentBalanceCurrency, "isEqual:")) && self->_currentBalanceAmount == v4[1])
  {
    paymentPassActionData = self->_paymentPassActionData;
    if (paymentPassActionData | v4[5])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[6])
  {
    [(NPKProtoRemotePassActionEnterValueRequest *)self setRequestUniqueID:?];
  }

  if (v4[2])
  {
    [(NPKProtoRemotePassActionEnterValueRequest *)self setBalanceIdentifier:?];
  }

  if (v4[3])
  {
    [(NPKProtoRemotePassActionEnterValueRequest *)self setBalanceLabel:?];
  }

  if (v4[4])
  {
    [(NPKProtoRemotePassActionEnterValueRequest *)self setCurrentBalanceCurrency:?];
  }

  self->_currentBalanceAmount = v4[1];
  if (v4[5])
  {
    [(NPKProtoRemotePassActionEnterValueRequest *)self setPaymentPassActionData:?];
  }
}

@end