@interface CKDPAssetUploadTokenRetrieveResponseUploadToken
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasDuplicateAsset:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPAssetUploadTokenRetrieveResponseUploadToken

- (void)setHasDuplicateAsset:(BOOL)a3
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_token)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_asset)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    tokenExpiration = self->_tokenExpiration;
    PBDataWriterWriteInt64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    duplicateAsset = self->_duplicateAsset;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  token = self->_token;
  v9 = v4;
  if (token)
  {
    objc_msgSend_setToken_(v4, v5, token);
    v4 = v9;
  }

  asset = self->_asset;
  if (asset)
  {
    objc_msgSend_setAsset_(v9, v5, asset);
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_tokenExpiration;
    *(v4 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 32) = self->_duplicateAsset;
    *(v4 + 36) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_token, v11, a3);
  v13 = *(v10 + 24);
  *(v10 + 24) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_asset, v14, a3);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_13;
  }

  token = self->_token;
  v9 = v4[3];
  if (token | v9)
  {
    if (!objc_msgSend_isEqual_(token, v7, v9))
    {
      goto LABEL_13;
    }
  }

  asset = self->_asset;
  v11 = v4[2];
  if (asset | v11)
  {
    if (!objc_msgSend_isEqual_(asset, v7, v11))
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_tokenExpiration != v4[1])
    {
      goto LABEL_13;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_13;
  }

  v12 = (*(v4 + 36) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
LABEL_13:
      v12 = 0;
      goto LABEL_14;
    }

    if (self->_duplicateAsset)
    {
      if ((v4[4] & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else if (*(v4 + 32))
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = *(v4 + 3);
  v9 = v4;
  if (v5)
  {
    objc_msgSend_setToken_(self, v4, v5);
    v4 = v9;
  }

  asset = self->_asset;
  v7 = *(v4 + 2);
  if (asset)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_mergeFrom_(asset, v4, v7);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_setAsset_(self, v4, v7);
  }

  v4 = v9;
LABEL_9:
  v8 = *(v4 + 36);
  if (v8)
  {
    self->_tokenExpiration = *(v4 + 1);
    *&self->_has |= 1u;
    v8 = *(v4 + 36);
  }

  if ((v8 & 2) != 0)
  {
    self->_duplicateAsset = *(v4 + 32);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end