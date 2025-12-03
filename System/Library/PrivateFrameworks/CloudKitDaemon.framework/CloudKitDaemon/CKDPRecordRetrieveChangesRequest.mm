@interface CKDPRecordRetrieveChangesRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)requestedChangeTypesAsString:(int)string;
- (int)StringAsRequestedChangeTypes:(id)types;
- (int)requestedChangeTypes;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIgnoreCallingDeviceChanges:(BOOL)changes;
- (void)setHasIncludeMergeableDeltas:(BOOL)deltas;
- (void)setHasNewestFirst:(BOOL)first;
- (void)setHasRequestedChangeTypes:(BOOL)types;
- (void)writeTo:(id)to;
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

- (void)setHasRequestedChangeTypes:(BOOL)types
{
  if (types)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)requestedChangeTypesAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854CB38[string - 1];
  }

  return v4;
}

- (int)StringAsRequestedChangeTypes:(id)types
{
  typesCopy = types;
  if (objc_msgSend_isEqualToString_(typesCopy, v4, @"records"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typesCopy, v5, @"shares"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typesCopy, v7, @"recordsAndShares"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)setHasNewestFirst:(BOOL)first
{
  if (first)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasIgnoreCallingDeviceChanges:(BOOL)changes
{
  if (changes)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasIncludeMergeableDeltas:(BOOL)deltas
{
  if (deltas)
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v12 = toCopy;
  if (self->_syncContinuationToken)
  {
    PBDataWriterWriteDataField();
    toCopy = v12;
  }

  if (self->_zoneIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  if (self->_requestedFields)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  has = self->_has;
  if (has)
  {
    maxChanges = self->_maxChanges;
    PBDataWriterWriteUint32Field();
    toCopy = v12;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    requestedChangeTypes = self->_requestedChangeTypes;
    PBDataWriterWriteInt32Field();
    toCopy = v12;
  }

  if (self->_assetsToDownload)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v12;
  }

  v8 = self->_has;
  if ((v8 & 0x10) != 0)
  {
    newestFirst = self->_newestFirst;
    PBDataWriterWriteBOOLField();
    toCopy = v12;
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
  toCopy = v12;
  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    includeMergeableDeltas = self->_includeMergeableDeltas;
    PBDataWriterWriteBOOLField();
    toCopy = v12;
  }

LABEL_17:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  syncContinuationToken = self->_syncContinuationToken;
  v12 = toCopy;
  if (syncContinuationToken)
  {
    objc_msgSend_setSyncContinuationToken_(toCopy, v5, syncContinuationToken);
    toCopy = v12;
  }

  zoneIdentifier = self->_zoneIdentifier;
  if (zoneIdentifier)
  {
    objc_msgSend_setZoneIdentifier_(v12, v5, zoneIdentifier);
    toCopy = v12;
  }

  requestedFields = self->_requestedFields;
  if (requestedFields)
  {
    objc_msgSend_setRequestedFields_(v12, v5, requestedFields);
    toCopy = v12;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 4) = self->_maxChanges;
    *(toCopy + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 5) = self->_requestedChangeTypes;
    *(toCopy + 52) |= 2u;
  }

  assetsToDownload = self->_assetsToDownload;
  if (assetsToDownload)
  {
    objc_msgSend_setAssetsToDownload_(v12, v5, assetsToDownload);
    toCopy = v12;
  }

  v11 = self->_has;
  if ((v11 & 0x10) != 0)
  {
    *(toCopy + 50) = self->_newestFirst;
    *(toCopy + 52) |= 0x10u;
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

  *(toCopy + 48) = self->_ignoreCallingDeviceChanges;
  *(toCopy + 52) |= 4u;
  if ((*&self->_has & 8) != 0)
  {
LABEL_16:
    *(toCopy + 49) = self->_includeMergeableDeltas;
    *(toCopy + 52) |= 8u;
  }

LABEL_17:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_syncContinuationToken, v11, zone);
  v13 = *(v10 + 32);
  *(v10 + 32) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_zoneIdentifier, v14, zone);
  v16 = *(v10 + 40);
  *(v10 + 40) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_requestedFields, v17, zone);
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

  v22 = objc_msgSend_copyWithZone_(self->_assetsToDownload, v20, zone);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_43;
  }

  syncContinuationToken = self->_syncContinuationToken;
  v9 = equalCopy[4];
  if (syncContinuationToken | v9)
  {
    if (!objc_msgSend_isEqual_(syncContinuationToken, v7, v9))
    {
      goto LABEL_43;
    }
  }

  zoneIdentifier = self->_zoneIdentifier;
  v11 = equalCopy[5];
  if (zoneIdentifier | v11)
  {
    if (!objc_msgSend_isEqual_(zoneIdentifier, v7, v11))
    {
      goto LABEL_43;
    }
  }

  requestedFields = self->_requestedFields;
  v13 = equalCopy[3];
  if (requestedFields | v13)
  {
    if (!objc_msgSend_isEqual_(requestedFields, v7, v13))
    {
      goto LABEL_43;
    }
  }

  has = self->_has;
  v15 = *(equalCopy + 52);
  if (has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_maxChanges != *(equalCopy + 4))
    {
      goto LABEL_43;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_43;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_requestedChangeTypes != *(equalCopy + 5))
    {
      goto LABEL_43;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_43;
  }

  assetsToDownload = self->_assetsToDownload;
  v17 = equalCopy[1];
  if (assetsToDownload | v17)
  {
    if (!objc_msgSend_isEqual_(assetsToDownload, v7, v17))
    {
      goto LABEL_43;
    }

    has = self->_has;
    v15 = *(equalCopy + 52);
  }

  if ((has & 0x10) != 0)
  {
    if ((v15 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    v19 = *(equalCopy + 50);
    if (self->_newestFirst)
    {
      if ((*(equalCopy + 50) & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (*(equalCopy + 50))
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

    v20 = *(equalCopy + 48);
    if (self->_ignoreCallingDeviceChanges)
    {
      if ((equalCopy[6] & 1) == 0)
      {
        goto LABEL_43;
      }
    }

    else if (equalCopy[6])
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
        if (*(equalCopy + 49))
        {
          goto LABEL_45;
        }
      }

      else if (!*(equalCopy + 49))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 4);
  v14 = fromCopy;
  if (v5)
  {
    objc_msgSend_setSyncContinuationToken_(self, fromCopy, v5);
    fromCopy = v14;
  }

  zoneIdentifier = self->_zoneIdentifier;
  v7 = *(fromCopy + 5);
  if (zoneIdentifier)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_mergeFrom_(zoneIdentifier, fromCopy, v7);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_setZoneIdentifier_(self, fromCopy, v7);
  }

  fromCopy = v14;
LABEL_9:
  requestedFields = self->_requestedFields;
  v9 = *(fromCopy + 3);
  if (requestedFields)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    objc_msgSend_mergeFrom_(requestedFields, fromCopy, v9);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    objc_msgSend_setRequestedFields_(self, fromCopy, v9);
  }

  fromCopy = v14;
LABEL_15:
  v10 = *(fromCopy + 52);
  if (v10)
  {
    self->_maxChanges = *(fromCopy + 4);
    *&self->_has |= 1u;
    v10 = *(fromCopy + 52);
  }

  if ((v10 & 2) != 0)
  {
    self->_requestedChangeTypes = *(fromCopy + 5);
    *&self->_has |= 2u;
  }

  assetsToDownload = self->_assetsToDownload;
  v12 = *(fromCopy + 1);
  if (assetsToDownload)
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    objc_msgSend_mergeFrom_(assetsToDownload, fromCopy, v12);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_25;
    }

    objc_msgSend_setAssetsToDownload_(self, fromCopy, v12);
  }

  fromCopy = v14;
LABEL_25:
  v13 = *(fromCopy + 52);
  if ((v13 & 0x10) != 0)
  {
    self->_newestFirst = *(fromCopy + 50);
    *&self->_has |= 0x10u;
    v13 = *(fromCopy + 52);
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

  else if ((*(fromCopy + 52) & 4) == 0)
  {
    goto LABEL_27;
  }

  self->_ignoreCallingDeviceChanges = *(fromCopy + 48);
  *&self->_has |= 4u;
  if ((*(fromCopy + 52) & 8) != 0)
  {
LABEL_28:
    self->_includeMergeableDeltas = *(fromCopy + 49);
    *&self->_has |= 8u;
  }

LABEL_29:

  MEMORY[0x2821F96F8]();
}

@end