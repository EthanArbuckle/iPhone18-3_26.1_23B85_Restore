@interface NPKProtoSecureElementGetAppletsResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (unsigned)activationStatesAtIndex:(unint64_t)index;
- (unsigned)lifecycleStatesAtIndex:(unint64_t)index;
- (void)addAppletsBytes:(id)bytes;
- (void)addCardAIDs:(id)ds;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (void)addCardAIDs:(id)ds
{
  dsCopy = ds;
  cardAIDs = self->_cardAIDs;
  v8 = dsCopy;
  if (!cardAIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cardAIDs;
    self->_cardAIDs = v6;

    dsCopy = v8;
    cardAIDs = self->_cardAIDs;
  }

  [(NSMutableArray *)cardAIDs addObject:dsCopy];
}

- (unsigned)lifecycleStatesAtIndex:(unint64_t)index
{
  p_lifecycleStates = &self->_lifecycleStates;
  count = self->_lifecycleStates.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_lifecycleStates->list[index];
}

- (unsigned)activationStatesAtIndex:(unint64_t)index
{
  p_activationStates = &self->_activationStates;
  count = self->_activationStates.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"idx (%lu) is out of range (%lu)", index, count];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];
    [v9 raise];
  }

  return p_activationStates->list[index];
}

- (void)addAppletsBytes:(id)bytes
{
  bytesCopy = bytes;
  appletsBytes = self->_appletsBytes;
  v8 = bytesCopy;
  if (!appletsBytes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_appletsBytes;
    self->_appletsBytes = v6;

    bytesCopy = v8;
    appletsBytes = self->_appletsBytes;
  }

  [(NSMutableArray *)appletsBytes addObject:bytesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoSecureElementGetAppletsResponse;
  v4 = [(NPKProtoSecureElementGetAppletsResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoSecureElementGetAppletsResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [dictionary setObject:v4 forKey:@"pending"];
  }

  cardAIDs = self->_cardAIDs;
  if (cardAIDs)
  {
    [dictionary setObject:cardAIDs forKey:@"cardAIDs"];
  }

  v6 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v6 forKey:@"lifecycleStates"];

  v7 = PBRepeatedUInt32NSArray();
  [dictionary setObject:v7 forKey:@"activationStates"];

  appletsBytes = self->_appletsBytes;
  if (appletsBytes)
  {
    [dictionary setObject:appletsBytes forKey:@"appletsBytes"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v33 = *MEMORY[0x277D85DE8];
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[72] = self->_pending;
    toCopy[76] |= 1u;
  }

  v19 = toCopy;
  if ([(NPKProtoSecureElementGetAppletsResponse *)self cardAIDsCount])
  {
    [v19 clearCardAIDs];
    cardAIDsCount = [(NPKProtoSecureElementGetAppletsResponse *)self cardAIDsCount];
    if (cardAIDsCount)
    {
      v6 = cardAIDsCount;
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
    lifecycleStatesCount = [(NPKProtoSecureElementGetAppletsResponse *)self lifecycleStatesCount];
    if (lifecycleStatesCount)
    {
      v10 = lifecycleStatesCount;
      for (j = 0; j != v10; ++j)
      {
        [v19 addLifecycleStates:{-[NPKProtoSecureElementGetAppletsResponse lifecycleStatesAtIndex:](self, "lifecycleStatesAtIndex:", j)}];
      }
    }
  }

  if ([(NPKProtoSecureElementGetAppletsResponse *)self activationStatesCount])
  {
    [v19 clearActivationStates];
    activationStatesCount = [(NPKProtoSecureElementGetAppletsResponse *)self activationStatesCount];
    if (activationStatesCount)
    {
      v13 = activationStatesCount;
      for (k = 0; k != v13; ++k)
      {
        [v19 addActivationStates:{-[NPKProtoSecureElementGetAppletsResponse activationStatesAtIndex:](self, "activationStatesAtIndex:", k)}];
      }
    }
  }

  if ([(NPKProtoSecureElementGetAppletsResponse *)self appletsBytesCount])
  {
    [v19 clearAppletsBytes];
    appletsBytesCount = [(NPKProtoSecureElementGetAppletsResponse *)self appletsBytesCount];
    if (appletsBytesCount)
    {
      v16 = appletsBytesCount;
      for (m = 0; m != v16; ++m)
      {
        v18 = [(NPKProtoSecureElementGetAppletsResponse *)self appletsBytesAtIndex:m];
        [v19 addAppletsBytes:v18];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

        v12 = [*(*(&v25 + 1) + 8 * v11) copyWithZone:zone];
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

        v18 = [*(*(&v21 + 1) + 8 * v17) copyWithZone:{zone, v21}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 76);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(equalCopy + 76) & 1) == 0)
  {
    goto LABEL_11;
  }

  v5 = *(equalCopy + 72);
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

  if ((*(equalCopy + 72) & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_4:
  cardAIDs = self->_cardAIDs;
  if (cardAIDs | *(equalCopy + 8) && ![(NSMutableArray *)cardAIDs isEqual:?]|| !PBRepeatedUInt32IsEqual() || !PBRepeatedUInt32IsEqual())
  {
    goto LABEL_11;
  }

  appletsBytes = self->_appletsBytes;
  if (appletsBytes | *(equalCopy + 7))
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

- (void)mergeFrom:(id)from
{
  v33 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 76))
  {
    self->_pending = *(fromCopy + 72);
    *&self->_has |= 1u;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = *(fromCopy + 8);
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

  lifecycleStatesCount = [v5 lifecycleStatesCount];
  if (lifecycleStatesCount)
  {
    v12 = lifecycleStatesCount;
    for (i = 0; i != v12; ++i)
    {
      -[NPKProtoSecureElementGetAppletsResponse addLifecycleStates:](self, "addLifecycleStates:", [v5 lifecycleStatesAtIndex:i]);
    }
  }

  activationStatesCount = [v5 activationStatesCount];
  if (activationStatesCount)
  {
    v15 = activationStatesCount;
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