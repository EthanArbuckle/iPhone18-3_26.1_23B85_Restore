@interface CKDPFieldPermittedCryptoFeatureSet
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)assetKeyEncryptionTypeAtIndex:(unint64_t)index;
- (int)encryptedFieldContextTypeAtIndex:(unint64_t)index;
- (int)minimumSchemaVersion;
- (int)mmcsVersionAtIndex:(unint64_t)index;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPFieldPermittedCryptoFeatureSet

- (void)dealloc
{
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  PBRepeatedInt32Clear();
  v3.receiver = self;
  v3.super_class = CKDPFieldPermittedCryptoFeatureSet;
  [(CKDPFieldPermittedCryptoFeatureSet *)&v3 dealloc];
}

- (int)minimumSchemaVersion
{
  if (*&self->_has)
  {
    return self->_minimumSchemaVersion;
  }

  else
  {
    return 1;
  }
}

- (int)mmcsVersionAtIndex:(unint64_t)index
{
  p_mmcsVersions = &self->_mmcsVersions;
  count = self->_mmcsVersions.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"idx (%lu) is out of range (%lu)", index, count);
    v10 = objc_msgSend_exceptionWithName_reason_userInfo_(v6, v9, v7, v8, 0);
    objc_msgSend_raise(v10, v11, v12);
  }

  return p_mmcsVersions->list[index];
}

- (int)encryptedFieldContextTypeAtIndex:(unint64_t)index
{
  p_encryptedFieldContextTypes = &self->_encryptedFieldContextTypes;
  count = self->_encryptedFieldContextTypes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"idx (%lu) is out of range (%lu)", index, count);
    v10 = objc_msgSend_exceptionWithName_reason_userInfo_(v6, v9, v7, v8, 0);
    objc_msgSend_raise(v10, v11, v12);
  }

  return p_encryptedFieldContextTypes->list[index];
}

- (int)assetKeyEncryptionTypeAtIndex:(unint64_t)index
{
  p_assetKeyEncryptionTypes = &self->_assetKeyEncryptionTypes;
  count = self->_assetKeyEncryptionTypes.count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"idx (%lu) is out of range (%lu)", index, count);
    v10 = objc_msgSend_exceptionWithName_reason_userInfo_(v6, v9, v7, v8, 0);
    objc_msgSend_raise(v10, v11, v12);
  }

  return p_assetKeyEncryptionTypes->list[index];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPFieldPermittedCryptoFeatureSet;
  v4 = [(CKDPFieldPermittedCryptoFeatureSet *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v6 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_minimumSchemaVersion);
    objc_msgSend_setObject_forKey_(v5, v7, v6, @"minimumSchemaVersion");
  }

  v8 = PBRepeatedInt32NSArray();
  objc_msgSend_setObject_forKey_(v5, v9, v8, @"mmcsVersion");

  v10 = PBRepeatedInt32NSArray();
  objc_msgSend_setObject_forKey_(v5, v11, v10, @"encryptedFieldContextType");

  v12 = PBRepeatedInt32NSArray();
  objc_msgSend_setObject_forKey_(v5, v13, v12, @"assetKeyEncryptionType");

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v13 = toCopy;
  if (*&self->_has)
  {
    minimumSchemaVersion = self->_minimumSchemaVersion;
    PBDataWriterWriteInt32Field();
    toCopy = v13;
  }

  if (self->_mmcsVersions.count)
  {
    v6 = 0;
    do
    {
      v7 = self->_mmcsVersions.list[v6];
      PBDataWriterWriteInt32Field();
      toCopy = v13;
      ++v6;
    }

    while (v6 < self->_mmcsVersions.count);
  }

  if (self->_encryptedFieldContextTypes.count)
  {
    v8 = 0;
    do
    {
      v9 = self->_encryptedFieldContextTypes.list[v8];
      PBDataWriterWriteInt32Field();
      toCopy = v13;
      ++v8;
    }

    while (v8 < self->_encryptedFieldContextTypes.count);
  }

  p_assetKeyEncryptionTypes = &self->_assetKeyEncryptionTypes;
  if (p_assetKeyEncryptionTypes->count)
  {
    v11 = 0;
    do
    {
      v12 = p_assetKeyEncryptionTypes->list[v11];
      PBDataWriterWriteInt32Field();
      toCopy = v13;
      ++v11;
    }

    while (v11 < p_assetKeyEncryptionTypes->count);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[20] = self->_minimumSchemaVersion;
    *(toCopy + 84) |= 1u;
  }

  v35 = toCopy;
  if (objc_msgSend_mmcsVersionsCount(self, v5, v6))
  {
    objc_msgSend_clearMmcsVersions(v35, v7, v8);
    v11 = objc_msgSend_mmcsVersionsCount(self, v9, v10);
    if (v11)
    {
      v12 = v11;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_mmcsVersionAtIndex_(self, v7, i);
        objc_msgSend_addMmcsVersion_(v35, v15, v14);
      }
    }
  }

  if (objc_msgSend_encryptedFieldContextTypesCount(self, v7, v8))
  {
    objc_msgSend_clearEncryptedFieldContextTypes(v35, v16, v17);
    v20 = objc_msgSend_encryptedFieldContextTypesCount(self, v18, v19);
    if (v20)
    {
      v21 = v20;
      for (j = 0; j != v21; ++j)
      {
        v23 = objc_msgSend_encryptedFieldContextTypeAtIndex_(self, v16, j);
        objc_msgSend_addEncryptedFieldContextType_(v35, v24, v23);
      }
    }
  }

  if (objc_msgSend_assetKeyEncryptionTypesCount(self, v16, v17))
  {
    objc_msgSend_clearAssetKeyEncryptionTypes(v35, v25, v26);
    v29 = objc_msgSend_assetKeyEncryptionTypesCount(self, v27, v28);
    if (v29)
    {
      v31 = v29;
      for (k = 0; k != v31; ++k)
      {
        v33 = objc_msgSend_assetKeyEncryptionTypeAtIndex_(self, v30, k);
        objc_msgSend_addAssetKeyEncryptionType_(v35, v34, v33);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v11 = v10;
  if (*&self->_has)
  {
    *(v10 + 80) = self->_minimumSchemaVersion;
    *(v10 + 84) |= 1u;
  }

  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  PBRepeatedInt32Copy();
  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_10;
  }

  v7 = *(equalCopy + 84);
  if (*&self->_has)
  {
    if ((*(equalCopy + 84) & 1) == 0 || self->_minimumSchemaVersion != *(equalCopy + 20))
    {
      goto LABEL_10;
    }
  }

  else if (*(equalCopy + 84))
  {
LABEL_10:
    IsEqual = 0;
    goto LABEL_11;
  }

  if (!PBRepeatedInt32IsEqual() || !PBRepeatedInt32IsEqual())
  {
    goto LABEL_10;
  }

  IsEqual = PBRepeatedInt32IsEqual();
LABEL_11:

  return IsEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_minimumSchemaVersion;
  }

  else
  {
    v2 = 0;
  }

  v3 = PBRepeatedInt32Hash() ^ v2;
  v4 = PBRepeatedInt32Hash();
  return v3 ^ v4 ^ PBRepeatedInt32Hash();
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[21])
  {
    self->_minimumSchemaVersion = fromCopy[20];
    *&self->_has |= 1u;
  }

  v27 = fromCopy;
  v7 = objc_msgSend_mmcsVersionsCount(fromCopy, v5, v6);
  if (v7)
  {
    v10 = v7;
    for (i = 0; i != v10; ++i)
    {
      v12 = objc_msgSend_mmcsVersionAtIndex_(v27, v8, i);
      objc_msgSend_addMmcsVersion_(self, v13, v12);
    }
  }

  v14 = objc_msgSend_encryptedFieldContextTypesCount(v27, v8, v9);
  if (v14)
  {
    v17 = v14;
    for (j = 0; j != v17; ++j)
    {
      v19 = objc_msgSend_encryptedFieldContextTypeAtIndex_(v27, v15, j);
      objc_msgSend_addEncryptedFieldContextType_(self, v20, v19);
    }
  }

  v21 = objc_msgSend_assetKeyEncryptionTypesCount(v27, v15, v16);
  if (v21)
  {
    v23 = v21;
    for (k = 0; k != v23; ++k)
    {
      v25 = objc_msgSend_assetKeyEncryptionTypeAtIndex_(v27, v22, k);
      objc_msgSend_addAssetKeyEncryptionType_(self, v26, v25);
    }
  }
}

@end