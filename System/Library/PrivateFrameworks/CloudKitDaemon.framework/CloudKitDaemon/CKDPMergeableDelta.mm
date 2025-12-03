@interface CKDPMergeableDelta
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)payloadAsString:(int)string;
- (int)StringAsPayload:(id)payload;
- (int)payload;
- (unint64_t)hash;
- (void)clearOneofValuesForPayload;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setAsset:(id)asset;
- (void)setData:(id)data;
- (void)setEncryptedAsset:(id)asset;
- (void)setEncryptedData:(id)data;
- (void)writeTo:(id)to;
@end

@implementation CKDPMergeableDelta

- (void)setData:(id)data
{
  dataCopy = data;
  objc_msgSend_clearOneofValuesForPayload(self, v5, v6);
  *&self->_has |= 1u;
  self->_payload = 1;
  data = self->_data;
  self->_data = dataCopy;
}

- (void)setEncryptedData:(id)data
{
  dataCopy = data;
  objc_msgSend_clearOneofValuesForPayload(self, v5, v6);
  *&self->_has |= 1u;
  self->_payload = 2;
  encryptedData = self->_encryptedData;
  self->_encryptedData = dataCopy;
}

- (void)setAsset:(id)asset
{
  assetCopy = asset;
  objc_msgSend_clearOneofValuesForPayload(self, v5, v6);
  *&self->_has |= 1u;
  self->_payload = 3;
  asset = self->_asset;
  self->_asset = assetCopy;
}

- (void)setEncryptedAsset:(id)asset
{
  assetCopy = asset;
  objc_msgSend_clearOneofValuesForPayload(self, v5, v6);
  *&self->_has |= 1u;
  self->_payload = 4;
  encryptedAsset = self->_encryptedAsset;
  self->_encryptedAsset = assetCopy;
}

- (int)payload
{
  if (*&self->_has)
  {
    return self->_payload;
  }

  else
  {
    return 0;
  }
}

- (id)payloadAsString:(int)string
{
  if (string >= 5)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854C8A0[string];
  }

  return v4;
}

- (int)StringAsPayload:(id)payload
{
  payloadCopy = payload;
  if (objc_msgSend_isEqualToString_(payloadCopy, v4, @"PBUNSET"))
  {
    v6 = 0;
  }

  else if (objc_msgSend_isEqualToString_(payloadCopy, v5, @"data"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(payloadCopy, v7, @"encryptedData"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(payloadCopy, v8, @"asset"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(payloadCopy, v9, @"encryptedAsset"))
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)clearOneofValuesForPayload
{
  *&self->_has &= ~1u;
  self->_payload = 0;
  data = self->_data;
  self->_data = 0;

  encryptedData = self->_encryptedData;
  self->_encryptedData = 0;

  asset = self->_asset;
  self->_asset = 0;

  encryptedAsset = self->_encryptedAsset;
  self->_encryptedAsset = 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPMergeableDelta;
  v4 = [(CKDPMergeableDelta *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  metadata = self->_metadata;
  if (metadata)
  {
    v8 = objc_msgSend_dictionaryRepresentation(metadata, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"metadata");
  }

  data = self->_data;
  if (data)
  {
    objc_msgSend_setObject_forKey_(v6, v4, data, @"data");
  }

  encryptedData = self->_encryptedData;
  if (encryptedData)
  {
    objc_msgSend_setObject_forKey_(v6, v4, encryptedData, @"encryptedData");
  }

  asset = self->_asset;
  if (asset)
  {
    v13 = objc_msgSend_dictionaryRepresentation(asset, v4, encryptedData);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"asset");
  }

  encryptedAsset = self->_encryptedAsset;
  if (encryptedAsset)
  {
    v16 = objc_msgSend_dictionaryRepresentation(encryptedAsset, v4, encryptedData);
    objc_msgSend_setObject_forKey_(v6, v17, v16, @"encryptedAsset");
  }

  if (*&self->_has)
  {
    payload = self->_payload;
    if (payload >= 5)
    {
      v19 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_payload);
    }

    else
    {
      v19 = off_27854C8A0[payload];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v19, @"payload");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_metadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_data)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_encryptedData)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_asset)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_encryptedAsset)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[12] = self->_payload;
    *(toCopy + 52) |= 1u;
  }

  metadata = self->_metadata;
  v11 = toCopy;
  if (metadata)
  {
    objc_msgSend_setMetadata_(toCopy, v5, metadata);
    toCopy = v11;
  }

  data = self->_data;
  if (data)
  {
    objc_msgSend_setData_(v11, v5, data);
    toCopy = v11;
  }

  encryptedData = self->_encryptedData;
  if (encryptedData)
  {
    objc_msgSend_setEncryptedData_(v11, v5, encryptedData);
    toCopy = v11;
  }

  asset = self->_asset;
  if (asset)
  {
    objc_msgSend_setAsset_(v11, v5, asset);
    toCopy = v11;
  }

  encryptedAsset = self->_encryptedAsset;
  if (encryptedAsset)
  {
    objc_msgSend_setEncryptedAsset_(v11, v5, encryptedAsset);
    toCopy = v11;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (*&self->_has)
  {
    *(v10 + 48) = self->_payload;
    *(v10 + 52) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_metadata, v11, zone);
  v14 = v12[5];
  v12[5] = v13;

  v16 = objc_msgSend_copyWithZone_(self->_data, v15, zone);
  v17 = v12[2];
  v12[2] = v16;

  v19 = objc_msgSend_copyWithZone_(self->_encryptedData, v18, zone);
  v20 = v12[4];
  v12[4] = v19;

  v22 = objc_msgSend_copyWithZone_(self->_asset, v21, zone);
  v23 = v12[1];
  v12[1] = v22;

  v25 = objc_msgSend_copyWithZone_(self->_encryptedAsset, v24, zone);
  v26 = v12[3];
  v12[3] = v25;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_17;
  }

  v8 = *(equalCopy + 52);
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_payload != *(equalCopy + 12))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 52))
  {
LABEL_17:
    isEqual = 0;
    goto LABEL_18;
  }

  metadata = self->_metadata;
  v10 = equalCopy[5];
  if (metadata | v10 && !objc_msgSend_isEqual_(metadata, v7, v10))
  {
    goto LABEL_17;
  }

  data = self->_data;
  v12 = equalCopy[2];
  if (data | v12)
  {
    if (!objc_msgSend_isEqual_(data, v7, v12))
    {
      goto LABEL_17;
    }
  }

  encryptedData = self->_encryptedData;
  v14 = equalCopy[4];
  if (encryptedData | v14)
  {
    if (!objc_msgSend_isEqual_(encryptedData, v7, v14))
    {
      goto LABEL_17;
    }
  }

  asset = self->_asset;
  v16 = equalCopy[1];
  if (asset | v16)
  {
    if (!objc_msgSend_isEqual_(asset, v7, v16))
    {
      goto LABEL_17;
    }
  }

  encryptedAsset = self->_encryptedAsset;
  v18 = equalCopy[3];
  if (encryptedAsset | v18)
  {
    isEqual = objc_msgSend_isEqual_(encryptedAsset, v7, v18);
  }

  else
  {
    isEqual = 1;
  }

LABEL_18:

  return isEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_payload;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_msgSend_hash(self->_metadata, a2, v2) ^ v4;
  v8 = objc_msgSend_hash(self->_data, v6, v7);
  v11 = v5 ^ v8 ^ objc_msgSend_hash(self->_encryptedData, v9, v10);
  v14 = objc_msgSend_hash(self->_asset, v12, v13);
  return v11 ^ v14 ^ objc_msgSend_hash(self->_encryptedAsset, v15, v16);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[13])
  {
    self->_payload = fromCopy[12];
    *&self->_has |= 1u;
  }

  metadata = self->_metadata;
  v7 = v5[5];
  v14 = v5;
  if (metadata)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_mergeFrom_(metadata, v5, v7);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_setMetadata_(self, v5, v7);
  }

  v5 = v14;
LABEL_9:
  v8 = v5[2];
  if (v8)
  {
    objc_msgSend_setData_(self, v5, v8);
    v5 = v14;
  }

  v9 = v5[4];
  if (v9)
  {
    objc_msgSend_setEncryptedData_(self, v5, v9);
    v5 = v14;
  }

  asset = self->_asset;
  v11 = v5[1];
  if (asset)
  {
    if (!v11)
    {
      goto LABEL_19;
    }

    objc_msgSend_mergeFrom_(asset, v5, v11);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_19;
    }

    objc_msgSend_setAsset_(self, v5, v11);
  }

  v5 = v14;
LABEL_19:
  encryptedAsset = self->_encryptedAsset;
  v13 = v5[3];
  if (encryptedAsset)
  {
    if (v13)
    {
      objc_msgSend_mergeFrom_(encryptedAsset, v5, v13);
    }
  }

  else if (v13)
  {
    objc_msgSend_setEncryptedAsset_(self, v5, v13);
  }

  MEMORY[0x2821F96F8]();
}

@end