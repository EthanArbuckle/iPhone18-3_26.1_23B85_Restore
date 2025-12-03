@interface CKDPShareAccessRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPShareAccessRequest

+ (id)options
{
  if (qword_280D550A0 != -1)
  {
    dispatch_once(&qword_280D550A0, &unk_28385DFE0);
  }

  v3 = qword_280D55098;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPShareAccessRequest;
  v4 = [(CKDPShareAccessRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  routingKey = self->_routingKey;
  if (routingKey)
  {
    objc_msgSend_setObject_forKey_(v4, v5, routingKey, @"routingKey");
  }

  shortTokenHash = self->_shortTokenHash;
  if (shortTokenHash)
  {
    objc_msgSend_setObject_forKey_(v6, v5, shortTokenHash, @"shortTokenHash");
  }

  userInformationRequestAccess = self->_userInformationRequestAccess;
  if (userInformationRequestAccess)
  {
    v10 = objc_msgSend_dictionaryRepresentation(userInformationRequestAccess, v5, shortTokenHash);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"userInformationRequestAccess");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_routingKey)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_shortTokenHash)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_userInformationRequestAccess)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  routingKey = self->_routingKey;
  v9 = toCopy;
  if (routingKey)
  {
    objc_msgSend_setRoutingKey_(toCopy, v5, routingKey);
    toCopy = v9;
  }

  shortTokenHash = self->_shortTokenHash;
  if (shortTokenHash)
  {
    objc_msgSend_setShortTokenHash_(v9, v5, shortTokenHash);
    toCopy = v9;
  }

  userInformationRequestAccess = self->_userInformationRequestAccess;
  if (userInformationRequestAccess)
  {
    objc_msgSend_setUserInformationRequestAccess_(v9, v5, userInformationRequestAccess);
    toCopy = v9;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_routingKey, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_shortTokenHash, v14, zone);
  v16 = v10[2];
  v10[2] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_userInformationRequestAccess, v17, zone);
  v19 = v10[3];
  v10[3] = v18;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((routingKey = self->_routingKey, v9 = equalCopy[1], !(routingKey | v9)) || objc_msgSend_isEqual_(routingKey, v7, v9)) && ((shortTokenHash = self->_shortTokenHash, v11 = equalCopy[2], !(shortTokenHash | v11)) || objc_msgSend_isEqual_(shortTokenHash, v7, v11)))
  {
    userInformationRequestAccess = self->_userInformationRequestAccess;
    v13 = equalCopy[3];
    if (userInformationRequestAccess | v13)
    {
      isEqual = objc_msgSend_isEqual_(userInformationRequestAccess, v7, v13);
    }

    else
    {
      isEqual = 1;
    }
  }

  else
  {
    isEqual = 0;
  }

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_routingKey, a2, v2);
  v7 = objc_msgSend_hash(self->_shortTokenHash, v5, v6) ^ v4;
  return v7 ^ objc_msgSend_hash(self->_userInformationRequestAccess, v8, v9);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[1];
  v9 = fromCopy;
  if (v5)
  {
    objc_msgSend_setRoutingKey_(self, fromCopy, v5);
    fromCopy = v9;
  }

  v6 = fromCopy[2];
  if (v6)
  {
    objc_msgSend_setShortTokenHash_(self, fromCopy, v6);
    fromCopy = v9;
  }

  userInformationRequestAccess = self->_userInformationRequestAccess;
  v8 = fromCopy[3];
  if (userInformationRequestAccess)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(userInformationRequestAccess, fromCopy, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setUserInformationRequestAccess_(self, fromCopy, v8);
  }

  MEMORY[0x2821F96F8]();
}

@end