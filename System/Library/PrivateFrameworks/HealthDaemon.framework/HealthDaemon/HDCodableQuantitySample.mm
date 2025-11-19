@interface HDCodableQuantitySample
- (BOOL)applyToObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addQuantitySeriesData:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasFinal:(BOOL)a3;
- (void)setHasFrozen:(BOOL)a3;
- (void)setHasMax:(BOOL)a3;
- (void)setHasMin:(BOOL)a3;
- (void)setHasMostRecent:(BOOL)a3;
- (void)setHasMostRecentDate:(BOOL)a3;
- (void)setHasMostRecentDuration:(BOOL)a3;
- (void)setHasValueInCanonicalUnit:(BOOL)a3;
- (void)setHasValueInOriginalUnit:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableQuantitySample

- (void)setHasValueInCanonicalUnit:(BOOL)a3
{
  if (a3)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFBF | v3;
}

- (void)setHasValueInOriginalUnit:(BOOL)a3
{
  if (a3)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFF7F | v3;
}

- (void)setHasFrozen:(BOOL)a3
{
  if (a3)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFDFF | v3;
}

- (void)setHasFinal:(BOOL)a3
{
  if (a3)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFEFF | v3;
}

- (void)setHasMin:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFB | v3;
}

- (void)setHasMax:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFFD | v3;
}

- (void)setHasMostRecent:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFF7 | v3;
}

- (void)setHasMostRecentDate:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFEF | v3;
}

- (void)addQuantitySeriesData:(id)a3
{
  v4 = a3;
  quantitySeriesDatas = self->_quantitySeriesDatas;
  v8 = v4;
  if (!quantitySeriesDatas)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_quantitySeriesDatas;
    self->_quantitySeriesDatas = v6;

    v4 = v8;
    quantitySeriesDatas = self->_quantitySeriesDatas;
  }

  [(NSMutableArray *)quantitySeriesDatas addObject:v4];
}

- (void)setHasMostRecentDuration:(BOOL)a3
{
  if (a3)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFFDF | v3;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableQuantitySample;
  v4 = [(HDCodableQuantitySample *)&v8 description];
  v5 = [(HDCodableQuantitySample *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v33 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    v5 = [(HDCodableSample *)sample dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"sample"];
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_valueInCanonicalUnit];
    [v3 setObject:v7 forKey:@"valueInCanonicalUnit"];

    has = self->_has;
  }

  if ((has & 0x80) != 0)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_valueInOriginalUnit];
    [v3 setObject:v8 forKey:@"valueInOriginalUnit"];
  }

  originalUnitString = self->_originalUnitString;
  if (originalUnitString)
  {
    [v3 setObject:originalUnitString forKey:@"originalUnitString"];
  }

  v10 = self->_has;
  if ((v10 & 0x200) != 0)
  {
    v22 = [MEMORY[0x277CCABB0] numberWithBool:self->_frozen];
    [v3 setObject:v22 forKey:@"frozen"];

    v10 = self->_has;
    if ((v10 & 1) == 0)
    {
LABEL_11:
      if ((v10 & 0x100) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_33;
    }
  }

  else if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  v23 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_count];
  [v3 setObject:v23 forKey:@"count"];

  v10 = self->_has;
  if ((v10 & 0x100) == 0)
  {
LABEL_12:
    if ((v10 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_34;
  }

LABEL_33:
  v24 = [MEMORY[0x277CCABB0] numberWithBool:self->_final];
  [v3 setObject:v24 forKey:@"final"];

  v10 = self->_has;
  if ((v10 & 4) == 0)
  {
LABEL_13:
    if ((v10 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_35;
  }

LABEL_34:
  v25 = [MEMORY[0x277CCABB0] numberWithDouble:self->_min];
  [v3 setObject:v25 forKey:@"min"];

  v10 = self->_has;
  if ((v10 & 2) == 0)
  {
LABEL_14:
    if ((v10 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_36;
  }

LABEL_35:
  v26 = [MEMORY[0x277CCABB0] numberWithDouble:self->_max];
  [v3 setObject:v26 forKey:@"max"];

  v10 = self->_has;
  if ((v10 & 8) == 0)
  {
LABEL_15:
    if ((v10 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_36:
  v27 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mostRecent];
  [v3 setObject:v27 forKey:@"mostRecent"];

  if ((*&self->_has & 0x10) != 0)
  {
LABEL_16:
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mostRecentDate];
    [v3 setObject:v11 forKey:@"mostRecentDate"];
  }

LABEL_17:
  if ([(NSMutableArray *)self->_quantitySeriesDatas count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_quantitySeriesDatas, "count")}];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v13 = self->_quantitySeriesDatas;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = [*(*(&v28 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:v18];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);
    }

    [v3 setObject:v12 forKey:@"quantitySeriesData"];
  }

  if ((*&self->_has & 0x20) != 0)
  {
    v19 = [MEMORY[0x277CCABB0] numberWithDouble:self->_mostRecentDuration];
    [v3 setObject:v19 forKey:@"mostRecentDuration"];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    valueInCanonicalUnit = self->_valueInCanonicalUnit;
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if ((has & 0x80) != 0)
  {
    valueInOriginalUnit = self->_valueInOriginalUnit;
    PBDataWriterWriteDoubleField();
  }

  if (self->_originalUnitString)
  {
    PBDataWriterWriteStringField();
  }

  v8 = self->_has;
  if ((v8 & 0x200) != 0)
  {
    frozen = self->_frozen;
    PBDataWriterWriteBOOLField();
    v8 = self->_has;
    if ((v8 & 1) == 0)
    {
LABEL_11:
      if ((v8 & 0x100) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_29;
    }
  }

  else if ((v8 & 1) == 0)
  {
    goto LABEL_11;
  }

  count = self->_count;
  PBDataWriterWriteInt64Field();
  v8 = self->_has;
  if ((v8 & 0x100) == 0)
  {
LABEL_12:
    if ((v8 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  final = self->_final;
  PBDataWriterWriteBOOLField();
  v8 = self->_has;
  if ((v8 & 4) == 0)
  {
LABEL_13:
    if ((v8 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  min = self->_min;
  PBDataWriterWriteDoubleField();
  v8 = self->_has;
  if ((v8 & 2) == 0)
  {
LABEL_14:
    if ((v8 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  max = self->_max;
  PBDataWriterWriteDoubleField();
  v8 = self->_has;
  if ((v8 & 8) == 0)
  {
LABEL_15:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_32:
  mostRecent = self->_mostRecent;
  PBDataWriterWriteDoubleField();
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_16:
    mostRecentDate = self->_mostRecentDate;
    PBDataWriterWriteDoubleField();
  }

LABEL_17:
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_quantitySeriesDatas;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v24 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    mostRecentDuration = self->_mostRecentDuration;
    PBDataWriterWriteDoubleField();
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_sample)
  {
    [v4 setSample:?];
    v4 = v11;
  }

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v4 + 7) = *&self->_valueInCanonicalUnit;
    *(v4 + 50) |= 0x40u;
    has = self->_has;
  }

  if ((has & 0x80) != 0)
  {
    *(v4 + 8) = *&self->_valueInOriginalUnit;
    *(v4 + 50) |= 0x80u;
  }

  if (self->_originalUnitString)
  {
    [v11 setOriginalUnitString:?];
    v4 = v11;
  }

  v6 = self->_has;
  if ((v6 & 0x200) != 0)
  {
    *(v4 + 97) = self->_frozen;
    *(v4 + 50) |= 0x200u;
    v6 = self->_has;
    if ((v6 & 1) == 0)
    {
LABEL_11:
      if ((v6 & 0x100) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_28;
    }
  }

  else if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  *(v4 + 1) = self->_count;
  *(v4 + 50) |= 1u;
  v6 = self->_has;
  if ((v6 & 0x100) == 0)
  {
LABEL_12:
    if ((v6 & 4) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v4 + 96) = self->_final;
  *(v4 + 50) |= 0x100u;
  v6 = self->_has;
  if ((v6 & 4) == 0)
  {
LABEL_13:
    if ((v6 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v4 + 3) = *&self->_min;
  *(v4 + 50) |= 4u;
  v6 = self->_has;
  if ((v6 & 2) == 0)
  {
LABEL_14:
    if ((v6 & 8) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    *(v4 + 4) = *&self->_mostRecent;
    *(v4 + 50) |= 8u;
    if ((*&self->_has & 0x10) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_30:
  *(v4 + 2) = *&self->_max;
  *(v4 + 50) |= 2u;
  v6 = self->_has;
  if ((v6 & 8) != 0)
  {
    goto LABEL_31;
  }

LABEL_15:
  if ((v6 & 0x10) != 0)
  {
LABEL_16:
    *(v4 + 5) = *&self->_mostRecentDate;
    *(v4 + 50) |= 0x10u;
  }

LABEL_17:
  if ([(HDCodableQuantitySample *)self quantitySeriesDatasCount])
  {
    [v11 clearQuantitySeriesDatas];
    v7 = [(HDCodableQuantitySample *)self quantitySeriesDatasCount];
    if (v7)
    {
      v8 = v7;
      for (i = 0; i != v8; ++i)
      {
        v10 = [(HDCodableQuantitySample *)self quantitySeriesDataAtIndex:i];
        [v11 addQuantitySeriesData:v10];
      }
    }
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v11 + 6) = *&self->_mostRecentDuration;
    *(v11 + 50) |= 0x20u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:a3];
  v7 = *(v5 + 88);
  *(v5 + 88) = v6;

  has = self->_has;
  if ((has & 0x40) != 0)
  {
    *(v5 + 56) = self->_valueInCanonicalUnit;
    *(v5 + 100) |= 0x40u;
    has = self->_has;
  }

  if ((has & 0x80) != 0)
  {
    *(v5 + 64) = self->_valueInOriginalUnit;
    *(v5 + 100) |= 0x80u;
  }

  v9 = [(NSString *)self->_originalUnitString copyWithZone:a3];
  v10 = *(v5 + 72);
  *(v5 + 72) = v9;

  v11 = self->_has;
  if ((v11 & 0x200) != 0)
  {
    *(v5 + 97) = self->_frozen;
    *(v5 + 100) |= 0x200u;
    v11 = self->_has;
    if ((v11 & 1) == 0)
    {
LABEL_7:
      if ((v11 & 0x100) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }
  }

  else if ((v11 & 1) == 0)
  {
    goto LABEL_7;
  }

  *(v5 + 8) = self->_count;
  *(v5 + 100) |= 1u;
  v11 = self->_has;
  if ((v11 & 0x100) == 0)
  {
LABEL_8:
    if ((v11 & 4) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v5 + 96) = self->_final;
  *(v5 + 100) |= 0x100u;
  v11 = self->_has;
  if ((v11 & 4) == 0)
  {
LABEL_9:
    if ((v11 & 2) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v5 + 24) = self->_min;
  *(v5 + 100) |= 4u;
  v11 = self->_has;
  if ((v11 & 2) == 0)
  {
LABEL_10:
    if ((v11 & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v5 + 16) = self->_max;
  *(v5 + 100) |= 2u;
  v11 = self->_has;
  if ((v11 & 8) == 0)
  {
LABEL_11:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

LABEL_28:
  *(v5 + 32) = self->_mostRecent;
  *(v5 + 100) |= 8u;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_12:
    *(v5 + 40) = self->_mostRecentDate;
    *(v5 + 100) |= 0x10u;
  }

LABEL_13:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = self->_quantitySeriesDatas;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v20 + 1) + 8 * i) copyWithZone:{a3, v20}];
        [v5 addQuantitySeriesData:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  if ((*&self->_has & 0x20) != 0)
  {
    *(v5 + 48) = self->_mostRecentDuration;
    *(v5 + 100) |= 0x20u;
  }

  v18 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_66;
  }

  sample = self->_sample;
  if (sample | *(v4 + 11))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_66;
    }
  }

  has = self->_has;
  v7 = *(v4 + 50);
  if ((has & 0x40) != 0)
  {
    if ((v7 & 0x40) == 0 || self->_valueInCanonicalUnit != *(v4 + 7))
    {
      goto LABEL_66;
    }
  }

  else if ((v7 & 0x40) != 0)
  {
    goto LABEL_66;
  }

  if ((has & 0x80) != 0)
  {
    if ((v7 & 0x80) == 0 || self->_valueInOriginalUnit != *(v4 + 8))
    {
      goto LABEL_66;
    }
  }

  else if ((v7 & 0x80) != 0)
  {
    goto LABEL_66;
  }

  originalUnitString = self->_originalUnitString;
  if (originalUnitString | *(v4 + 9))
  {
    if (![(NSString *)originalUnitString isEqual:?])
    {
      goto LABEL_66;
    }

    has = self->_has;
    v7 = *(v4 + 50);
  }

  if ((has & 0x200) != 0)
  {
    if ((v7 & 0x200) == 0)
    {
      goto LABEL_66;
    }

    v9 = *(v4 + 97);
    if (self->_frozen)
    {
      if ((*(v4 + 97) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(v4 + 97))
    {
      goto LABEL_66;
    }
  }

  else if ((v7 & 0x200) != 0)
  {
    goto LABEL_66;
  }

  if (has)
  {
    if ((v7 & 1) == 0 || self->_count != *(v4 + 1))
    {
      goto LABEL_66;
    }
  }

  else if (v7)
  {
    goto LABEL_66;
  }

  if ((has & 0x100) != 0)
  {
    if ((v7 & 0x100) == 0)
    {
      goto LABEL_66;
    }

    v10 = *(v4 + 96);
    if (self->_final)
    {
      if ((*(v4 + 96) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    else if (*(v4 + 96))
    {
      goto LABEL_66;
    }
  }

  else if ((v7 & 0x100) != 0)
  {
    goto LABEL_66;
  }

  if ((has & 4) != 0)
  {
    if ((v7 & 4) == 0 || self->_min != *(v4 + 3))
    {
      goto LABEL_66;
    }
  }

  else if ((v7 & 4) != 0)
  {
    goto LABEL_66;
  }

  if ((has & 2) != 0)
  {
    if ((v7 & 2) == 0 || self->_max != *(v4 + 2))
    {
      goto LABEL_66;
    }
  }

  else if ((v7 & 2) != 0)
  {
    goto LABEL_66;
  }

  if ((has & 8) != 0)
  {
    if ((v7 & 8) == 0 || self->_mostRecent != *(v4 + 4))
    {
      goto LABEL_66;
    }
  }

  else if ((v7 & 8) != 0)
  {
    goto LABEL_66;
  }

  if ((has & 0x10) != 0)
  {
    if ((v7 & 0x10) == 0 || self->_mostRecentDate != *(v4 + 5))
    {
      goto LABEL_66;
    }
  }

  else if ((v7 & 0x10) != 0)
  {
    goto LABEL_66;
  }

  quantitySeriesDatas = self->_quantitySeriesDatas;
  if (quantitySeriesDatas | *(v4 + 10))
  {
    if ([(NSMutableArray *)quantitySeriesDatas isEqual:?])
    {
      has = self->_has;
      v7 = *(v4 + 50);
      goto LABEL_61;
    }

LABEL_66:
    v12 = 0;
    goto LABEL_67;
  }

LABEL_61:
  if ((has & 0x20) != 0)
  {
    if ((v7 & 0x20) == 0 || self->_mostRecentDuration != *(v4 + 6))
    {
      goto LABEL_66;
    }

    v12 = 1;
  }

  else
  {
    v12 = (v7 & 0x20) == 0;
  }

LABEL_67:

  return v12;
}

- (unint64_t)hash
{
  v46 = [(HDCodableSample *)self->_sample hash];
  has = self->_has;
  if ((has & 0x40) != 0)
  {
    valueInCanonicalUnit = self->_valueInCanonicalUnit;
    if (valueInCanonicalUnit < 0.0)
    {
      valueInCanonicalUnit = -valueInCanonicalUnit;
    }

    *v3.i64 = floor(valueInCanonicalUnit + 0.5);
    v8 = (valueInCanonicalUnit - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v3 = vbslq_s8(vnegq_f64(v9), v4, v3);
    v6 = 2654435761u * *v3.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if ((has & 0x80) != 0)
  {
    valueInOriginalUnit = self->_valueInOriginalUnit;
    if (valueInOriginalUnit < 0.0)
    {
      valueInOriginalUnit = -valueInOriginalUnit;
    }

    *v3.i64 = floor(valueInOriginalUnit + 0.5);
    v12 = (valueInOriginalUnit - *v3.i64) * 1.84467441e19;
    *v4.i64 = *v3.i64 - trunc(*v3.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v4, v3).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  v45 = [(NSString *)self->_originalUnitString hash];
  v16 = self->_has;
  if ((v16 & 0x200) != 0)
  {
    v44 = 2654435761 * self->_frozen;
    if (v16)
    {
LABEL_19:
      v42 = 2654435761 * self->_count;
      if ((*&self->_has & 0x100) != 0)
      {
        goto LABEL_20;
      }

LABEL_27:
      v17 = 0;
      if ((v16 & 4) != 0)
      {
        goto LABEL_21;
      }

LABEL_28:
      v21 = 0;
      goto LABEL_29;
    }
  }

  else
  {
    v44 = 0;
    if (v16)
    {
      goto LABEL_19;
    }
  }

  v42 = 0;
  if ((*&self->_has & 0x100) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  v17 = 2654435761 * self->_final;
  if ((v16 & 4) == 0)
  {
    goto LABEL_28;
  }

LABEL_21:
  min = self->_min;
  if (min < 0.0)
  {
    min = -min;
  }

  *v14.i64 = floor(min + 0.5);
  v19 = (min - *v14.i64) * 1.84467441e19;
  *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
  v20.f64[0] = NAN;
  v20.f64[1] = NAN;
  v14 = vbslq_s8(vnegq_f64(v20), v15, v14);
  v21 = 2654435761u * *v14.i64;
  if (v19 >= 0.0)
  {
    if (v19 > 0.0)
    {
      v21 += v19;
    }
  }

  else
  {
    v21 -= fabs(v19);
  }

LABEL_29:
  if ((v16 & 2) != 0)
  {
    max = self->_max;
    if (max < 0.0)
    {
      max = -max;
    }

    *v14.i64 = floor(max + 0.5);
    v24 = (max - *v14.i64) * 1.84467441e19;
    *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
    v25.f64[0] = NAN;
    v25.f64[1] = NAN;
    v14 = vbslq_s8(vnegq_f64(v25), v15, v14);
    v22 = 2654435761u * *v14.i64;
    if (v24 >= 0.0)
    {
      if (v24 > 0.0)
      {
        v22 += v24;
      }
    }

    else
    {
      v22 -= fabs(v24);
    }
  }

  else
  {
    v22 = 0;
  }

  if ((v16 & 8) != 0)
  {
    mostRecent = self->_mostRecent;
    if (mostRecent < 0.0)
    {
      mostRecent = -mostRecent;
    }

    *v14.i64 = floor(mostRecent + 0.5);
    v28 = (mostRecent - *v14.i64) * 1.84467441e19;
    *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
    v29.f64[0] = NAN;
    v29.f64[1] = NAN;
    v14 = vbslq_s8(vnegq_f64(v29), v15, v14);
    v26 = 2654435761u * *v14.i64;
    if (v28 >= 0.0)
    {
      if (v28 > 0.0)
      {
        v26 += v28;
      }
    }

    else
    {
      v26 -= fabs(v28);
    }
  }

  else
  {
    v26 = 0;
  }

  if ((v16 & 0x10) != 0)
  {
    mostRecentDate = self->_mostRecentDate;
    if (mostRecentDate < 0.0)
    {
      mostRecentDate = -mostRecentDate;
    }

    *v14.i64 = floor(mostRecentDate + 0.5);
    v32 = (mostRecentDate - *v14.i64) * 1.84467441e19;
    *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
    v33.f64[0] = NAN;
    v33.f64[1] = NAN;
    v30 = 2654435761u * *vbslq_s8(vnegq_f64(v33), v15, v14).i64;
    if (v32 >= 0.0)
    {
      if (v32 > 0.0)
      {
        v30 += v32;
      }
    }

    else
    {
      v30 -= fabs(v32);
    }
  }

  else
  {
    v30 = 0;
  }

  v34 = [(NSMutableArray *)self->_quantitySeriesDatas hash];
  if ((*&self->_has & 0x20) != 0)
  {
    mostRecentDuration = self->_mostRecentDuration;
    if (mostRecentDuration < 0.0)
    {
      mostRecentDuration = -mostRecentDuration;
    }

    *v35.i64 = floor(mostRecentDuration + 0.5);
    v39 = (mostRecentDuration - *v35.i64) * 1.84467441e19;
    *v36.i64 = *v35.i64 - trunc(*v35.i64 * 5.42101086e-20) * 1.84467441e19;
    v40.f64[0] = NAN;
    v40.f64[1] = NAN;
    v37 = 2654435761u * *vbslq_s8(vnegq_f64(v40), v36, v35).i64;
    if (v39 >= 0.0)
    {
      if (v39 > 0.0)
      {
        v37 += v39;
      }
    }

    else
    {
      v37 -= fabs(v39);
    }
  }

  else
  {
    v37 = 0;
  }

  return v6 ^ v46 ^ v10 ^ v45 ^ v44 ^ v43 ^ v17 ^ v21 ^ v22 ^ v26 ^ v30 ^ v34 ^ v37;
}

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  sample = self->_sample;
  v6 = *(v4 + 11);
  if (sample)
  {
    if (v6)
    {
      [(HDCodableSample *)sample mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(HDCodableQuantitySample *)self setSample:?];
  }

  v7 = *(v4 + 50);
  if ((v7 & 0x40) != 0)
  {
    self->_valueInCanonicalUnit = *(v4 + 7);
    *&self->_has |= 0x40u;
    v7 = *(v4 + 50);
  }

  if ((v7 & 0x80) != 0)
  {
    self->_valueInOriginalUnit = *(v4 + 8);
    *&self->_has |= 0x80u;
  }

  if (*(v4 + 9))
  {
    [(HDCodableQuantitySample *)self setOriginalUnitString:?];
  }

  v8 = *(v4 + 50);
  if ((v8 & 0x200) != 0)
  {
    self->_frozen = *(v4 + 97);
    *&self->_has |= 0x200u;
    v8 = *(v4 + 50);
    if ((v8 & 1) == 0)
    {
LABEL_14:
      if ((v8 & 0x100) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_32;
    }
  }

  else if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  self->_count = *(v4 + 1);
  *&self->_has |= 1u;
  v8 = *(v4 + 50);
  if ((v8 & 0x100) == 0)
  {
LABEL_15:
    if ((v8 & 4) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  self->_final = *(v4 + 96);
  *&self->_has |= 0x100u;
  v8 = *(v4 + 50);
  if ((v8 & 4) == 0)
  {
LABEL_16:
    if ((v8 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  self->_min = *(v4 + 3);
  *&self->_has |= 4u;
  v8 = *(v4 + 50);
  if ((v8 & 2) == 0)
  {
LABEL_17:
    if ((v8 & 8) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  self->_max = *(v4 + 2);
  *&self->_has |= 2u;
  v8 = *(v4 + 50);
  if ((v8 & 8) == 0)
  {
LABEL_18:
    if ((v8 & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_35:
  self->_mostRecent = *(v4 + 4);
  *&self->_has |= 8u;
  if ((*(v4 + 50) & 0x10) != 0)
  {
LABEL_19:
    self->_mostRecentDate = *(v4 + 5);
    *&self->_has |= 0x10u;
  }

LABEL_20:
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v9 = *(v4 + 10);
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(HDCodableQuantitySample *)self addQuantitySeriesData:*(*(&v15 + 1) + 8 * i), v15];
      }

      v11 = [v9 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v11);
  }

  if ((*(v4 + 50) & 0x20) != 0)
  {
    self->_mostRecentDuration = *(v4 + 6);
    *&self->_has |= 0x20u;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)applyToObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HDCodableQuantitySample *)self sample];
    if (![v5 applyToObject:v4])
    {
      v10 = 0;
LABEL_33:

      goto LABEL_34;
    }

    v6 = [v4 quantityType];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
LABEL_32:

      goto LABEL_33;
    }

    v7 = MEMORY[0x277CCD7E8];
    if ((*&self->_has & 0x40) != 0)
    {
      v8 = [v6 canonicalUnit];
      v9 = &OBJC_IVAR___HDCodableQuantitySample__valueInCanonicalUnit;
    }

    else
    {
      v8 = [MEMORY[0x277CCDAB0] unitFromString:self->_originalUnitString];
      v9 = &OBJC_IVAR___HDCodableQuantitySample__valueInOriginalUnit;
    }

    v11 = [v7 quantityWithUnit:v8 doubleValue:*(&self->super.super.isa + *v9)];

    v10 = v11 != 0;
    if (!v11)
    {
LABEL_31:

      goto LABEL_32;
    }

    [v4 _setQuantity:v11];
    v12 = (*&self->_has & 0x200) == 0 || self->_frozen;
    [v4 _setFrozen:v12];
    if (*&self->_has)
    {
      [v4 _setCount:self->_count];
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_29:
      if (self->_quantitySeriesDatas)
      {
        [v4 _setCodableQuantitySample:self];
      }

      goto LABEL_31;
    }

    v13 = v4;
    v14 = [v13 quantity];
    v15 = [v14 _unit];

    has = self->_has;
    if ((has & 4) != 0)
    {
      v17 = [MEMORY[0x277CCD7E8] quantityWithUnit:v15 doubleValue:self->_min];
      [v13 _setMinimumQuantity:v17];

      has = self->_has;
      if ((has & 2) == 0)
      {
LABEL_19:
        if ((has & 8) == 0)
        {
          goto LABEL_20;
        }

        goto LABEL_24;
      }
    }

    else if ((has & 2) == 0)
    {
      goto LABEL_19;
    }

    v18 = [MEMORY[0x277CCD7E8] quantityWithUnit:v15 doubleValue:self->_max];
    [v13 _setMaximumQuantity:v18];

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_20:
      if ((has & 0x10) == 0)
      {
        goto LABEL_28;
      }

      goto LABEL_25;
    }

LABEL_24:
    v19 = [MEMORY[0x277CCD7E8] quantityWithUnit:v15 doubleValue:self->_mostRecent];
    [v13 _setMostRecentQuantity:v19];

    if ((*&self->_has & 0x10) == 0)
    {
LABEL_28:

      goto LABEL_29;
    }

LABEL_25:
    v20 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:self->_mostRecentDate];
    mostRecentDuration = 0.0;
    if ((*&self->_has & 0x20) != 0)
    {
      mostRecentDuration = self->_mostRecentDuration;
    }

    v22 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v20 duration:mostRecentDuration];
    [v13 _setMostRecentQuantityDateInterval:v22];

    goto LABEL_28;
  }

  v10 = 0;
LABEL_34:

  return v10;
}

@end