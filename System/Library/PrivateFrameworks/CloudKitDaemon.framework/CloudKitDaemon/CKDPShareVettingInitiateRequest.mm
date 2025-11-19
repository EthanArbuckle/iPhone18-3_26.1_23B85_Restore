@interface CKDPShareVettingInitiateRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPShareVettingInitiateRequest

+ (id)options
{
  if (qword_280D550B0 != -1)
  {
    dispatch_once(&qword_280D550B0, &unk_28385E040);
  }

  v3 = qword_280D550A8;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPShareVettingInitiateRequest;
  v4 = [(CKDPShareVettingInitiateRequest *)&v11 description];
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

  encryptedKey = self->_encryptedKey;
  if (encryptedKey)
  {
    objc_msgSend_setObject_forKey_(v6, v4, encryptedKey, @"encryptedKey");
  }

  participantId = self->_participantId;
  if (participantId)
  {
    objc_msgSend_setObject_forKey_(v6, v4, participantId, @"participantId");
  }

  baseToken = self->_baseToken;
  if (baseToken)
  {
    objc_msgSend_setObject_forKey_(v6, v4, baseToken, @"baseToken");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_shareId)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_encryptedKey)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }

  if (self->_participantId)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_baseToken)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  shareId = self->_shareId;
  v10 = v4;
  if (shareId)
  {
    objc_msgSend_setShareId_(v4, v5, shareId);
    v4 = v10;
  }

  encryptedKey = self->_encryptedKey;
  if (encryptedKey)
  {
    objc_msgSend_setEncryptedKey_(v10, v5, encryptedKey);
    v4 = v10;
  }

  participantId = self->_participantId;
  if (participantId)
  {
    objc_msgSend_setParticipantId_(v10, v5, participantId);
    v4 = v10;
  }

  baseToken = self->_baseToken;
  if (baseToken)
  {
    objc_msgSend_setBaseToken_(v10, v5, baseToken);
    v4 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_shareId, v11, a3);
  v13 = v10[4];
  v10[4] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_encryptedKey, v14, a3);
  v16 = v10[2];
  v10[2] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_participantId, v17, a3);
  v19 = v10[3];
  v10[3] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_baseToken, v20, a3);
  v22 = v10[1];
  v10[1] = v21;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((shareId = self->_shareId, v9 = v4[4], !(shareId | v9)) || objc_msgSend_isEqual_(shareId, v7, v9)) && ((encryptedKey = self->_encryptedKey, v11 = v4[2], !(encryptedKey | v11)) || objc_msgSend_isEqual_(encryptedKey, v7, v11)) && ((participantId = self->_participantId, v13 = v4[3], !(participantId | v13)) || objc_msgSend_isEqual_(participantId, v7, v13)))
  {
    baseToken = self->_baseToken;
    v15 = v4[1];
    if (baseToken | v15)
    {
      isEqual = objc_msgSend_isEqual_(baseToken, v7, v15);
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

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_shareId, a2, v2);
  v7 = objc_msgSend_hash(self->_encryptedKey, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_participantId, v8, v9);
  return v7 ^ v10 ^ objc_msgSend_hash(self->_baseToken, v11, v12);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  shareId = self->_shareId;
  v10 = v4;
  v6 = v4[4];
  if (shareId)
  {
    if (v6)
    {
      objc_msgSend_mergeFrom_(shareId, v4, v6);
    }
  }

  else if (v6)
  {
    objc_msgSend_setShareId_(self, v4, v6);
  }

  v7 = v10[2];
  if (v7)
  {
    objc_msgSend_setEncryptedKey_(self, v4, v7);
  }

  v8 = v10[3];
  if (v8)
  {
    objc_msgSend_setParticipantId_(self, v4, v8);
  }

  v9 = v10[1];
  if (v9)
  {
    objc_msgSend_setBaseToken_(self, v4, v9);
  }
}

@end