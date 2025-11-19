@interface CKDPFieldAction
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPFieldAction

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPFieldAction;
  v4 = [(CKDPFieldAction *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  insertIntoList = self->_insertIntoList;
  if (insertIntoList)
  {
    v8 = objc_msgSend_dictionaryRepresentation(insertIntoList, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"insert_into_list");
  }

  deleteListRange = self->_deleteListRange;
  if (deleteListRange)
  {
    v11 = objc_msgSend_dictionaryRepresentation(deleteListRange, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"delete_list_range");
  }

  replaceListRange = self->_replaceListRange;
  if (replaceListRange)
  {
    v14 = objc_msgSend_dictionaryRepresentation(replaceListRange, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v15, v14, @"replace_list_range");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_insertIntoList)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_deleteListRange)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_replaceListRange)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  insertIntoList = self->_insertIntoList;
  v9 = v4;
  if (insertIntoList)
  {
    objc_msgSend_setInsertIntoList_(v4, v5, insertIntoList);
    v4 = v9;
  }

  deleteListRange = self->_deleteListRange;
  if (deleteListRange)
  {
    objc_msgSend_setDeleteListRange_(v9, v5, deleteListRange);
    v4 = v9;
  }

  replaceListRange = self->_replaceListRange;
  if (replaceListRange)
  {
    objc_msgSend_setReplaceListRange_(v9, v5, replaceListRange);
    v4 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_insertIntoList, v11, a3);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_deleteListRange, v14, a3);
  v16 = v10[1];
  v10[1] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_replaceListRange, v17, a3);
  v19 = v10[3];
  v10[3] = v18;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((insertIntoList = self->_insertIntoList, v9 = v4[2], !(insertIntoList | v9)) || objc_msgSend_isEqual_(insertIntoList, v7, v9)) && ((deleteListRange = self->_deleteListRange, v11 = v4[1], !(deleteListRange | v11)) || objc_msgSend_isEqual_(deleteListRange, v7, v11)))
  {
    replaceListRange = self->_replaceListRange;
    v13 = v4[3];
    if (replaceListRange | v13)
    {
      isEqual = objc_msgSend_isEqual_(replaceListRange, v7, v13);
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

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_insertIntoList, a2, v2);
  v7 = objc_msgSend_hash(self->_deleteListRange, v5, v6) ^ v4;
  return v7 ^ objc_msgSend_hash(self->_replaceListRange, v8, v9);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  insertIntoList = self->_insertIntoList;
  v6 = v4[2];
  v11 = v4;
  if (insertIntoList)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(insertIntoList, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setInsertIntoList_(self, v4, v6);
  }

  v4 = v11;
LABEL_7:
  deleteListRange = self->_deleteListRange;
  v8 = v4[1];
  if (deleteListRange)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    objc_msgSend_mergeFrom_(deleteListRange, v4, v8);
  }

  else
  {
    if (!v8)
    {
      goto LABEL_13;
    }

    objc_msgSend_setDeleteListRange_(self, v4, v8);
  }

  v4 = v11;
LABEL_13:
  replaceListRange = self->_replaceListRange;
  v10 = v4[3];
  if (replaceListRange)
  {
    if (v10)
    {
      objc_msgSend_mergeFrom_(replaceListRange, v4, v10);
    }
  }

  else if (v10)
  {
    objc_msgSend_setReplaceListRange_(self, v4, v10);
  }

  MEMORY[0x2821F96F8]();
}

@end