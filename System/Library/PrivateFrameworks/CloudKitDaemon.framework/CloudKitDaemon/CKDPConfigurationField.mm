@interface CKDPConfigurationField
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPConfigurationField

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPConfigurationField;
  v4 = [(CKDPConfigurationField *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  name = self->_name;
  if (name)
  {
    objc_msgSend_setObject_forKey_(v4, v5, name, @"name");
  }

  value = self->_value;
  if (value)
  {
    v9 = objc_msgSend_dictionaryRepresentation(value, v5, name);
    objc_msgSend_setObject_forKey_(v6, v10, v9, @"value");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  name = self->_name;
  v8 = toCopy;
  if (name)
  {
    objc_msgSend_setName_(toCopy, v5, name);
    toCopy = v8;
  }

  value = self->_value;
  if (value)
  {
    objc_msgSend_setValue_(v8, v5, value);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_name, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_value, v14, zone);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((name = self->_name, v9 = equalCopy[1], !(name | v9)) || objc_msgSend_isEqual_(name, v7, v9)))
  {
    value = self->_value;
    v11 = equalCopy[2];
    if (value | v11)
    {
      isEqual = objc_msgSend_isEqual_(value, v7, v11);
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
    objc_msgSend_setName_(self, fromCopy, v5);
    fromCopy = v8;
  }

  value = self->_value;
  v7 = fromCopy[2];
  if (value)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(value, fromCopy, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setValue_(self, fromCopy, v7);
  }

  MEMORY[0x2821F96F8]();
}

@end