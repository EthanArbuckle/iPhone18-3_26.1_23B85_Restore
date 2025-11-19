@interface CKDPShareVettingInitiateResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)vettingErrorAsString:(int)a3;
- (int)StringAsVettingError:(id)a3;
- (int)vettingError;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (id)vettingErrorAsString:(int)a3
{
  if ((a3 - 1) >= 5)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854CCF8[a3 - 1];
  }

  return v4;
}

- (int)StringAsVettingError:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"isVettedToCaller"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"isVettedToOther"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"isLimitExceeded"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(v3, v8, @"serverError"))
  {
    v6 = 4;
  }

  else if (objc_msgSend_isEqualToString_(v3, v9, @"loginRequired"))
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

- (void)writeTo:(id)a3
{
  if (*&self->_has)
  {
    vettingError = self->_vettingError;
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)a3
{
  if (*&self->_has)
  {
    *(a3 + 2) = self->_vettingError;
    *(a3 + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  result = objc_msgSend_init(v7, v8, v9);
  if (*&self->_has)
  {
    *(result + 2) = self->_vettingError;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_6;
  }

  v7 = (*(v4 + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 12) & 1) != 0 && self->_vettingError == *(v4 + 2))
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

- (void)mergeFrom:(id)a3
{
  if (*(a3 + 12))
  {
    self->_vettingError = *(a3 + 2);
    *&self->_has |= 1u;
  }
}

@end