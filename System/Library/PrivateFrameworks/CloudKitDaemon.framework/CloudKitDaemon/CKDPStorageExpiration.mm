@interface CKDPStorageExpiration
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)operationTypeAsString:(int)string;
- (int)StringAsOperationType:(id)type;
- (int)operationType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasExpirationTime:(BOOL)time;
- (void)setHasOperationType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation CKDPStorageExpiration

- (int)operationType
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_operationType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasOperationType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)operationTypeAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854CD20[string - 1];
  }

  return v4;
}

- (int)StringAsOperationType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, @"unset"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v5, @"setDuration"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v7, @"setExpiration"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setHasExpirationTime:(BOOL)time
{
  if (time)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPStorageExpiration;
  v4 = [(CKDPStorageExpiration *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  has = self->_has;
  if ((has & 4) != 0)
  {
    v8 = self->_operationType - 1;
    if (v8 >= 3)
    {
      v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_operationType);
    }

    else
    {
      v9 = off_27854CD20[v8];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v9, @"operationType");

    has = self->_has;
  }

  if (has)
  {
    v10 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v4, self->_duration);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"duration");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v12 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v4, v5, self->_expirationTime);
    objc_msgSend_setObject_forKey_(v6, v13, v12, @"expirationTime");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v9 = toCopy;
  if ((has & 4) != 0)
  {
    operationType = self->_operationType;
    PBDataWriterWriteInt32Field();
    toCopy = v9;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  duration = self->_duration;
  PBDataWriterWriteUint64Field();
  toCopy = v9;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    expirationTime = self->_expirationTime;
    PBDataWriterWriteDoubleField();
    toCopy = v9;
  }

LABEL_5:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[6] = self->_operationType;
    *(toCopy + 28) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 1) = self->_duration;
  *(toCopy + 28) |= 1u;
  if ((*&self->_has & 2) != 0)
  {
LABEL_4:
    *(toCopy + 2) = *&self->_expirationTime;
    *(toCopy + 28) |= 2u;
  }

LABEL_5:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  result = objc_msgSend_init(v7, v8, v9);
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 6) = self->_operationType;
    *(result + 28) |= 4u;
    has = self->_has;
    if ((has & 1) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        return result;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  *(result + 1) = self->_duration;
  *(result + 28) |= 1u;
  if ((*&self->_has & 2) == 0)
  {
    return result;
  }

LABEL_4:
  *(result + 2) = *&self->_expirationTime;
  *(result + 28) |= 2u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_16;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 28) & 4) == 0 || self->_operationType != *(equalCopy + 6))
    {
      goto LABEL_16;
    }
  }

  else if ((*(equalCopy + 28) & 4) != 0)
  {
LABEL_16:
    v7 = 0;
    goto LABEL_17;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_duration != *(equalCopy + 1))
    {
      goto LABEL_16;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_16;
  }

  v7 = (*(equalCopy + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0 || self->_expirationTime != *(equalCopy + 2))
    {
      goto LABEL_16;
    }

    v7 = 1;
  }

LABEL_17:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) == 0)
  {
    v4 = 0;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_9:
    v5 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v9 = 0;
    return v5 ^ v4 ^ v9;
  }

  v4 = 2654435761 * self->_operationType;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  v5 = 2654435761u * self->_duration;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  expirationTime = self->_expirationTime;
  if (expirationTime < 0.0)
  {
    expirationTime = -expirationTime;
  }

  *v2.i64 = floor(expirationTime + 0.5);
  v7 = (expirationTime - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v8.f64[0] = NAN;
  v8.f64[1] = NAN;
  v9 = 2654435761u * *vbslq_s8(vnegq_f64(v8), v3, v2).i64;
  if (v7 >= 0.0)
  {
    if (v7 > 0.0)
    {
      v9 += v7;
    }
  }

  else
  {
    v9 -= fabs(v7);
  }

  return v5 ^ v4 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 28);
  if ((v5 & 4) != 0)
  {
    self->_operationType = *(fromCopy + 6);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 28);
    if ((v5 & 1) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(fromCopy + 28) & 1) == 0)
  {
    goto LABEL_3;
  }

  self->_duration = *(fromCopy + 1);
  *&self->_has |= 1u;
  if ((*(fromCopy + 28) & 2) != 0)
  {
LABEL_4:
    self->_expirationTime = *(fromCopy + 2);
    *&self->_has |= 2u;
  }

LABEL_5:
}

@end