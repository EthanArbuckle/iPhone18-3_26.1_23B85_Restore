@interface CKDPZoneChildrenRetrieveResponse
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addChildren:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPZoneChildrenRetrieveResponse

- (void)addChildren:(id)a3
{
  v4 = a3;
  childrens = self->_childrens;
  v8 = v4;
  if (!childrens)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_childrens;
    self->_childrens = v6;

    v4 = v8;
    childrens = self->_childrens;
  }

  objc_msgSend_addObject_(childrens, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPZoneChildrenRetrieveResponse;
  v4 = [(CKDPZoneChildrenRetrieveResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (objc_msgSend_count(self->_childrens, v5, v6))
  {
    v8 = objc_alloc(MEMORY[0x277CBEB18]);
    v11 = objc_msgSend_count(self->_childrens, v9, v10);
    v13 = objc_msgSend_initWithCapacity_(v8, v12, v11);
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v14 = self->_childrens;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v30, v34, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v31;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v31 != v20)
          {
            objc_enumerationMutation(v14);
          }

          v22 = objc_msgSend_dictionaryRepresentation(*(*(&v30 + 1) + 8 * i), v17, v18, v30);
          objc_msgSend_addObject_(v13, v23, v22);
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v30, v34, 16);
      }

      while (v19);
    }

    objc_msgSend_setObject_forKey_(v4, v24, v13, @"children");
  }

  continuationToken = self->_continuationToken;
  if (continuationToken)
  {
    objc_msgSend_setObject_forKey_(v4, v7, continuationToken, @"continuationToken");
  }

  if (*&self->_has)
  {
    v26 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v7, self->_isComplete);
    objc_msgSend_setObject_forKey_(v4, v27, v26, @"isComplete");
  }

  v28 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_childrens;
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v19, 16);
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v15, v19, 16);
    }

    while (v8);
  }

  if (self->_continuationToken)
  {
    PBDataWriterWriteDataField();
  }

  if (*&self->_has)
  {
    isComplete = self->_isComplete;
    PBDataWriterWriteBOOLField();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v16 = a3;
  if (objc_msgSend_childrensCount(self, v4, v5))
  {
    objc_msgSend_clearChildrens(v16, v6, v7);
    v10 = objc_msgSend_childrensCount(self, v8, v9);
    if (v10)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = objc_msgSend_childrenAtIndex_(self, v6, i);
        objc_msgSend_addChildren_(v16, v14, v13);
      }
    }
  }

  continuationToken = self->_continuationToken;
  if (continuationToken)
  {
    objc_msgSend_setContinuationToken_(v16, v6, continuationToken);
  }

  if (*&self->_has)
  {
    v16[24] = self->_isComplete;
    v16[28] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v11 = self->_childrens;
  v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v12, &v25, v29, 16);
  if (v13)
  {
    v15 = v13;
    v16 = *v26;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v11);
        }

        v18 = objc_msgSend_copyWithZone_(*(*(&v25 + 1) + 8 * i), v14, a3, v25);
        objc_msgSend_addChildren_(v10, v19, v18);
      }

      v15 = objc_msgSend_countByEnumeratingWithState_objects_count_(v11, v14, &v25, v29, 16);
    }

    while (v15);
  }

  v21 = objc_msgSend_copyWithZone_(self->_continuationToken, v20, a3);
  v22 = *(v10 + 16);
  *(v10 + 16) = v21;

  if (*&self->_has)
  {
    *(v10 + 24) = self->_isComplete;
    *(v10 + 28) |= 1u;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_8;
  }

  childrens = self->_childrens;
  v9 = v4[1];
  if (childrens | v9)
  {
    if (!objc_msgSend_isEqual_(childrens, v7, v9))
    {
      goto LABEL_8;
    }
  }

  continuationToken = self->_continuationToken;
  v11 = v4[2];
  if (continuationToken | v11)
  {
    if (!objc_msgSend_isEqual_(continuationToken, v7, v11))
    {
      goto LABEL_8;
    }
  }

  v12 = (*(v4 + 28) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 28) & 1) == 0)
    {
LABEL_8:
      v12 = 0;
      goto LABEL_9;
    }

    if (self->_isComplete)
    {
      if ((v4[3] & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else if (*(v4 + 24))
    {
      goto LABEL_8;
    }

    v12 = 1;
  }

LABEL_9:

  return v12;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_childrens, a2, v2);
  v7 = objc_msgSend_hash(self->_continuationToken, v5, v6);
  if (*&self->_has)
  {
    v8 = 2654435761 * self->_isComplete;
  }

  else
  {
    v8 = 0;
  }

  return v7 ^ v4 ^ v8;
}

- (void)mergeFrom:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = *(v4 + 1);
  v7 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, &v15, v19, 16);
  if (v7)
  {
    v9 = v7;
    v10 = *v16;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v5);
        }

        objc_msgSend_addChildren_(self, v8, *(*(&v15 + 1) + 8 * i), v15);
      }

      v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v8, &v15, v19, 16);
    }

    while (v9);
  }

  v13 = *(v4 + 2);
  if (v13)
  {
    objc_msgSend_setContinuationToken_(self, v12, v13);
  }

  if (*(v4 + 28))
  {
    self->_isComplete = *(v4 + 24);
    *&self->_has |= 1u;
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end