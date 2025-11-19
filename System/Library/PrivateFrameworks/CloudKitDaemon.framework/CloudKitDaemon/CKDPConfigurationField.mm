@interface CKDPConfigurationField
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_name)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  name = self->_name;
  v8 = v4;
  if (name)
  {
    objc_msgSend_setName_(v4, v5, name);
    v4 = v8;
  }

  value = self->_value;
  if (value)
  {
    objc_msgSend_setValue_(v8, v5, value);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_name, v11, a3);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_value, v14, a3);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((name = self->_name, v9 = v4[1], !(name | v9)) || objc_msgSend_isEqual_(name, v7, v9)))
  {
    value = self->_value;
    v11 = v4[2];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  v5 = v4[1];
  v8 = v4;
  if (v5)
  {
    objc_msgSend_setName_(self, v4, v5);
    v4 = v8;
  }

  value = self->_value;
  v7 = v4[2];
  if (value)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(value, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setValue_(self, v4, v7);
  }

  MEMORY[0x2821F96F8]();
}

@end