@interface CKDPUserQueryRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSortedBy:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPUserQueryRequest

+ (id)options
{
  if (qword_280D550E0 != -1)
  {
    dispatch_once(&qword_280D550E0, &unk_28385E1C0);
  }

  v3 = qword_280D550D8;

  return v3;
}

- (void)addSortedBy:(id)a3
{
  v4 = a3;
  sortedBys = self->_sortedBys;
  v8 = v4;
  if (!sortedBys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_sortedBys;
    self->_sortedBys = v6;

    v4 = v8;
    sortedBys = self->_sortedBys;
  }

  objc_msgSend_addObject_(sortedBys, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPUserQueryRequest;
  v4 = [(CKDPUserQueryRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v38 = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  alias = self->_alias;
  if (alias)
  {
    v8 = objc_msgSend_dictionaryRepresentation(alias, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"alias");
  }

  if (objc_msgSend_count(self->_sortedBys, v4, v5))
  {
    v11 = objc_alloc(MEMORY[0x277CBEB18]);
    v14 = objc_msgSend_count(self->_sortedBys, v12, v13);
    v16 = objc_msgSend_initWithCapacity_(v11, v15, v14);
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v17 = self->_sortedBys;
    v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v33, v37, 16);
    if (v19)
    {
      v22 = v19;
      v23 = *v34;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v34 != v23)
          {
            objc_enumerationMutation(v17);
          }

          v25 = objc_msgSend_dictionaryRepresentation(*(*(&v33 + 1) + 8 * i), v20, v21, v33);
          objc_msgSend_addObject_(v16, v26, v25);
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v20, &v33, v37, 16);
      }

      while (v22);
    }

    objc_msgSend_setObject_forKey_(v6, v27, v16, @"sortedBy");
  }

  oBSOLETEPcsServiceType = self->_oBSOLETEPcsServiceType;
  if (oBSOLETEPcsServiceType)
  {
    objc_msgSend_setObject_forKey_(v6, v10, oBSOLETEPcsServiceType, @"OBSOLETE_pcsServiceType");
  }

  if (*&self->_has)
  {
    v29 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v10, self->_publicKeyRequested);
    objc_msgSend_setObject_forKey_(v6, v30, v29, @"publicKeyRequested");
  }

  v31 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_alias)
  {
    PBDataWriterWriteSubmessage();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_sortedBys;
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

  if (self->_oBSOLETEPcsServiceType)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    publicKeyRequested = self->_publicKeyRequested;
    PBDataWriterWriteBOOLField();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v16 = a3;
  alias = self->_alias;
  if (alias)
  {
    objc_msgSend_setAlias_(v16, v4, alias);
  }

  if (objc_msgSend_sortedBysCount(self, v4, alias))
  {
    objc_msgSend_clearSortedBys(v16, v6, v7);
    v10 = objc_msgSend_sortedBysCount(self, v8, v9);
    if (v10)
    {
      v11 = v10;
      for (i = 0; i != v11; ++i)
      {
        v13 = objc_msgSend_sortedByAtIndex_(self, v6, i);
        objc_msgSend_addSortedBy_(v16, v14, v13);
      }
    }
  }

  oBSOLETEPcsServiceType = self->_oBSOLETEPcsServiceType;
  if (oBSOLETEPcsServiceType)
  {
    objc_msgSend_setOBSOLETEPcsServiceType_(v16, v6, oBSOLETEPcsServiceType);
  }

  if (*&self->_has)
  {
    v16[32] = self->_publicKeyRequested;
    v16[36] |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_alias, v11, a3);
  v13 = *(v10 + 8);
  *(v10 + 8) = v12;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v14 = self->_sortedBys;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v28, v32, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v29;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v29 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_copyWithZone_(*(*(&v28 + 1) + 8 * i), v17, a3, v28);
        objc_msgSend_addSortedBy_(v10, v22, v21);
      }

      v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v17, &v28, v32, 16);
    }

    while (v18);
  }

  v24 = objc_msgSend_copyWithZone_(self->_oBSOLETEPcsServiceType, v23, a3);
  v25 = *(v10 + 16);
  *(v10 + 16) = v24;

  if (*&self->_has)
  {
    *(v10 + 32) = self->_publicKeyRequested;
    *(v10 + 36) |= 1u;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_10;
  }

  alias = self->_alias;
  v9 = v4[1];
  if (alias | v9)
  {
    if (!objc_msgSend_isEqual_(alias, v7, v9))
    {
      goto LABEL_10;
    }
  }

  sortedBys = self->_sortedBys;
  v11 = v4[3];
  if (sortedBys | v11)
  {
    if (!objc_msgSend_isEqual_(sortedBys, v7, v11))
    {
      goto LABEL_10;
    }
  }

  oBSOLETEPcsServiceType = self->_oBSOLETEPcsServiceType;
  v13 = v4[2];
  if (oBSOLETEPcsServiceType | v13)
  {
    if (!objc_msgSend_isEqual_(oBSOLETEPcsServiceType, v7, v13))
    {
      goto LABEL_10;
    }
  }

  v14 = (*(v4 + 36) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(v4 + 36) & 1) == 0)
    {
LABEL_10:
      v14 = 0;
      goto LABEL_11;
    }

    if (self->_publicKeyRequested)
    {
      if ((v4[4] & 1) == 0)
      {
        goto LABEL_10;
      }
    }

    else if (*(v4 + 32))
    {
      goto LABEL_10;
    }

    v14 = 1;
  }

LABEL_11:

  return v14;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_alias, a2, v2);
  v7 = objc_msgSend_hash(self->_sortedBys, v5, v6);
  v10 = objc_msgSend_hash(self->_oBSOLETEPcsServiceType, v8, v9);
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_publicKeyRequested;
  }

  else
  {
    v11 = 0;
  }

  return v7 ^ v4 ^ v10 ^ v11;
}

- (void)mergeFrom:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a3;
  alias = self->_alias;
  v7 = *(v5 + 1);
  if (alias)
  {
    if (v7)
    {
      objc_msgSend_mergeFrom_(alias, v4, v7);
    }
  }

  else if (v7)
  {
    objc_msgSend_setAlias_(self, v4, v7);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = *(v5 + 3);
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v18, v22, 16);
  if (v10)
  {
    v12 = v10;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v8);
        }

        objc_msgSend_addSortedBy_(self, v11, *(*(&v18 + 1) + 8 * i), v18);
      }

      v12 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v11, &v18, v22, 16);
    }

    while (v12);
  }

  v16 = *(v5 + 2);
  if (v16)
  {
    objc_msgSend_setOBSOLETEPcsServiceType_(self, v15, v16);
  }

  if (*(v5 + 36))
  {
    self->_publicKeyRequested = *(v5 + 32);
    *&self->_has |= 1u;
  }

  v17 = *MEMORY[0x277D85DE8];
}

@end