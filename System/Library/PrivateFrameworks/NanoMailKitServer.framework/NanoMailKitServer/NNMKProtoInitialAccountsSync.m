@interface NNMKProtoInitialAccountsSync
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addInitialAccount:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoInitialAccountsSync

- (void)addInitialAccount:(id)a3
{
  v4 = a3;
  initialAccounts = self->_initialAccounts;
  v8 = v4;
  if (!initialAccounts)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_initialAccounts;
    self->_initialAccounts = v6;

    v4 = v8;
    initialAccounts = self->_initialAccounts;
  }

  [(NSMutableArray *)initialAccounts addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoInitialAccountsSync;
  v4 = [(NNMKProtoInitialAccountsSync *)&v8 description];
  v5 = [(NNMKProtoInitialAccountsSync *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_initialAccounts count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_initialAccounts, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v5 = self->_initialAccounts;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v16 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"initialAccount"];
  }

  initialSyncVersion = self->_initialSyncVersion;
  if (initialSyncVersion)
  {
    [v3 setObject:initialSyncVersion forKey:@"initialSyncVersion"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_fullSyncVersion];
    [v3 setObject:v12 forKey:@"fullSyncVersion"];
  }

  dateSynced = self->_dateSynced;
  if (dateSynced)
  {
    [v3 setObject:dateSynced forKey:@"dateSynced"];
  }

  v14 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_initialAccounts;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  if (self->_initialSyncVersion)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    fullSyncVersion = self->_fullSyncVersion;
    PBDataWriterWriteUint32Field();
  }

  if (self->_dateSynced)
  {
    PBDataWriterWriteDataField();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if ([(NNMKProtoInitialAccountsSync *)self initialAccountsCount])
  {
    [v9 clearInitialAccounts];
    v4 = [(NNMKProtoInitialAccountsSync *)self initialAccountsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NNMKProtoInitialAccountsSync *)self initialAccountAtIndex:i];
        [v9 addInitialAccount:v7];
      }
    }
  }

  if (self->_initialSyncVersion)
  {
    [v9 setInitialSyncVersion:?];
  }

  v8 = v9;
  if (*&self->_has)
  {
    *(v9 + 4) = self->_fullSyncVersion;
    *(v9 + 40) |= 1u;
  }

  if (self->_dateSynced)
  {
    [v9 setDateSynced:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = self->_initialAccounts;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v18 + 1) + 8 * v10) copyWithZone:{a3, v18}];
        [v5 addInitialAccount:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_initialSyncVersion copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  if (*&self->_has)
  {
    *(v5 + 16) = self->_fullSyncVersion;
    *(v5 + 40) |= 1u;
  }

  v14 = [(NSData *)self->_dateSynced copyWithZone:a3, v18];
  v15 = *(v5 + 8);
  *(v5 + 8) = v14;

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  initialAccounts = self->_initialAccounts;
  if (initialAccounts | *(v4 + 3))
  {
    if (![(NSMutableArray *)initialAccounts isEqual:?])
    {
      goto LABEL_13;
    }
  }

  initialSyncVersion = self->_initialSyncVersion;
  if (initialSyncVersion | *(v4 + 4))
  {
    if (![(NSString *)initialSyncVersion isEqual:?])
    {
      goto LABEL_13;
    }
  }

  v7 = *(v4 + 40);
  if (*&self->_has)
  {
    if ((*(v4 + 40) & 1) == 0 || self->_fullSyncVersion != *(v4 + 4))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 40))
  {
LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  dateSynced = self->_dateSynced;
  if (dateSynced | *(v4 + 1))
  {
    v9 = [(NSData *)dateSynced isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_14:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_initialAccounts hash];
  v4 = [(NSString *)self->_initialSyncVersion hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_fullSyncVersion;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSData *)self->_dateSynced hash];
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
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

        [(NNMKProtoInitialAccountsSync *)self addInitialAccount:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  if (*(v4 + 4))
  {
    [(NNMKProtoInitialAccountsSync *)self setInitialSyncVersion:?];
  }

  if (*(v4 + 40))
  {
    self->_fullSyncVersion = *(v4 + 4);
    *&self->_has |= 1u;
  }

  if (*(v4 + 1))
  {
    [(NNMKProtoInitialAccountsSync *)self setDateSynced:?];
  }

  v10 = *MEMORY[0x277D85DE8];
}

@end