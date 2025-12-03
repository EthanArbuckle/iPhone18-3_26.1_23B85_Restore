@interface CKDPFieldActionInsertIntoList
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addValue:(id)value;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPFieldActionInsertIntoList

- (void)addValue:(id)value
{
  valueCopy = value;
  values = self->_values;
  v8 = valueCopy;
  if (!values)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_values;
    self->_values = v6;

    valueCopy = v8;
    values = self->_values;
  }

  objc_msgSend_addObject_(values, valueCopy, valueCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPFieldActionInsertIntoList;
  v4 = [(CKDPFieldActionInsertIntoList *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v36 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  position = self->_position;
  if (position)
  {
    v8 = objc_msgSend_dictionaryRepresentation(position, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"position");
  }

  if (*&self->_has)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_insertAfter);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"insert_after");
  }

  if (objc_msgSend_count(self->_values, v4, v5))
  {
    v12 = objc_alloc(MEMORY[0x277CBEB18]);
    v15 = objc_msgSend_count(self->_values, v13, v14);
    v17 = objc_msgSend_initWithCapacity_(v12, v16, v15);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v18 = self->_values;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v31, v35, 16);
    if (v20)
    {
      v23 = v20;
      v24 = *v32;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(v18);
          }

          v26 = objc_msgSend_dictionaryRepresentation(*(*(&v31 + 1) + 8 * i), v21, v22, v31);
          objc_msgSend_addObject_(v17, v27, v26);
        }

        v23 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v31, v35, 16);
      }

      while (v23);
    }

    objc_msgSend_setObject_forKey_(v6, v28, v17, @"value");
  }

  v29 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_position)
  {
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    insertAfter = self->_insertAfter;
    PBDataWriterWriteBOOLField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_values;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v7, &v15, v19, 16);
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v13, &v15, v19, 16);
    }

    while (v9);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  position = self->_position;
  v17 = toCopy;
  if (position)
  {
    objc_msgSend_setPosition_(toCopy, v5, position);
    toCopy = v17;
  }

  if (*&self->_has)
  {
    toCopy[24] = self->_insertAfter;
    toCopy[28] |= 1u;
  }

  if (objc_msgSend_valuesCount(self, v5, position))
  {
    objc_msgSend_clearValues(v17, v7, v8);
    v11 = objc_msgSend_valuesCount(self, v9, v10);
    if (v11)
    {
      v13 = v11;
      for (i = 0; i != v13; ++i)
      {
        v15 = objc_msgSend_valueAtIndex_(self, v12, i);
        objc_msgSend_addValue_(v17, v16, v15);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_position, v11, zone);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  if (*&self->_has)
  {
    *(v10 + 24) = self->_insertAfter;
    *(v10 + 28) |= 1u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = self->_values;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v25, v29, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v26;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_copyWithZone_(*(*(&v25 + 1) + 8 * i), v17, zone, v25);
        objc_msgSend_addValue_(v10, v22, v21);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v25, v29, 16);
    }

    while (v18);
  }

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_9;
  }

  position = self->_position;
  v9 = equalCopy[1];
  if (position | v9)
  {
    if (!objc_msgSend_isEqual_(position, v7, v9))
    {
      goto LABEL_9;
    }
  }

  v10 = *(equalCopy + 28);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_5;
  }

  if ((*(equalCopy + 28) & 1) == 0)
  {
    goto LABEL_9;
  }

  v10 = *(equalCopy + 24);
  if (!self->_insertAfter)
  {
LABEL_5:
    if ((v10 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    isEqual = 0;
    goto LABEL_10;
  }

  if ((equalCopy[3] & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  values = self->_values;
  v12 = equalCopy[2];
  if (values | v12)
  {
    isEqual = objc_msgSend_isEqual_(values, v7, v12);
  }

  else
  {
    isEqual = 1;
  }

LABEL_10:

  return isEqual;
}

- (unint64_t)hash
{
  v6 = objc_msgSend_hash(self->_position, a2, v2);
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_insertAfter;
  }

  else
  {
    v7 = 0;
  }

  return v7 ^ objc_msgSend_hash(self->_values, v4, v5) ^ v6;
}

- (void)mergeFrom:(id)from
{
  v21 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  position = self->_position;
  v7 = *(fromCopy + 1);
  if (position)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(position, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setPosition_(self, v4, v7);
  }

  if (*(fromCopy + 28))
  {
    self->_insertAfter = *(fromCopy + 24);
    *&self->_has |= 1u;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = *(fromCopy + 2);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v16, v20, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v17;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v17 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_addValue_(self, v11, *(*(&v16 + 1) + 8 * i), v16);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v16, v20, 16);
    }

    while (v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

@end