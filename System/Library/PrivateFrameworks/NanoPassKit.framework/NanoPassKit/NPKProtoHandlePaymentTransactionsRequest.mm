@interface NPKProtoHandlePaymentTransactionsRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPassAppletStates:(id)states;
- (void)addTransactionPassIDs:(id)ds;
- (void)addTransactionsBytes:(id)bytes;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoHandlePaymentTransactionsRequest

- (void)addTransactionsBytes:(id)bytes
{
  bytesCopy = bytes;
  transactionsBytes = self->_transactionsBytes;
  v8 = bytesCopy;
  if (!transactionsBytes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_transactionsBytes;
    self->_transactionsBytes = v6;

    bytesCopy = v8;
    transactionsBytes = self->_transactionsBytes;
  }

  [(NSMutableArray *)transactionsBytes addObject:bytesCopy];
}

- (void)addTransactionPassIDs:(id)ds
{
  dsCopy = ds;
  transactionPassIDs = self->_transactionPassIDs;
  v8 = dsCopy;
  if (!transactionPassIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_transactionPassIDs;
    self->_transactionPassIDs = v6;

    dsCopy = v8;
    transactionPassIDs = self->_transactionPassIDs;
  }

  [(NSMutableArray *)transactionPassIDs addObject:dsCopy];
}

- (void)addPassAppletStates:(id)states
{
  statesCopy = states;
  passAppletStates = self->_passAppletStates;
  v8 = statesCopy;
  if (!passAppletStates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_passAppletStates;
    self->_passAppletStates = v6;

    statesCopy = v8;
    passAppletStates = self->_passAppletStates;
  }

  [(NSMutableArray *)passAppletStates addObject:statesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoHandlePaymentTransactionsRequest;
  v4 = [(NPKProtoHandlePaymentTransactionsRequest *)&v8 description];
  dictionaryRepresentation = [(NPKProtoHandlePaymentTransactionsRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  transactionsBytes = self->_transactionsBytes;
  if (transactionsBytes)
  {
    [dictionary setObject:transactionsBytes forKey:@"transactionsBytes"];
  }

  transactionPassIDs = self->_transactionPassIDs;
  if (transactionPassIDs)
  {
    [v4 setObject:transactionPassIDs forKey:@"transactionPassIDs"];
  }

  passAppletStates = self->_passAppletStates;
  if (passAppletStates)
  {
    [v4 setObject:passAppletStates forKey:@"passAppletStates"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v39 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v5 = self->_transactionsBytes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v33;
    do
    {
      v9 = 0;
      do
      {
        if (*v33 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v32 + 1) + 8 * v9);
        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v7);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_transactionPassIDs;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v28 + 1) + 8 * v15);
        PBDataWriterWriteStringField();
        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v13);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_passAppletStates;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v24 + 1) + 8 * v21);
        PBDataWriterWriteDataField();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NPKProtoHandlePaymentTransactionsRequest *)self transactionsBytesCount])
  {
    [toCopy clearTransactionsBytes];
    transactionsBytesCount = [(NPKProtoHandlePaymentTransactionsRequest *)self transactionsBytesCount];
    if (transactionsBytesCount)
    {
      v5 = transactionsBytesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoHandlePaymentTransactionsRequest *)self transactionsBytesAtIndex:i];
        [toCopy addTransactionsBytes:v7];
      }
    }
  }

  if ([(NPKProtoHandlePaymentTransactionsRequest *)self transactionPassIDsCount])
  {
    [toCopy clearTransactionPassIDs];
    transactionPassIDsCount = [(NPKProtoHandlePaymentTransactionsRequest *)self transactionPassIDsCount];
    if (transactionPassIDsCount)
    {
      v9 = transactionPassIDsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NPKProtoHandlePaymentTransactionsRequest *)self transactionPassIDsAtIndex:j];
        [toCopy addTransactionPassIDs:v11];
      }
    }
  }

  if ([(NPKProtoHandlePaymentTransactionsRequest *)self passAppletStatesCount])
  {
    [toCopy clearPassAppletStates];
    passAppletStatesCount = [(NPKProtoHandlePaymentTransactionsRequest *)self passAppletStatesCount];
    if (passAppletStatesCount)
    {
      v13 = passAppletStatesCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(NPKProtoHandlePaymentTransactionsRequest *)self passAppletStatesAtIndex:k];
        [toCopy addPassAppletStates:v15];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v6 = self->_transactionsBytes;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v35;
    do
    {
      v10 = 0;
      do
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v34 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addTransactionsBytes:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v34 objects:v40 count:16];
    }

    while (v8);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v12 = self->_transactionPassIDs;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v31;
    do
    {
      v16 = 0;
      do
      {
        if (*v31 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v30 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addTransactionPassIDs:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    }

    while (v14);
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v18 = self->_passAppletStates;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v27;
    do
    {
      v22 = 0;
      do
      {
        if (*v27 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v26 + 1) + 8 * v22) copyWithZone:{zone, v26}];
        [v5 addPassAppletStates:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v38 count:16];
    }

    while (v20);
  }

  v24 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((transactionsBytes = self->_transactionsBytes, !(transactionsBytes | equalCopy[3])) || -[NSMutableArray isEqual:](transactionsBytes, "isEqual:")) && ((transactionPassIDs = self->_transactionPassIDs, !(transactionPassIDs | equalCopy[2])) || -[NSMutableArray isEqual:](transactionPassIDs, "isEqual:")))
  {
    passAppletStates = self->_passAppletStates;
    if (passAppletStates | equalCopy[1])
    {
      v8 = [(NSMutableArray *)passAppletStates isEqual:?];
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
  v3 = [(NSMutableArray *)self->_transactionsBytes hash];
  v4 = [(NSMutableArray *)self->_transactionPassIDs hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_passAppletStates hash];
}

- (void)mergeFrom:(id)from
{
  v36 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = fromCopy[3];
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoHandlePaymentTransactionsRequest *)self addTransactionsBytes:*(*(&v29 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v29 objects:v35 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v10 = fromCopy[2];
  v11 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v26;
    do
    {
      v14 = 0;
      do
      {
        if (*v26 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NPKProtoHandlePaymentTransactionsRequest *)self addTransactionPassIDs:*(*(&v25 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v25 objects:v34 count:16];
    }

    while (v12);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = fromCopy[1];
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v22;
    do
    {
      v19 = 0;
      do
      {
        if (*v22 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(NPKProtoHandlePaymentTransactionsRequest *)self addPassAppletStates:*(*(&v21 + 1) + 8 * v19++), v21];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v21 objects:v33 count:16];
    }

    while (v17);
  }

  v20 = *MEMORY[0x277D85DE8];
}

@end