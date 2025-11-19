@interface CKDPUserRetrieveResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPUserRetrieveResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPUserRetrieveResponse;
  v4 = [(CKDPUserRetrieveResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  user = self->_user;
  if (user)
  {
    v8 = objc_msgSend_dictionaryRepresentation(user, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"user");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  if (self->_user)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)a3
{
  user = self->_user;
  if (user)
  {
    objc_msgSend_setUser_(a3, a2, user);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_user, v11, a3);
  v13 = v10[1];
  v10[1] = v12;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    user = self->_user;
    v9 = v4[1];
    if (user | v9)
    {
      isEqual = objc_msgSend_isEqual_(user, v7, v9);
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  user = self->_user;
  v6 = *(v4 + 1);
  if (user)
  {
    if (v6)
    {
      objc_msgSend_mergeFrom_(user, v4, v6);
    }
  }

  else if (v6)
  {
    objc_msgSend_setUser_(self, v4, v6);
  }

  MEMORY[0x2821F96F8]();
}

@end