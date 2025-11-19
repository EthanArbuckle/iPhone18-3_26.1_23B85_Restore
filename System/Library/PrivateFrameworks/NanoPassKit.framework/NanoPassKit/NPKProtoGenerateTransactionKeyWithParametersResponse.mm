@interface NPKProtoGenerateTransactionKeyWithParametersResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTransactionKeyCertChain:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoGenerateTransactionKeyWithParametersResponse

- (void)addTransactionKeyCertChain:(id)a3
{
  v4 = a3;
  transactionKeyCertChains = self->_transactionKeyCertChains;
  v8 = v4;
  if (!transactionKeyCertChains)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_transactionKeyCertChains;
    self->_transactionKeyCertChains = v6;

    v4 = v8;
    transactionKeyCertChains = self->_transactionKeyCertChains;
  }

  [(NSMutableArray *)transactionKeyCertChains addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoGenerateTransactionKeyWithParametersResponse;
  v4 = [(NPKProtoGenerateTransactionKeyWithParametersResponse *)&v8 description];
  v5 = [(NPKProtoGenerateTransactionKeyWithParametersResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  v4 = v3;
  transactionKeyIdentifier = self->_transactionKeyIdentifier;
  if (transactionKeyIdentifier)
  {
    [v3 setObject:transactionKeyIdentifier forKey:@"transactionKeyIdentifier"];
  }

  transactionKeyCertChains = self->_transactionKeyCertChains;
  if (transactionKeyCertChains)
  {
    [v4 setObject:transactionKeyCertChains forKey:@"transactionKeyCertChain"];
  }

  appletIdentifier = self->_appletIdentifier;
  if (appletIdentifier)
  {
    [v4 setObject:appletIdentifier forKey:@"appletIdentifier"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v4 setObject:errorData forKey:@"errorData"];
  }

  return v4;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_transactionKeyIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_transactionKeyCertChains;
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

  if (self->_appletIdentifier)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if (self->_transactionKeyIdentifier)
  {
    [v9 setTransactionKeyIdentifier:?];
  }

  if ([(NPKProtoGenerateTransactionKeyWithParametersResponse *)self transactionKeyCertChainsCount])
  {
    [v9 clearTransactionKeyCertChains];
    v4 = [(NPKProtoGenerateTransactionKeyWithParametersResponse *)self transactionKeyCertChainsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoGenerateTransactionKeyWithParametersResponse *)self transactionKeyCertChainAtIndex:i];
        [v9 addTransactionKeyCertChain:v7];
      }
    }
  }

  if (self->_appletIdentifier)
  {
    [v9 setAppletIdentifier:?];
  }

  v8 = v9;
  if (self->_errorData)
  {
    [v9 setErrorData:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_transactionKeyIdentifier copyWithZone:a3];
  v7 = v5[4];
  v5[4] = v6;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_transactionKeyCertChains;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v20 + 1) + 8 * v12) copyWithZone:{a3, v20}];
        [v5 addTransactionKeyCertChain:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v14 = [(NSData *)self->_appletIdentifier copyWithZone:a3];
  v15 = v5[1];
  v5[1] = v14;

  v16 = [(NSData *)self->_errorData copyWithZone:a3];
  v17 = v5[2];
  v5[2] = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && ((transactionKeyIdentifier = self->_transactionKeyIdentifier, !(transactionKeyIdentifier | v4[4])) || -[NSString isEqual:](transactionKeyIdentifier, "isEqual:")) && ((transactionKeyCertChains = self->_transactionKeyCertChains, !(transactionKeyCertChains | v4[3])) || -[NSMutableArray isEqual:](transactionKeyCertChains, "isEqual:")) && ((appletIdentifier = self->_appletIdentifier, !(appletIdentifier | v4[1])) || -[NSData isEqual:](appletIdentifier, "isEqual:")))
  {
    errorData = self->_errorData;
    if (errorData | v4[2])
    {
      v9 = [(NSData *)errorData isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_transactionKeyIdentifier hash];
  v4 = [(NSMutableArray *)self->_transactionKeyCertChains hash]^ v3;
  v5 = [(NSData *)self->_appletIdentifier hash];
  return v4 ^ v5 ^ [(NSData *)self->_errorData hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*(v4 + 4))
  {
    [(NPKProtoGenerateTransactionKeyWithParametersResponse *)self setTransactionKeyIdentifier:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = *(v4 + 3);
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

        [(NPKProtoGenerateTransactionKeyWithParametersResponse *)self addTransactionKeyCertChain:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(v4 + 1))
  {
    [(NPKProtoGenerateTransactionKeyWithParametersResponse *)self setAppletIdentifier:?];
  }

  if (*(v4 + 2))
  {
    [(NPKProtoGenerateTransactionKeyWithParametersResponse *)self setErrorData:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end