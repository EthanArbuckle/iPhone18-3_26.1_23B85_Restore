@interface CSStingrayRecordClientMetadataStableMetadata
+ (id)parseFromStableMetadataPlist:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (id)convertToPList;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSStingrayRecordClientMetadataStableMetadata

+ (id)parseFromStableMetadataPlist:(id)a3 error:(id *)a4
{
  v4 = a3;
  v5 = objc_alloc_init(CSStingrayRecordClientMetadataStableMetadata);
  v7 = objc_msgSend_objectForKeyedSubscript_(v4, v6, @"EscrowKey");

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

- (void)writeTo:(id)a3
{
  if (self->_stableEscrow)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)a3
{
  stableEscrow = self->_stableEscrow;
  if (stableEscrow)
  {
    objc_msgSend_setStableEscrow_(a3, a2, stableEscrow);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_stableEscrow, v11, a3);
  v13 = v10[1];
  v10[1] = v12;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5))
  {
    stableEscrow = self->_stableEscrow;
    v9 = v4[1];
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

- (void)mergeFrom:(id)a3
{
  v3 = *(a3 + 1);
  if (v3)
  {
    objc_msgSend_setStableEscrow_(self, a2, v3);
  }
}

@end