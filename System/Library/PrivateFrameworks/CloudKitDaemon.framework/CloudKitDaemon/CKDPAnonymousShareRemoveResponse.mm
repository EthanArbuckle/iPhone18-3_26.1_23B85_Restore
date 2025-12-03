@interface CKDPAnonymousShareRemoveResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPAnonymousShareRemoveResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPAnonymousShareRemoveResponse;
  v4 = [(CKDPAnonymousShareRemoveResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  anonymousShareTupleHash = self->_anonymousShareTupleHash;
  if (anonymousShareTupleHash)
  {
    objc_msgSend_setObject_forKey_(v4, v5, anonymousShareTupleHash, @"anonymousShareTupleHash");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (self->_anonymousShareTupleHash)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  anonymousShareTupleHash = self->_anonymousShareTupleHash;
  if (anonymousShareTupleHash)
  {
    objc_msgSend_setAnonymousShareTupleHash_(to, a2, anonymousShareTupleHash);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_anonymousShareTupleHash, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    anonymousShareTupleHash = self->_anonymousShareTupleHash;
    v9 = equalCopy[1];
    if (anonymousShareTupleHash | v9)
    {
      isEqual = objc_msgSend_isEqual_(anonymousShareTupleHash, v7, v9);
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
  v3 = *(from + 1);
  if (v3)
  {
    objc_msgSend_setAnonymousShareTupleHash_(self, a2, v3);
  }
}

@end