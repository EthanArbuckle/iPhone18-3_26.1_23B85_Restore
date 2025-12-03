@interface CKCDPTrustedTargetCryptoMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)schemeAsString:(int)string;
- (int)StringAsScheme:(id)scheme;
- (int)scheme;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasScheme:(BOOL)scheme;
- (void)writeTo:(id)to;
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

- (void)setHasScheme:(BOOL)scheme
{
  if (scheme)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)schemeAsString:(int)string
{
  if (string)
  {
    if (string == 1)
    {
      v4 = @"cloudMediaProcessing";
    }

    else
    {
      v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
    }
  }

  else
  {
    v4 = @"unspecified";
  }

  return v4;
}

- (int)StringAsScheme:(id)scheme
{
  schemeCopy = scheme;
  if (objc_msgSend_isEqualToString_(schemeCopy, v4, @"unspecified"))
  {
    isEqualToString = 0;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(schemeCopy, v5, @"cloudMediaProcessing");
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_encryptedInvocationKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  if (self->_protectionSource)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    keyVersion = self->_keyVersion;
    PBDataWriterWriteInt64Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    scheme = self->_scheme;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  encryptedInvocationKey = self->_encryptedInvocationKey;
  v9 = toCopy;
  if (encryptedInvocationKey)
  {
    objc_msgSend_setEncryptedInvocationKey_(toCopy, v5, encryptedInvocationKey);
    toCopy = v9;
  }

  protectionSource = self->_protectionSource;
  if (protectionSource)
  {
    objc_msgSend_setProtectionSource_(v9, v5, protectionSource);
    toCopy = v9;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 1) = self->_keyVersion;
    *(toCopy + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 8) = self->_scheme;
    *(toCopy + 36) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_encryptedInvocationKey, v11, zone);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_protectionSource, v14, zone);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_15;
  }

  encryptedInvocationKey = self->_encryptedInvocationKey;
  v9 = equalCopy[2];
  if (encryptedInvocationKey | v9)
  {
    if (!objc_msgSend_isEqual_(encryptedInvocationKey, v7, v9))
    {
      goto LABEL_15;
    }
  }

  protectionSource = self->_protectionSource;
  v11 = equalCopy[3];
  if (protectionSource | v11)
  {
    if (!objc_msgSend_isEqual_(protectionSource, v7, v11))
    {
      goto LABEL_15;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_keyVersion != equalCopy[1])
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v12 = (*(equalCopy + 36) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 36) & 2) == 0 || self->_scheme != *(equalCopy + 8))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = *(fromCopy + 2);
  v9 = fromCopy;
  if (v6)
  {
    objc_msgSend_setEncryptedInvocationKey_(self, v5, v6);
    fromCopy = v9;
  }

  v7 = *(fromCopy + 3);
  if (v7)
  {
    objc_msgSend_setProtectionSource_(self, v5, v7);
    fromCopy = v9;
  }

  v8 = *(fromCopy + 36);
  if (v8)
  {
    self->_keyVersion = *(fromCopy + 1);
    *&self->_has |= 1u;
    v8 = *(fromCopy + 36);
  }

  if ((v8 & 2) != 0)
  {
    self->_scheme = *(fromCopy + 8);
    *&self->_has |= 2u;
  }
}

@end