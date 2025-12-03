@interface CKDPAssetUploadTokenRetrieveResponseUploadToken
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasDuplicateAsset:(BOOL)asset;
- (void)writeTo:(id)to;
@end

@implementation CKDPAssetUploadTokenRetrieveResponseUploadToken

- (void)setHasDuplicateAsset:(BOOL)asset
{
  if (asset)
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
  v11.super_class = CKDPAssetUploadTokenRetrieveResponseUploadToken;
  v4 = [(CKDPAssetUploadTokenRetrieveResponseUploadToken *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  token = self->_token;
  if (token)
  {
    objc_msgSend_setObject_forKey_(v4, v5, token, @"token");
  }

  asset = self->_asset;
  if (asset)
  {
    v9 = objc_msgSend_dictionaryRepresentation(asset, v5, token);
    objc_msgSend_setObject_forKey_(v6, v10, v9, @"asset");
  }

  has = self->_has;
  if (has)
  {
    v12 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v5, self->_tokenExpiration);
    objc_msgSend_setObject_forKey_(v6, v13, v12, @"tokenExpiration");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v14 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_duplicateAsset);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"duplicateAsset");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_token)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_asset)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    tokenExpiration = self->_tokenExpiration;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    duplicateAsset = self->_duplicateAsset;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  token = self->_token;
  v9 = toCopy;
  if (token)
  {
    objc_msgSend_setToken_(toCopy, v5, token);
    toCopy = v9;
  }

  asset = self->_asset;
  if (asset)
  {
    objc_msgSend_setAsset_(v9, v5, asset);
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_tokenExpiration;
    *(toCopy + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 32) = self->_duplicateAsset;
    *(toCopy + 36) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_token, v11, zone);
  v13 = *(v10 + 24);
  *(v10 + 24) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_asset, v14, zone);
  v16 = *(v10 + 16);
  *(v10 + 16) = v15;

  has = self->_has;
  if (has)
  {
    *(v10 + 8) = self->_tokenExpiration;
    *(v10 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 32) = self->_duplicateAsset;
    *(v10 + 36) |= 2u;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_13;
  }

  token = self->_token;
  v9 = equalCopy[3];
  if (token | v9)
  {
    if (!objc_msgSend_isEqual_(token, v7, v9))
    {
      goto LABEL_13;
    }
  }

  asset = self->_asset;
  v11 = equalCopy[2];
  if (asset | v11)
  {
    if (!objc_msgSend_isEqual_(asset, v7, v11))
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_tokenExpiration != equalCopy[1])
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
    goto LABEL_13;
  }

  v12 = (*(equalCopy + 36) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0)
    {
LABEL_13:
      v12 = 0;
      goto LABEL_14;
    }

    if (self->_duplicateAsset)
    {
      if ((equalCopy[4] & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(equalCopy + 32))
    {
      goto LABEL_13;
    }

    v12 = 1;
  }

LABEL_14:

  return v12;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_token, a2, v2);
  v7 = objc_msgSend_hash(self->_asset, v5, v6);
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_tokenExpiration;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = 0;
    return v7 ^ v4 ^ v8 ^ v9;
  }

  v8 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = 2654435761 * self->_duplicateAsset;
  return v7 ^ v4 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 3);
  v9 = fromCopy;
  if (v5)
  {
    objc_msgSend_setToken_(self, fromCopy, v5);
    fromCopy = v9;
  }

  asset = self->_asset;
  v7 = *(fromCopy + 2);
  if (asset)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_mergeFrom_(asset, fromCopy, v7);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_setAsset_(self, fromCopy, v7);
  }

  fromCopy = v9;
LABEL_9:
  v8 = *(fromCopy + 36);
  if (v8)
  {
    self->_tokenExpiration = *(fromCopy + 1);
    *&self->_has |= 1u;
    v8 = *(fromCopy + 36);
  }

  if ((v8 & 2) != 0)
  {
    self->_duplicateAsset = *(fromCopy + 32);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end