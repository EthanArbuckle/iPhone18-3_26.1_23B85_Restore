@interface NPKProtoSetExpressPassResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCurrentExpressPassesInformation:(id)information;
- (void)addCurrentUniqueIDs:(id)ds;
- (void)addExpressPassConfigurations:(id)configurations;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNeedsUnlock:(BOOL)unlock;
- (void)setHasPending:(BOOL)pending;
- (void)setHasSuccess:(BOOL)success;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoSetExpressPassResponse

- (void)setHasPending:(BOOL)pending
{
  if (pending)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasNeedsUnlock:(BOOL)unlock
{
  if (unlock)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addCurrentUniqueIDs:(id)ds
{
  dsCopy = ds;
  currentUniqueIDs = self->_currentUniqueIDs;
  v8 = dsCopy;
  if (!currentUniqueIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_currentUniqueIDs;
    self->_currentUniqueIDs = v6;

    dsCopy = v8;
    currentUniqueIDs = self->_currentUniqueIDs;
  }

  [(NSMutableArray *)currentUniqueIDs addObject:dsCopy];
}

- (void)addCurrentExpressPassesInformation:(id)information
{
  informationCopy = information;
  currentExpressPassesInformations = self->_currentExpressPassesInformations;
  v8 = informationCopy;
  if (!currentExpressPassesInformations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_currentExpressPassesInformations;
    self->_currentExpressPassesInformations = v6;

    informationCopy = v8;
    currentExpressPassesInformations = self->_currentExpressPassesInformations;
  }

  [(NSMutableArray *)currentExpressPassesInformations addObject:informationCopy];
}

- (void)addExpressPassConfigurations:(id)configurations
{
  configurationsCopy = configurations;
  expressPassConfigurations = self->_expressPassConfigurations;
  v8 = configurationsCopy;
  if (!expressPassConfigurations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_expressPassConfigurations;
    self->_expressPassConfigurations = v6;

    configurationsCopy = v8;
    expressPassConfigurations = self->_expressPassConfigurations;
  }

  [(NSMutableArray *)expressPassConfigurations addObject:configurationsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoSetExpressPassResponse;
  v4 = [(NPKProtoSetExpressPassResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoSetExpressPassResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if ((has & 4) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [dictionary setObject:v12 forKey:@"pending"];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 1) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_21;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
  [dictionary setObject:v13 forKey:@"success"];

  has = self->_has;
  if ((has & 1) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_21:
  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_cancelled];
  [dictionary setObject:v14 forKey:@"cancelled"];

  if ((*&self->_has & 2) != 0)
  {
LABEL_5:
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_needsUnlock];
    [dictionary setObject:v5 forKey:@"needsUnlock"];
  }

LABEL_6:
  actualUniqueID = self->_actualUniqueID;
  if (actualUniqueID)
  {
    [dictionary setObject:actualUniqueID forKey:@"actualUniqueID"];
  }

  currentUniqueIDs = self->_currentUniqueIDs;
  if (currentUniqueIDs)
  {
    [dictionary setObject:currentUniqueIDs forKey:@"currentUniqueIDs"];
  }

  actualExpressPassInformation = self->_actualExpressPassInformation;
  if (actualExpressPassInformation)
  {
    [dictionary setObject:actualExpressPassInformation forKey:@"actualExpressPassInformation"];
  }

  currentExpressPassesInformations = self->_currentExpressPassesInformations;
  if (currentExpressPassesInformations)
  {
    [dictionary setObject:currentExpressPassesInformations forKey:@"currentExpressPassesInformation"];
  }

  expressPassConfigurations = self->_expressPassConfigurations;
  if (expressPassConfigurations)
  {
    [dictionary setObject:expressPassConfigurations forKey:@"expressPassConfigurations"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v45 = *MEMORY[0x277D85DE8];
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }

  if (self->_actualUniqueID)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if (v8)
  {
    cancelled = self->_cancelled;
    PBDataWriterWriteBOOLField();
    v8 = self->_has;
  }

  if ((v8 & 2) != 0)
  {
    needsUnlock = self->_needsUnlock;
    PBDataWriterWriteBOOLField();
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = self->_currentUniqueIDs;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v39;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v39 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v38 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v38 objects:v44 count:16];
    }

    while (v13);
  }

  if (self->_actualExpressPassInformation)
  {
    PBDataWriterWriteDataField();
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = self->_currentExpressPassesInformations;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v34 + 1) + 8 * j);
        PBDataWriterWriteDataField();
      }

      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v19);
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = self->_expressPassConfigurations;
  v24 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      for (k = 0; k != v25; ++k)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v30 + 1) + 8 * k);
        PBDataWriterWriteDataField();
      }

      v25 = [(NSMutableArray *)v23 countByEnumeratingWithState:&v30 objects:v42 count:16];
    }

    while (v25);
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[50] = self->_pending;
    toCopy[52] |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    toCopy[51] = self->_success;
    toCopy[52] |= 8u;
  }

  v19 = toCopy;
  if (self->_actualUniqueID)
  {
    [toCopy setActualUniqueID:?];
    toCopy = v19;
  }

  v6 = self->_has;
  if (v6)
  {
    toCopy[48] = self->_cancelled;
    toCopy[52] |= 1u;
    v6 = self->_has;
  }

  if ((v6 & 2) != 0)
  {
    toCopy[49] = self->_needsUnlock;
    toCopy[52] |= 2u;
  }

  if ([(NPKProtoSetExpressPassResponse *)self currentUniqueIDsCount])
  {
    [v19 clearCurrentUniqueIDs];
    currentUniqueIDsCount = [(NPKProtoSetExpressPassResponse *)self currentUniqueIDsCount];
    if (currentUniqueIDsCount)
    {
      v8 = currentUniqueIDsCount;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(NPKProtoSetExpressPassResponse *)self currentUniqueIDsAtIndex:i];
        [v19 addCurrentUniqueIDs:v10];
      }
    }
  }

  if (self->_actualExpressPassInformation)
  {
    [v19 setActualExpressPassInformation:?];
  }

  if ([(NPKProtoSetExpressPassResponse *)self currentExpressPassesInformationsCount])
  {
    [v19 clearCurrentExpressPassesInformations];
    currentExpressPassesInformationsCount = [(NPKProtoSetExpressPassResponse *)self currentExpressPassesInformationsCount];
    if (currentExpressPassesInformationsCount)
    {
      v12 = currentExpressPassesInformationsCount;
      for (j = 0; j != v12; ++j)
      {
        v14 = [(NPKProtoSetExpressPassResponse *)self currentExpressPassesInformationAtIndex:j];
        [v19 addCurrentExpressPassesInformation:v14];
      }
    }
  }

  if ([(NPKProtoSetExpressPassResponse *)self expressPassConfigurationsCount])
  {
    [v19 clearExpressPassConfigurations];
    expressPassConfigurationsCount = [(NPKProtoSetExpressPassResponse *)self expressPassConfigurationsCount];
    if (expressPassConfigurationsCount)
    {
      v16 = expressPassConfigurationsCount;
      for (k = 0; k != v16; ++k)
      {
        v18 = [(NPKProtoSetExpressPassResponse *)self expressPassConfigurationsAtIndex:k];
        [v19 addExpressPassConfigurations:v18];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v48 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 4) != 0)
  {
    v5[50] = self->_pending;
    v5[52] |= 4u;
    has = self->_has;
  }

  if ((has & 8) != 0)
  {
    v5[51] = self->_success;
    v5[52] |= 8u;
  }

  v8 = [(NSString *)self->_actualUniqueID copyWithZone:zone];
  v9 = *(v6 + 2);
  *(v6 + 2) = v8;

  v10 = self->_has;
  if (v10)
  {
    v6[48] = self->_cancelled;
    v6[52] |= 1u;
    v10 = self->_has;
  }

  if ((v10 & 2) != 0)
  {
    v6[49] = self->_needsUnlock;
    v6[52] |= 2u;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = self->_currentUniqueIDs;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v41 objects:v47 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v42;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v42 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v41 + 1) + 8 * i) copyWithZone:zone];
        [v6 addCurrentUniqueIDs:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v41 objects:v47 count:16];
    }

    while (v13);
  }

  v17 = [(NSData *)self->_actualExpressPassInformation copyWithZone:zone];
  v18 = *(v6 + 1);
  *(v6 + 1) = v17;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = self->_currentExpressPassesInformations;
  v20 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v38;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = [*(*(&v37 + 1) + 8 * j) copyWithZone:zone];
        [v6 addCurrentExpressPassesInformation:v24];
      }

      v21 = [(NSMutableArray *)v19 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v21);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v25 = self->_expressPassConfigurations;
  v26 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v33 objects:v45 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v34;
    do
    {
      for (k = 0; k != v27; ++k)
      {
        if (*v34 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = [*(*(&v33 + 1) + 8 * k) copyWithZone:{zone, v33}];
        [v6 addExpressPassConfigurations:v30];
      }

      v27 = [(NSMutableArray *)v25 countByEnumeratingWithState:&v33 objects:v45 count:16];
    }

    while (v27);
  }

  v31 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_44;
  }

  has = self->_has;
  v6 = *(equalCopy + 52);
  if ((has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0)
    {
      goto LABEL_44;
    }

    v14 = *(equalCopy + 50);
    if (self->_pending)
    {
      if ((*(equalCopy + 50) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (*(equalCopy + 50))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
    goto LABEL_44;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 52) & 8) == 0)
    {
      goto LABEL_44;
    }

    v15 = *(equalCopy + 51);
    if (self->_success)
    {
      if ((*(equalCopy + 51) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (*(equalCopy + 51))
    {
      goto LABEL_44;
    }
  }

  else if ((*(equalCopy + 52) & 8) != 0)
  {
    goto LABEL_44;
  }

  actualUniqueID = self->_actualUniqueID;
  if (actualUniqueID | *(equalCopy + 2))
  {
    if (![(NSString *)actualUniqueID isEqual:?])
    {
      goto LABEL_44;
    }

    has = self->_has;
  }

  v8 = *(equalCopy + 52);
  if (has)
  {
    if ((*(equalCopy + 52) & 1) == 0)
    {
      goto LABEL_44;
    }

    v16 = *(equalCopy + 48);
    if (self->_cancelled)
    {
      if ((*(equalCopy + 48) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else if (*(equalCopy + 48))
    {
      goto LABEL_44;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_44;
  }

  if ((has & 2) == 0)
  {
    if ((*(equalCopy + 52) & 2) == 0)
    {
      goto LABEL_13;
    }

LABEL_44:
    v13 = 0;
    goto LABEL_45;
  }

  if ((*(equalCopy + 52) & 2) == 0)
  {
    goto LABEL_44;
  }

  v17 = *(equalCopy + 49);
  if (self->_needsUnlock)
  {
    if ((*(equalCopy + 49) & 1) == 0)
    {
      goto LABEL_44;
    }
  }

  else if (*(equalCopy + 49))
  {
    goto LABEL_44;
  }

LABEL_13:
  currentUniqueIDs = self->_currentUniqueIDs;
  if (currentUniqueIDs | *(equalCopy + 4) && ![(NSMutableArray *)currentUniqueIDs isEqual:?])
  {
    goto LABEL_44;
  }

  actualExpressPassInformation = self->_actualExpressPassInformation;
  if (actualExpressPassInformation | *(equalCopy + 1))
  {
    if (![(NSData *)actualExpressPassInformation isEqual:?])
    {
      goto LABEL_44;
    }
  }

  currentExpressPassesInformations = self->_currentExpressPassesInformations;
  if (currentExpressPassesInformations | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)currentExpressPassesInformations isEqual:?])
    {
      goto LABEL_44;
    }
  }

  expressPassConfigurations = self->_expressPassConfigurations;
  if (expressPassConfigurations | *(equalCopy + 5))
  {
    v13 = [(NSMutableArray *)expressPassConfigurations isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_45:

  return v13;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v3 = 2654435761 * self->_pending;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v4 = 2654435761 * self->_success;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSString *)self->_actualUniqueID hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_cancelled;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  v6 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v7 = 2654435761 * self->_needsUnlock;
LABEL_11:
  v8 = v4 ^ v3 ^ v6 ^ v7 ^ v5;
  v9 = [(NSMutableArray *)self->_currentUniqueIDs hash];
  v10 = v8 ^ v9 ^ [(NSData *)self->_actualExpressPassInformation hash];
  v11 = [(NSMutableArray *)self->_currentExpressPassesInformations hash];
  return v10 ^ v11 ^ [(NSMutableArray *)self->_expressPassConfigurations hash];
}

- (void)mergeFrom:(id)from
{
  v39 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  v6 = fromCopy[52];
  if ((v6 & 4) != 0)
  {
    self->_pending = fromCopy[50];
    *&self->_has |= 4u;
    v6 = fromCopy[52];
  }

  if ((v6 & 8) != 0)
  {
    self->_success = fromCopy[51];
    *&self->_has |= 8u;
  }

  if (*(fromCopy + 2))
  {
    [(NPKProtoSetExpressPassResponse *)self setActualUniqueID:?];
  }

  v7 = *(v5 + 52);
  if (v7)
  {
    self->_cancelled = *(v5 + 48);
    *&self->_has |= 1u;
    v7 = *(v5 + 52);
  }

  if ((v7 & 2) != 0)
  {
    self->_needsUnlock = *(v5 + 49);
    *&self->_has |= 2u;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = *(v5 + 4);
  v9 = [v8 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v33;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v33 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(NPKProtoSetExpressPassResponse *)self addCurrentUniqueIDs:*(*(&v32 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v32 objects:v38 count:16];
    }

    while (v10);
  }

  if (*(v5 + 1))
  {
    [(NPKProtoSetExpressPassResponse *)self setActualExpressPassInformation:?];
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v13 = *(v5 + 3);
  v14 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v29;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v29 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(NPKProtoSetExpressPassResponse *)self addCurrentExpressPassesInformation:*(*(&v28 + 1) + 8 * j)];
      }

      v15 = [v13 countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v15);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v18 = *(v5 + 5);
  v19 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v25;
    do
    {
      for (k = 0; k != v20; ++k)
      {
        if (*v25 != v21)
        {
          objc_enumerationMutation(v18);
        }

        [(NPKProtoSetExpressPassResponse *)self addExpressPassConfigurations:*(*(&v24 + 1) + 8 * k), v24];
      }

      v20 = [v18 countByEnumeratingWithState:&v24 objects:v36 count:16];
    }

    while (v20);
  }

  v23 = *MEMORY[0x277D85DE8];
}

@end