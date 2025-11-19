@interface CKDAnonymousZoneDataObject
- (CKDAnonymousZoneDataObject)initWithEncryptedData:(id)a3;
- (CKDAnonymousZoneDataObject)initWithEncryptedData:(id)a3 changeType:(int)a4 deleteType:(int)a5;
@end

@implementation CKDAnonymousZoneDataObject

- (CKDAnonymousZoneDataObject)initWithEncryptedData:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CKDAnonymousZoneDataObject;
  v7 = [(CKDAnonymousZoneDataObject *)&v11 init];
  if (v7)
  {
    v8 = objc_msgSend_copy(v4, v5, v6);
    encryptedTupleData = v7->_encryptedTupleData;
    v7->_encryptedTupleData = v8;
  }

  return v7;
}

- (CKDAnonymousZoneDataObject)initWithEncryptedData:(id)a3 changeType:(int)a4 deleteType:(int)a5
{
  v8 = a3;
  v15.receiver = self;
  v15.super_class = CKDAnonymousZoneDataObject;
  v11 = [(CKDAnonymousZoneDataObject *)&v15 init];
  if (v11)
  {
    v12 = objc_msgSend_copy(v8, v9, v10);
    encryptedTupleData = v11->_encryptedTupleData;
    v11->_encryptedTupleData = v12;

    v11->_changeType = a4;
    v11->_deleteType = a5;
  }

  return v11;
}

@end