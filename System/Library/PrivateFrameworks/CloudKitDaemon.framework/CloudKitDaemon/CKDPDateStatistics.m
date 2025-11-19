@interface CKDPDateStatistics
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_creation)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_modification)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  creation = self->_creation;
  v8 = v4;
  if (creation)
  {
    objc_msgSend_setCreation_(v4, v5, creation);
    v4 = v8;
  }

  modification = self->_modification;
  if (modification)
  {
    objc_msgSend_setModification_(v8, v5, modification);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_creation, v11, a3);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_modification, v14, a3);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((creation = self->_creation, v9 = v4[1], !(creation | v9)) || objc_msgSend_isEqual_(creation, v7, v9)))
  {
    modification = self->_modification;
    v11 = v4[2];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  creation = self->_creation;
  v6 = v4[1];
  v9 = v4;
  if (creation)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(creation, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setCreation_(self, v4, v6);
  }

  v4 = v9;
LABEL_7:
  modification = self->_modification;
  v8 = v4[2];
  if (modification)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(modification, v4, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setModification_(self, v4, v8);
  }

  MEMORY[0x2821F96F8]();
}

@end