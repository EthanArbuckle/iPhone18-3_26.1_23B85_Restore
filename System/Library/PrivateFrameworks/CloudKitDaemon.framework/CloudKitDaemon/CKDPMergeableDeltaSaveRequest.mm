@interface CKDPMergeableDeltaSaveRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPMergeableDeltaSaveRequest

+ (id)options
{
  if (qword_280D58480 != -1)
  {
    dispatch_once(&qword_280D58480, &unk_28385DE40);
  }

  v3 = qword_280D58478;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPMergeableDeltaSaveRequest;
  v4 = [(CKDPMergeableDeltaSaveRequest *)&v11 description];
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

  delta = self->_delta;
  if (delta)
  {
    v11 = objc_msgSend_dictionaryRepresentation(delta, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"delta");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_identifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_delta)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  identifier = self->_identifier;
  v8 = toCopy;
  if (identifier)
  {
    objc_msgSend_setIdentifier_(toCopy, v5, identifier);
    toCopy = v8;
  }

  delta = self->_delta;
  if (delta)
  {
    objc_msgSend_setDelta_(v8, v5, delta);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_identifier, v11, zone);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_delta, v14, zone);
  v16 = v10[1];
  v10[1] = v15;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((identifier = self->_identifier, v9 = equalCopy[2], !(identifier | v9)) || objc_msgSend_isEqual_(identifier, v7, v9)))
  {
    delta = self->_delta;
    v11 = equalCopy[1];
    if (delta | v11)
    {
      isEqual = objc_msgSend_isEqual_(delta, v7, v11);
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
  identifier = self->_identifier;
  v6 = fromCopy[2];
  v9 = fromCopy;
  if (identifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(identifier, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setIdentifier_(self, fromCopy, v6);
  }

  fromCopy = v9;
LABEL_7:
  delta = self->_delta;
  v8 = fromCopy[1];
  if (delta)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(delta, fromCopy, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setDelta_(self, fromCopy, v8);
  }

  MEMORY[0x2821F96F8]();
}

@end