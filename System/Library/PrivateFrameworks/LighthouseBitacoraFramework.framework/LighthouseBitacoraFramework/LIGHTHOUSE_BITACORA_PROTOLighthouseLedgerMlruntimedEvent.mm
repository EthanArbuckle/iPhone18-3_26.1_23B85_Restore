@interface LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerMlruntimedEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerMlruntimedEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerMlruntimedEvent;
  v4 = [(LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerMlruntimedEvent *)&v15 description];
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

  activityScheduleStatus = self->_activityScheduleStatus;
  if (activityScheduleStatus)
  {
    v20 = objc_msgSend_dictionaryRepresentation(activityScheduleStatus, v6, contextID, v8, v9);
    objc_msgSend_setObject_forKey_(v10, v21, v20, @"activityScheduleStatus", v22);
  }

  taskFetched = self->_taskFetched;
  if (taskFetched)
  {
    v24 = objc_msgSend_dictionaryRepresentation(taskFetched, v6, contextID, v8, v9);
    objc_msgSend_setObject_forKey_(v10, v25, v24, @"taskFetched", v26);
  }

  taskScheduled = self->_taskScheduled;
  if (taskScheduled)
  {
    v28 = objc_msgSend_dictionaryRepresentation(taskScheduled, v6, contextID, v8, v9);
    objc_msgSend_setObject_forKey_(v10, v29, v28, @"taskScheduled", v30);
  }

  taskCompleted = self->_taskCompleted;
  if (taskCompleted)
  {
    v32 = objc_msgSend_dictionaryRepresentation(taskCompleted, v6, contextID, v8, v9);
    objc_msgSend_setObject_forKey_(v10, v33, v32, @"taskCompleted", v34);
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

  if (self->_activityScheduleStatus)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_taskFetched)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_taskScheduled)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_taskCompleted)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  trialIdentifiers = self->_trialIdentifiers;
  v14 = toCopy;
  if (trialIdentifiers)
  {
    objc_msgSend_setTrialIdentifiers_(toCopy, v5, trialIdentifiers, v6, v7);
    toCopy = v14;
  }

  contextID = self->_contextID;
  if (contextID)
  {
    objc_msgSend_setContextID_(v14, v5, contextID, v6, v7);
    toCopy = v14;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_timestamp;
    *(toCopy + 64) |= 1u;
  }

  activityScheduleStatus = self->_activityScheduleStatus;
  if (activityScheduleStatus)
  {
    objc_msgSend_setActivityScheduleStatus_(v14, v5, activityScheduleStatus, v6, v7);
    toCopy = v14;
  }

  taskFetched = self->_taskFetched;
  if (taskFetched)
  {
    objc_msgSend_setTaskFetched_(v14, v5, taskFetched, v6, v7);
    toCopy = v14;
  }

  taskScheduled = self->_taskScheduled;
  if (taskScheduled)
  {
    objc_msgSend_setTaskScheduled_(v14, v5, taskScheduled, v6, v7);
    toCopy = v14;
  }

  taskCompleted = self->_taskCompleted;
  if (taskCompleted)
  {
    objc_msgSend_setTaskCompleted_(v14, v5, taskCompleted, v6, v7);
    toCopy = v14;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
  v14 = objc_msgSend_init(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_copyWithZone_(self->_trialIdentifiers, v15, zone, v16, v17);
  v19 = *(v14 + 56);
  *(v14 + 56) = v18;

  v23 = objc_msgSend_copyWithZone_(self->_contextID, v20, zone, v21, v22);
  v24 = *(v14 + 24);
  *(v14 + 24) = v23;

  if (*&self->_has)
  {
    *(v14 + 8) = self->_timestamp;
    *(v14 + 64) |= 1u;
  }

  v28 = objc_msgSend_copyWithZone_(self->_activityScheduleStatus, v25, zone, v26, v27);
  v29 = *(v14 + 16);
  *(v14 + 16) = v28;

  v33 = objc_msgSend_copyWithZone_(self->_taskFetched, v30, zone, v31, v32);
  v34 = *(v14 + 40);
  *(v14 + 40) = v33;

  v38 = objc_msgSend_copyWithZone_(self->_taskScheduled, v35, zone, v36, v37);
  v39 = *(v14 + 48);
  *(v14 + 48) = v38;

  v43 = objc_msgSend_copyWithZone_(self->_taskCompleted, v40, zone, v41, v42);
  v44 = *(v14 + 32);
  *(v14 + 32) = v43;

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5, v7, v8))
  {
    goto LABEL_19;
  }

  trialIdentifiers = self->_trialIdentifiers;
  v13 = equalCopy[7];
  if (trialIdentifiers | v13)
  {
    if (!objc_msgSend_isEqual_(trialIdentifiers, v9, v13, v10, v11))
    {
      goto LABEL_19;
    }
  }

  contextID = self->_contextID;
  v15 = equalCopy[3];
  if (contextID | v15)
  {
    if (!objc_msgSend_isEqual_(contextID, v9, v15, v10, v11))
    {
      goto LABEL_19;
    }
  }

  v16 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((equalCopy[8] & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_19;
    }
  }

  else if (equalCopy[8])
  {
LABEL_19:
    isEqual = 0;
    goto LABEL_20;
  }

  activityScheduleStatus = self->_activityScheduleStatus;
  v18 = equalCopy[2];
  if (activityScheduleStatus | v18 && !objc_msgSend_isEqual_(activityScheduleStatus, v9, v18, v10, v11))
  {
    goto LABEL_19;
  }

  taskFetched = self->_taskFetched;
  v20 = equalCopy[5];
  if (taskFetched | v20)
  {
    if (!objc_msgSend_isEqual_(taskFetched, v9, v20, v10, v11))
    {
      goto LABEL_19;
    }
  }

  taskScheduled = self->_taskScheduled;
  v22 = equalCopy[6];
  if (taskScheduled | v22)
  {
    if (!objc_msgSend_isEqual_(taskScheduled, v9, v22, v10, v11))
    {
      goto LABEL_19;
    }
  }

  taskCompleted = self->_taskCompleted;
  v24 = equalCopy[4];
  if (taskCompleted | v24)
  {
    isEqual = objc_msgSend_isEqual_(taskCompleted, v9, v24, v10, v11);
  }

  else
  {
    isEqual = 1;
  }

LABEL_20:

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

  v22 = v11 ^ v6 ^ v18 ^ objc_msgSend_hash(self->_activityScheduleStatus, v12, v13, v14, v15);
  v27 = objc_msgSend_hash(self->_taskFetched, v23, v24, v25, v26);
  v32 = v27 ^ objc_msgSend_hash(self->_taskScheduled, v28, v29, v30, v31);
  return v22 ^ v32 ^ objc_msgSend_hash(self->_taskCompleted, v33, v34, v35, v36);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  trialIdentifiers = self->_trialIdentifiers;
  v8 = *(fromCopy + 7);
  v18 = fromCopy;
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

  fromCopy = v18;
LABEL_7:
  v9 = *(fromCopy + 3);
  if (v9)
  {
    objc_msgSend_setContextID_(self, fromCopy, v9, v5, v6);
    fromCopy = v18;
  }

  if (*(fromCopy + 64))
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  activityScheduleStatus = self->_activityScheduleStatus;
  v11 = *(fromCopy + 2);
  if (activityScheduleStatus)
  {
    if (!v11)
    {
      goto LABEL_17;
    }

    objc_msgSend_mergeFrom_(activityScheduleStatus, fromCopy, v11, v5, v6);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_17;
    }

    objc_msgSend_setActivityScheduleStatus_(self, fromCopy, v11, v5, v6);
  }

  fromCopy = v18;
LABEL_17:
  taskFetched = self->_taskFetched;
  v13 = *(fromCopy + 5);
  if (taskFetched)
  {
    if (!v13)
    {
      goto LABEL_23;
    }

    objc_msgSend_mergeFrom_(taskFetched, fromCopy, v13, v5, v6);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_23;
    }

    objc_msgSend_setTaskFetched_(self, fromCopy, v13, v5, v6);
  }

  fromCopy = v18;
LABEL_23:
  taskScheduled = self->_taskScheduled;
  v15 = *(fromCopy + 6);
  if (taskScheduled)
  {
    if (!v15)
    {
      goto LABEL_29;
    }

    objc_msgSend_mergeFrom_(taskScheduled, fromCopy, v15, v5, v6);
  }

  else
  {
    if (!v15)
    {
      goto LABEL_29;
    }

    objc_msgSend_setTaskScheduled_(self, fromCopy, v15, v5, v6);
  }

  fromCopy = v18;
LABEL_29:
  taskCompleted = self->_taskCompleted;
  v17 = *(fromCopy + 4);
  if (taskCompleted)
  {
    if (v17)
    {
      objc_msgSend_mergeFrom_(taskCompleted, fromCopy, v17, v5, v6);
    }
  }

  else if (v17)
  {
    objc_msgSend_setTaskCompleted_(self, fromCopy, v17, v5, v6);
  }

  MEMORY[0x2821F96F8]();
}

@end