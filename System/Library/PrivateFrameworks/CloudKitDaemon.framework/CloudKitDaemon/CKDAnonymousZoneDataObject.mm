@interface CKDAnonymousZoneDataObject
- (CKDAnonymousZoneDataObject)initWithEncryptedData:(id)data;
- (CKDAnonymousZoneDataObject)initWithEncryptedData:(id)data changeType:(int)type deleteType:(int)deleteType;
@end

@implementation CKDAnonymousZoneDataObject

- (CKDAnonymousZoneDataObject)initWithEncryptedData:(id)data
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = CKDAnonymousZoneDataObject;
  v7 = [(CKDAnonymousZoneDataObject *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(dataCopy, v5, v6);
    encryptedTupleData = v7->_encryptedTupleData;
    v7->_encryptedTupleData = v8;
  }

  return v7;
}

- (CKDAnonymousZoneDataObject)initWithEncryptedData:(id)data changeType:(int)type deleteType:(int)deleteType
{
  dataCopy = data;
  v15.receiver = self;
  v15.super_class = CKDAnonymousZoneDataObject;
  v11 = [(CKDAnonymousZoneDataObject *)&v15 init];
  if (v11)
  {
    v12 = objc_msgSend_copy(dataCopy, v9, v10);
    encryptedTupleData = v11->_encryptedTupleData;
    v11->_encryptedTupleData = v12;

    v11->_changeType = type;
    v11->_deleteType = deleteType;
  }

  return v11;
}

@end