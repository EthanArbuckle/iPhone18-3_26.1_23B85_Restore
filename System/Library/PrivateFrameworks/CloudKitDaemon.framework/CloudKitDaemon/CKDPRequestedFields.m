@interface CKDPRequestedFields
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)_CKLogToFileHandle:(id)a3 atDepth:(int)a4;
- (void)addFields:(id)a3;
- (void)addListField:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPRequestedFields

- (void)_CKLogToFileHandle:(id)a3 atDepth:(int)a4
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v9 = objc_msgSend_fields(self, v7, v8);
  v12 = objc_msgSend_count(v9, v10, v11);
  v15 = objc_msgSend_listFields(self, v13, v14);
  v18 = objc_msgSend_count(v15, v16, v17) + v12;

  v19 = sub_225199CCC();
  objc_msgSend_writeData_(v6, v20, v19);

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v49 = self;
  v23 = objc_msgSend_fields(self, v21, v22);
  v25 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v24, &v54, v59, 16);
  if (v25)
  {
    v27 = v25;
    v28 = 0;
    v29 = *v55;
    do
    {
      v30 = 0;
      v31 = v28 + 1;
      do
      {
        if (*v55 != v29)
        {
          objc_enumerationMutation(v23);
        }

        objc_msgSend__CKLogToFileHandle_atDepth_(*(*(&v54 + 1) + 8 * v30), v26, v6, (a4 + 1));
        if (v31 < v18)
        {
          v32 = sub_225199D20();
          objc_msgSend_writeData_(v6, v33, v32);
        }

        ++v30;
        ++v31;
      }

      while (v27 != v30);
      v28 += v27;
      v27 = objc_msgSend_countByEnumeratingWithState_objects_count_(v23, v26, &v54, v59, 16);
    }

    while (v27);
  }

  else
  {
    v28 = 0;
  }

  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v36 = objc_msgSend_listFields(v49, v34, v35);
  v38 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v37, &v50, v58, 16);
  if (v38)
  {
    v40 = v38;
    v41 = *v51;
    do
    {
      v42 = 0;
      v43 = v28 + 1;
      do
      {
        if (*v51 != v41)
        {
          objc_enumerationMutation(v36);
        }

        objc_msgSend__CKLogToFileHandle_atDepth_(*(*(&v50 + 1) + 8 * v42), v39, v6, (a4 + 1));
        if (v43 < v18)
        {
          v44 = sub_225199D20();
          objc_msgSend_writeData_(v6, v45, v44);
        }

        ++v42;
        ++v43;
      }

      while (v40 != v42);
      v28 += v40;
      v40 = objc_msgSend_countByEnumeratingWithState_objects_count_(v36, v39, &v50, v58, 16);
    }

    while (v40);
  }

  v46 = sub_225199D74();
  objc_msgSend_writeData_(v6, v47, v46);

  v48 = *MEMORY[0x277D85DE8];
}

- (void)addFields:(id)a3
{
  v4 = a3;
  fields = self->_fields;
  v8 = v4;
  if (!fields)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_fields;
    self->_fields = v6;

    v4 = v8;
    fields = self->_fields;
  }

  objc_msgSend_addObject_(fields, v4, v4);
}

- (void)addListField:(id)a3
{
  v4 = a3;
  listFields = self->_listFields;
  v8 = v4;
  if (!listFields)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_listFields;
    self->_listFields = v6;

    v4 = v8;
    listFields = self->_listFields;
  }

  objc_msgSend_addObject_(listFields, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRequestedFields;
  v4 = [(CKDPRequestedFields *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (objc_msgSend_count(self->_fields, v5, v6))
  {
    v9 = objc_alloc(MEMORY[0x277CBEB18]);
    v12 = objc_msgSend_count(self->_fields, v10, v11);
    v14 = objc_msgSend_initWithCapacity_(v9, v13, v12);
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v15 = self->_fields;
    v17 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v16, &v49, v54, 16);
    if (v17)
    {
      v20 = v17;
      v21 = *v50;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v50 != v21)
          {
            objc_enumerationMutation(v15);
          }

          v23 = objc_msgSend_dictionaryRepresentation(*(*(&v49 + 1) + 8 * i), v18, v19);
          objc_msgSend_addObject_(v14, v24, v23);
        }

        v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v15, v18, &v49, v54, 16);
      }

      while (v20);
    }

    objc_msgSend_setObject_forKey_(v4, v25, v14, @"fields");
  }

  if (objc_msgSend_count(self->_listFields, v7, v8))
  {
    v26 = objc_alloc(MEMORY[0x277CBEB18]);
    v29 = objc_msgSend_count(self->_listFields, v27, v28);
    v31 = objc_msgSend_initWithCapacity_(v26, v30, v29);
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v32 = self->_listFields;
    v34 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v33, &v45, v53, 16);
    if (v34)
    {
      v37 = v34;
      v38 = *v46;
      do
      {
        for (j = 0; j != v37; ++j)
        {
          if (*v46 != v38)
          {
            objc_enumerationMutation(v32);
          }

          v40 = objc_msgSend_dictionaryRepresentation(*(*(&v45 + 1) + 8 * j), v35, v36, v45);
          objc_msgSend_addObject_(v31, v41, v40);
        }

        v37 = objc_msgSend_countByEnumeratingWithState_objects_count_(v32, v35, &v45, v53, 16);
      }

      while (v37);
    }

    objc_msgSend_setObject_forKey_(v4, v42, v31, @"list_field");
  }

  v43 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = self->_fields;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v26, v31, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      v10 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v26 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v26, v31, 16);
    }

    while (v8);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v13 = self->_listFields;
  v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v22, v30, 16);
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      v18 = 0;
      do
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = *(*(&v22 + 1) + 8 * v18);
        PBDataWriterWriteSubmessage();
        ++v18;
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v20, &v22, v30, 16);
    }

    while (v16);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v25 = a3;
  if (objc_msgSend_fieldsCount(self, v4, v5))
  {
    objc_msgSend_clearFields(v25, v6, v7);
    v10 = objc_msgSend_fieldsCount(self, v8, v9);
    if (v10)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = objc_msgSend_fieldsAtIndex_(self, v6, i);
        objc_msgSend_addFields_(v25, v14, v13);
      }
    }
  }

  if (objc_msgSend_listFieldsCount(self, v6, v7))
  {
    objc_msgSend_clearListFields(v25, v15, v16);
    v19 = objc_msgSend_listFieldsCount(self, v17, v18);
    if (v19)
    {
      v21 = v19;
      for (j = 0; j != v21; ++j)
      {
        v23 = objc_msgSend_listFieldAtIndex_(self, v20, j);
        objc_msgSend_addListField_(v25, v24, v23);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v11 = self->_fields;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v35, v40, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v36;
    do
    {
      v17 = 0;
      do
      {
        if (*v36 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend_copyWithZone_(*(*(&v35 + 1) + 8 * v17), v14, a3);
        objc_msgSend_addFields_(v10, v19, v18);

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v35, v40, 16);
    }

    while (v15);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = self->_listFields;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v31, v39, 16);
  if (v22)
  {
    v24 = v22;
    v25 = *v32;
    do
    {
      v26 = 0;
      do
      {
        if (*v32 != v25)
        {
          objc_enumerationMutation(v20);
        }

        v27 = objc_msgSend_copyWithZone_(*(*(&v31 + 1) + 8 * v26), v23, a3, v31);
        objc_msgSend_addListField_(v10, v28, v27);

        ++v26;
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v31, v39, 16);
    }

    while (v24);
  }

  v29 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((fields = self->_fields, v9 = v4[1], !(fields | v9)) || objc_msgSend_isEqual_(fields, v7, v9)))
  {
    listFields = self->_listFields;
    v11 = v4[2];
    if (listFields | v11)
    {
      isEqual = objc_msgSend_isEqual_(listFields, v7, v11);
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
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v4[1];
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v24, v29, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v25;
    do
    {
      v11 = 0;
      do
      {
        if (*v25 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_addFields_(self, v8, *(*(&v24 + 1) + 8 * v11++));
      }

      while (v9 != v11);
      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v24, v29, 16);
    }

    while (v9);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = v4[2];
  v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v13, &v20, v28, 16);
  if (v14)
  {
    v16 = v14;
    v17 = *v21;
    do
    {
      v18 = 0;
      do
      {
        if (*v21 != v17)
        {
          objc_enumerationMutation(v12);
        }

        objc_msgSend_addListField_(self, v15, *(*(&v20 + 1) + 8 * v18++), v20);
      }

      while (v16 != v18);
      v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v12, v15, &v20, v28, 16);
    }

    while (v16);
  }

  v19 = *MEMORY[0x277D85DE8];
}

@end