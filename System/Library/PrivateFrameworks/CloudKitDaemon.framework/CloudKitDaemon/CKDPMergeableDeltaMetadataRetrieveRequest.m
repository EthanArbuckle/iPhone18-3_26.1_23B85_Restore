@interface CKDPMergeableDeltaMetadataRetrieveRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPMergeableDeltaMetadataRetrieveRequest

+ (id)options
{
  if (qword_280D54FE0 != -1)
  {
    dispatch_once(&qword_280D54FE0, &unk_28385DDE0);
  }

  v3 = qword_280D54FD8;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPMergeableDeltaMetadataRetrieveRequest;
  v4 = [(CKDPMergeableDeltaMetadataRetrieveRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  identifier = self->_identifier;
  if (identifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(identifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"identifier");
  }

  continuation = self->_continuation;
  if (continuation)
  {
    objc_msgSend_setObject_forKey_(v6, v4, continuation, @"continuation");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_identifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_continuation)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  identifier = self->_identifier;
  v8 = v4;
  if (identifier)
  {
    objc_msgSend_setIdentifier_(v4, v5, identifier);
    v4 = v8;
  }

  continuation = self->_continuation;
  if (continuation)
  {
    objc_msgSend_setContinuation_(v8, v5, continuation);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_identifier, v11, a3);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_continuation, v14, a3);
  v16 = v10[1];
  v10[1] = v15;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((identifier = self->_identifier, v9 = v4[2], !(identifier | v9)) || objc_msgSend_isEqual_(identifier, v7, v9)))
  {
    continuation = self->_continuation;
    v11 = v4[1];
    if (continuation | v11)
    {
      isEqual = objc_msgSend_isEqual_(continuation, v7, v11);
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
  identifier = self->_identifier;
  v6 = v4[2];
  v8 = v4;
  if (identifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(identifier, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setIdentifier_(self, v4, v6);
  }

  v4 = v8;
LABEL_7:
  v7 = v4[1];
  if (v7)
  {
    objc_msgSend_setContinuation_(self, v4, v7);
  }

  MEMORY[0x2821F96F8]();
}

@end