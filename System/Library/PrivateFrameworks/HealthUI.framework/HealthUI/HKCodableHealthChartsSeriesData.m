@interface HKCodableHealthChartsSeriesData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPoints:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableHealthChartsSeriesData

- (void)addPoints:(id)a3
{
  v4 = a3;
  points = self->_points;
  v8 = v4;
  if (!points)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_points;
    self->_points = v6;

    v4 = v8;
    points = self->_points;
  }

  [(NSMutableArray *)points addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableHealthChartsSeriesData;
  v4 = [(HKCodableHealthChartsSeriesData *)&v8 description];
  v5 = [(HKCodableHealthChartsSeriesData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_points count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_points, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_points;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"points"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_aggregation];
    [v3 setObject:v11 forKey:@"aggregation"];
  }

  unitString = self->_unitString;
  if (unitString)
  {
    [v3 setObject:unitString forKey:@"unitString"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_points;
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

  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  if (self->_unitString)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if ([(HKCodableHealthChartsSeriesData *)self pointsCount])
  {
    [v9 clearPoints];
    v4 = [(HKCodableHealthChartsSeriesData *)self pointsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HKCodableHealthChartsSeriesData *)self pointsAtIndex:i];
        [v9 addPoints:v7];
      }
    }
  }

  v8 = v9;
  if (*&self->_has)
  {
    *(v9 + 1) = self->_aggregation;
    *(v9 + 32) |= 1u;
  }

  if (self->_unitString)
  {
    [v9 setUnitString:?];
    v8 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_points;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) copyWithZone:{a3, v15}];
        [v5 addPoints:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    *(v5 + 8) = self->_aggregation;
    *(v5 + 32) |= 1u;
  }

  v12 = [(NSString *)self->_unitString copyWithZone:a3, v15];
  v13 = *(v5 + 24);
  *(v5 + 24) = v12;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  points = self->_points;
  if (points | *(v4 + 2))
  {
    if (![(NSMutableArray *)points isEqual:?])
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 32) & 1) == 0 || self->_aggregation != *(v4 + 1))
    {
      goto LABEL_11;
    }
  }

  else if (*(v4 + 32))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  unitString = self->_unitString;
  if (unitString | *(v4 + 3))
  {
    v7 = [(NSString *)unitString isEqual:?];
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
  v3 = [(NSMutableArray *)self->_points hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_aggregation;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3 ^ [(NSString *)self->_unitString hash];
}

- (void)mergeFrom:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(v4 + 2);
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

        [(HKCodableHealthChartsSeriesData *)self addPoints:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(v4 + 32))
  {
    self->_aggregation = *(v4 + 1);
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(HKCodableHealthChartsSeriesData *)self setUnitString:?];
  }
}

@end