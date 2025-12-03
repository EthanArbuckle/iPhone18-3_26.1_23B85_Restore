@interface CKDPDateStatistics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPDateStatistics

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPDateStatistics;
  v4 = [(CKDPDateStatistics *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  creation = self->_creation;
  if (creation)
  {
    v8 = objc_msgSend_dictionaryRepresentation(creation, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"creation");
  }

  modification = self->_modification;
  if (modification)
  {
    v11 = objc_msgSend_dictionaryRepresentation(modification, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"modification");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_creation)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_modification)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  creation = self->_creation;
  v8 = toCopy;
  if (creation)
  {
    objc_msgSend_setCreation_(toCopy, v5, creation);
    toCopy = v8;
  }

  modification = self->_modification;
  if (modification)
  {
    objc_msgSend_setModification_(v8, v5, modification);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_creation, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_modification, v14, zone);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((creation = self->_creation, v9 = equalCopy[1], !(creation | v9)) || objc_msgSend_isEqual_(creation, v7, v9)))
  {
    modification = self->_modification;
    v11 = equalCopy[2];
    if (modification | v11)
    {
      isEqual = objc_msgSend_isEqual_(modification, v7, v11);
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
  creation = self->_creation;
  v6 = fromCopy[1];
  v9 = fromCopy;
  if (creation)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(creation, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setCreation_(self, fromCopy, v6);
  }

  fromCopy = v9;
LABEL_7:
  modification = self->_modification;
  v8 = fromCopy[2];
  if (modification)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(modification, fromCopy, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setModification_(self, fromCopy, v8);
  }

  MEMORY[0x2821F96F8]();
}

@end