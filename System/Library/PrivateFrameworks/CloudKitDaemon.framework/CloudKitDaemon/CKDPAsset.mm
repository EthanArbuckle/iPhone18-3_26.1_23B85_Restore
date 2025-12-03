@interface CKDPAsset
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasConstructedAssetDownloadURLExpiration:(BOOL)expiration;
- (void)setHasDownloadTokenExpiration:(BOOL)expiration;
- (void)setHasDownloadURLExpiration:(BOOL)expiration;
- (void)setHasSize:(BOOL)size;
- (void)writeTo:(id)to;
@end

@implementation CKDPAsset

- (void)setHasSize:(BOOL)size
{
  if (size)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xEF | v3;
}

- (void)setHasDownloadURLExpiration:(BOOL)expiration
{
  if (expiration)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasDownloadTokenExpiration:(BOOL)expiration
{
  if (expiration)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasConstructedAssetDownloadURLExpiration:(BOOL)expiration
{
  if (expiration)
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v11 = toCopy;
  if (self->_owner)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_signature)
  {
    PBDataWriterWriteDataField();
    toCopy = v11;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    size = self->_size;
    PBDataWriterWriteInt64Field();
    toCopy = v11;
  }

  if (self->_downloadToken)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_downloadRequest)
  {
    PBDataWriterWriteDataField();
    toCopy = v11;
  }

  if (self->_contentBaseURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_requestor)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_recordId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v11;
  }

  if (self->_uploadReceipt)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_downloadBaseURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if ((*&self->_has & 8) != 0)
  {
    downloadURLExpiration = self->_downloadURLExpiration;
    PBDataWriterWriteInt64Field();
    toCopy = v11;
  }

  if (self->_protectionInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v11;
  }

  if (self->_referenceSignature)
  {
    PBDataWriterWriteDataField();
    toCopy = v11;
  }

  if ((*&self->_has & 4) != 0)
  {
    downloadTokenExpiration = self->_downloadTokenExpiration;
    PBDataWriterWriteInt64Field();
    toCopy = v11;
  }

  if (self->_clearAssetKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v11;
  }

  if (self->_assetAuthorizationResponseUUID)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  if (self->_constructedAssetDownloadURL)
  {
    PBDataWriterWriteStringField();
    toCopy = v11;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    constructedAssetDownloadURLExpiration = self->_constructedAssetDownloadURLExpiration;
    PBDataWriterWriteInt64Field();
    toCopy = v11;
    has = self->_has;
  }

  if (has)
  {
    constructedAssetDownloadEstimatedSize = self->_constructedAssetDownloadEstimatedSize;
    PBDataWriterWriteInt64Field();
    toCopy = v11;
  }

  if (self->_constructedAssetDownloadParameters)
  {
    PBDataWriterWriteDataField();
    toCopy = v11;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  owner = self->_owner;
  v22 = toCopy;
  if (owner)
  {
    objc_msgSend_setOwner_(toCopy, v5, owner);
    toCopy = v22;
  }

  signature = self->_signature;
  if (signature)
  {
    objc_msgSend_setSignature_(v22, v5, signature);
    toCopy = v22;
  }

  if ((*&self->_has & 0x10) != 0)
  {
    *(toCopy + 5) = self->_size;
    *(toCopy + 168) |= 0x10u;
  }

  downloadToken = self->_downloadToken;
  if (downloadToken)
  {
    objc_msgSend_setDownloadToken_(v22, v5, downloadToken);
    toCopy = v22;
  }

  downloadRequest = self->_downloadRequest;
  if (downloadRequest)
  {
    objc_msgSend_setDownloadRequest_(v22, v5, downloadRequest);
    toCopy = v22;
  }

  contentBaseURL = self->_contentBaseURL;
  if (contentBaseURL)
  {
    objc_msgSend_setContentBaseURL_(v22, v5, contentBaseURL);
    toCopy = v22;
  }

  requestor = self->_requestor;
  if (requestor)
  {
    objc_msgSend_setRequestor_(v22, v5, requestor);
    toCopy = v22;
  }

  recordId = self->_recordId;
  if (recordId)
  {
    objc_msgSend_setRecordId_(v22, v5, recordId);
    toCopy = v22;
  }

  uploadReceipt = self->_uploadReceipt;
  if (uploadReceipt)
  {
    objc_msgSend_setUploadReceipt_(v22, v5, uploadReceipt);
    toCopy = v22;
  }

  downloadBaseURL = self->_downloadBaseURL;
  if (downloadBaseURL)
  {
    objc_msgSend_setDownloadBaseURL_(v22, v5, downloadBaseURL);
    toCopy = v22;
  }

  if ((*&self->_has & 8) != 0)
  {
    *(toCopy + 4) = self->_downloadURLExpiration;
    *(toCopy + 168) |= 8u;
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    objc_msgSend_setProtectionInfo_(v22, v5, protectionInfo);
    toCopy = v22;
  }

  referenceSignature = self->_referenceSignature;
  if (referenceSignature)
  {
    objc_msgSend_setReferenceSignature_(v22, v5, referenceSignature);
    toCopy = v22;
  }

  if ((*&self->_has & 4) != 0)
  {
    *(toCopy + 3) = self->_downloadTokenExpiration;
    *(toCopy + 168) |= 4u;
  }

  clearAssetKey = self->_clearAssetKey;
  if (clearAssetKey)
  {
    objc_msgSend_setClearAssetKey_(v22, v5, clearAssetKey);
    toCopy = v22;
  }

  assetAuthorizationResponseUUID = self->_assetAuthorizationResponseUUID;
  if (assetAuthorizationResponseUUID)
  {
    objc_msgSend_setAssetAuthorizationResponseUUID_(v22, v5, assetAuthorizationResponseUUID);
    toCopy = v22;
  }

  constructedAssetDownloadURL = self->_constructedAssetDownloadURL;
  if (constructedAssetDownloadURL)
  {
    objc_msgSend_setConstructedAssetDownloadURL_(v22, v5, constructedAssetDownloadURL);
    toCopy = v22;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_constructedAssetDownloadURLExpiration;
    *(toCopy + 168) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_constructedAssetDownloadEstimatedSize;
    *(toCopy + 168) |= 1u;
  }

  constructedAssetDownloadParameters = self->_constructedAssetDownloadParameters;
  if (constructedAssetDownloadParameters)
  {
    objc_msgSend_setConstructedAssetDownloadParameters_(v22, v5, constructedAssetDownloadParameters);
    toCopy = v22;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_owner, v11, zone);
  v13 = *(v10 + 112);
  *(v10 + 112) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_signature, v14, zone);
  v16 = *(v10 + 152);
  *(v10 + 152) = v15;

  if ((*&self->_has & 0x10) != 0)
  {
    *(v10 + 40) = self->_size;
    *(v10 + 168) |= 0x10u;
  }

  v18 = objc_msgSend_copyWithZone_(self->_downloadToken, v17, zone);
  v19 = *(v10 + 104);
  *(v10 + 104) = v18;

  v21 = objc_msgSend_copyWithZone_(self->_downloadRequest, v20, zone);
  v22 = *(v10 + 96);
  *(v10 + 96) = v21;

  v24 = objc_msgSend_copyWithZone_(self->_contentBaseURL, v23, zone);
  v25 = *(v10 + 80);
  *(v10 + 80) = v24;

  v27 = objc_msgSend_copyWithZone_(self->_requestor, v26, zone);
  v28 = *(v10 + 144);
  *(v10 + 144) = v27;

  v30 = objc_msgSend_copyWithZone_(self->_recordId, v29, zone);
  v31 = *(v10 + 128);
  *(v10 + 128) = v30;

  v33 = objc_msgSend_copyWithZone_(self->_uploadReceipt, v32, zone);
  v34 = *(v10 + 160);
  *(v10 + 160) = v33;

  v36 = objc_msgSend_copyWithZone_(self->_downloadBaseURL, v35, zone);
  v37 = *(v10 + 88);
  *(v10 + 88) = v36;

  if ((*&self->_has & 8) != 0)
  {
    *(v10 + 32) = self->_downloadURLExpiration;
    *(v10 + 168) |= 8u;
  }

  v39 = objc_msgSend_copyWithZone_(self->_protectionInfo, v38, zone);
  v40 = *(v10 + 120);
  *(v10 + 120) = v39;

  v42 = objc_msgSend_copyWithZone_(self->_referenceSignature, v41, zone);
  v43 = *(v10 + 136);
  *(v10 + 136) = v42;

  if ((*&self->_has & 4) != 0)
  {
    *(v10 + 24) = self->_downloadTokenExpiration;
    *(v10 + 168) |= 4u;
  }

  v45 = objc_msgSend_copyWithZone_(self->_clearAssetKey, v44, zone);
  v46 = *(v10 + 56);
  *(v10 + 56) = v45;

  v48 = objc_msgSend_copyWithZone_(self->_assetAuthorizationResponseUUID, v47, zone);
  v49 = *(v10 + 48);
  *(v10 + 48) = v48;

  v51 = objc_msgSend_copyWithZone_(self->_constructedAssetDownloadURL, v50, zone);
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

  v55 = objc_msgSend_copyWithZone_(self->_constructedAssetDownloadParameters, v53, zone);
  v56 = *(v10 + 64);
  *(v10 + 64) = v55;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_57;
  }

  owner = self->_owner;
  v9 = equalCopy[14];
  if (owner | v9)
  {
    if (!objc_msgSend_isEqual_(owner, v7, v9))
    {
      goto LABEL_57;
    }
  }

  signature = self->_signature;
  v11 = equalCopy[19];
  if (signature | v11)
  {
    if (!objc_msgSend_isEqual_(signature, v7, v11))
    {
      goto LABEL_57;
    }
  }

  v12 = *(equalCopy + 168);
  if ((*&self->_has & 0x10) != 0)
  {
    if ((equalCopy[21] & 0x10) == 0 || self->_size != equalCopy[5])
    {
      goto LABEL_57;
    }
  }

  else if ((equalCopy[21] & 0x10) != 0)
  {
LABEL_57:
    isEqual = 0;
    goto LABEL_58;
  }

  downloadToken = self->_downloadToken;
  v14 = equalCopy[13];
  if (downloadToken | v14 && !objc_msgSend_isEqual_(downloadToken, v7, v14))
  {
    goto LABEL_57;
  }

  downloadRequest = self->_downloadRequest;
  v16 = equalCopy[12];
  if (downloadRequest | v16)
  {
    if (!objc_msgSend_isEqual_(downloadRequest, v7, v16))
    {
      goto LABEL_57;
    }
  }

  contentBaseURL = self->_contentBaseURL;
  v18 = equalCopy[10];
  if (contentBaseURL | v18)
  {
    if (!objc_msgSend_isEqual_(contentBaseURL, v7, v18))
    {
      goto LABEL_57;
    }
  }

  requestor = self->_requestor;
  v20 = equalCopy[18];
  if (requestor | v20)
  {
    if (!objc_msgSend_isEqual_(requestor, v7, v20))
    {
      goto LABEL_57;
    }
  }

  recordId = self->_recordId;
  v22 = equalCopy[16];
  if (recordId | v22)
  {
    if (!objc_msgSend_isEqual_(recordId, v7, v22))
    {
      goto LABEL_57;
    }
  }

  uploadReceipt = self->_uploadReceipt;
  v24 = equalCopy[20];
  if (uploadReceipt | v24)
  {
    if (!objc_msgSend_isEqual_(uploadReceipt, v7, v24))
    {
      goto LABEL_57;
    }
  }

  downloadBaseURL = self->_downloadBaseURL;
  v26 = equalCopy[11];
  if (downloadBaseURL | v26)
  {
    if (!objc_msgSend_isEqual_(downloadBaseURL, v7, v26))
    {
      goto LABEL_57;
    }
  }

  v27 = *(equalCopy + 168);
  if ((*&self->_has & 8) != 0)
  {
    if ((equalCopy[21] & 8) == 0 || self->_downloadURLExpiration != equalCopy[4])
    {
      goto LABEL_57;
    }
  }

  else if ((equalCopy[21] & 8) != 0)
  {
    goto LABEL_57;
  }

  protectionInfo = self->_protectionInfo;
  v29 = equalCopy[15];
  if (protectionInfo | v29 && !objc_msgSend_isEqual_(protectionInfo, v7, v29))
  {
    goto LABEL_57;
  }

  referenceSignature = self->_referenceSignature;
  v31 = equalCopy[17];
  if (referenceSignature | v31)
  {
    if (!objc_msgSend_isEqual_(referenceSignature, v7, v31))
    {
      goto LABEL_57;
    }
  }

  v32 = *(equalCopy + 168);
  if ((*&self->_has & 4) != 0)
  {
    if ((equalCopy[21] & 4) == 0 || self->_downloadTokenExpiration != equalCopy[3])
    {
      goto LABEL_57;
    }
  }

  else if ((equalCopy[21] & 4) != 0)
  {
    goto LABEL_57;
  }

  clearAssetKey = self->_clearAssetKey;
  v34 = equalCopy[7];
  if (clearAssetKey | v34 && !objc_msgSend_isEqual_(clearAssetKey, v7, v34))
  {
    goto LABEL_57;
  }

  assetAuthorizationResponseUUID = self->_assetAuthorizationResponseUUID;
  v36 = equalCopy[6];
  if (assetAuthorizationResponseUUID | v36)
  {
    if (!objc_msgSend_isEqual_(assetAuthorizationResponseUUID, v7, v36))
    {
      goto LABEL_57;
    }
  }

  constructedAssetDownloadURL = self->_constructedAssetDownloadURL;
  v38 = equalCopy[9];
  if (constructedAssetDownloadURL | v38)
  {
    if (!objc_msgSend_isEqual_(constructedAssetDownloadURL, v7, v38))
    {
      goto LABEL_57;
    }
  }

  v39 = *(equalCopy + 168);
  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[21] & 2) == 0 || self->_constructedAssetDownloadURLExpiration != equalCopy[2])
    {
      goto LABEL_57;
    }
  }

  else if ((equalCopy[21] & 2) != 0)
  {
    goto LABEL_57;
  }

  if (*&self->_has)
  {
    if ((equalCopy[21] & 1) == 0 || self->_constructedAssetDownloadEstimatedSize != equalCopy[1])
    {
      goto LABEL_57;
    }
  }

  else if (equalCopy[21])
  {
    goto LABEL_57;
  }

  constructedAssetDownloadParameters = self->_constructedAssetDownloadParameters;
  v41 = equalCopy[8];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[14];
  v23 = fromCopy;
  if (v5)
  {
    objc_msgSend_setOwner_(self, fromCopy, v5);
    fromCopy = v23;
  }

  v6 = fromCopy[19];
  if (v6)
  {
    objc_msgSend_setSignature_(self, fromCopy, v6);
    fromCopy = v23;
  }

  if ((fromCopy[21] & 0x10) != 0)
  {
    self->_size = fromCopy[5];
    *&self->_has |= 0x10u;
  }

  v7 = fromCopy[13];
  if (v7)
  {
    objc_msgSend_setDownloadToken_(self, fromCopy, v7);
    fromCopy = v23;
  }

  v8 = fromCopy[12];
  if (v8)
  {
    objc_msgSend_setDownloadRequest_(self, fromCopy, v8);
    fromCopy = v23;
  }

  v9 = fromCopy[10];
  if (v9)
  {
    objc_msgSend_setContentBaseURL_(self, fromCopy, v9);
    fromCopy = v23;
  }

  v10 = fromCopy[18];
  if (v10)
  {
    objc_msgSend_setRequestor_(self, fromCopy, v10);
    fromCopy = v23;
  }

  recordId = self->_recordId;
  v12 = fromCopy[16];
  if (recordId)
  {
    if (!v12)
    {
      goto LABEL_21;
    }

    objc_msgSend_mergeFrom_(recordId, fromCopy, v12);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_21;
    }

    objc_msgSend_setRecordId_(self, fromCopy, v12);
  }

  fromCopy = v23;
LABEL_21:
  v13 = fromCopy[20];
  if (v13)
  {
    objc_msgSend_setUploadReceipt_(self, fromCopy, v13);
    fromCopy = v23;
  }

  v14 = fromCopy[11];
  if (v14)
  {
    objc_msgSend_setDownloadBaseURL_(self, fromCopy, v14);
    fromCopy = v23;
  }

  if ((fromCopy[21] & 8) != 0)
  {
    self->_downloadURLExpiration = fromCopy[4];
    *&self->_has |= 8u;
  }

  protectionInfo = self->_protectionInfo;
  v16 = fromCopy[15];
  if (protectionInfo)
  {
    if (!v16)
    {
      goto LABEL_33;
    }

    objc_msgSend_mergeFrom_(protectionInfo, fromCopy, v16);
  }

  else
  {
    if (!v16)
    {
      goto LABEL_33;
    }

    objc_msgSend_setProtectionInfo_(self, fromCopy, v16);
  }

  fromCopy = v23;
LABEL_33:
  v17 = fromCopy[17];
  if (v17)
  {
    objc_msgSend_setReferenceSignature_(self, fromCopy, v17);
    fromCopy = v23;
  }

  if ((fromCopy[21] & 4) != 0)
  {
    self->_downloadTokenExpiration = fromCopy[3];
    *&self->_has |= 4u;
  }

  v18 = fromCopy[7];
  if (v18)
  {
    objc_msgSend_setClearAssetKey_(self, fromCopy, v18);
    fromCopy = v23;
  }

  v19 = fromCopy[6];
  if (v19)
  {
    objc_msgSend_setAssetAuthorizationResponseUUID_(self, fromCopy, v19);
    fromCopy = v23;
  }

  v20 = fromCopy[9];
  if (v20)
  {
    objc_msgSend_setConstructedAssetDownloadURL_(self, fromCopy, v20);
    fromCopy = v23;
  }

  v21 = *(fromCopy + 168);
  if ((v21 & 2) != 0)
  {
    self->_constructedAssetDownloadURLExpiration = fromCopy[2];
    *&self->_has |= 2u;
    v21 = *(fromCopy + 168);
  }

  if (v21)
  {
    self->_constructedAssetDownloadEstimatedSize = fromCopy[1];
    *&self->_has |= 1u;
  }

  v22 = fromCopy[8];
  if (v22)
  {
    objc_msgSend_setConstructedAssetDownloadParameters_(self, fromCopy, v22);
  }

  MEMORY[0x2821F96F8]();
}

@end