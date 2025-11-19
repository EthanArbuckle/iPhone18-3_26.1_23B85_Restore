@interface CKDPThrottlingConfigRateLimit
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAllowedRequestCount:(BOOL)a3;
- (void)setHasIntervalLengthSec:(BOOL)a3;
- (void)setHasRepeatEverySec:(BOOL)a3;
- (void)setHasStartTimeSecondsAfterUnixEpoch:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPThrottlingConfigRateLimit

- (void)setHasIntervalLengthSec:(BOOL)a3
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

- (void)setHasAllowedRequestCount:(BOOL)a3
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

- (void)setHasRepeatEverySec:(BOOL)a3
{
  if (a3)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasStartTimeSecondsAfterUnixEpoch:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPThrottlingConfigRateLimit;
  v4 = [(CKDPThrottlingConfigRateLimit *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  has = self->_has;
  if ((has & 8) != 0)
  {
    v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_intervalLengthSec);
    objc_msgSend_setObject_forKey_(v5, v11, v10, @"intervalLengthSec");

    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v12 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_allowedRequestCount);
  objc_msgSend_setObject_forKey_(v5, v13, v12, @"allowedRequestCount");

  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v14 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_repeatEverySec);
  objc_msgSend_setObject_forKey_(v5, v15, v14, @"repeatEverySec");

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  v16 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_startTimeSecondsAfterUnixEpoch);
  objc_msgSend_setObject_forKey_(v5, v17, v16, @"startTimeSecondsAfterUnixEpoch");

  if (*&self->_has)
  {
LABEL_6:
    v7 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_startTimeSecondsAfterLocalMidnight);
    objc_msgSend_setObject_forKey_(v5, v8, v7, @"startTimeSecondsAfterLocalMidnight");
  }

LABEL_7:

  return v5;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    intervalLengthSec = self->_intervalLengthSec;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  allowedRequestCount = self->_allowedRequestCount;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  repeatEverySec = self->_repeatEverySec;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  startTimeSecondsAfterUnixEpoch = self->_startTimeSecondsAfterUnixEpoch;
  PBDataWriterWriteInt64Field();
  if (*&self->_has)
  {
LABEL_6:
    startTimeSecondsAfterLocalMidnight = self->_startTimeSecondsAfterLocalMidnight;
    PBDataWriterWriteInt64Field();
  }

LABEL_7:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[7] = self->_intervalLengthSec;
    *(v4 + 36) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  v4[6] = self->_allowedRequestCount;
  *(v4 + 36) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  v4[8] = self->_repeatEverySec;
  *(v4 + 36) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  *(v4 + 2) = self->_startTimeSecondsAfterUnixEpoch;
  *(v4 + 36) |= 2u;
  if (*&self->_has)
  {
LABEL_6:
    *(v4 + 1) = self->_startTimeSecondsAfterLocalMidnight;
    *(v4 + 36) |= 1u;
  }

LABEL_7:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  result = objc_msgSend_init(v7, v8, v9);
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(result + 7) = self->_intervalLengthSec;
    *(result + 36) |= 8u;
    has = self->_has;
    if ((has & 4) == 0)
    {
LABEL_3:
      if ((has & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_3;
  }

  *(result + 6) = self->_allowedRequestCount;
  *(result + 36) |= 4u;
  has = self->_has;
  if ((has & 0x10) == 0)
  {
LABEL_4:
    if ((has & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  *(result + 8) = self->_repeatEverySec;
  *(result + 36) |= 0x10u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_5:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_6;
  }

LABEL_11:
  *(result + 2) = self->_startTimeSecondsAfterUnixEpoch;
  *(result + 36) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_6:
  *(result + 1) = self->_startTimeSecondsAfterLocalMidnight;
  *(result + 36) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(v4 + 36) & 8) == 0 || self->_intervalLengthSec != *(v4 + 7))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 36) & 8) != 0)
  {
LABEL_26:
    v7 = 0;
    goto LABEL_27;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 36) & 4) == 0 || self->_allowedRequestCount != *(v4 + 6))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 36) & 4) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    if ((*(v4 + 36) & 0x10) == 0 || self->_repeatEverySec != *(v4 + 8))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 36) & 0x10) != 0)
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_startTimeSecondsAfterUnixEpoch != *(v4 + 2))
    {
      goto LABEL_26;
    }
  }

  else if ((*(v4 + 36) & 2) != 0)
  {
    goto LABEL_26;
  }

  v7 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_startTimeSecondsAfterLocalMidnight != *(v4 + 1))
    {
      goto LABEL_26;
    }

    v7 = 1;
  }

LABEL_27:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v2 = 2654435761 * self->_intervalLengthSec;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_allowedRequestCount;
      if ((*&self->_has & 0x10) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 0x10) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_repeatEverySec;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    v5 = 0;
    if (*&self->_has)
    {
      goto LABEL_6;
    }

LABEL_11:
    v6 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6;
  }

LABEL_9:
  v4 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  v5 = 2654435761 * self->_startTimeSecondsAfterUnixEpoch;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v6 = 2654435761 * self->_startTimeSecondsAfterLocalMidnight;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 36);
  if ((v5 & 8) != 0)
  {
    self->_intervalLengthSec = *(v4 + 7);
    *&self->_has |= 8u;
    v5 = *(v4 + 36);
    if ((v5 & 4) == 0)
    {
LABEL_3:
      if ((v5 & 0x10) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v4 + 36) & 4) == 0)
  {
    goto LABEL_3;
  }

  self->_allowedRequestCount = *(v4 + 6);
  *&self->_has |= 4u;
  v5 = *(v4 + 36);
  if ((v5 & 0x10) == 0)
  {
LABEL_4:
    if ((v5 & 2) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

LABEL_12:
  self->_repeatEverySec = *(v4 + 8);
  *&self->_has |= 0x10u;
  v5 = *(v4 + 36);
  if ((v5 & 2) == 0)
  {
LABEL_5:
    if ((v5 & 1) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

LABEL_13:
  self->_startTimeSecondsAfterUnixEpoch = *(v4 + 2);
  *&self->_has |= 2u;
  if (*(v4 + 36))
  {
LABEL_6:
    self->_startTimeSecondsAfterLocalMidnight = *(v4 + 1);
    *&self->_has |= 1u;
  }

LABEL_7:
}

@end