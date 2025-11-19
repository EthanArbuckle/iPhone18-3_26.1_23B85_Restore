@interface NPKProtoAddSecureElementPassWithPropertiesResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCredentialsBytes:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoAddSecureElementPassWithPropertiesResponse

- (void)addCredentialsBytes:(id)a3
{
  v4 = a3;
  credentialsBytes = self->_credentialsBytes;
  v8 = v4;
  if (!credentialsBytes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_credentialsBytes;
    self->_credentialsBytes = v6;

    v4 = v8;
    credentialsBytes = self->_credentialsBytes;
  }

  [(NSMutableArray *)credentialsBytes addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoAddSecureElementPassWithPropertiesResponse;
  v4 = [(NPKProtoAddSecureElementPassWithPropertiesResponse *)&v8 description];
  v5 = [(NPKProtoAddSecureElementPassWithPropertiesResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [v3 setObject:v4 forKey:@"success"];
  }

  credentialsBytes = self->_credentialsBytes;
  if (credentialsBytes)
  {
    [v3 setObject:credentialsBytes forKey:@"credentialsBytes"];
  }

  paymentApplicationID = self->_paymentApplicationID;
  if (paymentApplicationID)
  {
    [v3 setObject:paymentApplicationID forKey:@"paymentApplicationID"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[24] = self->_success;
    v4[28] |= 1u;
  }

  v9 = v4;
  if ([(NPKProtoAddSecureElementPassWithPropertiesResponse *)self credentialsBytesCount])
  {
    [v9 clearCredentialsBytes];
    v5 = [(NPKProtoAddSecureElementPassWithPropertiesResponse *)self credentialsBytesCount];
    if (v5)
    {
      v6 = v5;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
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

        v12 = [*(*(&v17 + 1) + 8 * v11) copyWithZone:{a3, v17}];
        [v6 addCredentialsBytes:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v13 = [(NSString *)self->_paymentApplicationID copyWithZone:a3];
  v14 = v6[2];
  v6[2] = v13;

  v15 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  v5 = *(v4 + 28);
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
      goto LABEL_9;
    }

    v5 = *(v4 + 24);
    if (self->_success)
    {
      if (*(v4 + 24))
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
  if (credentialsBytes | *(v4 + 1) && ![(NSMutableArray *)credentialsBytes isEqual:?])
  {
    goto LABEL_9;
  }

  paymentApplicationID = self->_paymentApplicationID;
  if (paymentApplicationID | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 28))
  {
    self->_success = *(v4 + 24);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v4 + 1);
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