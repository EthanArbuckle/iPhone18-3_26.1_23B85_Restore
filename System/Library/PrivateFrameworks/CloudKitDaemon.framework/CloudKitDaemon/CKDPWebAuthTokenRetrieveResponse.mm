@interface CKDPWebAuthTokenRetrieveResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPWebAuthTokenRetrieveResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPWebAuthTokenRetrieveResponse;
  v4 = [(CKDPWebAuthTokenRetrieveResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  token = self->_token;
  if (token)
  {
    objc_msgSend_setObject_forKey_(v4, v5, token, @"token");
  }

  containerScopedUserId = self->_containerScopedUserId;
  if (containerScopedUserId)
  {
    objc_msgSend_setObject_forKey_(v6, v5, containerScopedUserId, @"containerScopedUserId");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_token)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_containerScopedUserId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  token = self->_token;
  v8 = toCopy;
  if (token)
  {
    objc_msgSend_setToken_(toCopy, v5, token);
    toCopy = v8;
  }

  containerScopedUserId = self->_containerScopedUserId;
  if (containerScopedUserId)
  {
    objc_msgSend_setContainerScopedUserId_(v8, v5, containerScopedUserId);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_token, v11, zone);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_containerScopedUserId, v14, zone);
  v16 = v10[1];
  v10[1] = v15;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((token = self->_token, v9 = equalCopy[2], !(token | v9)) || objc_msgSend_isEqual_(token, v7, v9)))
  {
    containerScopedUserId = self->_containerScopedUserId;
    v11 = equalCopy[1];
    if (containerScopedUserId | v11)
    {
      isEqual = objc_msgSend_isEqual_(containerScopedUserId, v7, v11);
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = fromCopy[2];
  v8 = fromCopy;
  if (v6)
  {
    objc_msgSend_setToken_(self, v5, v6);
    fromCopy = v8;
  }

  v7 = fromCopy[1];
  if (v7)
  {
    objc_msgSend_setContainerScopedUserId_(self, v5, v7);
    fromCopy = v8;
  }
}

@end