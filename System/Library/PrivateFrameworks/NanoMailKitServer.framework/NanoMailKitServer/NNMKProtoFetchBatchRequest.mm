@interface NNMKProtoFetchBatchRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addFetchRequest:(id)request;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasWantsBatchedResponse:(BOOL)response;
- (void)writeTo:(id)to;
@end

@implementation NNMKProtoFetchBatchRequest

- (void)addFetchRequest:(id)request
{
  requestCopy = request;
  fetchRequests = self->_fetchRequests;
  v8 = requestCopy;
  if (!fetchRequests)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fetchRequests;
    self->_fetchRequests = v6;

    requestCopy = v8;
    fetchRequests = self->_fetchRequests;
  }

  [(NSMutableArray *)fetchRequests addObject:requestCopy];
}

- (void)setHasWantsBatchedResponse:(BOOL)response
{
  if (response)
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
  dictionaryRepresentation = [(NNMKProtoFetchBatchRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_fullSyncVersion];
    [dictionary setObject:v4 forKey:@"fullSyncVersion"];
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

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"fetchRequest"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_wantsBatchedResponse];
    [dictionary setObject:v12 forKey:@"wantsBatchedResponse"];
  }

  v13 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[4] = self->_fullSyncVersion;
    *(toCopy + 24) |= 1u;
  }

  v9 = toCopy;
  if ([(NNMKProtoFetchBatchRequest *)self fetchRequestsCount])
  {
    [v9 clearFetchRequests];
    fetchRequestsCount = [(NNMKProtoFetchBatchRequest *)self fetchRequestsCount];
    if (fetchRequestsCount)
    {
      v6 = fetchRequestsCount;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
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

        v12 = [*(*(&v15 + 1) + 8 * v11) copyWithZone:{zone, v15}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  has = self->_has;
  v6 = *(equalCopy + 24);
  if (has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_fullSyncVersion != *(equalCopy + 4))
    {
      goto LABEL_12;
    }
  }

  else if (*(equalCopy + 24))
  {
    goto LABEL_12;
  }

  fetchRequests = self->_fetchRequests;
  if (fetchRequests | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)fetchRequests isEqual:?])
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v8 = (*(equalCopy + 24) & 2) == 0;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) != 0)
    {
      if (self->_wantsBatchedResponse)
      {
        if ((*(equalCopy + 20) & 1) == 0)
        {
          goto LABEL_12;
        }
      }

      else if (*(equalCopy + 20))
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

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (*(fromCopy + 24))
  {
    self->_fullSyncVersion = *(fromCopy + 4);
    *&self->_has |= 1u;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = *(fromCopy + 1);
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