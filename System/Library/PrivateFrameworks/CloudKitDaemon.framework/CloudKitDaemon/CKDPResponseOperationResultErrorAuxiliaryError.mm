@interface CKDPResponseOperationResultErrorAuxiliaryError
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addUserInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPResponseOperationResultErrorAuxiliaryError

- (void)addUserInfo:(id)info
{
  infoCopy = info;
  userInfos = self->_userInfos;
  v8 = infoCopy;
  if (!userInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_userInfos;
    self->_userInfos = v6;

    infoCopy = v8;
    userInfos = self->_userInfos;
  }

  objc_msgSend_addObject_(userInfos, infoCopy, infoCopy);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPResponseOperationResultErrorAuxiliaryError;
  v4 = [(CKDPResponseOperationResultErrorAuxiliaryError *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  domain = self->_domain;
  if (domain)
  {
    objc_msgSend_setObject_forKey_(v4, v5, domain, @"domain");
  }

  if (*&self->_has)
  {
    v8 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v5, self->_code);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"code");
  }

  if (objc_msgSend_count(self->_userInfos, v5, domain))
  {
    v10 = objc_alloc(MEMORY[0x277CBEB18]);
    v13 = objc_msgSend_count(self->_userInfos, v11, v12);
    v15 = objc_msgSend_initWithCapacity_(v10, v14, v13);
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v16 = self->_userInfos;
    v18 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v17, &v29, v33, 16);
    if (v18)
    {
      v21 = v18;
      v22 = *v30;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v30 != v22)
          {
            objc_enumerationMutation(v16);
          }

          v24 = objc_msgSend_dictionaryRepresentation(*(*(&v29 + 1) + 8 * i), v19, v20, v29);
          objc_msgSend_addObject_(v15, v25, v24);
        }

        v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v16, v19, &v29, v33, 16);
      }

      while (v21);
    }

    objc_msgSend_setObject_forKey_(v6, v26, v15, @"userInfo");
  }

  v27 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)writeTo:(id)to
{
  v20 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    code = self->_code;
    PBDataWriterWriteInt32Field();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_userInfos;
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
  domain = self->_domain;
  v17 = toCopy;
  if (domain)
  {
    objc_msgSend_setDomain_(toCopy, v5, domain);
    toCopy = v17;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_code;
    *(toCopy + 32) |= 1u;
  }

  if (objc_msgSend_userInfosCount(self, v5, domain))
  {
    objc_msgSend_clearUserInfos(v17, v7, v8);
    v11 = objc_msgSend_userInfosCount(self, v9, v10);
    if (v11)
    {
      v13 = v11;
      for (i = 0; i != v13; ++i)
      {
        v15 = objc_msgSend_userInfoAtIndex_(self, v12, i);
        objc_msgSend_addUserInfo_(v17, v16, v15);
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
  v12 = objc_msgSend_copyWithZone_(self->_domain, v11, zone);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  if (*&self->_has)
  {
    *(v10 + 8) = self->_code;
    *(v10 + 32) |= 1u;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = self->_userInfos;
  v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v14, v15, &v25, v29, 16);
  if (v16)
  {
    v18 = v16;
    v19 = *v26;
    do
    {
      v20 = 0;
      do
      {
        if (*v26 != v19)
        {
          objc_enumerationMutation(v14);
        }

        v21 = objc_msgSend_copyWithZone_(*(*(&v25 + 1) + 8 * v20), v17, zone, v25);
        objc_msgSend_addUserInfo_(v10, v22, v21);

        ++v20;
      }

      while (v18 != v20);
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
    goto LABEL_11;
  }

  domain = self->_domain;
  v9 = equalCopy[2];
  if (domain | v9)
  {
    if (!objc_msgSend_isEqual_(domain, v7, v9))
    {
      goto LABEL_11;
    }
  }

  v10 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((equalCopy[4] & 1) == 0 || self->_code != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (equalCopy[4])
  {
LABEL_11:
    isEqual = 0;
    goto LABEL_12;
  }

  userInfos = self->_userInfos;
  v12 = equalCopy[3];
  if (userInfos | v12)
  {
    isEqual = objc_msgSend_isEqual_(userInfos, v7, v12);
  }

  else
  {
    isEqual = 1;
  }

LABEL_12:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_domain, a2, v2);
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_code;
  }

  else
  {
    v7 = 0;
  }

  return v7 ^ v4 ^ objc_msgSend_hash(self->_userInfos, v5, v6);
}

- (void)mergeFrom:(id)from
{
  v20 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v6 = *(fromCopy + 2);
  if (v6)
  {
    objc_msgSend_setDomain_(self, v4, v6);
  }

  if (*(fromCopy + 32))
  {
    self->_code = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = *(fromCopy + 3);
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v15, v19, 16);
  if (v9)
  {
    v11 = v9;
    v12 = *v16;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v7);
        }

        objc_msgSend_addUserInfo_(self, v10, *(*(&v15 + 1) + 8 * i), v15);
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v10, &v15, v19, 16);
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

@end