@interface LIGHTHOUSE_BITACORA_PROTOEventStatus
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasSucceeded:(BOOL)succeeded;
- (void)writeTo:(id)to;
@end

@implementation LIGHTHOUSE_BITACORA_PROTOEventStatus

- (void)setHasSucceeded:(BOOL)succeeded
{
  if (succeeded)
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
  v15.receiver = self;
  v15.super_class = LIGHTHOUSE_BITACORA_PROTOEventStatus;
  v4 = [(LIGHTHOUSE_BITACORA_PROTOEventStatus *)&v15 description];
  v9 = objc_msgSend_dictionaryRepresentation(self, v5, v6, v7, v8);
  v13 = objc_msgSend_stringWithFormat_(v3, v10, @"%@ %@", v11, v12, v4, v9);

  return v13;
}

- (id)dictionaryRepresentation
{
  v9 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2, v3, v4);
  if ((*&self->_has & 2) != 0)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v6, self->_succeeded, v7, v8);
    objc_msgSend_setObject_forKey_(v9, v11, v10, @"succeeded", v12);
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    objc_msgSend_setObject_forKey_(v9, v6, errorDomain, @"errorDomain", v8);
  }

  if (*&self->_has)
  {
    v14 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v6, self->_errorCode, v7, v8);
    objc_msgSend_setObject_forKey_(v9, v15, v14, @"errorCode", v16);
  }

  return v9;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v7 = toCopy;
  if ((*&self->_has & 2) != 0)
  {
    succeeded = self->_succeeded;
    PBDataWriterWriteBOOLField();
    toCopy = v7;
  }

  if (self->_errorDomain)
  {
    PBDataWriterWriteStringField();
    toCopy = v7;
  }

  if (*&self->_has)
  {
    errorCode = self->_errorCode;
    PBDataWriterWriteInt32Field();
    toCopy = v7;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[24] = self->_succeeded;
    toCopy[28] |= 2u;
  }

  errorDomain = self->_errorDomain;
  if (errorDomain)
  {
    v9 = toCopy;
    objc_msgSend_setErrorDomain_(toCopy, v5, errorDomain, v6, v7);
    toCopy = v9;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_errorCode;
    toCopy[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v9 = objc_msgSend_allocWithZone_(v5, v6, zone, v7, v8);
  v14 = objc_msgSend_init(v9, v10, v11, v12, v13);
  v18 = v14;
  if ((*&self->_has & 2) != 0)
  {
    *(v14 + 24) = self->_succeeded;
    *(v14 + 28) |= 2u;
  }

  v19 = objc_msgSend_copyWithZone_(self->_errorDomain, v15, zone, v16, v17);
  v20 = *(v18 + 16);
  *(v18 + 16) = v19;

  if (*&self->_has)
  {
    *(v18 + 8) = self->_errorCode;
    *(v18 + 28) |= 1u;
  }

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5, v7, v8))
  {
    goto LABEL_12;
  }

  has = self->_has;
  v13 = *(equalCopy + 28);
  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0)
    {
      goto LABEL_12;
    }

    v18 = *(equalCopy + 24);
    if (self->_succeeded)
    {
      if ((equalCopy[3] & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else if (equalCopy[3])
    {
      goto LABEL_12;
    }
  }

  else if ((*(equalCopy + 28) & 2) != 0)
  {
    goto LABEL_12;
  }

  errorDomain = self->_errorDomain;
  v15 = equalCopy[2];
  if (errorDomain | v15)
  {
    if (!objc_msgSend_isEqual_(errorDomain, v9, v15, v10, v11))
    {
      goto LABEL_12;
    }

    has = self->_has;
  }

  v16 = (*(equalCopy + 28) & 1) == 0;
  if (has)
  {
    if ((*(equalCopy + 28) & 1) != 0 && self->_errorCode == *(equalCopy + 2))
    {
      v16 = 1;
      goto LABEL_13;
    }

LABEL_12:
    v16 = 0;
  }

LABEL_13:

  return v16;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v6 = 2654435761 * self->_succeeded;
  }

  else
  {
    v6 = 0;
  }

  v7 = objc_msgSend_hash(self->_errorDomain, a2, v2, v3, v4);
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_errorCode;
  }

  else
  {
    v8 = 0;
  }

  return v7 ^ v6 ^ v8;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if ((*(fromCopy + 28) & 2) != 0)
  {
    self->_succeeded = *(fromCopy + 24);
    *&self->_has |= 2u;
  }

  v8 = *(fromCopy + 2);
  if (v8)
  {
    v9 = fromCopy;
    objc_msgSend_setErrorDomain_(self, v5, v8, v6, v7);
    fromCopy = v9;
  }

  if (*(fromCopy + 28))
  {
    self->_errorCode = *(fromCopy + 2);
    *&self->_has |= 1u;
  }
}

@end