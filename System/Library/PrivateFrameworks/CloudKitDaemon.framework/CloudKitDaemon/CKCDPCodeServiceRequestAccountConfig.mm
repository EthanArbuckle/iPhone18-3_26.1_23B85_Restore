@interface CKCDPCodeServiceRequestAccountConfig
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasCorporateSharingEnabled:(BOOL)a3;
- (void)setHasLastWebActivityUTCMills:(BOOL)a3;
- (void)setHasPhotosWebAccessTimestamp:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKCDPCodeServiceRequestAccountConfig

- (void)setHasCorporateSharingEnabled:(BOOL)a3
{
  if (a3)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xF7 | v3;
}

- (void)setHasLastWebActivityUTCMills:(BOOL)a3
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

- (void)setHasPhotosWebAccessTimestamp:(BOOL)a3
{
  if (a3)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPCodeServiceRequestAccountConfig;
  v4 = [(CKCDPCodeServiceRequestAccountConfig *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  has = self->_has;
  if ((has & 8) != 0)
  {
    v7 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_corporateSharingEnabled);
    objc_msgSend_setObject_forKey_(v5, v8, v7, @"corporateSharingEnabled");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v9 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_lastWebActivityUTCMills);
    objc_msgSend_setObject_forKey_(v5, v10, v9, @"lastWebActivityUTCMills");
  }

  countryCode = self->_countryCode;
  if (countryCode)
  {
    objc_msgSend_setObject_forKey_(v5, v4, countryCode, @"countryCode");
  }

  v12 = self->_has;
  if ((v12 & 4) != 0)
  {
    v13 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v4, self->_photosWebAccessTimestamp);
    objc_msgSend_setObject_forKey_(v5, v14, v13, @"photosWebAccessTimestamp");

    v12 = self->_has;
  }

  if (v12)
  {
    v15 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v4, self->_accountFlags);
    objc_msgSend_setObject_forKey_(v5, v16, v15, @"accountFlags");
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    corporateSharingEnabled = self->_corporateSharingEnabled;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    lastWebActivityUTCMills = self->_lastWebActivityUTCMills;
    PBDataWriterWriteInt64Field();
  }

  if (self->_countryCode)
  {
    PBDataWriterWriteStringField();
  }

  v7 = self->_has;
  if ((v7 & 4) != 0)
  {
    photosWebAccessTimestamp = self->_photosWebAccessTimestamp;
    PBDataWriterWriteInt64Field();
    v7 = self->_has;
  }

  if (v7)
  {
    accountFlags = self->_accountFlags;
    PBDataWriterWriteUint64Field();
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 8) != 0)
  {
    v4[40] = self->_corporateSharingEnabled;
    v4[44] |= 8u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 2) = self->_lastWebActivityUTCMills;
    v4[44] |= 2u;
  }

  countryCode = self->_countryCode;
  if (countryCode)
  {
    v9 = v4;
    objc_msgSend_setCountryCode_(v4, v5, countryCode);
    v4 = v9;
  }

  v8 = self->_has;
  if ((v8 & 4) != 0)
  {
    *(v4 + 3) = self->_photosWebAccessTimestamp;
    v4[44] |= 4u;
    v8 = self->_has;
  }

  if (v8)
  {
    *(v4 + 1) = self->_accountFlags;
    v4[44] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  has = self->_has;
  if ((has & 8) != 0)
  {
    *(v10 + 40) = self->_corporateSharingEnabled;
    *(v10 + 44) |= 8u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 16) = self->_lastWebActivityUTCMills;
    *(v10 + 44) |= 2u;
  }

  v14 = objc_msgSend_copyWithZone_(self->_countryCode, v11, a3);
  v15 = *(v12 + 32);
  *(v12 + 32) = v14;

  v16 = self->_has;
  if ((v16 & 4) != 0)
  {
    *(v12 + 24) = self->_photosWebAccessTimestamp;
    *(v12 + 44) |= 4u;
    v16 = self->_has;
  }

  if (v16)
  {
    *(v12 + 8) = self->_accountFlags;
    *(v12 + 44) |= 1u;
  }

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_27;
  }

  has = self->_has;
  v9 = *(v4 + 44);
  if ((has & 8) != 0)
  {
    if ((*(v4 + 44) & 8) == 0)
    {
      goto LABEL_27;
    }

    v10 = *(v4 + 40);
    if (self->_corporateSharingEnabled)
    {
      if ((v4[5] & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else if (v4[5])
    {
      goto LABEL_27;
    }
  }

  else if ((*(v4 + 44) & 8) != 0)
  {
    goto LABEL_27;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) == 0 || self->_lastWebActivityUTCMills != v4[2])
    {
      goto LABEL_27;
    }
  }

  else if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_27;
  }

  countryCode = self->_countryCode;
  v12 = v4[4];
  if (countryCode | v12)
  {
    if (objc_msgSend_isEqual_(countryCode, v7, v12))
    {
      has = self->_has;
      v9 = *(v4 + 44);
      goto LABEL_16;
    }

LABEL_27:
    v13 = 0;
    goto LABEL_28;
  }

LABEL_16:
  if ((has & 4) != 0)
  {
    if ((v9 & 4) == 0 || self->_photosWebAccessTimestamp != v4[3])
    {
      goto LABEL_27;
    }
  }

  else if ((v9 & 4) != 0)
  {
    goto LABEL_27;
  }

  v13 = (v9 & 1) == 0;
  if (has)
  {
    if ((v9 & 1) == 0 || self->_accountFlags != v4[1])
    {
      goto LABEL_27;
    }

    v13 = 1;
  }

LABEL_28:

  return v13;
}

- (unint64_t)hash
{
  if ((*&self->_has & 8) != 0)
  {
    v4 = 2654435761 * self->_corporateSharingEnabled;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 2) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_lastWebActivityUTCMills;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = objc_msgSend_hash(self->_countryCode, a2, v2);
  if ((*&self->_has & 4) != 0)
  {
    v7 = 2654435761 * self->_photosWebAccessTimestamp;
    if (*&self->_has)
    {
      goto LABEL_8;
    }

LABEL_10:
    v8 = 0;
    return v5 ^ v4 ^ v7 ^ v8 ^ v6;
  }

  v7 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  v8 = 2654435761u * self->_accountFlags;
  return v5 ^ v4 ^ v7 ^ v8 ^ v6;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = *(v4 + 44);
  if ((v6 & 8) != 0)
  {
    self->_corporateSharingEnabled = *(v4 + 40);
    *&self->_has |= 8u;
    v6 = *(v4 + 44);
  }

  if ((v6 & 2) != 0)
  {
    self->_lastWebActivityUTCMills = *(v4 + 2);
    *&self->_has |= 2u;
  }

  v7 = *(v4 + 4);
  if (v7)
  {
    v9 = v4;
    objc_msgSend_setCountryCode_(self, v5, v7);
    v4 = v9;
  }

  v8 = *(v4 + 44);
  if ((v8 & 4) != 0)
  {
    self->_photosWebAccessTimestamp = *(v4 + 3);
    *&self->_has |= 4u;
    v8 = *(v4 + 44);
  }

  if (v8)
  {
    self->_accountFlags = *(v4 + 1);
    *&self->_has |= 1u;
  }
}

@end