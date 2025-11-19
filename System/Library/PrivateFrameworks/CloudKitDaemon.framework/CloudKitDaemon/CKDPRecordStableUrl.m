@interface CKDPRecordStableUrl
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPRecordStableUrl

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordStableUrl;
  v4 = [(CKDPRecordStableUrl *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  routingKey = self->_routingKey;
  if (routingKey)
  {
    objc_msgSend_setObject_forKey_(v4, v5, routingKey, @"routingKey");
  }

  shortTokenHash = self->_shortTokenHash;
  if (shortTokenHash)
  {
    objc_msgSend_setObject_forKey_(v6, v5, shortTokenHash, @"shortTokenHash");
  }

  protectedFullToken = self->_protectedFullToken;
  if (protectedFullToken)
  {
    objc_msgSend_setObject_forKey_(v6, v5, protectedFullToken, @"protectedFullToken");
  }

  encryptedPublicSharingKey = self->_encryptedPublicSharingKey;
  if (encryptedPublicSharingKey)
  {
    objc_msgSend_setObject_forKey_(v6, v5, encryptedPublicSharingKey, @"encryptedPublicSharingKey");
  }

  displayedHostname = self->_displayedHostname;
  if (displayedHostname)
  {
    objc_msgSend_setObject_forKey_(v6, v5, displayedHostname, @"displayedHostname");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_routingKey)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_shortTokenHash)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_protectedFullToken)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_encryptedPublicSharingKey)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_displayedHostname)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  routingKey = self->_routingKey;
  v11 = v4;
  if (routingKey)
  {
    objc_msgSend_setRoutingKey_(v4, v5, routingKey);
    v4 = v11;
  }

  shortTokenHash = self->_shortTokenHash;
  if (shortTokenHash)
  {
    objc_msgSend_setShortTokenHash_(v11, v5, shortTokenHash);
    v4 = v11;
  }

  protectedFullToken = self->_protectedFullToken;
  if (protectedFullToken)
  {
    objc_msgSend_setProtectedFullToken_(v11, v5, protectedFullToken);
    v4 = v11;
  }

  encryptedPublicSharingKey = self->_encryptedPublicSharingKey;
  if (encryptedPublicSharingKey)
  {
    objc_msgSend_setEncryptedPublicSharingKey_(v11, v5, encryptedPublicSharingKey);
    v4 = v11;
  }

  displayedHostname = self->_displayedHostname;
  if (displayedHostname)
  {
    objc_msgSend_setDisplayedHostname_(v11, v5, displayedHostname);
    v4 = v11;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_routingKey, v11, a3);
  v13 = v10[4];
  v10[4] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_shortTokenHash, v14, a3);
  v16 = v10[5];
  v10[5] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_protectedFullToken, v17, a3);
  v19 = v10[3];
  v10[3] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_encryptedPublicSharingKey, v20, a3);
  v22 = v10[2];
  v10[2] = v21;

  v24 = objc_msgSend_copyWithZone_(self->_displayedHostname, v23, a3);
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

  routingKey = self->_routingKey;
  v9 = v4[4];
  if (routingKey | v9)
  {
    if (!objc_msgSend_isEqual_(routingKey, v7, v9))
    {
      goto LABEL_12;
    }
  }

  if (((shortTokenHash = self->_shortTokenHash, v11 = v4[5], !(shortTokenHash | v11)) || objc_msgSend_isEqual_(shortTokenHash, v7, v11)) && ((protectedFullToken = self->_protectedFullToken, v13 = v4[3], !(protectedFullToken | v13)) || objc_msgSend_isEqual_(protectedFullToken, v7, v13)) && ((encryptedPublicSharingKey = self->_encryptedPublicSharingKey, v15 = v4[2], !(encryptedPublicSharingKey | v15)) || objc_msgSend_isEqual_(encryptedPublicSharingKey, v7, v15)))
  {
    displayedHostname = self->_displayedHostname;
    v17 = v4[1];
    if (displayedHostname | v17)
    {
      isEqual = objc_msgSend_isEqual_(displayedHostname, v7, v17);
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
  v4 = objc_msgSend_hash(self->_routingKey, a2, v2);
  v7 = objc_msgSend_hash(self->_shortTokenHash, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_protectedFullToken, v8, v9);
  v13 = v7 ^ v10 ^ objc_msgSend_hash(self->_encryptedPublicSharingKey, v11, v12);
  return v13 ^ objc_msgSend_hash(self->_displayedHostname, v14, v15);
}

- (void)mergeFrom:(id)a3
{
  v10 = a3;
  v5 = v10[4];
  if (v5)
  {
    objc_msgSend_setRoutingKey_(self, v4, v5);
  }

  v6 = v10[5];
  if (v6)
  {
    objc_msgSend_setShortTokenHash_(self, v4, v6);
  }

  v7 = v10[3];
  if (v7)
  {
    objc_msgSend_setProtectedFullToken_(self, v4, v7);
  }

  v8 = v10[2];
  if (v8)
  {
    objc_msgSend_setEncryptedPublicSharingKey_(self, v4, v8);
  }

  v9 = v10[1];
  if (v9)
  {
    objc_msgSend_setDisplayedHostname_(self, v4, v9);
  }
}

@end