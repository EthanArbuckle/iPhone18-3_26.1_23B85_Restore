@interface SecureBackupTermsInfo
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation SecureBackupTermsInfo

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = SecureBackupTermsInfo;
  v4 = [(SecureBackupTermsInfo *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  version = self->_version;
  if (version)
  {
    objc_msgSend_setObject_forKey_(v4, v5, version, @"version");
  }

  icloudVersion = self->_icloudVersion;
  if (icloudVersion)
  {
    objc_msgSend_setObject_forKey_(v6, v5, icloudVersion, @"icloudVersion");
  }

  countryCode = self->_countryCode;
  if (countryCode)
  {
    objc_msgSend_setObject_forKey_(v6, v5, countryCode, @"countryCode");
  }

  metadata = self->_metadata;
  if (metadata)
  {
    objc_msgSend_setObject_forKey_(v6, v5, metadata, @"metadata");
  }

  altDSID = self->_altDSID;
  if (altDSID)
  {
    objc_msgSend_setObject_forKey_(v6, v5, altDSID, @"altDSID");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_version)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_icloudVersion)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_metadata)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_altDSID)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  version = self->_version;
  v11 = v4;
  if (version)
  {
    objc_msgSend_setVersion_(v4, v5, version);
    v4 = v11;
  }

  icloudVersion = self->_icloudVersion;
  if (icloudVersion)
  {
    objc_msgSend_setIcloudVersion_(v11, v5, icloudVersion);
    v4 = v11;
  }

  countryCode = self->_countryCode;
  if (countryCode)
  {
    objc_msgSend_setCountryCode_(v11, v5, countryCode);
    v4 = v11;
  }

  metadata = self->_metadata;
  if (metadata)
  {
    objc_msgSend_setMetadata_(v11, v5, metadata);
    v4 = v11;
  }

  altDSID = self->_altDSID;
  if (altDSID)
  {
    objc_msgSend_setAltDSID_(v11, v5, altDSID);
    v4 = v11;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_version, v11, a3);
  v13 = v10[5];
  v10[5] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_icloudVersion, v14, a3);
  v16 = v10[3];
  v10[3] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_countryCode, v17, a3);
  v19 = v10[2];
  v10[2] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_metadata, v20, a3);
  v22 = v10[4];
  v10[4] = v21;

  v24 = objc_msgSend_copyWithZone_(self->_altDSID, v23, a3);
  v25 = v10[1];
  v10[1] = v24;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_12;
  }

  version = self->_version;
  v9 = v4[5];
  if (version | v9)
  {
    if (!objc_msgSend_isEqual_(version, v7, v9))
    {
      goto LABEL_12;
    }
  }

  if (((icloudVersion = self->_icloudVersion, v11 = v4[3], !(icloudVersion | v11)) || objc_msgSend_isEqual_(icloudVersion, v7, v11)) && ((countryCode = self->_countryCode, v13 = v4[2], !(countryCode | v13)) || objc_msgSend_isEqual_(countryCode, v7, v13)) && ((metadata = self->_metadata, v15 = v4[4], !(metadata | v15)) || objc_msgSend_isEqual_(metadata, v7, v15)))
  {
    altDSID = self->_altDSID;
    v17 = v4[1];
    if (altDSID | v17)
    {
      isEqual = objc_msgSend_isEqual_(altDSID, v7, v17);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
LABEL_12:
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_version, a2, v2);
  v7 = objc_msgSend_hash(self->_icloudVersion, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_countryCode, v8, v9);
  v13 = v7 ^ v10 ^ objc_msgSend_hash(self->_metadata, v11, v12);
  return v13 ^ objc_msgSend_hash(self->_altDSID, v14, v15);
}

- (void)mergeFrom:(id)a3
{
  v10 = a3;
  v5 = v10[5];
  if (v5)
  {
    objc_msgSend_setVersion_(self, v4, v5);
  }

  v6 = v10[3];
  if (v6)
  {
    objc_msgSend_setIcloudVersion_(self, v4, v6);
  }

  v7 = v10[2];
  if (v7)
  {
    objc_msgSend_setCountryCode_(self, v4, v7);
  }

  v8 = v10[4];
  if (v8)
  {
    objc_msgSend_setMetadata_(self, v4, v8);
  }

  v9 = v10[1];
  if (v9)
  {
    objc_msgSend_setAltDSID_(self, v4, v9);
  }
}

@end