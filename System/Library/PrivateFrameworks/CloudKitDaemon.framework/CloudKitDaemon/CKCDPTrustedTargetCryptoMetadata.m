@interface CKCDPTrustedTargetCryptoMetadata
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)schemeAsString:(int)a3;
- (int)StringAsScheme:(id)a3;
- (int)scheme;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasScheme:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKCDPTrustedTargetCryptoMetadata

- (int)scheme
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_scheme;
  }

  else
  {
    return 0;
  }
}

- (void)setHasScheme:(BOOL)a3
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

- (id)schemeAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"cloudMediaProcessing";
    }

    else
    {
      v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
    }
  }

  else
  {
    v4 = @"unspecified";
  }

  return v4;
}

- (int)StringAsScheme:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"unspecified"))
  {
    isEqualToString = 0;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v3, v5, @"cloudMediaProcessing");
  }

  return isEqualToString;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPTrustedTargetCryptoMetadata;
  v4 = [(CKCDPTrustedTargetCryptoMetadata *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  encryptedInvocationKey = self->_encryptedInvocationKey;
  if (encryptedInvocationKey)
  {
    objc_msgSend_setObject_forKey_(v4, v5, encryptedInvocationKey, @"encryptedInvocationKey");
  }

  protectionSource = self->_protectionSource;
  if (protectionSource)
  {
    objc_msgSend_setObject_forKey_(v6, v5, protectionSource, @"protectionSource");
  }

  has = self->_has;
  if (has)
  {
    v10 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v5, self->_keyVersion);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"keyVersion");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    scheme = self->_scheme;
    if (scheme)
    {
      if (scheme == 1)
      {
        v13 = @"cloudMediaProcessing";
        objc_msgSend_setObject_forKey_(v6, v5, @"cloudMediaProcessing", @"scheme");
      }

      else
      {
        v13 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_scheme);
        objc_msgSend_setObject_forKey_(v6, v14, v13, @"scheme");
      }
    }

    else
    {
      v13 = @"unspecified";
      objc_msgSend_setObject_forKey_(v6, v5, @"unspecified", @"scheme");
    }
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_encryptedInvocationKey)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_protectionSource)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    keyVersion = self->_keyVersion;
    PBDataWriterWriteInt64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    scheme = self->_scheme;
    PBDataWriterWriteInt32Field();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  encryptedInvocationKey = self->_encryptedInvocationKey;
  v9 = v4;
  if (encryptedInvocationKey)
  {
    objc_msgSend_setEncryptedInvocationKey_(v4, v5, encryptedInvocationKey);
    v4 = v9;
  }

  protectionSource = self->_protectionSource;
  if (protectionSource)
  {
    objc_msgSend_setProtectionSource_(v9, v5, protectionSource);
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_keyVersion;
    *(v4 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 8) = self->_scheme;
    *(v4 + 36) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_encryptedInvocationKey, v11, a3);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_protectionSource, v14, a3);
  v16 = *(v10 + 24);
  *(v10 + 24) = v15;

  has = self->_has;
  if (has)
  {
    *(v10 + 8) = self->_keyVersion;
    *(v10 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 32) = self->_scheme;
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
    goto LABEL_15;
  }

  encryptedInvocationKey = self->_encryptedInvocationKey;
  v9 = v4[2];
  if (encryptedInvocationKey | v9)
  {
    if (!objc_msgSend_isEqual_(encryptedInvocationKey, v7, v9))
    {
      goto LABEL_15;
    }
  }

  protectionSource = self->_protectionSource;
  v11 = v4[3];
  if (protectionSource | v11)
  {
    if (!objc_msgSend_isEqual_(protectionSource, v7, v11))
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_keyVersion != v4[1])
    {
      goto LABEL_15;
    }
  }

  else if (*(v4 + 36))
  {
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v12 = (*(v4 + 36) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 36) & 2) == 0 || self->_scheme != *(v4 + 8))
    {
      goto LABEL_15;
    }

    v12 = 1;
  }

LABEL_16:

  return v12;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_encryptedInvocationKey, a2, v2);
  v7 = objc_msgSend_hash(self->_protectionSource, v5, v6);
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_keyVersion;
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
  v9 = 2654435761 * self->_scheme;
  return v7 ^ v4 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = *(v4 + 2);
  v9 = v4;
  if (v6)
  {
    objc_msgSend_setEncryptedInvocationKey_(self, v5, v6);
    v4 = v9;
  }

  v7 = *(v4 + 3);
  if (v7)
  {
    objc_msgSend_setProtectionSource_(self, v5, v7);
    v4 = v9;
  }

  v8 = *(v4 + 36);
  if (v8)
  {
    self->_keyVersion = *(v4 + 1);
    *&self->_has |= 1u;
    v8 = *(v4 + 36);
  }

  if ((v8 & 2) != 0)
  {
    self->_scheme = *(v4 + 8);
    *&self->_has |= 2u;
  }
}

@end