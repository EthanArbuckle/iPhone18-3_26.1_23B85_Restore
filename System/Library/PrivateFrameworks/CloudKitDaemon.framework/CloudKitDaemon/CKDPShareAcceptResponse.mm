@interface CKDPShareAcceptResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPShareAcceptResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPShareAcceptResponse;
  v4 = [(CKDPShareAcceptResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  share = self->_share;
  if (share)
  {
    v8 = objc_msgSend_dictionaryRepresentation(share, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"share");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (self->_share)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  share = self->_share;
  if (share)
  {
    objc_msgSend_setShare_(to, a2, share);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_share, v11, zone);
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
    share = self->_share;
    v9 = equalCopy[1];
    if (share | v9)
    {
      isEqual = objc_msgSend_isEqual_(share, v7, v9);
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
  share = self->_share;
  v6 = *(fromCopy + 1);
  if (share)
  {
    if (v6)
    {
      objc_msgSend_mergeFrom_(share, fromCopy, v6);
    }
  }

  else if (v6)
  {
    objc_msgSend_setShare_(self, fromCopy, v6);
  }

  MEMORY[0x2821F96F8]();
}

@end