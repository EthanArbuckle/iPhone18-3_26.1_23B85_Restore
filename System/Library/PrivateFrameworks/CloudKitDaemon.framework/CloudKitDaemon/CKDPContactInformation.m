@interface CKDPContactInformation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_emailAddress)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_containerScopedUserId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_firstName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_lastName)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_phoneNumber)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_canonicalPhoneNumber)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  emailAddress = self->_emailAddress;
  v12 = v4;
  if (emailAddress)
  {
    objc_msgSend_setEmailAddress_(v4, v5, emailAddress);
    v4 = v12;
  }

  containerScopedUserId = self->_containerScopedUserId;
  if (containerScopedUserId)
  {
    objc_msgSend_setContainerScopedUserId_(v12, v5, containerScopedUserId);
    v4 = v12;
  }

  firstName = self->_firstName;
  if (firstName)
  {
    objc_msgSend_setFirstName_(v12, v5, firstName);
    v4 = v12;
  }

  lastName = self->_lastName;
  if (lastName)
  {
    objc_msgSend_setLastName_(v12, v5, lastName);
    v4 = v12;
  }

  phoneNumber = self->_phoneNumber;
  if (phoneNumber)
  {
    objc_msgSend_setPhoneNumber_(v12, v5, phoneNumber);
    v4 = v12;
  }

  canonicalPhoneNumber = self->_canonicalPhoneNumber;
  if (canonicalPhoneNumber)
  {
    objc_msgSend_setCanonicalPhoneNumber_(v12, v5, canonicalPhoneNumber);
    v4 = v12;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_emailAddress, v11, a3);
  v13 = v10[3];
  v10[3] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_containerScopedUserId, v14, a3);
  v16 = v10[2];
  v10[2] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_firstName, v17, a3);
  v19 = v10[4];
  v10[4] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_lastName, v20, a3);
  v22 = v10[5];
  v10[5] = v21;

  v24 = objc_msgSend_copyWithZone_(self->_phoneNumber, v23, a3);
  v25 = v10[6];
  v10[6] = v24;

  v27 = objc_msgSend_copyWithZone_(self->_canonicalPhoneNumber, v26, a3);
  v28 = v10[1];
  v10[1] = v27;

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

  emailAddress = self->_emailAddress;
  v9 = v4[3];
  if (emailAddress | v9)
  {
    if (!objc_msgSend_isEqual_(emailAddress, v7, v9))
    {
      goto LABEL_14;
    }
  }

  containerScopedUserId = self->_containerScopedUserId;
  v11 = v4[2];
  if (containerScopedUserId | v11)
  {
    if (!objc_msgSend_isEqual_(containerScopedUserId, v7, v11))
    {
      goto LABEL_14;
    }
  }

  if (((firstName = self->_firstName, v13 = v4[4], !(firstName | v13)) || objc_msgSend_isEqual_(firstName, v7, v13)) && ((lastName = self->_lastName, v15 = v4[5], !(lastName | v15)) || objc_msgSend_isEqual_(lastName, v7, v15)) && ((phoneNumber = self->_phoneNumber, v17 = v4[6], !(phoneNumber | v17)) || objc_msgSend_isEqual_(phoneNumber, v7, v17)))
  {
    canonicalPhoneNumber = self->_canonicalPhoneNumber;
    v19 = v4[1];
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

- (void)mergeFrom:(id)a3
{
  v11 = a3;
  v5 = v11[3];
  if (v5)
  {
    objc_msgSend_setEmailAddress_(self, v4, v5);
  }

  v6 = v11[2];
  if (v6)
  {
    objc_msgSend_setContainerScopedUserId_(self, v4, v6);
  }

  v7 = v11[4];
  if (v7)
  {
    objc_msgSend_setFirstName_(self, v4, v7);
  }

  v8 = v11[5];
  if (v8)
  {
    objc_msgSend_setLastName_(self, v4, v8);
  }

  v9 = v11[6];
  if (v9)
  {
    objc_msgSend_setPhoneNumber_(self, v4, v9);
  }

  v10 = v11[1];
  if (v10)
  {
    objc_msgSend_setCanonicalPhoneNumber_(self, v4, v10);
  }
}

@end