@interface CKDPRecordRetrieveChangesResponseRecordChange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)typeAsString:(int)string;
- (int)StringAsType:(id)type;
- (int)type;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPRecordRetrieveChangesResponseRecordChange

- (int)type
{
  if (*&self->_has)
  {
    return self->_type;
  }

  else
  {
    return 1;
  }
}

- (id)typeAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], a2, @"(unknown: %i)", string);
  }

  else
  {
    v4 = off_27854CB68[string - 1];
  }

  return v4;
}

- (int)StringAsType:(id)type
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
  v11.super_class = CKDPRecordRetrieveChangesResponseRecordChange;
  v4 = [(CKDPRecordRetrieveChangesResponseRecordChange *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  recordIdentifier = self->_recordIdentifier;
  if (recordIdentifier)
  {
    v8 = objc_msgSend_dictionaryRepresentation(recordIdentifier, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"recordIdentifier");
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setObject_forKey_(v6, v4, etag, @"etag");
  }

  recordType = self->_recordType;
  if (recordType)
  {
    v12 = objc_msgSend_dictionaryRepresentation(recordType, v4, etag);
    objc_msgSend_setObject_forKey_(v6, v13, v12, @"recordType");
  }

  if (*&self->_has)
  {
    v14 = self->_type - 1;
    if (v14 >= 3)
    {
      v15 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v4, @"(unknown: %i)", self->_type);
    }

    else
    {
      v15 = off_27854CB68[v14];
    }

    objc_msgSend_setObject_forKey_(v6, v4, v15, @"type");
  }

  record = self->_record;
  if (record)
  {
    v17 = objc_msgSend_dictionaryRepresentation(record, v4, etag);
    objc_msgSend_setObject_forKey_(v6, v18, v17, @"record");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v6 = toCopy;
  if (self->_recordIdentifier)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (self->_etag)
  {
    PBDataWriterWriteStringField();
    toCopy = v6;
  }

  if (self->_recordType)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }

  if (*&self->_has)
  {
    type = self->_type;
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }

  if (self->_record)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v6;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  recordIdentifier = self->_recordIdentifier;
  v10 = toCopy;
  if (recordIdentifier)
  {
    objc_msgSend_setRecordIdentifier_(toCopy, v5, recordIdentifier);
    toCopy = v10;
  }

  etag = self->_etag;
  if (etag)
  {
    objc_msgSend_setEtag_(v10, v5, etag);
    toCopy = v10;
  }

  recordType = self->_recordType;
  if (recordType)
  {
    objc_msgSend_setRecordType_(v10, v5, recordType);
    toCopy = v10;
  }

  if (*&self->_has)
  {
    *(toCopy + 10) = self->_type;
    *(toCopy + 44) |= 1u;
  }

  record = self->_record;
  if (record)
  {
    objc_msgSend_setRecord_(v10, v5, record);
    toCopy = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_recordIdentifier, v11, zone);
  v13 = *(v10 + 24);
  *(v10 + 24) = v12;

  v15 = objc_msgSend_copyWithZone_(self->_etag, v14, zone);
  v16 = *(v10 + 8);
  *(v10 + 8) = v15;

  v18 = objc_msgSend_copyWithZone_(self->_recordType, v17, zone);
  v19 = *(v10 + 32);
  *(v10 + 32) = v18;

  if (*&self->_has)
  {
    *(v10 + 40) = self->_type;
    *(v10 + 44) |= 1u;
  }

  v21 = objc_msgSend_copyWithZone_(self->_record, v20, zone);
  v22 = *(v10 + 16);
  *(v10 + 16) = v21;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (!objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    goto LABEL_15;
  }

  recordIdentifier = self->_recordIdentifier;
  v9 = equalCopy[3];
  if (recordIdentifier | v9)
  {
    if (!objc_msgSend_isEqual_(recordIdentifier, v7, v9))
    {
      goto LABEL_15;
    }
  }

  etag = self->_etag;
  v11 = equalCopy[1];
  if (etag | v11)
  {
    if (!objc_msgSend_isEqual_(etag, v7, v11))
    {
      goto LABEL_15;
    }
  }

  recordType = self->_recordType;
  v13 = equalCopy[4];
  if (recordType | v13)
  {
    if (!objc_msgSend_isEqual_(recordType, v7, v13))
    {
      goto LABEL_15;
    }
  }

  v14 = *(equalCopy + 44);
  if (*&self->_has)
  {
    if ((*(equalCopy + 44) & 1) == 0 || self->_type != *(equalCopy + 10))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 44))
  {
LABEL_15:
    isEqual = 0;
    goto LABEL_16;
  }

  record = self->_record;
  v16 = equalCopy[2];
  if (record | v16)
  {
    isEqual = objc_msgSend_isEqual_(record, v7, v16);
  }

  else
  {
    isEqual = 1;
  }

LABEL_16:

  return isEqual;
}

- (unint64_t)hash
{
  v4 = objc_msgSend_hash(self->_recordIdentifier, a2, v2);
  v7 = objc_msgSend_hash(self->_etag, v5, v6);
  v10 = objc_msgSend_hash(self->_recordType, v8, v9);
  if (*&self->_has)
  {
    v13 = 2654435761 * self->_type;
  }

  else
  {
    v13 = 0;
  }

  return v7 ^ v4 ^ v10 ^ v13 ^ objc_msgSend_hash(self->_record, v11, v12);
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  recordIdentifier = self->_recordIdentifier;
  v6 = *(fromCopy + 3);
  v12 = fromCopy;
  if (recordIdentifier)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(recordIdentifier, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setRecordIdentifier_(self, fromCopy, v6);
  }

  fromCopy = v12;
LABEL_7:
  v7 = *(fromCopy + 1);
  if (v7)
  {
    objc_msgSend_setEtag_(self, fromCopy, v7);
    fromCopy = v12;
  }

  recordType = self->_recordType;
  v9 = *(fromCopy + 4);
  if (recordType)
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    objc_msgSend_mergeFrom_(recordType, fromCopy, v9);
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    objc_msgSend_setRecordType_(self, fromCopy, v9);
  }

  fromCopy = v12;
LABEL_15:
  if (*(fromCopy + 44))
  {
    self->_type = *(fromCopy + 10);
    *&self->_has |= 1u;
  }

  record = self->_record;
  v11 = *(fromCopy + 2);
  if (record)
  {
    if (v11)
    {
      objc_msgSend_mergeFrom_(record, fromCopy, v11);
    }
  }

  else if (v11)
  {
    objc_msgSend_setRecord_(self, fromCopy, v11);
  }

  MEMORY[0x2821F96F8]();
}

@end