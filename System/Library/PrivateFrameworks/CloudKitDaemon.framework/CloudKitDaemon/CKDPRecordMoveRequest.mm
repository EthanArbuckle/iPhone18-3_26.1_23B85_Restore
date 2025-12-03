@interface CKDPRecordMoveRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)semanticsAsString:(int)string;
- (int)StringAsSemantics:(id)semantics;
- (int)semantics;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasMerge:(BOOL)merge;
- (void)writeTo:(id)to;
@end

@implementation CKDPRecordMoveRequest

+ (id)options
{
  if (qword_280D55040 != -1)
  {
    dispatch_once(&qword_280D55040, &unk_28385DEE0);
  }

  v3 = qword_280D55038;

  return v3;
}

- (int)semantics
{
  if (*&self->_has)
  {
    return self->_semantics;
  }

  else
  {
    return 1;
  }
}

- (id)semanticsAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"failIfExists";
  }

  else if (string == 2)
  {
    v4 = @"failIfEtagMismatch";
  }

  else
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  return v4;
}

- (int)StringAsSemantics:(id)semantics
{
  semanticsCopy = semantics;
  v6 = 1;
  if ((objc_msgSend_isEqualToString_(semanticsCopy, v4, @"failIfExists") & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(semanticsCopy, v5, @"failIfEtagMismatch"))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }
  }

  return v6;
}

- (void)setHasMerge:(BOOL)merge
{
  if (merge)
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
  v11.super_class = CKDPRecordMoveRequest;
  v4 = [(CKDPRecordMoveRequest *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  if (*&self->_has)
  {
    semantics = self->_semantics;
    if (semantics == 1)
    {
      v8 = @"failIfExists";
      objc_msgSend_setObject_forKey_(v6, v4, @"failIfExists", @"semantics");
    }

    else if (semantics == 2)
    {
      v8 = @"failIfEtagMismatch";
      objc_msgSend_setObject_forKey_(v6, v4, @"failIfEtagMismatch", @"semantics");
    }

    else
    {
      v8 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_semantics);
      objc_msgSend_setObject_forKey_(v6, v9, v8, @"semantics");
    }
  }

  originId = self->_originId;
  if (originId)
  {
    v11 = objc_msgSend_dictionaryRepresentation(originId, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v12, v11, @"originId");
  }

  originEtag = self->_originEtag;
  if (originEtag)
  {
    objc_msgSend_setObject_forKey_(v6, v4, originEtag, @"originEtag");
  }

  destinationEtag = self->_destinationEtag;
  if (destinationEtag)
  {
    objc_msgSend_setObject_forKey_(v6, v4, destinationEtag, @"destinationEtag");
  }

  destinationZoneProtectionInfoTag = self->_destinationZoneProtectionInfoTag;
  if (destinationZoneProtectionInfoTag)
  {
    objc_msgSend_setObject_forKey_(v6, v4, destinationZoneProtectionInfoTag, @"destinationZoneProtectionInfoTag");
  }

  destinationRecordProtectionInfoTag = self->_destinationRecordProtectionInfoTag;
  if (destinationRecordProtectionInfoTag)
  {
    objc_msgSend_setObject_forKey_(v6, v4, destinationRecordProtectionInfoTag, @"destinationRecordProtectionInfoTag");
  }

  destinationRecord = self->_destinationRecord;
  if (destinationRecord)
  {
    v18 = objc_msgSend_dictionaryRepresentation(destinationRecord, v4, destinationRecordProtectionInfoTag);
    objc_msgSend_setObject_forKey_(v6, v19, v18, @"destinationRecord");
  }

  if ((*&self->_has & 2) != 0)
  {
    v20 = objc_msgSend_numberWithBool_(MEMORY[0x277CCABB0], v4, self->_merge);
    objc_msgSend_setObject_forKey_(v6, v21, v20, @"merge");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    semantics = self->_semantics;
    PBDataWriterWriteInt32Field();
  }

  if (self->_originId)
  {
    PBDataWriterWriteSubmessage();
  }

  if (self->_originEtag)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_destinationEtag)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_destinationZoneProtectionInfoTag)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_destinationRecordProtectionInfoTag)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_destinationRecord)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 2) != 0)
  {
    merge = self->_merge;
    PBDataWriterWriteBOOLField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[14] = self->_semantics;
    *(toCopy + 64) |= 1u;
  }

  originId = self->_originId;
  if (originId)
  {
    objc_msgSend_setOriginId_(toCopy, v4, originId);
  }

  originEtag = self->_originEtag;
  if (originEtag)
  {
    objc_msgSend_setOriginEtag_(toCopy, v4, originEtag);
  }

  destinationEtag = self->_destinationEtag;
  if (destinationEtag)
  {
    objc_msgSend_setDestinationEtag_(toCopy, v4, destinationEtag);
  }

  destinationZoneProtectionInfoTag = self->_destinationZoneProtectionInfoTag;
  if (destinationZoneProtectionInfoTag)
  {
    objc_msgSend_setDestinationZoneProtectionInfoTag_(toCopy, v4, destinationZoneProtectionInfoTag);
  }

  destinationRecordProtectionInfoTag = self->_destinationRecordProtectionInfoTag;
  if (destinationRecordProtectionInfoTag)
  {
    objc_msgSend_setDestinationRecordProtectionInfoTag_(toCopy, v4, destinationRecordProtectionInfoTag);
  }

  destinationRecord = self->_destinationRecord;
  if (destinationRecord)
  {
    objc_msgSend_setDestinationRecord_(toCopy, v4, destinationRecord);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(toCopy + 60) = self->_merge;
    *(toCopy + 64) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = v10;
  if (*&self->_has)
  {
    *(v10 + 56) = self->_semantics;
    *(v10 + 64) |= 1u;
  }

  v13 = objc_msgSend_copyWithZone_(self->_originId, v11, zone);
  v14 = *(v12 + 48);
  *(v12 + 48) = v13;

  v16 = objc_msgSend_copyWithZone_(self->_originEtag, v15, zone);
  v17 = *(v12 + 40);
  *(v12 + 40) = v16;

  v19 = objc_msgSend_copyWithZone_(self->_destinationEtag, v18, zone);
  v20 = *(v12 + 8);
  *(v12 + 8) = v19;

  v22 = objc_msgSend_copyWithZone_(self->_destinationZoneProtectionInfoTag, v21, zone);
  v23 = *(v12 + 32);
  *(v12 + 32) = v22;

  v25 = objc_msgSend_copyWithZone_(self->_destinationRecordProtectionInfoTag, v24, zone);
  v26 = *(v12 + 24);
  *(v12 + 24) = v25;

  v28 = objc_msgSend_copyWithZone_(self->_destinationRecord, v27, zone);
  v29 = *(v12 + 16);
  *(v12 + 16) = v28;

  if ((*&self->_has & 2) != 0)
  {
    *(v12 + 60) = self->_merge;
    *(v12 + 64) |= 2u;
  }

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_21;
  }

  v8 = *(equalCopy + 64);
  if (*&self->_has)
  {
    if ((equalCopy[8] & 1) == 0 || self->_semantics != *(equalCopy + 14))
    {
      goto LABEL_21;
    }
  }

  else if (equalCopy[8])
  {
    goto LABEL_21;
  }

  originId = self->_originId;
  v10 = equalCopy[6];
  if (originId | v10 && !objc_msgSend_isEqual_(originId, v7, v10))
  {
    goto LABEL_21;
  }

  originEtag = self->_originEtag;
  v12 = equalCopy[5];
  if (originEtag | v12)
  {
    if (!objc_msgSend_isEqual_(originEtag, v7, v12))
    {
      goto LABEL_21;
    }
  }

  destinationEtag = self->_destinationEtag;
  v14 = equalCopy[1];
  if (destinationEtag | v14)
  {
    if (!objc_msgSend_isEqual_(destinationEtag, v7, v14))
    {
      goto LABEL_21;
    }
  }

  destinationZoneProtectionInfoTag = self->_destinationZoneProtectionInfoTag;
  v16 = equalCopy[4];
  if (destinationZoneProtectionInfoTag | v16)
  {
    if (!objc_msgSend_isEqual_(destinationZoneProtectionInfoTag, v7, v16))
    {
      goto LABEL_21;
    }
  }

  destinationRecordProtectionInfoTag = self->_destinationRecordProtectionInfoTag;
  v18 = equalCopy[3];
  if (destinationRecordProtectionInfoTag | v18)
  {
    if (!objc_msgSend_isEqual_(destinationRecordProtectionInfoTag, v7, v18))
    {
      goto LABEL_21;
    }
  }

  destinationRecord = self->_destinationRecord;
  v20 = equalCopy[2];
  if (destinationRecord | v20)
  {
    if (!objc_msgSend_isEqual_(destinationRecord, v7, v20))
    {
      goto LABEL_21;
    }
  }

  v21 = (equalCopy[8] & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((equalCopy[8] & 2) == 0)
    {
LABEL_21:
      v21 = 0;
      goto LABEL_22;
    }

    if (self->_merge)
    {
      if ((*(equalCopy + 60) & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else if (*(equalCopy + 60))
    {
      goto LABEL_21;
    }

    v21 = 1;
  }

LABEL_22:

  return v21;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_semantics;
  }

  else
  {
    v4 = 0;
  }

  v5 = objc_msgSend_hash(self->_originId, a2, v2);
  v8 = objc_msgSend_hash(self->_originEtag, v6, v7);
  v11 = objc_msgSend_hash(self->_destinationEtag, v9, v10);
  v14 = objc_msgSend_hash(self->_destinationZoneProtectionInfoTag, v12, v13);
  v17 = objc_msgSend_hash(self->_destinationRecordProtectionInfoTag, v15, v16);
  v20 = objc_msgSend_hash(self->_destinationRecord, v18, v19);
  if ((*&self->_has & 2) != 0)
  {
    v21 = 2654435761 * self->_merge;
  }

  else
  {
    v21 = 0;
  }

  return v5 ^ v4 ^ v8 ^ v11 ^ v14 ^ v17 ^ v20 ^ v21;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[16])
  {
    self->_semantics = fromCopy[14];
    *&self->_has |= 1u;
  }

  originId = self->_originId;
  v7 = *(v5 + 6);
  v14 = v5;
  if (originId)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_mergeFrom_(originId, v5, v7);
  }

  else
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    objc_msgSend_setOriginId_(self, v5, v7);
  }

  v5 = v14;
LABEL_9:
  v8 = *(v5 + 5);
  if (v8)
  {
    objc_msgSend_setOriginEtag_(self, v5, v8);
    v5 = v14;
  }

  v9 = *(v5 + 1);
  if (v9)
  {
    objc_msgSend_setDestinationEtag_(self, v5, v9);
    v5 = v14;
  }

  v10 = *(v5 + 4);
  if (v10)
  {
    objc_msgSend_setDestinationZoneProtectionInfoTag_(self, v5, v10);
    v5 = v14;
  }

  v11 = *(v5 + 3);
  if (v11)
  {
    objc_msgSend_setDestinationRecordProtectionInfoTag_(self, v5, v11);
    v5 = v14;
  }

  destinationRecord = self->_destinationRecord;
  v13 = *(v5 + 2);
  if (destinationRecord)
  {
    if (!v13)
    {
      goto LABEL_23;
    }

    objc_msgSend_mergeFrom_(destinationRecord, v5, v13);
  }

  else
  {
    if (!v13)
    {
      goto LABEL_23;
    }

    objc_msgSend_setDestinationRecord_(self, v5, v13);
  }

  v5 = v14;
LABEL_23:
  if ((*(v5 + 64) & 2) != 0)
  {
    self->_merge = *(v5 + 60);
    *&self->_has |= 2u;
  }

  MEMORY[0x2821F96F8]();
}

@end