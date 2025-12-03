@interface IMAttachment
- (IMAttachment)initWithPath:(id)path guid:(id)guid createdDate:(id)date isSticker:(BOOL)sticker isTransferComplete:(BOOL)complete;
- (NSString)path;
- (id)description;
- (id)fileTransfer;
@end

@implementation IMAttachment

- (IMAttachment)initWithPath:(id)path guid:(id)guid createdDate:(id)date isSticker:(BOOL)sticker isTransferComplete:(BOOL)complete
{
  pathCopy = path;
  guidCopy = guid;
  dateCopy = date;
  v25.receiver = self;
  v25.super_class = IMAttachment;
  v17 = [(IMAttachment *)&v25 init];
  if (v17)
  {
    v18 = objc_msgSend_copy(pathCopy, v15, v16);
    path = v17->_path;
    v17->_path = v18;

    v22 = objc_msgSend_copy(guidCopy, v20, v21);
    guid = v17->_guid;
    v17->_guid = v22;

    v17->_isSticker = sticker;
    objc_storeStrong(&v17->_createdDate, date);
    v17->_isTransferComplete = complete;
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