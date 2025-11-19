@interface LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerLighthousePluginEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_trialIdentifiers)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_contextID)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    timestamp = self->_timestamp;
    PBDataWriterWriteDoubleField();
    v4 = v6;
  }

  if (self->_performTaskStatus)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_performTrialTaskStatus)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_stop)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  trialIdentifiers = self->_trialIdentifiers;
  v13 = v4;
  if (trialIdentifiers)
  {
    objc_msgSend_setTrialIdentifiers_(v4, v5, trialIdentifiers, v6, v7);
    v4 = v13;
  }

  contextID = self->_contextID;
  if (contextID)
  {
    objc_msgSend_setContextID_(v13, v5, contextID, v6, v7);
    v4 = v13;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_timestamp;
    *(v4 + 56) |= 1u;
  }

  performTaskStatus = self->_performTaskStatus;
  if (performTaskStatus)
  {
    objc_msgSend_setPerformTaskStatus_(v13, v5, performTaskStatus, v6, v7);
    v4 = v13;
  }

  performTrialTaskStatus = self->_performTrialTaskStatus;
  if (performTrialTaskStatus)
  {
    objc_msgSend_setPerformTrialTaskStatus_(v13, v5, performTrialTaskStatus, v6, v7);
    v4 = v13;
  }

  stop = self->_stop;
  if (stop)
  {
    objc_msgSend_setStop_(v13, v5, stop, v6, v7);
    v4 = v13;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, a3, v7, v8);
  v14 = objc_msgSend_init(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_copyWithZone_(self->_trialIdentifiers, v15, a3, v16, v17);
  v19 = *(v14 + 48);
  *(v14 + 48) = v18;

  v23 = objc_msgSend_copyWithZone_(self->_contextID, v20, a3, v21, v22);
  v24 = *(v14 + 16);
  *(v14 + 16) = v23;

  if (*&self->_has)
  {
    *(v14 + 8) = self->_timestamp;
    *(v14 + 56) |= 1u;
  }

  v28 = objc_msgSend_copyWithZone_(self->_performTaskStatus, v25, a3, v26, v27);
  v29 = *(v14 + 24);
  *(v14 + 24) = v28;

  v33 = objc_msgSend_copyWithZone_(self->_performTrialTaskStatus, v30, a3, v31, v32);
  v34 = *(v14 + 32);
  *(v14 + 32) = v33;

  v38 = objc_msgSend_copyWithZone_(self->_stop, v35, a3, v36, v37);
  v39 = *(v14 + 40);
  *(v14 + 40) = v38;

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5, v7, v8))
  {
    goto LABEL_17;
  }

  trialIdentifiers = self->_trialIdentifiers;
  v13 = v4[6];
  if (trialIdentifiers | v13)
  {
    if (!objc_msgSend_isEqual_(trialIdentifiers, v9, v13, v10, v11))
    {
      goto LABEL_17;
    }
  }

  contextID = self->_contextID;
  v15 = v4[2];
  if (contextID | v15)
  {
    if (!objc_msgSend_isEqual_(contextID, v9, v15, v10, v11))
    {
      goto LABEL_17;
    }
  }

  v16 = *(v4 + 56);
  if (*&self->_has)
  {
    if ((v4[7] & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_17;
    }
  }

  else if (v4[7])
  {
LABEL_17:
    isEqual = 0;
    goto LABEL_18;
  }

  performTaskStatus = self->_performTaskStatus;
  v18 = v4[3];
  if (performTaskStatus | v18 && !objc_msgSend_isEqual_(performTaskStatus, v9, v18, v10, v11))
  {
    goto LABEL_17;
  }

  performTrialTaskStatus = self->_performTrialTaskStatus;
  v20 = v4[4];
  if (performTrialTaskStatus | v20)
  {
    if (!objc_msgSend_isEqual_(performTrialTaskStatus, v9, v20, v10, v11))
    {
      goto LABEL_17;
    }
  }

  stop = self->_stop;
  v22 = v4[5];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  trialIdentifiers = self->_trialIdentifiers;
  v8 = *(v4 + 6);
  v16 = v4;
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

  v4 = v16;
LABEL_7:
  v9 = *(v4 + 2);
  if (v9)
  {
    objc_msgSend_setContextID_(self, v4, v9, v5, v6);
    v4 = v16;
  }

  if (*(v4 + 56))
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  performTaskStatus = self->_performTaskStatus;
  v11 = *(v4 + 3);
  if (performTaskStatus)
  {
    if (!v11)
    {
      goto LABEL_17;
    }

    objc_msgSend_mergeFrom_(performTaskStatus, v4, v11, v5, v6);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_17;
    }

    objc_msgSend_setPerformTaskStatus_(self, v4, v11, v5, v6);
  }

  v4 = v16;
LABEL_17:
  performTrialTaskStatus = self->_performTrialTaskStatus;
  v13 = *(v4 + 4);
  if (performTrialTaskStatus)
  {
    if (!v13)
    {
      goto LABEL_23;
    }

    objc_msgSend_mergeFrom_(performTrialTaskStatus, v4, v13, v5, v6);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_23;
    }

    objc_msgSend_setPerformTrialTaskStatus_(self, v4, v13, v5, v6);
  }

  v4 = v16;
LABEL_23:
  stop = self->_stop;
  v15 = *(v4 + 5);
  if (stop)
  {
    if (v15)
    {
      objc_msgSend_mergeFrom_(stop, v4, v15, v5, v6);
    }
  }

  else if (v15)
  {
    objc_msgSend_setStop_(self, v4, v15, v5, v6);
  }

  MEMORY[0x2821F96F8]();
}

@end