@interface CKDPRecordField
+ (id)emptyFieldWithKey:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAction:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPRecordField

- (void)addAction:(id)a3
{
  v4 = a3;
  actions = self->_actions;
  v8 = v4;
  if (!actions)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_actions;
    self->_actions = v6;

    v4 = v8;
    actions = self->_actions;
  }

  objc_msgSend_addObject_(actions, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordField;
  v4 = [(CKDPRecordField *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  identifier = self->_identifier;
  if (identifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(identifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"identifier");
  }

  value = self->_value;
  if (value)
  {
    v11 = objc_msgSend_dictionaryRepresentation(value, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"value");
  }

  if (objc_msgSend_count(self->_actions, v4, v5))
  {
    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    v16 = objc_msgSend_count(self->_actions, v14, v15);
    v18 = objc_msgSend_initWithCapacity_(v13, v17, v16);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = self->_actions;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v32, v36, 16);
    if (v21)
    {
      v24 = v21;
      v25 = *v33;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v33 != v25)
          {
            objc_enumerationMutation(v19);
          }

          v27 = objc_msgSend_dictionaryRepresentation(*(*(&v32 + 1) + 8 * i), v22, v23, v32);
          objc_msgSend_addObject_(v18, v28, v27);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v32, v36, 16);
      }

      while (v24);
    }

    objc_msgSend_setObject_forKey_(v6, v29, v18, @"action");
  }

  v30 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_identifier)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_value)
  {
    PBDataWriterWriteSubmessage();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_actions;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v14, v18, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v14, v18, 16);
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v17 = a3;
  identifier = self->_identifier;
  if (identifier)
  {
    objc_msgSend_setIdentifier_(v17, v4, identifier);
  }

  value = self->_value;
  if (value)
  {
    objc_msgSend_setValue_(v17, v4, value);
  }

  if (objc_msgSend_actionsCount(self, v4, value))
  {
    objc_msgSend_clearActions(v17, v7, v8);
    v11 = objc_msgSend_actionsCount(self, v9, v10);
    if (v11)
    {
      v13 = v11;
      for (i = 0; i != v13; ++i)
      {
        v15 = objc_msgSend_actionAtIndex_(self, v12, i);
        objc_msgSend_addAction_(v17, v16, v15);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_identifier, v11, a3);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_value, v14, a3);
  v16 = v10[3];
  v10[3] = v15;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v17 = self->_actions;
  v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v28, v32, 16);
  if (v19)
  {
    v21 = v19;
    v22 = *v29;
    do
    {
      v23 = 0;
      do
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = objc_msgSend_copyWithZone_(*(*(&v28 + 1) + 8 * v23), v20, a3, v28);
        objc_msgSend_addAction_(v10, v25, v24);

        ++v23;
      }

      while (v21 != v23);
      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v28, v32, 16);
    }

    while (v21);
  }

  v26 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((identifier = self->_identifier, v9 = v4[2], !(identifier | v9)) || objc_msgSend_isEqual_(identifier, v7, v9)) && ((value = self->_value, v11 = v4[3], !(value | v11)) || objc_msgSend_isEqual_(value, v7, v11)))
  {
    actions = self->_actions;
    v13 = v4[1];
    if (actions | v13)
    {
      isEqual = objc_msgSend_isEqual_(actions, v7, v13);
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
  v4 = objc_msgSend_hash(self->_identifier, a2, v2);
  v7 = objc_msgSend_hash(self->_value, v5, v6) ^ v4;
  return v7 ^ objc_msgSend_hash(self->_actions, v8, v9);
}

- (void)mergeFrom:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  identifier = self->_identifier;
  v7 = *(v5 + 2);
  if (identifier)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(identifier, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setIdentifier_(self, v4, v7);
  }

  value = self->_value;
  v9 = *(v5 + 3);
  if (value)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(value, v4, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setValue_(self, v4, v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = *(v5 + 1);
  v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, &v18, v22, 16);
  if (v12)
  {
    v14 = v12;
    v15 = *v19;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v10);
        }

        objc_msgSend_addAction_(self, v13, *(*(&v18 + 1) + 8 * i), v18);
      }

      v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v13, &v18, v22, 16);
    }

    while (v14);
  }

  v17 = *MEMORY[0x277D85DE8];
}

+ (id)emptyFieldWithKey:(id)a3
{
  v3 = a3;
  v4 = objc_opt_new();
  v5 = objc_opt_new();
  objc_msgSend_setIdentifier_(v4, v6, v5);

  v9 = objc_msgSend_identifier(v4, v7, v8);
  objc_msgSend_setName_(v9, v10, v3);

  v11 = objc_opt_new();
  objc_msgSend_setValue_(v4, v12, v11);

  return v4;
}

@end