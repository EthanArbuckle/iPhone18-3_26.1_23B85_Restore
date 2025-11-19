@interface HKCodableSummaryCorrelatedTrendResults
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTrendValues:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMinimumSupportedVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryCorrelatedTrendResults

- (void)addTrendValues:(id)a3
{
  v4 = a3;
  trendValues = self->_trendValues;
  v8 = v4;
  if (!trendValues)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_trendValues;
    self->_trendValues = v6;

    v4 = v8;
    trendValues = self->_trendValues;
  }

  [(NSMutableArray *)trendValues addObject:v4];
}

- (void)setHasMinimumSupportedVersion:(BOOL)a3
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryCorrelatedTrendResults;
  v4 = [(HKCodableSummaryCorrelatedTrendResults *)&v8 description];
  v5 = [(HKCodableSummaryCorrelatedTrendResults *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_trendValues count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_trendValues, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_trendValues;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"trendValues"];
  }

  has = self->_has;
  if (has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_latestSupportedVersion];
    [v3 setObject:v12 forKey:@"latestSupportedVersion"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v13 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minimumSupportedVersion];
    [v3 setObject:v13 forKey:@"minimumSupportedVersion"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_trendValues;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if ([(HKCodableSummaryCorrelatedTrendResults *)self trendValuesCount])
  {
    [v9 clearTrendValues];
    v4 = [(HKCodableSummaryCorrelatedTrendResults *)self trendValuesCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HKCodableSummaryCorrelatedTrendResults *)self trendValuesAtIndex:i];
        [v9 addTrendValues:v7];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(v9 + 1) = self->_latestSupportedVersion;
    *(v9 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v9 + 2) = self->_minimumSupportedVersion;
    *(v9 + 32) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = self->_trendValues;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v14 + 1) + 8 * i) copyWithZone:{a3, v14}];
        [v5 addTrendValues:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_latestSupportedVersion;
    *(v5 + 32) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_minimumSupportedVersion;
    *(v5 + 32) |= 2u;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  trendValues = self->_trendValues;
  if (trendValues | *(v4 + 3))
  {
    if (![(NSMutableArray *)trendValues isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_latestSupportedVersion != *(v4 + 1))
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  v6 = (*(v4 + 32) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 32) & 2) == 0 || self->_minimumSupportedVersion != *(v4 + 2))
    {
      goto LABEL_13;
    }

    v6 = 1;
  }

LABEL_14:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_trendValues hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_latestSupportedVersion;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_minimumSupportedVersion;
  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
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

        [(HKCodableSummaryCorrelatedTrendResults *)self addTrendValues:*(*(&v11 + 1) + 8 * i), v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *(v4 + 32);
  if (v10)
  {
    self->_latestSupportedVersion = *(v4 + 1);
    *&self->_has |= 1u;
    v10 = *(v4 + 32);
  }

  if ((v10 & 2) != 0)
  {
    self->_minimumSupportedVersion = *(v4 + 2);
    *&self->_has |= 2u;
  }
}

@end