@interface HKCodableElectrocardiogramDataSourceQueryData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSamples:(id)samples;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCount:(BOOL)count;
- (void)writeTo:(id)to;
@end

@implementation HKCodableElectrocardiogramDataSourceQueryData

- (void)setHasCount:(BOOL)count
{
  if (count)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addSamples:(id)samples
{
  samplesCopy = samples;
  samples = self->_samples;
  v8 = samplesCopy;
  if (!samples)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_samples;
    self->_samples = v6;

    samplesCopy = v8;
    samples = self->_samples;
  }

  [(NSMutableArray *)samples addObject:samplesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableElectrocardiogramDataSourceQueryData;
  v4 = [(HKCodableElectrocardiogramDataSourceQueryData *)&v8 description];
  dictionaryRepresentation = [(HKCodableElectrocardiogramDataSourceQueryData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ((*&self->_has & 2) != 0)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_count];
    [dictionary setObject:v4 forKey:@"count"];
  }

  if ([(NSMutableArray *)self->_samples count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_samples, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = self->_samples;
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

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v5 addObject:dictionaryRepresentation];
        }

        v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"samples"];
  }

  if (*&self->_has)
  {
    v12 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_activeAlgorithmVersionRawValue];
    [dictionary setObject:v12 forKey:@"activeAlgorithmVersionRawValue"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_samples;
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[2] = self->_count;
    *(toCopy + 32) |= 2u;
  }

  v9 = toCopy;
  if ([(HKCodableElectrocardiogramDataSourceQueryData *)self samplesCount])
  {
    [v9 clearSamples];
    samplesCount = [(HKCodableElectrocardiogramDataSourceQueryData *)self samplesCount];
    if (samplesCount)
    {
      v6 = samplesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HKCodableElectrocardiogramDataSourceQueryData *)self samplesAtIndex:i];
        [v9 addSamples:v8];
      }
    }
  }

  if (*&self->_has)
  {
    *(v9 + 1) = self->_activeAlgorithmVersionRawValue;
    *(v9 + 32) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 16) = self->_count;
    *(v5 + 32) |= 2u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = self->_samples;
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

        v12 = [*(*(&v14 + 1) + 8 * v11) copyWithZone:{zone, v14}];
        [v6 addSamples:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if (*&self->_has)
  {
    *(v6 + 8) = self->_activeAlgorithmVersionRawValue;
    *(v6 + 32) |= 1u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 32) & 2) == 0 || self->_count != *(equalCopy + 2))
    {
      goto LABEL_14;
    }
  }

  else if ((*(equalCopy + 32) & 2) != 0)
  {
    goto LABEL_14;
  }

  samples = self->_samples;
  if (samples | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)samples isEqual:?])
    {
LABEL_14:
      v7 = 0;
      goto LABEL_15;
    }

    has = self->_has;
  }

  v7 = (*(equalCopy + 32) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 32) & 1) == 0 || self->_activeAlgorithmVersionRawValue != *(equalCopy + 1))
    {
      goto LABEL_14;
    }

    v7 = 1;
  }

LABEL_15:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_count;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_samples hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_activeAlgorithmVersionRawValue;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if ((*(fromCopy + 32) & 2) != 0)
  {
    self->_count = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(fromCopy + 3);
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

        [(HKCodableElectrocardiogramDataSourceQueryData *)self addSamples:*(*(&v11 + 1) + 8 * v10++), v11];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if (v5[4])
  {
    self->_activeAlgorithmVersionRawValue = v5[1];
    *&self->_has |= 1u;
  }
}

@end