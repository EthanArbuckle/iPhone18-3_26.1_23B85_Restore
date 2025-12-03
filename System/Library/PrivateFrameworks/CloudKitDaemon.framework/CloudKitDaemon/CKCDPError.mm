@interface CKCDPError
- (BOOL)isEqual:(id)equal;
- (id)codeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsCode:(id)code;
- (int)code;
- (unint64_t)hash;
- (void)addAuxiliaryUserInfo:(id)info;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasCode:(BOOL)code;
- (void)setHasTargetPartition:(BOOL)partition;
- (void)writeTo:(id)to;
@end

@implementation CKCDPError

- (int)code
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_code;
  }

  else
  {
    return 1;
  }
}

- (void)setHasCode:(BOOL)code
{
  if (code)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)codeAsString:(int)string
{
  if ((string - 1) >= 4)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854C798[string - 1];
  }

  return v4;
}

- (int)StringAsCode:(id)code
{
  codeCopy = code;
  if (objc_msgSend_isEqualToString_(codeCopy, v4, @"FUNCTION_TIMEOUT"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(codeCopy, v5, @"FUNCTION_ERROR"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(codeCopy, v7, @"INTERNAL_ERROR"))
  {
    v6 = 3;
  }

  else if (objc_msgSend_isEqualToString_(codeCopy, v8, @"INVALID_PARTITION"))
  {
    v6 = 4;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)addAuxiliaryUserInfo:(id)info
{
  infoCopy = info;
  auxiliaryUserInfos = self->_auxiliaryUserInfos;
  v8 = infoCopy;
  if (!auxiliaryUserInfos)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_auxiliaryUserInfos;
    self->_auxiliaryUserInfos = v6;

    infoCopy = v8;
    auxiliaryUserInfos = self->_auxiliaryUserInfos;
  }

  objc_msgSend_addObject_(auxiliaryUserInfos, infoCopy, infoCopy);
}

- (void)setHasTargetPartition:(BOOL)partition
{
  if (partition)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKCDPError;
  v4 = [(CKCDPError *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if ((*&self->_has & 2) != 0)
  {
    v6 = self->_code - 1;
    if (v6 >= 4)
    {
      v7 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_code);
    }

    else
    {
      v7 = off_27854C798[v6];
    }

    objc_msgSend_setObject_forKey_(v5, v4, v7, @"code");
  }

  message = self->_message;
  if (message)
  {
    objc_msgSend_setObject_forKey_(v5, v4, message, @"message");
  }

  auxiliaryDomain = self->_auxiliaryDomain;
  if (auxiliaryDomain)
  {
    objc_msgSend_setObject_forKey_(v5, v4, auxiliaryDomain, @"auxiliaryDomain");
  }

  if (*&self->_has)
  {
    v10 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_auxiliaryCode);
    objc_msgSend_setObject_forKey_(v5, v11, v10, @"auxiliaryCode");
  }

  if (objc_msgSend_count(self->_auxiliaryUserInfos, v4, auxiliaryDomain))
  {
    v13 = objc_alloc(MEMORY[0x277CBEB18]);
    v16 = objc_msgSend_count(self->_auxiliaryUserInfos, v14, v15);
    v18 = objc_msgSend_initWithCapacity_(v13, v17, v16);
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = self->_auxiliaryUserInfos;
    v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v20, &v34, v38, 16);
    if (v21)
    {
      v24 = v21;
      v25 = *v35;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v35 != v25)
          {
            objc_enumerationMutation(v19);
          }

          v27 = objc_msgSend_dictionaryRepresentation(*(*(&v34 + 1) + 8 * i), v22, v23);
          objc_msgSend_addObject_(v18, v28, v27);
        }

        v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v19, v22, &v34, v38, 16);
      }

      while (v24);
    }

    objc_msgSend_setObject_forKey_(v5, v29, v18, @"auxiliaryUserInfo");
  }

  if ((*&self->_has & 4) != 0)
  {
    v30 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v12, self->_targetPartition);
    objc_msgSend_setObject_forKey_(v5, v31, v30, @"targetPartition");
  }

  v32 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)writeTo:(id)to
{
  v22 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    code = self->_code;
    PBDataWriterWriteInt32Field();
  }

  if (self->_message)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_auxiliaryDomain)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    auxiliaryCode = self->_auxiliaryCode;
    PBDataWriterWriteInt32Field();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_auxiliaryUserInfos;
  v9 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, &v17, v21, 16);
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v17 + 1) + 8 * v12);
        PBDataWriterWriteSubmessage();
        ++v12;
      }

      while (v10 != v12);
      v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v14, &v17, v21, 16);
    }

    while (v10);
  }

  if ((*&self->_has & 4) != 0)
  {
    targetPartition = self->_targetPartition;
    PBDataWriterWriteInt32Field();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ((*&self->_has & 2) != 0)
  {
    toCopy[8] = self->_code;
    *(toCopy + 52) |= 2u;
  }

  message = self->_message;
  v18 = toCopy;
  if (message)
  {
    objc_msgSend_setMessage_(toCopy, v5, message);
    toCopy = v18;
  }

  auxiliaryDomain = self->_auxiliaryDomain;
  if (auxiliaryDomain)
  {
    objc_msgSend_setAuxiliaryDomain_(v18, v5, auxiliaryDomain);
    toCopy = v18;
  }

  if (*&self->_has)
  {
    toCopy[2] = self->_auxiliaryCode;
    *(toCopy + 52) |= 1u;
  }

  if (objc_msgSend_auxiliaryUserInfosCount(self, v5, auxiliaryDomain))
  {
    objc_msgSend_clearAuxiliaryUserInfos(v18, v8, v9);
    v12 = objc_msgSend_auxiliaryUserInfosCount(self, v10, v11);
    if (v12)
    {
      v14 = v12;
      for (i = 0; i != v14; ++i)
      {
        v16 = objc_msgSend_auxiliaryUserInfoAtIndex_(self, v13, i);
        objc_msgSend_addAuxiliaryUserInfo_(v18, v17, v16);
      }
    }
  }

  if ((*&self->_has & 4) != 0)
  {
    v18[12] = self->_targetPartition;
    *(v18 + 52) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 32) = self->_code;
    *(v10 + 52) |= 2u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_message, v11, zone);
  v14 = *(v12 + 40);
  *(v12 + 40) = v13;

  v16 = objc_msgSend_copyWithZone_(self->_auxiliaryDomain, v15, zone);
  v17 = *(v12 + 16);
  *(v12 + 16) = v16;

  if (*&self->_has)
  {
    *(v12 + 8) = self->_auxiliaryCode;
    *(v12 + 52) |= 1u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = self->_auxiliaryUserInfos;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v29, v33, 16);
  if (v20)
  {
    v22 = v20;
    v23 = *v30;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v30 != v23)
        {
          objc_enumerationMutation(v18);
        }

        v25 = objc_msgSend_copyWithZone_(*(*(&v29 + 1) + 8 * i), v21, zone, v29);
        objc_msgSend_addAuxiliaryUserInfo_(v12, v26, v25);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v29, v33, 16);
    }

    while (v22);
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v12 + 48) = self->_targetPartition;
    *(v12 + 52) |= 4u;
  }

  v27 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_23;
  }

  v8 = *(equalCopy + 52);
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_code != *(equalCopy + 8))
    {
      goto LABEL_23;
    }
  }

  else if ((*(equalCopy + 52) & 2) != 0)
  {
    goto LABEL_23;
  }

  message = self->_message;
  v10 = equalCopy[5];
  if (message | v10 && !objc_msgSend_isEqual_(message, v7, v10))
  {
    goto LABEL_23;
  }

  auxiliaryDomain = self->_auxiliaryDomain;
  v12 = equalCopy[2];
  if (auxiliaryDomain | v12)
  {
    if (!objc_msgSend_isEqual_(auxiliaryDomain, v7, v12))
    {
      goto LABEL_23;
    }
  }

  has = self->_has;
  v14 = *(equalCopy + 52);
  if (has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_auxiliaryCode != *(equalCopy + 2))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 52))
  {
    goto LABEL_23;
  }

  auxiliaryUserInfos = self->_auxiliaryUserInfos;
  v16 = equalCopy[3];
  if (auxiliaryUserInfos | v16)
  {
    if (!objc_msgSend_isEqual_(auxiliaryUserInfos, v7, v16))
    {
LABEL_23:
      v17 = 0;
      goto LABEL_24;
    }

    has = self->_has;
    v14 = *(equalCopy + 52);
  }

  v17 = (v14 & 4) == 0;
  if ((has & 4) != 0)
  {
    if ((v14 & 4) == 0 || self->_targetPartition != *(equalCopy + 12))
    {
      goto LABEL_23;
    }

    v17 = 1;
  }

LABEL_24:

  return v17;
}

- (unint64_t)hash
{
  if ((*&self->_has & 2) != 0)
  {
    v4 = 2654435761 * self->_code;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_msgSend_hash(self->_message, a2, v2);
  v10 = objc_msgSend_hash(self->_auxiliaryDomain, v6, v7);
  if (*&self->_has)
  {
    v11 = 2654435761 * self->_auxiliaryCode;
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_msgSend_hash(self->_auxiliaryUserInfos, v8, v9);
  if ((*&self->_has & 4) != 0)
  {
    v13 = 2654435761 * self->_targetPartition;
  }

  else
  {
    v13 = 0;
  }

  return v5 ^ v4 ^ v10 ^ v11 ^ v12 ^ v13;
}

- (void)mergeFrom:(id)from
{
  v22 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v6 = fromCopy;
  if ((*(fromCopy + 52) & 2) != 0)
  {
    self->_code = *(fromCopy + 8);
    *&self->_has |= 2u;
  }

  v7 = *(fromCopy + 5);
  if (v7)
  {
    objc_msgSend_setMessage_(self, v5, v7);
  }

  v8 = *(v6 + 2);
  if (v8)
  {
    objc_msgSend_setAuxiliaryDomain_(self, v5, v8);
  }

  if (*(v6 + 52))
  {
    self->_auxiliaryCode = *(v6 + 2);
    *&self->_has |= 1u;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(v6 + 3);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v17, v21, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v18;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v18 != v14)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_addAuxiliaryUserInfo_(self, v12, *(*(&v17 + 1) + 8 * i), v17);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v17, v21, 16);
    }

    while (v13);
  }

  if ((*(v6 + 52) & 4) != 0)
  {
    self->_targetPartition = *(v6 + 12);
    *&self->_has |= 4u;
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end