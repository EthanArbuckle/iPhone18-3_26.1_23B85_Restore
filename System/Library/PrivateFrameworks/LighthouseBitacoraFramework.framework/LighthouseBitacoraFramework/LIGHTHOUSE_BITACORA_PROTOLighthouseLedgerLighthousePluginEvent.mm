@interface LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEvent;
  v4 = [(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEvent *)&v15 description];
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

  if (*&self->_has)
  {
    v16 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v6, contextID, v8, v9, self->_timestamp);
    objc_msgSend_setObject_forKey_(v10, v17, v16, @"timestamp", v18);
  }

  performTaskStatus = self->_performTaskStatus;
  if (performTaskStatus)
  {
    v20 = objc_msgSend_dictionaryRepresentation(performTaskStatus, v6, contextID, v8, v9);
    objc_msgSend_setObject_forKey_(v10, v21, v20, @"performTaskStatus", v22);
  }

  performTrialTaskStatus = self->_performTrialTaskStatus;
  if (performTrialTaskStatus)
  {
    v24 = objc_msgSend_dictionaryRepresentation(performTrialTaskStatus, v6, contextID, v8, v9);
    objc_msgSend_setObject_forKey_(v10, v25, v24, @"performTrialTaskStatus", v26);
  }

  stop = self->_stop;
  if (stop)
  {
    v28 = objc_msgSend_dictionaryRepresentation(stop, v6, contextID, v8, v9);
    objc_msgSend_setObject_forKey_(v10, v29, v28, @"stop", v30);
  }

  return v10;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_trialIdentifiers)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_contextID)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    toCopy = v6;
  }

  if (self->_performTaskStatus)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_performTrialTaskStatus)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_stop)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  trialIdentifiers = self->_trialIdentifiers;
  v13 = toCopy;
  if (trialIdentifiers)
  {
    objc_msgSend_setTrialIdentifiers_(toCopy, v5, trialIdentifiers, v6, v7);
    toCopy = v13;
  }

  contextID = self->_contextID;
  if (contextID)
  {
    objc_msgSend_setContextID_(v13, v5, contextID, v6, v7);
    toCopy = v13;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_timestamp;
    *(toCopy + 56) |= 1u;
  }

  performTaskStatus = self->_performTaskStatus;
  if (performTaskStatus)
  {
    objc_msgSend_setPerformTaskStatus_(v13, v5, performTaskStatus, v6, v7);
    toCopy = v13;
  }

  performTrialTaskStatus = self->_performTrialTaskStatus;
  if (performTrialTaskStatus)
  {
    objc_msgSend_setPerformTrialTaskStatus_(v13, v5, performTrialTaskStatus, v6, v7);
    toCopy = v13;
  }

  stop = self->_stop;
  if (stop)
  {
    objc_msgSend_setStop_(v13, v5, stop, v6, v7);
    toCopy = v13;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
  v14 = objc_msgSend_init(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_copyWithZone_(self->_trialIdentifiers, v15, zone, v16, v17);
  v19 = *(v14 + 48);
  *(v14 + 48) = v18;

  v23 = objc_msgSend_copyWithZone_(self->_contextID, v20, zone, v21, v22);
  v24 = *(v14 + 16);
  *(v14 + 16) = v23;

  if (*&self->_has)
  {
    *(v14 + 8) = self->_timestamp;
    *(v14 + 56) |= 1u;
  }

  v28 = objc_msgSend_copyWithZone_(self->_performTaskStatus, v25, zone, v26, v27);
  v29 = *(v14 + 24);
  *(v14 + 24) = v28;

  v33 = objc_msgSend_copyWithZone_(self->_performTrialTaskStatus, v30, zone, v31, v32);
  v34 = *(v14 + 32);
  *(v14 + 32) = v33;

  v38 = objc_msgSend_copyWithZone_(self->_stop, v35, zone, v36, v37);
  v39 = *(v14 + 40);
  *(v14 + 40) = v38;

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5, v7, v8))
  {
    goto LABEL_17;
  }

  trialIdentifiers = self->_trialIdentifiers;
  v13 = equalCopy[6];
  if (trialIdentifiers | v13)
  {
    if (!objc_msgSend_isEqual_(trialIdentifiers, v9, v13, v10, v11))
    {
      goto LABEL_17;
    }
  }

  contextID = self->_contextID;
  v15 = equalCopy[2];
  if (contextID | v15)
  {
    if (!objc_msgSend_isEqual_(contextID, v9, v15, v10, v11))
    {
      goto LABEL_17;
    }
  }

  v16 = *(equalCopy + 56);
  if (*&self->_has)
  {
    if ((equalCopy[7] & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_17;
    }
  }

  else if (equalCopy[7])
  {
LABEL_17:
    isEqual = 0;
    goto LABEL_18;
  }

  performTaskStatus = self->_performTaskStatus;
  v18 = equalCopy[3];
  if (performTaskStatus | v18 && !objc_msgSend_isEqual_(performTaskStatus, v9, v18, v10, v11))
  {
    goto LABEL_17;
  }

  performTrialTaskStatus = self->_performTrialTaskStatus;
  v20 = equalCopy[4];
  if (performTrialTaskStatus | v20)
  {
    if (!objc_msgSend_isEqual_(performTrialTaskStatus, v9, v20, v10, v11))
    {
      goto LABEL_17;
    }
  }

  stop = self->_stop;
  v22 = equalCopy[5];
  if (stop | v22)
  {
    isEqual = objc_msgSend_isEqual_(stop, v9, v22, v10, v11);
  }

  else
  {
    isEqual = 1;
  }

LABEL_18:

  return isEqual;
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

    *v16.i64 = floor(timestamp + 0.5);
    v20 = (timestamp - *v16.i64) * 1.84467441e19;
    *v17.i64 = *v16.i64 - trunc(*v16.i64 * 5.42101086e-20) * 1.84467441e19;
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v18 = 2654435761u * *vbslq_s8(vnegq_f64(v21), v17, v16).i64;
    if (v20 >= 0.0)
    {
      if (v20 > 0.0)
      {
        v18 += v20;
      }
    }

    else
    {
      v18 -= fabs(v20);
    }
  }

  else
  {
    v18 = 0;
  }

  v22 = v11 ^ v6 ^ v18 ^ objc_msgSend_hash(self->_performTaskStatus, v12, v13, v14, v15);
  v27 = objc_msgSend_hash(self->_performTrialTaskStatus, v23, v24, v25, v26);
  return v22 ^ v27 ^ objc_msgSend_hash(self->_stop, v28, v29, v30, v31);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  trialIdentifiers = self->_trialIdentifiers;
  v8 = *(fromCopy + 6);
  v16 = fromCopy;
  if (trialIdentifiers)
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(trialIdentifiers, fromCopy, v8, v5, v6);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_7;
    }

    objc_msgSend_setTrialIdentifiers_(self, fromCopy, v8, v5, v6);
  }

  fromCopy = v16;
LABEL_7:
  v9 = *(fromCopy + 2);
  if (v9)
  {
    objc_msgSend_setContextID_(self, fromCopy, v9, v5, v6);
    fromCopy = v16;
  }

  if (*(fromCopy + 56))
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  performTaskStatus = self->_performTaskStatus;
  v11 = *(fromCopy + 3);
  if (performTaskStatus)
  {
    if (!v11)
    {
      goto LABEL_17;
    }

    objc_msgSend_mergeFrom_(performTaskStatus, fromCopy, v11, v5, v6);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_17;
    }

    objc_msgSend_setPerformTaskStatus_(self, fromCopy, v11, v5, v6);
  }

  fromCopy = v16;
LABEL_17:
  performTrialTaskStatus = self->_performTrialTaskStatus;
  v13 = *(fromCopy + 4);
  if (performTrialTaskStatus)
  {
    if (!v13)
    {
      goto LABEL_23;
    }

    objc_msgSend_mergeFrom_(performTrialTaskStatus, fromCopy, v13, v5, v6);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_23;
    }

    objc_msgSend_setPerformTrialTaskStatus_(self, fromCopy, v13, v5, v6);
  }

  fromCopy = v16;
LABEL_23:
  stop = self->_stop;
  v15 = *(fromCopy + 5);
  if (stop)
  {
    if (v15)
    {
      objc_msgSend_mergeFrom_(stop, fromCopy, v15, v5, v6);
    }
  }

  else if (v15)
  {
    objc_msgSend_setStop_(self, fromCopy, v15, v5, v6);
  }

  MEMORY[0x2821F96F8]();
}

@end