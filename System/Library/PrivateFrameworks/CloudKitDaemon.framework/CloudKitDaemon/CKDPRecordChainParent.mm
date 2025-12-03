@interface CKDPRecordChainParent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_publicKeyID)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_reference)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  publicKeyID = self->_publicKeyID;
  v8 = toCopy;
  if (publicKeyID)
  {
    objc_msgSend_setPublicKeyID_(toCopy, v5, publicKeyID);
    toCopy = v8;
  }

  reference = self->_reference;
  if (reference)
  {
    objc_msgSend_setReference_(v8, v5, reference);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_publicKeyID, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_reference, v14, zone);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((publicKeyID = self->_publicKeyID, v9 = equalCopy[1], !(publicKeyID | v9)) || objc_msgSend_isEqual_(publicKeyID, v7, v9)))
  {
    reference = self->_reference;
    v11 = equalCopy[2];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy[1];
  v8 = fromCopy;
  if (v5)
  {
    objc_msgSend_setPublicKeyID_(self, fromCopy, v5);
    fromCopy = v8;
  }

  reference = self->_reference;
  v7 = fromCopy[2];
  if (reference)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(reference, fromCopy, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setReference_(self, fromCopy, v7);
  }

  MEMORY[0x2821F96F8]();
}

@end