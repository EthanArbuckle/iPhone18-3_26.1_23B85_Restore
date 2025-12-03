@interface CKDPShareDeclineRequest
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

@implementation CKDPShareDeclineRequest

+ (id)options
{
  if (qword_280D54F50 != -1)
  {
    dispatch_once(&qword_280D54F50, &unk_28385E000);
  }

  v3 = qword_280D54F48;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPShareDeclineRequest;
  v4 = [(CKDPShareDeclineRequest *)&v11 description];
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

  participantId = self->_participantId;
  if (participantId)
  {
    objc_msgSend_setObject_forKey_(v6, v4, participantId, @"participantId");
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    v12 = objc_msgSend_dictionaryRepresentation(protectionInfo, v4, participantId);
    objc_msgSend_setObject_forKey_(v6, v13, v12, @"protectionInfo");
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

  if (self->_participantId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_protectionInfo)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  shareId = self->_shareId;
  v9 = toCopy;
  if (shareId)
  {
    objc_msgSend_setShareId_(toCopy, v5, shareId);
    toCopy = v9;
  }

  participantId = self->_participantId;
  if (participantId)
  {
    objc_msgSend_setParticipantId_(v9, v5, participantId);
    toCopy = v9;
  }

  protectionInfo = self->_protectionInfo;
  if (protectionInfo)
  {
    objc_msgSend_setProtectionInfo_(v9, v5, protectionInfo);
    toCopy = v9;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_shareId, v11, zone);
  v13 = v10[3];
  v10[3] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_participantId, v14, zone);
  v16 = v10[1];
  v10[1] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_protectionInfo, v17, zone);
  v19 = v10[2];
  v10[2] = v18;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((shareId = self->_shareId, v9 = equalCopy[3], !(shareId | v9)) || objc_msgSend_isEqual_(shareId, v7, v9)) && ((participantId = self->_participantId, v11 = equalCopy[1], !(participantId | v11)) || objc_msgSend_isEqual_(participantId, v7, v11)))
  {
    protectionInfo = self->_protectionInfo;
    v13 = equalCopy[2];
    if (protectionInfo | v13)
    {
      isEqual = objc_msgSend_isEqual_(protectionInfo, v7, v13);
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
  v7 = objc_msgSend_hash(self->_participantId, v5, v6) ^ v4;
  return v7 ^ objc_msgSend_hash(self->_protectionInfo, v8, v9);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  shareId = self->_shareId;
  v6 = fromCopy[3];
  v10 = fromCopy;
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

  fromCopy = v10;
LABEL_7:
  v7 = fromCopy[1];
  if (v7)
  {
    objc_msgSend_setParticipantId_(self, fromCopy, v7);
    fromCopy = v10;
  }

  protectionInfo = self->_protectionInfo;
  v9 = fromCopy[2];
  if (protectionInfo)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(protectionInfo, fromCopy, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setProtectionInfo_(self, fromCopy, v9);
  }

  MEMORY[0x2821F96F8]();
}

@end