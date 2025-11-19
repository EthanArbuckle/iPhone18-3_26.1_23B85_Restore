@interface CKDPResponseOperationResultError
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPResponseOperationResultError

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPResponseOperationResultError;
  v4 = [(CKDPResponseOperationResultError *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  clientError = self->_clientError;
  if (clientError)
  {
    v8 = objc_msgSend_dictionaryRepresentation(clientError, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"clientError");
  }

  serverError = self->_serverError;
  if (serverError)
  {
    v11 = objc_msgSend_dictionaryRepresentation(serverError, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"serverError");
  }

  extensionError = self->_extensionError;
  if (extensionError)
  {
    v14 = objc_msgSend_dictionaryRepresentation(extensionError, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"extensionError");
  }

  auxiliaryError = self->_auxiliaryError;
  if (auxiliaryError)
  {
    v17 = objc_msgSend_dictionaryRepresentation(auxiliaryError, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v18, v17, @"auxiliaryError");
  }

  if (*&self->_has)
  {
    v19 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_retryAfterSeconds);
    objc_msgSend_setObject_forKey_(v6, v20, v19, @"retryAfterSeconds");
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    objc_msgSend_setObject_forKey_(v6, v4, errorDescription, @"errorDescription");
  }

  errorKey = self->_errorKey;
  if (errorKey)
  {
    objc_msgSend_setObject_forKey_(v6, v4, errorKey, @"errorKey");
  }

  errorInternal = self->_errorInternal;
  if (errorInternal)
  {
    objc_msgSend_setObject_forKey_(v6, v4, errorInternal, @"errorInternal");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_clientError)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_serverError)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    retryAfterSeconds = self->_retryAfterSeconds;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_errorKey)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_errorInternal)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_extensionError)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_auxiliaryError)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  clientError = self->_clientError;
  v13 = v4;
  if (clientError)
  {
    objc_msgSend_setClientError_(v4, v5, clientError);
    v4 = v13;
  }

  serverError = self->_serverError;
  if (serverError)
  {
    objc_msgSend_setServerError_(v13, v5, serverError);
    v4 = v13;
  }

  if (*&self->_has)
  {
    *(v4 + 14) = self->_retryAfterSeconds;
    *(v4 + 72) |= 1u;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    objc_msgSend_setErrorDescription_(v13, v5, errorDescription);
    v4 = v13;
  }

  errorKey = self->_errorKey;
  if (errorKey)
  {
    objc_msgSend_setErrorKey_(v13, v5, errorKey);
    v4 = v13;
  }

  errorInternal = self->_errorInternal;
  if (errorInternal)
  {
    objc_msgSend_setErrorInternal_(v13, v5, errorInternal);
    v4 = v13;
  }

  extensionError = self->_extensionError;
  if (extensionError)
  {
    objc_msgSend_setExtensionError_(v13, v5, extensionError);
    v4 = v13;
  }

  auxiliaryError = self->_auxiliaryError;
  if (auxiliaryError)
  {
    objc_msgSend_setAuxiliaryError_(v13, v5, auxiliaryError);
    v4 = v13;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_clientError, v11, a3);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_serverError, v14, a3);
  v16 = *(v10 + 64);
  *(v10 + 64) = v15;

  if (*&self->_has)
  {
    *(v10 + 56) = self->_retryAfterSeconds;
    *(v10 + 72) |= 1u;
  }

  v18 = objc_msgSend_copyWithZone_(self->_errorDescription, v17, a3);
  v19 = *(v10 + 24);
  *(v10 + 24) = v18;

  v21 = objc_msgSend_copyWithZone_(self->_errorKey, v20, a3);
  v22 = *(v10 + 40);
  *(v10 + 40) = v21;

  v24 = objc_msgSend_copyWithZone_(self->_errorInternal, v23, a3);
  v25 = *(v10 + 32);
  *(v10 + 32) = v24;

  v27 = objc_msgSend_copyWithZone_(self->_extensionError, v26, a3);
  v28 = *(v10 + 48);
  *(v10 + 48) = v27;

  v30 = objc_msgSend_copyWithZone_(self->_auxiliaryError, v29, a3);
  v31 = *(v10 + 8);
  *(v10 + 8) = v30;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_21;
  }

  clientError = self->_clientError;
  v9 = v4[2];
  if (clientError | v9)
  {
    if (!objc_msgSend_isEqual_(clientError, v7, v9))
    {
      goto LABEL_21;
    }
  }

  serverError = self->_serverError;
  v11 = v4[8];
  if (serverError | v11)
  {
    if (!objc_msgSend_isEqual_(serverError, v7, v11))
    {
      goto LABEL_21;
    }
  }

  v12 = *(v4 + 72);
  if (*&self->_has)
  {
    if ((v4[9] & 1) == 0 || self->_retryAfterSeconds != *(v4 + 14))
    {
      goto LABEL_21;
    }
  }

  else if (v4[9])
  {
LABEL_21:
    isEqual = 0;
    goto LABEL_22;
  }

  errorDescription = self->_errorDescription;
  v14 = v4[3];
  if (errorDescription | v14 && !objc_msgSend_isEqual_(errorDescription, v7, v14))
  {
    goto LABEL_21;
  }

  errorKey = self->_errorKey;
  v16 = v4[5];
  if (errorKey | v16)
  {
    if (!objc_msgSend_isEqual_(errorKey, v7, v16))
    {
      goto LABEL_21;
    }
  }

  errorInternal = self->_errorInternal;
  v18 = v4[4];
  if (errorInternal | v18)
  {
    if (!objc_msgSend_isEqual_(errorInternal, v7, v18))
    {
      goto LABEL_21;
    }
  }

  extensionError = self->_extensionError;
  v20 = v4[6];
  if (extensionError | v20)
  {
    if (!objc_msgSend_isEqual_(extensionError, v7, v20))
    {
      goto LABEL_21;
    }
  }

  auxiliaryError = self->_auxiliaryError;
  v22 = v4[1];
  if (auxiliaryError | v22)
  {
    isEqual = objc_msgSend_isEqual_(auxiliaryError, v7, v22);
  }

  else
  {
    isEqual = 1;
  }

LABEL_22:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_clientError, a2, v2);
  v7 = objc_msgSend_hash(self->_serverError, v5, v6);
  if (*&self->_has)
  {
    v10 = 2654435761 * self->_retryAfterSeconds;
  }

  else
  {
    v10 = 0;
  }

  v11 = v7 ^ v4 ^ v10 ^ objc_msgSend_hash(self->_errorDescription, v8, v9);
  v14 = objc_msgSend_hash(self->_errorKey, v12, v13);
  v17 = v14 ^ objc_msgSend_hash(self->_errorInternal, v15, v16);
  v20 = v11 ^ v17 ^ objc_msgSend_hash(self->_extensionError, v18, v19);
  return v20 ^ objc_msgSend_hash(self->_auxiliaryError, v21, v22);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  clientError = self->_clientError;
  v6 = *(v4 + 2);
  v16 = v4;
  if (clientError)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(clientError, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setClientError_(self, v4, v6);
  }

  v4 = v16;
LABEL_7:
  serverError = self->_serverError;
  v8 = *(v4 + 8);
  if (serverError)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    objc_msgSend_mergeFrom_(serverError, v4, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    objc_msgSend_setServerError_(self, v4, v8);
  }

  v4 = v16;
LABEL_13:
  if (*(v4 + 72))
  {
    self->_retryAfterSeconds = *(v4 + 14);
    *&self->_has |= 1u;
  }

  v9 = *(v4 + 3);
  if (v9)
  {
    objc_msgSend_setErrorDescription_(self, v4, v9);
    v4 = v16;
  }

  v10 = *(v4 + 5);
  if (v10)
  {
    objc_msgSend_setErrorKey_(self, v4, v10);
    v4 = v16;
  }

  v11 = *(v4 + 4);
  if (v11)
  {
    objc_msgSend_setErrorInternal_(self, v4, v11);
    v4 = v16;
  }

  extensionError = self->_extensionError;
  v13 = *(v4 + 6);
  if (extensionError)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    objc_msgSend_mergeFrom_(extensionError, v4, v13);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    objc_msgSend_setExtensionError_(self, v4, v13);
  }

  v4 = v16;
LABEL_27:
  auxiliaryError = self->_auxiliaryError;
  v15 = *(v4 + 1);
  if (auxiliaryError)
  {
    if (v15)
    {
      objc_msgSend_mergeFrom_(auxiliaryError, v4, v15);
    }
  }

  else if (v15)
  {
    objc_msgSend_setAuxiliaryError_(self, v4, v15);
  }

  MEMORY[0x2821F96F8]();
}

@end