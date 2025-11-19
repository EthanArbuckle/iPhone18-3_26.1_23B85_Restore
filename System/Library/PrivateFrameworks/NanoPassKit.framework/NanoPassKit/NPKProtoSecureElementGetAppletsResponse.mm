@interface NPKProtoSecureElementGetAppletsResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)activationStatesAtIndex:(unint64_t)a3;
- (unsigned)lifecycleStatesAtIndex:(unint64_t)a3;
- (void)addAppletsBytes:(id)a3;
- (void)addCardAIDs:(id)a3;
- (void)copyTo:(id)a3;
- (void)dealloc;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoSecureElementGetAppletsResponse

- (void)dealloc
{
  PBRepeatedUInt32Clear();
  PBRepeatedUInt32Clear();
  v3.receiver = self;
  v3.super_class = NPKProtoSecureElementGetAppletsResponse;
  [(NPKProtoSecureElementGetAppletsResponse *)&v3 dealloc];
}

- (void)addCardAIDs:(id)a3
{
  v4 = a3;
  cardAIDs = self->_cardAIDs;
  v8 = v4;
  if (!cardAIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cardAIDs;
    self->_cardAIDs = v6;

    v4 = v8;
    cardAIDs = self->_cardAIDs;
  }

  [(NSMutableArray *)cardAIDs addObject:v4];
}

- (unsigned)lifecycleStatesAtIndex:(unint64_t)a3
{
  p_lifecycleStates = &self->_lifecycleStates;
  count = self->_lifecycleStates.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_lifecycleStates->list[a3];
}

- (unsigned)activationStatesAtIndex:(unint64_t)a3
{
  p_activationStates = &self->_activationStates;
  count = self->_activationStates.count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", a3, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_activationStates->list[a3];
}

- (void)addAppletsBytes:(id)a3
{
  v4 = a3;
  appletsBytes = self->_appletsBytes;
  v8 = v4;
  if (!appletsBytes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_appletsBytes;
    self->_appletsBytes = v6;

    v4 = v8;
    appletsBytes = self->_appletsBytes;
  }

  [(NSMutableArray *)appletsBytes addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoSecureElementGetAppletsResponse;
  v4 = [(NPKProtoSecureElementGetAppletsResponse *)&v8 description];
  v5 = [(NPKProtoSecureElementGetAppletsResponse *)self dictionaryRepresentation];
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

  cardAIDs = self->_cardAIDs;
  if (cardAIDs)
  {
    [v3 setObject:cardAIDs forKey:@"cardAIDs"];
  }

  v6 = PBRepeatedUInt32NSArray();
  [v3 setObject:v6 forKey:@"lifecycleStates"];

  v7 = PBRepeatedUInt32NSArray();
  [v3 setObject:v7 forKey:@"activationStates"];

  appletsBytes = self->_appletsBytes;
  if (appletsBytes)
  {
    [v3 setObject:appletsBytes forKey:@"appletsBytes"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_cardAIDs;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v27 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  if (self->_lifecycleStates.count)
  {
    v12 = 0;
    do
    {
      v13 = self->_lifecycleStates.list[v12];
      PBDataWriterWriteUint32Field();
      ++v12;
    }

    while (v12 < self->_lifecycleStates.count);
  }

  if (self->_activationStates.count)
  {
    v14 = 0;
    do
    {
      v15 = self->_activationStates.list[v14];
      PBDataWriterWriteUint32Field();
      ++v14;
    }

    while (v14 < self->_activationStates.count);
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v16 = self->_appletsBytes;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v24;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v24 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v23 + 1) + 8 * j);
        PBDataWriterWriteDataField();
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[72] = self->_pending;
    v4[76] |= 1u;
  }

  v19 = v4;
  if ([(NPKProtoSecureElementGetAppletsResponse *)self cardAIDsCount])
  {
    [v19 clearCardAIDs];
    v5 = [(NPKProtoSecureElementGetAppletsResponse *)self cardAIDsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NPKProtoSecureElementGetAppletsResponse *)self cardAIDsAtIndex:i];
        [v19 addCardAIDs:v8];
      }
    }
  }

  if ([(NPKProtoSecureElementGetAppletsResponse *)self lifecycleStatesCount])
  {
    [v19 clearLifecycleStates];
    v9 = [(NPKProtoSecureElementGetAppletsResponse *)self lifecycleStatesCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        [v19 addLifecycleStates:{-[NPKProtoSecureElementGetAppletsResponse lifecycleStatesAtIndex:](self, "lifecycleStatesAtIndex:", j)}];
      }
    }
  }

  if ([(NPKProtoSecureElementGetAppletsResponse *)self activationStatesCount])
  {
    [v19 clearActivationStates];
    v12 = [(NPKProtoSecureElementGetAppletsResponse *)self activationStatesCount];
    if (v12)
    {
      v13 = v12;
      for (k = 0; k != v13; ++k)
      {
        [v19 addActivationStates:{-[NPKProtoSecureElementGetAppletsResponse activationStatesAtIndex:](self, "activationStatesAtIndex:", k)}];
      }
    }
  }

  if ([(NPKProtoSecureElementGetAppletsResponse *)self appletsBytesCount])
  {
    [v19 clearAppletsBytes];
    v15 = [(NPKProtoSecureElementGetAppletsResponse *)self appletsBytesCount];
    if (v15)
    {
      v16 = v15;
      for (m = 0; m != v16; ++m)
      {
        v18 = [(NPKProtoSecureElementGetAppletsResponse *)self appletsBytesAtIndex:m];
        [v19 addAppletsBytes:v18];
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
    *(v5 + 72) = self->_pending;
    *(v5 + 76) |= 1u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v7 = self->_cardAIDs;
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
        [v6 addCardAIDs:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  PBRepeatedUInt32Copy();
  PBRepeatedUInt32Copy();
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v13 = self->_appletsBytes;
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
        [v6 addAppletsBytes:v18];

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
    goto LABEL_11;
  }

  v5 = *(v4 + 76);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(v4 + 76) & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = *(v4 + 72);
  if (!self->_pending)
  {
LABEL_3:
    if ((v5 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  if ((*(v4 + 72) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  cardAIDs = self->_cardAIDs;
  if (cardAIDs | *(v4 + 8) && ![(NSMutableArray *)cardAIDs isEqual:?]|| !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_11;
  }

  appletsBytes = self->_appletsBytes;
  if (appletsBytes | *(v4 + 7))
  {
    v8 = [(NSMutableArray *)appletsBytes isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_12:

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

  v4 = [(NSMutableArray *)self->_cardAIDs hash];
  v5 = v3 ^ PBRepeatedUInt32Hash();
  v6 = v4 ^ v5 ^ PBRepeatedUInt32Hash();
  return v6 ^ [(NSMutableArray *)self->_appletsBytes hash];
}

- (void)mergeFrom:(id)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 76))
  {
    self->_pending = *(v4 + 72);
    *&self->_has |= 1u;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = *(v4 + 8);
  v7 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v28;
    do
    {
      v10 = 0;
      do
      {
        if (*v28 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NPKProtoSecureElementGetAppletsResponse *)self addCardAIDs:*(*(&v27 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v8);
  }

  v11 = [v5 lifecycleStatesCount];
  if (v11)
  {
    v12 = v11;
    for (i = 0; i != v12; ++i)
    {
      -[NPKProtoSecureElementGetAppletsResponse addLifecycleStates:](self, "addLifecycleStates:", [v5 lifecycleStatesAtIndex:i]);
    }
  }

  v14 = [v5 activationStatesCount];
  if (v14)
  {
    v15 = v14;
    for (j = 0; j != v15; ++j)
    {
      -[NPKProtoSecureElementGetAppletsResponse addActivationStates:](self, "addActivationStates:", [v5 activationStatesAtIndex:j]);
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v17 = v5[7];
  v18 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v24;
    do
    {
      v21 = 0;
      do
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(NPKProtoSecureElementGetAppletsResponse *)self addAppletsBytes:*(*(&v23 + 1) + 8 * v21++), v23];
      }

      while (v19 != v21);
      v19 = [v17 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v19);
  }

  v22 = *MEMORY[0x277D85DE8];
}

@end