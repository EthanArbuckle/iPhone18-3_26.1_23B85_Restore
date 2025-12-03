@interface CKDPResponseOperationResult
- (BOOL)isEqual:(id)equal;
- (id)codeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCode:(id)code;
- (int)code;
- (unint64_t)hash;
- (void)_CKLogToFileHandle:(id)handle atDepth:(int)depth;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPResponseOperationResult

- (int)code
{
  if (*&self->_has)
  {
    return self->_code;
  }

  else
  {
    return 1;
  }
}

- (void)_CKLogToFileHandle:(id)handle atDepth:(int)depth
{
  handleCopy = handle;
  v8 = objc_msgSend_code(self, v6, v7);
  v11 = 0;
  if (v8 <= 2)
  {
    if (v8 != 1)
    {
      v12 = v8 == 2;
      goto LABEL_6;
    }

    v11 = @"success";
LABEL_14:
    v13 = handleCopy;
    goto LABEL_15;
  }

  if (v8 == 3)
  {
    v11 = @"failure";
    goto LABEL_14;
  }

  v12 = v8 == 4;
LABEL_6:
  v13 = handleCopy;
  if (v12)
  {
    v14 = objc_msgSend_code(self, v9, v10);
    if ((v14 - 1) >= 4)
    {
      v16 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v15, @"(unknown: %i)", v14);
    }

    else
    {
      v16 = *(&off_278548598 + (v14 - 1));
    }

    v11 = objc_msgSend_stringByAppendingString_(v16, v15, @" failure");

    goto LABEL_14;
  }

LABEL_15:
  objc_msgSend_CKWriteString_(v13, v9, v11);
  if (objc_msgSend_hasError(self, v17, v18))
  {
    v21 = objc_msgSend_error(self, v19, v20);
    objc_msgSend__CKLogToFileHandle_atDepth_(v21, v22, handleCopy, (depth + 1));
  }
}

- (id)codeAsString:(int)string
{
  if ((string - 1) >= 4)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854CC00[string - 1];
  }

  return v4;
}

- (int)StringAsCode:(id)code
{
  codeCopy = code;
  if (objc_msgSend_isEqualToString_(codeCopy, v4, @"success"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(codeCopy, v5, @"partial"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(codeCopy, v7, @"failure"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(codeCopy, v8, @"indeterminate"))
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPResponseOperationResult;
  v4 = [(CKDPResponseOperationResult *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v7 = self->_code - 1;
    if (v7 >= 4)
    {
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_code);
    }

    else
    {
      v8 = off_27854CC00[v7];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v8, @"code");
  }

  error = self->_error;
  if (error)
  {
    v10 = objc_msgSend_dictionaryRepresentation(error, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"error");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    code = self->_code;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_error)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_code;
    *(toCopy + 24) |= 1u;
  }

  error = self->_error;
  if (error)
  {
    v7 = toCopy;
    objc_msgSend_setError_(toCopy, v5, error);
    toCopy = v7;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (*&self->_has)
  {
    *(v10 + 8) = self->_code;
    *(v10 + 24) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_error, v11, zone);
  v14 = v12[2];
  v12[2] = v13;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_9;
  }

  v8 = *(equalCopy + 24);
  if (*&self->_has)
  {
    if ((equalCopy[3] & 1) == 0 || self->_code != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (equalCopy[3])
  {
LABEL_9:
    isEqual = 0;
    goto LABEL_10;
  }

  error = self->_error;
  v10 = equalCopy[2];
  if (error | v10)
  {
    isEqual = objc_msgSend_isEqual_(error, v7, v10);
  }

  else
  {
    isEqual = 1;
  }

LABEL_10:

  return isEqual;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_code;
  }

  else
  {
    v3 = 0;
  }

  return objc_msgSend_hash(self->_error, a2, v2) ^ v3;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[24])
  {
    self->_code = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  error = self->_error;
  v7 = *(v5 + 2);
  if (error)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(error, v5, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setError_(self, v5, v7);
  }

  MEMORY[0x2821F96F8]();
}

@end