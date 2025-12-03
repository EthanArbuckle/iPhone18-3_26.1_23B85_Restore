@interface HKCodableSummaryBalanceMetricsValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addBaselineComparison:(id)comparison;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryBalanceMetricsValue

- (void)addBaselineComparison:(id)comparison
{
  comparisonCopy = comparison;
  baselineComparisons = self->_baselineComparisons;
  v8 = comparisonCopy;
  if (!baselineComparisons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_baselineComparisons;
    self->_baselineComparisons = v6;

    comparisonCopy = v8;
    baselineComparisons = self->_baselineComparisons;
  }

  [(NSMutableArray *)baselineComparisons addObject:comparisonCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryBalanceMetricsValue;
  v4 = [(HKCodableSummaryBalanceMetricsValue *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummaryBalanceMetricsValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_morningIndex];
    [dictionary setObject:v4 forKey:@"morningIndex"];
  }

  baselineRange = self->_baselineRange;
  if (baselineRange)
  {
    dictionaryRepresentation = [(HKCodableDayIndexRange *)baselineRange dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"baselineRange"];
  }

  if ([(NSMutableArray *)self->_baselineComparisons count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_baselineComparisons, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_baselineComparisons;
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

          dictionaryRepresentation2 = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation2];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"baselineComparison"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_baselineRange)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_baselineComparisons;
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
  if (*&self->_has)
  {
    toCopy[1] = self->_morningIndex;
    *(toCopy + 32) |= 1u;
  }

  v9 = toCopy;
  if (self->_baselineRange)
  {
    [toCopy setBaselineRange:?];
  }

  if ([(HKCodableSummaryBalanceMetricsValue *)self baselineComparisonsCount])
  {
    [v9 clearBaselineComparisons];
    baselineComparisonsCount = [(HKCodableSummaryBalanceMetricsValue *)self baselineComparisonsCount];
    if (baselineComparisonsCount)
    {
      v6 = baselineComparisonsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HKCodableSummaryBalanceMetricsValue *)self baselineComparisonAtIndex:i];
        [v9 addBaselineComparison:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_morningIndex;
    *(v5 + 32) |= 1u;
  }

  v7 = [(HKCodableDayIndexRange *)self->_baselineRange copyWithZone:zone];
  v8 = v6[3];
  v6[3] = v7;

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = self->_baselineComparisons;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v16 + 1) + 8 * v13) copyWithZone:{zone, v16}];
        [v6 addBaselineComparison:v14];

        ++v13;
      }

      while (v11 != v13);
      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_morningIndex != *(equalCopy + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  baselineRange = self->_baselineRange;
  if (baselineRange | *(equalCopy + 3) && ![(HKCodableDayIndexRange *)baselineRange isEqual:?])
  {
    goto LABEL_11;
  }

  baselineComparisons = self->_baselineComparisons;
  if (baselineComparisons | *(equalCopy + 2))
  {
    v7 = [(NSMutableArray *)baselineComparisons isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_morningIndex;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(HKCodableDayIndexRange *)self->_baselineRange hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_baselineComparisons hash];
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[4])
  {
    self->_morningIndex = fromCopy[1];
    *&self->_has |= 1u;
  }

  baselineRange = self->_baselineRange;
  v7 = *(v5 + 3);
  if (baselineRange)
  {
    if (v7)
    {
      [(HKCodableDayIndexRange *)baselineRange mergeFrom:?];
    }
  }

  else if (v7)
  {
    [(HKCodableSummaryBalanceMetricsValue *)self setBaselineRange:?];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v8 = *(v5 + 2);
  v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(HKCodableSummaryBalanceMetricsValue *)self addBaselineComparison:*(*(&v13 + 1) + 8 * i), v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

@end