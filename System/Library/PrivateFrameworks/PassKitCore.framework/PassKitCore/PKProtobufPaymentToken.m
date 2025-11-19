@interface PKProtobufPaymentToken
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation PKProtobufPaymentToken

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = PKProtobufPaymentToken;
  v4 = [(PKProtobufPaymentToken *)&v8 description];
  v5 = [(PKProtobufPaymentToken *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  paymentMethod = self->_paymentMethod;
  if (paymentMethod)
  {
    v5 = [(PKProtobufPaymentMethod *)paymentMethod dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"paymentMethod"];
  }

  instrumentName = self->_instrumentName;
  if (instrumentName)
  {
    [v3 setObject:instrumentName forKey:@"instrumentName"];
  }

  network = self->_network;
  if (network)
  {
    [v3 setObject:network forKey:@"network"];
  }

  transactionIdentifier = self->_transactionIdentifier;
  if (transactionIdentifier)
  {
    [v3 setObject:transactionIdentifier forKey:@"transactionIdentifier"];
  }

  paymentData = self->_paymentData;
  if (paymentData)
  {
    [v3 setObject:paymentData forKey:@"paymentData"];
  }

  redeemURL = self->_redeemURL;
  if (redeemURL)
  {
    [v3 setObject:redeemURL forKey:@"redeemURL"];
  }

  retryNonce = self->_retryNonce;
  if (retryNonce)
  {
    [v3 setObject:retryNonce forKey:@"retryNonce"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_paymentMethod)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_instrumentName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_network)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_transactionIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_paymentData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_redeemURL)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_retryNonce)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_paymentMethod)
  {
    [v4 setPaymentMethod:?];
    v4 = v5;
  }

  if (self->_instrumentName)
  {
    [v5 setInstrumentName:?];
    v4 = v5;
  }

  if (self->_network)
  {
    [v5 setNetwork:?];
    v4 = v5;
  }

  if (self->_transactionIdentifier)
  {
    [v5 setTransactionIdentifier:?];
    v4 = v5;
  }

  if (self->_paymentData)
  {
    [v5 setPaymentData:?];
    v4 = v5;
  }

  if (self->_redeemURL)
  {
    [v5 setRedeemURL:?];
    v4 = v5;
  }

  if (self->_retryNonce)
  {
    [v5 setRetryNonce:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(PKProtobufPaymentMethod *)self->_paymentMethod copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v8 = [(NSString *)self->_instrumentName copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_network copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_transactionIdentifier copyWithZone:a3];
  v13 = v5[7];
  v5[7] = v12;

  v14 = [(NSData *)self->_paymentData copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  v16 = [(NSString *)self->_redeemURL copyWithZone:a3];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(NSString *)self->_retryNonce copyWithZone:a3];
  v19 = v5[6];
  v5[6] = v18;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((paymentMethod = self->_paymentMethod, !(paymentMethod | v4[4])) || -[PKProtobufPaymentMethod isEqual:](paymentMethod, "isEqual:")) && ((instrumentName = self->_instrumentName, !(instrumentName | v4[1])) || -[NSString isEqual:](instrumentName, "isEqual:")) && ((network = self->_network, !(network | v4[2])) || -[NSString isEqual:](network, "isEqual:")) && ((transactionIdentifier = self->_transactionIdentifier, !(transactionIdentifier | v4[7])) || -[NSString isEqual:](transactionIdentifier, "isEqual:")) && ((paymentData = self->_paymentData, !(paymentData | v4[3])) || -[NSData isEqual:](paymentData, "isEqual:")) && ((redeemURL = self->_redeemURL, !(redeemURL | v4[5])) || -[NSString isEqual:](redeemURL, "isEqual:")))
  {
    retryNonce = self->_retryNonce;
    if (retryNonce | v4[6])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  paymentMethod = self->_paymentMethod;
  v7 = v4;
  v6 = v4[4];
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