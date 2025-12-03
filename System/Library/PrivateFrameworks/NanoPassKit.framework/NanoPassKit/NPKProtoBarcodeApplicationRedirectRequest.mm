@interface NPKProtoBarcodeApplicationRedirectRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoBarcodeApplicationRedirectRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoBarcodeApplicationRedirectRequest;
  v4 = [(NPKProtoBarcodeApplicationRedirectRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoBarcodeApplicationRedirectRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  passData = self->_passData;
  if (passData)
  {
    [dictionary setObject:passData forKey:@"passData"];
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_passData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_transactionData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_appLaunchToken)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_passData)
  {
    [toCopy setPassData:?];
    toCopy = v5;
  }

  if (self->_transactionData)
  {
    [v5 setTransactionData:?];
    toCopy = v5;
  }

  if (self->_appLaunchToken)
  {
    [v5 setAppLaunchToken:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_passData copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSData *)self->_transactionData copyWithZone:zone];
  v9 = v5[3];
  v5[3] = v8;

  v10 = [(NSString *)self->_appLaunchToken copyWithZone:zone];
  v11 = v5[1];
  v5[1] = v10;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((passData = self->_passData, !(passData | equalCopy[2])) || -[NSData isEqual:](passData, "isEqual:")) && ((transactionData = self->_transactionData, !(transactionData | equalCopy[3])) || -[NSData isEqual:](transactionData, "isEqual:")))
  {
    appLaunchToken = self->_appLaunchToken;
    if (appLaunchToken | equalCopy[1])
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[2])
  {
    [(NPKProtoBarcodeApplicationRedirectRequest *)self setPassData:?];
    fromCopy = v5;
  }

  if (fromCopy[3])
  {
    [(NPKProtoBarcodeApplicationRedirectRequest *)self setTransactionData:?];
    fromCopy = v5;
  }

  if (fromCopy[1])
  {
    [(NPKProtoBarcodeApplicationRedirectRequest *)self setAppLaunchToken:?];
    fromCopy = v5;
  }
}

@end