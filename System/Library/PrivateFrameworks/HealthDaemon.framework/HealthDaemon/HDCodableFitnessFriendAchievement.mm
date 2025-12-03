@interface HDCodableFitnessFriendAchievement
- (BOOL)applyToObject:(id)object;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDoubleValue:(BOOL)value;
- (void)setHasIntValue:(BOOL)value;
- (void)writeTo:(id)to;
@end

@implementation HDCodableFitnessFriendAchievement

- (BOOL)applyToObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    sample = [(HDCodableFitnessFriendAchievement *)self sample];
    v6 = [sample applyToObject:objectCopy];
    if (v6)
    {
      if ([(HDCodableFitnessFriendAchievement *)self hasFriendUUID])
      {
        v7 = MEMORY[0x277CCAD78];
        friendUUID = [(HDCodableFitnessFriendAchievement *)self friendUUID];
        v9 = [v7 hk_UUIDWithData:friendUUID];

        [objectCopy setFriendUUID:v9];
      }

      templateUniqueName = [(HDCodableFitnessFriendAchievement *)self templateUniqueName];
      [objectCopy setTemplateUniqueName:templateUniqueName];

      v11 = objc_alloc(MEMORY[0x277CBEAA8]);
      [(HDCodableFitnessFriendAchievement *)self completedDate];
      v12 = [v11 initWithTimeIntervalSinceReferenceDate:?];
      [objectCopy setCompletedDate:v12];

      if ([(HDCodableFitnessFriendAchievement *)self hasIntValue])
      {
        v13 = [MEMORY[0x277CCABB0] numberWithLongLong:{-[HDCodableFitnessFriendAchievement intValue](self, "intValue")}];
LABEL_10:
        v15 = v13;
        [objectCopy setValue:v13];

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

- (void)setHasDoubleValue:(BOOL)value
{
  if (value)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasIntValue:(BOOL)value
{
  if (value)
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
  dictionaryRepresentation = [(HDCodableFitnessFriendAchievement *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  sample = self->_sample;
  if (sample)
  {
    dictionaryRepresentation = [(HDCodableSample *)sample dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"sample"];
  }

  friendUUID = self->_friendUUID;
  if (friendUUID)
  {
    [dictionary setObject:friendUUID forKey:@"friendUUID"];
  }

  has = self->_has;
  if (has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:self->_completedDate];
    [dictionary setObject:v11 forKey:@"completedDate"];

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
  [dictionary setObject:v12 forKey:@"doubleValue"];

  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    v8 = [MEMORY[0x277CCABB0] numberWithLongLong:self->_intValue];
    [dictionary setObject:v8 forKey:@"intValue"];
  }

LABEL_9:
  templateUniqueName = self->_templateUniqueName;
  if (templateUniqueName)
  {
    [dictionary setObject:templateUniqueName forKey:@"templateUniqueName"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v9 = toCopy;
  if (self->_sample)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v9;
  }

  if (self->_friendUUID)
  {
    PBDataWriterWriteDataField();
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    completedDate = self->_completedDate;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
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
  toCopy = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    intValue = self->_intValue;
    PBDataWriterWriteInt64Field();
    toCopy = v9;
  }

LABEL_9:
  if (self->_templateUniqueName)
  {
    PBDataWriterWriteStringField();
    toCopy = v9;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_sample)
  {
    [toCopy setSample:?];
    toCopy = v6;
  }

  if (self->_friendUUID)
  {
    [v6 setFriendUUID:?];
    toCopy = v6;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = *&self->_completedDate;
    *(toCopy + 56) |= 1u;
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

  *(toCopy + 2) = *&self->_doubleValue;
  *(toCopy + 56) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(toCopy + 3) = self->_intValue;
    *(toCopy + 56) |= 4u;
  }

LABEL_9:
  if (self->_templateUniqueName)
  {
    [v6 setTemplateUniqueName:?];
    toCopy = v6;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(HDCodableSample *)self->_sample copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  v8 = [(NSData *)self->_friendUUID copyWithZone:zone];
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
  v11 = [(NSString *)self->_templateUniqueName copyWithZone:zone];
  v12 = *(v5 + 48);
  *(v5 + 48) = v11;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  sample = self->_sample;
  if (sample | *(equalCopy + 5))
  {
    if (![(HDCodableSample *)sample isEqual:?])
    {
      goto LABEL_23;
    }
  }

  friendUUID = self->_friendUUID;
  if (friendUUID | *(equalCopy + 4))
  {
    if (![(NSData *)friendUUID isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v7 = *(equalCopy + 56);
  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_completedDate != *(equalCopy + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 56))
  {
LABEL_23:
    v9 = 0;
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_doubleValue != *(equalCopy + 2))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
    goto LABEL_23;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_intValue != *(equalCopy + 3))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 56) & 4) != 0)
  {
    goto LABEL_23;
  }

  templateUniqueName = self->_templateUniqueName;
  if (templateUniqueName | *(equalCopy + 6))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  sample = self->_sample;
  v6 = *(fromCopy + 5);
  v8 = fromCopy;
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

  fromCopy = v8;
LABEL_7:
  if (*(fromCopy + 4))
  {
    sample = [(HDCodableFitnessFriendAchievement *)self setFriendUUID:?];
    fromCopy = v8;
  }

  v7 = *(fromCopy + 56);
  if (v7)
  {
    self->_completedDate = *(fromCopy + 1);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 56);
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

  else if ((*(fromCopy + 56) & 2) == 0)
  {
    goto LABEL_11;
  }

  self->_doubleValue = *(fromCopy + 2);
  *&self->_has |= 2u;
  if ((*(fromCopy + 56) & 4) != 0)
  {
LABEL_12:
    self->_intValue = *(fromCopy + 3);
    *&self->_has |= 4u;
  }

LABEL_13:
  if (*(fromCopy + 6))
  {
    sample = [(HDCodableFitnessFriendAchievement *)self setTemplateUniqueName:?];
    fromCopy = v8;
  }

  MEMORY[0x2821F96F8](sample, fromCopy);
}

@end