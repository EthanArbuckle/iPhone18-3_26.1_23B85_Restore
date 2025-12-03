@interface CKDPFieldCryptoFeatureSet
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)minimumSchemaVersion;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasEncryptedFieldContextType:(BOOL)type;
- (void)setHasMinimumSchemaVersion:(BOOL)version;
- (void)setHasMmcsVersion:(BOOL)version;
- (void)writeTo:(id)to;
@end

@implementation CKDPFieldCryptoFeatureSet

- (int)minimumSchemaVersion
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_minimumSchemaVersion;
  }

  else
  {
    return 1;
  }
}

- (void)setHasMinimumSchemaVersion:(BOOL)version
{
  if (version)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)setHasMmcsVersion:(BOOL)version
{
  if (version)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasEncryptedFieldContextType:(BOOL)type
{
  if (type)
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
  v11.super_class = CKDPFieldCryptoFeatureSet;
  v4 = [(CKDPFieldCryptoFeatureSet *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  has = self->_has;
  if ((has & 4) != 0)
  {
    v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_minimumSchemaVersion);
    objc_msgSend_setObject_forKey_(v5, v11, v10, @"minimumSchemaVersion");

    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  v12 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_mmcsVersion);
  objc_msgSend_setObject_forKey_(v5, v13, v12, @"mmcsVersion");

  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  v14 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_encryptedFieldContextType);
  objc_msgSend_setObject_forKey_(v5, v15, v14, @"encryptedFieldContextType");

  if (*&self->_has)
  {
LABEL_5:
    v7 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_assetKeyEncryptionType);
    objc_msgSend_setObject_forKey_(v5, v8, v7, @"assetKeyEncryptionType");
  }

LABEL_6:

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    minimumSchemaVersion = self->_minimumSchemaVersion;
    PBDataWriterWriteInt32Field();
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  mmcsVersion = self->_mmcsVersion;
  PBDataWriterWriteInt32Field();
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  encryptedFieldContextType = self->_encryptedFieldContextType;
  PBDataWriterWriteInt32Field();
  if (*&self->_has)
  {
LABEL_5:
    assetKeyEncryptionType = self->_assetKeyEncryptionType;
    PBDataWriterWriteInt32Field();
  }

LABEL_6:
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 4) != 0)
  {
    toCopy[4] = self->_minimumSchemaVersion;
    *(toCopy + 24) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  toCopy[5] = self->_mmcsVersion;
  *(toCopy + 24) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  toCopy[3] = self->_encryptedFieldContextType;
  *(toCopy + 24) |= 2u;
  if (*&self->_has)
  {
LABEL_5:
    toCopy[2] = self->_assetKeyEncryptionType;
    *(toCopy + 24) |= 1u;
  }

LABEL_6:
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  result = objc_msgSend_init(v7, v8, v9);
  has = self->_has;
  if ((has & 4) != 0)
  {
    *(result + 4) = self->_minimumSchemaVersion;
    *(result + 24) |= 4u;
    has = self->_has;
    if ((has & 8) == 0)
    {
LABEL_3:
      if ((has & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else if ((*&self->_has & 8) == 0)
  {
    goto LABEL_3;
  }

  *(result + 5) = self->_mmcsVersion;
  *(result + 24) |= 8u;
  has = self->_has;
  if ((has & 2) == 0)
  {
LABEL_4:
    if ((has & 1) == 0)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_9:
  *(result + 3) = self->_encryptedFieldContextType;
  *(result + 24) |= 2u;
  if ((*&self->_has & 1) == 0)
  {
    return result;
  }

LABEL_5:
  *(result + 2) = self->_assetKeyEncryptionType;
  *(result + 24) |= 1u;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 24) & 4) == 0 || self->_minimumSchemaVersion != *(equalCopy + 4))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 24) & 4) != 0)
  {
LABEL_21:
    v7 = 0;
    goto LABEL_22;
  }

  if ((*&self->_has & 8) != 0)
  {
    if ((*(equalCopy + 24) & 8) == 0 || self->_mmcsVersion != *(equalCopy + 5))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 24) & 8) != 0)
  {
    goto LABEL_21;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 24) & 2) == 0 || self->_encryptedFieldContextType != *(equalCopy + 3))
    {
      goto LABEL_21;
    }
  }

  else if ((*(equalCopy + 24) & 2) != 0)
  {
    goto LABEL_21;
  }

  v7 = (*(equalCopy + 24) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_assetKeyEncryptionType != *(equalCopy + 2))
    {
      goto LABEL_21;
    }

    v7 = 1;
  }

LABEL_22:

  return v7;
}

- (unint64_t)hash
{
  if ((*&self->_has & 4) != 0)
  {
    v2 = 2654435761 * self->_minimumSchemaVersion;
    if ((*&self->_has & 8) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_mmcsVersion;
      if ((*&self->_has & 2) != 0)
      {
        goto LABEL_4;
      }

LABEL_8:
      v4 = 0;
      if (*&self->_has)
      {
        goto LABEL_5;
      }

LABEL_9:
      v5 = 0;
      return v3 ^ v2 ^ v4 ^ v5;
    }
  }

  else
  {
    v2 = 0;
    if ((*&self->_has & 8) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = 2654435761 * self->_encryptedFieldContextType;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_5:
  v5 = 2654435761 * self->_assetKeyEncryptionType;
  return v3 ^ v2 ^ v4 ^ v5;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = *(fromCopy + 24);
  if ((v5 & 4) != 0)
  {
    self->_minimumSchemaVersion = *(fromCopy + 4);
    *&self->_has |= 4u;
    v5 = *(fromCopy + 24);
    if ((v5 & 8) == 0)
    {
LABEL_3:
      if ((v5 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(fromCopy + 24) & 8) == 0)
  {
    goto LABEL_3;
  }

  self->_mmcsVersion = *(fromCopy + 5);
  *&self->_has |= 8u;
  v5 = *(fromCopy + 24);
  if ((v5 & 2) == 0)
  {
LABEL_4:
    if ((v5 & 1) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_11:
  self->_encryptedFieldContextType = *(fromCopy + 3);
  *&self->_has |= 2u;
  if (*(fromCopy + 24))
  {
LABEL_5:
    self->_assetKeyEncryptionType = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

LABEL_6:
}

@end