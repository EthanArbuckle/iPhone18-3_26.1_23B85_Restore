@interface CKDPRecordResolveTokenRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addRootRecordDesiredKeys:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasShouldFetchRootRecord:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPRecordResolveTokenRequest

+ (id)options
{
  if (qword_280D55050 != -1)
  {
    dispatch_once(&qword_280D55050, &unk_28385DF00);
  }

  v3 = qword_280D55048;

  return v3;
}

- (void)setHasShouldFetchRootRecord:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addRootRecordDesiredKeys:(id)a3
{
  v4 = a3;
  rootRecordDesiredKeys = self->_rootRecordDesiredKeys;
  v8 = v4;
  if (!rootRecordDesiredKeys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_rootRecordDesiredKeys;
    self->_rootRecordDesiredKeys = v6;

    v4 = v8;
    rootRecordDesiredKeys = self->_rootRecordDesiredKeys;
  }

  objc_msgSend_addObject_(rootRecordDesiredKeys, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordResolveTokenRequest;
  v4 = [(CKDPRecordResolveTokenRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  routingKey = self->_routingKey;
  if (routingKey)
  {
    objc_msgSend_setObject_forKey_(v4, v5, routingKey, @"routingKey");
  }

  shortTokenHash = self->_shortTokenHash;
  if (shortTokenHash)
  {
    objc_msgSend_setObject_forKey_(v6, v5, shortTokenHash, @"shortTokenHash");
  }

  has = self->_has;
  if (has)
  {
    v10 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_forceFetch);
    objc_msgSend_setObject_forKey_(v6, v11, v10, @"forceFetch");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v12 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_shouldFetchRootRecord);
    objc_msgSend_setObject_forKey_(v6, v13, v12, @"shouldFetchRootRecord");
  }

  rootRecordDesiredKeys = self->_rootRecordDesiredKeys;
  if (rootRecordDesiredKeys)
  {
    objc_msgSend_setObject_forKey_(v6, v5, rootRecordDesiredKeys, @"rootRecordDesiredKeys");
  }

  participantId = self->_participantId;
  if (participantId)
  {
    objc_msgSend_setObject_forKey_(v6, v5, participantId, @"participantId");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_routingKey)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_shortTokenHash)
  {
    PBDataWriterWriteDataField();
  }

  has = self->_has;
  if (has)
  {
    forceFetch = self->_forceFetch;
    PBDataWriterWriteBOOLField();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    shouldFetchRootRecord = self->_shouldFetchRootRecord;
    PBDataWriterWriteBOOLField();
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_rootRecordDesiredKeys;
  v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v9, &v17, v21, 16);
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        PBDataWriterWriteStringField();
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v8, v15, &v17, v21, 16);
    }

    while (v11);
  }

  if (self->_participantId)
  {
    PBDataWriterWriteStringField();
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  routingKey = self->_routingKey;
  v19 = v4;
  if (routingKey)
  {
    objc_msgSend_setRoutingKey_(v4, v5, routingKey);
    v4 = v19;
  }

  shortTokenHash = self->_shortTokenHash;
  if (shortTokenHash)
  {
    objc_msgSend_setShortTokenHash_(v19, v5, shortTokenHash);
    v4 = v19;
  }

  has = self->_has;
  if (has)
  {
    v4[40] = self->_forceFetch;
    v4[44] |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v4[41] = self->_shouldFetchRootRecord;
    v4[44] |= 2u;
  }

  if (objc_msgSend_rootRecordDesiredKeysCount(self, v5, shortTokenHash))
  {
    objc_msgSend_clearRootRecordDesiredKeys(v19, v9, v10);
    v13 = objc_msgSend_rootRecordDesiredKeysCount(self, v11, v12);
    if (v13)
    {
      v14 = v13;
      for (i = 0; i != v14; ++i)
      {
        v16 = objc_msgSend_rootRecordDesiredKeysAtIndex_(self, v9, i);
        objc_msgSend_addRootRecordDesiredKeys_(v19, v17, v16);
      }
    }
  }

  participantId = self->_participantId;
  if (participantId)
  {
    objc_msgSend_setParticipantId_(v19, v9, participantId);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v37 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_routingKey, v11, a3);
  v13 = *(v10 + 24);
  *(v10 + 24) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_shortTokenHash, v14, a3);
  v16 = *(v10 + 32);
  *(v10 + 32) = v15;

  has = self->_has;
  if (has)
  {
    *(v10 + 40) = self->_forceFetch;
    *(v10 + 44) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 41) = self->_shouldFetchRootRecord;
    *(v10 + 44) |= 2u;
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v18 = self->_rootRecordDesiredKeys;
  v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, &v32, v36, 16);
  if (v20)
  {
    v22 = v20;
    v23 = *v33;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v33 != v23)
        {
          objc_enumerationMutation(v18);
        }

        v25 = objc_msgSend_copyWithZone_(*(*(&v32 + 1) + 8 * i), v21, a3, v32);
        objc_msgSend_addRootRecordDesiredKeys_(v10, v26, v25);
      }

      v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, &v32, v36, 16);
    }

    while (v22);
  }

  v28 = objc_msgSend_copyWithZone_(self->_participantId, v27, a3);
  v29 = *(v10 + 8);
  *(v10 + 8) = v28;

  v30 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_26;
  }

  routingKey = self->_routingKey;
  v9 = v4[3];
  if (routingKey | v9)
  {
    if (!objc_msgSend_isEqual_(routingKey, v7, v9))
    {
      goto LABEL_26;
    }
  }

  shortTokenHash = self->_shortTokenHash;
  v11 = v4[4];
  if (shortTokenHash | v11)
  {
    if (!objc_msgSend_isEqual_(shortTokenHash, v7, v11))
    {
      goto LABEL_26;
    }
  }

  v12 = *(v4 + 44);
  if (*&self->_has)
  {
    if ((*(v4 + 44) & 1) == 0)
    {
      goto LABEL_26;
    }

    v18 = *(v4 + 40);
    if (self->_forceFetch)
    {
      if ((v4[5] & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    else if (v4[5])
    {
      goto LABEL_26;
    }
  }

  else if (*(v4 + 44))
  {
    goto LABEL_26;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 44) & 2) != 0)
    {
      v19 = *(v4 + 41);
      if (self->_shouldFetchRootRecord)
      {
        if (*(v4 + 41))
        {
          goto LABEL_10;
        }
      }

      else if ((*(v4 + 41) & 1) == 0)
      {
        goto LABEL_10;
      }
    }

LABEL_26:
    isEqual = 0;
    goto LABEL_27;
  }

  if ((*(v4 + 44) & 2) != 0)
  {
    goto LABEL_26;
  }

LABEL_10:
  rootRecordDesiredKeys = self->_rootRecordDesiredKeys;
  v14 = v4[2];
  if (rootRecordDesiredKeys | v14 && !objc_msgSend_isEqual_(rootRecordDesiredKeys, v7, v14))
  {
    goto LABEL_26;
  }

  participantId = self->_participantId;
  v16 = v4[1];
  if (participantId | v16)
  {
    isEqual = objc_msgSend_isEqual_(participantId, v7, v16);
  }

  else
  {
    isEqual = 1;
  }

LABEL_27:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_routingKey, a2, v2);
  v7 = objc_msgSend_hash(self->_shortTokenHash, v5, v6);
  if (*&self->_has)
  {
    v10 = 2654435761 * self->_forceFetch;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v10 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v11 = 2654435761 * self->_shouldFetchRootRecord;
LABEL_6:
  v12 = v7 ^ v4 ^ v10 ^ v11 ^ objc_msgSend_hash(self->_rootRecordDesiredKeys, v8, v9);
  return v12 ^ objc_msgSend_hash(self->_participantId, v13, v14);
}

- (void)mergeFrom:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(v5 + 3);
  if (v6)
  {
    objc_msgSend_setRoutingKey_(self, v4, v6);
  }

  v7 = *(v5 + 4);
  if (v7)
  {
    objc_msgSend_setShortTokenHash_(self, v4, v7);
  }

  v8 = *(v5 + 44);
  if (v8)
  {
    self->_forceFetch = *(v5 + 40);
    *&self->_has |= 1u;
    v8 = *(v5 + 44);
  }

  if ((v8 & 2) != 0)
  {
    self->_shouldFetchRootRecord = *(v5 + 41);
    *&self->_has |= 2u;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = *(v5 + 2);
  v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v10, &v19, v23, 16);
  if (v11)
  {
    v13 = v11;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v9);
        }

        objc_msgSend_addRootRecordDesiredKeys_(self, v12, *(*(&v19 + 1) + 8 * i), v19);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v19, v23, 16);
    }

    while (v13);
  }

  v17 = *(v5 + 1);
  if (v17)
  {
    objc_msgSend_setParticipantId_(self, v16, v17);
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end