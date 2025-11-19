@interface IMAttachment
- (IMAttachment)initWithPath:(id)a3 guid:(id)a4 createdDate:(id)a5 isSticker:(BOOL)a6 isTransferComplete:(BOOL)a7;
- (NSString)path;
- (id)description;
- (id)fileTransfer;
@end

@implementation IMAttachment

- (IMAttachment)initWithPath:(id)a3 guid:(id)a4 createdDate:(id)a5 isSticker:(BOOL)a6 isTransferComplete:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v25.receiver = self;
  v25.super_class = IMAttachment;
  v17 = [(IMAttachment *)&v25 init];
  if (v17)
  {
    v18 = objc_msgSend_copy(v12, v15, v16);
    path = v17->_path;
    v17->_path = v18;

    v22 = objc_msgSend_copy(v13, v20, v21);
    guid = v17->_guid;
    v17->_guid = v22;

    v17->_isSticker = a6;
    objc_storeStrong(&v17->_createdDate, a5);
    v17->_isTransferComplete = a7;
  }

  return v17;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v15.receiver = self;
  v15.super_class = IMAttachment;
  v4 = [(IMAttachment *)&v15 description];
  guid = self->_guid;
  v8 = objc_msgSend_path(self, v6, v7);
  v11 = objc_msgSend_fileTransfer(self, v9, v10);
  v13 = objc_msgSend_stringWithFormat_(v3, v12, @"%@ - guid: %@ path: %@ fileTransfer: %@, createdDate = %@, isSticker = %d", v4, guid, v8, v11, self->_createdDate, self->_isSticker);

  return v13;
}

- (NSString)path
{
  path = self->_path;
  if (path)
  {
    v4 = path;
  }

  else
  {
    v5 = objc_msgSend_fileTransfer(self, a2, v2);
    v4 = objc_msgSend_localPath(v5, v6, v7);
  }

  return v4;
}

- (id)fileTransfer
{
  v4 = objc_msgSend_sharedInstance(IMFileTransferCenter, a2, v2);
  v6 = objc_msgSend_transferForGUID_(v4, v5, self->_guid);

  return v6;
}

@end