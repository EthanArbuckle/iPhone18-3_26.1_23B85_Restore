@interface CKCDPCodeServiceRequestDatabaseOwner
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)identifierAsString:(int)string;
- (int)StringAsIdentifier:(id)identifier;
- (int)identifier;
- (unint64_t)hash;
- (void)clearOneofValuesForIdentifier;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasIdentifier:(BOOL)identifier;
- (void)setNumericValue:(unint64_t)value;
- (void)setStringValue:(id)value;
- (void)writeTo:(id)to;
@end

@implementation CKCDPCodeServiceRequestDatabaseOwner

- (void)setNumericValue:(unint64_t)value
{
  objc_msgSend_clearOneofValuesForIdentifier(self, a2, value);
  *&self->_has |= 2u;
  self->_identifier = 1;
  *&self->_has |= 1u;
  self->_numericValue = value;
}

- (void)setStringValue:(id)value
{
  valueCopy = value;
  objc_msgSend_clearOneofValuesForIdentifier(self, v5, v6);
  *&self->_has |= 2u;
  self->_identifier = 2;
  stringValue = self->_stringValue;
  self->_stringValue = valueCopy;
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

- (void)setHasIdentifier:(BOOL)identifier
{
  if (identifier)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)identifierAsString:(int)string
{
  if (string >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854C750[string];
  }

  return v4;
}

- (int)StringAsIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (objc_msgSend_isEqualToString_(identifierCopy, v4, @"PBUNSET"))
  {
    v6 = 0;
  }

  else if (objc_msgSend_isEqualToString_(identifierCopy, v5, @"numericValue"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(identifierCopy, v7, @"stringValue"))
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (*&self->_has)
  {
    numericValue = self->_numericValue;
    PBDataWriterWriteUint64Field();
    toCopy = v6;
  }

  if (self->_stringValue)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if ((has & 2) != 0)
  {
    toCopy[4] = self->_identifier;
    *(toCopy + 32) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = self->_numericValue;
    *(toCopy + 32) |= 1u;
  }

  stringValue = self->_stringValue;
  if (stringValue)
  {
    v8 = toCopy;
    objc_msgSend_setStringValue_(toCopy, v5, stringValue);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
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

  v14 = objc_msgSend_copyWithZone_(self->_stringValue, v11, zone);
  v15 = v12[3];
  v12[3] = v14;

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_14;
  }

  v8 = *(equalCopy + 32);
  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[4] & 2) == 0 || self->_identifier != *(equalCopy + 4))
    {
      goto LABEL_14;
    }
  }

  else if ((equalCopy[4] & 2) != 0)
  {
LABEL_14:
    isEqual = 0;
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((equalCopy[4] & 1) == 0 || self->_numericValue != equalCopy[1])
    {
      goto LABEL_14;
    }
  }

  else if (equalCopy[4])
  {
    goto LABEL_14;
  }

  stringValue = self->_stringValue;
  v10 = equalCopy[3];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = *(fromCopy + 32);
  if ((v6 & 2) != 0)
  {
    self->_identifier = *(fromCopy + 4);
    *&self->_has |= 2u;
    v6 = *(fromCopy + 32);
  }

  if (v6)
  {
    self->_numericValue = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v7 = *(fromCopy + 3);
  if (v7)
  {
    v8 = fromCopy;
    objc_msgSend_setStringValue_(self, v5, v7);
    fromCopy = v8;
  }
}

@end