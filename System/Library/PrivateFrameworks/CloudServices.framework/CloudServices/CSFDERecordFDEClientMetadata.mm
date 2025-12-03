@interface CSFDERecordFDEClientMetadata
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSFDERecordFDEClientMetadata

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CSFDERecordFDEClientMetadata;
  v4 = [(CSFDERecordFDEClientMetadata *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  icdp = self->_icdp;
  if (icdp)
  {
    v8 = objc_msgSend_dictionaryRepresentation(icdp, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"icdp");
  }

  keyRegistry = self->_keyRegistry;
  if (keyRegistry)
  {
    v11 = objc_msgSend_dictionaryRepresentation(keyRegistry, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"keyRegistry");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_icdp)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_keyRegistry)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  icdp = self->_icdp;
  v8 = toCopy;
  if (icdp)
  {
    objc_msgSend_setIcdp_(toCopy, v5, icdp);
    toCopy = v8;
  }

  keyRegistry = self->_keyRegistry;
  if (keyRegistry)
  {
    objc_msgSend_setKeyRegistry_(v8, v5, keyRegistry);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_icdp, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_keyRegistry, v14, zone);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((icdp = self->_icdp, v9 = equalCopy[1], !(icdp | v9)) || objc_msgSend_isEqual_(icdp, v7, v9)))
  {
    keyRegistry = self->_keyRegistry;
    v11 = equalCopy[2];
    if (keyRegistry | v11)
    {
      isEqual = objc_msgSend_isEqual_(keyRegistry, v7, v11);
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
  icdp = self->_icdp;
  v6 = fromCopy[1];
  v9 = fromCopy;
  if (icdp)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(icdp, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setIcdp_(self, fromCopy, v6);
  }

  fromCopy = v9;
LABEL_7:
  keyRegistry = self->_keyRegistry;
  v8 = fromCopy[2];
  if (keyRegistry)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(keyRegistry, fromCopy, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setKeyRegistry_(self, fromCopy, v8);
  }

  MEMORY[0x2821F96F8]();
}

@end