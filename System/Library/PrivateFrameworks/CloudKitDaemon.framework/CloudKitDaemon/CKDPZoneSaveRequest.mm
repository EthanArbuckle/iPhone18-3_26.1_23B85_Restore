@interface CKDPZoneSaveRequest
+ (id)options;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CKDPZoneSaveRequest

+ (id)options
{
  if (qword_280D55150[0] != -1)
  {
    dispatch_once(qword_280D55150, &unk_28385E2C0);
  }

  v3 = qword_280D55148;

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CKDPZoneSaveRequest;
  v4 = [(CKDPZoneSaveRequest *)&v11 description];
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

  zoneProtectionInfoTag = self->_zoneProtectionInfoTag;
  if (zoneProtectionInfoTag)
  {
    objc_msgSend_setObject_forKey_(v6, v4, zoneProtectionInfoTag, @"zoneProtectionInfoTag");
  }

  ancestryEtag = self->_ancestryEtag;
  if (ancestryEtag)
  {
    v12 = objc_msgSend_dictionaryRepresentation(ancestryEtag, v4, zoneProtectionInfoTag);
    objc_msgSend_setObject_forKey_(v6, v13, v12, @"ancestryEtag");
  }

  reParentingDestinationAncestryEtag = self->_reParentingDestinationAncestryEtag;
  if (reParentingDestinationAncestryEtag)
  {
    v15 = objc_msgSend_dictionaryRepresentation(reParentingDestinationAncestryEtag, v4, zoneProtectionInfoTag);
    objc_msgSend_setObject_forKey_(v6, v16, v15, @"reParentingDestinationAncestryEtag");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_recordZone)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_zoneProtectionInfoTag)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_ancestryEtag)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_reParentingDestinationAncestryEtag)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  recordZone = self->_recordZone;
  v10 = v4;
  if (recordZone)
  {
    objc_msgSend_setRecordZone_(v4, v5, recordZone);
    v4 = v10;
  }

  zoneProtectionInfoTag = self->_zoneProtectionInfoTag;
  if (zoneProtectionInfoTag)
  {
    objc_msgSend_setZoneProtectionInfoTag_(v10, v5, zoneProtectionInfoTag);
    v4 = v10;
  }

  ancestryEtag = self->_ancestryEtag;
  if (ancestryEtag)
  {
    objc_msgSend_setAncestryEtag_(v10, v5, ancestryEtag);
    v4 = v10;
  }

  reParentingDestinationAncestryEtag = self->_reParentingDestinationAncestryEtag;
  if (reParentingDestinationAncestryEtag)
  {
    objc_msgSend_setReParentingDestinationAncestryEtag_(v10, v5, reParentingDestinationAncestryEtag);
    v4 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_recordZone, v11, a3);
  v13 = v10[3];
  v10[3] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_zoneProtectionInfoTag, v14, a3);
  v16 = v10[4];
  v10[4] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_ancestryEtag, v17, a3);
  v19 = v10[1];
  v10[1] = v18;

  v21 = objc_msgSend_copyWithZone_(self->_reParentingDestinationAncestryEtag, v20, a3);
  v22 = v10[2];
  v10[2] = v21;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((recordZone = self->_recordZone, v9 = v4[3], !(recordZone | v9)) || objc_msgSend_isEqual_(recordZone, v7, v9)) && ((zoneProtectionInfoTag = self->_zoneProtectionInfoTag, v11 = v4[4], !(zoneProtectionInfoTag | v11)) || objc_msgSend_isEqual_(zoneProtectionInfoTag, v7, v11)) && ((ancestryEtag = self->_ancestryEtag, v13 = v4[1], !(ancestryEtag | v13)) || objc_msgSend_isEqual_(ancestryEtag, v7, v13)))
  {
    reParentingDestinationAncestryEtag = self->_reParentingDestinationAncestryEtag;
    v15 = v4[2];
    if (reParentingDestinationAncestryEtag | v15)
    {
      isEqual = objc_msgSend_isEqual_(reParentingDestinationAncestryEtag, v7, v15);
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
  v4 = objc_msgSend_hash(self->_recordZone, a2, v2);
  v7 = objc_msgSend_hash(self->_zoneProtectionInfoTag, v5, v6) ^ v4;
  v10 = objc_msgSend_hash(self->_ancestryEtag, v8, v9);
  return v7 ^ v10 ^ objc_msgSend_hash(self->_reParentingDestinationAncestryEtag, v11, v12);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  recordZone = self->_recordZone;
  v12 = v4;
  v6 = v4[3];
  if (recordZone)
  {
    if (v6)
    {
      objc_msgSend_mergeFrom_(recordZone, v4, v6);
    }
  }

  else if (v6)
  {
    objc_msgSend_setRecordZone_(self, v4, v6);
  }

  v7 = v12[4];
  if (v7)
  {
    objc_msgSend_setZoneProtectionInfoTag_(self, v4, v7);
  }

  ancestryEtag = self->_ancestryEtag;
  v9 = v12[1];
  if (ancestryEtag)
  {
    if (v9)
    {
      objc_msgSend_mergeFrom_(ancestryEtag, v12, v9);
    }
  }

  else if (v9)
  {
    objc_msgSend_setAncestryEtag_(self, v12, v9);
  }

  reParentingDestinationAncestryEtag = self->_reParentingDestinationAncestryEtag;
  v11 = v12[2];
  if (reParentingDestinationAncestryEtag)
  {
    if (v11)
    {
      objc_msgSend_mergeFrom_(reParentingDestinationAncestryEtag, v12, v11);
    }
  }

  else if (v11)
  {
    objc_msgSend_setReParentingDestinationAncestryEtag_(self, v12, v11);
  }
}

@end