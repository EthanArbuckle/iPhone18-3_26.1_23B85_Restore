@interface CKDPZoneSaveResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_capabilities)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    expired = self->_expired;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

  if (self->_expirationTime)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  capabilities = self->_capabilities;
  v9 = toCopy;
  if (capabilities)
  {
    objc_msgSend_setCapabilities_(toCopy, v5, capabilities);
    toCopy = v9;
  }

  if (*&self->_has)
  {
    toCopy[32] = self->_expired;
    toCopy[36] |= 1u;
  }

  expirationTime = self->_expirationTime;
  if (expirationTime)
  {
    objc_msgSend_setExpirationTime_(v9, v5, expirationTime);
    toCopy = v9;
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setEtag_(v9, v5, etag);
    toCopy = v9;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_capabilities, v11, zone);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  if (*&self->_has)
  {
    *(v10 + 32) = self->_expired;
    *(v10 + 36) |= 1u;
  }

  v15 = objc_msgSend_copyWithZone_(self->_expirationTime, v14, zone);
  v16 = *(v10 + 24);
  *(v10 + 24) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_etag, v17, zone);
  v19 = *(v10 + 16);
  *(v10 + 16) = v18;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_11;
  }

  capabilities = self->_capabilities;
  v9 = equalCopy[1];
  if (capabilities | v9)
  {
    if (!objc_msgSend_isEqual_(capabilities, v7, v9))
    {
      goto LABEL_11;
    }
  }

  v10 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
      goto LABEL_11;
    }

    v10 = *(equalCopy + 32);
    if (self->_expired)
    {
      if (equalCopy[4])
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
  v12 = equalCopy[3];
  if (expirationTime | v12 && !objc_msgSend_isEqual_(expirationTime, v7, v12))
  {
    goto LABEL_11;
  }

  etag = self->_etag;
  v14 = equalCopy[2];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  capabilities = self->_capabilities;
  v6 = *(fromCopy + 1);
  v10 = fromCopy;
  if (capabilities)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(capabilities, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setCapabilities_(self, fromCopy, v6);
  }

  fromCopy = v10;
LABEL_7:
  if (*(fromCopy + 36))
  {
    self->_expired = *(fromCopy + 32);
    *&self->_has |= 1u;
  }

  expirationTime = self->_expirationTime;
  v8 = *(fromCopy + 3);
  if (expirationTime)
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    objc_msgSend_mergeFrom_(expirationTime, fromCopy, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_15;
    }

    objc_msgSend_setExpirationTime_(self, fromCopy, v8);
  }

  fromCopy = v10;
LABEL_15:
  v9 = *(fromCopy + 2);
  if (v9)
  {
    objc_msgSend_setEtag_(self, fromCopy, v9);
  }

  MEMORY[0x2821F96F8]();
}

@end