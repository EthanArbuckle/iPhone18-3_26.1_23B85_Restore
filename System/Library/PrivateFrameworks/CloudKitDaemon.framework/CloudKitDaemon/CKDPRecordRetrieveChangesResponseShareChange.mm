@interface CKDPRecordRetrieveChangesResponseShareChange
- (BOOL)isEqual:(id)a3;
- (id)changeTypeAsString:(int)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (int)StringAsChangeType:(id)a3;
- (int)changeType;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
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

- (id)changeTypeAsString:(int)a3
{
  if ((a3 - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", a3);
  }

  else
  {
    v4 = off_27854CB80[a3 - 1];
  }

  return v4;
}

- (int)StringAsChangeType:(id)a3
{
  v3 = a3;
  if (objc_msgSend_isEqualToString_(v3, v4, @"idAndEtag"))
  {
    v6 = 1;
  }

  else if (objc_msgSend_isEqualToString_(v3, v5, @"fullRecord"))
  {
    v6 = 2;
  }

  else if (objc_msgSend_isEqualToString_(v3, v7, @"recordDeleted"))
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

- (void)writeTo:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (self->_shareIdentifier)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }

  if (*&self->_has)
  {
    changeType = self->_changeType;
    PBDataWriterWriteInt32Field();
    v4 = v6;
  }

  if (self->_share)
  {
    PBDataWriterWriteSubmessage();
    v4 = v6;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  shareIdentifier = self->_shareIdentifier;
  v8 = v4;
  if (shareIdentifier)
  {
    objc_msgSend_setShareIdentifier_(v4, v5, shareIdentifier);
    v4 = v8;
  }

  if (*&self->_has)
  {
    *(v4 + 2) = self->_changeType;
    *(v4 + 32) |= 1u;
  }

  share = self->_share;
  if (share)
  {
    objc_msgSend_setShare_(v8, v5, share);
    v4 = v8;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_shareIdentifier, v11, a3);
  v13 = *(v10 + 24);
  *(v10 + 24) = v12;

  if (*&self->_has)
  {
    *(v10 + 8) = self->_changeType;
    *(v10 + 32) |= 1u;
  }

  v15 = objc_msgSend_copyWithZone_(self->_share, v14, a3);
  v16 = *(v10 + 16);
  *(v10 + 16) = v15;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    goto LABEL_11;
  }

  shareIdentifier = self->_shareIdentifier;
  v9 = v4[3];
  if (shareIdentifier | v9)
  {
    if (!objc_msgSend_isEqual_(shareIdentifier, v7, v9))
    {
      goto LABEL_11;
    }
  }

  v10 = *(v4 + 32);
  if (*&self->_has)
  {
    if ((v4[4] & 1) == 0 || self->_changeType != *(v4 + 2))
    {
      goto LABEL_11;
    }
  }

  else if (v4[4])
  {
LABEL_11:
    isEqual = 0;
    goto LABEL_12;
  }

  share = self->_share;
  v12 = v4[2];
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

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  shareIdentifier = self->_shareIdentifier;
  v6 = *(v4 + 3);
  v9 = v4;
  if (shareIdentifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(shareIdentifier, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setShareIdentifier_(self, v4, v6);
  }

  v4 = v9;
LABEL_7:
  if (*(v4 + 32))
  {
    self->_changeType = *(v4 + 2);
    *&self->_has |= 1u;
  }

  share = self->_share;
  v8 = *(v4 + 2);
  if (share)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(share, v4, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setShare_(self, v4, v8);
  }

  MEMORY[0x2821F96F8]();
}

@end