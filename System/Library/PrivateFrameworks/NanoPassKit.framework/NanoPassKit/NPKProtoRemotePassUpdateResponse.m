@interface NPKProtoRemotePassUpdateResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsUpgradeStatus:(id)a3;
- (int)upgradeStatus;
- (unint64_t)hash;
- (void)addExpressPassConfiguration:(id)a3;
- (void)addExpressPassInformation:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasPending:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NPKProtoRemotePassUpdateResponse

- (void)setHasPending:(BOOL)a3
{
  if (a3)
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

- (int)StringAsUpgradeStatus:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"KeepAlive"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"UpgradeStarted"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"UpgradeCompleted"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"ExpressModeSetupCompleted"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)addExpressPassInformation:(id)a3
{
  v4 = a3;
  expressPassInformations = self->_expressPassInformations;
  v8 = v4;
  if (!expressPassInformations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_expressPassInformations;
    self->_expressPassInformations = v6;

    v4 = v8;
    expressPassInformations = self->_expressPassInformations;
  }

  [(NSMutableArray *)expressPassInformations addObject:v4];
}

- (void)addExpressPassConfiguration:(id)a3
{
  v4 = a3;
  expressPassConfigurations = self->_expressPassConfigurations;
  v8 = v4;
  if (!expressPassConfigurations)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_expressPassConfigurations;
    self->_expressPassConfigurations = v6;

    v4 = v8;
    expressPassConfigurations = self->_expressPassConfigurations;
  }

  [(NSMutableArray *)expressPassConfigurations addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoRemotePassUpdateResponse;
  v4 = [(NPKProtoRemotePassUpdateResponse *)&v8 description];
  v5 = [(NPKProtoRemotePassUpdateResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:self->_pending];
    [v3 setObject:v4 forKey:@"pending"];
  }

  pass = self->_pass;
  if (pass)
  {
    v6 = [(NPKProtoPass *)pass dictionaryRepresentation];
    [v3 setObject:v6 forKey:@"pass"];
  }

  errorData = self->_errorData;
  if (errorData)
  {
    [v3 setObject:errorData forKey:@"errorData"];
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

    [v3 setObject:v9 forKey:@"upgradeStatus"];
  }

  expressPassInformations = self->_expressPassInformations;
  if (expressPassInformations)
  {
    [v3 setObject:expressPassInformations forKey:@"expressPassInformation"];
  }

  expressPassConfigurations = self->_expressPassConfigurations;
  if (expressPassConfigurations)
  {
    [v3 setObject:expressPassConfigurations forKey:@"expressPassConfiguration"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if ((*&self->_has & 2) != 0)
  {
    v4[44] = self->_pending;
    v4[48] |= 2u;
  }

  v13 = v4;
  if (self->_pass)
  {
    [v4 setPass:?];
    v4 = v13;
  }

  if (self->_errorData)
  {
    [v13 setErrorData:?];
    v4 = v13;
  }

  if (*&self->_has)
  {
    *(v4 + 10) = self->_upgradeStatus;
    v4[48] |= 1u;
  }

  if ([(NPKProtoRemotePassUpdateResponse *)self expressPassInformationsCount])
  {
    [v13 clearExpressPassInformations];
    v5 = [(NPKProtoRemotePassUpdateResponse *)self expressPassInformationsCount];
    if (v5)
    {
      v6 = v5;
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
    v9 = [(NPKProtoRemotePassUpdateResponse *)self expressPassConfigurationsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(NPKProtoRemotePassUpdateResponse *)self expressPassConfigurationAtIndex:j];
        [v13 addExpressPassConfiguration:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 44) = self->_pending;
    *(v5 + 48) |= 2u;
  }

  v7 = [(NPKProtoPass *)self->_pass copyWithZone:a3];
  v8 = *(v6 + 32);
  *(v6 + 32) = v7;

  v9 = [(NSData *)self->_errorData copyWithZone:a3];
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

        v16 = [*(*(&v29 + 1) + 8 * v15) copyWithZone:a3];
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

        v22 = [*(*(&v25 + 1) + 8 * v21) copyWithZone:{a3, v25}];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = *(v4 + 48);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0)
    {
      goto LABEL_12;
    }

    v11 = *(v4 + 44);
    if (self->_pending)
    {
      if ((*(v4 + 44) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (*(v4 + 44))
    {
      goto LABEL_12;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_12;
  }

  pass = self->_pass;
  if (pass | *(v4 + 4) && ![(NPKProtoPass *)pass isEqual:?])
  {
    goto LABEL_12;
  }

  errorData = self->_errorData;
  if (errorData | *(v4 + 1))
  {
    if (![(NSData *)errorData isEqual:?])
    {
      goto LABEL_12;
    }
  }

  v8 = *(v4 + 48);
  if ((*&self->_has & 1) == 0)
  {
    if ((*(v4 + 48) & 1) == 0)
    {
      goto LABEL_21;
    }

LABEL_12:
    v9 = 0;
    goto LABEL_13;
  }

  if ((*(v4 + 48) & 1) == 0 || self->_upgradeStatus != *(v4 + 10))
  {
    goto LABEL_12;
  }

LABEL_21:
  expressPassInformations = self->_expressPassInformations;
  if (expressPassInformations | *(v4 + 3) && ![(NSMutableArray *)expressPassInformations isEqual:?])
  {
    goto LABEL_12;
  }

  expressPassConfigurations = self->_expressPassConfigurations;
  if (expressPassConfigurations | *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if ((v4[48] & 2) != 0)
  {
    self->_pending = v4[44];
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