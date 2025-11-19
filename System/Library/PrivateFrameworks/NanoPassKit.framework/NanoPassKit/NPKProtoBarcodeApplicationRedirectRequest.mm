@interface NPKProtoBarcodeApplicationRedirectRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoBarcodeApplicationRedirectRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoBarcodeApplicationRedirectRequest;
  v4 = [(NPKProtoBarcodeApplicationRedirectRequest *)&v8 description];
  v5 = [(NPKProtoBarcodeApplicationRedirectRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  passData = self->_passData;
  if (passData)
  {
    [v3 setObject:passData forKey:@"passData"];
  }

  transactionData = self->_transactionData;
  if (transactionData)
  {
    [v4 setObject:transactionData forKey:@"transactionData"];
  }

  appLaunchToken = self->_appLaunchToken;
  if (appLaunchToken)
  {
    [v4 setObject:appLaunchToken forKey:@"appLaunchToken"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_passData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_transactionData)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_appLaunchToken)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_passData)
  {
    [v4 setPassData:?];
    v4 = v5;
  }

  if (self->_transactionData)
  {
    [v5 setTransactionData:?];
    v4 = v5;
  }

  if (self->_appLaunchToken)
  {
    [v5 setAppLaunchToken:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_passData copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_transactionData copyWithZone:a3];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_appLaunchToken copyWithZone:a3];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((passData = self->_passData, !(passData | v4[2])) || -[NSData isEqual:](passData, "isEqual:")) && ((transactionData = self->_transactionData, !(transactionData | v4[3])) || -[NSData isEqual:](transactionData, "isEqual:")))
  {
    appLaunchToken = self->_appLaunchToken;
    if (appLaunchToken | v4[1])
    {
      v8 = [(NSString *)appLaunchToken isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_passData hash];
  v4 = [(NSData *)self->_transactionData hash]^ v3;
  return v4 ^ [(NSString *)self->_appLaunchToken hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[2])
  {
    [(NPKProtoBarcodeApplicationRedirectRequest *)self setPassData:?];
    v4 = v5;
  }

  if (v4[3])
  {
    [(NPKProtoBarcodeApplicationRedirectRequest *)self setTransactionData:?];
    v4 = v5;
  }

  if (v4[1])
  {
    [(NPKProtoBarcodeApplicationRedirectRequest *)self setAppLaunchToken:?];
    v4 = v5;
  }
}

@end