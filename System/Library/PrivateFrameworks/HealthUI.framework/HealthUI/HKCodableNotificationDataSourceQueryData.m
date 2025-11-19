@interface HKCodableNotificationDataSourceQueryData
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSamples:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDataType:(BOOL)a3;
- (void)setHasLatestSupportedVersion:(BOOL)a3;
- (void)setHasMinimumSupportedVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HKCodableNotificationDataSourceQueryData

- (void)setHasDataType:(BOOL)a3
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

- (void)addSamples:(id)a3
{
  v4 = a3;
  samples = self->_samples;
  v8 = v4;
  if (!samples)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_samples;
    self->_samples = v6;

    v4 = v8;
    samples = self->_samples;
  }

  [(NSMutableArray *)samples addObject:v4];
}

- (void)setHasLatestSupportedVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMinimumSupportedVersion:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HKCodableNotificationDataSourceQueryData;
  v4 = [(HKCodableNotificationDataSourceQueryData *)&v8 description];
  v5 = [(HKCodableNotificationDataSourceQueryData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_dataType];
    [v3 setObject:v5 forKey:@"dataType"];

    has = self->_has;
  }

  if (has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_count];
    [v3 setObject:v6 forKey:@"count"];
  }

  if ([(NSMutableArray *)self->_samples count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_samples, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = self->_samples;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:v13];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
    }

    [v3 setObject:v7 forKey:@"samples"];
  }

  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    v15 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_latestSupportedVersion];
    [v3 setObject:v15 forKey:@"latestSupportedVersion"];

    v14 = self->_has;
  }

  if ((v14 & 8) != 0)
  {
    v16 = [MEMORY[0x1E696AD98] numberWithLongLong:self->_minimumSupportedVersion];
    [v3 setObject:v16 forKey:@"minimumSupportedVersion"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt64Field();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteInt64Field();
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = self->_samples;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = self->_has;
  if ((v11 & 4) != 0)
  {
    PBDataWriterWriteInt64Field();
    v11 = self->_has;
  }

  if ((v11 & 8) != 0)
  {
    PBDataWriterWriteInt64Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[2] = self->_dataType;
    *(v4 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[1] = self->_count;
    *(v4 + 48) |= 1u;
  }

  v11 = v4;
  if ([(HKCodableNotificationDataSourceQueryData *)self samplesCount])
  {
    [v11 clearSamples];
    v6 = [(HKCodableNotificationDataSourceQueryData *)self samplesCount];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(HKCodableNotificationDataSourceQueryData *)self samplesAtIndex:i];
        [v11 addSamples:v9];
      }
    }
  }

  v10 = self->_has;
  if ((v10 & 4) != 0)
  {
    *(v11 + 3) = self->_latestSupportedVersion;
    *(v11 + 48) |= 4u;
    v10 = self->_has;
  }

  if ((v10 & 8) != 0)
  {
    *(v11 + 4) = self->_minimumSupportedVersion;
    *(v11 + 48) |= 8u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = v5;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_dataType;
    *(v5 + 48) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_count;
    *(v5 + 48) |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = self->_samples;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) copyWithZone:{a3, v16}];
        [v6 addSamples:v13];
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = self->_has;
  if ((v14 & 4) != 0)
  {
    *(v6 + 24) = self->_latestSupportedVersion;
    *(v6 + 48) |= 4u;
    v14 = self->_has;
  }

  if ((v14 & 8) != 0)
  {
    *(v6 + 32) = self->_minimumSupportedVersion;
    *(v6 + 48) |= 8u;
  }

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    if ((*(v4 + 48) & 2) == 0 || self->_dataType != *(v4 + 2))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 48) & 2) != 0)
  {
    goto LABEL_24;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 48) & 1) == 0 || self->_count != *(v4 + 1))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 48))
  {
    goto LABEL_24;
  }

  samples = self->_samples;
  if (samples | *(v4 + 5))
  {
    if (![(NSMutableArray *)samples isEqual:?])
    {
LABEL_24:
      v7 = 0;
      goto LABEL_25;
    }

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    if ((*(v4 + 48) & 4) == 0 || self->_latestSupportedVersion != *(v4 + 3))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 48) & 4) != 0)
  {
    goto LABEL_24;
  }

  v7 = (*(v4 + 48) & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((*(v4 + 48) & 8) == 0 || self->_minimumSupportedVersion != *(v4 + 4))
    {
      goto LABEL_24;
    }

    v7 = 1;
  }

LABEL_25:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_dataType;
    if (*&self->_has)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v3 = 0;
    if (*&self->_has)
    {
LABEL_3:
      v4 = 2654435761 * self->_count;
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_6:
  v5 = [(NSMutableArray *)self->_samples hash];
  if ((*&self->_has & 4) != 0)
  {
    v6 = 2654435761 * self->_latestSupportedVersion;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    v7 = 0;
    return v4 ^ v3 ^ v6 ^ v7 ^ v5;
  }

  v6 = 0;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v7 = 2654435761 * self->_minimumSupportedVersion;
  return v4 ^ v3 ^ v6 ^ v7 ^ v5;
}

- (void)mergeFrom:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  v6 = *(v4 + 48);
  if ((v6 & 2) != 0)
  {
    self->_dataType = *(v4 + 2);
    *&self->_has |= 2u;
    v6 = *(v4 + 48);
  }

  if (v6)
  {
    self->_count = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = *(v4 + 5);
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(HKCodableNotificationDataSourceQueryData *)self addSamples:*(*(&v13 + 1) + 8 * i), v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *(v5 + 48);
  if ((v12 & 4) != 0)
  {
    self->_latestSupportedVersion = *(v5 + 3);
    *&self->_has |= 4u;
    v12 = *(v5 + 48);
  }

  if ((v12 & 8) != 0)
  {
    self->_minimumSupportedVersion = *(v5 + 4);
    *&self->_has |= 8u;
  }
}

@end