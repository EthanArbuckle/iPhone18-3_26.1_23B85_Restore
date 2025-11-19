@interface CKDPZoneSaveResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPZoneSaveResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPZoneSaveResponse;
  v4 = [(CKDPZoneSaveResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  capabilities = self->_capabilities;
  if (capabilities)
  {
    v8 = objc_msgSend_dictionaryRepresentation(capabilities, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"capabilities");
  }

  if (*&self->_has)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_expired);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"expired");
  }

  expirationTime = self->_expirationTime;
  if (expirationTime)
  {
    v13 = objc_msgSend_dictionaryRepresentation(expirationTime, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"expirationTime");
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setObject_forKey_(v6, v4, etag, @"etag");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_capabilities)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    expired = self->_expired;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }

  if (self->_expirationTime)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  capabilities = self->_capabilities;
  v9 = v4;
  if (capabilities)
  {
    objc_msgSend_setCapabilities_(v4, v5, capabilities);
    v4 = v9;
  }

  if (*&self->_has)
  {
    v4[32] = self->_expired;
    v4[36] |= 1u;
  }

  expirationTime = self->_expirationTime;
  if (expirationTime)
  {
    objc_msgSend_setExpirationTime_(v9, v5, expirationTime);
    v4 = v9;
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setEtag_(v9, v5, etag);
    v4 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_capabilities, v11, a3);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  if (*&self->_has)
  {
    *(v10 + 32) = self->_expired;
    *(v10 + 36) |= 1u;
  }

  v15 = objc_msgSend_copyWithZone_(self->_expirationTime, v14, a3);
  v16 = *(v10 + 24);
  *(v10 + 24) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_etag, v17, a3);
  v19 = *(v10 + 16);
  *(v10 + 16) = v18;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_11;
  }

  capabilities = self->_capabilities;
  v9 = v4[1];
  if (capabilities | v9)
  {
    if (!objc_msgSend_isEqual_(capabilities, v7, v9))
    {
      goto LABEL_11;
    }
  }

  v10 = *(v4 + 36);
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
      goto LABEL_11;
    }

    v10 = *(v4 + 32);
    if (self->_expired)
    {
      if (v4[4])
      {
        goto LABEL_6;
      }

LABEL_11:
      isEqual = 0;
      goto LABEL_12;
    }
  }

  if (v10)
  {
    goto LABEL_11;
  }

LABEL_6:
  expirationTime = self->_expirationTime;
  v12 = v4[3];
  if (expirationTime | v12 && !objc_msgSend_isEqual_(expirationTime, v7, v12))
  {
    goto LABEL_11;
  }

  etag = self->_etag;
  v14 = v4[2];
  if (etag | v14)
  {
    isEqual = objc_msgSend_isEqual_(etag, v7, v14);
  }

  else
  {
    isEqual = 1;
  }

LABEL_12:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_capabilities, a2, v2);
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_expired;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 ^ v4;
  v9 = objc_msgSend_hash(self->_expirationTime, v5, v6);
  return v8 ^ v9 ^ objc_msgSend_hash(self->_etag, v10, v11);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  capabilities = self->_capabilities;
  v6 = *(v4 + 1);
  v10 = v4;
  if (capabilities)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(capabilities, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setCapabilities_(self, v4, v6);
  }

  v4 = v10;
LABEL_7:
  if (*(v4 + 36))
  {
    self->_expired = *(v4 + 32);
    *&self->_has |= 1u;
  }

  expirationTime = self->_expirationTime;
  v8 = *(v4 + 3);
  if (expirationTime)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    objc_msgSend_mergeFrom_(expirationTime, v4, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    objc_msgSend_setExpirationTime_(self, v4, v8);
  }

  v4 = v10;
LABEL_15:
  v9 = *(v4 + 2);
  if (v9)
  {
    objc_msgSend_setEtag_(self, v4, v9);
  }

  MEMORY[0x2821F96F8]();
}

@end