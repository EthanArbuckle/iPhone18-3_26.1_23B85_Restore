@interface LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialdEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)eventTypeAsString:(int)a3;
- (int)StringAsEventType:(id)a3;
- (int)eventType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasEventSucceeded:(BOOL)a3;
- (void)setHasEventType:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialdEvent

- (int)eventType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_eventType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasEventType:(BOOL)a3
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

- (id)eventTypeAsString:(int)a3
{
  if (a3 >= 4)
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", v3, v4, a3);
  }

  else
  {
    v6 = off_279813C60[a3];
  }

  return v6;
}

- (int)StringAsEventType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"Unknown", v5, v6))
  {
    v10 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"allocation", v8, v9))
  {
    v10 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v11, @"activation", v12, v13))
  {
    v10 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v14, @"deactivation", v15, v16))
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)setHasEventSucceeded:(BOOL)a3
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
  v15.receiver = self;
  v15.super_class = LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialdEvent;
  v4 = [(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerTrialdEvent *)&v15 description];
  v9 = objc_msgSend_dictionaryRepresentation(self, v5, v6, v7, v8);
  v13 = objc_msgSend_stringWithFormat_(v3, v10, @"%@ %@", v11, v12, v4, v9);

  return v13;
}

- (id)dictionaryRepresentation
{
  v10 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  trialIdentifiers = self->_trialIdentifiers;
  if (trialIdentifiers)
  {
    v12 = objc_msgSend_dictionaryRepresentation(trialIdentifiers, v6, v7, v8, v9);
    objc_msgSend_setObject_forKey_(v10, v13, v12, @"trialIdentifiers", v14);
  }

  contextID = self->_contextID;
  if (contextID)
  {
    objc_msgSend_setObject_forKey_(v10, v6, contextID, @"contextID", v9);
  }

  has = self->_has;
  if (has)
  {
    v21 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v6, contextID, v8, v9, self->_timestamp);
    objc_msgSend_setObject_forKey_(v10, v22, v21, @"timestamp", v23);

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

  eventType = self->_eventType;
  if (eventType >= 4)
  {
    v25 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v6, @"(unknown: %i)", v8, v9, self->_eventType);
  }

  else
  {
    v25 = off_279813C60[eventType];
  }

  objc_msgSend_setObject_forKey_(v10, v6, v25, @"eventType", v9);

  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_9;
  }

LABEL_8:
  v17 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v6, self->_eventSucceeded, v8, v9);
  objc_msgSend_setObject_forKey_(v10, v18, v17, @"eventSucceeded", v19);

LABEL_9:

  return v10;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_trialIdentifiers)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_contextID)
  {
    PBDataWriterWriteStringField();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    timestamp = self->_timestamp;
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

  eventType = self->_eventType;
  PBDataWriterWriteInt32Field();
  v4 = v9;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    eventSucceeded = self->_eventSucceeded;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

LABEL_9:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  trialIdentifiers = self->_trialIdentifiers;
  v11 = v4;
  if (trialIdentifiers)
  {
    objc_msgSend_setTrialIdentifiers_(v4, v5, trialIdentifiers, v6, v7);
    v4 = v11;
  }

  contextID = self->_contextID;
  if (contextID)
  {
    objc_msgSend_setContextID_(v11, v5, contextID, v6, v7);
    v4 = v11;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = *&self->_timestamp;
    *(v4 + 44) |= 1u;
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

  *(v4 + 6) = self->_eventType;
  *(v4 + 44) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_8:
    *(v4 + 40) = self->_eventSucceeded;
    *(v4 + 44) |= 4u;
  }

LABEL_9:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, a3, v7, v8);
  v14 = objc_msgSend_init(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_copyWithZone_(self->_trialIdentifiers, v15, a3, v16, v17);
  v19 = *(v14 + 32);
  *(v14 + 32) = v18;

  v23 = objc_msgSend_copyWithZone_(self->_contextID, v20, a3, v21, v22);
  v24 = *(v14 + 16);
  *(v14 + 16) = v23;

  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v14 + 24) = self->_eventType;
    *(v14 + 44) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      return v14;
    }

    goto LABEL_4;
  }

  *(v14 + 8) = self->_timestamp;
  *(v14 + 44) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(v14 + 40) = self->_eventSucceeded;
    *(v14 + 44) |= 4u;
  }

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5, v7, v8))
  {
    goto LABEL_18;
  }

  trialIdentifiers = self->_trialIdentifiers;
  v13 = v4[4];
  if (trialIdentifiers | v13)
  {
    if (!objc_msgSend_isEqual_(trialIdentifiers, v9, v13, v10, v11))
    {
      goto LABEL_18;
    }
  }

  contextID = self->_contextID;
  v15 = v4[2];
  if (contextID | v15)
  {
    if (!objc_msgSend_isEqual_(contextID, v9, v15, v10, v11))
    {
      goto LABEL_18;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_18;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_eventType != *(v4 + 6))
    {
      goto LABEL_18;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_18;
  }

  v16 = (*(v4 + 44) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(v4 + 44) & 4) == 0)
    {
LABEL_18:
      v16 = 0;
      goto LABEL_19;
    }

    if (self->_eventSucceeded)
    {
      if ((v4[5] & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    else if (*(v4 + 40))
    {
      goto LABEL_18;
    }

    v16 = 1;
  }

LABEL_19:

  return v16;
}

- (unint64_t)hash
{
  v6 = objc_msgSend_hash(self->_trialIdentifiers, a2, v2, v3, v4);
  v11 = objc_msgSend_hash(self->_contextID, v7, v8, v9, v10);
  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    if (timestamp < 0.0)
    {
      timestamp = -timestamp;
    }

    *v12.i64 = floor(timestamp + 0.5);
    v16 = (timestamp - *v12.i64) * 1.84467441e19;
    *v13.i64 = *v12.i64 - trunc(*v12.i64 * 5.42101086e-20) * 1.84467441e19;
    v17.f64[0] = NAN;
    v17.f64[1] = NAN;
    v14 = 2654435761u * *vbslq_s8(vnegq_f64(v17), v13, v12).i64;
    if (v16 >= 0.0)
    {
      if (v16 > 0.0)
      {
        v14 += v16;
      }
    }

    else
    {
      v14 -= fabs(v16);
    }
  }

  else
  {
    v14 = 0;
  }

  if ((*&self->_has & 2) != 0)
  {
    v18 = 2654435761 * self->_eventType;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_11;
    }

LABEL_13:
    v19 = 0;
    return v11 ^ v6 ^ v14 ^ v18 ^ v19;
  }

  v18 = 0;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v19 = 2654435761 * self->_eventSucceeded;
  return v11 ^ v6 ^ v14 ^ v18 ^ v19;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  trialIdentifiers = self->_trialIdentifiers;
  v8 = *(v4 + 4);
  v11 = v4;
  if (trialIdentifiers)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(trialIdentifiers, v4, v8, v5, v6);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    objc_msgSend_setTrialIdentifiers_(self, v4, v8, v5, v6);
  }

  v4 = v11;
LABEL_7:
  v9 = *(v4 + 2);
  if (v9)
  {
    objc_msgSend_setContextID_(self, v4, v9, v5, v6);
    v4 = v11;
  }

  v10 = *(v4 + 44);
  if (v10)
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
    v10 = *(v4 + 44);
    if ((v10 & 2) == 0)
    {
LABEL_11:
      if ((v10 & 4) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }
  }

  else if ((*(v4 + 44) & 2) == 0)
  {
    goto LABEL_11;
  }

  self->_eventType = *(v4 + 6);
  *&self->_has |= 2u;
  if ((*(v4 + 44) & 4) != 0)
  {
LABEL_12:
    self->_eventSucceeded = *(v4 + 40);
    *&self->_has |= 4u;
  }

LABEL_13:

  MEMORY[0x2821F96F8]();
}

@end