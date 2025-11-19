@interface CKDPZoneRetrieveChangesResponseChangedZone
- (BOOL)isEqual:(id)a3;
- (id)changeTypeAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)deleteTypeAsString:(int)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChangeType:(id)a3;
- (int)StringAsDeleteType:(id)a3;
- (int)changeType;
- (int)deleteType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDeleteType:(BOOL)a3;
- (void)setHasIsAnonymous:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPZoneRetrieveChangesResponseChangedZone

- (int)changeType
{
  if (*&self->_has)
  {
    return self->_changeType;
  }

  else
  {
    return 1;
  }
}

- (id)changeTypeAsString:(int)a3
{
  if (a3 == 1)
  {
    v4 = @"updated";
  }

  else if (a3 == 2)
  {
    v4 = @"deleted";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  return v4;
}

- (int)StringAsChangeType:(id)a3
{
  v3 = a3;
  v6 = 1;
  if ((objc_msgSend_isEqualToString_(v3, v4, @"updated") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(v3, v5, @"deleted"))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (int)deleteType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_deleteType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasDeleteType:(BOOL)a3
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

- (id)deleteTypeAsString:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854CDD0[a3 - 1];
  }

  return v4;
}

- (int)StringAsDeleteType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"normal"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"userPurged"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"userDidResetEncryptedData"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setHasIsAnonymous:(BOOL)a3
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
  v11.receiver = self;
  v11.super_class = CKDPZoneRetrieveChangesResponseChangedZone;
  v4 = [(CKDPZoneRetrieveChangesResponseChangedZone *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(zoneIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"zoneIdentifier");
  }

  has = self->_has;
  if (has)
  {
    changeType = self->_changeType;
    if (changeType == 1)
    {
      v12 = @"updated";
      objc_msgSend_setObject_forKey_(v6, v4, @"updated", @"changeType");
    }

    else if (changeType == 2)
    {
      v12 = @"deleted";
      objc_msgSend_setObject_forKey_(v6, v4, @"deleted", @"changeType");
    }

    else
    {
      v12 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_changeType);
      objc_msgSend_setObject_forKey_(v6, v13, v12, @"changeType");
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = self->_deleteType - 1;
    if (v14 >= 3)
    {
      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_deleteType);
    }

    else
    {
      v15 = off_27854CDD0[v14];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v15, @"deleteType");
  }

  capabilities = self->_capabilities;
  if (capabilities)
  {
    v17 = objc_msgSend_dictionaryRepresentation(capabilities, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v18, v17, @"capabilities");
  }

  if ((*&self->_has & 4) != 0)
  {
    v19 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_isAnonymous);
    objc_msgSend_setObject_forKey_(v6, v20, v19, @"isAnonymous");
  }

  anonymousZoneInfo = self->_anonymousZoneInfo;
  if (anonymousZoneInfo)
  {
    v22 = objc_msgSend_dictionaryRepresentation(anonymousZoneInfo, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v23, v22, @"anonymousZoneInfo");
  }

  zoneParentIdentifier = self->_zoneParentIdentifier;
  if (zoneParentIdentifier)
  {
    v25 = objc_msgSend_dictionaryRepresentation(zoneParentIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v26, v25, @"zoneParentIdentifier");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v9 = v4;
  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    changeType = self->_changeType;
    PBDataWriterWriteInt32Field();
    v4 = v9;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    deleteType = self->_deleteType;
    PBDataWriterWriteInt32Field();
    v4 = v9;
  }

  if (self->_capabilities)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if ((*&self->_has & 4) != 0)
  {
    isAnonymous = self->_isAnonymous;
    PBDataWriterWriteBOOLField();
    v4 = v9;
  }

  if (self->_anonymousZoneInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }

  if (self->_zoneParentIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v9;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  zoneIdentifier = self->_zoneIdentifier;
  v11 = v4;
  if (zoneIdentifier)
  {
    objc_msgSend_setZoneIdentifier_(v4, v5, zoneIdentifier);
    v4 = v11;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 6) = self->_changeType;
    *(v4 + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 7) = self->_deleteType;
    *(v4 + 52) |= 2u;
  }

  capabilities = self->_capabilities;
  if (capabilities)
  {
    objc_msgSend_setCapabilities_(v11, v5, capabilities);
    v4 = v11;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 48) = self->_isAnonymous;
    *(v4 + 52) |= 4u;
  }

  anonymousZoneInfo = self->_anonymousZoneInfo;
  if (anonymousZoneInfo)
  {
    objc_msgSend_setAnonymousZoneInfo_(v11, v5, anonymousZoneInfo);
    v4 = v11;
  }

  zoneParentIdentifier = self->_zoneParentIdentifier;
  if (zoneParentIdentifier)
  {
    objc_msgSend_setZoneParentIdentifier_(v11, v5, zoneParentIdentifier);
    v4 = v11;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v11, a3);
  v13 = *(v10 + 32);
  *(v10 + 32) = v12;

  has = self->_has;
  if (has)
  {
    *(v10 + 24) = self->_changeType;
    *(v10 + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 28) = self->_deleteType;
    *(v10 + 52) |= 2u;
  }

  v16 = objc_msgSend_copyWithZone_(self->_capabilities, v14, a3);
  v17 = *(v10 + 16);
  *(v10 + 16) = v16;

  if ((*&self->_has & 4) != 0)
  {
    *(v10 + 48) = self->_isAnonymous;
    *(v10 + 52) |= 4u;
  }

  v19 = objc_msgSend_copyWithZone_(self->_anonymousZoneInfo, v18, a3);
  v20 = *(v10 + 8);
  *(v10 + 8) = v19;

  v22 = objc_msgSend_copyWithZone_(self->_zoneParentIdentifier, v21, a3);
  v23 = *(v10 + 40);
  *(v10 + 40) = v22;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_24;
  }

  zoneIdentifier = self->_zoneIdentifier;
  v9 = v4[4];
  if (zoneIdentifier | v9)
  {
    if (!objc_msgSend_isEqual_(zoneIdentifier, v7, v9))
    {
      goto LABEL_24;
    }
  }

  has = self->_has;
  v11 = *(v4 + 52);
  if (has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_changeType != *(v4 + 6))
    {
      goto LABEL_24;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_24;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_deleteType != *(v4 + 7))
    {
      goto LABEL_24;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_24;
  }

  capabilities = self->_capabilities;
  v13 = v4[2];
  if (capabilities | v13)
  {
    if (!objc_msgSend_isEqual_(capabilities, v7, v13))
    {
      goto LABEL_24;
    }

    has = self->_has;
    v11 = *(v4 + 52);
  }

  if ((has & 4) == 0)
  {
    if ((v11 & 4) == 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    isEqual = 0;
    goto LABEL_25;
  }

  if ((v11 & 4) == 0)
  {
    goto LABEL_24;
  }

  v20 = *(v4 + 48);
  if (self->_isAnonymous)
  {
    if ((v4[6] & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v4[6])
  {
    goto LABEL_24;
  }

LABEL_19:
  anonymousZoneInfo = self->_anonymousZoneInfo;
  v15 = v4[1];
  if (anonymousZoneInfo | v15 && !objc_msgSend_isEqual_(anonymousZoneInfo, v7, v15))
  {
    goto LABEL_24;
  }

  zoneParentIdentifier = self->_zoneParentIdentifier;
  v17 = v4[5];
  if (zoneParentIdentifier | v17)
  {
    isEqual = objc_msgSend_isEqual_(zoneParentIdentifier, v7, v17);
  }

  else
  {
    isEqual = 1;
  }

LABEL_25:

  return isEqual;
}

- (unint64_t)hash
{
  v6 = objc_msgSend_hash(self->_zoneIdentifier, a2, v2);
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_changeType;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v8 = 2654435761 * self->_deleteType;
      goto LABEL_6;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = objc_msgSend_hash(self->_capabilities, v4, v5);
  if ((*&self->_has & 4) != 0)
  {
    v12 = 2654435761 * self->_isAnonymous;
  }

  else
  {
    v12 = 0;
  }

  v13 = v7 ^ v6 ^ v8 ^ v9 ^ v12;
  v14 = objc_msgSend_hash(self->_anonymousZoneInfo, v10, v11);
  return v13 ^ v14 ^ objc_msgSend_hash(self->_zoneParentIdentifier, v15, v16);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  zoneIdentifier = self->_zoneIdentifier;
  v6 = *(v4 + 4);
  v14 = v4;
  if (zoneIdentifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(zoneIdentifier, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setZoneIdentifier_(self, v4, v6);
  }

  v4 = v14;
LABEL_7:
  v7 = *(v4 + 52);
  if (v7)
  {
    self->_changeType = *(v4 + 6);
    *&self->_has |= 1u;
    v7 = *(v4 + 52);
  }

  if ((v7 & 2) != 0)
  {
    self->_deleteType = *(v4 + 7);
    *&self->_has |= 2u;
  }

  capabilities = self->_capabilities;
  v9 = *(v4 + 2);
  if (capabilities)
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    objc_msgSend_mergeFrom_(capabilities, v4, v9);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_17;
    }

    objc_msgSend_setCapabilities_(self, v4, v9);
  }

  v4 = v14;
LABEL_17:
  if ((*(v4 + 52) & 4) != 0)
  {
    self->_isAnonymous = *(v4 + 48);
    *&self->_has |= 4u;
  }

  anonymousZoneInfo = self->_anonymousZoneInfo;
  v11 = *(v4 + 1);
  if (anonymousZoneInfo)
  {
    if (!v11)
    {
      goto LABEL_25;
    }

    objc_msgSend_mergeFrom_(anonymousZoneInfo, v4, v11);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_25;
    }

    objc_msgSend_setAnonymousZoneInfo_(self, v4, v11);
  }

  v4 = v14;
LABEL_25:
  zoneParentIdentifier = self->_zoneParentIdentifier;
  v13 = *(v4 + 5);
  if (zoneParentIdentifier)
  {
    if (v13)
    {
      objc_msgSend_mergeFrom_(zoneParentIdentifier, v4, v13);
    }
  }

  else if (v13)
  {
    objc_msgSend_setZoneParentIdentifier_(self, v4, v13);
  }

  MEMORY[0x2821F96F8]();
}

@end