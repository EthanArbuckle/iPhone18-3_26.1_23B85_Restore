@interface CKDPUser
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPUser

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPUser;
  v4 = [(CKDPUser *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  identifier = self->_identifier;
  if (identifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(identifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"identifier");
  }

  alias = self->_alias;
  if (alias)
  {
    v11 = objc_msgSend_dictionaryRepresentation(alias, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"alias");
  }

  firstName = self->_firstName;
  if (firstName)
  {
    objc_msgSend_setObject_forKey_(v6, v4, firstName, @"firstName");
  }

  lastName = self->_lastName;
  if (lastName)
  {
    objc_msgSend_setObject_forKey_(v6, v4, lastName, @"lastName");
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    v16 = objc_msgSend_dictionaryRepresentation(protectionInfo, v4, lastName);
    objc_msgSend_setObject_forKey_(v6, v17, v16, @"protectionInfo");
  }

  if (*&self->_has)
  {
    v18 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_isInNetwork);
    objc_msgSend_setObject_forKey_(v6, v19, v18, @"isInNetwork");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_alias)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (self->_firstName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_lastName)
  {
    PBDataWriterWriteStringField();
    v4 = v6;
  }

  if (self->_protectionInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    isInNetwork = self->_isInNetwork;
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v11 = v4;
  if (identifier)
  {
    objc_msgSend_setIdentifier_(v4, v5, identifier);
    v4 = v11;
  }

  alias = self->_alias;
  if (alias)
  {
    objc_msgSend_setAlias_(v11, v5, alias);
    v4 = v11;
  }

  firstName = self->_firstName;
  if (firstName)
  {
    objc_msgSend_setFirstName_(v11, v5, firstName);
    v4 = v11;
  }

  lastName = self->_lastName;
  if (lastName)
  {
    objc_msgSend_setLastName_(v11, v5, lastName);
    v4 = v11;
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    objc_msgSend_setProtectionInfo_(v11, v5, protectionInfo);
    v4 = v11;
  }

  if (*&self->_has)
  {
    v4[48] = self->_isInNetwork;
    v4[52] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_identifier, v11, a3);
  v13 = *(v10 + 24);
  *(v10 + 24) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_alias, v14, a3);
  v16 = *(v10 + 8);
  *(v10 + 8) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_firstName, v17, a3);
  v19 = *(v10 + 16);
  *(v10 + 16) = v18;

  v21 = objc_msgSend_copyWithZone_(self->_lastName, v20, a3);
  v22 = *(v10 + 32);
  *(v10 + 32) = v21;

  v24 = objc_msgSend_copyWithZone_(self->_protectionInfo, v23, a3);
  v25 = *(v10 + 40);
  *(v10 + 40) = v24;

  if (*&self->_has)
  {
    *(v10 + 48) = self->_isInNetwork;
    *(v10 + 52) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_14;
  }

  identifier = self->_identifier;
  v9 = v4[3];
  if (identifier | v9)
  {
    if (!objc_msgSend_isEqual_(identifier, v7, v9))
    {
      goto LABEL_14;
    }
  }

  alias = self->_alias;
  v11 = v4[1];
  if (alias | v11)
  {
    if (!objc_msgSend_isEqual_(alias, v7, v11))
    {
      goto LABEL_14;
    }
  }

  firstName = self->_firstName;
  v13 = v4[2];
  if (firstName | v13)
  {
    if (!objc_msgSend_isEqual_(firstName, v7, v13))
    {
      goto LABEL_14;
    }
  }

  lastName = self->_lastName;
  v15 = v4[4];
  if (lastName | v15)
  {
    if (!objc_msgSend_isEqual_(lastName, v7, v15))
    {
      goto LABEL_14;
    }
  }

  protectionInfo = self->_protectionInfo;
  v17 = v4[5];
  if (protectionInfo | v17)
  {
    if (!objc_msgSend_isEqual_(protectionInfo, v7, v17))
    {
      goto LABEL_14;
    }
  }

  v18 = (*(v4 + 52) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 52) & 1) == 0)
    {
LABEL_14:
      v18 = 0;
      goto LABEL_15;
    }

    if (self->_isInNetwork)
    {
      if ((v4[6] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (*(v4 + 48))
    {
      goto LABEL_14;
    }

    v18 = 1;
  }

LABEL_15:

  return v18;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_identifier, a2, v2);
  v7 = objc_msgSend_hash(self->_alias, v5, v6);
  v10 = objc_msgSend_hash(self->_firstName, v8, v9);
  v13 = objc_msgSend_hash(self->_lastName, v11, v12);
  v16 = objc_msgSend_hash(self->_protectionInfo, v14, v15);
  if (*&self->_has)
  {
    v17 = 2654435761 * self->_isInNetwork;
  }

  else
  {
    v17 = 0;
  }

  return v7 ^ v4 ^ v10 ^ v13 ^ v16 ^ v17;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v6 = *(v4 + 3);
  v13 = v4;
  if (identifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(identifier, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setIdentifier_(self, v4, v6);
  }

  v4 = v13;
LABEL_7:
  alias = self->_alias;
  v8 = *(v4 + 1);
  if (alias)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    objc_msgSend_mergeFrom_(alias, v4, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    objc_msgSend_setAlias_(self, v4, v8);
  }

  v4 = v13;
LABEL_13:
  v9 = *(v4 + 2);
  if (v9)
  {
    objc_msgSend_setFirstName_(self, v4, v9);
    v4 = v13;
  }

  v10 = *(v4 + 4);
  if (v10)
  {
    objc_msgSend_setLastName_(self, v4, v10);
    v4 = v13;
  }

  protectionInfo = self->_protectionInfo;
  v12 = *(v4 + 5);
  if (protectionInfo)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    objc_msgSend_mergeFrom_(protectionInfo, v4, v12);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    objc_msgSend_setProtectionInfo_(self, v4, v12);
  }

  v4 = v13;
LABEL_23:
  if (*(v4 + 52))
  {
    self->_isInNetwork = *(v4 + 48);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end