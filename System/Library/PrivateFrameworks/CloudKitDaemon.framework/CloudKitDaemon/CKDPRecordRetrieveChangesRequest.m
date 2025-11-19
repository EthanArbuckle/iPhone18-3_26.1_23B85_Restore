@interface CKDPRecordRetrieveChangesRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)requestedChangeTypesAsString:(int)a3;
- (int)StringAsRequestedChangeTypes:(id)a3;
- (int)requestedChangeTypes;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIgnoreCallingDeviceChanges:(BOOL)a3;
- (void)setHasIncludeMergeableDeltas:(BOOL)a3;
- (void)setHasNewestFirst:(BOOL)a3;
- (void)setHasRequestedChangeTypes:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPRecordRetrieveChangesRequest

+ (id)options
{
  if (qword_280D55060 != -1)
  {
    dispatch_once(&qword_280D55060, &unk_28385DF20);
  }

  v3 = qword_280D55058;

  return v3;
}

- (int)requestedChangeTypes
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_requestedChangeTypes;
  }

  else
  {
    return 3;
  }
}

- (void)setHasRequestedChangeTypes:(BOOL)a3
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

- (id)requestedChangeTypesAsString:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854CB38[a3 - 1];
  }

  return v4;
}

- (int)StringAsRequestedChangeTypes:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"records"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"shares"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"recordsAndShares"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setHasNewestFirst:(BOOL)a3
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

- (void)setHasIgnoreCallingDeviceChanges:(BOOL)a3
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

- (void)setHasIncludeMergeableDeltas:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordRetrieveChangesRequest;
  v4 = [(CKDPRecordRetrieveChangesRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  syncContinuationToken = self->_syncContinuationToken;
  if (syncContinuationToken)
  {
    objc_msgSend_setObject_forKey_(v4, v5, syncContinuationToken, @"syncContinuationToken");
  }

  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    v9 = objc_msgSend_dictionaryRepresentation(zoneIdentifier, v5, syncContinuationToken);
    objc_msgSend_setObject_forKey_(v6, v10, v9, @"zoneIdentifier");
  }

  requestedFields = self->_requestedFields;
  if (requestedFields)
  {
    v12 = objc_msgSend_dictionaryRepresentation(requestedFields, v5, syncContinuationToken);
    objc_msgSend_setObject_forKey_(v6, v13, v12, @"requestedFields");
  }

  has = self->_has;
  if (has)
  {
    v15 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v5, self->_maxChanges);
    objc_msgSend_setObject_forKey_(v6, v16, v15, @"maxChanges");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v17 = self->_requestedChangeTypes - 1;
    if (v17 >= 3)
    {
      v18 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_requestedChangeTypes);
    }

    else
    {
      v18 = off_27854CB38[v17];
    }

    objc_msgSend_setObject_forKey_(v6, v5, v18, @"requestedChangeTypes");
  }

  assetsToDownload = self->_assetsToDownload;
  if (assetsToDownload)
  {
    v20 = objc_msgSend_dictionaryRepresentation(assetsToDownload, v5, syncContinuationToken);
    objc_msgSend_setObject_forKey_(v6, v21, v20, @"assetsToDownload");
  }

  v22 = self->_has;
  if ((v22 & 0x10) != 0)
  {
    v26 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_newestFirst);
    objc_msgSend_setObject_forKey_(v6, v27, v26, @"newestFirst");

    v22 = self->_has;
    if ((v22 & 4) == 0)
    {
LABEL_18:
      if ((v22 & 8) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_18;
  }

  v28 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_ignoreCallingDeviceChanges);
  objc_msgSend_setObject_forKey_(v6, v29, v28, @"ignoreCallingDeviceChanges");

  if ((*&self->_has & 8) != 0)
  {
LABEL_19:
    v23 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_includeMergeableDeltas);
    objc_msgSend_setObject_forKey_(v6, v24, v23, @"includeMergeableDeltas");
  }

LABEL_20:

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v12 = v4;
  if (self->_syncContinuationToken)
  {
    PBDataWriterWriteDataField();
    v4 = v12;
  }

  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }

  if (self->_requestedFields)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }

  has = self->_has;
  if (has)
  {
    maxChanges = self->_maxChanges;
    PBDataWriterWriteUint32Field();
    v4 = v12;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    requestedChangeTypes = self->_requestedChangeTypes;
    PBDataWriterWriteInt32Field();
    v4 = v12;
  }

  if (self->_assetsToDownload)
  {
    PBDataWriterWriteSubmessage();
    v4 = v12;
  }

  v8 = self->_has;
  if ((v8 & 0x10) != 0)
  {
    newestFirst = self->_newestFirst;
    PBDataWriterWriteBOOLField();
    v4 = v12;
    v8 = self->_has;
    if ((v8 & 4) == 0)
    {
LABEL_15:
      if ((v8 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

  ignoreCallingDeviceChanges = self->_ignoreCallingDeviceChanges;
  PBDataWriterWriteBOOLField();
  v4 = v12;
  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    includeMergeableDeltas = self->_includeMergeableDeltas;
    PBDataWriterWriteBOOLField();
    v4 = v12;
  }

LABEL_17:
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  syncContinuationToken = self->_syncContinuationToken;
  v12 = v4;
  if (syncContinuationToken)
  {
    objc_msgSend_setSyncContinuationToken_(v4, v5, syncContinuationToken);
    v4 = v12;
  }

  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    objc_msgSend_setZoneIdentifier_(v12, v5, zoneIdentifier);
    v4 = v12;
  }

  requestedFields = self->_requestedFields;
  if (requestedFields)
  {
    objc_msgSend_setRequestedFields_(v12, v5, requestedFields);
    v4 = v12;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 4) = self->_maxChanges;
    *(v4 + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 5) = self->_requestedChangeTypes;
    *(v4 + 52) |= 2u;
  }

  assetsToDownload = self->_assetsToDownload;
  if (assetsToDownload)
  {
    objc_msgSend_setAssetsToDownload_(v12, v5, assetsToDownload);
    v4 = v12;
  }

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    *(v4 + 50) = self->_newestFirst;
    *(v4 + 52) |= 0x10u;
    v11 = self->_has;
    if ((v11 & 4) == 0)
    {
LABEL_15:
      if ((v11 & 8) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  else if ((*&self->_has & 4) == 0)
  {
    goto LABEL_15;
  }

  *(v4 + 48) = self->_ignoreCallingDeviceChanges;
  *(v4 + 52) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    *(v4 + 49) = self->_includeMergeableDeltas;
    *(v4 + 52) |= 8u;
  }

LABEL_17:
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_syncContinuationToken, v11, a3);
  v13 = *(v10 + 32);
  *(v10 + 32) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v14, a3);
  v16 = *(v10 + 40);
  *(v10 + 40) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_requestedFields, v17, a3);
  v19 = *(v10 + 24);
  *(v10 + 24) = v18;

  has = self->_has;
  if (has)
  {
    *(v10 + 16) = self->_maxChanges;
    *(v10 + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 20) = self->_requestedChangeTypes;
    *(v10 + 52) |= 2u;
  }

  v22 = objc_msgSend_copyWithZone_(self->_assetsToDownload, v20, a3);
  v23 = *(v10 + 8);
  *(v10 + 8) = v22;

  v24 = self->_has;
  if ((v24 & 0x10) == 0)
  {
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_11:
    *(v10 + 48) = self->_ignoreCallingDeviceChanges;
    *(v10 + 52) |= 4u;
    if ((*&self->_has & 8) == 0)
    {
      return v10;
    }

    goto LABEL_8;
  }

  *(v10 + 50) = self->_newestFirst;
  *(v10 + 52) |= 0x10u;
  v24 = self->_has;
  if ((v24 & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_7:
  if ((v24 & 8) != 0)
  {
LABEL_8:
    *(v10 + 49) = self->_includeMergeableDeltas;
    *(v10 + 52) |= 8u;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_43;
  }

  syncContinuationToken = self->_syncContinuationToken;
  v9 = v4[4];
  if (syncContinuationToken | v9)
  {
    if (!objc_msgSend_isEqual_(syncContinuationToken, v7, v9))
    {
      goto LABEL_43;
    }
  }

  zoneIdentifier = self->_zoneIdentifier;
  v11 = v4[5];
  if (zoneIdentifier | v11)
  {
    if (!objc_msgSend_isEqual_(zoneIdentifier, v7, v11))
    {
      goto LABEL_43;
    }
  }

  requestedFields = self->_requestedFields;
  v13 = v4[3];
  if (requestedFields | v13)
  {
    if (!objc_msgSend_isEqual_(requestedFields, v7, v13))
    {
      goto LABEL_43;
    }
  }

  has = self->_has;
  v15 = *(v4 + 52);
  if (has)
  {
    if ((*(v4 + 52) & 1) == 0 || self->_maxChanges != *(v4 + 4))
    {
      goto LABEL_43;
    }
  }

  else if (*(v4 + 52))
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 52) & 2) == 0 || self->_requestedChangeTypes != *(v4 + 5))
    {
      goto LABEL_43;
    }
  }

  else if ((*(v4 + 52) & 2) != 0)
  {
    goto LABEL_43;
  }

  assetsToDownload = self->_assetsToDownload;
  v17 = v4[1];
  if (assetsToDownload | v17)
  {
    if (!objc_msgSend_isEqual_(assetsToDownload, v7, v17))
    {
      goto LABEL_43;
    }

    has = self->_has;
    v15 = *(v4 + 52);
  }

  if ((has & 0x10) != 0)
  {
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    v19 = *(v4 + 50);
    if (self->_newestFirst)
    {
      if ((*(v4 + 50) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (*(v4 + 50))
    {
      goto LABEL_43;
    }
  }

  else if ((v15 & 0x10) != 0)
  {
    goto LABEL_43;
  }

  if ((has & 4) != 0)
  {
    if ((v15 & 4) == 0)
    {
      goto LABEL_43;
    }

    v20 = *(v4 + 48);
    if (self->_ignoreCallingDeviceChanges)
    {
      if ((v4[6] & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (v4[6])
    {
      goto LABEL_43;
    }
  }

  else if ((v15 & 4) != 0)
  {
    goto LABEL_43;
  }

  v18 = (v15 & 8) == 0;
  if ((has & 8) != 0)
  {
    if ((v15 & 8) != 0)
    {
      if (self->_includeMergeableDeltas)
      {
        if (*(v4 + 49))
        {
          goto LABEL_45;
        }
      }

      else if (!*(v4 + 49))
      {
LABEL_45:
        v18 = 1;
        goto LABEL_44;
      }
    }

LABEL_43:
    v18 = 0;
  }

LABEL_44:

  return v18;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_syncContinuationToken, a2, v2);
  v7 = objc_msgSend_hash(self->_zoneIdentifier, v5, v6);
  v12 = objc_msgSend_hash(self->_requestedFields, v8, v9);
  if (*&self->_has)
  {
    v13 = 2654435761 * self->_maxChanges;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v14 = 2654435761 * self->_requestedChangeTypes;
      goto LABEL_6;
    }
  }

  v14 = 0;
LABEL_6:
  v15 = objc_msgSend_hash(self->_assetsToDownload, v10, v11);
  if ((*&self->_has & 0x10) == 0)
  {
    v16 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_8;
    }

LABEL_11:
    v17 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    v18 = 0;
    return v7 ^ v4 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
  }

  v16 = 2654435761 * self->_newestFirst;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v17 = 2654435761 * self->_ignoreCallingDeviceChanges;
  if ((*&self->_has & 8) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v18 = 2654435761 * self->_includeMergeableDeltas;
  return v7 ^ v4 ^ v12 ^ v13 ^ v14 ^ v15 ^ v16 ^ v17 ^ v18;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 4);
  v14 = v4;
  if (v5)
  {
    objc_msgSend_setSyncContinuationToken_(self, v4, v5);
    v4 = v14;
  }

  zoneIdentifier = self->_zoneIdentifier;
  v7 = *(v4 + 5);
  if (zoneIdentifier)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_mergeFrom_(zoneIdentifier, v4, v7);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_setZoneIdentifier_(self, v4, v7);
  }

  v4 = v14;
LABEL_9:
  requestedFields = self->_requestedFields;
  v9 = *(v4 + 3);
  if (requestedFields)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    objc_msgSend_mergeFrom_(requestedFields, v4, v9);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    objc_msgSend_setRequestedFields_(self, v4, v9);
  }

  v4 = v14;
LABEL_15:
  v10 = *(v4 + 52);
  if (v10)
  {
    self->_maxChanges = *(v4 + 4);
    *&self->_has |= 1u;
    v10 = *(v4 + 52);
  }

  if ((v10 & 2) != 0)
  {
    self->_requestedChangeTypes = *(v4 + 5);
    *&self->_has |= 2u;
  }

  assetsToDownload = self->_assetsToDownload;
  v12 = *(v4 + 1);
  if (assetsToDownload)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    objc_msgSend_mergeFrom_(assetsToDownload, v4, v12);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    objc_msgSend_setAssetsToDownload_(self, v4, v12);
  }

  v4 = v14;
LABEL_25:
  v13 = *(v4 + 52);
  if ((v13 & 0x10) != 0)
  {
    self->_newestFirst = *(v4 + 50);
    *&self->_has |= 0x10u;
    v13 = *(v4 + 52);
    if ((v13 & 4) == 0)
    {
LABEL_27:
      if ((v13 & 8) == 0)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }
  }

  else if ((*(v4 + 52) & 4) == 0)
  {
    goto LABEL_27;
  }

  self->_ignoreCallingDeviceChanges = *(v4 + 48);
  *&self->_has |= 4u;
  if ((*(v4 + 52) & 8) != 0)
  {
LABEL_28:
    self->_includeMergeableDeltas = *(v4 + 49);
    *&self->_has |= 8u;
  }

LABEL_29:

  MEMORY[0x2821F96F8]();
}

@end