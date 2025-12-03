@interface CKDPContactInformation
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPContactInformation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPContactInformation;
  v4 = [(CKDPContactInformation *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  emailAddress = self->_emailAddress;
  if (emailAddress)
  {
    objc_msgSend_setObject_forKey_(v4, v5, emailAddress, @"emailAddress");
  }

  containerScopedUserId = self->_containerScopedUserId;
  if (containerScopedUserId)
  {
    objc_msgSend_setObject_forKey_(v6, v5, containerScopedUserId, @"containerScopedUserId");
  }

  firstName = self->_firstName;
  if (firstName)
  {
    objc_msgSend_setObject_forKey_(v6, v5, firstName, @"firstName");
  }

  lastName = self->_lastName;
  if (lastName)
  {
    objc_msgSend_setObject_forKey_(v6, v5, lastName, @"lastName");
  }

  phoneNumber = self->_phoneNumber;
  if (phoneNumber)
  {
    objc_msgSend_setObject_forKey_(v6, v5, phoneNumber, @"phoneNumber");
  }

  canonicalPhoneNumber = self->_canonicalPhoneNumber;
  if (canonicalPhoneNumber)
  {
    objc_msgSend_setObject_forKey_(v6, v5, canonicalPhoneNumber, @"canonicalPhoneNumber");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_emailAddress)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_containerScopedUserId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_firstName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_lastName)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_phoneNumber)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_canonicalPhoneNumber)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  emailAddress = self->_emailAddress;
  v12 = toCopy;
  if (emailAddress)
  {
    objc_msgSend_setEmailAddress_(toCopy, v5, emailAddress);
    toCopy = v12;
  }

  containerScopedUserId = self->_containerScopedUserId;
  if (containerScopedUserId)
  {
    objc_msgSend_setContainerScopedUserId_(v12, v5, containerScopedUserId);
    toCopy = v12;
  }

  firstName = self->_firstName;
  if (firstName)
  {
    objc_msgSend_setFirstName_(v12, v5, firstName);
    toCopy = v12;
  }

  lastName = self->_lastName;
  if (lastName)
  {
    objc_msgSend_setLastName_(v12, v5, lastName);
    toCopy = v12;
  }

  phoneNumber = self->_phoneNumber;
  if (phoneNumber)
  {
    objc_msgSend_setPhoneNumber_(v12, v5, phoneNumber);
    toCopy = v12;
  }

  canonicalPhoneNumber = self->_canonicalPhoneNumber;
  if (canonicalPhoneNumber)
  {
    objc_msgSend_setCanonicalPhoneNumber_(v12, v5, canonicalPhoneNumber);
    toCopy = v12;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_emailAddress, v11, zone);
  v13 = v10[3];
  v10[3] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_containerScopedUserId, v14, zone);
  v16 = v10[2];
  v10[2] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_firstName, v17, zone);
  v19 = v10[4];
  v10[4] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_lastName, v20, zone);
  v22 = v10[5];
  v10[5] = v21;

  v24 = objc_msgSend_copyWithZone_(self->_phoneNumber, v23, zone);
  v25 = v10[6];
  v10[6] = v24;

  v27 = objc_msgSend_copyWithZone_(self->_canonicalPhoneNumber, v26, zone);
  v28 = v10[1];
  v10[1] = v27;

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

  emailAddress = self->_emailAddress;
  v9 = equalCopy[3];
  if (emailAddress | v9)
  {
    if (!objc_msgSend_isEqual_(emailAddress, v7, v9))
    {
      goto LABEL_14;
    }
  }

  containerScopedUserId = self->_containerScopedUserId;
  v11 = equalCopy[2];
  if (containerScopedUserId | v11)
  {
    if (!objc_msgSend_isEqual_(containerScopedUserId, v7, v11))
    {
      goto LABEL_14;
    }
  }

  if (((firstName = self->_firstName, v13 = equalCopy[4], !(firstName | v13)) || objc_msgSend_isEqual_(firstName, v7, v13)) && ((lastName = self->_lastName, v15 = equalCopy[5], !(lastName | v15)) || objc_msgSend_isEqual_(lastName, v7, v15)) && ((phoneNumber = self->_phoneNumber, v17 = equalCopy[6], !(phoneNumber | v17)) || objc_msgSend_isEqual_(phoneNumber, v7, v17)))
  {
    canonicalPhoneNumber = self->_canonicalPhoneNumber;
    v19 = equalCopy[1];
    if (canonicalPhoneNumber | v19)
    {
      isEqual = objc_msgSend_isEqual_(canonicalPhoneNumber, v7, v19);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
LABEL_14:
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_emailAddress, a2, v2);
  v7 = objc_msgSend_hash(self->_containerScopedUserId, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_firstName, v8, v9);
  v13 = v7 ^ v10 ^ objc_msgSend_hash(self->_lastName, v11, v12);
  v16 = objc_msgSend_hash(self->_phoneNumber, v14, v15);
  return v13 ^ v16 ^ objc_msgSend_hash(self->_canonicalPhoneNumber, v17, v18);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[3];
  if (v5)
  {
    objc_msgSend_setEmailAddress_(self, v4, v5);
  }

  v6 = fromCopy[2];
  if (v6)
  {
    objc_msgSend_setContainerScopedUserId_(self, v4, v6);
  }

  v7 = fromCopy[4];
  if (v7)
  {
    objc_msgSend_setFirstName_(self, v4, v7);
  }

  v8 = fromCopy[5];
  if (v8)
  {
    objc_msgSend_setLastName_(self, v4, v8);
  }

  v9 = fromCopy[6];
  if (v9)
  {
    objc_msgSend_setPhoneNumber_(self, v4, v9);
  }

  v10 = fromCopy[1];
  if (v10)
  {
    objc_msgSend_setCanonicalPhoneNumber_(self, v4, v10);
  }
}

@end