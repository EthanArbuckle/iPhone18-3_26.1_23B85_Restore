@interface HDCodableFitnessFriendAchievement
- (BOOL)applyToObject:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDoubleValue:(BOOL)a3;
- (void)setHasIntValue:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation HDCodableFitnessFriendAchievement

- (BOOL)applyToObject:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(HDCodableFitnessFriendAchievement *)self sample];
    v6 = [v5 applyToObject:v4];
    if (v6)
    {
      if ([(HDCodableFitnessFriendAchievement *)self hasFriendUUID])
      {
        v7 = MEMORY[0x277CCAD78];
        v8 = [(HDCodableFitnessFriendAchievement *)self friendUUID];
        v9 = [v7 hk_UUIDWithData:v8];

        [v4 setFriendUUID:v9];
      }

      v10 = [(HDCodableFitnessFriendAchievement *)self templateUniqueName];
      [v4 setTemplateUniqueName:v10];

      v11 = objc_alloc(MEMORY[0x277CBEAA8]);
      [(HDCodableFitnessFriendAchievement *)self completedDate];
      v12 = [v11 initWithTimeIntervalSinceReferenceDate:?];
      [v4 setCompletedDate:v12];

      if ([(HDCodableFitnessFriendAchievement *)self hasIntValue])
      {
        v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCodableFitnessFriendAchievement intValue](self, "intValue")}];
LABEL_10:
        v15 = v13;
        [v4 setValue:v13];

        goto LABEL_11;
      }

      if ([(HDCodableFitnessFriendAchievement *)self hasDoubleValue])
      {
        v14 = MEMORY[0x277CCABB0];
        [(HDCodableFitnessFriendAchievement *)self doubleValue];
        v13 = [v14 numberWithDouble:?];
        goto LABEL_10;
      }
    }

LABEL_11:

    goto LABEL_12;
  }

  LOBYTE(v6) = 0;
LABEL_12:

  return v6;
}

- (void)setHasDoubleValue:(BOOL)a3
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

- (void)setHasIntValue:(BOOL)a3
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

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCodableFitnessFriendAchievement;
  v4 = [(HDCodableFitnessFriendAchievement *)&v8 description];
  v5 = [(HDCodableFitnessFriendAchievement *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  return v6;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    v5 = [(HDCodableSample *)sample dictionaryRepresentation];
    [v3 setObject:v5 forKey:@"sample"];
  }

  friendUUID = self->_friendUUID;
  if (friendUUID)
  {
    [v3 setObject:friendUUID forKey:@"friendUUID"];
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_completedDate];
    [v3 setObject:v11 forKey:@"completedDate"];

    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  v12 = [MEMORY[0x277CCABB0] numberWithDouble:self->_doubleValue];
  [v3 setObject:v12 forKey:@"doubleValue"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_intValue];
    [v3 setObject:v8 forKey:@"intValue"];
  }

LABEL_9:
  templateUniqueName = self->_templateUniqueName;
  if (templateUniqueName)
  {
    [v3 setObject:templateUniqueName forKey:@"templateUniqueName"];
  }

  return v3;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_friendUUID)
  {
    PBDataWriterWriteDataField();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    completedDate = self->_completedDate;
    PBDataWriterWriteDoubleField();
    v4 = v9;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  doubleValue = self->_doubleValue;
  PBDataWriterWriteDoubleField();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    intValue = self->_intValue;
    PBDataWriterWriteInt64Field();
    v4 = v9;
  }

LABEL_9:
  if (self->_templateUniqueName)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_sample)
  {
    [v4 setSample:?];
    v4 = v6;
  }

  if (self->_friendUUID)
  {
    [v6 setFriendUUID:?];
    v4 = v6;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_completedDate;
    *(v4 + 56) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_7:
      if ((has & 4) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_7;
  }

  *(v4 + 2) = *&self->_doubleValue;
  *(v4 + 56) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(v4 + 3) = self->_intValue;
    *(v4 + 56) |= 4u;
  }

LABEL_9:
  if (self->_templateUniqueName)
  {
    [v6 setTemplateUniqueName:?];
    v4 = v6;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:a3];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSData *)self->_friendUUID copyWithZone:a3];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v5 + 16) = self->_doubleValue;
    *(v5 + 56) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(v5 + 8) = self->_completedDate;
  *(v5 + 56) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v5 + 24) = self->_intValue;
    *(v5 + 56) |= 4u;
  }

LABEL_5:
  v11 = [(NSString *)self->_templateUniqueName copyWithZone:a3];
  v12 = *(v5 + 48);
  *(v5 + 48) = v11;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  sample = self->_sample;
  if (sample | *(v4 + 5))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_23;
    }
  }

  friendUUID = self->_friendUUID;
  if (friendUUID | *(v4 + 4))
  {
    if (![(NSData *)friendUUID isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v7 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((*(v4 + 56) & 1) == 0 || self->_completedDate != *(v4 + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(v4 + 56))
  {
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 56) & 2) == 0 || self->_doubleValue != *(v4 + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 56) & 2) != 0)
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 56) & 4) == 0 || self->_intValue != *(v4 + 3))
    {
      goto LABEL_23;
    }
  }

  else if ((*(v4 + 56) & 4) != 0)
  {
    goto LABEL_23;
  }

  templateUniqueName = self->_templateUniqueName;
  if (templateUniqueName | *(v4 + 6))
  {
    v9 = [(NSString *)templateUniqueName isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_24:

  return v9;
}

- (unint64_t)hash
{
  v3 = [(HDCodableSample *)self->_sample hash];
  v4 = [(NSData *)self->_friendUUID hash];
  if (*&self->_has)
  {
    completedDate = self->_completedDate;
    if (completedDate < 0.0)
    {
      completedDate = -completedDate;
    }

    *v5.i64 = floor(completedDate + 0.5);
    v9 = (completedDate - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v5 = vbslq_s8(vnegq_f64(v10), v6, v5);
    v7 = 2654435761u * *v5.i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    doubleValue = self->_doubleValue;
    if (doubleValue < 0.0)
    {
      doubleValue = -doubleValue;
    }

    *v5.i64 = floor(doubleValue + 0.5);
    v13 = (doubleValue - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v14.f64[0] = NAN;
    v14.f64[1] = NAN;
    v11 = 2654435761u * *vbslq_s8(vnegq_f64(v14), v6, v5).i64;
    if (v13 >= 0.0)
    {
      if (v13 > 0.0)
      {
        v11 += v13;
      }
    }

    else
    {
      v11 -= fabs(v13);
    }
  }

  else
  {
    v11 = 0;
  }

  if ((*&self->_has & 4) != 0)
  {
    v15 = 2654435761 * self->_intValue;
  }

  else
  {
    v15 = 0;
  }

  return v4 ^ v3 ^ v7 ^ v11 ^ v15 ^ [(NSString *)self->_templateUniqueName hash];
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  sample = self->_sample;
  v6 = *(v4 + 5);
  v8 = v4;
  if (sample)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    sample = [(HDCodableSample *)sample mergeFrom:?];
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    sample = [(HDCodableFitnessFriendAchievement *)self setSample:?];
  }

  v4 = v8;
LABEL_7:
  if (*(v4 + 4))
  {
    sample = [(HDCodableFitnessFriendAchievement *)self setFriendUUID:?];
    v4 = v8;
  }

  v7 = *(v4 + 56);
  if (v7)
  {
    self->_completedDate = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 56);
    if ((v7 & 2) == 0)
    {
LABEL_11:
      if ((v7 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v4 + 56) & 2) == 0)
  {
    goto LABEL_11;
  }

  self->_doubleValue = *(v4 + 2);
  *&self->_has |= 2u;
  if ((*(v4 + 56) & 4) != 0)
  {
LABEL_12:
    self->_intValue = *(v4 + 3);
    *&self->_has |= 4u;
  }

LABEL_13:
  if (*(v4 + 6))
  {
    sample = [(HDCodableFitnessFriendAchievement *)self setTemplateUniqueName:?];
    v4 = v8;
  }

  MEMORY[0x2821F96F8](sample, v4);
}

@end