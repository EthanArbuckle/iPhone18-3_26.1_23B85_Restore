@interface CKDPShareVettingInitiateRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_shareId)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_encryptedKey)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }

  if (self->_participantId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_baseToken)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  shareId = self->_shareId;
  v10 = toCopy;
  if (shareId)
  {
    objc_msgSend_setShareId_(toCopy, v5, shareId);
    toCopy = v10;
  }

  encryptedKey = self->_encryptedKey;
  if (encryptedKey)
  {
    objc_msgSend_setEncryptedKey_(v10, v5, encryptedKey);
    toCopy = v10;
  }

  participantId = self->_participantId;
  if (participantId)
  {
    objc_msgSend_setParticipantId_(v10, v5, participantId);
    toCopy = v10;
  }

  baseToken = self->_baseToken;
  if (baseToken)
  {
    objc_msgSend_setBaseToken_(v10, v5, baseToken);
    toCopy = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_shareId, v11, zone);
  v13 = v10[4];
  v10[4] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_encryptedKey, v14, zone);
  v16 = v10[2];
  v10[2] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_participantId, v17, zone);
  v19 = v10[3];
  v10[3] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_baseToken, v20, zone);
  v22 = v10[1];
  v10[1] = v21;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((shareId = self->_shareId, v9 = equalCopy[4], !(shareId | v9)) || objc_msgSend_isEqual_(shareId, v7, v9)) && ((encryptedKey = self->_encryptedKey, v11 = equalCopy[2], !(encryptedKey | v11)) || objc_msgSend_isEqual_(encryptedKey, v7, v11)) && ((participantId = self->_participantId, v13 = equalCopy[3], !(participantId | v13)) || objc_msgSend_isEqual_(participantId, v7, v13)))
  {
    baseToken = self->_baseToken;
    v15 = equalCopy[1];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  shareId = self->_shareId;
  v10 = fromCopy;
  v6 = fromCopy[4];
  if (shareId)
  {
    if (v6)
    {
      objc_msgSend_mergeFrom_(shareId, fromCopy, v6);
    }
  }

  else if (v6)
  {
    objc_msgSend_setShareId_(self, fromCopy, v6);
  }

  v7 = v10[2];
  if (v7)
  {
    objc_msgSend_setEncryptedKey_(self, fromCopy, v7);
  }

  v8 = v10[3];
  if (v8)
  {
    objc_msgSend_setParticipantId_(self, fromCopy, v8);
  }

  v9 = v10[1];
  if (v9)
  {
    objc_msgSend_setBaseToken_(self, fromCopy, v9);
  }
}

@end