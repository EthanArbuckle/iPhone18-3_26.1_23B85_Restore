@interface LIGHTHOUSE_BITACORA_PROTOBitacoraState
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)trialIdentifierTypeAsString:(int)string;
- (int)StringAsTrialIdentifierType:(id)type;
- (int)trialIdentifierType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCountCustomTargettingMet:(BOOL)met;
- (void)setHasCountGeneralTargetting:(BOOL)targetting;
- (void)setHasCountGeneralTargettingMet:(BOOL)met;
- (void)setHasCountPerformTaskFailed:(BOOL)failed;
- (void)setHasCountPerformTaskSucceeded:(BOOL)succeeded;
- (void)setHasCountStopFailed:(BOOL)failed;
- (void)setHasCountStopSucceeded:(BOOL)succeeded;
- (void)setHasCountTaskCompletedFailed:(BOOL)failed;
- (void)setHasCountTaskCompletedSucceeded:(BOOL)succeeded;
- (void)setHasCountTaskFetchedFailed:(BOOL)failed;
- (void)setHasCountTaskFetchedSucceeded:(BOOL)succeeded;
- (void)setHasCountTaskScheduledFailed:(BOOL)failed;
- (void)setHasCountTaskScheduledSucceeded:(BOOL)succeeded;
- (void)setHasIsActivated:(BOOL)activated;
- (void)setHasIsAllocated:(BOOL)allocated;
- (void)setHasTrialIdentifierType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation LIGHTHOUSE_BITACORA_PROTOBitacoraState

- (void)setHasIsAllocated:(BOOL)allocated
{
  if (allocated)
  {
    v3 = 0x10000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFEFFFF | v3);
}

- (void)setHasIsActivated:(BOOL)activated
{
  if (activated)
  {
    v3 = 0x8000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFF7FFF | v3);
}

- (void)setHasCountGeneralTargetting:(BOOL)targetting
{
  if (targetting)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFB | v3);
}

- (void)setHasCountGeneralTargettingMet:(BOOL)met
{
  if (met)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFF7 | v3);
}

- (void)setHasCountCustomTargettingMet:(BOOL)met
{
  if (met)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFFD | v3);
}

- (void)setHasCountTaskFetchedSucceeded:(BOOL)succeeded
{
  if (succeeded)
  {
    v3 = 2048;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFF7FF | v3);
}

- (void)setHasCountTaskFetchedFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 1024;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFBFF | v3);
}

- (void)setHasCountTaskScheduledSucceeded:(BOOL)succeeded
{
  if (succeeded)
  {
    v3 = 0x2000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFDFFF | v3);
}

- (void)setHasCountTaskScheduledFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 4096;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFEFFF | v3);
}

- (void)setHasCountTaskCompletedSucceeded:(BOOL)succeeded
{
  if (succeeded)
  {
    v3 = 512;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFDFF | v3);
}

- (void)setHasCountTaskCompletedFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFEFF | v3);
}

- (void)setHasCountPerformTaskSucceeded:(BOOL)succeeded
{
  if (succeeded)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFDF | v3);
}

- (void)setHasCountPerformTaskFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFEF | v3);
}

- (void)setHasCountStopSucceeded:(BOOL)succeeded
{
  if (succeeded)
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFF7F | v3);
}

- (void)setHasCountStopFailed:(BOOL)failed
{
  if (failed)
  {
    v3 = 64;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFFFBF | v3);
}

- (int)trialIdentifierType
{
  if ((*(&self->_has + 1) & 0x40) != 0)
  {
    return self->_trialIdentifierType;
  }

  else
  {
    return 0;
  }
}

- (void)setHasTrialIdentifierType:(BOOL)type
{
  if (type)
  {
    v3 = 0x4000;
  }

  else
  {
    v3 = 0;
  }

  self->_has = (*&self->_has & 0xFFFFBFFF | v3);
}

- (id)trialIdentifierTypeAsString:(int)string
{
  if (string >= 3)
  {
    v6 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", v3, v4, string);
  }

  else
  {
    v6 = off_279813C80[string];
  }

  return v6;
}

- (int)StringAsTrialIdentifierType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, @"Unknown", v5, v6))
  {
    v10 = 0;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v7, @"experiment", v8, v9))
  {
    v10 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v11, @"BMLT", v12, v13))
  {
    v10 = 2;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = LIGHTHOUSE_BITACORA_PROTOBitacoraState;
  v4 = [(LIGHTHOUSE_BITACORA_PROTOBitacoraState *)&v15 description];
  v9 = objc_msgSend_dictionaryRepresentation(self, v5, v6, v7, v8);
  v13 = objc_msgSend_stringWithFormat_(v3, v10, @"%@ %@", v11, v12, v4, v9);

  return v13;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  v10 = v6;
  telemetryID = self->_telemetryID;
  if (telemetryID)
  {
    objc_msgSend_setObject_forKey_(v6, v7, telemetryID, @"telemetryID", v9);
  }

  trialIdentifiers = self->_trialIdentifiers;
  if (trialIdentifiers)
  {
    v13 = objc_msgSend_dictionaryRepresentation(trialIdentifiers, v7, telemetryID, v8, v9);
    objc_msgSend_setObject_forKey_(v10, v14, v13, @"trialIdentifiers", v15);
  }

  contextID = self->_contextID;
  if (contextID)
  {
    objc_msgSend_setObject_forKey_(v10, v7, contextID, @"contextID", v9);
  }

  v17 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v7, self->_timestamp, v8, v9);
  objc_msgSend_setObject_forKey_(v10, v18, v17, @"timestamp", v19);

  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    v24 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v20, self->_isAllocated, v21, v22);
    objc_msgSend_setObject_forKey_(v10, v25, v24, @"isAllocated", v26);

    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_9:
      if ((*&has & 4) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_27;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_9;
  }

  v27 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v20, self->_isActivated, v21, v22);
  objc_msgSend_setObject_forKey_(v10, v28, v27, @"isActivated", v29);

  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_10:
    if ((*&has & 8) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_28;
  }

LABEL_27:
  v30 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, self->_countGeneralTargetting, v21, v22);
  objc_msgSend_setObject_forKey_(v10, v31, v30, @"countGeneralTargetting", v32);

  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_11:
    if ((*&has & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_29;
  }

LABEL_28:
  v33 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, self->_countGeneralTargettingMet, v21, v22);
  objc_msgSend_setObject_forKey_(v10, v34, v33, @"countGeneralTargettingMet", v35);

  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_12:
    if ((*&has & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_30;
  }

LABEL_29:
  v36 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, self->_countCustomTargetting, v21, v22);
  objc_msgSend_setObject_forKey_(v10, v37, v36, @"countCustomTargetting", v38);

  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_13:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_31;
  }

LABEL_30:
  v39 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, self->_countCustomTargettingMet, v21, v22);
  objc_msgSend_setObject_forKey_(v10, v40, v39, @"countCustomTargettingMet", v41);

  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_14:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_32;
  }

LABEL_31:
  v42 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, self->_countTaskFetchedSucceeded, v21, v22);
  objc_msgSend_setObject_forKey_(v10, v43, v42, @"countTaskFetchedSucceeded", v44);

  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_15:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_33;
  }

LABEL_32:
  v45 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, self->_countTaskFetchedFailed, v21, v22);
  objc_msgSend_setObject_forKey_(v10, v46, v45, @"countTaskFetchedFailed", v47);

  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_16:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_34;
  }

LABEL_33:
  v48 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, self->_countTaskScheduledSucceeded, v21, v22);
  objc_msgSend_setObject_forKey_(v10, v49, v48, @"countTaskScheduledSucceeded", v50);

  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_17:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_34:
  v51 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, self->_countTaskScheduledFailed, v21, v22);
  objc_msgSend_setObject_forKey_(v10, v52, v51, @"countTaskScheduledFailed", v53);

  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_18:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_36;
  }

LABEL_35:
  v54 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, self->_countTaskCompletedSucceeded, v21, v22);
  objc_msgSend_setObject_forKey_(v10, v55, v54, @"countTaskCompletedSucceeded", v56);

  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_19:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_37;
  }

LABEL_36:
  v57 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, self->_countTaskCompletedFailed, v21, v22);
  objc_msgSend_setObject_forKey_(v10, v58, v57, @"countTaskCompletedFailed", v59);

  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_20:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_38;
  }

LABEL_37:
  v60 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, self->_countPerformTaskSucceeded, v21, v22);
  objc_msgSend_setObject_forKey_(v10, v61, v60, @"countPerformTaskSucceeded", v62);

  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_21:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_39;
  }

LABEL_38:
  v63 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, self->_countPerformTaskFailed, v21, v22);
  objc_msgSend_setObject_forKey_(v10, v64, v63, @"countPerformTaskFailed", v65);

  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_22:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_40;
  }

LABEL_39:
  v66 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, self->_countStopSucceeded, v21, v22);
  objc_msgSend_setObject_forKey_(v10, v67, v66, @"countStopSucceeded", v68);

  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_23:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_45;
    }

    goto LABEL_41;
  }

LABEL_40:
  v69 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v20, self->_countStopFailed, v21, v22);
  objc_msgSend_setObject_forKey_(v10, v70, v69, @"countStopFailed", v71);

  if ((*&self->_has & 0x4000) == 0)
  {
    goto LABEL_45;
  }

LABEL_41:
  trialIdentifierType = self->_trialIdentifierType;
  if (trialIdentifierType >= 3)
  {
    v73 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v20, @"(unknown: %i)", v21, v22, self->_trialIdentifierType);
  }

  else
  {
    v73 = off_279813C80[trialIdentifierType];
  }

  objc_msgSend_setObject_forKey_(v10, v20, v73, @"trialIdentifierType", v22);

LABEL_45:
  trialExperimentID = self->_trialExperimentID;
  if (trialExperimentID)
  {
    objc_msgSend_setObject_forKey_(v10, v20, trialExperimentID, @"trialExperimentID", v22);
  }

  trialDeploymentID = self->_trialDeploymentID;
  if (trialDeploymentID)
  {
    objc_msgSend_setObject_forKey_(v10, v20, trialDeploymentID, @"trialDeploymentID", v22);
  }

  trialTreatmentID = self->_trialTreatmentID;
  if (trialTreatmentID)
  {
    objc_msgSend_setObject_forKey_(v10, v20, trialTreatmentID, @"trialTreatmentID", v22);
  }

  trialTaskID = self->_trialTaskID;
  if (trialTaskID)
  {
    objc_msgSend_setObject_forKey_(v10, v20, trialTaskID, @"trialTaskID", v22);
  }

  return v10;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (!self->_telemetryID)
  {
    sub_255F0BF24();
  }

  v25 = toCopy;
  PBDataWriterWriteStringField();
  if (!self->_trialIdentifiers)
  {
    sub_255F0BEF8();
  }

  PBDataWriterWriteSubmessage();
  if (!self->_contextID)
  {
    sub_255F0BECC();
  }

  PBDataWriterWriteStringField();
  timestamp = self->_timestamp;
  PBDataWriterWriteUint64Field();
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    isAllocated = self->_isAllocated;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((*&has & 0x8000) != 0)
  {
    isActivated = self->_isActivated;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  v9 = v25;
  if ((*&has & 4) != 0)
  {
    countGeneralTargetting = self->_countGeneralTargetting;
    PBDataWriterWriteUint32Field();
    v9 = v25;
    has = self->_has;
    if ((*&has & 8) == 0)
    {
LABEL_10:
      if ((*&has & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_37;
    }
  }

  else if ((*&has & 8) == 0)
  {
    goto LABEL_10;
  }

  countGeneralTargettingMet = self->_countGeneralTargettingMet;
  PBDataWriterWriteUint32Field();
  v9 = v25;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_11:
    if ((*&has & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_38;
  }

LABEL_37:
  countCustomTargetting = self->_countCustomTargetting;
  PBDataWriterWriteUint32Field();
  v9 = v25;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_12:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_39;
  }

LABEL_38:
  countCustomTargettingMet = self->_countCustomTargettingMet;
  PBDataWriterWriteUint32Field();
  v9 = v25;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_13:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

LABEL_39:
  countTaskFetchedSucceeded = self->_countTaskFetchedSucceeded;
  PBDataWriterWriteUint32Field();
  v9 = v25;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_14:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_41;
  }

LABEL_40:
  countTaskFetchedFailed = self->_countTaskFetchedFailed;
  PBDataWriterWriteUint32Field();
  v9 = v25;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_15:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_42;
  }

LABEL_41:
  countTaskScheduledSucceeded = self->_countTaskScheduledSucceeded;
  PBDataWriterWriteUint32Field();
  v9 = v25;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_16:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_43;
  }

LABEL_42:
  countTaskScheduledFailed = self->_countTaskScheduledFailed;
  PBDataWriterWriteUint32Field();
  v9 = v25;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_17:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_44;
  }

LABEL_43:
  countTaskCompletedSucceeded = self->_countTaskCompletedSucceeded;
  PBDataWriterWriteUint32Field();
  v9 = v25;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_18:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_45;
  }

LABEL_44:
  countTaskCompletedFailed = self->_countTaskCompletedFailed;
  PBDataWriterWriteUint32Field();
  v9 = v25;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_19:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_46;
  }

LABEL_45:
  countPerformTaskSucceeded = self->_countPerformTaskSucceeded;
  PBDataWriterWriteUint32Field();
  v9 = v25;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_20:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_47;
  }

LABEL_46:
  countPerformTaskFailed = self->_countPerformTaskFailed;
  PBDataWriterWriteUint32Field();
  v9 = v25;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_21:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_48;
  }

LABEL_47:
  countStopSucceeded = self->_countStopSucceeded;
  PBDataWriterWriteUint32Field();
  v9 = v25;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_22:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_48:
  countStopFailed = self->_countStopFailed;
  PBDataWriterWriteUint32Field();
  v9 = v25;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_23:
    trialIdentifierType = self->_trialIdentifierType;
    PBDataWriterWriteInt32Field();
    v9 = v25;
  }

LABEL_24:
  if (self->_trialExperimentID)
  {
    PBDataWriterWriteStringField();
    v9 = v25;
  }

  if (self->_trialDeploymentID)
  {
    PBDataWriterWriteStringField();
    v9 = v25;
  }

  if (self->_trialTreatmentID)
  {
    PBDataWriterWriteStringField();
    v9 = v25;
  }

  if (self->_trialTaskID)
  {
    PBDataWriterWriteStringField();
    v9 = v25;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  objc_msgSend_setTelemetryID_(toCopy, v4, self->_telemetryID, v5, v6);
  objc_msgSend_setTrialIdentifiers_(toCopy, v7, self->_trialIdentifiers, v8, v9);
  objc_msgSend_setContextID_(toCopy, v10, self->_contextID, v11, v12);
  v16 = toCopy;
  *(toCopy + 1) = self->_timestamp;
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    *(toCopy + 137) = self->_isAllocated;
    *(toCopy + 35) |= 0x10000u;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_32;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  *(toCopy + 136) = self->_isActivated;
  *(toCopy + 35) |= 0x8000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(toCopy + 8) = self->_countGeneralTargetting;
  *(toCopy + 35) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(toCopy + 9) = self->_countGeneralTargettingMet;
  *(toCopy + 35) |= 8u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_6:
    if ((*&has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_35;
  }

LABEL_34:
  *(toCopy + 6) = self->_countCustomTargetting;
  *(toCopy + 35) |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_7:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_36;
  }

LABEL_35:
  *(toCopy + 7) = self->_countCustomTargettingMet;
  *(toCopy + 35) |= 2u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_8:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_37;
  }

LABEL_36:
  *(toCopy + 17) = self->_countTaskFetchedSucceeded;
  *(toCopy + 35) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_38;
  }

LABEL_37:
  *(toCopy + 16) = self->_countTaskFetchedFailed;
  *(toCopy + 35) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_39;
  }

LABEL_38:
  *(toCopy + 19) = self->_countTaskScheduledSucceeded;
  *(toCopy + 35) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_40;
  }

LABEL_39:
  *(toCopy + 18) = self->_countTaskScheduledFailed;
  *(toCopy + 35) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_12:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_41;
  }

LABEL_40:
  *(toCopy + 15) = self->_countTaskCompletedSucceeded;
  *(toCopy + 35) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_13:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_42;
  }

LABEL_41:
  *(toCopy + 14) = self->_countTaskCompletedFailed;
  *(toCopy + 35) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_14:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  *(toCopy + 11) = self->_countPerformTaskSucceeded;
  *(toCopy + 35) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_15:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  *(toCopy + 10) = self->_countPerformTaskFailed;
  *(toCopy + 35) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  *(toCopy + 13) = self->_countStopSucceeded;
  *(toCopy + 35) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) == 0)
  {
LABEL_17:
    if ((*&has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_45:
  *(toCopy + 12) = self->_countStopFailed;
  *(toCopy + 35) |= 0x40u;
  if ((*&self->_has & 0x4000) != 0)
  {
LABEL_18:
    *(toCopy + 26) = self->_trialIdentifierType;
    *(toCopy + 35) |= 0x4000u;
  }

LABEL_19:
  trialExperimentID = self->_trialExperimentID;
  if (trialExperimentID)
  {
    objc_msgSend_setTrialExperimentID_(toCopy, v13, trialExperimentID, v14, v15);
    v16 = toCopy;
  }

  trialDeploymentID = self->_trialDeploymentID;
  if (trialDeploymentID)
  {
    objc_msgSend_setTrialDeploymentID_(toCopy, v13, trialDeploymentID, v14, v15);
    v16 = toCopy;
  }

  trialTreatmentID = self->_trialTreatmentID;
  if (trialTreatmentID)
  {
    objc_msgSend_setTrialTreatmentID_(toCopy, v13, trialTreatmentID, v14, v15);
    v16 = toCopy;
  }

  trialTaskID = self->_trialTaskID;
  if (trialTaskID)
  {
    objc_msgSend_setTrialTaskID_(toCopy, v13, trialTaskID, v14, v15);
    v16 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
  v14 = objc_msgSend_init(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_copyWithZone_(self->_telemetryID, v15, zone, v16, v17);
  v19 = *(v14 + 80);
  *(v14 + 80) = v18;

  v23 = objc_msgSend_copyWithZone_(self->_trialIdentifiers, v20, zone, v21, v22);
  v24 = *(v14 + 112);
  *(v14 + 112) = v23;

  v28 = objc_msgSend_copyWithZone_(self->_contextID, v25, zone, v26, v27);
  v29 = *(v14 + 16);
  *(v14 + 16) = v28;

  *(v14 + 8) = self->_timestamp;
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    *(v14 + 137) = self->_isAllocated;
    *(v14 + 140) |= 0x10000u;
    has = self->_has;
    if ((*&has & 0x8000) == 0)
    {
LABEL_3:
      if ((*&has & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_22;
    }
  }

  else if ((*&has & 0x8000) == 0)
  {
    goto LABEL_3;
  }

  *(v14 + 136) = self->_isActivated;
  *(v14 + 140) |= 0x8000u;
  has = self->_has;
  if ((*&has & 4) == 0)
  {
LABEL_4:
    if ((*&has & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

LABEL_22:
  *(v14 + 32) = self->_countGeneralTargetting;
  *(v14 + 140) |= 4u;
  has = self->_has;
  if ((*&has & 8) == 0)
  {
LABEL_5:
    if ((*&has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_24;
  }

LABEL_23:
  *(v14 + 36) = self->_countGeneralTargettingMet;
  *(v14 + 140) |= 8u;
  has = self->_has;
  if ((*&has & 1) == 0)
  {
LABEL_6:
    if ((*&has & 2) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_25;
  }

LABEL_24:
  *(v14 + 24) = self->_countCustomTargetting;
  *(v14 + 140) |= 1u;
  has = self->_has;
  if ((*&has & 2) == 0)
  {
LABEL_7:
    if ((*&has & 0x800) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_26;
  }

LABEL_25:
  *(v14 + 28) = self->_countCustomTargettingMet;
  *(v14 + 140) |= 2u;
  has = self->_has;
  if ((*&has & 0x800) == 0)
  {
LABEL_8:
    if ((*&has & 0x400) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

LABEL_26:
  *(v14 + 68) = self->_countTaskFetchedSucceeded;
  *(v14 + 140) |= 0x800u;
  has = self->_has;
  if ((*&has & 0x400) == 0)
  {
LABEL_9:
    if ((*&has & 0x2000) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_28;
  }

LABEL_27:
  *(v14 + 64) = self->_countTaskFetchedFailed;
  *(v14 + 140) |= 0x400u;
  has = self->_has;
  if ((*&has & 0x2000) == 0)
  {
LABEL_10:
    if ((*&has & 0x1000) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_29;
  }

LABEL_28:
  *(v14 + 76) = self->_countTaskScheduledSucceeded;
  *(v14 + 140) |= 0x2000u;
  has = self->_has;
  if ((*&has & 0x1000) == 0)
  {
LABEL_11:
    if ((*&has & 0x200) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_30;
  }

LABEL_29:
  *(v14 + 72) = self->_countTaskScheduledFailed;
  *(v14 + 140) |= 0x1000u;
  has = self->_has;
  if ((*&has & 0x200) == 0)
  {
LABEL_12:
    if ((*&has & 0x100) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_31;
  }

LABEL_30:
  *(v14 + 60) = self->_countTaskCompletedSucceeded;
  *(v14 + 140) |= 0x200u;
  has = self->_has;
  if ((*&has & 0x100) == 0)
  {
LABEL_13:
    if ((*&has & 0x20) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_32;
  }

LABEL_31:
  *(v14 + 56) = self->_countTaskCompletedFailed;
  *(v14 + 140) |= 0x100u;
  has = self->_has;
  if ((*&has & 0x20) == 0)
  {
LABEL_14:
    if ((*&has & 0x10) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

LABEL_32:
  *(v14 + 44) = self->_countPerformTaskSucceeded;
  *(v14 + 140) |= 0x20u;
  has = self->_has;
  if ((*&has & 0x10) == 0)
  {
LABEL_15:
    if ((*&has & 0x80) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_34;
  }

LABEL_33:
  *(v14 + 40) = self->_countPerformTaskFailed;
  *(v14 + 140) |= 0x10u;
  has = self->_has;
  if ((*&has & 0x80) == 0)
  {
LABEL_16:
    if ((*&has & 0x40) == 0)
    {
      goto LABEL_17;
    }

LABEL_35:
    *(v14 + 48) = self->_countStopFailed;
    *(v14 + 140) |= 0x40u;
    if ((*&self->_has & 0x4000) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

LABEL_34:
  *(v14 + 52) = self->_countStopSucceeded;
  *(v14 + 140) |= 0x80u;
  has = self->_has;
  if ((*&has & 0x40) != 0)
  {
    goto LABEL_35;
  }

LABEL_17:
  if ((*&has & 0x4000) != 0)
  {
LABEL_18:
    *(v14 + 104) = self->_trialIdentifierType;
    *(v14 + 140) |= 0x4000u;
  }

LABEL_19:
  v34 = objc_msgSend_copyWithZone_(self->_trialExperimentID, v30, zone, v31, v32);
  v35 = *(v14 + 96);
  *(v14 + 96) = v34;

  v39 = objc_msgSend_copyWithZone_(self->_trialDeploymentID, v36, zone, v37, v38);
  v40 = *(v14 + 88);
  *(v14 + 88) = v39;

  v44 = objc_msgSend_copyWithZone_(self->_trialTreatmentID, v41, zone, v42, v43);
  v45 = *(v14 + 128);
  *(v14 + 128) = v44;

  v49 = objc_msgSend_copyWithZone_(self->_trialTaskID, v46, zone, v47, v48);
  v50 = *(v14 + 120);
  *(v14 + 120) = v49;

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5, v7, v8))
  {
    goto LABEL_108;
  }

  telemetryID = self->_telemetryID;
  v13 = equalCopy[10];
  if (telemetryID | v13)
  {
    if (!objc_msgSend_isEqual_(telemetryID, v9, v13, v10, v11))
    {
      goto LABEL_108;
    }
  }

  trialIdentifiers = self->_trialIdentifiers;
  v15 = equalCopy[14];
  if (trialIdentifiers | v15)
  {
    if (!objc_msgSend_isEqual_(trialIdentifiers, v9, v15, v10, v11))
    {
      goto LABEL_108;
    }
  }

  contextID = self->_contextID;
  v17 = equalCopy[2];
  if (contextID | v17)
  {
    if (!objc_msgSend_isEqual_(contextID, v9, v17, v10, v11))
    {
      goto LABEL_108;
    }
  }

  if (self->_timestamp != equalCopy[1])
  {
    goto LABEL_108;
  }

  has = self->_has;
  v19 = *(equalCopy + 35);
  if ((*&has & 0x10000) != 0)
  {
    if ((v19 & 0x10000) == 0)
    {
      goto LABEL_108;
    }

    v20 = *(equalCopy + 137);
    if (self->_isAllocated)
    {
      if ((*(equalCopy + 137) & 1) == 0)
      {
        goto LABEL_108;
      }
    }

    else if (*(equalCopy + 137))
    {
      goto LABEL_108;
    }
  }

  else if ((v19 & 0x10000) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x8000) == 0)
  {
    if ((v19 & 0x8000) == 0)
    {
      goto LABEL_13;
    }

LABEL_108:
    isEqual = 0;
    goto LABEL_109;
  }

  if ((v19 & 0x8000) == 0)
  {
    goto LABEL_108;
  }

  v21 = *(equalCopy + 136);
  if (self->_isActivated)
  {
    if ((equalCopy[17] & 1) == 0)
    {
      goto LABEL_108;
    }
  }

  else if (equalCopy[17])
  {
    goto LABEL_108;
  }

LABEL_13:
  if ((*&has & 4) != 0)
  {
    if ((v19 & 4) == 0 || self->_countGeneralTargetting != *(equalCopy + 8))
    {
      goto LABEL_108;
    }
  }

  else if ((v19 & 4) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 8) != 0)
  {
    if ((v19 & 8) == 0 || self->_countGeneralTargettingMet != *(equalCopy + 9))
    {
      goto LABEL_108;
    }
  }

  else if ((v19 & 8) != 0)
  {
    goto LABEL_108;
  }

  if (*&has)
  {
    if ((v19 & 1) == 0 || self->_countCustomTargetting != *(equalCopy + 6))
    {
      goto LABEL_108;
    }
  }

  else if (v19)
  {
    goto LABEL_108;
  }

  if ((*&has & 2) != 0)
  {
    if ((v19 & 2) == 0 || self->_countCustomTargettingMet != *(equalCopy + 7))
    {
      goto LABEL_108;
    }
  }

  else if ((v19 & 2) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x800) != 0)
  {
    if ((v19 & 0x800) == 0 || self->_countTaskFetchedSucceeded != *(equalCopy + 17))
    {
      goto LABEL_108;
    }
  }

  else if ((v19 & 0x800) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x400) != 0)
  {
    if ((v19 & 0x400) == 0 || self->_countTaskFetchedFailed != *(equalCopy + 16))
    {
      goto LABEL_108;
    }
  }

  else if ((v19 & 0x400) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x2000) != 0)
  {
    if ((v19 & 0x2000) == 0 || self->_countTaskScheduledSucceeded != *(equalCopy + 19))
    {
      goto LABEL_108;
    }
  }

  else if ((v19 & 0x2000) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x1000) != 0)
  {
    if ((v19 & 0x1000) == 0 || self->_countTaskScheduledFailed != *(equalCopy + 18))
    {
      goto LABEL_108;
    }
  }

  else if ((v19 & 0x1000) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x200) != 0)
  {
    if ((v19 & 0x200) == 0 || self->_countTaskCompletedSucceeded != *(equalCopy + 15))
    {
      goto LABEL_108;
    }
  }

  else if ((v19 & 0x200) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x100) != 0)
  {
    if ((v19 & 0x100) == 0 || self->_countTaskCompletedFailed != *(equalCopy + 14))
    {
      goto LABEL_108;
    }
  }

  else if ((v19 & 0x100) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x20) != 0)
  {
    if ((v19 & 0x20) == 0 || self->_countPerformTaskSucceeded != *(equalCopy + 11))
    {
      goto LABEL_108;
    }
  }

  else if ((v19 & 0x20) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x10) != 0)
  {
    if ((v19 & 0x10) == 0 || self->_countPerformTaskFailed != *(equalCopy + 10))
    {
      goto LABEL_108;
    }
  }

  else if ((v19 & 0x10) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x80) != 0)
  {
    if ((v19 & 0x80) == 0 || self->_countStopSucceeded != *(equalCopy + 13))
    {
      goto LABEL_108;
    }
  }

  else if ((v19 & 0x80) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x40) != 0)
  {
    if ((v19 & 0x40) == 0 || self->_countStopFailed != *(equalCopy + 12))
    {
      goto LABEL_108;
    }
  }

  else if ((v19 & 0x40) != 0)
  {
    goto LABEL_108;
  }

  if ((*&has & 0x4000) != 0)
  {
    if ((v19 & 0x4000) == 0 || self->_trialIdentifierType != *(equalCopy + 26))
    {
      goto LABEL_108;
    }
  }

  else if ((v19 & 0x4000) != 0)
  {
    goto LABEL_108;
  }

  trialExperimentID = self->_trialExperimentID;
  v23 = equalCopy[12];
  if (trialExperimentID | v23 && !objc_msgSend_isEqual_(trialExperimentID, v9, v23, v10, v11))
  {
    goto LABEL_108;
  }

  trialDeploymentID = self->_trialDeploymentID;
  v25 = equalCopy[11];
  if (trialDeploymentID | v25)
  {
    if (!objc_msgSend_isEqual_(trialDeploymentID, v9, v25, v10, v11))
    {
      goto LABEL_108;
    }
  }

  trialTreatmentID = self->_trialTreatmentID;
  v27 = equalCopy[16];
  if (trialTreatmentID | v27)
  {
    if (!objc_msgSend_isEqual_(trialTreatmentID, v9, v27, v10, v11))
    {
      goto LABEL_108;
    }
  }

  trialTaskID = self->_trialTaskID;
  v29 = equalCopy[15];
  if (trialTaskID | v29)
  {
    isEqual = objc_msgSend_isEqual_(trialTaskID, v9, v29, v10, v11);
  }

  else
  {
    isEqual = 1;
  }

LABEL_109:

  return isEqual;
}

- (unint64_t)hash
{
  v6 = objc_msgSend_hash(self->_telemetryID, a2, v2, v3, v4);
  v11 = objc_msgSend_hash(self->_trialIdentifiers, v7, v8, v9, v10);
  v16 = objc_msgSend_hash(self->_contextID, v12, v13, v14, v15);
  has = self->_has;
  if ((*&has & 0x10000) != 0)
  {
    v18 = 2654435761 * self->_isAllocated;
    if ((*&has & 0x8000) != 0)
    {
LABEL_3:
      v19 = 2654435761 * self->_isActivated;
      if ((*&has & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_18;
    }
  }

  else
  {
    v18 = 0;
    if ((*&has & 0x8000) != 0)
    {
      goto LABEL_3;
    }
  }

  v19 = 0;
  if ((*&has & 4) != 0)
  {
LABEL_4:
    v20 = 2654435761 * self->_countGeneralTargetting;
    if ((*&has & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_18:
  v20 = 0;
  if ((*&has & 8) != 0)
  {
LABEL_5:
    v21 = 2654435761 * self->_countGeneralTargettingMet;
    if (*&has)
    {
      goto LABEL_6;
    }

    goto LABEL_20;
  }

LABEL_19:
  v21 = 0;
  if (*&has)
  {
LABEL_6:
    v22 = 2654435761 * self->_countCustomTargetting;
    if ((*&has & 2) != 0)
    {
      goto LABEL_7;
    }

    goto LABEL_21;
  }

LABEL_20:
  v22 = 0;
  if ((*&has & 2) != 0)
  {
LABEL_7:
    v23 = 2654435761 * self->_countCustomTargettingMet;
    if ((*&has & 0x800) != 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  v23 = 0;
  if ((*&has & 0x800) != 0)
  {
LABEL_8:
    v24 = 2654435761 * self->_countTaskFetchedSucceeded;
    if ((*&has & 0x400) != 0)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:
  v24 = 0;
  if ((*&has & 0x400) != 0)
  {
LABEL_9:
    v25 = 2654435761 * self->_countTaskFetchedFailed;
    if ((*&has & 0x2000) != 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  v25 = 0;
  if ((*&has & 0x2000) != 0)
  {
LABEL_10:
    v26 = 2654435761 * self->_countTaskScheduledSucceeded;
    if ((*&has & 0x1000) != 0)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:
  v26 = 0;
  if ((*&has & 0x1000) != 0)
  {
LABEL_11:
    v27 = 2654435761 * self->_countTaskScheduledFailed;
    if ((*&has & 0x200) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  v27 = 0;
  if ((*&has & 0x200) != 0)
  {
LABEL_12:
    v28 = 2654435761 * self->_countTaskCompletedSucceeded;
    if ((*&has & 0x100) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:
  v28 = 0;
  if ((*&has & 0x100) != 0)
  {
LABEL_13:
    v29 = 2654435761 * self->_countTaskCompletedFailed;
    if ((*&has & 0x20) != 0)
    {
      goto LABEL_14;
    }

LABEL_28:
    v30 = 0;
    if ((*&has & 0x10) != 0)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_27:
  v29 = 0;
  if ((*&has & 0x20) == 0)
  {
    goto LABEL_28;
  }

LABEL_14:
  v30 = 2654435761 * self->_countPerformTaskSucceeded;
  if ((*&has & 0x10) != 0)
  {
LABEL_15:
    v31 = 2654435761 * self->_countPerformTaskFailed;
    goto LABEL_30;
  }

LABEL_29:
  v31 = 0;
LABEL_30:
  if ((*&has & 0x80) != 0)
  {
    v32 = 2654435761 * self->_countStopSucceeded;
  }

  else
  {
    v32 = 0;
  }

  if ((*&has & 0x40) != 0)
  {
    v33 = 2654435761 * self->_countStopFailed;
  }

  else
  {
    v33 = 0;
  }

  if ((*&has & 0x4000) != 0)
  {
    v34 = 2654435761 * self->_trialIdentifierType;
  }

  else
  {
    v34 = 0;
  }

  v35 = v11 ^ v6 ^ v16 ^ v18 ^ v19 ^ (2654435761u * self->_timestamp);
  v36 = v20 ^ v21 ^ v22 ^ v23 ^ v24 ^ v25 ^ v26 ^ v27 ^ v28 ^ v29 ^ v30 ^ v31 ^ v32 ^ v33 ^ v34 ^ objc_msgSend_hash(self->_trialExperimentID, v27, v28, v29, v30);
  v41 = v35 ^ v36 ^ objc_msgSend_hash(self->_trialDeploymentID, v37, v38, v39, v40);
  v46 = objc_msgSend_hash(self->_trialTreatmentID, v42, v43, v44, v45);
  return v41 ^ v46 ^ objc_msgSend_hash(self->_trialTaskID, v47, v48, v49, v50);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v7 = *(fromCopy + 10);
  v16 = fromCopy;
  if (v7)
  {
    objc_msgSend_setTelemetryID_(self, fromCopy, v7, v5, v6);
    fromCopy = v16;
  }

  trialIdentifiers = self->_trialIdentifiers;
  v9 = *(fromCopy + 14);
  if (trialIdentifiers)
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    objc_msgSend_mergeFrom_(trialIdentifiers, fromCopy, v9, v5, v6);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_9;
    }

    objc_msgSend_setTrialIdentifiers_(self, fromCopy, v9, v5, v6);
  }

  fromCopy = v16;
LABEL_9:
  v10 = *(fromCopy + 2);
  if (v10)
  {
    objc_msgSend_setContextID_(self, fromCopy, v10, v5, v6);
    fromCopy = v16;
  }

  self->_timestamp = *(fromCopy + 1);
  v11 = *(fromCopy + 35);
  if ((v11 & 0x10000) != 0)
  {
    self->_isAllocated = *(fromCopy + 137);
    *&self->_has |= 0x10000u;
    v11 = *(fromCopy + 35);
    if ((v11 & 0x8000) == 0)
    {
LABEL_13:
      if ((v11 & 4) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_42;
    }
  }

  else if ((v11 & 0x8000) == 0)
  {
    goto LABEL_13;
  }

  self->_isActivated = *(fromCopy + 136);
  *&self->_has |= 0x8000u;
  v11 = *(fromCopy + 35);
  if ((v11 & 4) == 0)
  {
LABEL_14:
    if ((v11 & 8) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_43;
  }

LABEL_42:
  self->_countGeneralTargetting = *(fromCopy + 8);
  *&self->_has |= 4u;
  v11 = *(fromCopy + 35);
  if ((v11 & 8) == 0)
  {
LABEL_15:
    if ((v11 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_44;
  }

LABEL_43:
  self->_countGeneralTargettingMet = *(fromCopy + 9);
  *&self->_has |= 8u;
  v11 = *(fromCopy + 35);
  if ((v11 & 1) == 0)
  {
LABEL_16:
    if ((v11 & 2) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_45;
  }

LABEL_44:
  self->_countCustomTargetting = *(fromCopy + 6);
  *&self->_has |= 1u;
  v11 = *(fromCopy + 35);
  if ((v11 & 2) == 0)
  {
LABEL_17:
    if ((v11 & 0x800) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_46;
  }

LABEL_45:
  self->_countCustomTargettingMet = *(fromCopy + 7);
  *&self->_has |= 2u;
  v11 = *(fromCopy + 35);
  if ((v11 & 0x800) == 0)
  {
LABEL_18:
    if ((v11 & 0x400) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_47;
  }

LABEL_46:
  self->_countTaskFetchedSucceeded = *(fromCopy + 17);
  *&self->_has |= 0x800u;
  v11 = *(fromCopy + 35);
  if ((v11 & 0x400) == 0)
  {
LABEL_19:
    if ((v11 & 0x2000) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_48;
  }

LABEL_47:
  self->_countTaskFetchedFailed = *(fromCopy + 16);
  *&self->_has |= 0x400u;
  v11 = *(fromCopy + 35);
  if ((v11 & 0x2000) == 0)
  {
LABEL_20:
    if ((v11 & 0x1000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  self->_countTaskScheduledSucceeded = *(fromCopy + 19);
  *&self->_has |= 0x2000u;
  v11 = *(fromCopy + 35);
  if ((v11 & 0x1000) == 0)
  {
LABEL_21:
    if ((v11 & 0x200) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_50;
  }

LABEL_49:
  self->_countTaskScheduledFailed = *(fromCopy + 18);
  *&self->_has |= 0x1000u;
  v11 = *(fromCopy + 35);
  if ((v11 & 0x200) == 0)
  {
LABEL_22:
    if ((v11 & 0x100) == 0)
    {
      goto LABEL_23;
    }

    goto LABEL_51;
  }

LABEL_50:
  self->_countTaskCompletedSucceeded = *(fromCopy + 15);
  *&self->_has |= 0x200u;
  v11 = *(fromCopy + 35);
  if ((v11 & 0x100) == 0)
  {
LABEL_23:
    if ((v11 & 0x20) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_52;
  }

LABEL_51:
  self->_countTaskCompletedFailed = *(fromCopy + 14);
  *&self->_has |= 0x100u;
  v11 = *(fromCopy + 35);
  if ((v11 & 0x20) == 0)
  {
LABEL_24:
    if ((v11 & 0x10) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_53;
  }

LABEL_52:
  self->_countPerformTaskSucceeded = *(fromCopy + 11);
  *&self->_has |= 0x20u;
  v11 = *(fromCopy + 35);
  if ((v11 & 0x10) == 0)
  {
LABEL_25:
    if ((v11 & 0x80) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_54;
  }

LABEL_53:
  self->_countPerformTaskFailed = *(fromCopy + 10);
  *&self->_has |= 0x10u;
  v11 = *(fromCopy + 35);
  if ((v11 & 0x80) == 0)
  {
LABEL_26:
    if ((v11 & 0x40) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

LABEL_54:
  self->_countStopSucceeded = *(fromCopy + 13);
  *&self->_has |= 0x80u;
  v11 = *(fromCopy + 35);
  if ((v11 & 0x40) == 0)
  {
LABEL_27:
    if ((v11 & 0x4000) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_55:
  self->_countStopFailed = *(fromCopy + 12);
  *&self->_has |= 0x40u;
  if ((*(fromCopy + 35) & 0x4000) != 0)
  {
LABEL_28:
    self->_trialIdentifierType = *(fromCopy + 26);
    *&self->_has |= 0x4000u;
  }

LABEL_29:
  v12 = *(fromCopy + 12);
  if (v12)
  {
    objc_msgSend_setTrialExperimentID_(self, fromCopy, v12, v5, v6);
    fromCopy = v16;
  }

  v13 = *(fromCopy + 11);
  if (v13)
  {
    objc_msgSend_setTrialDeploymentID_(self, fromCopy, v13, v5, v6);
    fromCopy = v16;
  }

  v14 = *(fromCopy + 16);
  if (v14)
  {
    objc_msgSend_setTrialTreatmentID_(self, fromCopy, v14, v5, v6);
    fromCopy = v16;
  }

  v15 = *(fromCopy + 15);
  if (v15)
  {
    objc_msgSend_setTrialTaskID_(self, fromCopy, v15, v5, v6);
  }

  MEMORY[0x2821F96F8]();
}

@end