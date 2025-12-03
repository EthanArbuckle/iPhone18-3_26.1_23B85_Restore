@interface HKCodableSummaryTrendValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDataPresencePoints:(id)points;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryTrendValue

- (void)addDataPresencePoints:(id)points
{
  pointsCopy = points;
  dataPresencePoints = self->_dataPresencePoints;
  v8 = pointsCopy;
  if (!dataPresencePoints)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dataPresencePoints;
    self->_dataPresencePoints = v6;

    pointsCopy = v8;
    dataPresencePoints = self->_dataPresencePoints;
  }

  [(NSMutableArray *)dataPresencePoints addObject:pointsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryTrendValue;
  v4 = [(HKCodableSummaryTrendValue *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummaryTrendValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  analysisData = self->_analysisData;
  if (analysisData)
  {
    [dictionary setObject:analysisData forKey:@"analysisData"];
  }

  coveredDateRangeRawValue = self->_coveredDateRangeRawValue;
  if (coveredDateRangeRawValue)
  {
    [v4 setObject:coveredDateRangeRawValue forKey:@"coveredDateRangeRawValue"];
  }

  if ([(NSMutableArray *)self->_dataPresencePoints count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_dataPresencePoints, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_dataPresencePoints;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [v4 setObject:v7 forKey:@"dataPresencePoints"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_analysisData)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_coveredDateRangeRawValue)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_dataPresencePoints;
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
  if (self->_analysisData)
  {
    [toCopy setAnalysisData:?];
  }

  if (self->_coveredDateRangeRawValue)
  {
    [toCopy setCoveredDateRangeRawValue:?];
  }

  if ([(HKCodableSummaryTrendValue *)self dataPresencePointsCount])
  {
    [toCopy clearDataPresencePoints];
    dataPresencePointsCount = [(HKCodableSummaryTrendValue *)self dataPresencePointsCount];
    if (dataPresencePointsCount)
    {
      v5 = dataPresencePointsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HKCodableSummaryTrendValue *)self dataPresencePointsAtIndex:i];
        [toCopy addDataPresencePoints:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_analysisData copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_coveredDateRangeRawValue copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_dataPresencePoints;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) copyWithZone:{zone, v17}];
        [v5 addDataPresencePoints:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((analysisData = self->_analysisData, !(analysisData | equalCopy[1])) || -[NSData isEqual:](analysisData, "isEqual:")) && ((coveredDateRangeRawValue = self->_coveredDateRangeRawValue, !(coveredDateRangeRawValue | equalCopy[2])) || -[NSString isEqual:](coveredDateRangeRawValue, "isEqual:")))
  {
    dataPresencePoints = self->_dataPresencePoints;
    if (dataPresencePoints | equalCopy[3])
    {
      v8 = [(NSMutableArray *)dataPresencePoints isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSData *)self->_analysisData hash];
  v4 = [(NSString *)self->_coveredDateRangeRawValue hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_dataPresencePoints hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(HKCodableSummaryTrendValue *)self setAnalysisData:?];
  }

  if (*(fromCopy + 2))
  {
    [(HKCodableSummaryTrendValue *)self setCoveredDateRangeRawValue:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 3);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HKCodableSummaryTrendValue *)self addDataPresencePoints:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end