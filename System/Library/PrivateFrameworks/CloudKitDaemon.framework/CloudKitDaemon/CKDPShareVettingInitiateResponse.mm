@interface CKDPShareVettingInitiateResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)vettingErrorAsString:(int)string;
- (int)StringAsVettingError:(id)error;
- (int)vettingError;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPShareVettingInitiateResponse

- (int)vettingError
{
  if (*&self->_has)
  {
    return self->_vettingError;
  }

  else
  {
    return 1;
  }
}

- (id)vettingErrorAsString:(int)string
{
  if ((string - 1) >= 5)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854CCF8[string - 1];
  }

  return v4;
}

- (int)StringAsVettingError:(id)error
{
  errorCopy = error;
  if (objc_msgSend_isEqualToString_(errorCopy, v4, @"isVettedToCaller"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(errorCopy, v5, @"isVettedToOther"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(errorCopy, v7, @"isLimitExceeded"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(errorCopy, v8, @"serverError"))
  {
    v6 = 4;
  }

  else if (objc_msgSend_isEqualToString_(errorCopy, v9, @"loginRequired"))
  {
    v6 = 5;
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
  v11.super_class = CKDPShareVettingInitiateResponse;
  v4 = [(CKDPShareVettingInitiateResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v6 = self->_vettingError - 1;
    if (v6 >= 5)
    {
      v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_vettingError);
    }

    else
    {
      v7 = off_27854CCF8[v6];
    }

    objc_msgSend_setObject_forKey_(v5, v4, v7, @"vettingError");
  }

  return v5;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    vettingError = self->_vettingError;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_vettingError;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  result = objc_msgSend_init(v7, v8, v9);
  if (*&self->_has)
  {
    *(result + 2) = self->_vettingError;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_6;
  }

  v7 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_vettingError == *(equalCopy + 2))
    {
      v7 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_vettingError;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_vettingError = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end