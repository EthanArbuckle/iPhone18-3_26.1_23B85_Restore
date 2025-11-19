@interface CKDPZoneRetrieveAncestorsResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addAncestors:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPZoneRetrieveAncestorsResponse

- (void)addAncestors:(id)a3
{
  v4 = a3;
  ancestors = self->_ancestors;
  v8 = v4;
  if (!ancestors)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_ancestors;
    self->_ancestors = v6;

    v4 = v8;
    ancestors = self->_ancestors;
  }

  objc_msgSend_addObject_(ancestors, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPZoneRetrieveAncestorsResponse;
  v4 = [(CKDPZoneRetrieveAncestorsResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (objc_msgSend_count(self->_ancestors, v5, v6))
  {
    v7 = objc_alloc(MEMORY[0x277CBEB18]);
    v10 = objc_msgSend_count(self->_ancestors, v8, v9);
    v12 = objc_msgSend_initWithCapacity_(v7, v11, v10);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = self->_ancestors;
    v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, &v26, v30, 16);
    if (v15)
    {
      v18 = v15;
      v19 = *v27;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v27 != v19)
          {
            objc_enumerationMutation(v13);
          }

          v21 = objc_msgSend_dictionaryRepresentation(*(*(&v26 + 1) + 8 * i), v16, v17, v26);
          objc_msgSend_addObject_(v12, v22, v21);
        }

        v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v16, &v26, v30, 16);
      }

      while (v18);
    }

    objc_msgSend_setObject_forKey_(v4, v23, v12, @"ancestors");
  }

  v24 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_ancestors;
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
  v16 = a3;
  if (objc_msgSend_ancestorsCount(self, v4, v5))
  {
    objc_msgSend_clearAncestors(v16, v6, v7);
    v10 = objc_msgSend_ancestorsCount(self, v8, v9);
    if (v10)
    {
      v12 = v10;
      for (i = 0; i != v12; ++i)
      {
        v14 = objc_msgSend_ancestorsAtIndex_(self, v11, i);
        objc_msgSend_addAncestors_(v16, v15, v14);
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = self->_ancestors;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v22, v26, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v23;
    do
    {
      v17 = 0;
      do
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend_copyWithZone_(*(*(&v22 + 1) + 8 * v17), v14, a3, v22);
        objc_msgSend_addAncestors_(v10, v19, v18);

        ++v17;
      }

      while (v15 != v17);
      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v22, v26, 16);
    }

    while (v15);
  }

  v20 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    ancestors = self->_ancestors;
    v9 = v4[1];
    if (ancestors | v9)
    {
      isEqual = objc_msgSend_isEqual_(ancestors, v7, v9);
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
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a3 + 1);
  v6 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v5, &v12, v16, 16);
  if (v6)
  {
    v8 = v6;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v4);
        }

        objc_msgSend_addAncestors_(self, v7, *(*(&v12 + 1) + 8 * v10++), v12);
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v4, v7, &v12, v16, 16);
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end