@interface NPKProtoSetTransactionDefaultsRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoSetTransactionDefaultsRequest

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoSetTransactionDefaultsRequest;
  v4 = [(NPKProtoSetTransactionDefaultsRequest *)&v8 description];
  v5 = [(NPKProtoSetTransactionDefaultsRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  defaultShippingAddress = self->_defaultShippingAddress;
  if (defaultShippingAddress)
  {
    [v3 setObject:defaultShippingAddress forKey:@"defaultShippingAddress"];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_defaultShippingAddress)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_defaultBillingAddresses)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_defaultContactEmail)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_defaultContactPhone)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_defaultContactName)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_defaultShippingAddress)
  {
    [v4 setDefaultShippingAddress:?];
    v4 = v5;
  }

  if (self->_defaultBillingAddresses)
  {
    [v5 setDefaultBillingAddresses:?];
    v4 = v5;
  }

  if (self->_defaultContactEmail)
  {
    [v5 setDefaultContactEmail:?];
    v4 = v5;
  }

  if (self->_defaultContactPhone)
  {
    [v5 setDefaultContactPhone:?];
    v4 = v5;
  }

  if (self->_defaultContactName)
  {
    [v5 setDefaultContactName:?];
    v4 = v5;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSData *)self->_defaultShippingAddress copyWithZone:a3];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSData *)self->_defaultBillingAddresses copyWithZone:a3];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_defaultContactEmail copyWithZone:a3];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSData *)self->_defaultContactPhone copyWithZone:a3];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(NSData *)self->_defaultContactName copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((defaultShippingAddress = self->_defaultShippingAddress, !(defaultShippingAddress | v4[5])) || -[NSData isEqual:](defaultShippingAddress, "isEqual:")) && ((defaultBillingAddresses = self->_defaultBillingAddresses, !(defaultBillingAddresses | v4[1])) || -[NSData isEqual:](defaultBillingAddresses, "isEqual:")) && ((defaultContactEmail = self->_defaultContactEmail, !(defaultContactEmail | v4[2])) || -[NSData isEqual:](defaultContactEmail, "isEqual:")) && ((defaultContactPhone = self->_defaultContactPhone, !(defaultContactPhone | v4[4])) || -[NSData isEqual:](defaultContactPhone, "isEqual:")))
  {
    defaultContactName = self->_defaultContactName;
    if (defaultContactName | v4[3])
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  if (v4[5])
  {
    [(NPKProtoSetTransactionDefaultsRequest *)self setDefaultShippingAddress:?];
  }

  if (v4[1])
  {
    [(NPKProtoSetTransactionDefaultsRequest *)self setDefaultBillingAddresses:?];
  }

  if (v4[2])
  {
    [(NPKProtoSetTransactionDefaultsRequest *)self setDefaultContactEmail:?];
  }

  if (v4[4])
  {
    [(NPKProtoSetTransactionDefaultsRequest *)self setDefaultContactPhone:?];
  }

  if (v4[3])
  {
    [(NPKProtoSetTransactionDefaultsRequest *)self setDefaultContactName:?];
  }
}

@end