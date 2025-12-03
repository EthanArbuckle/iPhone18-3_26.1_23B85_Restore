@interface CKDPZoneRetrieveAncestorsResponseZoneAncestor
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPZoneRetrieveAncestorsResponseZoneAncestor

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPZoneRetrieveAncestorsResponseZoneAncestor;
  v4 = [(CKDPZoneRetrieveAncestorsResponseZoneAncestor *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  zoneSummary = self->_zoneSummary;
  if (zoneSummary)
  {
    v8 = objc_msgSend_dictionaryRepresentation(zoneSummary, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"zoneSummary");
  }

  shareRecord = self->_shareRecord;
  if (shareRecord)
  {
    v11 = objc_msgSend_dictionaryRepresentation(shareRecord, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"shareRecord");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_zoneSummary)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_shareRecord)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  zoneSummary = self->_zoneSummary;
  v8 = toCopy;
  if (zoneSummary)
  {
    objc_msgSend_setZoneSummary_(toCopy, v5, zoneSummary);
    toCopy = v8;
  }

  shareRecord = self->_shareRecord;
  if (shareRecord)
  {
    objc_msgSend_setShareRecord_(v8, v5, shareRecord);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_zoneSummary, v11, zone);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_shareRecord, v14, zone);
  v16 = v10[1];
  v10[1] = v15;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((zoneSummary = self->_zoneSummary, v9 = equalCopy[2], !(zoneSummary | v9)) || objc_msgSend_isEqual_(zoneSummary, v7, v9)))
  {
    shareRecord = self->_shareRecord;
    v11 = equalCopy[1];
    if (shareRecord | v11)
    {
      isEqual = objc_msgSend_isEqual_(shareRecord, v7, v11);
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  zoneSummary = self->_zoneSummary;
  v6 = fromCopy[2];
  v9 = fromCopy;
  if (zoneSummary)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(zoneSummary, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setZoneSummary_(self, fromCopy, v6);
  }

  fromCopy = v9;
LABEL_7:
  shareRecord = self->_shareRecord;
  v8 = fromCopy[1];
  if (shareRecord)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(shareRecord, fromCopy, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setShareRecord_(self, fromCopy, v8);
  }

  MEMORY[0x2821F96F8]();
}

@end