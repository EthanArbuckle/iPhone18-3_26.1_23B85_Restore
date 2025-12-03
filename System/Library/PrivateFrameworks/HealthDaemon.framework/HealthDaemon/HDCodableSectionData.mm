@interface HDCodableSectionData
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addStringValues:(id)values;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDeleted:(BOOL)deleted;
- (void)setHasTimestamp:(BOOL)timestamp;
- (void)setHasVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation HDCodableSectionData

- (void)addStringValues:(id)values
{
  valuesCopy = values;
  stringValues = self->_stringValues;
  v8 = valuesCopy;
  if (!stringValues)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_stringValues;
    self->_stringValues = v6;

    valuesCopy = v8;
    stringValues = self->_stringValues;
  }

  [(NSMutableArray *)stringValues addObject:valuesCopy];
}

- (void)setHasVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasTimestamp:(BOOL)timestamp
{
  if (timestamp)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasDeleted:(BOOL)deleted
{
  if (deleted)
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
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableSectionData;
  v4 = [(HDCodableSectionData *)&v8 description];
  dictionaryRepresentation = [(HDCodableSectionData *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  stringValues = self->_stringValues;
  if (stringValues)
  {
    [dictionary setObject:stringValues forKey:@"stringValues"];
  }

  has = self->_has;
  if (has)
  {
    v9 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_sectionDataType];
    [v4 setObject:v9 forKey:@"sectionDataType"];

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_5:
      if ((has & 2) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_5;
  }

  v10 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_version];
  [v4 setObject:v10 forKey:@"version"];

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_6:
    if ((has & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  [v4 setObject:v11 forKey:@"timestamp"];

  if ((*&self->_has & 8) != 0)
  {
LABEL_7:
    v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_deleted];
    [v4 setObject:v7 forKey:@"deleted"];
  }

LABEL_8:

  return v4;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_stringValues;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if (has)
  {
    sectionDataType = self->_sectionDataType;
    PBDataWriterWriteInt64Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_10:
      if ((has & 2) == 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      timestamp = self->_timestamp;
      PBDataWriterWriteDoubleField();
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

  version = self->_version;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((has & 8) != 0)
  {
LABEL_12:
    deleted = self->_deleted;
    PBDataWriterWriteBOOLField();
  }

LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(HDCodableSectionData *)self stringValuesCount])
  {
    [toCopy clearStringValues];
    stringValuesCount = [(HDCodableSectionData *)self stringValuesCount];
    if (stringValuesCount)
    {
      v5 = stringValuesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCodableSectionData *)self stringValuesAtIndex:i];
        [toCopy addStringValues:v7];
      }
    }
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_sectionDataType;
    *(toCopy + 44) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_7:
      if ((has & 2) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_15;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

  *(toCopy + 3) = self->_version;
  *(toCopy + 44) |= 4u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_8:
    if ((has & 8) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_15:
  *(toCopy + 2) = *&self->_timestamp;
  *(toCopy + 44) |= 2u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_9:
    *(toCopy + 40) = self->_deleted;
    *(toCopy + 44) |= 8u;
  }

LABEL_10:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_stringValues;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{zone, v15}];
        [v5 addStringValues:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_sectionDataType;
    *(v5 + 44) |= 1u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_10:
      if ((has & 2) == 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      *(v5 + 16) = self->_timestamp;
      *(v5 + 44) |= 2u;
      if ((*&self->_has & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_10;
  }

  *(v5 + 24) = self->_version;
  *(v5 + 44) |= 4u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((has & 8) != 0)
  {
LABEL_12:
    *(v5 + 40) = self->_deleted;
    *(v5 + 44) |= 8u;
  }

LABEL_13:
  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_21;
  }

  stringValues = self->_stringValues;
  if (stringValues | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)stringValues isEqual:?])
    {
      goto LABEL_21;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_sectionDataType != *(equalCopy + 1))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 44))
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 44) & 4) == 0 || self->_version != *(equalCopy + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 44) & 4) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 44) & 2) == 0 || self->_timestamp != *(equalCopy + 2))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 44) & 2) != 0)
  {
    goto LABEL_21;
  }

  v6 = (*(equalCopy + 44) & 8) == 0;
  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 44) & 8) == 0)
    {
LABEL_21:
      v6 = 0;
      goto LABEL_22;
    }

    if (self->_deleted)
    {
      if ((*(equalCopy + 40) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(equalCopy + 40))
    {
      goto LABEL_21;
    }

    v6 = 1;
  }

LABEL_22:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_stringValues hash];
  if ((*&self->_has & 1) == 0)
  {
    v6 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v6 = 2654435761 * self->_sectionDataType;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v7 = 2654435761 * self->_version;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v4.i64 = floor(timestamp + 0.5);
  v9 = (timestamp - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v11 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v5, v4).i64;
  if (v9 >= 0.0)
  {
    if (v9 > 0.0)
    {
      v11 += v9;
    }
  }

  else
  {
    v11 -= fabs(v9);
  }

LABEL_11:
  if ((*&self->_has & 8) != 0)
  {
    v12 = 2654435761 * self->_deleted;
  }

  else
  {
    v12 = 0;
  }

  return v6 ^ v3 ^ v7 ^ v11 ^ v12;
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(fromCopy + 4);
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(HDCodableSectionData *)self addStringValues:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *(fromCopy + 44);
  if (v10)
  {
    self->_sectionDataType = *(fromCopy + 1);
    *&self->_has |= 1u;
    v10 = *(fromCopy + 44);
    if ((v10 & 4) == 0)
    {
LABEL_10:
      if ((v10 & 2) == 0)
      {
        goto LABEL_11;
      }

LABEL_16:
      self->_timestamp = *(fromCopy + 2);
      *&self->_has |= 2u;
      if ((*(fromCopy + 44) & 8) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(fromCopy + 44) & 4) == 0)
  {
    goto LABEL_10;
  }

  self->_version = *(fromCopy + 3);
  *&self->_has |= 4u;
  v10 = *(fromCopy + 44);
  if ((v10 & 2) != 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  if ((v10 & 8) != 0)
  {
LABEL_12:
    self->_deleted = *(fromCopy + 40);
    *&self->_has |= 8u;
  }

LABEL_13:

  v11 = *MEMORY[0x277D85DE8];
}

@end