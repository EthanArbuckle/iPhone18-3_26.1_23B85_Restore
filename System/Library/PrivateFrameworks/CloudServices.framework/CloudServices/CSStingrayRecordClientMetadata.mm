@interface CSStingrayRecordClientMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasPasswordIterations:(BOOL)iterations;
- (void)writeTo:(id)to;
@end

@implementation CSStingrayRecordClientMetadata

- (void)setHasPasswordIterations:(BOOL)iterations
{
  if (iterations)
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
  v11.super_class = CSStingrayRecordClientMetadata;
  v4 = [(CSStingrayRecordClientMetadata *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  icdp = self->_icdp;
  if (icdp)
  {
    v8 = objc_msgSend_dictionaryRepresentation(icdp, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"icdp");
  }

  keyRegistry = self->_keyRegistry;
  if (keyRegistry)
  {
    v11 = objc_msgSend_dictionaryRepresentation(keyRegistry, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"keyRegistry");
  }

  stableMetadata = self->_stableMetadata;
  if (stableMetadata)
  {
    v14 = objc_msgSend_dictionaryRepresentation(stableMetadata, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"stableMetadata");
  }

  icloudIdentityPublicData = self->_icloudIdentityPublicData;
  if (icloudIdentityPublicData)
  {
    objc_msgSend_setObject_forKey_(v6, v4, icloudIdentityPublicData, @"icloudIdentityPublicData");
  }

  has = self->_has;
  if (has)
  {
    v18 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_passwordGeneration);
    objc_msgSend_setObject_forKey_(v6, v19, v18, @"passwordGeneration");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v20 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_passwordIterations);
    objc_msgSend_setObject_forKey_(v6, v21, v20, @"passwordIterations");
  }

  passwordProtocol = self->_passwordProtocol;
  if (passwordProtocol)
  {
    objc_msgSend_setObject_forKey_(v6, v4, passwordProtocol, @"passwordProtocol");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_icdp)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_keyRegistry)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_stableMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_icloudIdentityPublicData)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    passwordGeneration = self->_passwordGeneration;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    passwordIterations = self->_passwordIterations;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
  }

  if (self->_passwordProtocol)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  icdp = self->_icdp;
  v12 = toCopy;
  if (icdp)
  {
    objc_msgSend_setIcdp_(toCopy, v5, icdp);
    toCopy = v12;
  }

  keyRegistry = self->_keyRegistry;
  if (keyRegistry)
  {
    objc_msgSend_setKeyRegistry_(v12, v5, keyRegistry);
    toCopy = v12;
  }

  stableMetadata = self->_stableMetadata;
  if (stableMetadata)
  {
    objc_msgSend_setStableMetadata_(v12, v5, stableMetadata);
    toCopy = v12;
  }

  icloudIdentityPublicData = self->_icloudIdentityPublicData;
  if (icloudIdentityPublicData)
  {
    objc_msgSend_setIcloudIdentityPublicData_(v12, v5, icloudIdentityPublicData);
    toCopy = v12;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_passwordGeneration;
    *(toCopy + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 2) = self->_passwordIterations;
    *(toCopy + 64) |= 2u;
  }

  passwordProtocol = self->_passwordProtocol;
  if (passwordProtocol)
  {
    objc_msgSend_setPasswordProtocol_(v12, v5, passwordProtocol);
    toCopy = v12;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_icdp, v11, zone);
  v13 = *(v10 + 24);
  *(v10 + 24) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_keyRegistry, v14, zone);
  v16 = *(v10 + 40);
  *(v10 + 40) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_stableMetadata, v17, zone);
  v19 = *(v10 + 56);
  *(v10 + 56) = v18;

  v21 = objc_msgSend_copyWithZone_(self->_icloudIdentityPublicData, v20, zone);
  v22 = *(v10 + 32);
  *(v10 + 32) = v21;

  has = self->_has;
  if (has)
  {
    *(v10 + 8) = self->_passwordGeneration;
    *(v10 + 64) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 16) = self->_passwordIterations;
    *(v10 + 64) |= 2u;
  }

  v25 = objc_msgSend_copyWithZone_(self->_passwordProtocol, v23, zone);
  v26 = *(v10 + 48);
  *(v10 + 48) = v25;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_22;
  }

  icdp = self->_icdp;
  v9 = equalCopy[3];
  if (icdp | v9)
  {
    if (!objc_msgSend_isEqual_(icdp, v7, v9))
    {
      goto LABEL_22;
    }
  }

  keyRegistry = self->_keyRegistry;
  v11 = equalCopy[5];
  if (keyRegistry | v11)
  {
    if (!objc_msgSend_isEqual_(keyRegistry, v7, v11))
    {
      goto LABEL_22;
    }
  }

  stableMetadata = self->_stableMetadata;
  v13 = equalCopy[7];
  if (stableMetadata | v13)
  {
    if (!objc_msgSend_isEqual_(stableMetadata, v7, v13))
    {
      goto LABEL_22;
    }
  }

  icloudIdentityPublicData = self->_icloudIdentityPublicData;
  v15 = equalCopy[4];
  if (icloudIdentityPublicData | v15)
  {
    if (!objc_msgSend_isEqual_(icloudIdentityPublicData, v7, v15))
    {
      goto LABEL_22;
    }
  }

  v16 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((equalCopy[8] & 1) == 0 || self->_passwordGeneration != equalCopy[1])
    {
      goto LABEL_22;
    }
  }

  else if (equalCopy[8])
  {
LABEL_22:
    isEqual = 0;
    goto LABEL_23;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[8] & 2) == 0 || self->_passwordIterations != equalCopy[2])
    {
      goto LABEL_22;
    }
  }

  else if ((equalCopy[8] & 2) != 0)
  {
    goto LABEL_22;
  }

  passwordProtocol = self->_passwordProtocol;
  v18 = equalCopy[6];
  if (passwordProtocol | v18)
  {
    isEqual = objc_msgSend_isEqual_(passwordProtocol, v7, v18);
  }

  else
  {
    isEqual = 1;
  }

LABEL_23:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_icdp, a2, v2);
  v7 = objc_msgSend_hash(self->_keyRegistry, v5, v6);
  v10 = objc_msgSend_hash(self->_stableMetadata, v8, v9);
  v13 = objc_msgSend_hash(self->_icloudIdentityPublicData, v11, v12);
  if (*&self->_has)
  {
    v16 = 2654435761 * self->_passwordGeneration;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v17 = 0;
    return v7 ^ v4 ^ v10 ^ v13 ^ v16 ^ v17 ^ objc_msgSend_hash(self->_passwordProtocol, v14, v15);
  }

  v16 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v17 = 2654435761 * self->_passwordIterations;
  return v7 ^ v4 ^ v10 ^ v13 ^ v16 ^ v17 ^ objc_msgSend_hash(self->_passwordProtocol, v14, v15);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  icdp = self->_icdp;
  v6 = fromCopy[3];
  v14 = fromCopy;
  if (icdp)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(icdp, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setIcdp_(self, fromCopy, v6);
  }

  fromCopy = v14;
LABEL_7:
  keyRegistry = self->_keyRegistry;
  v8 = fromCopy[5];
  if (keyRegistry)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    objc_msgSend_mergeFrom_(keyRegistry, fromCopy, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    objc_msgSend_setKeyRegistry_(self, fromCopy, v8);
  }

  fromCopy = v14;
LABEL_13:
  stableMetadata = self->_stableMetadata;
  v10 = fromCopy[7];
  if (stableMetadata)
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    objc_msgSend_mergeFrom_(stableMetadata, fromCopy, v10);
  }

  else
  {
    if (!v10)
    {
      goto LABEL_19;
    }

    objc_msgSend_setStableMetadata_(self, fromCopy, v10);
  }

  fromCopy = v14;
LABEL_19:
  v11 = fromCopy[4];
  if (v11)
  {
    objc_msgSend_setIcloudIdentityPublicData_(self, fromCopy, v11);
    fromCopy = v14;
  }

  v12 = *(fromCopy + 64);
  if (v12)
  {
    self->_passwordGeneration = fromCopy[1];
    *&self->_has |= 1u;
    v12 = *(fromCopy + 64);
  }

  if ((v12 & 2) != 0)
  {
    self->_passwordIterations = fromCopy[2];
    *&self->_has |= 2u;
  }

  v13 = fromCopy[6];
  if (v13)
  {
    objc_msgSend_setPasswordProtocol_(self, fromCopy, v13);
  }

  MEMORY[0x2821F96F8]();
}

@end