@interface NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addConflictingExpressPassIdentifiers:(id)a3;
- (void)addConflictingReferenceExpressPassIdentifiers:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse

- (void)addConflictingExpressPassIdentifiers:(id)a3
{
  v4 = a3;
  conflictingExpressPassIdentifiers = self->_conflictingExpressPassIdentifiers;
  v8 = v4;
  if (!conflictingExpressPassIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_conflictingExpressPassIdentifiers;
    self->_conflictingExpressPassIdentifiers = v6;

    v4 = v8;
    conflictingExpressPassIdentifiers = self->_conflictingExpressPassIdentifiers;
  }

  [(NSMutableArray *)conflictingExpressPassIdentifiers addObject:v4];
}

- (void)addConflictingReferenceExpressPassIdentifiers:(id)a3
{
  v4 = a3;
  conflictingReferenceExpressPassIdentifiers = self->_conflictingReferenceExpressPassIdentifiers;
  v8 = v4;
  if (!conflictingReferenceExpressPassIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_conflictingReferenceExpressPassIdentifiers;
    self->_conflictingReferenceExpressPassIdentifiers = v6;

    v4 = v8;
    conflictingReferenceExpressPassIdentifiers = self->_conflictingReferenceExpressPassIdentifiers;
  }

  [(NSMutableArray *)conflictingReferenceExpressPassIdentifiers addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse;
  v4 = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)&v8 description];
  v5 = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [v3 setObject:v4 forKey:@"pending"];
  }

  conflictingExpressPassIdentifiers = self->_conflictingExpressPassIdentifiers;
  if (conflictingExpressPassIdentifiers)
  {
    [v3 setObject:conflictingExpressPassIdentifiers forKey:@"conflictingExpressPassIdentifiers"];
  }

  conflictingReferenceExpressPassIdentifiers = self->_conflictingReferenceExpressPassIdentifiers;
  if (conflictingReferenceExpressPassIdentifiers)
  {
    [v3 setObject:conflictingReferenceExpressPassIdentifiers forKey:@"conflictingReferenceExpressPassIdentifiers"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = self->_conflictingExpressPassIdentifiers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_conflictingReferenceExpressPassIdentifiers;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[24] = self->_pending;
    v4[28] |= 1u;
  }

  v13 = v4;
  if ([(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self conflictingExpressPassIdentifiersCount])
  {
    [v13 clearConflictingExpressPassIdentifiers];
    v5 = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self conflictingExpressPassIdentifiersCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self conflictingExpressPassIdentifiersAtIndex:i];
        [v13 addConflictingExpressPassIdentifiers:v8];
      }
    }
  }

  if ([(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self conflictingReferenceExpressPassIdentifiersCount])
  {
    [v13 clearConflictingReferenceExpressPassIdentifiers];
    v9 = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self conflictingReferenceExpressPassIdentifiersCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self conflictingReferenceExpressPassIdentifiersAtIndex:j];
        [v13 addConflictingReferenceExpressPassIdentifiers:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_pending;
    *(v5 + 28) |= 1u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_conflictingExpressPassIdentifiers;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      v11 = 0;
      do
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v25 + 1) + 8 * v11) copyWithZone:a3];
        [v6 addConflictingExpressPassIdentifiers:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_conflictingReferenceExpressPassIdentifiers;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      v17 = 0;
      do
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = [*(*(&v21 + 1) + 8 * v17) copyWithZone:{a3, v21}];
        [v6 addConflictingReferenceExpressPassIdentifiers:v18];

        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
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
    if (self->_pending)
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
  conflictingExpressPassIdentifiers = self->_conflictingExpressPassIdentifiers;
  if (conflictingExpressPassIdentifiers | *(v4 + 1) && ![(NSMutableArray *)conflictingExpressPassIdentifiers isEqual:?])
  {
    goto LABEL_9;
  }

  conflictingReferenceExpressPassIdentifiers = self->_conflictingReferenceExpressPassIdentifiers;
  if (conflictingReferenceExpressPassIdentifiers | *(v4 + 2))
  {
    v8 = [(NSMutableArray *)conflictingReferenceExpressPassIdentifiers isEqual:?];
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
    v3 = 2654435761 * self->_pending;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_conflictingExpressPassIdentifiers hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_conflictingReferenceExpressPassIdentifiers hash];
}

- (void)mergeFrom:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 28))
  {
    self->_pending = *(v4 + 24);
    *&self->_has |= 1u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(v4 + 1);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self addConflictingExpressPassIdentifiers:*(*(&v21 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = v5[2];
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      v15 = 0;
      do
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(NPKProtoConflictingExpressPassIdentifiersForPassInformationResponse *)self addConflictingReferenceExpressPassIdentifiers:*(*(&v17 + 1) + 8 * v15++), v17];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end