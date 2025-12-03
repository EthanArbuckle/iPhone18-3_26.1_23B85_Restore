@interface CKDPAnonymousShareRemoveRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPAnonymousShareRemoveRequest

+ (id)options
{
  if (qword_280D58440 != -1)
  {
    dispatch_once(&qword_280D58440, &unk_28385DCE0);
  }

  v3 = qword_280D58438;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPAnonymousShareRemoveRequest;
  v4 = [(CKDPAnonymousShareRemoveRequest *)&v11 description];
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

  encryptedShareTuple = self->_encryptedShareTuple;
  if (encryptedShareTuple)
  {
    objc_msgSend_setObject_forKey_(v6, v5, encryptedShareTuple, @"encryptedShareTuple");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_anonymousShareTupleHash)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_encryptedShareTuple)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  anonymousShareTupleHash = self->_anonymousShareTupleHash;
  v8 = toCopy;
  if (anonymousShareTupleHash)
  {
    objc_msgSend_setAnonymousShareTupleHash_(toCopy, v5, anonymousShareTupleHash);
    toCopy = v8;
  }

  encryptedShareTuple = self->_encryptedShareTuple;
  if (encryptedShareTuple)
  {
    objc_msgSend_setEncryptedShareTuple_(v8, v5, encryptedShareTuple);
    toCopy = v8;
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

  v15 = objc_msgSend_copyWithZone_(self->_encryptedShareTuple, v14, zone);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((anonymousShareTupleHash = self->_anonymousShareTupleHash, v9 = equalCopy[1], !(anonymousShareTupleHash | v9)) || objc_msgSend_isEqual_(anonymousShareTupleHash, v7, v9)))
  {
    encryptedShareTuple = self->_encryptedShareTuple;
    v11 = equalCopy[2];
    if (encryptedShareTuple | v11)
    {
      isEqual = objc_msgSend_isEqual_(encryptedShareTuple, v7, v11);
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
  v6 = fromCopy[1];
  v8 = fromCopy;
  if (v6)
  {
    objc_msgSend_setAnonymousShareTupleHash_(self, v5, v6);
    fromCopy = v8;
  }

  v7 = fromCopy[2];
  if (v7)
  {
    objc_msgSend_setEncryptedShareTuple_(self, v5, v7);
    fromCopy = v8;
  }
}

@end