@interface CSFDERecord
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
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

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (self->_clientMetadata)
  {
    PBDataWriterWriteSubmessage();
    toCopy = v5;
  }

  if (self->_timestamp)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_backupKeybagSHA256)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  clientMetadata = self->_clientMetadata;
  v9 = toCopy;
  if (clientMetadata)
  {
    objc_msgSend_setClientMetadata_(toCopy, v5, clientMetadata);
    toCopy = v9;
  }

  timestamp = self->_timestamp;
  if (timestamp)
  {
    objc_msgSend_setTimestamp_(v9, v5, timestamp);
    toCopy = v9;
  }

  backupKeybagSHA256 = self->_backupKeybagSHA256;
  if (backupKeybagSHA256)
  {
    objc_msgSend_setBackupKeybagSHA256_(v9, v5, backupKeybagSHA256);
    toCopy = v9;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v7 = objc_msgSend_allocWithZone_(v5, v6, zone);
  v10 = objc_msgSend_init(v7, v8, v9);
  v12 = objc_msgSend_copyWithZone_(self->_clientMetadata, v11, zone);
  v13 = v10[2];
  v10[2] = v12;

  v15 = objc_msgSend_copyWithZone_(self->_timestamp, v14, zone);
  v16 = v10[3];
  v10[3] = v15;

  v18 = objc_msgSend_copyWithZone_(self->_backupKeybagSHA256, v17, zone);
  v19 = v10[1];
  v10[1] = v18;

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = objc_opt_class();
  if (objc_msgSend_isMemberOfClass_(equalCopy, v6, v5) && ((clientMetadata = self->_clientMetadata, v9 = equalCopy[2], !(clientMetadata | v9)) || objc_msgSend_isEqual_(clientMetadata, v7, v9)) && ((timestamp = self->_timestamp, v11 = equalCopy[3], !(timestamp | v11)) || objc_msgSend_isEqual_(timestamp, v7, v11)))
  {
    backupKeybagSHA256 = self->_backupKeybagSHA256;
    v13 = equalCopy[1];
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

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  clientMetadata = self->_clientMetadata;
  v6 = fromCopy[2];
  v9 = fromCopy;
  if (clientMetadata)
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_mergeFrom_(clientMetadata, fromCopy, v6);
  }

  else
  {
    if (!v6)
    {
      goto LABEL_7;
    }

    objc_msgSend_setClientMetadata_(self, fromCopy, v6);
  }

  fromCopy = v9;
LABEL_7:
  v7 = fromCopy[3];
  if (v7)
  {
    objc_msgSend_setTimestamp_(self, fromCopy, v7);
    fromCopy = v9;
  }

  v8 = fromCopy[1];
  if (v8)
  {
    objc_msgSend_setBackupKeybagSHA256_(self, fromCopy, v8);
  }

  MEMORY[0x2821F96F8]();
}

@end