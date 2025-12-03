@interface NPKProtoRemotePassUpdateResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsUpgradeStatus:(id)status;
- (int)upgradeStatus;
- (unint64_t)hash;
- (void)addExpressPassConfiguration:(id)configuration;
- (void)addExpressPassInformation:(id)information;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPending:(BOOL)pending;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoRemotePassUpdateResponse

- (void)setHasPending:(BOOL)pending
{
  if (pending)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)upgradeStatus
{
  if (*&self->_has)
  {
    return self->_upgradeStatus;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsUpgradeStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"KeepAlive"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"UpgradeStarted"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"UpgradeCompleted"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"ExpressModeSetupCompleted"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addExpressPassInformation:(id)information
{
  informationCopy = information;
  expressPassInformations = self->_expressPassInformations;
  v8 = informationCopy;
  if (!expressPassInformations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_expressPassInformations;
    self->_expressPassInformations = v6;

    informationCopy = v8;
    expressPassInformations = self->_expressPassInformations;
  }

  [(NSMutableArray *)expressPassInformations addObject:informationCopy];
}

- (void)addExpressPassConfiguration:(id)configuration
{
  configurationCopy = configuration;
  expressPassConfigurations = self->_expressPassConfigurations;
  v8 = configurationCopy;
  if (!expressPassConfigurations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_expressPassConfigurations;
    self->_expressPassConfigurations = v6;

    configurationCopy = v8;
    expressPassConfigurations = self->_expressPassConfigurations;
  }

  [(NSMutableArray *)expressPassConfigurations addObject:configurationCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRemotePassUpdateResponse;
  v4 = [(NPKProtoRemotePassUpdateResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoRemotePassUpdateResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [dictionary setObject:v4 forKey:@"pending"];
  }

  pass = self->_pass;
  if (pass)
  {
    dictionaryRepresentation = [(NPKProtoPass *)pass dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"pass"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [dictionary setObject:errorData forKey:@"errorData"];
  }

  if (*&self->_has)
  {
    upgradeStatus = self->_upgradeStatus;
    if (upgradeStatus >= 4)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_upgradeStatus];
    }

    else
    {
      v9 = off_27994AA40[upgradeStatus];
    }

    [dictionary setObject:v9 forKey:@"upgradeStatus"];
  }

  expressPassInformations = self->_expressPassInformations;
  if (expressPassInformations)
  {
    [dictionary setObject:expressPassInformations forKey:@"expressPassInformation"];
  }

  expressPassConfigurations = self->_expressPassConfigurations;
  if (expressPassConfigurations)
  {
    [dictionary setObject:expressPassConfigurations forKey:@"expressPassConfiguration"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v30 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    pending = self->_pending;
    PBDataWriterWriteBOOLField();
  }

  if (self->_pass)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_errorData)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    upgradeStatus = self->_upgradeStatus;
    PBDataWriterWriteInt32Field();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_expressPassInformations;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        PBDataWriterWriteDataField();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_expressPassConfigurations;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        PBDataWriterWriteDataField();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[44] = self->_pending;
    toCopy[48] |= 2u;
  }

  v13 = toCopy;
  if (self->_pass)
  {
    [toCopy setPass:?];
    toCopy = v13;
  }

  if (self->_errorData)
  {
    [v13 setErrorData:?];
    toCopy = v13;
  }

  if (*&self->_has)
  {
    *(toCopy + 10) = self->_upgradeStatus;
    toCopy[48] |= 1u;
  }

  if ([(NPKProtoRemotePassUpdateResponse *)self expressPassInformationsCount])
  {
    [v13 clearExpressPassInformations];
    expressPassInformationsCount = [(NPKProtoRemotePassUpdateResponse *)self expressPassInformationsCount];
    if (expressPassInformationsCount)
    {
      v6 = expressPassInformationsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NPKProtoRemotePassUpdateResponse *)self expressPassInformationAtIndex:i];
        [v13 addExpressPassInformation:v8];
      }
    }
  }

  if ([(NPKProtoRemotePassUpdateResponse *)self expressPassConfigurationsCount])
  {
    [v13 clearExpressPassConfigurations];
    expressPassConfigurationsCount = [(NPKProtoRemotePassUpdateResponse *)self expressPassConfigurationsCount];
    if (expressPassConfigurationsCount)
    {
      v10 = expressPassConfigurationsCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(NPKProtoRemotePassUpdateResponse *)self expressPassConfigurationAtIndex:j];
        [v13 addExpressPassConfiguration:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 44) = self->_pending;
    *(v5 + 48) |= 2u;
  }

  v7 = [(NPKProtoPass *)self->_pass copyWithZone:zone];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v9 = [(NSData *)self->_errorData copyWithZone:zone];
  v10 = *(v6 + 8);
  *(v6 + 8) = v9;

  if (*&self->_has)
  {
    *(v6 + 40) = self->_upgradeStatus;
    *(v6 + 48) |= 1u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = self->_expressPassInformations;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      v15 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v29 + 1) + 8 * v15) copyWithZone:zone];
        [v6 addExpressPassInformation:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v13);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = self->_expressPassConfigurations;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v25 + 1) + 8 * v21) copyWithZone:{zone, v25}];
        [v6 addExpressPassConfiguration:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = *(equalCopy + 48);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0)
    {
      goto LABEL_12;
    }

    v11 = *(equalCopy + 44);
    if (self->_pending)
    {
      if ((*(equalCopy + 44) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(equalCopy + 44))
    {
      goto LABEL_12;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_12;
  }

  pass = self->_pass;
  if (pass | *(equalCopy + 4) && ![(NPKProtoPass *)pass isEqual:?])
  {
    goto LABEL_12;
  }

  errorData = self->_errorData;
  if (errorData | *(equalCopy + 1))
  {
    if (![(NSData *)errorData isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = *(equalCopy + 48);
  if ((*&self->_has & 1) == 0)
  {
    if ((*(equalCopy + 48) & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if ((*(equalCopy + 48) & 1) == 0 || self->_upgradeStatus != *(equalCopy + 10))
  {
    goto LABEL_12;
  }

LABEL_21:
  expressPassInformations = self->_expressPassInformations;
  if (expressPassInformations | *(equalCopy + 3) && ![(NSMutableArray *)expressPassInformations isEqual:?])
  {
    goto LABEL_12;
  }

  expressPassConfigurations = self->_expressPassConfigurations;
  if (expressPassConfigurations | *(equalCopy + 2))
  {
    v9 = [(NSMutableArray *)expressPassConfigurations isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_13:

  return v9;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_pending;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NPKProtoPass *)self->_pass hash];
  v5 = [(NSData *)self->_errorData hash];
  if (*&self->_has)
  {
    v6 = 2654435761 * self->_upgradeStatus;
  }

  else
  {
    v6 = 0;
  }

  v7 = v4 ^ v3 ^ v5 ^ v6;
  v8 = [(NSMutableArray *)self->_expressPassInformations hash];
  return v7 ^ v8 ^ [(NSMutableArray *)self->_expressPassConfigurations hash];
}

- (void)mergeFrom:(id)from
{
  v29 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if ((fromCopy[48] & 2) != 0)
  {
    self->_pending = fromCopy[44];
    *&self->_has |= 2u;
  }

  pass = self->_pass;
  v7 = *(v5 + 4);
  if (pass)
  {
    if (v7)
    {
      [(NPKProtoPass *)pass mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(NPKProtoRemotePassUpdateResponse *)self setPass:?];
  }

  if (*(v5 + 1))
  {
    [(NPKProtoRemotePassUpdateResponse *)self setErrorData:?];
  }

  if (*(v5 + 48))
  {
    self->_upgradeStatus = *(v5 + 10);
    *&self->_has |= 1u;
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = *(v5 + 3);
  v9 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(NPKProtoRemotePassUpdateResponse *)self addExpressPassInformation:*(*(&v23 + 1) + 8 * i)];
      }

      v10 = [v8 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v13 = *(v5 + 2);
  v14 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v20;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v20 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(NPKProtoRemotePassUpdateResponse *)self addExpressPassConfiguration:*(*(&v19 + 1) + 8 * j), v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v15);
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end