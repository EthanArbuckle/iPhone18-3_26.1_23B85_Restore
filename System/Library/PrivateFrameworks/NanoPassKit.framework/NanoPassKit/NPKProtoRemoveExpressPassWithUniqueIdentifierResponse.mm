@interface NPKProtoRemoveExpressPassWithUniqueIdentifierResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCurrentExpressPassesInformation:(id)information;
- (void)addExpressPassConfigurations:(id)configurations;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSuccess:(BOOL)success;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoRemoveExpressPassWithUniqueIdentifierResponse

- (void)setHasSuccess:(BOOL)success
{
  if (success)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
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
  v8.super_class = NPKProtoRemoveExpressPassWithUniqueIdentifierResponse;
  v4 = [(NPKProtoRemoveExpressPassWithUniqueIdentifierResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoRemoveExpressPassWithUniqueIdentifierResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [dictionary setObject:v5 forKey:@"pending"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_success];
    [dictionary setObject:v6 forKey:@"success"];
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
  v31 = *MEMORY[0x277D85DE8];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    success = self->_success;
    PBDataWriterWriteBOOLField();
  }

  if (self->_actualExpressPassInformation)
  {
    PBDataWriterWriteDataField();
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_currentExpressPassesInformations;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        PBDataWriterWriteDataField();
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_expressPassConfigurations;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v21 + 1) + 8 * j);
        PBDataWriterWriteDataField();
      }

      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[32] = self->_pending;
    toCopy[36] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    toCopy[33] = self->_success;
    toCopy[36] |= 2u;
  }

  v14 = toCopy;
  if (self->_actualExpressPassInformation)
  {
    [toCopy setActualExpressPassInformation:?];
  }

  if ([(NPKProtoRemoveExpressPassWithUniqueIdentifierResponse *)self currentExpressPassesInformationsCount])
  {
    [v14 clearCurrentExpressPassesInformations];
    currentExpressPassesInformationsCount = [(NPKProtoRemoveExpressPassWithUniqueIdentifierResponse *)self currentExpressPassesInformationsCount];
    if (currentExpressPassesInformationsCount)
    {
      v7 = currentExpressPassesInformationsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(NPKProtoRemoveExpressPassWithUniqueIdentifierResponse *)self currentExpressPassesInformationAtIndex:i];
        [v14 addCurrentExpressPassesInformation:v9];
      }
    }
  }

  if ([(NPKProtoRemoveExpressPassWithUniqueIdentifierResponse *)self expressPassConfigurationsCount])
  {
    [v14 clearExpressPassConfigurations];
    expressPassConfigurationsCount = [(NPKProtoRemoveExpressPassWithUniqueIdentifierResponse *)self expressPassConfigurationsCount];
    if (expressPassConfigurationsCount)
    {
      v11 = expressPassConfigurationsCount;
      for (j = 0; j != v11; ++j)
      {
        v13 = [(NPKProtoRemoveExpressPassWithUniqueIdentifierResponse *)self expressPassConfigurationsAtIndex:j];
        [v14 addExpressPassConfigurations:v13];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    v5[32] = self->_pending;
    v5[36] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v5[33] = self->_success;
    v5[36] |= 2u;
  }

  v8 = [(NSData *)self->_actualExpressPassInformation copyWithZone:zone];
  v9 = v6[1];
  v6[1] = v8;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = self->_currentExpressPassesInformations;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v29;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v29 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v28 + 1) + 8 * i) copyWithZone:zone];
        [v6 addCurrentExpressPassesInformation:v15];
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v12);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v16 = self->_expressPassConfigurations;
  v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v25;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v24 + 1) + 8 * j) copyWithZone:{zone, v24}];
        [v6 addExpressPassConfigurations:v21];
      }

      v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v18);
  }

  v22 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  v5 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
      goto LABEL_23;
    }

    v10 = *(equalCopy + 32);
    if (self->_pending)
    {
      if ((*(equalCopy + 32) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  if ((*(equalCopy + 36) & 2) == 0)
  {
    goto LABEL_23;
  }

  v11 = *(equalCopy + 33);
  if (self->_success)
  {
    if ((*(equalCopy + 33) & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 33))
  {
    goto LABEL_23;
  }

LABEL_6:
  actualExpressPassInformation = self->_actualExpressPassInformation;
  if (actualExpressPassInformation | *(equalCopy + 1) && ![(NSData *)actualExpressPassInformation isEqual:?])
  {
    goto LABEL_23;
  }

  currentExpressPassesInformations = self->_currentExpressPassesInformations;
  if (currentExpressPassesInformations | *(equalCopy + 2))
  {
    if (![(NSMutableArray *)currentExpressPassesInformations isEqual:?])
    {
      goto LABEL_23;
    }
  }

  expressPassConfigurations = self->_expressPassConfigurations;
  if (expressPassConfigurations | *(equalCopy + 3))
  {
    v9 = [(NSMutableArray *)expressPassConfigurations isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_24:

  return v9;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_pending;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_success;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSData *)self->_actualExpressPassInformation hash];
  v6 = [(NSMutableArray *)self->_currentExpressPassesInformations hash];
  return v5 ^ v6 ^ [(NSMutableArray *)self->_expressPassConfigurations hash];
}

- (void)mergeFrom:(id)from
{
  v28 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 36);
  if (v6)
  {
    self->_pending = *(fromCopy + 32);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 36);
  }

  if ((v6 & 2) != 0)
  {
    self->_success = *(fromCopy + 33);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 1))
  {
    [(NPKProtoRemoveExpressPassWithUniqueIdentifierResponse *)self setActualExpressPassInformation:?];
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = v5[2];
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(NPKProtoRemoveExpressPassWithUniqueIdentifierResponse *)self addCurrentExpressPassesInformation:*(*(&v22 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = v5[3];
  v13 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      for (j = 0; j != v14; ++j)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(NPKProtoRemoveExpressPassWithUniqueIdentifierResponse *)self addExpressPassConfigurations:*(*(&v18 + 1) + 8 * j), v18];
      }

      v14 = [v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end