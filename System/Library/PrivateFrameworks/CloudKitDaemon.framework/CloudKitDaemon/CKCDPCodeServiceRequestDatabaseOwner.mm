@interface CKCDPCodeServiceRequestDatabaseOwner
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)identifierAsString:(int)a3;
- (int)StringAsIdentifier:(id)a3;
- (int)identifier;
- (unint64_t)hash;
- (void)clearOneofValuesForIdentifier;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasIdentifier:(BOOL)a3;
- (void)setNumericValue:(unint64_t)a3;
- (void)setStringValue:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKCDPCodeServiceRequestDatabaseOwner

- (void)setNumericValue:(unint64_t)a3
{
  objc_msgSend_clearOneofValuesForIdentifier(self, a2, a3);
  *&self->_has |= 2u;
  self->_identifier = 1;
  *&self->_has |= 1u;
  self->_numericValue = a3;
}

- (void)setStringValue:(id)a3
{
  v4 = a3;
  objc_msgSend_clearOneofValuesForIdentifier(self, v5, v6);
  *&self->_has |= 2u;
  self->_identifier = 2;
  stringValue = self->_stringValue;
  self->_stringValue = v4;
}

- (int)identifier
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_identifier;
  }

  else
  {
    return 0;
  }
}

- (void)setHasIdentifier:(BOOL)a3
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

- (id)identifierAsString:(int)a3
{
  if (a3 >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854C750[a3];
  }

  return v4;
}

- (int)StringAsIdentifier:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"PBUNSET"))
  {
    v6 = 0;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"numericValue"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"stringValue"))
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)clearOneofValuesForIdentifier
{
  *&self->_has &= ~2u;
  self->_identifier = 0;
  *&self->_has &= ~1u;
  self->_numericValue = 0;
  stringValue = self->_stringValue;
  self->_stringValue = 0;
  MEMORY[0x2821F96F8]();
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPCodeServiceRequestDatabaseOwner;
  v4 = [(CKCDPCodeServiceRequestDatabaseOwner *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    v6 = objc_msgSend_numberWithUnsignedLongLong_(MEMORY[0x277CCABB0], v4, self->_numericValue);
    objc_msgSend_setObject_forKey_(v5, v7, v6, @"numericValue");
  }

  stringValue = self->_stringValue;
  if (stringValue)
  {
    objc_msgSend_setObject_forKey_(v5, v4, stringValue, @"stringValue");
  }

  if ((*&self->_has & 2) != 0)
  {
    identifier = self->_identifier;
    if (identifier >= 3)
    {
      v10 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_identifier);
    }

    else
    {
      v10 = off_27854C750[identifier];
    }

    objc_msgSend_setObject_forKey_(v5, v4, v10, @"Identifier");
  }

  return v5;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (*&self->_has)
  {
    numericValue = self->_numericValue;
    PBDataWriterWriteUint64Field();
    v4 = v6;
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  has = self->_has;
  if ((has & 2) != 0)
  {
    v4[4] = self->_identifier;
    *(v4 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v4 + 1) = self->_numericValue;
    *(v4 + 32) |= 1u;
  }

  stringValue = self->_stringValue;
  if (stringValue)
  {
    v8 = v4;
    objc_msgSend_setStringValue_(v4, v5, stringValue);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v10 + 16) = self->_identifier;
    *(v10 + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v10 + 8) = self->_numericValue;
    *(v10 + 32) |= 1u;
  }

  v14 = objc_msgSend_copyWithZone_(self->_stringValue, v11, a3);
  v15 = v12[3];
  v12[3] = v14;

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_14;
  }

  v8 = *(v4 + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((v4[4] & 2) == 0 || self->_identifier != *(v4 + 4))
    {
      goto LABEL_14;
    }
  }

  else if ((v4[4] & 2) != 0)
  {
LABEL_14:
    isEqual = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((v4[4] & 1) == 0 || self->_numericValue != v4[1])
    {
      goto LABEL_14;
    }
  }

  else if (v4[4])
  {
    goto LABEL_14;
  }

  stringValue = self->_stringValue;
  v10 = v4[3];
  if (stringValue | v10)
  {
    isEqual = objc_msgSend_isEqual_(stringValue, v7, v10);
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
  if ((*&self->_has & 2) != 0)
  {
    v3 = 2654435761 * self->_identifier;
    if (*&self->_has)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    return v4 ^ v3 ^ objc_msgSend_hash(self->_stringValue, a2, v2);
  }

  v3 = 0;
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761u * self->_numericValue;
  return v4 ^ v3 ^ objc_msgSend_hash(self->_stringValue, a2, v2);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = *(v4 + 32);
  if ((v6 & 2) != 0)
  {
    self->_identifier = *(v4 + 4);
    *&self->_has |= 2u;
    v6 = *(v4 + 32);
  }

  if (v6)
  {
    self->_numericValue = *(v4 + 1);
    *&self->_has |= 1u;
  }

  v7 = *(v4 + 3);
  if (v7)
  {
    v8 = v4;
    objc_msgSend_setStringValue_(self, v5, v7);
    v4 = v8;
  }
}

@end