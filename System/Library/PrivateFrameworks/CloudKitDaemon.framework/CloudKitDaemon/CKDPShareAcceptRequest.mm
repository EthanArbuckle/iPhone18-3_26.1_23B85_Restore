@interface CKDPShareAcceptRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)publicKeyVersion;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasAcceptedInProcess:(BOOL)process;
- (void)writeTo:(id)to;
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

- (void)setHasAcceptedInProcess:(BOOL)process
{
  if (process)
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_shareId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  if (self->_selfAddedPcs)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_publicKey)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_protectionInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v8;
  }

  if (self->_participantId)
  {
    PBDataWriterWriteStringField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    publicKeyVersion = self->_publicKeyVersion;
    PBDataWriterWriteInt32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    acceptedInProcess = self->_acceptedInProcess;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  shareId = self->_shareId;
  v13 = toCopy;
  if (shareId)
  {
    objc_msgSend_setShareId_(toCopy, v5, shareId);
    toCopy = v13;
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setEtag_(v13, v5, etag);
    toCopy = v13;
  }

  selfAddedPcs = self->_selfAddedPcs;
  if (selfAddedPcs)
  {
    objc_msgSend_setSelfAddedPcs_(v13, v5, selfAddedPcs);
    toCopy = v13;
  }

  publicKey = self->_publicKey;
  if (publicKey)
  {
    objc_msgSend_setPublicKey_(v13, v5, publicKey);
    toCopy = v13;
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    objc_msgSend_setProtectionInfo_(v13, v5, protectionInfo);
    toCopy = v13;
  }

  participantId = self->_participantId;
  if (participantId)
  {
    objc_msgSend_setParticipantId_(v13, v5, participantId);
    toCopy = v13;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 10) = self->_publicKeyVersion;
    *(toCopy + 68) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 64) = self->_acceptedInProcess;
    *(toCopy + 68) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_shareId, v11, zone);
  v13 = *(v10 + 56);
  *(v10 + 56) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_etag, v14, zone);
  v16 = *(v10 + 8);
  *(v10 + 8) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_selfAddedPcs, v17, zone);
  v19 = *(v10 + 48);
  *(v10 + 48) = v18;

  v21 = objc_msgSend_copyWithZone_(self->_publicKey, v20, zone);
  v22 = *(v10 + 32);
  *(v10 + 32) = v21;

  v24 = objc_msgSend_copyWithZone_(self->_protectionInfo, v23, zone);
  v25 = *(v10 + 24);
  *(v10 + 24) = v24;

  v27 = objc_msgSend_copyWithZone_(self->_participantId, v26, zone);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_21;
  }

  shareId = self->_shareId;
  v9 = equalCopy[7];
  if (shareId | v9)
  {
    if (!objc_msgSend_isEqual_(shareId, v7, v9))
    {
      goto LABEL_21;
    }
  }

  etag = self->_etag;
  v11 = equalCopy[1];
  if (etag | v11)
  {
    if (!objc_msgSend_isEqual_(etag, v7, v11))
    {
      goto LABEL_21;
    }
  }

  selfAddedPcs = self->_selfAddedPcs;
  v13 = equalCopy[6];
  if (selfAddedPcs | v13)
  {
    if (!objc_msgSend_isEqual_(selfAddedPcs, v7, v13))
    {
      goto LABEL_21;
    }
  }

  publicKey = self->_publicKey;
  v15 = equalCopy[4];
  if (publicKey | v15)
  {
    if (!objc_msgSend_isEqual_(publicKey, v7, v15))
    {
      goto LABEL_21;
    }
  }

  protectionInfo = self->_protectionInfo;
  v17 = equalCopy[3];
  if (protectionInfo | v17)
  {
    if (!objc_msgSend_isEqual_(protectionInfo, v7, v17))
    {
      goto LABEL_21;
    }
  }

  participantId = self->_participantId;
  v19 = equalCopy[2];
  if (participantId | v19)
  {
    if (!objc_msgSend_isEqual_(participantId, v7, v19))
    {
      goto LABEL_21;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 68) & 1) == 0 || self->_publicKeyVersion != *(equalCopy + 10))
    {
      goto LABEL_21;
    }
  }

  else if (*(equalCopy + 68))
  {
    goto LABEL_21;
  }

  v20 = (*(equalCopy + 68) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 68) & 2) == 0)
    {
LABEL_21:
      v20 = 0;
      goto LABEL_22;
    }

    if (self->_acceptedInProcess)
    {
      if ((equalCopy[8] & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(equalCopy + 64))
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  shareId = self->_shareId;
  v6 = *(fromCopy + 7);
  v16 = fromCopy;
  if (shareId)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(shareId, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setShareId_(self, fromCopy, v6);
  }

  fromCopy = v16;
LABEL_7:
  v7 = *(fromCopy + 1);
  if (v7)
  {
    objc_msgSend_setEtag_(self, fromCopy, v7);
    fromCopy = v16;
  }

  selfAddedPcs = self->_selfAddedPcs;
  v9 = *(fromCopy + 6);
  if (selfAddedPcs)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    objc_msgSend_mergeFrom_(selfAddedPcs, fromCopy, v9);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    objc_msgSend_setSelfAddedPcs_(self, fromCopy, v9);
  }

  fromCopy = v16;
LABEL_15:
  publicKey = self->_publicKey;
  v11 = *(fromCopy + 4);
  if (publicKey)
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    objc_msgSend_mergeFrom_(publicKey, fromCopy, v11);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_21;
    }

    objc_msgSend_setPublicKey_(self, fromCopy, v11);
  }

  fromCopy = v16;
LABEL_21:
  protectionInfo = self->_protectionInfo;
  v13 = *(fromCopy + 3);
  if (protectionInfo)
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    objc_msgSend_mergeFrom_(protectionInfo, fromCopy, v13);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_27;
    }

    objc_msgSend_setProtectionInfo_(self, fromCopy, v13);
  }

  fromCopy = v16;
LABEL_27:
  v14 = *(fromCopy + 2);
  if (v14)
  {
    objc_msgSend_setParticipantId_(self, fromCopy, v14);
    fromCopy = v16;
  }

  v15 = *(fromCopy + 68);
  if (v15)
  {
    self->_publicKeyVersion = *(fromCopy + 10);
    *&self->_has |= 1u;
    v15 = *(fromCopy + 68);
  }

  if ((v15 & 2) != 0)
  {
    self->_acceptedInProcess = *(fromCopy + 64);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end