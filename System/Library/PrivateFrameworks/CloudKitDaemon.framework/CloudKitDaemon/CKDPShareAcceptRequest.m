@interface CKDPShareAcceptRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)publicKeyVersion;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)setHasAcceptedInProcess:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPShareAcceptRequest

+ (id)options
{
  if (qword_280D54F40 != -1)
  {
    dispatch_once(&qword_280D54F40, &unk_28385DFC0);
  }

  v3 = qword_280D54F38;

  return v3;
}

- (int)publicKeyVersion
{
  if (*&self->_has)
  {
    return self->_publicKeyVersion;
  }

  else
  {
    return 1;
  }
}

- (void)setHasAcceptedInProcess:(BOOL)a3
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

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPShareAcceptRequest;
  v4 = [(CKDPShareAcceptRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  shareId = self->_shareId;
  if (shareId)
  {
    v8 = objc_msgSend_dictionaryRepresentation(shareId, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"shareId");
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setObject_forKey_(v6, v4, etag, @"etag");
  }

  selfAddedPcs = self->_selfAddedPcs;
  if (selfAddedPcs)
  {
    v12 = objc_msgSend_dictionaryRepresentation(selfAddedPcs, v4, etag);
    objc_msgSend_setObject_forKey_(v6, v13, v12, @"selfAddedPcs");
  }

  publicKey = self->_publicKey;
  if (publicKey)
  {
    v15 = objc_msgSend_dictionaryRepresentation(publicKey, v4, etag);
    objc_msgSend_setObject_forKey_(v6, v16, v15, @"publicKey");
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    v18 = objc_msgSend_dictionaryRepresentation(protectionInfo, v4, etag);
    objc_msgSend_setObject_forKey_(v6, v19, v18, @"protectionInfo");
  }

  participantId = self->_participantId;
  if (participantId)
  {
    objc_msgSend_setObject_forKey_(v6, v4, participantId, @"participantId");
  }

  has = self->_has;
  if (has)
  {
    v22 = objc_msgSend_numberWithInt_(MEMORY[0x277CCABB0], v4, self->_publicKeyVersion);
    objc_msgSend_setObject_forKey_(v6, v23, v22, @"publicKeyVersion");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v24 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_acceptedInProcess);
    objc_msgSend_setObject_forKey_(v6, v25, v24, @"acceptedInProcess");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (self->_shareId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  if (self->_selfAddedPcs)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_publicKey)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_protectionInfo)
  {
    PBDataWriterWriteSubmessage();
    v4 = v8;
  }

  if (self->_participantId)
  {
    PBDataWriterWriteStringField();
    v4 = v8;
  }

  has = self->_has;
  if (has)
  {
    publicKeyVersion = self->_publicKeyVersion;
    PBDataWriterWriteInt32Field();
    v4 = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    acceptedInProcess = self->_acceptedInProcess;
    PBDataWriterWriteBOOLField();
    v4 = v8;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  shareId = self->_shareId;
  v13 = v4;
  if (shareId)
  {
    objc_msgSend_setShareId_(v4, v5, shareId);
    v4 = v13;
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setEtag_(v13, v5, etag);
    v4 = v13;
  }

  selfAddedPcs = self->_selfAddedPcs;
  if (selfAddedPcs)
  {
    objc_msgSend_setSelfAddedPcs_(v13, v5, selfAddedPcs);
    v4 = v13;
  }

  publicKey = self->_publicKey;
  if (publicKey)
  {
    objc_msgSend_setPublicKey_(v13, v5, publicKey);
    v4 = v13;
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    objc_msgSend_setProtectionInfo_(v13, v5, protectionInfo);
    v4 = v13;
  }

  participantId = self->_participantId;
  if (participantId)
  {
    objc_msgSend_setParticipantId_(v13, v5, participantId);
    v4 = v13;
  }

  has = self->_has;
  if (has)
  {
    *(v4 + 10) = self->_publicKeyVersion;
    *(v4 + 68) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v4 + 64) = self->_acceptedInProcess;
    *(v4 + 68) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_shareId, v11, a3);
  v13 = *(v10 + 56);
  *(v10 + 56) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_etag, v14, a3);
  v16 = *(v10 + 8);
  *(v10 + 8) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_selfAddedPcs, v17, a3);
  v19 = *(v10 + 48);
  *(v10 + 48) = v18;

  v21 = objc_msgSend_copyWithZone_(self->_publicKey, v20, a3);
  v22 = *(v10 + 32);
  *(v10 + 32) = v21;

  v24 = objc_msgSend_copyWithZone_(self->_protectionInfo, v23, a3);
  v25 = *(v10 + 24);
  *(v10 + 24) = v24;

  v27 = objc_msgSend_copyWithZone_(self->_participantId, v26, a3);
  v28 = *(v10 + 16);
  *(v10 + 16) = v27;

  has = self->_has;
  if (has)
  {
    *(v10 + 40) = self->_publicKeyVersion;
    *(v10 + 68) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 64) = self->_acceptedInProcess;
    *(v10 + 68) |= 2u;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_21;
  }

  shareId = self->_shareId;
  v9 = v4[7];
  if (shareId | v9)
  {
    if (!objc_msgSend_isEqual_(shareId, v7, v9))
    {
      goto LABEL_21;
    }
  }

  etag = self->_etag;
  v11 = v4[1];
  if (etag | v11)
  {
    if (!objc_msgSend_isEqual_(etag, v7, v11))
    {
      goto LABEL_21;
    }
  }

  selfAddedPcs = self->_selfAddedPcs;
  v13 = v4[6];
  if (selfAddedPcs | v13)
  {
    if (!objc_msgSend_isEqual_(selfAddedPcs, v7, v13))
    {
      goto LABEL_21;
    }
  }

  publicKey = self->_publicKey;
  v15 = v4[4];
  if (publicKey | v15)
  {
    if (!objc_msgSend_isEqual_(publicKey, v7, v15))
    {
      goto LABEL_21;
    }
  }

  protectionInfo = self->_protectionInfo;
  v17 = v4[3];
  if (protectionInfo | v17)
  {
    if (!objc_msgSend_isEqual_(protectionInfo, v7, v17))
    {
      goto LABEL_21;
    }
  }

  participantId = self->_participantId;
  v19 = v4[2];
  if (participantId | v19)
  {
    if (!objc_msgSend_isEqual_(participantId, v7, v19))
    {
      goto LABEL_21;
    }
  }

  if (*&self->_has)
  {
    if ((*(v4 + 68) & 1) == 0 || self->_publicKeyVersion != *(v4 + 10))
    {
      goto LABEL_21;
    }
  }

  else if (*(v4 + 68))
  {
    goto LABEL_21;
  }

  v20 = (*(v4 + 68) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(v4 + 68) & 2) == 0)
    {
LABEL_21:
      v20 = 0;
      goto LABEL_22;
    }

    if (self->_acceptedInProcess)
    {
      if ((v4[8] & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(v4 + 64))
    {
      goto LABEL_21;
    }

    v20 = 1;
  }

LABEL_22:

  return v20;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_shareId, a2, v2);
  v7 = objc_msgSend_hash(self->_etag, v5, v6);
  v10 = objc_msgSend_hash(self->_selfAddedPcs, v8, v9);
  v13 = objc_msgSend_hash(self->_publicKey, v11, v12);
  v16 = objc_msgSend_hash(self->_protectionInfo, v14, v15);
  v19 = objc_msgSend_hash(self->_participantId, v17, v18);
  if (*&self->_has)
  {
    v20 = 2654435761 * self->_publicKeyVersion;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v21 = 0;
    return v7 ^ v4 ^ v10 ^ v13 ^ v16 ^ v19 ^ v20 ^ v21;
  }

  v20 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v21 = 2654435761 * self->_acceptedInProcess;
  return v7 ^ v4 ^ v10 ^ v13 ^ v16 ^ v19 ^ v20 ^ v21;
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  shareId = self->_shareId;
  v6 = *(v4 + 7);
  v16 = v4;
  if (shareId)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(shareId, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setShareId_(self, v4, v6);
  }

  v4 = v16;
LABEL_7:
  v7 = *(v4 + 1);
  if (v7)
  {
    objc_msgSend_setEtag_(self, v4, v7);
    v4 = v16;
  }

  selfAddedPcs = self->_selfAddedPcs;
  v9 = *(v4 + 6);
  if (selfAddedPcs)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    objc_msgSend_mergeFrom_(selfAddedPcs, v4, v9);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    objc_msgSend_setSelfAddedPcs_(self, v4, v9);
  }

  v4 = v16;
LABEL_15:
  publicKey = self->_publicKey;
  v11 = *(v4 + 4);
  if (publicKey)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    objc_msgSend_mergeFrom_(publicKey, v4, v11);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    objc_msgSend_setPublicKey_(self, v4, v11);
  }

  v4 = v16;
LABEL_21:
  protectionInfo = self->_protectionInfo;
  v13 = *(v4 + 3);
  if (protectionInfo)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    objc_msgSend_mergeFrom_(protectionInfo, v4, v13);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    objc_msgSend_setProtectionInfo_(self, v4, v13);
  }

  v4 = v16;
LABEL_27:
  v14 = *(v4 + 2);
  if (v14)
  {
    objc_msgSend_setParticipantId_(self, v4, v14);
    v4 = v16;
  }

  v15 = *(v4 + 68);
  if (v15)
  {
    self->_publicKeyVersion = *(v4 + 10);
    *&self->_has |= 1u;
    v15 = *(v4 + 68);
  }

  if ((v15 & 2) != 0)
  {
    self->_acceptedInProcess = *(v4 + 64);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end