@interface NPKProtoSetTransactionDefaultsRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoSetTransactionDefaultsRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoSetTransactionDefaultsRequest;
  v4 = [(NPKProtoSetTransactionDefaultsRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoSetTransactionDefaultsRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  defaultShippingAddress = self->_defaultShippingAddress;
  if (defaultShippingAddress)
  {
    [dictionary setObject:defaultShippingAddress forKey:@"defaultShippingAddress"];
  }

  defaultBillingAddresses = self->_defaultBillingAddresses;
  if (defaultBillingAddresses)
  {
    [v4 setObject:defaultBillingAddresses forKey:@"defaultBillingAddresses"];
  }

  defaultContactEmail = self->_defaultContactEmail;
  if (defaultContactEmail)
  {
    [v4 setObject:defaultContactEmail forKey:@"defaultContactEmail"];
  }

  defaultContactPhone = self->_defaultContactPhone;
  if (defaultContactPhone)
  {
    [v4 setObject:defaultContactPhone forKey:@"defaultContactPhone"];
  }

  defaultContactName = self->_defaultContactName;
  if (defaultContactName)
  {
    [v4 setObject:defaultContactName forKey:@"defaultContactName"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_defaultShippingAddress)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_defaultBillingAddresses)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_defaultContactEmail)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_defaultContactPhone)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_defaultContactName)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_defaultShippingAddress)
  {
    [toCopy setDefaultShippingAddress:?];
    toCopy = v5;
  }

  if (self->_defaultBillingAddresses)
  {
    [v5 setDefaultBillingAddresses:?];
    toCopy = v5;
  }

  if (self->_defaultContactEmail)
  {
    [v5 setDefaultContactEmail:?];
    toCopy = v5;
  }

  if (self->_defaultContactPhone)
  {
    [v5 setDefaultContactPhone:?];
    toCopy = v5;
  }

  if (self->_defaultContactName)
  {
    [v5 setDefaultContactName:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_defaultShippingAddress copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSData *)self->_defaultBillingAddresses copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_defaultContactEmail copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSData *)self->_defaultContactPhone copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSData *)self->_defaultContactName copyWithZone:zone];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((defaultShippingAddress = self->_defaultShippingAddress, !(defaultShippingAddress | equalCopy[5])) || -[NSData isEqual:](defaultShippingAddress, "isEqual:")) && ((defaultBillingAddresses = self->_defaultBillingAddresses, !(defaultBillingAddresses | equalCopy[1])) || -[NSData isEqual:](defaultBillingAddresses, "isEqual:")) && ((defaultContactEmail = self->_defaultContactEmail, !(defaultContactEmail | equalCopy[2])) || -[NSData isEqual:](defaultContactEmail, "isEqual:")) && ((defaultContactPhone = self->_defaultContactPhone, !(defaultContactPhone | equalCopy[4])) || -[NSData isEqual:](defaultContactPhone, "isEqual:")))
  {
    defaultContactName = self->_defaultContactName;
    if (defaultContactName | equalCopy[3])
    {
      v10 = [(NSData *)defaultContactName isEqual:?];
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
  v3 = [(NSData *)self->_defaultShippingAddress hash];
  v4 = [(NSData *)self->_defaultBillingAddresses hash]^ v3;
  v5 = [(NSData *)self->_defaultContactEmail hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_defaultContactPhone hash];
  return v6 ^ [(NSData *)self->_defaultContactName hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[5])
  {
    [(NPKProtoSetTransactionDefaultsRequest *)self setDefaultShippingAddress:?];
  }

  if (fromCopy[1])
  {
    [(NPKProtoSetTransactionDefaultsRequest *)self setDefaultBillingAddresses:?];
  }

  if (fromCopy[2])
  {
    [(NPKProtoSetTransactionDefaultsRequest *)self setDefaultContactEmail:?];
  }

  if (fromCopy[4])
  {
    [(NPKProtoSetTransactionDefaultsRequest *)self setDefaultContactPhone:?];
  }

  if (fromCopy[3])
  {
    [(NPKProtoSetTransactionDefaultsRequest *)self setDefaultContactName:?];
  }
}

@end