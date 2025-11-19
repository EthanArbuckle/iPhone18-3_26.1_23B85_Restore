@interface CKDPRecordChainParent
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPRecordChainParent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordChainParent;
  v4 = [(CKDPRecordChainParent *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  publicKeyID = self->_publicKeyID;
  if (publicKeyID)
  {
    objc_msgSend_setObject_forKey_(v4, v5, publicKeyID, @"publicKeyID");
  }

  reference = self->_reference;
  if (reference)
  {
    v9 = objc_msgSend_dictionaryRepresentation(reference, v5, publicKeyID);
    objc_msgSend_setObject_forKey_(v6, v10, v9, @"reference");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_publicKeyID)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_reference)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  publicKeyID = self->_publicKeyID;
  v8 = v4;
  if (publicKeyID)
  {
    objc_msgSend_setPublicKeyID_(v4, v5, publicKeyID);
    v4 = v8;
  }

  reference = self->_reference;
  if (reference)
  {
    objc_msgSend_setReference_(v8, v5, reference);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_publicKeyID, v11, a3);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_reference, v14, a3);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((publicKeyID = self->_publicKeyID, v9 = v4[1], !(publicKeyID | v9)) || objc_msgSend_isEqual_(publicKeyID, v7, v9)))
  {
    reference = self->_reference;
    v11 = v4[2];
    if (reference | v11)
    {
      isEqual = objc_msgSend_isEqual_(reference, v7, v11);
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
  v5 = v4[1];
  v8 = v4;
  if (v5)
  {
    objc_msgSend_setPublicKeyID_(self, v4, v5);
    v4 = v8;
  }

  reference = self->_reference;
  v7 = v4[2];
  if (reference)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(reference, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setReference_(self, v4, v7);
  }

  MEMORY[0x2821F96F8]();
}

@end