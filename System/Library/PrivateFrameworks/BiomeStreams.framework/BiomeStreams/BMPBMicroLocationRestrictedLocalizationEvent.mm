@interface BMPBMicroLocationRestrictedLocalizationEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addNumDevicesVector:(id)a3;
- (void)addProbabilityVector:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasMaxProbability:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation BMPBMicroLocationRestrictedLocalizationEvent

- (void)setHasMaxProbability:(BOOL)a3
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

- (void)addProbabilityVector:(id)a3
{
  v4 = a3;
  probabilityVectors = self->_probabilityVectors;
  v8 = v4;
  if (!probabilityVectors)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_probabilityVectors;
    self->_probabilityVectors = v6;

    v4 = v8;
    probabilityVectors = self->_probabilityVectors;
  }

  [(NSMutableArray *)probabilityVectors addObject:v4];
}

- (void)addNumDevicesVector:(id)a3
{
  v4 = a3;
  numDevicesVectors = self->_numDevicesVectors;
  v8 = v4;
  if (!numDevicesVectors)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_numDevicesVectors;
    self->_numDevicesVectors = v6;

    v4 = v8;
    numDevicesVectors = self->_numDevicesVectors;
  }

  [(NSMutableArray *)numDevicesVectors addObject:v4];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBMicroLocationRestrictedLocalizationEvent;
  v4 = [(BMPBMicroLocationRestrictedLocalizationEvent *)&v8 description];
  v5 = [(BMPBMicroLocationRestrictedLocalizationEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimeStamp];
    [v3 setObject:v4 forKey:@"absoluteTimeStamp"];
  }

  clientBundleId = self->_clientBundleId;
  if (clientBundleId)
  {
    [v3 setObject:clientBundleId forKey:@"clientBundleId"];
  }

  maxProbabilityLabel = self->_maxProbabilityLabel;
  if (maxProbabilityLabel)
  {
    [v3 setObject:maxProbabilityLabel forKey:@"maxProbabilityLabel"];
  }

  if ((*&self->_has & 2) != 0)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_maxProbability];
    [v3 setObject:v7 forKey:@"maxProbability"];
  }

  if ([(NSMutableArray *)self->_probabilityVectors count])
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_probabilityVectors, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v9 = self->_probabilityVectors;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v29;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v29 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v8 addObject:v14];
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v11);
    }

    [v3 setObject:v8 forKey:@"probabilityVector"];
  }

  if ([(NSMutableArray *)self->_numDevicesVectors count])
  {
    v15 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_numDevicesVectors, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v16 = self->_numDevicesVectors;
    v17 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v24 + 1) + 8 * j) dictionaryRepresentation];
          [v15 addObject:v21];
        }

        v18 = [(NSMutableArray *)v16 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v18);
    }

    [v3 setObject:v15 forKey:@"numDevicesVector"];
  }

  v22 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)writeTo:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (*&self->_has)
  {
    absoluteTimeStamp = self->_absoluteTimeStamp;
    PBDataWriterWriteDoubleField();
  }

  if (self->_clientBundleId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_maxProbabilityLabel)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    maxProbability = self->_maxProbability;
    PBDataWriterWriteDoubleField();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = self->_probabilityVectors;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v24 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v13 = self->_numDevicesVectors;
  v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v21;
    do
    {
      v17 = 0;
      do
      {
        if (*v21 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v20 + 1) + 8 * v17);
        PBDataWriterWriteSubmessage();
        ++v17;
      }

      while (v15 != v17);
      v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v15);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[1] = *&self->_absoluteTimeStamp;
    *(v4 + 56) |= 1u;
  }

  v13 = v4;
  if (self->_clientBundleId)
  {
    [v4 setClientBundleId:?];
    v4 = v13;
  }

  if (self->_maxProbabilityLabel)
  {
    [v13 setMaxProbabilityLabel:?];
    v4 = v13;
  }

  if ((*&self->_has & 2) != 0)
  {
    v4[2] = *&self->_maxProbability;
    *(v4 + 56) |= 2u;
  }

  if ([(BMPBMicroLocationRestrictedLocalizationEvent *)self probabilityVectorsCount])
  {
    [v13 clearProbabilityVectors];
    v5 = [(BMPBMicroLocationRestrictedLocalizationEvent *)self probabilityVectorsCount];
    if (v5)
    {
      v6 = v5;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(BMPBMicroLocationRestrictedLocalizationEvent *)self probabilityVectorAtIndex:i];
        [v13 addProbabilityVector:v8];
      }
    }
  }

  if ([(BMPBMicroLocationRestrictedLocalizationEvent *)self numDevicesVectorsCount])
  {
    [v13 clearNumDevicesVectors];
    v9 = [(BMPBMicroLocationRestrictedLocalizationEvent *)self numDevicesVectorsCount];
    if (v9)
    {
      v10 = v9;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(BMPBMicroLocationRestrictedLocalizationEvent *)self numDevicesVectorAtIndex:j];
        [v13 addNumDevicesVector:v12];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimeStamp;
    *(v5 + 56) |= 1u;
  }

  v7 = [(NSString *)self->_clientBundleId copyWithZone:a3];
  v8 = *(v6 + 24);
  *(v6 + 24) = v7;

  v9 = [(NSString *)self->_maxProbabilityLabel copyWithZone:a3];
  v10 = *(v6 + 32);
  *(v6 + 32) = v9;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 16) = self->_maxProbability;
    *(v6 + 56) |= 2u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v11 = self->_probabilityVectors;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v30;
    do
    {
      v15 = 0;
      do
      {
        if (*v30 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v29 + 1) + 8 * v15) copyWithZone:a3];
        [v6 addProbabilityVector:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v13);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v17 = self->_numDevicesVectors;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v26;
    do
    {
      v21 = 0;
      do
      {
        if (*v26 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v25 + 1) + 8 * v21) copyWithZone:{a3, v25}];
        [v6 addNumDevicesVector:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v19);
  }

  v23 = *MEMORY[0x1E69E9840];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_absoluteTimeStamp != *(v4 + 1))
    {
      goto LABEL_20;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_20:
    v11 = 0;
    goto LABEL_21;
  }

  clientBundleId = self->_clientBundleId;
  if (clientBundleId | *(v4 + 3) && ![(NSString *)clientBundleId isEqual:?])
  {
    goto LABEL_20;
  }

  maxProbabilityLabel = self->_maxProbabilityLabel;
  if (maxProbabilityLabel | *(v4 + 4))
  {
    if (![(NSString *)maxProbabilityLabel isEqual:?])
    {
      goto LABEL_20;
    }
  }

  v8 = *(v4 + 56);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_maxProbability != *(v4 + 2))
    {
      goto LABEL_20;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
    goto LABEL_20;
  }

  probabilityVectors = self->_probabilityVectors;
  if (probabilityVectors | *(v4 + 6) && ![(NSMutableArray *)probabilityVectors isEqual:?])
  {
    goto LABEL_20;
  }

  numDevicesVectors = self->_numDevicesVectors;
  if (numDevicesVectors | *(v4 + 5))
  {
    v11 = [(NSMutableArray *)numDevicesVectors isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_21:

  return v11;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    absoluteTimeStamp = self->_absoluteTimeStamp;
    if (absoluteTimeStamp < 0.0)
    {
      absoluteTimeStamp = -absoluteTimeStamp;
    }

    *v2.i64 = floor(absoluteTimeStamp + 0.5);
    v7 = (absoluteTimeStamp - *v2.i64) * 1.84467441e19;
    *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
    v8.f64[0] = NAN;
    v8.f64[1] = NAN;
    v5 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
    if (v7 >= 0.0)
    {
      if (v7 > 0.0)
      {
        v5 += v7;
      }
    }

    else
    {
      v5 -= fabs(v7);
    }
  }

  else
  {
    v5 = 0;
  }

  v9 = [(NSString *)self->_clientBundleId hash];
  v10 = [(NSString *)self->_maxProbabilityLabel hash];
  if ((*&self->_has & 2) != 0)
  {
    maxProbability = self->_maxProbability;
    if (maxProbability < 0.0)
    {
      maxProbability = -maxProbability;
    }

    *v11.i64 = floor(maxProbability + 0.5);
    v15 = (maxProbability - *v11.i64) * 1.84467441e19;
    *v12.i64 = *v11.i64 - trunc(*v11.i64 * 5.42101086e-20) * 1.84467441e19;
    v16.f64[0] = NAN;
    v16.f64[1] = NAN;
    v13 = 2654435761u * *vbslq_s8(vnegq_f64(v16), v12, v11).i64;
    if (v15 >= 0.0)
    {
      if (v15 > 0.0)
      {
        v13 += v15;
      }
    }

    else
    {
      v13 -= fabs(v15);
    }
  }

  else
  {
    v13 = 0;
  }

  v17 = v9 ^ v5 ^ v10 ^ v13;
  v18 = [(NSMutableArray *)self->_probabilityVectors hash];
  return v17 ^ v18 ^ [(NSMutableArray *)self->_numDevicesVectors hash];
}

- (void)mergeFrom:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4[7])
  {
    self->_absoluteTimeStamp = v4[1];
    *&self->_has |= 1u;
  }

  if (*(v4 + 3))
  {
    [(BMPBMicroLocationRestrictedLocalizationEvent *)self setClientBundleId:?];
  }

  if (*(v5 + 4))
  {
    [(BMPBMicroLocationRestrictedLocalizationEvent *)self setMaxProbabilityLabel:?];
  }

  if ((v5[7] & 2) != 0)
  {
    self->_maxProbability = v5[2];
    *&self->_has |= 2u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = *(v5 + 6);
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(BMPBMicroLocationRestrictedLocalizationEvent *)self addProbabilityVector:*(*(&v21 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = *(v5 + 5);
  v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v18;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(BMPBMicroLocationRestrictedLocalizationEvent *)self addNumDevicesVector:*(*(&v17 + 1) + 8 * j), v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
    }

    while (v13);
  }

  v16 = *MEMORY[0x1E69E9840];
}

@end