@interface CKDPAnonymousShareAddRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPAnonymousShareAddRequest

+ (id)options
{
  if (qword_280D58430 != -1)
  {
    dispatch_once(&qword_280D58430, &unk_28385DCC0);
  }

  v3 = qword_280D58428;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPAnonymousShareAddRequest;
  v4 = [(CKDPAnonymousShareAddRequest *)&v11 description];
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_anonymousShareTupleHash)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_encryptedShareTuple)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  anonymousShareTupleHash = self->_anonymousShareTupleHash;
  v8 = v4;
  if (anonymousShareTupleHash)
  {
    objc_msgSend_setAnonymousShareTupleHash_(v4, v5, anonymousShareTupleHash);
    v4 = v8;
  }

  encryptedShareTuple = self->_encryptedShareTuple;
  if (encryptedShareTuple)
  {
    objc_msgSend_setEncryptedShareTuple_(v8, v5, encryptedShareTuple);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_anonymousShareTupleHash, v11, a3);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_encryptedShareTuple, v14, a3);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((anonymousShareTupleHash = self->_anonymousShareTupleHash, v9 = v4[1], !(anonymousShareTupleHash | v9)) || objc_msgSend_isEqual_(anonymousShareTupleHash, v7, v9)))
  {
    encryptedShareTuple = self->_encryptedShareTuple;
    v11 = v4[2];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v6 = v4[1];
  v8 = v4;
  if (v6)
  {
    objc_msgSend_setAnonymousShareTupleHash_(self, v5, v6);
    v4 = v8;
  }

  v7 = v4[2];
  if (v7)
  {
    objc_msgSend_setEncryptedShareTuple_(self, v5, v7);
    v4 = v8;
  }
}

@end