@interface CKDPRecordRetrieveChangesResponseShareChange
- (BOOL)isEqual:(id)equal;
- (id)changeTypeAsString:(int)string;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChangeType:(id)type;
- (int)changeType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPRecordRetrieveChangesResponseShareChange

- (int)changeType
{
  if (*&self->_has)
  {
    return self->_changeType;
  }

  else
  {
    return 1;
  }
}

- (id)changeTypeAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854CB80[string - 1];
  }

  return v4;
}

- (int)StringAsChangeType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy, v4, @"idAndEtag"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v5, @"fullRecord"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy, v7, @"recordDeleted"))
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordRetrieveChangesResponseShareChange;
  v4 = [(CKDPRecordRetrieveChangesResponseShareChange *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  shareIdentifier = self->_shareIdentifier;
  if (shareIdentifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(shareIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"shareIdentifier");
  }

  if (*&self->_has)
  {
    v10 = self->_changeType - 1;
    if (v10 >= 3)
    {
      v11 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_changeType);
    }

    else
    {
      v11 = off_27854CB80[v10];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v11, @"changeType");
  }

  share = self->_share;
  if (share)
  {
    v13 = objc_msgSend_dictionaryRepresentation(share, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v14, v13, @"share");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_shareIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    changeType = self->_changeType;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_share)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  shareIdentifier = self->_shareIdentifier;
  v8 = toCopy;
  if (shareIdentifier)
  {
    objc_msgSend_setShareIdentifier_(toCopy, v5, shareIdentifier);
    toCopy = v8;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_changeType;
    *(toCopy + 32) |= 1u;
  }

  share = self->_share;
  if (share)
  {
    objc_msgSend_setShare_(v8, v5, share);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_shareIdentifier, v11, zone);
  v13 = *(v10 + 24);
  *(v10 + 24) = v12;

  if (*&self->_has)
  {
    *(v10 + 8) = self->_changeType;
    *(v10 + 32) |= 1u;
  }

  v15 = objc_msgSend_copyWithZone_(self->_share, v14, zone);
  v16 = *(v10 + 16);
  *(v10 + 16) = v15;

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

  shareIdentifier = self->_shareIdentifier;
  v9 = equalCopy[3];
  if (shareIdentifier | v9)
  {
    if (!objc_msgSend_isEqual_(shareIdentifier, v7, v9))
    {
      goto LABEL_11;
    }
  }

  v10 = *(equalCopy + 32);
  if (*&self->_has)
  {
    if ((equalCopy[4] & 1) == 0 || self->_changeType != *(equalCopy + 2))
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

  share = self->_share;
  v12 = equalCopy[2];
  if (share | v12)
  {
    isEqual = objc_msgSend_isEqual_(share, v7, v12);
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
  v6 = objc_msgSend_hash(self->_shareIdentifier, a2, v2);
  if (*&self->_has)
  {
    v7 = 2654435761 * self->_changeType;
  }

  else
  {
    v7 = 0;
  }

  return v7 ^ objc_msgSend_hash(self->_share, v4, v5) ^ v6;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  shareIdentifier = self->_shareIdentifier;
  v6 = *(fromCopy + 3);
  v9 = fromCopy;
  if (shareIdentifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(shareIdentifier, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setShareIdentifier_(self, fromCopy, v6);
  }

  fromCopy = v9;
LABEL_7:
  if (*(fromCopy + 32))
  {
    self->_changeType = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  share = self->_share;
  v8 = *(fromCopy + 2);
  if (share)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(share, fromCopy, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setShare_(self, fromCopy, v8);
  }

  MEMORY[0x2821F96F8]();
}

@end