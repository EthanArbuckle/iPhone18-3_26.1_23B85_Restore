@interface DRSProtoDiagnosticRequestStatsBatch
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addRequestsResultsStats:(id)stats;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DRSProtoDiagnosticRequestStatsBatch

- (void)addRequestsResultsStats:(id)stats
{
  statsCopy = stats;
  requestsResultsStats = self->_requestsResultsStats;
  v8 = statsCopy;
  if (!requestsResultsStats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_requestsResultsStats;
    self->_requestsResultsStats = v6;

    statsCopy = v8;
    requestsResultsStats = self->_requestsResultsStats;
  }

  [(NSMutableArray *)requestsResultsStats addObject:statsCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoDiagnosticRequestStatsBatch;
  v4 = [(DRSProtoDiagnosticRequestStatsBatch *)&v8 description];
  dictionaryRepresentation = [(DRSProtoDiagnosticRequestStatsBatch *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  clientMetadata = self->_clientMetadata;
  if (clientMetadata)
  {
    dictionaryRepresentation = [(DRSProtoClientDeviceMetadata *)clientMetadata dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"client_metadata"];
  }

  if ([(NSMutableArray *)self->_requestsResultsStats count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_requestsResultsStats, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_requestsResultsStats;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"requests_results_stats"];
  }

  v13 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v17 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_clientMetadata)
  {
    PBDataWriterWriteSubmessage();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_requestsResultsStats;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_clientMetadata)
  {
    [toCopy setClientMetadata:?];
  }

  if ([(DRSProtoDiagnosticRequestStatsBatch *)self requestsResultsStatsCount])
  {
    [toCopy clearRequestsResultsStats];
    requestsResultsStatsCount = [(DRSProtoDiagnosticRequestStatsBatch *)self requestsResultsStatsCount];
    if (requestsResultsStatsCount)
    {
      v5 = requestsResultsStatsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(DRSProtoDiagnosticRequestStatsBatch *)self requestsResultsStatsAtIndex:i];
        [toCopy addRequestsResultsStats:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(DRSProtoClientDeviceMetadata *)self->_clientMetadata copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_requestsResultsStats;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * v12) copyWithZone:{zone, v16}];
        [v5 addRequestsResultsStats:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((clientMetadata = self->_clientMetadata, !(clientMetadata | equalCopy[1])) || -[DRSProtoClientDeviceMetadata isEqual:](clientMetadata, "isEqual:")))
  {
    requestsResultsStats = self->_requestsResultsStats;
    if (requestsResultsStats | equalCopy[2])
    {
      v7 = [(NSMutableArray *)requestsResultsStats isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  clientMetadata = self->_clientMetadata;
  v6 = *(fromCopy + 1);
  if (clientMetadata)
  {
    if (v6)
    {
      [(DRSProtoClientDeviceMetadata *)clientMetadata mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(DRSProtoDiagnosticRequestStatsBatch *)self setClientMetadata:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 2);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(DRSProtoDiagnosticRequestStatsBatch *)self addRequestsResultsStats:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end