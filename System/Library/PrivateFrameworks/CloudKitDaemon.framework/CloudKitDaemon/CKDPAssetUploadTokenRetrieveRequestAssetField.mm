@interface CKDPAssetUploadTokenRetrieveRequestAssetField
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addAssets:(id)assets;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPAssetUploadTokenRetrieveRequestAssetField

- (void)addAssets:(id)assets
{
  assetsCopy = assets;
  assets = self->_assets;
  v8 = assetsCopy;
  if (!assets)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_assets;
    self->_assets = v6;

    assetsCopy = v8;
    assets = self->_assets;
  }

  objc_msgSend_addObject_(assets, assetsCopy, assetsCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPAssetUploadTokenRetrieveRequestAssetField;
  v4 = [(CKDPAssetUploadTokenRetrieveRequestAssetField *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  field = self->_field;
  if (field)
  {
    v8 = objc_msgSend_dictionaryRepresentation(field, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"field");
  }

  if (objc_msgSend_count(self->_assets, v4, v5))
  {
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    v13 = objc_msgSend_count(self->_assets, v11, v12);
    v15 = objc_msgSend_initWithCapacity_(v10, v14, v13);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = self->_assets;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v29, v33, 16);
    if (v18)
    {
      v21 = v18;
      v22 = *v30;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v24 = objc_msgSend_dictionaryRepresentation(*(*(&v29 + 1) + 8 * i), v19, v20, v29);
          objc_msgSend_addObject_(v15, v25, v24);
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v29, v33, 16);
      }

      while (v21);
    }

    objc_msgSend_setObject_forKey_(v6, v26, v15, @"assets");
  }

  v27 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)to
{
  v19 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_field)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_assets;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v14, v18, 16);
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  field = self->_field;
  if (field)
  {
    objc_msgSend_setField_(toCopy, v4, field);
  }

  if (objc_msgSend_assetsCount(self, v4, field))
  {
    objc_msgSend_clearAssets(toCopy, v6, v7);
    v10 = objc_msgSend_assetsCount(self, v8, v9);
    if (v10)
    {
      v12 = v10;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_assetsAtIndex_(self, v11, i);
        objc_msgSend_addAssets_(toCopy, v15, v14);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_field, v11, zone);
  v13 = v10[2];
  v10[2] = v12;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = self->_assets;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v25, v29, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v26;
    do
    {
      v20 = 0;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_copyWithZone_(*(*(&v25 + 1) + 8 * v20), v17, zone, v25);
        objc_msgSend_addAssets_(v10, v22, v21);

        ++v20;
      }

      while (v18 != v20);
      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v25, v29, 16);
    }

    while (v18);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((field = self->_field, v9 = equalCopy[2], !(field | v9)) || objc_msgSend_isEqual_(field, v7, v9)))
  {
    assets = self->_assets;
    v11 = equalCopy[1];
    if (assets | v11)
    {
      isEqual = objc_msgSend_isEqual_(assets, v7, v11);
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

- (void)mergeFrom:(id)from
{
  v21 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  field = self->_field;
  v7 = *(fromCopy + 2);
  if (field)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(field, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setField_(self, v4, v7);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = *(fromCopy + 1);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_addAssets_(self, v11, *(*(&v16 + 1) + 8 * i), v16);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v16, v20, 16);
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end