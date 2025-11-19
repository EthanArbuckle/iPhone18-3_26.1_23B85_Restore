@interface CKDPAssetsToDownload
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPAssetsToDownload

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPAssetsToDownload;
  v4 = [(CKDPAssetsToDownload *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v7 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_allAssets);
    objc_msgSend_setObject_forKey_(v6, v8, v7, @"allAssets");
  }

  assetFields = self->_assetFields;
  if (assetFields)
  {
    v10 = objc_msgSend_dictionaryRepresentation(assetFields, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"assetFields");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    allAssets = self->_allAssets;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_assetFields)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  if (*&self->_has)
  {
    v4[16] = self->_allAssets;
    v4[20] |= 1u;
  }

  assetFields = self->_assetFields;
  if (assetFields)
  {
    v7 = v4;
    objc_msgSend_setAssetFields_(v4, v5, assetFields);
    v4 = v7;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (*&self->_has)
  {
    *(v10 + 16) = self->_allAssets;
    *(v10 + 20) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_assetFields, v11, a3);
  v14 = v12[1];
  v12[1] = v13;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_7;
  }

  v8 = *(v4 + 20);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_3;
  }

  if ((*(v4 + 20) & 1) == 0)
  {
    goto LABEL_7;
  }

  v8 = *(v4 + 16);
  if (!self->_allAssets)
  {
LABEL_3:
    if ((v8 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    isEqual = 0;
    goto LABEL_8;
  }

  if ((v4[2] & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  assetFields = self->_assetFields;
  v10 = v4[1];
  if (assetFields | v10)
  {
    isEqual = objc_msgSend_isEqual_(assetFields, v7, v10);
  }

  else
  {
    isEqual = 1;
  }

LABEL_8:

  return isEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_allAssets;
  }

  else
  {
    v3 = 0;
  }

  return objc_msgSend_hash(self->_assetFields, a2, v2) ^ v3;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4[20])
  {
    self->_allAssets = v4[16];
    *&self->_has |= 1u;
  }

  assetFields = self->_assetFields;
  v7 = *(v5 + 1);
  if (assetFields)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(assetFields, v5, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setAssetFields_(self, v5, v7);
  }

  MEMORY[0x2821F96F8]();
}

@end