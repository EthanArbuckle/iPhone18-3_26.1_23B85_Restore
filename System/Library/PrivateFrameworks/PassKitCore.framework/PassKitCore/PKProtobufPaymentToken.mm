@interface PKProtobufPaymentToken
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PKProtobufPaymentToken

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentToken;
  v4 = [(PKProtobufPaymentToken *)&v8 description];
  dictionaryRepresentation = [(PKProtobufPaymentToken *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  paymentMethod = self->_paymentMethod;
  if (paymentMethod)
  {
    dictionaryRepresentation = [(PKProtobufPaymentMethod *)paymentMethod dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"paymentMethod"];
  }

  instrumentName = self->_instrumentName;
  if (instrumentName)
  {
    [dictionary setObject:instrumentName forKey:@"instrumentName"];
  }

  network = self->_network;
  if (network)
  {
    [dictionary setObject:network forKey:@"network"];
  }

  transactionIdentifier = self->_transactionIdentifier;
  if (transactionIdentifier)
  {
    [dictionary setObject:transactionIdentifier forKey:@"transactionIdentifier"];
  }

  paymentData = self->_paymentData;
  if (paymentData)
  {
    [dictionary setObject:paymentData forKey:@"paymentData"];
  }

  redeemURL = self->_redeemURL;
  if (redeemURL)
  {
    [dictionary setObject:redeemURL forKey:@"redeemURL"];
  }

  retryNonce = self->_retryNonce;
  if (retryNonce)
  {
    [dictionary setObject:retryNonce forKey:@"retryNonce"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_paymentMethod)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_instrumentName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_network)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_transactionIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_paymentData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_redeemURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_retryNonce)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_paymentMethod)
  {
    [toCopy setPaymentMethod:?];
    toCopy = v5;
  }

  if (self->_instrumentName)
  {
    [v5 setInstrumentName:?];
    toCopy = v5;
  }

  if (self->_network)
  {
    [v5 setNetwork:?];
    toCopy = v5;
  }

  if (self->_transactionIdentifier)
  {
    [v5 setTransactionIdentifier:?];
    toCopy = v5;
  }

  if (self->_paymentData)
  {
    [v5 setPaymentData:?];
    toCopy = v5;
  }

  if (self->_redeemURL)
  {
    [v5 setRedeemURL:?];
    toCopy = v5;
  }

  if (self->_retryNonce)
  {
    [v5 setRetryNonce:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(PKProtobufPaymentMethod *)self->_paymentMethod copyWithZone:zone];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_instrumentName copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_network copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_transactionIdentifier copyWithZone:zone];
  v13 = v5[7];
  v5[7] = v12;

  v14 = [(NSData *)self->_paymentData copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  v16 = [(NSString *)self->_redeemURL copyWithZone:zone];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(NSString *)self->_retryNonce copyWithZone:zone];
  v19 = v5[6];
  v5[6] = v18;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((paymentMethod = self->_paymentMethod, !(paymentMethod | equalCopy[4])) || -[PKProtobufPaymentMethod isEqual:](paymentMethod, "isEqual:")) && ((instrumentName = self->_instrumentName, !(instrumentName | equalCopy[1])) || -[NSString isEqual:](instrumentName, "isEqual:")) && ((network = self->_network, !(network | equalCopy[2])) || -[NSString isEqual:](network, "isEqual:")) && ((transactionIdentifier = self->_transactionIdentifier, !(transactionIdentifier | equalCopy[7])) || -[NSString isEqual:](transactionIdentifier, "isEqual:")) && ((paymentData = self->_paymentData, !(paymentData | equalCopy[3])) || -[NSData isEqual:](paymentData, "isEqual:")) && ((redeemURL = self->_redeemURL, !(redeemURL | equalCopy[5])) || -[NSString isEqual:](redeemURL, "isEqual:")))
  {
    retryNonce = self->_retryNonce;
    if (retryNonce | equalCopy[6])
    {
      v12 = [(NSString *)retryNonce isEqual:?];
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (unint64_t)hash
{
  v3 = [(PKProtobufPaymentMethod *)self->_paymentMethod hash];
  v4 = [(NSString *)self->_instrumentName hash]^ v3;
  v5 = [(NSString *)self->_network hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_transactionIdentifier hash];
  v7 = [(NSData *)self->_paymentData hash];
  v8 = v7 ^ [(NSString *)self->_redeemURL hash];
  return v6 ^ v8 ^ [(NSString *)self->_retryNonce hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  paymentMethod = self->_paymentMethod;
  v7 = fromCopy;
  v6 = fromCopy[4];
  if (paymentMethod)
  {
    if (v6)
    {
      [(PKProtobufPaymentMethod *)paymentMethod mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(PKProtobufPaymentToken *)self setPaymentMethod:?];
  }

  if (v7[1])
  {
    [(PKProtobufPaymentToken *)self setInstrumentName:?];
  }

  if (v7[2])
  {
    [(PKProtobufPaymentToken *)self setNetwork:?];
  }

  if (v7[7])
  {
    [(PKProtobufPaymentToken *)self setTransactionIdentifier:?];
  }

  if (v7[3])
  {
    [(PKProtobufPaymentToken *)self setPaymentData:?];
  }

  if (v7[5])
  {
    [(PKProtobufPaymentToken *)self setRedeemURL:?];
  }

  if (v7[6])
  {
    [(PKProtobufPaymentToken *)self setRetryNonce:?];
  }
}

@end