@interface HDCodableOntologyLocalizedEducationContent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSections:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDeleted:(BOOL)a3;
- (void)setHasVersion:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableOntologyLocalizedEducationContent

- (void)addSections:(id)a3
{
  v4 = a3;
  sections = self->_sections;
  v8 = v4;
  if (!sections)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_sections;
    self->_sections = v6;

    v4 = v8;
    sections = self->_sections;
  }

  [(NSMutableArray *)sections addObject:v4];
}

- (void)setHasVersion:(BOOL)a3
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

- (void)setHasDeleted:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableOntologyLocalizedEducationContent;
  v4 = [(HDCodableOntologyLocalizedEducationContent *)&v8 description];
  v5 = [(HDCodableOntologyLocalizedEducationContent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_sections count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_sections, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = self->_sections;
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

          v10 = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKey:@"sections"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v15 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_version];
    [v3 setObject:v15 forKey:@"version"];

    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_12:
      if ((has & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_12;
  }

  v16 = [MEMORY[0x277CCABB0] numberWithDouble:{self->_timestamp, v17}];
  [v3 setObject:v16 forKey:@"timestamp"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_13:
    v12 = [MEMORY[0x277CCABB0] numberWithBool:{self->_deleted, v17}];
    [v3 setObject:v12 forKey:@"deleted"];
  }

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];

  return v3;
}

- (void)writeTo:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = self->_sections;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  version = self->_version;
  PBDataWriterWriteInt64Field();
  has = self->_has;
  if (has)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((has & 4) != 0)
  {
LABEL_11:
    deleted = self->_deleted;
    PBDataWriterWriteBOOLField();
  }

LABEL_12:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v9 = a3;
  if ([(HDCodableOntologyLocalizedEducationContent *)self sectionsCount])
  {
    [v9 clearSections];
    v4 = [(HDCodableOntologyLocalizedEducationContent *)self sectionsCount];
    if (v4)
    {
      v5 = v4;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCodableOntologyLocalizedEducationContent *)self sectionsAtIndex:i];
        [v9 addSections:v7];
      }
    }
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v9 + 2) = self->_version;
    *(v9 + 36) |= 2u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  *(v9 + 1) = *&self->_timestamp;
  *(v9 + 36) |= 1u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(v9 + 32) = self->_deleted;
    *(v9 + 36) |= 4u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_sections;
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

        v11 = [*(*(&v15 + 1) + 8 * i) copyWithZone:{a3, v15}];
        [v5 addSections:v11];
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  has = self->_has;
  if ((has & 2) == 0)
  {
    if ((*&self->_has & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    *(v5 + 8) = self->_timestamp;
    *(v5 + 36) |= 1u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  *(v5 + 16) = self->_version;
  *(v5 + 36) |= 2u;
  has = self->_has;
  if (has)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((has & 4) != 0)
  {
LABEL_11:
    *(v5 + 32) = self->_deleted;
    *(v5 + 36) |= 4u;
  }

LABEL_12:
  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  sections = self->_sections;
  if (sections | *(v4 + 3))
  {
    if (![(NSMutableArray *)sections isEqual:?])
    {
      goto LABEL_16;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_version != *(v4 + 2))
    {
      goto LABEL_16;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_16;
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_16;
  }

  v6 = (*(v4 + 36) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0)
    {
LABEL_16:
      v6 = 0;
      goto LABEL_17;
    }

    if (self->_deleted)
    {
      if ((*(v4 + 32) & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_16;
    }

    v6 = 1;
  }

LABEL_17:

  return v6;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_sections hash];
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_version;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_8:
    v10 = 0;
    goto LABEL_9;
  }

  v6 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_3:
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v4.i64 = floor(timestamp + 0.5);
  v8 = (timestamp - *v4.i64) * 1.84467441e19;
  *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
  v9.f64[0] = NAN;
  v9.f64[1] = NAN;
  v10 = 2654435761u * *vbslq_s8(vnegq_f64(v9), v5, v4).i64;
  if (v8 >= 0.0)
  {
    if (v8 > 0.0)
    {
      v10 += v8;
    }
  }

  else
  {
    v10 -= fabs(v8);
  }

LABEL_9:
  if ((*&self->_has & 4) != 0)
  {
    v11 = 2654435761 * self->_deleted;
  }

  else
  {
    v11 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = *(v4 + 3);
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

        [(HDCodableOntologyLocalizedEducationContent *)self addSections:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v10 = *(v4 + 36);
  if ((v10 & 2) == 0)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    if ((*(v4 + 36) & 4) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  self->_version = *(v4 + 2);
  *&self->_has |= 2u;
  v10 = *(v4 + 36);
  if (v10)
  {
    goto LABEL_14;
  }

LABEL_10:
  if ((v10 & 4) != 0)
  {
LABEL_11:
    self->_deleted = *(v4 + 32);
    *&self->_has |= 4u;
  }

LABEL_12:

  v11 = *MEMORY[0x277D85DE8];
}

@end