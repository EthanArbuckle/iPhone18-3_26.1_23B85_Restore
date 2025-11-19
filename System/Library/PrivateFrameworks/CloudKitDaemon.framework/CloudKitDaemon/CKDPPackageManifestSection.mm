@interface CKDPPackageManifestSection
- (BOOL)isEqual:(id)a3;
- (BOOL)readFrom:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasLastSection:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPPackageManifestSection

- (void)setHasLastSection:(BOOL)a3
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
  v11.super_class = CKDPPackageManifestSection;
  v4 = [(CKDPPackageManifestSection *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  signature = self->_signature;
  if (signature)
  {
    objc_msgSend_setObject_forKey_(v4, v5, signature, @"signature");
  }

  has = self->_has;
  if (has)
  {
    v9 = objc_msgSend_numberWithLongLong_(MEMORY[0x277CCABB0], v5, self->_size);
    objc_msgSend_setObject_forKey_(v6, v10, v9, @"size");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v11 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_lastSection);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"lastSection");
  }

  verificationKey = self->_verificationKey;
  if (verificationKey)
  {
    objc_msgSend_setObject_forKey_(v6, v5, verificationKey, @"verificationKey");
  }

  return v6;
}

- (BOOL)readFrom:(id)a3
{
  v5 = objc_msgSend_position(a3, a2, a3);
  if (v5 < objc_msgSend_length(a3, v6, v7))
  {
    while (1)
    {
      if (objc_msgSend_hasError(a3, v8, v9))
      {
        goto LABEL_52;
      }

      v10 = 0;
      v11 = 0;
      v12 = 0;
      while (1)
      {
        v83 = 0;
        v13 = objc_msgSend_position(a3, v8, v9) + 1;
        if (v13 >= objc_msgSend_position(a3, v14, v15) && (v18 = objc_msgSend_position(a3, v16, v17) + 1, v18 <= objc_msgSend_length(a3, v19, v20)))
        {
          v21 = objc_msgSend_data(a3, v16, v17);
          v24 = objc_msgSend_position(a3, v22, v23);
          objc_msgSend_getBytes_range_(v21, v25, &v83, v24, 1);

          v28 = objc_msgSend_position(a3, v26, v27);
          objc_msgSend_setPosition_(a3, v29, v28 + 1);
        }

        else
        {
          objc_msgSend__setError(a3, v16, v17);
        }

        v12 |= (v83 & 0x7F) << v10;
        if ((v83 & 0x80) == 0)
        {
          break;
        }

        v10 += 7;
        v30 = v11++ >= 9;
        if (v30)
        {
          v31 = 0;
          goto LABEL_15;
        }
      }

      v31 = objc_msgSend_hasError(a3, v8, v9) ? 0 : v12;
LABEL_15:
      if (objc_msgSend_hasError(a3, v8, v9))
      {
        goto LABEL_52;
      }

      v9 = v31 & 7;
      if (v9 == 4)
      {
        goto LABEL_52;
      }

      v32 = (v31 >> 3);
      if ((v31 >> 3) > 2)
      {
        break;
      }

      if (v32 == 1)
      {
        v54 = PBReaderReadData();
        v55 = 16;
LABEL_35:
        v57 = *(&self->super.super.isa + v55);
        *(&self->super.super.isa + v55) = v54;

        goto LABEL_51;
      }

      if (v32 != 2)
      {
        goto LABEL_32;
      }

      v33 = 0;
      v34 = 0;
      v35 = 0;
      *&self->_has |= 1u;
      while (1)
      {
        v84 = 0;
        v36 = objc_msgSend_position(a3, v32, v9) + 1;
        if (v36 >= objc_msgSend_position(a3, v37, v38) && (v41 = objc_msgSend_position(a3, v39, v40) + 1, v41 <= objc_msgSend_length(a3, v42, v43)))
        {
          v44 = objc_msgSend_data(a3, v39, v40);
          v47 = objc_msgSend_position(a3, v45, v46);
          objc_msgSend_getBytes_range_(v44, v48, &v84, v47, 1);

          v51 = objc_msgSend_position(a3, v49, v50);
          objc_msgSend_setPosition_(a3, v52, v51 + 1);
        }

        else
        {
          objc_msgSend__setError(a3, v39, v40);
        }

        v35 |= (v84 & 0x7F) << v33;
        if ((v84 & 0x80) == 0)
        {
          break;
        }

        v33 += 7;
        v30 = v34++ >= 9;
        if (v30)
        {
          v53 = 0;
          goto LABEL_48;
        }
      }

      if (objc_msgSend_hasError(a3, v32, v9))
      {
        v53 = 0;
      }

      else
      {
        v53 = v35;
      }

LABEL_48:
      self->_size = v53;
LABEL_51:
      v79 = objc_msgSend_position(a3, v32, v9);
      if (v79 >= objc_msgSend_length(a3, v80, v81))
      {
        goto LABEL_52;
      }
    }

    if (v32 == 3)
    {
      v58 = 0;
      v59 = 0;
      v60 = 0;
      *&self->_has |= 2u;
      while (1)
      {
        v85 = 0;
        v61 = objc_msgSend_position(a3, v32, v9) + 1;
        if (v61 >= objc_msgSend_position(a3, v62, v63) && (v66 = objc_msgSend_position(a3, v64, v65) + 1, v66 <= objc_msgSend_length(a3, v67, v68)))
        {
          v69 = objc_msgSend_data(a3, v64, v65);
          v72 = objc_msgSend_position(a3, v70, v71);
          objc_msgSend_getBytes_range_(v69, v73, &v85, v72, 1);

          v76 = objc_msgSend_position(a3, v74, v75);
          objc_msgSend_setPosition_(a3, v77, v76 + 1);
        }

        else
        {
          objc_msgSend__setError(a3, v64, v65);
        }

        v60 |= (v85 & 0x7F) << v58;
        if ((v85 & 0x80) == 0)
        {
          break;
        }

        v58 += 7;
        v30 = v59++ >= 9;
        if (v30)
        {
          LOBYTE(v78) = 0;
          goto LABEL_50;
        }
      }

      v78 = (v60 != 0) & ~objc_msgSend_hasError(a3, v32, v9);
LABEL_50:
      self->_lastSection = v78;
      goto LABEL_51;
    }

    if (v32 != 4)
    {
LABEL_32:
      v56 = PBReaderSkipValueWithTag();
      if (!v56)
      {
        return v56;
      }

      goto LABEL_51;
    }

    v54 = PBReaderReadData();
    v55 = 24;
    goto LABEL_35;
  }

LABEL_52:
  LOBYTE(v56) = objc_msgSend_hasError(a3, v8, v9) ^ 1;
  return v56;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_signature)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    size = self->_size;
    PBDataWriterWriteInt64Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    lastSection = self->_lastSection;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }

  if (self->_verificationKey)
  {
    PBDataWriterWriteDataField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  signature = self->_signature;
  v9 = v4;
  if (signature)
  {
    objc_msgSend_setSignature_(v4, v5, signature);
    v4 = v9;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 1) = self->_size;
    *(v4 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 32) = self->_lastSection;
    *(v4 + 36) |= 2u;
  }

  verificationKey = self->_verificationKey;
  if (verificationKey)
  {
    objc_msgSend_setVerificationKey_(v9, v5, verificationKey);
    v4 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_signature, v11, a3);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  has = self->_has;
  if (has)
  {
    *(v10 + 8) = self->_size;
    *(v10 + 36) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 32) = self->_lastSection;
    *(v10 + 36) |= 2u;
  }

  v16 = objc_msgSend_copyWithZone_(self->_verificationKey, v14, a3);
  v17 = *(v10 + 24);
  *(v10 + 24) = v16;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_14;
  }

  signature = self->_signature;
  v9 = v4[2];
  if (signature | v9)
  {
    if (!objc_msgSend_isEqual_(signature, v7, v9))
    {
      goto LABEL_14;
    }
  }

  v10 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0 || self->_size != v4[1])
    {
      goto LABEL_14;
    }
  }

  else if (*(v4 + 36))
  {
    goto LABEL_14;
  }

  if ((*&self->_has & 2) == 0)
  {
    if ((*(v4 + 36) & 2) == 0)
    {
      goto LABEL_11;
    }

LABEL_14:
    isEqual = 0;
    goto LABEL_15;
  }

  if ((*(v4 + 36) & 2) == 0)
  {
    goto LABEL_14;
  }

  v15 = *(v4 + 32);
  if (self->_lastSection)
  {
    if ((v4[4] & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else if (v4[4])
  {
    goto LABEL_14;
  }

LABEL_11:
  verificationKey = self->_verificationKey;
  v12 = v4[3];
  if (verificationKey | v12)
  {
    isEqual = objc_msgSend_isEqual_(verificationKey, v7, v12);
  }

  else
  {
    isEqual = 1;
  }

LABEL_15:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_signature, a2, v2);
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_size;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = 0;
    return v7 ^ v4 ^ v8 ^ objc_msgSend_hash(self->_verificationKey, v5, v6);
  }

  v7 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v8 = 2654435761 * self->_lastSection;
  return v7 ^ v4 ^ v8 ^ objc_msgSend_hash(self->_verificationKey, v5, v6);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = *(v4 + 2);
  v9 = v4;
  if (v6)
  {
    objc_msgSend_setSignature_(self, v5, v6);
    v4 = v9;
  }

  v7 = *(v4 + 36);
  if (v7)
  {
    self->_size = *(v4 + 1);
    *&self->_has |= 1u;
    v7 = *(v4 + 36);
  }

  if ((v7 & 2) != 0)
  {
    self->_lastSection = *(v4 + 32);
    *&self->_has |= 2u;
  }

  v8 = *(v4 + 3);
  if (v8)
  {
    objc_msgSend_setVerificationKey_(self, v5, v8);
    v4 = v9;
  }
}

@end