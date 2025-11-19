@interface CKDPUserAlias
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)a3;
- (int)StringAsType:(id)a3;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPUserAlias

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (id)typeAsString:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854CD88[a3 - 1];
  }

  return v4;
}

- (int)StringAsType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"hashedEmailAddressType"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"containerUserIdentifier"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"hashedCanonicalPhoneNumber"))
  {
    v6 = 3;
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
  v11.super_class = CKDPUserAlias;
  v4 = [(CKDPUserAlias *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  identifier = self->_identifier;
  if (identifier)
  {
    objc_msgSend_setObject_forKey_(v4, v5, identifier, @"identifier");
  }

  if (*&self->_has)
  {
    v8 = self->_type - 1;
    if (v8 >= 3)
    {
      v9 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v5, @"(unknown: %i)", self->_type);
    }

    else
    {
      v9 = off_27854CD88[v8];
    }

    objc_msgSend_setObject_forKey_(v6, v5, v9, @"type");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  if (identifier)
  {
    v7 = v4;
    objc_msgSend_setIdentifier_(v4, v5, identifier);
    v4 = v7;
  }

  if (*&self->_has)
  {
    *(v4 + 4) = self->_type;
    *(v4 + 20) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_identifier, v11, a3);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  if (*&self->_has)
  {
    *(v10 + 16) = self->_type;
    *(v10 + 20) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_8;
  }

  identifier = self->_identifier;
  v9 = v4[1];
  if (identifier | v9)
  {
    if (!objc_msgSend_isEqual_(identifier, v7, v9))
    {
      goto LABEL_8;
    }
  }

  v10 = (*(v4 + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 20) & 1) != 0 && self->_type == *(v4 + 4))
    {
      v10 = 1;
      goto LABEL_9;
    }

LABEL_8:
    v10 = 0;
  }

LABEL_9:

  return v10;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_identifier, a2, v2);
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_type;
  }

  else
  {
    v5 = 0;
  }

  return v5 ^ v4;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = *(v4 + 1);
  if (v6)
  {
    v7 = v4;
    objc_msgSend_setIdentifier_(self, v5, v6);
    v4 = v7;
  }

  if (*(v4 + 20))
  {
    self->_type = *(v4 + 4);
    *&self->_has |= 1u;
  }
}

@end