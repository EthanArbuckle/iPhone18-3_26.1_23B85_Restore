@interface CKDPAsset
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasConstructedAssetDownloadURLExpiration:(BOOL)a3;
- (void)setHasDownloadTokenExpiration:(BOOL)a3;
- (void)setHasDownloadURLExpiration:(BOOL)a3;
- (void)setHasSize:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPAsset

- (void)setHasSize:(BOOL)a3
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

- (void)setHasDownloadURLExpiration:(BOOL)a3
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

- (void)setHasDownloadTokenExpiration:(BOOL)a3
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

- (void)setHasConstructedAssetDownloadURLExpiration:(BOOL)a3
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
  v11.super_class = CKDPAsset;
  v4 = [(CKDPAsset *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  owner = self->_owner;
  if (owner)
  {
    objc_msgSend_setObject_forKey_(v4, v5, owner, @"owner");
  }

  signature = self->_signature;
  if (signature)
  {
    objc_msgSend_setObject_forKey_(v6, v5, signature, @"signature");
  }

  if ((*&self->_has & 0x10) != 0)
  {
    v9 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v5, self->_size);
    objc_msgSend_setObject_forKey_(v6, v10, v9, @"size");
  }

  downloadToken = self->_downloadToken;
  if (downloadToken)
  {
    objc_msgSend_setObject_forKey_(v6, v5, downloadToken, @"downloadToken");
  }

  downloadRequest = self->_downloadRequest;
  if (downloadRequest)
  {
    objc_msgSend_setObject_forKey_(v6, v5, downloadRequest, @"downloadRequest");
  }

  contentBaseURL = self->_contentBaseURL;
  if (contentBaseURL)
  {
    objc_msgSend_setObject_forKey_(v6, v5, contentBaseURL, @"contentBaseURL");
  }

  requestor = self->_requestor;
  if (requestor)
  {
    objc_msgSend_setObject_forKey_(v6, v5, requestor, @"requestor");
  }

  recordId = self->_recordId;
  if (recordId)
  {
    v16 = objc_msgSend_dictionaryRepresentation(recordId, v5, requestor);
    objc_msgSend_setObject_forKey_(v6, v17, v16, @"recordId");
  }

  uploadReceipt = self->_uploadReceipt;
  if (uploadReceipt)
  {
    objc_msgSend_setObject_forKey_(v6, v5, uploadReceipt, @"uploadReceipt");
  }

  downloadBaseURL = self->_downloadBaseURL;
  if (downloadBaseURL)
  {
    objc_msgSend_setObject_forKey_(v6, v5, downloadBaseURL, @"downloadBaseURL");
  }

  if ((*&self->_has & 8) != 0)
  {
    v20 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v5, self->_downloadURLExpiration);
    objc_msgSend_setObject_forKey_(v6, v21, v20, @"downloadURLExpiration");
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    v23 = objc_msgSend_dictionaryRepresentation(protectionInfo, v5, downloadBaseURL);
    objc_msgSend_setObject_forKey_(v6, v24, v23, @"protectionInfo");
  }

  referenceSignature = self->_referenceSignature;
  if (referenceSignature)
  {
    objc_msgSend_setObject_forKey_(v6, v5, referenceSignature, @"referenceSignature");
  }

  if ((*&self->_has & 4) != 0)
  {
    v26 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v5, self->_downloadTokenExpiration);
    objc_msgSend_setObject_forKey_(v6, v27, v26, @"downloadTokenExpiration");
  }

  clearAssetKey = self->_clearAssetKey;
  if (clearAssetKey)
  {
    objc_msgSend_setObject_forKey_(v6, v5, clearAssetKey, @"clearAssetKey");
  }

  assetAuthorizationResponseUUID = self->_assetAuthorizationResponseUUID;
  if (assetAuthorizationResponseUUID)
  {
    objc_msgSend_setObject_forKey_(v6, v5, assetAuthorizationResponseUUID, @"assetAuthorizationResponseUUID");
  }

  constructedAssetDownloadURL = self->_constructedAssetDownloadURL;
  if (constructedAssetDownloadURL)
  {
    objc_msgSend_setObject_forKey_(v6, v5, constructedAssetDownloadURL, @"constructedAssetDownloadURL");
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v32 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v5, self->_constructedAssetDownloadURLExpiration);
    objc_msgSend_setObject_forKey_(v6, v33, v32, @"constructedAssetDownloadURLExpiration");

    has = self->_has;
  }

  if (has)
  {
    v34 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v5, self->_constructedAssetDownloadEstimatedSize);
    objc_msgSend_setObject_forKey_(v6, v35, v34, @"constructedAssetDownloadEstimatedSize");
  }

  constructedAssetDownloadParameters = self->_constructedAssetDownloadParameters;
  if (constructedAssetDownloadParameters)
  {
    objc_msgSend_setObject_forKey_(v6, v5, constructedAssetDownloadParameters, @"constructedAssetDownloadParameters");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v11 = v4;
  if (self->_owner)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if (self->_signature)
  {
    PBDataWriterWriteDataField();
    v4 = v11;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    size = self->_size;
    PBDataWriterWriteInt64Field();
    v4 = v11;
  }

  if (self->_downloadToken)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if (self->_downloadRequest)
  {
    PBDataWriterWriteDataField();
    v4 = v11;
  }

  if (self->_contentBaseURL)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if (self->_requestor)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if (self->_recordId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v11;
  }

  if (self->_uploadReceipt)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if (self->_downloadBaseURL)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if ((*&self->_has & 8) != 0)
  {
    downloadURLExpiration = self->_downloadURLExpiration;
    PBDataWriterWriteInt64Field();
    v4 = v11;
  }

  if (self->_protectionInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v11;
  }

  if (self->_referenceSignature)
  {
    PBDataWriterWriteDataField();
    v4 = v11;
  }

  if ((*&self->_has & 4) != 0)
  {
    downloadTokenExpiration = self->_downloadTokenExpiration;
    PBDataWriterWriteInt64Field();
    v4 = v11;
  }

  if (self->_clearAssetKey)
  {
    PBDataWriterWriteDataField();
    v4 = v11;
  }

  if (self->_assetAuthorizationResponseUUID)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  if (self->_constructedAssetDownloadURL)
  {
    PBDataWriterWriteStringField();
    v4 = v11;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    constructedAssetDownloadURLExpiration = self->_constructedAssetDownloadURLExpiration;
    PBDataWriterWriteInt64Field();
    v4 = v11;
    has = self->_has;
  }

  if (has)
  {
    constructedAssetDownloadEstimatedSize = self->_constructedAssetDownloadEstimatedSize;
    PBDataWriterWriteInt64Field();
    v4 = v11;
  }

  if (self->_constructedAssetDownloadParameters)
  {
    PBDataWriterWriteDataField();
    v4 = v11;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  owner = self->_owner;
  v22 = v4;
  if (owner)
  {
    objc_msgSend_setOwner_(v4, v5, owner);
    v4 = v22;
  }

  signature = self->_signature;
  if (signature)
  {
    objc_msgSend_setSignature_(v22, v5, signature);
    v4 = v22;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(v4 + 5) = self->_size;
    *(v4 + 168) |= 0x10u;
  }

  downloadToken = self->_downloadToken;
  if (downloadToken)
  {
    objc_msgSend_setDownloadToken_(v22, v5, downloadToken);
    v4 = v22;
  }

  downloadRequest = self->_downloadRequest;
  if (downloadRequest)
  {
    objc_msgSend_setDownloadRequest_(v22, v5, downloadRequest);
    v4 = v22;
  }

  contentBaseURL = self->_contentBaseURL;
  if (contentBaseURL)
  {
    objc_msgSend_setContentBaseURL_(v22, v5, contentBaseURL);
    v4 = v22;
  }

  requestor = self->_requestor;
  if (requestor)
  {
    objc_msgSend_setRequestor_(v22, v5, requestor);
    v4 = v22;
  }

  recordId = self->_recordId;
  if (recordId)
  {
    objc_msgSend_setRecordId_(v22, v5, recordId);
    v4 = v22;
  }

  uploadReceipt = self->_uploadReceipt;
  if (uploadReceipt)
  {
    objc_msgSend_setUploadReceipt_(v22, v5, uploadReceipt);
    v4 = v22;
  }

  downloadBaseURL = self->_downloadBaseURL;
  if (downloadBaseURL)
  {
    objc_msgSend_setDownloadBaseURL_(v22, v5, downloadBaseURL);
    v4 = v22;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(v4 + 4) = self->_downloadURLExpiration;
    *(v4 + 168) |= 8u;
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    objc_msgSend_setProtectionInfo_(v22, v5, protectionInfo);
    v4 = v22;
  }

  referenceSignature = self->_referenceSignature;
  if (referenceSignature)
  {
    objc_msgSend_setReferenceSignature_(v22, v5, referenceSignature);
    v4 = v22;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v4 + 3) = self->_downloadTokenExpiration;
    *(v4 + 168) |= 4u;
  }

  clearAssetKey = self->_clearAssetKey;
  if (clearAssetKey)
  {
    objc_msgSend_setClearAssetKey_(v22, v5, clearAssetKey);
    v4 = v22;
  }

  assetAuthorizationResponseUUID = self->_assetAuthorizationResponseUUID;
  if (assetAuthorizationResponseUUID)
  {
    objc_msgSend_setAssetAuthorizationResponseUUID_(v22, v5, assetAuthorizationResponseUUID);
    v4 = v22;
  }

  constructedAssetDownloadURL = self->_constructedAssetDownloadURL;
  if (constructedAssetDownloadURL)
  {
    objc_msgSend_setConstructedAssetDownloadURL_(v22, v5, constructedAssetDownloadURL);
    v4 = v22;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_constructedAssetDownloadURLExpiration;
    *(v4 + 168) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_constructedAssetDownloadEstimatedSize;
    *(v4 + 168) |= 1u;
  }

  constructedAssetDownloadParameters = self->_constructedAssetDownloadParameters;
  if (constructedAssetDownloadParameters)
  {
    objc_msgSend_setConstructedAssetDownloadParameters_(v22, v5, constructedAssetDownloadParameters);
    v4 = v22;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_owner, v11, a3);
  v13 = *(v10 + 112);
  *(v10 + 112) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_signature, v14, a3);
  v16 = *(v10 + 152);
  *(v10 + 152) = v15;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v10 + 40) = self->_size;
    *(v10 + 168) |= 0x10u;
  }

  v18 = objc_msgSend_copyWithZone_(self->_downloadToken, v17, a3);
  v19 = *(v10 + 104);
  *(v10 + 104) = v18;

  v21 = objc_msgSend_copyWithZone_(self->_downloadRequest, v20, a3);
  v22 = *(v10 + 96);
  *(v10 + 96) = v21;

  v24 = objc_msgSend_copyWithZone_(self->_contentBaseURL, v23, a3);
  v25 = *(v10 + 80);
  *(v10 + 80) = v24;

  v27 = objc_msgSend_copyWithZone_(self->_requestor, v26, a3);
  v28 = *(v10 + 144);
  *(v10 + 144) = v27;

  v30 = objc_msgSend_copyWithZone_(self->_recordId, v29, a3);
  v31 = *(v10 + 128);
  *(v10 + 128) = v30;

  v33 = objc_msgSend_copyWithZone_(self->_uploadReceipt, v32, a3);
  v34 = *(v10 + 160);
  *(v10 + 160) = v33;

  v36 = objc_msgSend_copyWithZone_(self->_downloadBaseURL, v35, a3);
  v37 = *(v10 + 88);
  *(v10 + 88) = v36;

  if ((*&self->_has & 8) != 0)
  {
    *(v10 + 32) = self->_downloadURLExpiration;
    *(v10 + 168) |= 8u;
  }

  v39 = objc_msgSend_copyWithZone_(self->_protectionInfo, v38, a3);
  v40 = *(v10 + 120);
  *(v10 + 120) = v39;

  v42 = objc_msgSend_copyWithZone_(self->_referenceSignature, v41, a3);
  v43 = *(v10 + 136);
  *(v10 + 136) = v42;

  if ((*&self->_has & 4) != 0)
  {
    *(v10 + 24) = self->_downloadTokenExpiration;
    *(v10 + 168) |= 4u;
  }

  v45 = objc_msgSend_copyWithZone_(self->_clearAssetKey, v44, a3);
  v46 = *(v10 + 56);
  *(v10 + 56) = v45;

  v48 = objc_msgSend_copyWithZone_(self->_assetAuthorizationResponseUUID, v47, a3);
  v49 = *(v10 + 48);
  *(v10 + 48) = v48;

  v51 = objc_msgSend_copyWithZone_(self->_constructedAssetDownloadURL, v50, a3);
  v52 = *(v10 + 72);
  *(v10 + 72) = v51;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v10 + 16) = self->_constructedAssetDownloadURLExpiration;
    *(v10 + 168) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v10 + 8) = self->_constructedAssetDownloadEstimatedSize;
    *(v10 + 168) |= 1u;
  }

  v55 = objc_msgSend_copyWithZone_(self->_constructedAssetDownloadParameters, v53, a3);
  v56 = *(v10 + 64);
  *(v10 + 64) = v55;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_57;
  }

  owner = self->_owner;
  v9 = v4[14];
  if (owner | v9)
  {
    if (!objc_msgSend_isEqual_(owner, v7, v9))
    {
      goto LABEL_57;
    }
  }

  signature = self->_signature;
  v11 = v4[19];
  if (signature | v11)
  {
    if (!objc_msgSend_isEqual_(signature, v7, v11))
    {
      goto LABEL_57;
    }
  }

  v12 = *(v4 + 168);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((v4[21] & 0x10) == 0 || self->_size != v4[5])
    {
      goto LABEL_57;
    }
  }

  else if ((v4[21] & 0x10) != 0)
  {
LABEL_57:
    isEqual = 0;
    goto LABEL_58;
  }

  downloadToken = self->_downloadToken;
  v14 = v4[13];
  if (downloadToken | v14 && !objc_msgSend_isEqual_(downloadToken, v7, v14))
  {
    goto LABEL_57;
  }

  downloadRequest = self->_downloadRequest;
  v16 = v4[12];
  if (downloadRequest | v16)
  {
    if (!objc_msgSend_isEqual_(downloadRequest, v7, v16))
    {
      goto LABEL_57;
    }
  }

  contentBaseURL = self->_contentBaseURL;
  v18 = v4[10];
  if (contentBaseURL | v18)
  {
    if (!objc_msgSend_isEqual_(contentBaseURL, v7, v18))
    {
      goto LABEL_57;
    }
  }

  requestor = self->_requestor;
  v20 = v4[18];
  if (requestor | v20)
  {
    if (!objc_msgSend_isEqual_(requestor, v7, v20))
    {
      goto LABEL_57;
    }
  }

  recordId = self->_recordId;
  v22 = v4[16];
  if (recordId | v22)
  {
    if (!objc_msgSend_isEqual_(recordId, v7, v22))
    {
      goto LABEL_57;
    }
  }

  uploadReceipt = self->_uploadReceipt;
  v24 = v4[20];
  if (uploadReceipt | v24)
  {
    if (!objc_msgSend_isEqual_(uploadReceipt, v7, v24))
    {
      goto LABEL_57;
    }
  }

  downloadBaseURL = self->_downloadBaseURL;
  v26 = v4[11];
  if (downloadBaseURL | v26)
  {
    if (!objc_msgSend_isEqual_(downloadBaseURL, v7, v26))
    {
      goto LABEL_57;
    }
  }

  v27 = *(v4 + 168);
  if ((*&self->_has & 8) != 0)
  {
    if ((v4[21] & 8) == 0 || self->_downloadURLExpiration != v4[4])
    {
      goto LABEL_57;
    }
  }

  else if ((v4[21] & 8) != 0)
  {
    goto LABEL_57;
  }

  protectionInfo = self->_protectionInfo;
  v29 = v4[15];
  if (protectionInfo | v29 && !objc_msgSend_isEqual_(protectionInfo, v7, v29))
  {
    goto LABEL_57;
  }

  referenceSignature = self->_referenceSignature;
  v31 = v4[17];
  if (referenceSignature | v31)
  {
    if (!objc_msgSend_isEqual_(referenceSignature, v7, v31))
    {
      goto LABEL_57;
    }
  }

  v32 = *(v4 + 168);
  if ((*&self->_has & 4) != 0)
  {
    if ((v4[21] & 4) == 0 || self->_downloadTokenExpiration != v4[3])
    {
      goto LABEL_57;
    }
  }

  else if ((v4[21] & 4) != 0)
  {
    goto LABEL_57;
  }

  clearAssetKey = self->_clearAssetKey;
  v34 = v4[7];
  if (clearAssetKey | v34 && !objc_msgSend_isEqual_(clearAssetKey, v7, v34))
  {
    goto LABEL_57;
  }

  assetAuthorizationResponseUUID = self->_assetAuthorizationResponseUUID;
  v36 = v4[6];
  if (assetAuthorizationResponseUUID | v36)
  {
    if (!objc_msgSend_isEqual_(assetAuthorizationResponseUUID, v7, v36))
    {
      goto LABEL_57;
    }
  }

  constructedAssetDownloadURL = self->_constructedAssetDownloadURL;
  v38 = v4[9];
  if (constructedAssetDownloadURL | v38)
  {
    if (!objc_msgSend_isEqual_(constructedAssetDownloadURL, v7, v38))
    {
      goto LABEL_57;
    }
  }

  v39 = *(v4 + 168);
  if ((*&self->_has & 2) != 0)
  {
    if ((v4[21] & 2) == 0 || self->_constructedAssetDownloadURLExpiration != v4[2])
    {
      goto LABEL_57;
    }
  }

  else if ((v4[21] & 2) != 0)
  {
    goto LABEL_57;
  }

  if (*&self->_has)
  {
    if ((v4[21] & 1) == 0 || self->_constructedAssetDownloadEstimatedSize != v4[1])
    {
      goto LABEL_57;
    }
  }

  else if (v4[21])
  {
    goto LABEL_57;
  }

  constructedAssetDownloadParameters = self->_constructedAssetDownloadParameters;
  v41 = v4[8];
  if (constructedAssetDownloadParameters | v41)
  {
    isEqual = objc_msgSend_isEqual_(constructedAssetDownloadParameters, v7, v41);
  }

  else
  {
    isEqual = 1;
  }

LABEL_58:

  return isEqual;
}

- (unint64_t)hash
{
  v51 = objc_msgSend_hash(self->_owner, a2, v2);
  v50 = objc_msgSend_hash(self->_signature, v4, v5);
  if ((*&self->_has & 0x10) != 0)
  {
    v49 = 2654435761 * self->_size;
  }

  else
  {
    v49 = 0;
  }

  v48 = objc_msgSend_hash(self->_downloadToken, v6, v7);
  v47 = objc_msgSend_hash(self->_downloadRequest, v8, v9);
  v46 = objc_msgSend_hash(self->_contentBaseURL, v10, v11);
  v45 = objc_msgSend_hash(self->_requestor, v12, v13);
  v44 = objc_msgSend_hash(self->_recordId, v14, v15);
  v43 = objc_msgSend_hash(self->_uploadReceipt, v16, v17);
  v22 = objc_msgSend_hash(self->_downloadBaseURL, v18, v19);
  if ((*&self->_has & 8) != 0)
  {
    v23 = 2654435761 * self->_downloadURLExpiration;
  }

  else
  {
    v23 = 0;
  }

  v24 = objc_msgSend_hash(self->_protectionInfo, v20, v21);
  v29 = objc_msgSend_hash(self->_referenceSignature, v25, v26);
  if ((*&self->_has & 4) != 0)
  {
    v30 = 2654435761 * self->_downloadTokenExpiration;
  }

  else
  {
    v30 = 0;
  }

  v31 = objc_msgSend_hash(self->_clearAssetKey, v27, v28);
  v34 = objc_msgSend_hash(self->_assetAuthorizationResponseUUID, v32, v33);
  v37 = objc_msgSend_hash(self->_constructedAssetDownloadURL, v35, v36);
  if ((*&self->_has & 2) != 0)
  {
    v40 = 2654435761 * self->_constructedAssetDownloadURLExpiration;
    if (*&self->_has)
    {
      goto LABEL_12;
    }

LABEL_14:
    v41 = 0;
    return v50 ^ v51 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v22 ^ v23 ^ v24 ^ v29 ^ v30 ^ v31 ^ v34 ^ v37 ^ v40 ^ v41 ^ objc_msgSend_hash(self->_constructedAssetDownloadParameters, v38, v39);
  }

  v40 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_12:
  v41 = 2654435761 * self->_constructedAssetDownloadEstimatedSize;
  return v50 ^ v51 ^ v49 ^ v48 ^ v47 ^ v46 ^ v45 ^ v44 ^ v43 ^ v22 ^ v23 ^ v24 ^ v29 ^ v30 ^ v31 ^ v34 ^ v37 ^ v40 ^ v41 ^ objc_msgSend_hash(self->_constructedAssetDownloadParameters, v38, v39);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[14];
  v23 = v4;
  if (v5)
  {
    objc_msgSend_setOwner_(self, v4, v5);
    v4 = v23;
  }

  v6 = v4[19];
  if (v6)
  {
    objc_msgSend_setSignature_(self, v4, v6);
    v4 = v23;
  }

  if ((v4[21] & 0x10) != 0)
  {
    self->_size = v4[5];
    *&self->_has |= 0x10u;
  }

  v7 = v4[13];
  if (v7)
  {
    objc_msgSend_setDownloadToken_(self, v4, v7);
    v4 = v23;
  }

  v8 = v4[12];
  if (v8)
  {
    objc_msgSend_setDownloadRequest_(self, v4, v8);
    v4 = v23;
  }

  v9 = v4[10];
  if (v9)
  {
    objc_msgSend_setContentBaseURL_(self, v4, v9);
    v4 = v23;
  }

  v10 = v4[18];
  if (v10)
  {
    objc_msgSend_setRequestor_(self, v4, v10);
    v4 = v23;
  }

  recordId = self->_recordId;
  v12 = v4[16];
  if (recordId)
  {
    if (!v12)
    {
      goto LABEL_21;
    }

    objc_msgSend_mergeFrom_(recordId, v4, v12);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_21;
    }

    objc_msgSend_setRecordId_(self, v4, v12);
  }

  v4 = v23;
LABEL_21:
  v13 = v4[20];
  if (v13)
  {
    objc_msgSend_setUploadReceipt_(self, v4, v13);
    v4 = v23;
  }

  v14 = v4[11];
  if (v14)
  {
    objc_msgSend_setDownloadBaseURL_(self, v4, v14);
    v4 = v23;
  }

  if ((v4[21] & 8) != 0)
  {
    self->_downloadURLExpiration = v4[4];
    *&self->_has |= 8u;
  }

  protectionInfo = self->_protectionInfo;
  v16 = v4[15];
  if (protectionInfo)
  {
    if (!v16)
    {
      goto LABEL_33;
    }

    objc_msgSend_mergeFrom_(protectionInfo, v4, v16);
  }

  else
  {
    if (!v16)
    {
      goto LABEL_33;
    }

    objc_msgSend_setProtectionInfo_(self, v4, v16);
  }

  v4 = v23;
LABEL_33:
  v17 = v4[17];
  if (v17)
  {
    objc_msgSend_setReferenceSignature_(self, v4, v17);
    v4 = v23;
  }

  if ((v4[21] & 4) != 0)
  {
    self->_downloadTokenExpiration = v4[3];
    *&self->_has |= 4u;
  }

  v18 = v4[7];
  if (v18)
  {
    objc_msgSend_setClearAssetKey_(self, v4, v18);
    v4 = v23;
  }

  v19 = v4[6];
  if (v19)
  {
    objc_msgSend_setAssetAuthorizationResponseUUID_(self, v4, v19);
    v4 = v23;
  }

  v20 = v4[9];
  if (v20)
  {
    objc_msgSend_setConstructedAssetDownloadURL_(self, v4, v20);
    v4 = v23;
  }

  v21 = *(v4 + 168);
  if ((v21 & 2) != 0)
  {
    self->_constructedAssetDownloadURLExpiration = v4[2];
    *&self->_has |= 2u;
    v21 = *(v4 + 168);
  }

  if (v21)
  {
    self->_constructedAssetDownloadEstimatedSize = v4[1];
    *&self->_has |= 1u;
  }

  v22 = v4[8];
  if (v22)
  {
    objc_msgSend_setConstructedAssetDownloadParameters_(self, v4, v22);
  }

  MEMORY[0x2821F96F8]();
}

@end