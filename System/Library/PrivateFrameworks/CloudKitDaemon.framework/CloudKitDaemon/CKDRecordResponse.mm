@interface CKDRecordResponse
- (CKDRecordResponse)initWithRecordID:(id)d record:(id)record etag:(id)etag;
- (id)CKPropertiesDescription;
@end

@implementation CKDRecordResponse

- (CKDRecordResponse)initWithRecordID:(id)d record:(id)record etag:(id)etag
{
  dCopy = d;
  recordCopy = record;
  etagCopy = etag;
  v21.receiver = self;
  v21.super_class = CKDRecordResponse;
  v13 = [(CKDRecordResponse *)&v21 init];
  if (v13)
  {
    v14 = objc_msgSend_copy(dCopy, v11, v12);
    recordID = v13->_recordID;
    v13->_recordID = v14;

    objc_storeStrong(&v13->_record, record);
    v18 = objc_msgSend_copy(etagCopy, v16, v17);
    etag = v13->_etag;
    v13->_etag = v18;
  }

  return v13;
}

- (id)CKPropertiesDescription
{
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_msgSend_recordID(self, a2, v2);
  v8 = objc_msgSend_etag(self, v6, v7);
  v12 = objc_msgSend_record(self, v9, v10);
  v13 = @"true";
  if (!v12)
  {
    v13 = @"false";
  }

  v14 = objc_msgSend_stringWithFormat_(v4, v11, @"recordID=%@, etag=%@, hasRecord=%@", v5, v8, v13);

  return v14;
}

@end