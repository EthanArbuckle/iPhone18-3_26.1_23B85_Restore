@interface CKDPRecordOneTimeStableUrl
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addParticipantId:(id)a3;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPRecordOneTimeStableUrl

- (void)addParticipantId:(id)a3
{
  v4 = a3;
  participantIds = self->_participantIds;
  v8 = v4;
  if (!participantIds)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_participantIds;
    self->_participantIds = v6;

    v4 = v8;
    participantIds = self->_participantIds;
  }

  objc_msgSend_addObject_(participantIds, v4, v4);
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordOneTimeStableUrl;
  v4 = [(CKDPRecordOneTimeStableUrl *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  shortTokenHash = self->_shortTokenHash;
  if (shortTokenHash)
  {
    objc_msgSend_setObject_forKey_(v4, v5, shortTokenHash, @"shortTokenHash");
  }

  protectedFullToken = self->_protectedFullToken;
  if (protectedFullToken)
  {
    objc_msgSend_setObject_forKey_(v6, v5, protectedFullToken, @"protectedFullToken");
  }

  encryptedFullTokenInfo = self->_encryptedFullTokenInfo;
  if (encryptedFullTokenInfo)
  {
    objc_msgSend_setObject_forKey_(v6, v5, encryptedFullTokenInfo, @"encryptedFullTokenInfo");
  }

  participantIds = self->_participantIds;
  if (participantIds)
  {
    objc_msgSend_setObject_forKey_(v6, v5, participantIds, @"participantId");
  }

  if (*&self->_has)
  {
    v11 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v5, participantIds, self->_createdTime);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"createdTime");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (self->_shortTokenHash)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_protectedFullToken)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_encryptedFullTokenInfo)
  {
    PBDataWriterWriteDataField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = self->_participantIds;
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
        PBDataWriterWriteStringField();
        ++v10;
      }

      while (v8 != v10);
      v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v12, &v15, v19, 16);
    }

    while (v8);
  }

  if (*&self->_has)
  {
    createdTime = self->_createdTime;
    PBDataWriterWriteDoubleField();
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)copyTo:(id)a3
{
  v18 = a3;
  shortTokenHash = self->_shortTokenHash;
  if (shortTokenHash)
  {
    objc_msgSend_setShortTokenHash_(v18, v4, shortTokenHash);
  }

  protectedFullToken = self->_protectedFullToken;
  if (protectedFullToken)
  {
    objc_msgSend_setProtectedFullToken_(v18, v4, protectedFullToken);
  }

  encryptedFullTokenInfo = self->_encryptedFullTokenInfo;
  if (encryptedFullTokenInfo)
  {
    objc_msgSend_setEncryptedFullTokenInfo_(v18, v4, encryptedFullTokenInfo);
  }

  if (objc_msgSend_participantIdsCount(self, v4, encryptedFullTokenInfo))
  {
    objc_msgSend_clearParticipantIds(v18, v8, v9);
    v12 = objc_msgSend_participantIdsCount(self, v10, v11);
    if (v12)
    {
      v14 = v12;
      for (i = 0; i != v14; ++i)
      {
        v16 = objc_msgSend_participantIdAtIndex_(self, v13, i);
        objc_msgSend_addParticipantId_(v18, v17, v16);
      }
    }
  }

  if (*&self->_has)
  {
    *(v18 + 1) = *&self->_createdTime;
    *(v18 + 48) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_shortTokenHash, v11, a3);
  v13 = *(v10 + 40);
  *(v10 + 40) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_protectedFullToken, v14, a3);
  v16 = *(v10 + 32);
  *(v10 + 32) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_encryptedFullTokenInfo, v17, a3);
  v19 = *(v10 + 16);
  *(v10 + 16) = v18;

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v20 = self->_participantIds;
  v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v21, &v31, v35, 16);
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
        objc_msgSend_addParticipantId_(v10, v28, v27);

        ++v26;
      }

      while (v24 != v26);
      v24 = objc_msgSend_countByEnumeratingWithState_objects_count_(v20, v23, &v31, v35, 16);
    }

    while (v24);
  }

  if (*&self->_has)
  {
    *(v10 + 8) = self->_createdTime;
    *(v10 + 48) |= 1u;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_14;
  }

  shortTokenHash = self->_shortTokenHash;
  v9 = v4[5];
  if (shortTokenHash | v9)
  {
    if (!objc_msgSend_isEqual_(shortTokenHash, v7, v9))
    {
      goto LABEL_14;
    }
  }

  protectedFullToken = self->_protectedFullToken;
  v11 = v4[4];
  if (protectedFullToken | v11)
  {
    if (!objc_msgSend_isEqual_(protectedFullToken, v7, v11))
    {
      goto LABEL_14;
    }
  }

  encryptedFullTokenInfo = self->_encryptedFullTokenInfo;
  v13 = v4[2];
  if (encryptedFullTokenInfo | v13)
  {
    if (!objc_msgSend_isEqual_(encryptedFullTokenInfo, v7, v13))
    {
      goto LABEL_14;
    }
  }

  participantIds = self->_participantIds;
  v15 = v4[3];
  if (participantIds | v15)
  {
    if (!objc_msgSend_isEqual_(participantIds, v7, v15))
    {
      goto LABEL_14;
    }
  }

  v16 = (v4[6] & 1) == 0;
  if (*&self->_has)
  {
    if ((v4[6] & 1) != 0 && self->_createdTime == *(v4 + 1))
    {
      v16 = 1;
      goto LABEL_15;
    }

LABEL_14:
    v16 = 0;
  }

LABEL_15:

  return v16;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_shortTokenHash, a2, v2);
  v7 = objc_msgSend_hash(self->_protectedFullToken, v5, v6);
  v10 = objc_msgSend_hash(self->_encryptedFullTokenInfo, v8, v9);
  v13 = objc_msgSend_hash(self->_participantIds, v11, v12);
  if (*&self->_has)
  {
    createdTime = self->_createdTime;
    if (createdTime < 0.0)
    {
      createdTime = -createdTime;
    }

    *v14.i64 = floor(createdTime + 0.5);
    v18 = (createdTime - *v14.i64) * 1.84467441e19;
    *v15.i64 = *v14.i64 - trunc(*v14.i64 * 5.42101086e-20) * 1.84467441e19;
    v19.f64[0] = NAN;
    v19.f64[1] = NAN;
    v16 = 2654435761u * *vbslq_s8(vnegq_f64(v19), v15, v14).i64;
    if (v18 >= 0.0)
    {
      if (v18 > 0.0)
      {
        v16 += v18;
      }
    }

    else
    {
      v16 -= fabs(v18);
    }
  }

  else
  {
    v16 = 0;
  }

  return v7 ^ v4 ^ v10 ^ v13 ^ v16;
}

- (void)mergeFrom:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(v5 + 5);
  if (v6)
  {
    objc_msgSend_setShortTokenHash_(self, v4, v6);
  }

  v7 = *(v5 + 4);
  if (v7)
  {
    objc_msgSend_setProtectedFullToken_(self, v4, v7);
  }

  v8 = *(v5 + 2);
  if (v8)
  {
    objc_msgSend_setEncryptedFullTokenInfo_(self, v4, v8);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v9 = *(v5 + 3);
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

        objc_msgSend_addParticipantId_(self, v12, *(*(&v17 + 1) + 8 * i), v17);
      }

      v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v12, &v17, v21, 16);
    }

    while (v13);
  }

  if (*(v5 + 48))
  {
    self->_createdTime = *(v5 + 1);
    *&self->_has |= 1u;
  }

  v16 = *MEMORY[0x277D85DE8];
}

@end