@interface CKDPUser
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_alias)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_firstName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_lastName)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_protectionInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    isInNetwork = self->_isInNetwork;
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  identifier = self->_identifier;
  v11 = toCopy;
  if (identifier)
  {
    objc_msgSend_setIdentifier_(toCopy, v5, identifier);
    toCopy = v11;
  }

  alias = self->_alias;
  if (alias)
  {
    objc_msgSend_setAlias_(v11, v5, alias);
    toCopy = v11;
  }

  firstName = self->_firstName;
  if (firstName)
  {
    objc_msgSend_setFirstName_(v11, v5, firstName);
    toCopy = v11;
  }

  lastName = self->_lastName;
  if (lastName)
  {
    objc_msgSend_setLastName_(v11, v5, lastName);
    toCopy = v11;
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    objc_msgSend_setProtectionInfo_(v11, v5, protectionInfo);
    toCopy = v11;
  }

  if (*&self->_has)
  {
    toCopy[48] = self->_isInNetwork;
    toCopy[52] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_identifier, v11, zone);
  v13 = *(v10 + 24);
  *(v10 + 24) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_alias, v14, zone);
  v16 = *(v10 + 8);
  *(v10 + 8) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_firstName, v17, zone);
  v19 = *(v10 + 16);
  *(v10 + 16) = v18;

  v21 = objc_msgSend_copyWithZone_(self->_lastName, v20, zone);
  v22 = *(v10 + 32);
  *(v10 + 32) = v21;

  v24 = objc_msgSend_copyWithZone_(self->_protectionInfo, v23, zone);
  v25 = *(v10 + 40);
  *(v10 + 40) = v24;

  if (*&self->_has)
  {
    *(v10 + 48) = self->_isInNetwork;
    *(v10 + 52) |= 1u;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_14;
  }

  identifier = self->_identifier;
  v9 = equalCopy[3];
  if (identifier | v9)
  {
    if (!objc_msgSend_isEqual_(identifier, v7, v9))
    {
      goto LABEL_14;
    }
  }

  alias = self->_alias;
  v11 = equalCopy[1];
  if (alias | v11)
  {
    if (!objc_msgSend_isEqual_(alias, v7, v11))
    {
      goto LABEL_14;
    }
  }

  firstName = self->_firstName;
  v13 = equalCopy[2];
  if (firstName | v13)
  {
    if (!objc_msgSend_isEqual_(firstName, v7, v13))
    {
      goto LABEL_14;
    }
  }

  lastName = self->_lastName;
  v15 = equalCopy[4];
  if (lastName | v15)
  {
    if (!objc_msgSend_isEqual_(lastName, v7, v15))
    {
      goto LABEL_14;
    }
  }

  protectionInfo = self->_protectionInfo;
  v17 = equalCopy[5];
  if (protectionInfo | v17)
  {
    if (!objc_msgSend_isEqual_(protectionInfo, v7, v17))
    {
      goto LABEL_14;
    }
  }

  v18 = (*(equalCopy + 52) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0)
    {
LABEL_14:
      v18 = 0;
      goto LABEL_15;
    }

    if (self->_isInNetwork)
    {
      if ((equalCopy[6] & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else if (*(equalCopy + 48))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  identifier = self->_identifier;
  v6 = *(fromCopy + 3);
  v13 = fromCopy;
  if (identifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(identifier, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setIdentifier_(self, fromCopy, v6);
  }

  fromCopy = v13;
LABEL_7:
  alias = self->_alias;
  v8 = *(fromCopy + 1);
  if (alias)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    objc_msgSend_mergeFrom_(alias, fromCopy, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    objc_msgSend_setAlias_(self, fromCopy, v8);
  }

  fromCopy = v13;
LABEL_13:
  v9 = *(fromCopy + 2);
  if (v9)
  {
    objc_msgSend_setFirstName_(self, fromCopy, v9);
    fromCopy = v13;
  }

  v10 = *(fromCopy + 4);
  if (v10)
  {
    objc_msgSend_setLastName_(self, fromCopy, v10);
    fromCopy = v13;
  }

  protectionInfo = self->_protectionInfo;
  v12 = *(fromCopy + 5);
  if (protectionInfo)
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    objc_msgSend_mergeFrom_(protectionInfo, fromCopy, v12);
  }

  else
  {
    if (!v12)
    {
      goto LABEL_23;
    }

    objc_msgSend_setProtectionInfo_(self, fromCopy, v12);
  }

  fromCopy = v13;
LABEL_23:
  if (*(fromCopy + 52))
  {
    self->_isInNetwork = *(fromCopy + 48);
    *&self->_has |= 1u;
  }

  MEMORY[0x2821F96F8]();
}

@end