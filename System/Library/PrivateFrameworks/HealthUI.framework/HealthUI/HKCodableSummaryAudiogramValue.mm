@interface HKCodableSummaryAudiogramValue
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSensitivityPoints:(id)points;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HKCodableSummaryAudiogramValue

- (void)addSensitivityPoints:(id)points
{
  pointsCopy = points;
  sensitivityPoints = self->_sensitivityPoints;
  v8 = pointsCopy;
  if (!sensitivityPoints)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_sensitivityPoints;
    self->_sensitivityPoints = v6;

    pointsCopy = v8;
    sensitivityPoints = self->_sensitivityPoints;
  }

  [(NSMutableArray *)sensitivityPoints addObject:pointsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableSummaryAudiogramValue;
  v4 = [(HKCodableSummaryAudiogramValue *)&v8 description];
  dictionaryRepresentation = [(HKCodableSummaryAudiogramValue *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  averageLeftEarSensitivity = self->_averageLeftEarSensitivity;
  if (averageLeftEarSensitivity)
  {
    dictionaryRepresentation = [(HKCodableQuantity *)averageLeftEarSensitivity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"averageLeftEarSensitivity"];
  }

  averageRightEarSensitivity = self->_averageRightEarSensitivity;
  if (averageRightEarSensitivity)
  {
    dictionaryRepresentation2 = [(HKCodableQuantity *)averageRightEarSensitivity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"averageRightEarSensitivity"];
  }

  minimumSensitivity = self->_minimumSensitivity;
  if (minimumSensitivity)
  {
    dictionaryRepresentation3 = [(HKCodableQuantity *)minimumSensitivity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation3 forKey:@"minimumSensitivity"];
  }

  maximumSensitivity = self->_maximumSensitivity;
  if (maximumSensitivity)
  {
    dictionaryRepresentation4 = [(HKCodableQuantity *)maximumSensitivity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation4 forKey:@"maximumSensitivity"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithDouble:self->_timestampData];
    [dictionary setObject:v12 forKey:@"timestampData"];
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

          dictionaryRepresentation5 = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation5];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }

    [dictionary setObject:v13 forKey:@"sensitivityPoints"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_averageLeftEarSensitivity)
  {
    [toCopy setAverageLeftEarSensitivity:?];
    toCopy = v9;
  }

  if (self->_averageRightEarSensitivity)
  {
    [v9 setAverageRightEarSensitivity:?];
    toCopy = v9;
  }

  if (self->_minimumSensitivity)
  {
    [v9 setMinimumSensitivity:?];
    toCopy = v9;
  }

  if (self->_maximumSensitivity)
  {
    [v9 setMaximumSensitivity:?];
    toCopy = v9;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_timestampData;
    *(toCopy + 56) |= 1u;
  }

  if ([(HKCodableSummaryAudiogramValue *)self sensitivityPointsCount])
  {
    [v9 clearSensitivityPoints];
    sensitivityPointsCount = [(HKCodableSummaryAudiogramValue *)self sensitivityPointsCount];
    if (sensitivityPointsCount)
    {
      v6 = sensitivityPointsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HKCodableSummaryAudiogramValue *)self sensitivityPointsAtIndex:i];
        [v9 addSensitivityPoints:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HKCodableQuantity *)self->_averageLeftEarSensitivity copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(HKCodableQuantity *)self->_averageRightEarSensitivity copyWithZone:zone];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [(HKCodableQuantity *)self->_minimumSensitivity copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v12 = [(HKCodableQuantity *)self->_maximumSensitivity copyWithZone:zone];
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

        v19 = [*(*(&v21 + 1) + 8 * v18) copyWithZone:{zone, v21}];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  averageLeftEarSensitivity = self->_averageLeftEarSensitivity;
  if (averageLeftEarSensitivity | *(equalCopy + 2))
  {
    if (![(HKCodableQuantity *)averageLeftEarSensitivity isEqual:?])
    {
      goto LABEL_17;
    }
  }

  averageRightEarSensitivity = self->_averageRightEarSensitivity;
  if (averageRightEarSensitivity | *(equalCopy + 3))
  {
    if (![(HKCodableQuantity *)averageRightEarSensitivity isEqual:?])
    {
      goto LABEL_17;
    }
  }

  minimumSensitivity = self->_minimumSensitivity;
  if (minimumSensitivity | *(equalCopy + 5))
  {
    if (![(HKCodableQuantity *)minimumSensitivity isEqual:?])
    {
      goto LABEL_17;
    }
  }

  maximumSensitivity = self->_maximumSensitivity;
  if (maximumSensitivity | *(equalCopy + 4))
  {
    if (![(HKCodableQuantity *)maximumSensitivity isEqual:?])
    {
      goto LABEL_17;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_timestampData != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_17:
    v10 = 0;
    goto LABEL_18;
  }

  sensitivityPoints = self->_sensitivityPoints;
  if (sensitivityPoints | *(equalCopy + 6))
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

- (void)mergeFrom:(id)from
{
  v23 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  averageLeftEarSensitivity = self->_averageLeftEarSensitivity;
  v6 = *(fromCopy + 2);
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
  v8 = *(fromCopy + 3);
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
  v10 = *(fromCopy + 5);
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
  v12 = *(fromCopy + 4);
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

  if (*(fromCopy + 56))
  {
    self->_timestampData = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v13 = *(fromCopy + 6);
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