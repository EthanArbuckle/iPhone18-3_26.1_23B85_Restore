@interface CKDPRecordRetrieveRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasShouldFailBatch:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPRecordRetrieveRequest

+ (id)options
{
  if (qword_280D55070 != -1)
  {
    dispatch_once(&qword_280D55070, &unk_28385DF40);
  }

  v3 = qword_280D55068;

  return v3;
}

- (void)setHasShouldFailBatch:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordRetrieveRequest;
  v4 = [(CKDPRecordRetrieveRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  recordIdentifier = self->_recordIdentifier;
  if (recordIdentifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(recordIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"recordIdentifier");
  }

  requestedFields = self->_requestedFields;
  if (requestedFields)
  {
    v11 = objc_msgSend_dictionaryRepresentation(requestedFields, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"requestedFields");
  }

  versionETag = self->_versionETag;
  if (versionETag)
  {
    objc_msgSend_setObject_forKey_(v6, v4, versionETag, @"versionETag");
  }

  clientVersionETag = self->_clientVersionETag;
  if (clientVersionETag)
  {
    objc_msgSend_setObject_forKey_(v6, v4, clientVersionETag, @"clientVersionETag");
  }

  getAssetURL = self->_getAssetURL;
  if (getAssetURL)
  {
    v16 = objc_msgSend_dictionaryRepresentation(getAssetURL, v4, clientVersionETag);
    objc_msgSend_setObject_forKey_(v6, v17, v16, @"getAssetURL");
  }

  assetsToDownload = self->_assetsToDownload;
  if (assetsToDownload)
  {
    v19 = objc_msgSend_dictionaryRepresentation(assetsToDownload, v4, clientVersionETag);
    objc_msgSend_setObject_forKey_(v6, v20, v19, @"assetsToDownload");
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v22 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_shouldFailBatch);
    objc_msgSend_setObject_forKey_(v6, v23, v22, @"shouldFailBatch");

    has = self->_has;
  }

  if (has)
  {
    v24 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_requestEncryptedAssetUserIdentifiers);
    objc_msgSend_setObject_forKey_(v6, v25, v24, @"requestEncryptedAssetUserIdentifiers");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_recordIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_requestedFields)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_versionETag)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_clientVersionETag)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_getAssetURL)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_assetsToDownload)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    shouldFailBatch = self->_shouldFailBatch;
    PBDataWriterWriteBOOLField();
    v4 = v8;
    has = self->_has;
  }

  if (has)
  {
    requestEncryptedAssetUserIdentifiers = self->_requestEncryptedAssetUserIdentifiers;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  recordIdentifier = self->_recordIdentifier;
  v13 = v4;
  if (recordIdentifier)
  {
    objc_msgSend_setRecordIdentifier_(v4, v5, recordIdentifier);
    v4 = v13;
  }

  requestedFields = self->_requestedFields;
  if (requestedFields)
  {
    objc_msgSend_setRequestedFields_(v13, v5, requestedFields);
    v4 = v13;
  }

  versionETag = self->_versionETag;
  if (versionETag)
  {
    objc_msgSend_setVersionETag_(v13, v5, versionETag);
    v4 = v13;
  }

  clientVersionETag = self->_clientVersionETag;
  if (clientVersionETag)
  {
    objc_msgSend_setClientVersionETag_(v13, v5, clientVersionETag);
    v4 = v13;
  }

  getAssetURL = self->_getAssetURL;
  if (getAssetURL)
  {
    objc_msgSend_setGetAssetURL_(v13, v5, getAssetURL);
    v4 = v13;
  }

  assetsToDownload = self->_assetsToDownload;
  if (assetsToDownload)
  {
    objc_msgSend_setAssetsToDownload_(v13, v5, assetsToDownload);
    v4 = v13;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[57] = self->_shouldFailBatch;
    v4[60] |= 2u;
    has = self->_has;
  }

  if (has)
  {
    v4[56] = self->_requestEncryptedAssetUserIdentifiers;
    v4[60] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_recordIdentifier, v11, a3);
  v13 = *(v10 + 32);
  *(v10 + 32) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_requestedFields, v14, a3);
  v16 = *(v10 + 40);
  *(v10 + 40) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_versionETag, v17, a3);
  v19 = *(v10 + 48);
  *(v10 + 48) = v18;

  v21 = objc_msgSend_copyWithZone_(self->_clientVersionETag, v20, a3);
  v22 = *(v10 + 16);
  *(v10 + 16) = v21;

  v24 = objc_msgSend_copyWithZone_(self->_getAssetURL, v23, a3);
  v25 = *(v10 + 24);
  *(v10 + 24) = v24;

  v27 = objc_msgSend_copyWithZone_(self->_assetsToDownload, v26, a3);
  v28 = *(v10 + 8);
  *(v10 + 8) = v27;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v10 + 57) = self->_shouldFailBatch;
    *(v10 + 60) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v10 + 56) = self->_requestEncryptedAssetUserIdentifiers;
    *(v10 + 60) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_22;
  }

  recordIdentifier = self->_recordIdentifier;
  v9 = v4[4];
  if (recordIdentifier | v9)
  {
    if (!objc_msgSend_isEqual_(recordIdentifier, v7, v9))
    {
      goto LABEL_22;
    }
  }

  requestedFields = self->_requestedFields;
  v11 = v4[5];
  if (requestedFields | v11)
  {
    if (!objc_msgSend_isEqual_(requestedFields, v7, v11))
    {
      goto LABEL_22;
    }
  }

  versionETag = self->_versionETag;
  v13 = v4[6];
  if (versionETag | v13)
  {
    if (!objc_msgSend_isEqual_(versionETag, v7, v13))
    {
      goto LABEL_22;
    }
  }

  clientVersionETag = self->_clientVersionETag;
  v15 = v4[2];
  if (clientVersionETag | v15)
  {
    if (!objc_msgSend_isEqual_(clientVersionETag, v7, v15))
    {
      goto LABEL_22;
    }
  }

  getAssetURL = self->_getAssetURL;
  v17 = v4[3];
  if (getAssetURL | v17)
  {
    if (!objc_msgSend_isEqual_(getAssetURL, v7, v17))
    {
      goto LABEL_22;
    }
  }

  assetsToDownload = self->_assetsToDownload;
  v19 = v4[1];
  if (assetsToDownload | v19)
  {
    if (!objc_msgSend_isEqual_(assetsToDownload, v7, v19))
    {
      goto LABEL_22;
    }
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 60) & 2) == 0)
    {
      goto LABEL_16;
    }

LABEL_22:
    v20 = 0;
    goto LABEL_23;
  }

  if ((*(v4 + 60) & 2) == 0)
  {
    goto LABEL_22;
  }

  v22 = *(v4 + 57);
  if (self->_shouldFailBatch)
  {
    if ((*(v4 + 57) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (*(v4 + 57))
  {
    goto LABEL_22;
  }

LABEL_16:
  v20 = (*(v4 + 60) & 1) == 0;
  if (*&self->_has)
  {
    if (*(v4 + 60))
    {
      if (self->_requestEncryptedAssetUserIdentifiers)
      {
        if (v4[7])
        {
          goto LABEL_30;
        }
      }

      else if (!*(v4 + 56))
      {
LABEL_30:
        v20 = 1;
        goto LABEL_23;
      }
    }

    goto LABEL_22;
  }

LABEL_23:

  return v20;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_recordIdentifier, a2, v2);
  v7 = objc_msgSend_hash(self->_requestedFields, v5, v6);
  v10 = objc_msgSend_hash(self->_versionETag, v8, v9);
  v13 = objc_msgSend_hash(self->_clientVersionETag, v11, v12);
  v16 = objc_msgSend_hash(self->_getAssetURL, v14, v15);
  v19 = objc_msgSend_hash(self->_assetsToDownload, v17, v18);
  if ((*&self->_has & 2) != 0)
  {
    v20 = 2654435761 * self->_shouldFailBatch;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v21 = 0;
    return v7 ^ v4 ^ v10 ^ v13 ^ v16 ^ v19 ^ v20 ^ v21;
  }

  v20 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21 = 2654435761 * self->_requestEncryptedAssetUserIdentifiers;
  return v7 ^ v4 ^ v10 ^ v13 ^ v16 ^ v19 ^ v20 ^ v21;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  recordIdentifier = self->_recordIdentifier;
  v6 = *(v4 + 4);
  v16 = v4;
  if (recordIdentifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(recordIdentifier, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setRecordIdentifier_(self, v4, v6);
  }

  v4 = v16;
LABEL_7:
  requestedFields = self->_requestedFields;
  v8 = *(v4 + 5);
  if (requestedFields)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    objc_msgSend_mergeFrom_(requestedFields, v4, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    objc_msgSend_setRequestedFields_(self, v4, v8);
  }

  v4 = v16;
LABEL_13:
  v9 = *(v4 + 6);
  if (v9)
  {
    objc_msgSend_setVersionETag_(self, v4, v9);
    v4 = v16;
  }

  v10 = *(v4 + 2);
  if (v10)
  {
    objc_msgSend_setClientVersionETag_(self, v4, v10);
    v4 = v16;
  }

  getAssetURL = self->_getAssetURL;
  v12 = *(v4 + 3);
  if (getAssetURL)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    objc_msgSend_mergeFrom_(getAssetURL, v4, v12);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    objc_msgSend_setGetAssetURL_(self, v4, v12);
  }

  v4 = v16;
LABEL_23:
  assetsToDownload = self->_assetsToDownload;
  v14 = *(v4 + 1);
  if (assetsToDownload)
  {
    if (!v14)
    {
      goto LABEL_29;
    }

    objc_msgSend_mergeFrom_(assetsToDownload, v4, v14);
  }

  else
  {
    if (!v14)
    {
      goto LABEL_29;
    }

    objc_msgSend_setAssetsToDownload_(self, v4, v14);
  }

  v4 = v16;
LABEL_29:
  v15 = *(v4 + 60);
  if ((v15 & 2) != 0)
  {
    self->_shouldFailBatch = *(v4 + 57);
    *&self->_has |= 2u;
    v15 = *(v4 + 60);
  }

  if (v15)
  {
    self->_requestEncryptedAssetUserIdentifiers = *(v4 + 56);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end