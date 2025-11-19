@interface HKCodableSummaryAudiogramValue
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSensitivityPoints:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableSummaryAudiogramValue

- (void)addSensitivityPoints:(id)a3
{
  v4 = a3;
  sensitivityPoints = self->_sensitivityPoints;
  v8 = v4;
  if (!sensitivityPoints)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_sensitivityPoints;
    self->_sensitivityPoints = v6;

    v4 = v8;
    sensitivityPoints = self->_sensitivityPoints;
  }

  [(NSMutableArray *)sensitivityPoints addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryAudiogramValue;
  v4 = [(HKCodableSummaryAudiogramValue *)&v8 description];
  v5 = [(HKCodableSummaryAudiogramValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  averageLeftEarSensitivity = self->_averageLeftEarSensitivity;
  if (averageLeftEarSensitivity)
  {
    v5 = [(HKCodableQuantity *)averageLeftEarSensitivity dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"averageLeftEarSensitivity"];
  }

  averageRightEarSensitivity = self->_averageRightEarSensitivity;
  if (averageRightEarSensitivity)
  {
    v7 = [(HKCodableQuantity *)averageRightEarSensitivity dictionaryRepresentation];
    [v3 setObject:v7 forKey:@"averageRightEarSensitivity"];
  }

  minimumSensitivity = self->_minimumSensitivity;
  if (minimumSensitivity)
  {
    v9 = [(HKCodableQuantity *)minimumSensitivity dictionaryRepresentation];
    [v3 setObject:v9 forKey:@"minimumSensitivity"];
  }

  maximumSensitivity = self->_maximumSensitivity;
  if (maximumSensitivity)
  {
    v11 = [(HKCodableQuantity *)maximumSensitivity dictionaryRepresentation];
    [v3 setObject:v11 forKey:@"maximumSensitivity"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestampData];
    [v3 setObject:v12 forKey:@"timestampData"];
  }

  if ([(NSMutableArray *)self->_sensitivityPoints count])
  {
    v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_sensitivityPoints, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = self->_sensitivityPoints;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:v19];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    [v3 setObject:v13 forKey:@"sensitivityPoints"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_averageLeftEarSensitivity)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_averageRightEarSensitivity)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_minimumSensitivity)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_maximumSensitivity)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_sensitivityPoints;
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
  v9 = v4;
  if (self->_averageLeftEarSensitivity)
  {
    [v4 setAverageLeftEarSensitivity:?];
    v4 = v9;
  }

  if (self->_averageRightEarSensitivity)
  {
    [v9 setAverageRightEarSensitivity:?];
    v4 = v9;
  }

  if (self->_minimumSensitivity)
  {
    [v9 setMinimumSensitivity:?];
    v4 = v9;
  }

  if (self->_maximumSensitivity)
  {
    [v9 setMaximumSensitivity:?];
    v4 = v9;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_timestampData;
    *(v4 + 56) |= 1u;
  }

  if ([(HKCodableSummaryAudiogramValue *)self sensitivityPointsCount])
  {
    [v9 clearSensitivityPoints];
    v5 = [(HKCodableSummaryAudiogramValue *)self sensitivityPointsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HKCodableSummaryAudiogramValue *)self sensitivityPointsAtIndex:i];
        [v9 addSensitivityPoints:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HKCodableQuantity *)self->_averageLeftEarSensitivity copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(HKCodableQuantity *)self->_averageRightEarSensitivity copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(HKCodableQuantity *)self->_minimumSensitivity copyWithZone:a3];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(HKCodableQuantity *)self->_maximumSensitivity copyWithZone:a3];
  v13 = *(v5 + 32);
  *(v5 + 32) = v12;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestampData;
    *(v5 + 56) |= 1u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_sensitivityPoints;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * v18) copyWithZone:{a3, v21}];
        [v5 addSensitivityPoints:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  averageLeftEarSensitivity = self->_averageLeftEarSensitivity;
  if (averageLeftEarSensitivity | *(v4 + 2))
  {
    if (![(HKCodableQuantity *)averageLeftEarSensitivity isEqual:?])
    {
      goto LABEL_17;
    }
  }

  averageRightEarSensitivity = self->_averageRightEarSensitivity;
  if (averageRightEarSensitivity | *(v4 + 3))
  {
    if (![(HKCodableQuantity *)averageRightEarSensitivity isEqual:?])
    {
      goto LABEL_17;
    }
  }

  minimumSensitivity = self->_minimumSensitivity;
  if (minimumSensitivity | *(v4 + 5))
  {
    if (![(HKCodableQuantity *)minimumSensitivity isEqual:?])
    {
      goto LABEL_17;
    }
  }

  maximumSensitivity = self->_maximumSensitivity;
  if (maximumSensitivity | *(v4 + 4))
  {
    if (![(HKCodableQuantity *)maximumSensitivity isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_timestampData != *(v4 + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  sensitivityPoints = self->_sensitivityPoints;
  if (sensitivityPoints | *(v4 + 6))
  {
    v10 = [(NSMutableArray *)sensitivityPoints isEqual:?];
  }

  else
  {
    v10 = 1;
  }

LABEL_18:

  return v10;
}

- (unint64_t)hash
{
  v3 = [(HKCodableQuantity *)self->_averageLeftEarSensitivity hash];
  v4 = [(HKCodableQuantity *)self->_averageRightEarSensitivity hash];
  v5 = [(HKCodableQuantity *)self->_minimumSensitivity hash];
  v6 = [(HKCodableQuantity *)self->_maximumSensitivity hash];
  if (*&self->_has)
  {
    timestampData = self->_timestampData;
    if (timestampData < 0.0)
    {
      timestampData = -timestampData;
    }

    *v7.i64 = floor(timestampData + 0.5);
    v11 = (timestampData - *v7.i64) * 1.84467441e19;
    *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v9 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v8, v7).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v9 += v11;
      }
    }

    else
    {
      v9 -= fabs(v11);
    }
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v9 ^ [(NSMutableArray *)self->_sensitivityPoints hash];
}

- (void)mergeFrom:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  averageLeftEarSensitivity = self->_averageLeftEarSensitivity;
  v6 = *(v4 + 2);
  if (averageLeftEarSensitivity)
  {
    if (v6)
    {
      [(HKCodableQuantity *)averageLeftEarSensitivity mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HKCodableSummaryAudiogramValue *)self setAverageLeftEarSensitivity:?];
  }

  averageRightEarSensitivity = self->_averageRightEarSensitivity;
  v8 = *(v4 + 3);
  if (averageRightEarSensitivity)
  {
    if (v8)
    {
      [(HKCodableQuantity *)averageRightEarSensitivity mergeFrom:?];
    }
  }

  else if (v8)
  {
    [(HKCodableSummaryAudiogramValue *)self setAverageRightEarSensitivity:?];
  }

  minimumSensitivity = self->_minimumSensitivity;
  v10 = *(v4 + 5);
  if (minimumSensitivity)
  {
    if (v10)
    {
      [(HKCodableQuantity *)minimumSensitivity mergeFrom:?];
    }
  }

  else if (v10)
  {
    [(HKCodableSummaryAudiogramValue *)self setMinimumSensitivity:?];
  }

  maximumSensitivity = self->_maximumSensitivity;
  v12 = *(v4 + 4);
  if (maximumSensitivity)
  {
    if (v12)
    {
      [(HKCodableQuantity *)maximumSensitivity mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(HKCodableSummaryAudiogramValue *)self setMaximumSensitivity:?];
  }

  if (*(v4 + 56))
  {
    self->_timestampData = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = *(v4 + 6);
  v14 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v19;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v19 != v16)
        {
          objc_enumerationMutation(v13);
        }

        [(HKCodableSummaryAudiogramValue *)self addSensitivityPoints:*(*(&v18 + 1) + 8 * i), v18];
      }

      v15 = [v13 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v15);
  }
}

@end