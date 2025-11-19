@interface HKCodableHorizontalTimePeriodData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDateIntervals:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableHorizontalTimePeriodData

- (void)addDateIntervals:(id)a3
{
  v4 = a3;
  dateIntervals = self->_dateIntervals;
  v8 = v4;
  if (!dateIntervals)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dateIntervals;
    self->_dateIntervals = v6;

    v4 = v8;
    dateIntervals = self->_dateIntervals;
  }

  [(NSMutableArray *)dateIntervals addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableHorizontalTimePeriodData;
  v4 = [(HKCodableHorizontalTimePeriodData *)&v8 description];
  v5 = [(HKCodableHorizontalTimePeriodData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_value];
    [v3 setObject:v4 forKey:@"value"];
  }

  if ([(NSMutableArray *)self->_dateIntervals count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_dateIntervals, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_dateIntervals;
    v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:v11];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v8);
    }

    [v3 setObject:v5 forKey:@"dateIntervals"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_dateIntervals;
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

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = self->_value;
    *(v4 + 24) |= 1u;
  }

  v9 = v4;
  if ([(HKCodableHorizontalTimePeriodData *)self dateIntervalsCount])
  {
    [v9 clearDateIntervals];
    v5 = [(HKCodableHorizontalTimePeriodData *)self dateIntervalsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HKCodableHorizontalTimePeriodData *)self dateIntervalsAtIndex:i];
        [v9 addDateIntervals:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_value;
    *(v5 + 24) |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_dateIntervals;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) copyWithZone:{a3, v14}];
        [v6 addDateIntervals:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 24) & 1) == 0 || self->_value != *(v4 + 1))
    {
      goto LABEL_9;
    }
  }

  else if (*(v4 + 24))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  dateIntervals = self->_dateIntervals;
  if (dateIntervals | *(v4 + 2))
  {
    v6 = [(NSMutableArray *)dateIntervals isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_10:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_value;
  }

  else
  {
    v2 = 0;
  }

  return [(NSMutableArray *)self->_dateIntervals hash]^ v2;
}

- (void)mergeFrom:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (*(v4 + 24))
  {
    self->_value = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(v4 + 2);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(HKCodableHorizontalTimePeriodData *)self addDateIntervals:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end