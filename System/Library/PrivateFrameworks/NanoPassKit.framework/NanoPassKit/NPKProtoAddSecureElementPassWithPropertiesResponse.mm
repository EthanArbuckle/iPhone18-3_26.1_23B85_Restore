@interface NPKProtoAddSecureElementPassWithPropertiesResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCredentialsBytes:(id)bytes;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoAddSecureElementPassWithPropertiesResponse

- (void)addCredentialsBytes:(id)bytes
{
  bytesCopy = bytes;
  credentialsBytes = self->_credentialsBytes;
  v8 = bytesCopy;
  if (!credentialsBytes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_credentialsBytes;
    self->_credentialsBytes = v6;

    bytesCopy = v8;
    credentialsBytes = self->_credentialsBytes;
  }

  [(NSMutableArray *)credentialsBytes addObject:bytesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoAddSecureElementPassWithPropertiesResponse;
  v4 = [(NPKProtoAddSecureElementPassWithPropertiesResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoAddSecureElementPassWithPropertiesResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [dictionary setObject:v4 forKey:@"success"];
  }

  credentialsBytes = self->_credentialsBytes;
  if (credentialsBytes)
  {
    [dictionary setObject:credentialsBytes forKey:@"credentialsBytes"];
  }

  paymentApplicationID = self->_paymentApplicationID;
  if (paymentApplicationID)
  {
    [dictionary setObject:paymentApplicationID forKey:@"paymentApplicationID"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_credentialsBytes;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteDataField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_paymentApplicationID)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[24] = self->_success;
    toCopy[28] |= 1u;
  }

  v9 = toCopy;
  if ([(NPKProtoAddSecureElementPassWithPropertiesResponse *)self credentialsBytesCount])
  {
    [v9 clearCredentialsBytes];
    credentialsBytesCount = [(NPKProtoAddSecureElementPassWithPropertiesResponse *)self credentialsBytesCount];
    if (credentialsBytesCount)
    {
      v6 = credentialsBytesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NPKProtoAddSecureElementPassWithPropertiesResponse *)self credentialsBytesAtIndex:i];
        [v9 addCredentialsBytes:v8];
      }
    }
  }

  if (self->_paymentApplicationID)
  {
    [v9 setPaymentApplicationID:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_success;
    *(v5 + 28) |= 1u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_credentialsBytes;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v17 + 1) + 8 * v11) copyWithZone:{zone, v17}];
        [v6 addCredentialsBytes:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [(NSString *)self->_paymentApplicationID copyWithZone:zone];
  v14 = v6[2];
  v6[2] = v13;

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(equalCopy + 28);
  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = *(equalCopy + 24);
    if (self->_success)
    {
      if (*(equalCopy + 24))
      {
        goto LABEL_4;
      }

LABEL_9:
      v8 = 0;
      goto LABEL_10;
    }
  }

  if (v5)
  {
    goto LABEL_9;
  }

LABEL_4:
  credentialsBytes = self->_credentialsBytes;
  if (credentialsBytes | *(equalCopy + 1) && ![(NSMutableArray *)credentialsBytes isEqual:?])
  {
    goto LABEL_9;
  }

  paymentApplicationID = self->_paymentApplicationID;
  if (paymentApplicationID | *(equalCopy + 2))
  {
    v8 = [(NSString *)paymentApplicationID isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_10:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_success;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_credentialsBytes hash]^ v3;
  return v4 ^ [(NSString *)self->_paymentApplicationID hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 28))
  {
    self->_success = *(fromCopy + 24);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(fromCopy + 1);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NPKProtoAddSecureElementPassWithPropertiesResponse *)self addCredentialsBytes:*(*(&v12 + 1) + 8 * i), v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if (v5[2])
  {
    [(NPKProtoAddSecureElementPassWithPropertiesResponse *)self setPaymentApplicationID:?];
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end