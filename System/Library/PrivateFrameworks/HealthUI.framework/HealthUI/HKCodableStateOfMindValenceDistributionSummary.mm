@interface HKCodableStateOfMindValenceDistributionSummary
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addValenceDistributionData:(id)data;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableStateOfMindValenceDistributionSummary

- (void)addValenceDistributionData:(id)data
{
  dataCopy = data;
  valenceDistributionDatas = self->_valenceDistributionDatas;
  v8 = dataCopy;
  if (!valenceDistributionDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_valenceDistributionDatas;
    self->_valenceDistributionDatas = v6;

    dataCopy = v8;
    valenceDistributionDatas = self->_valenceDistributionDatas;
  }

  [(NSMutableArray *)valenceDistributionDatas addObject:dataCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableStateOfMindValenceDistributionSummary;
  v4 = [(HKCodableStateOfMindValenceDistributionSummary *)&v8 description];
  dictionaryRepresentation = [(HKCodableStateOfMindValenceDistributionSummary *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dayIndexRange = self->_dayIndexRange;
  if (dayIndexRange)
  {
    dictionaryRepresentation = [(HKCodableDayIndexRange *)dayIndexRange dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"dayIndexRange"];
  }

  if ([(NSMutableArray *)self->_valenceDistributionDatas count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_valenceDistributionDatas, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = self->_valenceDistributionDatas;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation2 = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation2];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"valenceDistributionData"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_dayIndexRange)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_valenceDistributionDatas;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_dayIndexRange)
  {
    [toCopy setDayIndexRange:?];
  }

  if ([(HKCodableStateOfMindValenceDistributionSummary *)self valenceDistributionDatasCount])
  {
    [toCopy clearValenceDistributionDatas];
    valenceDistributionDatasCount = [(HKCodableStateOfMindValenceDistributionSummary *)self valenceDistributionDatasCount];
    if (valenceDistributionDatasCount)
    {
      v5 = valenceDistributionDatasCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HKCodableStateOfMindValenceDistributionSummary *)self valenceDistributionDataAtIndex:i];
        [toCopy addValenceDistributionData:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableDayIndexRange *)self->_dayIndexRange copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_valenceDistributionDatas;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{zone, v15}];
        [v5 addValenceDistributionData:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((dayIndexRange = self->_dayIndexRange, !(dayIndexRange | equalCopy[1])) || -[HKCodableDayIndexRange isEqual:](dayIndexRange, "isEqual:")))
  {
    valenceDistributionDatas = self->_valenceDistributionDatas;
    if (valenceDistributionDatas | equalCopy[2])
    {
      v7 = [(NSMutableArray *)valenceDistributionDatas isEqual:?];
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
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  dayIndexRange = self->_dayIndexRange;
  v6 = *(fromCopy + 1);
  if (dayIndexRange)
  {
    if (v6)
    {
      [(HKCodableDayIndexRange *)dayIndexRange mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HKCodableStateOfMindValenceDistributionSummary *)self setDayIndexRange:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 2);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HKCodableStateOfMindValenceDistributionSummary *)self addValenceDistributionData:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end