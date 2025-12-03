@interface CSStingrayRecordClientMetadataStableMetadata
+ (id)parseFromStableMetadataPlist:(id)plist error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (id)convertToPList;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CSStingrayRecordClientMetadataStableMetadata

+ (id)parseFromStableMetadataPlist:(id)plist error:(id *)error
{
  plistCopy = plist;
  v5 = objc_alloc_init(CSStingrayRecordClientMetadataStableMetadata);
  v7 = objc_msgSend_objectForKeyedSubscript_(plistCopy, v6, @"EscrowKey");

  objc_msgSend_setStableEscrow_(v5, v8, v7);

  return v5;
}

- (id)convertToPList
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v7 = objc_msgSend_stableEscrow(self, v5, v6);
  if (objc_msgSend_length(v7, v8, v9))
  {
    v12 = objc_msgSend_stableEscrow(self, v10, v11);
    objc_msgSend_setObject_forKeyedSubscript_(v4, v13, v12, @"SecureBackupStableMetadata");
  }

  else
  {
    objc_msgSend_setObject_forKeyedSubscript_(v4, v10, 0, @"SecureBackupStableMetadata");
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CSStingrayRecordClientMetadataStableMetadata;
  v4 = [(CSStingrayRecordClientMetadataStableMetadata *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v4 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  v6 = v4;
  stableEscrow = self->_stableEscrow;
  if (stableEscrow)
  {
    objc_msgSend_setObject_forKey_(v4, v5, stableEscrow, @"stableEscrow");
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (self->_stableEscrow)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  stableEscrow = self->_stableEscrow;
  if (stableEscrow)
  {
    objc_msgSend_setStableEscrow_(to, a2, stableEscrow);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_stableEscrow, v11, zone);
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
    stableEscrow = self->_stableEscrow;
    v9 = equalCopy[1];
    if (stableEscrow | v9)
    {
      isEqual = objc_msgSend_isEqual_(stableEscrow, v7, v9);
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
  v3 = *(from + 1);
  if (v3)
  {
    objc_msgSend_setStableEscrow_(self, a2, v3);
  }
}

@end