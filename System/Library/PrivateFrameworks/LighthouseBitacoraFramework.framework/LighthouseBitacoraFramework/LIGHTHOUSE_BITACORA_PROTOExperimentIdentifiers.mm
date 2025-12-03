@interface LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiers
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiers

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v15.receiver = self;
  v15.super_class = LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiers;
  v4 = [(LIGHTHOUSE_BITACORA_PROTOExperimentIdentifiers *)&v15 description];
  v9 = objc_msgSend_dictionaryRepresentation(self, v5, v6, v7, v8);
  v13 = objc_msgSend_stringWithFormat_(v3, v10, @"%@ %@", v11, v12, v4, v9);

  return v13;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  v9 = v6;
  trialExperimentID = self->_trialExperimentID;
  if (trialExperimentID)
  {
    objc_msgSend_setObject_forKey_(v6, v7, trialExperimentID, @"trialExperimentID", v8);
  }

  trialDeploymentID = self->_trialDeploymentID;
  if (trialDeploymentID)
  {
    objc_msgSend_setObject_forKey_(v9, v7, trialDeploymentID, @"trialDeploymentID", v8);
  }

  trialTreatmentID = self->_trialTreatmentID;
  if (trialTreatmentID)
  {
    objc_msgSend_setObject_forKey_(v9, v7, trialTreatmentID, @"trialTreatmentID", v8);
  }

  return v9;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_trialExperimentID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_trialDeploymentID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_trialTreatmentID)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  trialExperimentID = self->_trialExperimentID;
  v11 = toCopy;
  if (trialExperimentID)
  {
    objc_msgSend_setTrialExperimentID_(toCopy, v5, trialExperimentID, v6, v7);
    toCopy = v11;
  }

  trialDeploymentID = self->_trialDeploymentID;
  if (trialDeploymentID)
  {
    objc_msgSend_setTrialDeploymentID_(v11, v5, trialDeploymentID, v6, v7);
    toCopy = v11;
  }

  trialTreatmentID = self->_trialTreatmentID;
  if (trialTreatmentID)
  {
    objc_msgSend_setTrialTreatmentID_(v11, v5, trialTreatmentID, v6, v7);
    toCopy = v11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
  v14 = objc_msgSend_init(v9, v10, v11, v12, v13);
  v18 = objc_msgSend_copyWithZone_(self->_trialExperimentID, v15, zone, v16, v17);
  v19 = v14[2];
  v14[2] = v18;

  v23 = objc_msgSend_copyWithZone_(self->_trialDeploymentID, v20, zone, v21, v22);
  v24 = v14[1];
  v14[1] = v23;

  v28 = objc_msgSend_copyWithZone_(self->_trialTreatmentID, v25, zone, v26, v27);
  v29 = v14[3];
  v14[3] = v28;

  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5, v7, v8) && ((trialExperimentID = self->_trialExperimentID, v13 = equalCopy[2], !(trialExperimentID | v13)) || objc_msgSend_isEqual_(trialExperimentID, v9, v13, v10, v11)) && ((trialDeploymentID = self->_trialDeploymentID, v15 = equalCopy[1], !(trialDeploymentID | v15)) || objc_msgSend_isEqual_(trialDeploymentID, v9, v15, v10, v11)))
  {
    trialTreatmentID = self->_trialTreatmentID;
    v17 = equalCopy[3];
    if (trialTreatmentID | v17)
    {
      isEqual = objc_msgSend_isEqual_(trialTreatmentID, v9, v17, v10, v11);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v6 = objc_msgSend_hash(self->_trialExperimentID, a2, v2, v3, v4);
  v11 = objc_msgSend_hash(self->_trialDeploymentID, v7, v8, v9, v10) ^ v6;
  return v11 ^ objc_msgSend_hash(self->_trialTreatmentID, v12, v13, v14, v15);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v8 = fromCopy[2];
  v11 = fromCopy;
  if (v8)
  {
    objc_msgSend_setTrialExperimentID_(self, v5, v8, v6, v7);
    fromCopy = v11;
  }

  v9 = fromCopy[1];
  if (v9)
  {
    objc_msgSend_setTrialDeploymentID_(self, v5, v9, v6, v7);
    fromCopy = v11;
  }

  v10 = fromCopy[3];
  if (v10)
  {
    objc_msgSend_setTrialTreatmentID_(self, v5, v10, v6, v7);
    fromCopy = v11;
  }
}

@end