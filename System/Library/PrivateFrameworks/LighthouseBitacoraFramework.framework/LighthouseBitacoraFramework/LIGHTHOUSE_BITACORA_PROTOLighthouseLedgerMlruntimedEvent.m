@interface LIGHTHOUSE_BITACORA_PROTOLighthouseLedgerMlruntimedEvent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

  if (self->_activityScheduleStatus)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_taskFetched)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_taskScheduled)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_taskCompleted)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  trialIdentifiers = self->_trialIdentifiers;
  v14 = v4;
  if (trialIdentifiers)
  {
    objc_msgSend_setTrialIdentifiers_(v4, v5, trialIdentifiers, v6, v7);
    v4 = v14;
  }

  contextID = self->_contextID;
  if (contextID)
  {
    objc_msgSend_setContextID_(v14, v5, contextID, v6, v7);
    v4 = v14;
  }

  if (*&self->_has)
  {
    *(v4 + 1) = *&self->_timestamp;
    *(v4 + 64) |= 1u;
  }

  activityScheduleStatus = self->_activityScheduleStatus;
  if (activityScheduleStatus)
  {
    objc_msgSend_setActivityScheduleStatus_(v14, v5, activityScheduleStatus, v6, v7);
    v4 = v14;
  }

  taskFetched = self->_taskFetched;
  if (taskFetched)
  {
    objc_msgSend_setTaskFetched_(v14, v5, taskFetched, v6, v7);
    v4 = v14;
  }

  taskScheduled = self->_taskScheduled;
  if (taskScheduled)
  {
    objc_msgSend_setTaskScheduled_(v14, v5, taskScheduled, v6, v7);
    v4 = v14;
  }

  taskCompleted = self->_taskCompleted;
  if (taskCompleted)
  {
    objc_msgSend_setTaskCompleted_(v14, v5, taskCompleted, v6, v7);
    v4 = v14;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, a3, v7, v8);
  v14 = objc_msgSend_init(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_copyWithZone_(self->_trialIdentifiers, v15, a3, v16, v17);
  v19 = *(v14 + 56);
  *(v14 + 56) = v18;

  v23 = objc_msgSend_copyWithZone_(self->_contextID, v20, a3, v21, v22);
  v24 = *(v14 + 24);
  *(v14 + 24) = v23;

  if (*&self->_has)
  {
    *(v14 + 8) = self->_timestamp;
    *(v14 + 64) |= 1u;
  }

  v28 = objc_msgSend_copyWithZone_(self->_activityScheduleStatus, v25, a3, v26, v27);
  v29 = *(v14 + 16);
  *(v14 + 16) = v28;

  v33 = objc_msgSend_copyWithZone_(self->_taskFetched, v30, a3, v31, v32);
  v34 = *(v14 + 40);
  *(v14 + 40) = v33;

  v38 = objc_msgSend_copyWithZone_(self->_taskScheduled, v35, a3, v36, v37);
  v39 = *(v14 + 48);
  *(v14 + 48) = v38;

  v43 = objc_msgSend_copyWithZone_(self->_taskCompleted, v40, a3, v41, v42);
  v44 = *(v14 + 32);
  *(v14 + 32) = v43;

  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5, v7, v8))
  {
    goto LABEL_19;
  }

  trialIdentifiers = self->_trialIdentifiers;
  v13 = v4[7];
  if (trialIdentifiers | v13)
  {
    if (!objc_msgSend_isEqual_(trialIdentifiers, v9, v13, v10, v11))
    {
      goto LABEL_19;
    }
  }

  contextID = self->_contextID;
  v15 = v4[3];
  if (contextID | v15)
  {
    if (!objc_msgSend_isEqual_(contextID, v9, v15, v10, v11))
    {
      goto LABEL_19;
    }
  }

  v16 = *(v4 + 64);
  if (*&self->_has)
  {
    if ((v4[8] & 1) == 0 || self->_timestamp != *(v4 + 1))
    {
      goto LABEL_19;
    }
  }

  else if (v4[8])
  {
LABEL_19:
    isEqual = 0;
    goto LABEL_20;
  }

  activityScheduleStatus = self->_activityScheduleStatus;
  v18 = v4[2];
  if (activityScheduleStatus | v18 && !objc_msgSend_isEqual_(activityScheduleStatus, v9, v18, v10, v11))
  {
    goto LABEL_19;
  }

  taskFetched = self->_taskFetched;
  v20 = v4[5];
  if (taskFetched | v20)
  {
    if (!objc_msgSend_isEqual_(taskFetched, v9, v20, v10, v11))
    {
      goto LABEL_19;
    }
  }

  taskScheduled = self->_taskScheduled;
  v22 = v4[6];
  if (taskScheduled | v22)
  {
    if (!objc_msgSend_isEqual_(taskScheduled, v9, v22, v10, v11))
    {
      goto LABEL_19;
    }
  }

  taskCompleted = self->_taskCompleted;
  v24 = v4[4];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  trialIdentifiers = self->_trialIdentifiers;
  v8 = *(v4 + 7);
  v18 = v4;
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

  v4 = v18;
LABEL_7:
  v9 = *(v4 + 3);
  if (v9)
  {
    objc_msgSend_setContextID_(self, v4, v9, v5, v6);
    v4 = v18;
  }

  if (*(v4 + 64))
  {
    self->_timestamp = *(v4 + 1);
    *&self->_has |= 1u;
  }

  activityScheduleStatus = self->_activityScheduleStatus;
  v11 = *(v4 + 2);
  if (activityScheduleStatus)
  {
    if (!v11)
    {
      goto LABEL_17;
    }

    objc_msgSend_mergeFrom_(activityScheduleStatus, v4, v11, v5, v6);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_17;
    }

    objc_msgSend_setActivityScheduleStatus_(self, v4, v11, v5, v6);
  }

  v4 = v18;
LABEL_17:
  taskFetched = self->_taskFetched;
  v13 = *(v4 + 5);
  if (taskFetched)
  {
    if (!v13)
    {
      goto LABEL_23;
    }

    objc_msgSend_mergeFrom_(taskFetched, v4, v13, v5, v6);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_23;
    }

    objc_msgSend_setTaskFetched_(self, v4, v13, v5, v6);
  }

  v4 = v18;
LABEL_23:
  taskScheduled = self->_taskScheduled;
  v15 = *(v4 + 6);
  if (taskScheduled)
  {
    if (!v15)
    {
      goto LABEL_29;
    }

    objc_msgSend_mergeFrom_(taskScheduled, v4, v15, v5, v6);
  }

  else
  {
    if (!v15)
    {
      goto LABEL_29;
    }

    objc_msgSend_setTaskScheduled_(self, v4, v15, v5, v6);
  }

  v4 = v18;
LABEL_29:
  taskCompleted = self->_taskCompleted;
  v17 = *(v4 + 4);
  if (taskCompleted)
  {
    if (v17)
    {
      objc_msgSend_mergeFrom_(taskCompleted, v4, v17, v5, v6);
    }
  }

  else if (v17)
  {
    objc_msgSend_setTaskCompleted_(self, v4, v17, v5, v6);
  }

  MEMORY[0x2821F96F8]();
}

@end