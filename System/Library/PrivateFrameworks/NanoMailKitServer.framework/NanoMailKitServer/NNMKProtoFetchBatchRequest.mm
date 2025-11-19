@interface NNMKProtoFetchBatchRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFetchRequest:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasWantsBatchedResponse:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation NNMKProtoFetchBatchRequest

- (void)addFetchRequest:(id)a3
{
  v4 = a3;
  fetchRequests = self->_fetchRequests;
  v8 = v4;
  if (!fetchRequests)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fetchRequests;
    self->_fetchRequests = v6;

    v4 = v8;
    fetchRequests = self->_fetchRequests;
  }

  [(NSMutableArray *)fetchRequests addObject:v4];
}

- (void)setHasWantsBatchedResponse:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NNMKProtoFetchBatchRequest;
  v4 = [(NNMKProtoFetchBatchRequest *)&v8 description];
  v5 = [(NNMKProtoFetchBatchRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_fullSyncVersion];
    [v3 setObject:v4 forKey:@"fullSyncVersion"];
  }

  if ([(NSMutableArray *)self->_fetchRequests count])
  {
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_fetchRequests, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = self->_fetchRequests;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"fetchRequest"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_wantsBatchedResponse];
    [v3 setObject:v12 forKey:@"wantsBatchedResponse"];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (*&self->_has)
  {
    fullSyncVersion = self->_fullSyncVersion;
    PBDataWriterWriteUint32Field();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = self->_fetchRequests;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  if ((*&self->_has & 2) != 0)
  {
    wantsBatchedResponse = self->_wantsBatchedResponse;
    PBDataWriterWriteBOOLField();
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[4] = self->_fullSyncVersion;
    *(v4 + 24) |= 1u;
  }

  v9 = v4;
  if ([(NNMKProtoFetchBatchRequest *)self fetchRequestsCount])
  {
    [v9 clearFetchRequests];
    v5 = [(NNMKProtoFetchBatchRequest *)self fetchRequestsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NNMKProtoFetchBatchRequest *)self fetchRequestAtIndex:i];
        [v9 addFetchRequest:v8];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    v9[20] = self->_wantsBatchedResponse;
    v9[24] |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 16) = self->_fullSyncVersion;
    *(v5 + 24) |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = self->_fetchRequests;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) copyWithZone:{a3, v15}];
        [v6 addFetchRequest:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  if ((*&self->_has & 2) != 0)
  {
    v6[20] = self->_wantsBatchedResponse;
    v6[24] |= 2u;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  v6 = *(v4 + 24);
  if (has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_fullSyncVersion != *(v4 + 4))
    {
      goto LABEL_12;
    }
  }

  else if (*(v4 + 24))
  {
    goto LABEL_12;
  }

  fetchRequests = self->_fetchRequests;
  if (fetchRequests | *(v4 + 1))
  {
    if (![(NSMutableArray *)fetchRequests isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v8 = (*(v4 + 24) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 24) & 2) != 0)
    {
      if (self->_wantsBatchedResponse)
      {
        if ((*(v4 + 20) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(v4 + 20))
      {
        goto LABEL_12;
      }

      v8 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v8 = 0;
  }

LABEL_13:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_fullSyncVersion;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_fetchRequests hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_wantsBatchedResponse;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 24))
  {
    self->_fullSyncVersion = *(v4 + 4);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(v4 + 1);
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(NNMKProtoFetchBatchRequest *)self addFetchRequest:*(*(&v12 + 1) + 8 * v10++), v12];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  if ((v5[24] & 2) != 0)
  {
    self->_wantsBatchedResponse = v5[20];
    *&self->_has |= 2u;
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end