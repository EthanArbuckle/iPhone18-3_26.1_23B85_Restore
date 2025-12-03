@interface CKDPStreamingAsset
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPStreamingAsset

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPStreamingAsset;
  v4 = [(CKDPStreamingAsset *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  assetId = self->_assetId;
  if (assetId)
  {
    v8 = objc_msgSend_dictionaryRepresentation(assetId, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"assetId");
  }

  saveAssetRequest = self->_saveAssetRequest;
  if (saveAssetRequest)
  {
    v11 = objc_msgSend_dictionaryRepresentation(saveAssetRequest, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"saveAssetRequest");
  }

  saveAssetResponse = self->_saveAssetResponse;
  if (saveAssetResponse)
  {
    v14 = objc_msgSend_dictionaryRepresentation(saveAssetResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"saveAssetResponse");
  }

  retrieveAssetResponse = self->_retrieveAssetResponse;
  if (retrieveAssetResponse)
  {
    v17 = objc_msgSend_dictionaryRepresentation(retrieveAssetResponse, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v18, v17, @"retrieveAssetResponse");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_assetId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_saveAssetRequest)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_saveAssetResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_retrieveAssetResponse)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  assetId = self->_assetId;
  v10 = toCopy;
  if (assetId)
  {
    objc_msgSend_setAssetId_(toCopy, v5, assetId);
    toCopy = v10;
  }

  saveAssetRequest = self->_saveAssetRequest;
  if (saveAssetRequest)
  {
    objc_msgSend_setSaveAssetRequest_(v10, v5, saveAssetRequest);
    toCopy = v10;
  }

  saveAssetResponse = self->_saveAssetResponse;
  if (saveAssetResponse)
  {
    objc_msgSend_setSaveAssetResponse_(v10, v5, saveAssetResponse);
    toCopy = v10;
  }

  retrieveAssetResponse = self->_retrieveAssetResponse;
  if (retrieveAssetResponse)
  {
    objc_msgSend_setRetrieveAssetResponse_(v10, v5, retrieveAssetResponse);
    toCopy = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_assetId, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_saveAssetRequest, v14, zone);
  v16 = v10[3];
  v10[3] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_saveAssetResponse, v17, zone);
  v19 = v10[4];
  v10[4] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_retrieveAssetResponse, v20, zone);
  v22 = v10[2];
  v10[2] = v21;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((assetId = self->_assetId, v9 = equalCopy[1], !(assetId | v9)) || objc_msgSend_isEqual_(assetId, v7, v9)) && ((saveAssetRequest = self->_saveAssetRequest, v11 = equalCopy[3], !(saveAssetRequest | v11)) || objc_msgSend_isEqual_(saveAssetRequest, v7, v11)) && ((saveAssetResponse = self->_saveAssetResponse, v13 = equalCopy[4], !(saveAssetResponse | v13)) || objc_msgSend_isEqual_(saveAssetResponse, v7, v13)))
  {
    retrieveAssetResponse = self->_retrieveAssetResponse;
    v15 = equalCopy[2];
    if (retrieveAssetResponse | v15)
    {
      isEqual = objc_msgSend_isEqual_(retrieveAssetResponse, v7, v15);
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
  v4 = objc_msgSend_hash(self->_assetId, a2, v2);
  v7 = objc_msgSend_hash(self->_saveAssetRequest, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_saveAssetResponse, v8, v9);
  return v7 ^ v10 ^ objc_msgSend_hash(self->_retrieveAssetResponse, v11, v12);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  assetId = self->_assetId;
  v13 = fromCopy;
  v6 = fromCopy[1];
  if (assetId)
  {
    if (v6)
    {
      objc_msgSend_mergeFrom_(assetId, fromCopy, v6);
    }
  }

  else if (v6)
  {
    objc_msgSend_setAssetId_(self, fromCopy, v6);
  }

  saveAssetRequest = self->_saveAssetRequest;
  v8 = v13[3];
  if (saveAssetRequest)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(saveAssetRequest, v13, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setSaveAssetRequest_(self, v13, v8);
  }

  saveAssetResponse = self->_saveAssetResponse;
  v10 = v13[4];
  if (saveAssetResponse)
  {
    if (v10)
    {
      objc_msgSend_mergeFrom_(saveAssetResponse, v13, v10);
    }
  }

  else if (v10)
  {
    objc_msgSend_setSaveAssetResponse_(self, v13, v10);
  }

  retrieveAssetResponse = self->_retrieveAssetResponse;
  v12 = v13[2];
  if (retrieveAssetResponse)
  {
    if (v12)
    {
      objc_msgSend_mergeFrom_(retrieveAssetResponse, v13, v12);
    }
  }

  else if (v12)
  {
    objc_msgSend_setRetrieveAssetResponse_(self, v13, v12);
  }
}

@end