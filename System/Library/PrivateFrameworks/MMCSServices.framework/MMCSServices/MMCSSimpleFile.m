@interface MMCSSimpleFile
- (MMCSSimpleFile)init;
- (id)description;
- (void)dealloc;
@end

@implementation MMCSSimpleFile

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  authToken = self->_authToken;
  return objc_msgSend_stringWithFormat_(v3, v7, @"[%@: guid: %@  item id: %qx  path: %@  fd: %d token: %@   requestor ID: %@  request url: %@ signature: %@  progress: %f file size: %llu]", v8, v9, v5, self->_guid, self->_itemID, self->_localPath, self->_fd, authToken, self->_requestorID, self->_requestURL, self->_signature, *&self->_progress, self->_protocolFileSize);
}

- (MMCSSimpleFile)init
{
  v12.receiver = self;
  v12.super_class = MMCSSimpleFile;
  v6 = [(MMCSSimpleFile *)&v12 init];
  if (v6)
  {
    v7 = objc_msgSend_stringGUID(MEMORY[0x277CCACA8], v2, v3, v4, v5);
    objc_msgSend_setGuid_(v6, v8, v7, v9, v10);
  }

  return v6;
}

- (void)dealloc
{
  objc_msgSend_setLocalPath_(self, a2, 0, v2, v3);
  objc_msgSend_setRequestorID_(self, v5, 0, v6, v7);
  objc_msgSend_setRequestURL_(self, v8, 0, v9, v10);
  objc_msgSend_setFileHash_(self, v11, 0, v12, v13);
  objc_msgSend_setSignature_(self, v14, 0, v15, v16);
  objc_msgSend_setAuthToken_(self, v17, 0, v18, v19);
  objc_msgSend_setMMCSError_(self, v20, 0, v21, v22);

  v23.receiver = self;
  v23.super_class = MMCSSimpleFile;
  [(MMCSSimpleFile *)&v23 dealloc];
}

@end