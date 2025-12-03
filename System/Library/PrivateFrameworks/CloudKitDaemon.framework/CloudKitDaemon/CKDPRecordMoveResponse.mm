@interface CKDPRecordMoveResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPRecordMoveResponse

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordMoveResponse;
  v4 = [(CKDPRecordMoveResponse *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  moveMarker = self->_moveMarker;
  if (moveMarker)
  {
    v8 = objc_msgSend_dictionaryRepresentation(moveMarker, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"moveMarker");
  }

  movedRecord = self->_movedRecord;
  if (movedRecord)
  {
    v11 = objc_msgSend_dictionaryRepresentation(movedRecord, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"movedRecord");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_moveMarker)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_movedRecord)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  moveMarker = self->_moveMarker;
  v8 = toCopy;
  if (moveMarker)
  {
    objc_msgSend_setMoveMarker_(toCopy, v5, moveMarker);
    toCopy = v8;
  }

  movedRecord = self->_movedRecord;
  if (movedRecord)
  {
    objc_msgSend_setMovedRecord_(v8, v5, movedRecord);
    toCopy = v8;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_moveMarker, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_movedRecord, v14, zone);
  v16 = v10[2];
  v10[2] = v15;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((moveMarker = self->_moveMarker, v9 = equalCopy[1], !(moveMarker | v9)) || objc_msgSend_isEqual_(moveMarker, v7, v9)))
  {
    movedRecord = self->_movedRecord;
    v11 = equalCopy[2];
    if (movedRecord | v11)
    {
      isEqual = objc_msgSend_isEqual_(movedRecord, v7, v11);
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
  moveMarker = self->_moveMarker;
  v6 = fromCopy[1];
  v9 = fromCopy;
  if (moveMarker)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(moveMarker, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setMoveMarker_(self, fromCopy, v6);
  }

  fromCopy = v9;
LABEL_7:
  movedRecord = self->_movedRecord;
  v8 = fromCopy[2];
  if (movedRecord)
  {
    if (v8)
    {
      objc_msgSend_mergeFrom_(movedRecord, fromCopy, v8);
    }
  }

  else if (v8)
  {
    objc_msgSend_setMovedRecord_(self, fromCopy, v8);
  }

  MEMORY[0x2821F96F8]();
}

@end