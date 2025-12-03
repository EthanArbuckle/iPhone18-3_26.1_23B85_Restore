@interface CKDPNotificationSyncRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasWantsChanges:(BOOL)changes;
- (void)writeTo:(id)to;
@end

@implementation CKDPNotificationSyncRequest

+ (id)options
{
  if (qword_280D55010 != -1)
  {
    dispatch_once(&qword_280D55010, &unk_28385DE80);
  }

  v3 = qword_280D55008;

  return v3;
}

- (void)setHasWantsChanges:(BOOL)changes
{
  if (changes)
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
  v11.super_class = CKDPNotificationSyncRequest;
  v4 = [(CKDPNotificationSyncRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  serverChangeToken = self->_serverChangeToken;
  if (serverChangeToken)
  {
    objc_msgSend_setObject_forKey_(v4, v5, serverChangeToken, @"serverChangeToken");
  }

  has = self->_has;
  if (has)
  {
    v9 = objc_msgSend_numberWithUnsignedInt_(MEMORY[0x277CCABB0], v5, self->_maxChanges);
    objc_msgSend_setObject_forKey_(v6, v10, v9, @"maxChanges");

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v11 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v5, self->_wantsChanges);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"wantsChanges");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v8 = toCopy;
  if (self->_serverChangeToken)
  {
    PBDataWriterWriteDataField();
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    maxChanges = self->_maxChanges;
    PBDataWriterWriteUint32Field();
    toCopy = v8;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    wantsChanges = self->_wantsChanges;
    PBDataWriterWriteBOOLField();
    toCopy = v8;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  serverChangeToken = self->_serverChangeToken;
  if (serverChangeToken)
  {
    v8 = toCopy;
    objc_msgSend_setServerChangeToken_(toCopy, v5, serverChangeToken);
    toCopy = v8;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 2) = self->_maxChanges;
    *(toCopy + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 24) = self->_wantsChanges;
    *(toCopy + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_serverChangeToken, v11, zone);
  v13 = *(v10 + 16);
  *(v10 + 16) = v12;

  has = self->_has;
  if (has)
  {
    *(v10 + 8) = self->_maxChanges;
    *(v10 + 28) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v10 + 24) = self->_wantsChanges;
    *(v10 + 28) |= 2u;
  }

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

  serverChangeToken = self->_serverChangeToken;
  v9 = equalCopy[2];
  if (serverChangeToken | v9)
  {
    if (!objc_msgSend_isEqual_(serverChangeToken, v7, v9))
    {
      goto LABEL_11;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_maxChanges != *(equalCopy + 2))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
    goto LABEL_11;
  }

  v10 = (*(equalCopy + 28) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 28) & 2) == 0)
    {
LABEL_11:
      v10 = 0;
      goto LABEL_12;
    }

    if (self->_wantsChanges)
    {
      if ((equalCopy[3] & 1) == 0)
      {
        goto LABEL_11;
      }
    }

    else if (*(equalCopy + 24))
    {
      goto LABEL_11;
    }

    v10 = 1;
  }

LABEL_12:

  return v10;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_serverChangeToken, a2, v2);
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_maxChanges;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    return v5 ^ v4 ^ v6;
  }

  v5 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 2654435761 * self->_wantsChanges;
  return v5 ^ v4 ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v6 = *(fromCopy + 2);
  if (v6)
  {
    v8 = fromCopy;
    objc_msgSend_setServerChangeToken_(self, v5, v6);
    fromCopy = v8;
  }

  v7 = *(fromCopy + 28);
  if (v7)
  {
    self->_maxChanges = *(fromCopy + 2);
    *&self->_has |= 1u;
    v7 = *(fromCopy + 28);
  }

  if ((v7 & 2) != 0)
  {
    self->_wantsChanges = *(fromCopy + 24);
    *&self->_has |= 2u;
  }
}

@end