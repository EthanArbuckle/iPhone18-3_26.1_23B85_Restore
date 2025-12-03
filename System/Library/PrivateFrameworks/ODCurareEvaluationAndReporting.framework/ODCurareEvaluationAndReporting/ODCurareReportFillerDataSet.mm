@interface ODCurareReportFillerDataSet
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addStats:(id)stats;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ODCurareReportFillerDataSet

- (void)addStats:(id)stats
{
  statsCopy = stats;
  stats = self->_stats;
  v8 = statsCopy;
  if (!stats)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_stats;
    self->_stats = v6;

    statsCopy = v8;
    stats = self->_stats;
  }

  [(NSMutableArray *)stats addObject:statsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ODCurareReportFillerDataSet;
  v4 = [(ODCurareReportFillerDataSet *)&v8 description];
  dictionaryRepresentation = [(ODCurareReportFillerDataSet *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  size = self->_size;
  if (size)
  {
    dictionaryRepresentation = [(ODCurareReportFillerDataSetSize *)size dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"size"];
  }

  if ([(NSMutableArray *)self->_stats count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_stats, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = self->_stats;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"stats"];
  }

  sampleStartDate = self->_sampleStartDate;
  if (sampleStartDate)
  {
    [dictionary setObject:sampleStartDate forKey:@"sampleStartDate"];
  }

  sampleEndDate = self->_sampleEndDate;
  if (sampleEndDate)
  {
    [dictionary setObject:sampleEndDate forKey:@"sampleEndDate"];
  }

  v15 = *MEMORY[0x277D85DE8];

  return dictionary;
}

- (void)writeTo:(id)to
{
  v18 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (!self->_size)
  {
    [ODCurareReportFillerDataSet writeTo:];
  }

  v5 = toCopy;
  PBDataWriterWriteSubmessage();
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_stats;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (self->_sampleStartDate)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sampleEndDate)
  {
    PBDataWriterWriteStringField();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setSize:self->_size];
  if ([(ODCurareReportFillerDataSet *)self statsCount])
  {
    [toCopy clearStats];
    statsCount = [(ODCurareReportFillerDataSet *)self statsCount];
    if (statsCount)
    {
      v5 = statsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ODCurareReportFillerDataSet *)self statsAtIndex:i];
        [toCopy addStats:v7];
      }
    }
  }

  if (self->_sampleStartDate)
  {
    [toCopy setSampleStartDate:?];
  }

  v8 = toCopy;
  if (self->_sampleEndDate)
  {
    [toCopy setSampleEndDate:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(ODCurareReportFillerDataSetSize *)self->_size copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = self->_stats;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      v12 = 0;
      do
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v20 + 1) + 8 * v12) copyWithZone:{zone, v20}];
        [v5 addStats:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_sampleStartDate copyWithZone:zone];
  v15 = v5[2];
  v5[2] = v14;

  v16 = [(NSString *)self->_sampleEndDate copyWithZone:zone];
  v17 = v5[1];
  v5[1] = v16;

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((size = self->_size, !(size | equalCopy[3])) || -[ODCurareReportFillerDataSetSize isEqual:](size, "isEqual:")) && ((stats = self->_stats, !(stats | equalCopy[4])) || -[NSMutableArray isEqual:](stats, "isEqual:")) && ((sampleStartDate = self->_sampleStartDate, !(sampleStartDate | equalCopy[2])) || -[NSString isEqual:](sampleStartDate, "isEqual:")))
  {
    sampleEndDate = self->_sampleEndDate;
    if (sampleEndDate | equalCopy[1])
    {
      v9 = [(NSString *)sampleEndDate isEqual:?];
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)hash
{
  v3 = [(ODCurareReportFillerDataSetSize *)self->_size hash];
  v4 = [(NSMutableArray *)self->_stats hash]^ v3;
  v5 = [(NSString *)self->_sampleStartDate hash];
  return v4 ^ v5 ^ [(NSString *)self->_sampleEndDate hash];
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  size = self->_size;
  v6 = *(fromCopy + 3);
  if (size)
  {
    if (v6)
    {
      [(ODCurareReportFillerDataSetSize *)size mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ODCurareReportFillerDataSet *)self setSize:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(fromCopy + 4);
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

        [(ODCurareReportFillerDataSet *)self addStats:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  if (*(fromCopy + 2))
  {
    [(ODCurareReportFillerDataSet *)self setSampleStartDate:?];
  }

  if (*(fromCopy + 1))
  {
    [(ODCurareReportFillerDataSet *)self setSampleEndDate:?];
  }

  v12 = *MEMORY[0x277D85DE8];
}

@end