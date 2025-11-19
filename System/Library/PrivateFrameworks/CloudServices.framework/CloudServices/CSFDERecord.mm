@interface CSFDERecord
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)a3;
- (void)mergeFrom:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation CSFDERecord

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CSFDERecord;
  v4 = [(CSFDERecord *)&v11 description];
  v7 = objc_msgSend_dictionaryRepresentation(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v3, v8, @"%@ %@", v4, v7);

  return v9;
}

- (id)dictionaryRepresentation
{
  v6 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], a2, v2);
  clientMetadata = self->_clientMetadata;
  if (clientMetadata)
  {
    v8 = objc_msgSend_dictionaryRepresentation(clientMetadata, v4, v5);
    objc_msgSend_setObject_forKey_(v6, v9, v8, @"clientMetadata");
  }

  timestamp = self->_timestamp;
  if (timestamp)
  {
    objc_msgSend_setObject_forKey_(v6, v4, timestamp, @"timestamp");
  }

  backupKeybagSHA256 = self->_backupKeybagSHA256;
  if (backupKeybagSHA256)
  {
    objc_msgSend_setObject_forKey_(v6, v4, backupKeybagSHA256, @"backupKeybagSHA256");
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_clientMetadata)
  {
    PBDataWriterWriteSubmessage();
    v4 = v5;
  }

  if (self->_timestamp)
  {
    PBDataWriterWriteStringField();
    v4 = v5;
  }

  if (self->_backupKeybagSHA256)
  {
    PBDataWriterWriteDataField();
    v4 = v5;
  }
}

- (void)copyTo:(id)a3
{
  v4 = a3;
  clientMetadata = self->_clientMetadata;
  v9 = v4;
  if (clientMetadata)
  {
    objc_msgSend_setClientMetadata_(v4, v5, clientMetadata);
    v4 = v9;
  }

  timestamp = self->_timestamp;
  if (timestamp)
  {
    objc_msgSend_setTimestamp_(v9, v5, timestamp);
    v4 = v9;
  }

  backupKeybagSHA256 = self->_backupKeybagSHA256;
  if (backupKeybagSHA256)
  {
    objc_msgSend_setBackupKeybagSHA256_(v9, v5, backupKeybagSHA256);
    v4 = v9;
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, a3);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_clientMetadata, v11, a3);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_timestamp, v14, a3);
  v16 = v10[3];
  v10[3] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_backupKeybagSHA256, v17, a3);
  v19 = v10[1];
  v10[1] = v18;

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(v4, v6, v5) && ((clientMetadata = self->_clientMetadata, v9 = v4[2], !(clientMetadata | v9)) || objc_msgSend_isEqual_(clientMetadata, v7, v9)) && ((timestamp = self->_timestamp, v11 = v4[3], !(timestamp | v11)) || objc_msgSend_isEqual_(timestamp, v7, v11)))
  {
    backupKeybagSHA256 = self->_backupKeybagSHA256;
    v13 = v4[1];
    if (backupKeybagSHA256 | v13)
    {
      isEqual = objc_msgSend_isEqual_(backupKeybagSHA256, v7, v13);
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
  v4 = objc_msgSend_hash(self->_clientMetadata, a2, v2);
  v7 = objc_msgSend_hash(self->_timestamp, v5, v6) ^ v4;
  return v7 ^ objc_msgSend_hash(self->_backupKeybagSHA256, v8, v9);
}

- (void)mergeFrom:(id)a3
{
  v4 = a3;
  clientMetadata = self->_clientMetadata;
  v6 = v4[2];
  v9 = v4;
  if (clientMetadata)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(clientMetadata, v4, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setClientMetadata_(self, v4, v6);
  }

  v4 = v9;
LABEL_7:
  v7 = v4[3];
  if (v7)
  {
    objc_msgSend_setTimestamp_(self, v4, v7);
    v4 = v9;
  }

  v8 = v4[1];
  if (v8)
  {
    objc_msgSend_setBackupKeybagSHA256_(self, v4, v8);
  }

  MEMORY[0x2821F96F8]();
}

@end