@interface MSPGroupSessionStorage
+ (id)groupStorageWithIdentifier:(id)identifier originator:(id)originator receivingHandle:(id)handle receivingAccountIdentifier:(id)accountIdentifier;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addLiveStrategyIdentifier:(id)identifier;
- (void)addMessageStrategyIdentifier:(id)identifier;
- (void)addMinimalStrategyIdentifier:(id)identifier;
- (void)addSmsStrategyIdentifier:(id)identifier;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)updateWithState:(id)state;
- (void)writeTo:(id)to;
@end

@implementation MSPGroupSessionStorage

+ (id)groupStorageWithIdentifier:(id)identifier originator:(id)originator receivingHandle:(id)handle receivingAccountIdentifier:(id)accountIdentifier
{
  v6 = 0;
  if (identifier && originator)
  {
    accountIdentifierCopy = accountIdentifier;
    handleCopy = handle;
    originatorCopy = originator;
    identifierCopy = identifier;
    v14 = [originatorCopy componentsSeparatedByString:@":"];
    lastObject = [v14 lastObject];
    v6 = objc_alloc_init(MSPGroupSessionStorage);
    [(MSPGroupSessionStorage *)v6 setOriginatorIdentifier:lastObject];
    [(MSPGroupSessionStorage *)v6 setFromID:originatorCopy];

    [(MSPGroupSessionStorage *)v6 setReceivingHandle:handleCopy];
    [(MSPGroupSessionStorage *)v6 setReceivingAccountIdentifier:accountIdentifierCopy];

    [(MSPGroupSessionStorage *)v6 setGroupIdentifier:identifierCopy];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [(MSPGroupSessionStorage *)v6 setLastUpdateTimestamp:?];
    v16 = objc_alloc_init(MEMORY[0x277D0ED30]);
    [(MSPGroupSessionStorage *)v6 setState:v16];
  }

  return v6;
}

- (void)updateWithState:(id)state
{
  stateCopy = state;
  if ([(MSPGroupSessionStorage *)self hasState])
  {
    state = [(MSPGroupSessionStorage *)self state];
    [state merge:stateCopy];
  }

  else
  {
    [(MSPGroupSessionStorage *)self setState:stateCopy];
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  [(MSPGroupSessionStorage *)self setLastUpdateTimestamp:?];
}

- (void)addMinimalStrategyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  minimalStrategyIdentifiers = self->_minimalStrategyIdentifiers;
  v8 = identifierCopy;
  if (!minimalStrategyIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_minimalStrategyIdentifiers;
    self->_minimalStrategyIdentifiers = v6;

    identifierCopy = v8;
    minimalStrategyIdentifiers = self->_minimalStrategyIdentifiers;
  }

  [(NSMutableArray *)minimalStrategyIdentifiers addObject:identifierCopy];
}

- (void)addLiveStrategyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  liveStrategyIdentifiers = self->_liveStrategyIdentifiers;
  v8 = identifierCopy;
  if (!liveStrategyIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_liveStrategyIdentifiers;
    self->_liveStrategyIdentifiers = v6;

    identifierCopy = v8;
    liveStrategyIdentifiers = self->_liveStrategyIdentifiers;
  }

  [(NSMutableArray *)liveStrategyIdentifiers addObject:identifierCopy];
}

- (void)addMessageStrategyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  messageStrategyIdentifiers = self->_messageStrategyIdentifiers;
  v8 = identifierCopy;
  if (!messageStrategyIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_messageStrategyIdentifiers;
    self->_messageStrategyIdentifiers = v6;

    identifierCopy = v8;
    messageStrategyIdentifiers = self->_messageStrategyIdentifiers;
  }

  [(NSMutableArray *)messageStrategyIdentifiers addObject:identifierCopy];
}

- (void)addSmsStrategyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  smsStrategyIdentifiers = self->_smsStrategyIdentifiers;
  v8 = identifierCopy;
  if (!smsStrategyIdentifiers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_smsStrategyIdentifiers;
    self->_smsStrategyIdentifiers = v6;

    identifierCopy = v8;
    smsStrategyIdentifiers = self->_smsStrategyIdentifiers;
  }

  [(NSMutableArray *)smsStrategyIdentifiers addObject:identifierCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MSPGroupSessionStorage;
  v4 = [(MSPGroupSessionStorage *)&v8 description];
  dictionaryRepresentation = [(MSPGroupSessionStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier)
  {
    [dictionary setObject:groupIdentifier forKey:@"groupIdentifier"];
  }

  originatorIdentifier = self->_originatorIdentifier;
  if (originatorIdentifier)
  {
    [v4 setObject:originatorIdentifier forKey:@"originatorIdentifier"];
  }

  state = self->_state;
  if (state)
  {
    dictionaryRepresentation = [(GEOSharedNavState *)state dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"state"];
  }

  if (*&self->_has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithDouble:self->_lastUpdateTimestamp];
    [v4 setObject:v9 forKey:@"last_update_timestamp"];
  }

  fromID = self->_fromID;
  if (fromID)
  {
    [v4 setObject:fromID forKey:@"fromID"];
  }

  minimalStrategyIdentifiers = self->_minimalStrategyIdentifiers;
  if (minimalStrategyIdentifiers)
  {
    [v4 setObject:minimalStrategyIdentifiers forKey:@"minimalStrategyIdentifier"];
  }

  liveStrategyIdentifiers = self->_liveStrategyIdentifiers;
  if (liveStrategyIdentifiers)
  {
    [v4 setObject:liveStrategyIdentifiers forKey:@"liveStrategyIdentifier"];
  }

  messageStrategyIdentifiers = self->_messageStrategyIdentifiers;
  if (messageStrategyIdentifiers)
  {
    [v4 setObject:messageStrategyIdentifiers forKey:@"messageStrategyIdentifier"];
  }

  receivingHandle = self->_receivingHandle;
  if (receivingHandle)
  {
    [v4 setObject:receivingHandle forKey:@"receivingHandle"];
  }

  receivingAccountIdentifier = self->_receivingAccountIdentifier;
  if (receivingAccountIdentifier)
  {
    [v4 setObject:receivingAccountIdentifier forKey:@"receivingAccountIdentifier"];
  }

  smsStrategyIdentifiers = self->_smsStrategyIdentifiers;
  if (smsStrategyIdentifiers)
  {
    [v4 setObject:smsStrategyIdentifiers forKey:@"smsStrategyIdentifier"];
  }

  unknownFields = self->_unknownFields;
  if (unknownFields)
  {
    dictionaryRepresentation2 = [(PBUnknownFields *)unknownFields dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"Unknown Fields"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v51 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_groupIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_originatorIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_state)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    lastUpdateTimestamp = self->_lastUpdateTimestamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_fromID)
  {
    PBDataWriterWriteStringField();
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v6 = self->_minimalStrategyIdentifiers;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v43 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v44;
    do
    {
      v10 = 0;
      do
      {
        if (*v44 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v43 + 1) + 8 * v10);
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v43 objects:v50 count:16];
    }

    while (v8);
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v12 = self->_liveStrategyIdentifiers;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v40;
    do
    {
      v16 = 0;
      do
      {
        if (*v40 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v39 + 1) + 8 * v16);
        PBDataWriterWriteStringField();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v39 objects:v49 count:16];
    }

    while (v14);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v18 = self->_messageStrategyIdentifiers;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v35 objects:v48 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v36;
    do
    {
      v22 = 0;
      do
      {
        if (*v36 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = *(*(&v35 + 1) + 8 * v22);
        PBDataWriterWriteStringField();
        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v35 objects:v48 count:16];
    }

    while (v20);
  }

  if (self->_receivingHandle)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_receivingAccountIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v24 = self->_smsStrategyIdentifiers;
  v25 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:v47 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v32;
    do
    {
      v28 = 0;
      do
      {
        if (*v32 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v31 + 1) + 8 * v28);
        PBDataWriterWriteStringField();
        ++v28;
      }

      while (v26 != v28);
      v26 = [(NSMutableArray *)v24 countByEnumeratingWithState:&v31 objects:v47 count:16];
    }

    while (v26);
  }

  [(PBUnknownFields *)self->_unknownFields writeTo:toCopy, v31];
  v30 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v21 = toCopy;
  if (self->_groupIdentifier)
  {
    [toCopy setGroupIdentifier:?];
    toCopy = v21;
  }

  if (self->_originatorIdentifier)
  {
    [v21 setOriginatorIdentifier:?];
    toCopy = v21;
  }

  if (self->_state)
  {
    [v21 setState:?];
    toCopy = v21;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = *&self->_lastUpdateTimestamp;
    *(toCopy + 104) |= 1u;
  }

  if (self->_fromID)
  {
    [v21 setFromID:?];
  }

  if ([(MSPGroupSessionStorage *)self minimalStrategyIdentifiersCount])
  {
    [v21 clearMinimalStrategyIdentifiers];
    minimalStrategyIdentifiersCount = [(MSPGroupSessionStorage *)self minimalStrategyIdentifiersCount];
    if (minimalStrategyIdentifiersCount)
    {
      v6 = minimalStrategyIdentifiersCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(MSPGroupSessionStorage *)self minimalStrategyIdentifierAtIndex:i];
        [v21 addMinimalStrategyIdentifier:v8];
      }
    }
  }

  if ([(MSPGroupSessionStorage *)self liveStrategyIdentifiersCount])
  {
    [v21 clearLiveStrategyIdentifiers];
    liveStrategyIdentifiersCount = [(MSPGroupSessionStorage *)self liveStrategyIdentifiersCount];
    if (liveStrategyIdentifiersCount)
    {
      v10 = liveStrategyIdentifiersCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(MSPGroupSessionStorage *)self liveStrategyIdentifierAtIndex:j];
        [v21 addLiveStrategyIdentifier:v12];
      }
    }
  }

  if ([(MSPGroupSessionStorage *)self messageStrategyIdentifiersCount])
  {
    [v21 clearMessageStrategyIdentifiers];
    messageStrategyIdentifiersCount = [(MSPGroupSessionStorage *)self messageStrategyIdentifiersCount];
    if (messageStrategyIdentifiersCount)
    {
      v14 = messageStrategyIdentifiersCount;
      for (k = 0; k != v14; ++k)
      {
        v16 = [(MSPGroupSessionStorage *)self messageStrategyIdentifierAtIndex:k];
        [v21 addMessageStrategyIdentifier:v16];
      }
    }
  }

  if (self->_receivingHandle)
  {
    [v21 setReceivingHandle:?];
  }

  if (self->_receivingAccountIdentifier)
  {
    [v21 setReceivingAccountIdentifier:?];
  }

  if ([(MSPGroupSessionStorage *)self smsStrategyIdentifiersCount])
  {
    [v21 clearSmsStrategyIdentifiers];
    smsStrategyIdentifiersCount = [(MSPGroupSessionStorage *)self smsStrategyIdentifiersCount];
    if (smsStrategyIdentifiersCount)
    {
      v18 = smsStrategyIdentifiersCount;
      for (m = 0; m != v18; ++m)
      {
        v20 = [(MSPGroupSessionStorage *)self smsStrategyIdentifierAtIndex:m];
        [v21 addSmsStrategyIdentifier:v20];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v64 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_groupIdentifier copyWithZone:zone];
  v7 = *(v5 + 32);
  *(v5 + 32) = v6;

  v8 = [(NSString *)self->_originatorIdentifier copyWithZone:zone];
  v9 = *(v5 + 64);
  *(v5 + 64) = v8;

  v10 = [(GEOSharedNavState *)self->_state copyWithZone:zone];
  v11 = *(v5 + 96);
  *(v5 + 96) = v10;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_lastUpdateTimestamp;
    *(v5 + 104) |= 1u;
  }

  v12 = [(NSString *)self->_fromID copyWithZone:zone];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v14 = self->_minimalStrategyIdentifiers;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v56 objects:v63 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v57;
    do
    {
      v18 = 0;
      do
      {
        if (*v57 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v56 + 1) + 8 * v18) copyWithZone:zone];
        [v5 addMinimalStrategyIdentifier:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v56 objects:v63 count:16];
    }

    while (v16);
  }

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v20 = self->_liveStrategyIdentifiers;
  v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v52 objects:v62 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v53;
    do
    {
      v24 = 0;
      do
      {
        if (*v53 != v23)
        {
          objc_enumerationMutation(v20);
        }

        v25 = [*(*(&v52 + 1) + 8 * v24) copyWithZone:zone];
        [v5 addLiveStrategyIdentifier:v25];

        ++v24;
      }

      while (v22 != v24);
      v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v52 objects:v62 count:16];
    }

    while (v22);
  }

  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v26 = self->_messageStrategyIdentifiers;
  v27 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v48 objects:v61 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v49;
    do
    {
      v30 = 0;
      do
      {
        if (*v49 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v48 + 1) + 8 * v30) copyWithZone:zone];
        [v5 addMessageStrategyIdentifier:v31];

        ++v30;
      }

      while (v28 != v30);
      v28 = [(NSMutableArray *)v26 countByEnumeratingWithState:&v48 objects:v61 count:16];
    }

    while (v28);
  }

  v32 = [(NSString *)self->_receivingHandle copyWithZone:zone];
  v33 = *(v5 + 80);
  *(v5 + 80) = v32;

  v34 = [(NSString *)self->_receivingAccountIdentifier copyWithZone:zone];
  v35 = *(v5 + 72);
  *(v5 + 72) = v34;

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v36 = self->_smsStrategyIdentifiers;
  v37 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (v37)
  {
    v38 = v37;
    v39 = *v45;
    do
    {
      v40 = 0;
      do
      {
        if (*v45 != v39)
        {
          objc_enumerationMutation(v36);
        }

        v41 = [*(*(&v44 + 1) + 8 * v40) copyWithZone:{zone, v44}];
        [v5 addSmsStrategyIdentifier:v41];

        ++v40;
      }

      while (v38 != v40);
      v38 = [(NSMutableArray *)v36 countByEnumeratingWithState:&v44 objects:v60 count:16];
    }

    while (v38);
  }

  objc_storeStrong((v5 + 8), self->_unknownFields);
  v42 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_27;
  }

  groupIdentifier = self->_groupIdentifier;
  if (groupIdentifier | *(equalCopy + 4))
  {
    if (![(NSString *)groupIdentifier isEqual:?])
    {
      goto LABEL_27;
    }
  }

  originatorIdentifier = self->_originatorIdentifier;
  if (originatorIdentifier | *(equalCopy + 8))
  {
    if (![(NSString *)originatorIdentifier isEqual:?])
    {
      goto LABEL_27;
    }
  }

  state = self->_state;
  if (state | *(equalCopy + 12))
  {
    if (![(GEOSharedNavState *)state isEqual:?])
    {
      goto LABEL_27;
    }
  }

  v8 = *(equalCopy + 104);
  if (*&self->_has)
  {
    if ((*(equalCopy + 104) & 1) == 0 || self->_lastUpdateTimestamp != *(equalCopy + 2))
    {
      goto LABEL_27;
    }
  }

  else if (*(equalCopy + 104))
  {
LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  fromID = self->_fromID;
  if (fromID | *(equalCopy + 3) && ![(NSString *)fromID isEqual:?])
  {
    goto LABEL_27;
  }

  minimalStrategyIdentifiers = self->_minimalStrategyIdentifiers;
  if (minimalStrategyIdentifiers | *(equalCopy + 7))
  {
    if (![(NSMutableArray *)minimalStrategyIdentifiers isEqual:?])
    {
      goto LABEL_27;
    }
  }

  liveStrategyIdentifiers = self->_liveStrategyIdentifiers;
  if (liveStrategyIdentifiers | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)liveStrategyIdentifiers isEqual:?])
    {
      goto LABEL_27;
    }
  }

  messageStrategyIdentifiers = self->_messageStrategyIdentifiers;
  if (messageStrategyIdentifiers | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)messageStrategyIdentifiers isEqual:?])
    {
      goto LABEL_27;
    }
  }

  receivingHandle = self->_receivingHandle;
  if (receivingHandle | *(equalCopy + 10))
  {
    if (![(NSString *)receivingHandle isEqual:?])
    {
      goto LABEL_27;
    }
  }

  receivingAccountIdentifier = self->_receivingAccountIdentifier;
  if (receivingAccountIdentifier | *(equalCopy + 9))
  {
    if (![(NSString *)receivingAccountIdentifier isEqual:?])
    {
      goto LABEL_27;
    }
  }

  smsStrategyIdentifiers = self->_smsStrategyIdentifiers;
  if (smsStrategyIdentifiers | *(equalCopy + 11))
  {
    v16 = [(NSMutableArray *)smsStrategyIdentifiers isEqual:?];
  }

  else
  {
    v16 = 1;
  }

LABEL_28:

  return v16;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_groupIdentifier hash];
  v4 = [(NSString *)self->_originatorIdentifier hash];
  v5 = [(GEOSharedNavState *)self->_state hash];
  if (*&self->_has)
  {
    lastUpdateTimestamp = self->_lastUpdateTimestamp;
    if (lastUpdateTimestamp < 0.0)
    {
      lastUpdateTimestamp = -lastUpdateTimestamp;
    }

    *v6.i64 = floor(lastUpdateTimestamp + 0.5);
    v10 = (lastUpdateTimestamp - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v11.f64[0] = NAN;
    v11.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v11), v7, v6).i64;
    if (v10 >= 0.0)
    {
      if (v10 > 0.0)
      {
        v8 += v10;
      }
    }

    else
    {
      v8 -= fabs(v10);
    }
  }

  else
  {
    v8 = 0;
  }

  v12 = v4 ^ v3 ^ v5 ^ v8;
  v13 = [(NSString *)self->_fromID hash];
  v14 = v13 ^ [(NSMutableArray *)self->_minimalStrategyIdentifiers hash];
  v15 = v12 ^ v14 ^ [(NSMutableArray *)self->_liveStrategyIdentifiers hash];
  v16 = [(NSMutableArray *)self->_messageStrategyIdentifiers hash];
  v17 = v16 ^ [(NSString *)self->_receivingHandle hash];
  v18 = v17 ^ [(NSString *)self->_receivingAccountIdentifier hash];
  return v15 ^ v18 ^ [(NSMutableArray *)self->_smsStrategyIdentifiers hash];
}

- (void)mergeFrom:(id)from
{
  v48 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 4))
  {
    [(MSPGroupSessionStorage *)self setGroupIdentifier:?];
  }

  if (*(fromCopy + 8))
  {
    [(MSPGroupSessionStorage *)self setOriginatorIdentifier:?];
  }

  state = self->_state;
  v6 = *(fromCopy + 12);
  if (state)
  {
    if (v6)
    {
      [(GEOSharedNavState *)state mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(MSPGroupSessionStorage *)self setState:?];
  }

  if (*(fromCopy + 104))
  {
    self->_lastUpdateTimestamp = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 3))
  {
    [(MSPGroupSessionStorage *)self setFromID:?];
  }

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v7 = *(fromCopy + 7);
  v8 = [v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v41;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(MSPGroupSessionStorage *)self addMinimalStrategyIdentifier:*(*(&v40 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v9);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v12 = *(fromCopy + 5);
  v13 = [v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v37;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v37 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(MSPGroupSessionStorage *)self addLiveStrategyIdentifier:*(*(&v36 + 1) + 8 * j)];
      }

      v14 = [v12 countByEnumeratingWithState:&v36 objects:v46 count:16];
    }

    while (v14);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = *(fromCopy + 6);
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v45 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    do
    {
      for (k = 0; k != v19; ++k)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [(MSPGroupSessionStorage *)self addMessageStrategyIdentifier:*(*(&v32 + 1) + 8 * k)];
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v45 count:16];
    }

    while (v19);
  }

  if (*(fromCopy + 10))
  {
    [(MSPGroupSessionStorage *)self setReceivingHandle:?];
  }

  if (*(fromCopy + 9))
  {
    [(MSPGroupSessionStorage *)self setReceivingAccountIdentifier:?];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = *(fromCopy + 11);
  v23 = [v22 countByEnumeratingWithState:&v28 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v29;
    do
    {
      for (m = 0; m != v24; ++m)
      {
        if (*v29 != v25)
        {
          objc_enumerationMutation(v22);
        }

        [(MSPGroupSessionStorage *)self addSmsStrategyIdentifier:*(*(&v28 + 1) + 8 * m), v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v28 objects:v44 count:16];
    }

    while (v24);
  }

  v27 = *MEMORY[0x277D85DE8];
}

@end