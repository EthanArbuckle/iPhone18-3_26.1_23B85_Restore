@interface CKCDPCodeServiceRequestAuthInformation
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKCDPCodeServiceRequestAuthInformation

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPCodeServiceRequestAuthInformation;
  v4 = [(CKCDPCodeServiceRequestAuthInformation *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  accountServiceSignedToken = self->_accountServiceSignedToken;
  if (accountServiceSignedToken)
  {
    objc_msgSend_setObject_forKey_(v4, v5, accountServiceSignedToken, @"accountServiceSignedToken");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  if (self->_accountServiceSignedToken)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  accountServiceSignedToken = self->_accountServiceSignedToken;
  if (accountServiceSignedToken)
  {
    MEMORY[0x2821F9670](a3, sel_setAccountServiceSignedToken_, accountServiceSignedToken);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_accountServiceSignedToken, v11, a3);
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
    accountServiceSignedToken = self->_accountServiceSignedToken;
    v9 = v4[1];
    if (accountServiceSignedToken | v9)
    {
      isEqual = objc_msgSend_isEqual_(accountServiceSignedToken, v7, v9);
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
  v3 = *(a3 + 1);
  if (v3)
  {
    MEMORY[0x2821F9670](self, sel_setAccountServiceSignedToken_, v3);
  }
}

@end