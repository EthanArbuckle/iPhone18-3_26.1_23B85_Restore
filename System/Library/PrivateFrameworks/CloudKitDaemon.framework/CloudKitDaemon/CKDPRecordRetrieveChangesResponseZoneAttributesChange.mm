@interface CKDPRecordRetrieveChangesResponseZoneAttributesChange
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CKDPRecordRetrieveChangesResponseZoneAttributesChange

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPRecordRetrieveChangesResponseZoneAttributesChange;
  v4 = [(CKDPRecordRetrieveChangesResponseZoneAttributesChange *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  recordZone = self->_recordZone;
  if (recordZone)
  {
    v8 = objc_msgSend_dictionaryRepresentation(recordZone, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"recordZone");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (self->_recordZone)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  recordZone = self->_recordZone;
  if (recordZone)
  {
    objc_msgSend_setRecordZone_(to, a2, recordZone);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_recordZone, v11, zone);
  v13 = v10[1];
  v10[1] = v12;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5))
  {
    recordZone = self->_recordZone;
    v9 = equalCopy[1];
    if (recordZone | v9)
    {
      isEqual = objc_msgSend_isEqual_(recordZone, v7, v9);
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
  recordZone = self->_recordZone;
  v6 = *(fromCopy + 1);
  if (recordZone)
  {
    if (v6)
    {
      objc_msgSend_mergeFrom_(recordZone, fromCopy, v6);
    }
  }

  else if (v6)
  {
    objc_msgSend_setRecordZone_(self, fromCopy, v6);
  }

  MEMORY[0x2821F96F8]();
}

@end