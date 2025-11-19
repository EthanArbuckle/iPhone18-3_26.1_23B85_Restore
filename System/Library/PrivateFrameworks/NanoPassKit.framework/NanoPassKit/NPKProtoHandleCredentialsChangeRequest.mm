@interface NPKProtoHandleCredentialsChangeRequest
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

@implementation NPKProtoHandleCredentialsChangeRequest

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
  v8.super_class = NPKProtoHandleCredentialsChangeRequest;
  v4 = [(NPKProtoHandleCredentialsChangeRequest *)&v8 description];
  v5 = [(NPKProtoHandleCredentialsChangeRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  passID = self->_passID;
  if (passID)
  {
    [v3 setObject:passID forKey:@"passID"];
  }

  credentialsBytes = self->_credentialsBytes;
  if (credentialsBytes)
  {
    [v4 setObject:credentialsBytes forKey:@"credentialsBytes"];
  }

  paymentApplicationID = self->_paymentApplicationID;
  if (paymentApplicationID)
  {
    [v4 setObject:paymentApplicationID forKey:@"paymentApplicationID"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_passID)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_credentialsBytes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (self->_paymentApplicationID)
  {
    PBDataWriterWriteStringField();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v8 = a3;
  if (self->_passID)
  {
    [v8 setPassID:?];
  }

  if ([(NPKProtoHandleCredentialsChangeRequest *)self credentialsBytesCount])
  {
    [v8 clearCredentialsBytes];
    v4 = [(NPKProtoHandleCredentialsChangeRequest *)self credentialsBytesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoHandleCredentialsChangeRequest *)self credentialsBytesAtIndex:i];
        [v8 addCredentialsBytes:v7];
      }
    }
  }

  if (self->_paymentApplicationID)
  {
    [v8 setPaymentApplicationID:?];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_passID copyWithZone:a3];
  v7 = v5[2];
  v5[2] = v6;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = self->_credentialsBytes;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      v12 = 0;
      do
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v18 + 1) + 8 * v12) copyWithZone:{a3, v18}];
        [v5 addCredentialsBytes:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_paymentApplicationID copyWithZone:a3];
  v15 = v5[3];
  v5[3] = v14;

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((passID = self->_passID, !(passID | v4[2])) || -[NSString isEqual:](passID, "isEqual:")) && ((credentialsBytes = self->_credentialsBytes, !(credentialsBytes | v4[1])) || -[NSMutableArray isEqual:](credentialsBytes, "isEqual:")))
  {
    paymentApplicationID = self->_paymentApplicationID;
    if (paymentApplicationID | v4[3])
    {
      v8 = [(NSString *)paymentApplicationID isEqual:?];
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
  v3 = [(NSString *)self->_passID hash];
  v4 = [(NSMutableArray *)self->_credentialsBytes hash]^ v3;
  return v4 ^ [(NSString *)self->_paymentApplicationID hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 2))
  {
    [(NPKProtoHandleCredentialsChangeRequest *)self setPassID:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 1);
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoHandleCredentialsChangeRequest *)self addCredentialsBytes:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(v4 + 3))
  {
    [(NPKProtoHandleCredentialsChangeRequest *)self setPaymentApplicationID:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end