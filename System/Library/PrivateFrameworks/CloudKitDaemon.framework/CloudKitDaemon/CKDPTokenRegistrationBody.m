@interface CKDPTokenRegistrationBody
- (BOOL)isEqual:(id)a3;
- (id)apnsEnvAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsApnsEnv:(id)a3;
- (int)apnsEnv;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasSkipBundleIDCheck:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPTokenRegistrationBody

- (int)apnsEnv
{
  if (*&self->_has)
  {
    return self->_apnsEnv;
  }

  else
  {
    return 0;
  }
}

- (id)apnsEnvAsString:(int)a3
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = @"development";
    }

    else
    {
      v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
    }
  }

  else
  {
    v4 = @"production";
  }

  return v4;
}

- (int)StringAsApnsEnv:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"production"))
  {
    isEqualToString = 0;
  }

  else
  {
    isEqualToString = objc_msgSend_isEqualToString_(v3, v5, @"development");
  }

  return isEqualToString;
}

- (void)setHasSkipBundleIDCheck:(BOOL)a3
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
  v11.super_class = CKDPTokenRegistrationBody;
  v4 = [(CKDPTokenRegistrationBody *)&v11 description];
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

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    objc_msgSend_setObject_forKey_(v6, v5, bundleIdentifier, @"bundleIdentifier");
  }

  has = self->_has;
  if (has)
  {
    apnsEnv = self->_apnsEnv;
    if (apnsEnv)
    {
      if (apnsEnv == 1)
      {
        v11 = @"development";
        objc_msgSend_setObject_forKey_(v6, v5, @"development", @"apnsEnv");
      }

      else
      {
        v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_apnsEnv);
        objc_msgSend_setObject_forKey_(v6, v12, v11, @"apnsEnv");
      }
    }

    else
    {
      v11 = @"production";
      objc_msgSend_setObject_forKey_(v6, v5, @"production", @"apnsEnv");
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v13 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_skipBundleIDCheck);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"skipBundleIDCheck");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_token)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  if (self->_bundleIdentifier)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    apnsEnv = self->_apnsEnv;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    skipBundleIDCheck = self->_skipBundleIDCheck;
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

  bundleIdentifier = self->_bundleIdentifier;
  if (bundleIdentifier)
  {
    objc_msgSend_setBundleIdentifier_(v9, v5, bundleIdentifier);
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 2) = self->_apnsEnv;
    *(v4 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 32) = self->_skipBundleIDCheck;
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

  v15 = objc_msgSend_copyWithZone_(self->_bundleIdentifier, v14, a3);
  v16 = *(v10 + 16);
  *(v10 + 16) = v15;

  has = self->_has;
  if (has)
  {
    *(v10 + 8) = self->_apnsEnv;
    *(v10 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 32) = self->_skipBundleIDCheck;
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

  bundleIdentifier = self->_bundleIdentifier;
  v11 = v4[2];
  if (bundleIdentifier | v11)
  {
    if (!objc_msgSend_isEqual_(bundleIdentifier, v7, v11))
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_apnsEnv != *(v4 + 2))
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

    if (self->_skipBundleIDCheck)
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
  v7 = objc_msgSend_hash(self->_bundleIdentifier, v5, v6);
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_apnsEnv;
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
  v9 = 2654435761 * self->_skipBundleIDCheck;
  return v7 ^ v4 ^ v8 ^ v9;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = *(v4 + 3);
  v9 = v4;
  if (v6)
  {
    objc_msgSend_setToken_(self, v5, v6);
    v4 = v9;
  }

  v7 = *(v4 + 2);
  if (v7)
  {
    objc_msgSend_setBundleIdentifier_(self, v5, v7);
    v4 = v9;
  }

  v8 = *(v4 + 36);
  if (v8)
  {
    self->_apnsEnv = *(v4 + 2);
    *&self->_has |= 1u;
    v8 = *(v4 + 36);
  }

  if ((v8 & 2) != 0)
  {
    self->_skipBundleIDCheck = *(v4 + 32);
    *&self->_has |= 2u;
  }
}

@end