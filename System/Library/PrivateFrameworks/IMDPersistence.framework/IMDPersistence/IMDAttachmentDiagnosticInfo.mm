@interface IMDAttachmentDiagnosticInfo
- (id)description;
@end

@implementation IMDAttachmentDiagnosticInfo

- (id)description
{
  v34 = MEMORY[0x1E696AEC0];
  v35.receiver = self;
  v35.super_class = IMDAttachmentDiagnosticInfo;
  v3 = [(IMDAttachmentDiagnosticInfo *)&v35 description];
  v6 = objc_msgSend_guid(self, v4, v5);
  v9 = objc_msgSend_total_bytes(self, v7, v8);
  objc_msgSend_ck_sync_state(self, v10, v11);
  v12 = IMStringFromCKSyncState();
  objc_msgSend_transfer_state(self, v13, v14);
  v15 = IMStringFromTransferState();
  v18 = objc_msgSend_uti(self, v16, v17);
  v21 = objc_msgSend_filePath(self, v19, v20);
  if (objc_msgSend_is_sticker(self, v22, v23))
  {
    v26 = @"YES";
  }

  else
  {
    v26 = @"NO";
  }

  v27 = objc_msgSend_mime_type(self, v24, v25);
  v30 = objc_msgSend_plugin_identifier(self, v28, v29);
  v32 = objc_msgSend_stringWithFormat_(v34, v31, @"%@: guid: %@, total_bytes: %lld, ck_sync_state: %@, transfer_state: %@, uti: %@, file path: %@, is_sticker: %@, mime_type: %@, plugin_identifier: %@", v3, v6, v9, v12, v15, v18, v21, v26, v27, v30);

  return v32;
}

@end