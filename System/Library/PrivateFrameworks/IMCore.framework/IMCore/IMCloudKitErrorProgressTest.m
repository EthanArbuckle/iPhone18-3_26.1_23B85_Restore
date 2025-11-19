@interface IMCloudKitErrorProgressTest
- (IMCloudKitErrorProgressTest)initWithErrorCode:(int64_t)a3;
- (void)willUpdateSyncState:(id)a3;
@end

@implementation IMCloudKitErrorProgressTest

- (IMCloudKitErrorProgressTest)initWithErrorCode:(int64_t)a3
{
  v9.receiver = self;
  v9.super_class = IMCloudKitErrorProgressTest;
  v5 = [(IMCloudKitErrorProgressTest *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend_errorWithDomain_code_userInfo_(MEMORY[0x1E696ABC0], v4, *MEMORY[0x1E69A6DD0], a3, 0);
    error = v5->_error;
    v5->_error = v6;
  }

  return v5;
}

- (void)willUpdateSyncState:(id)a3
{
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696ABC0];
  v5 = a3;
  v8 = objc_msgSend_error(self, v6, v7);
  v15[0] = v8;
  v10 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x1E695DEC8], v9, v15, 1);
  v12 = objc_msgSend_serializedErrorArrayFromErrorArray_im_(v4, v11, v10);
  objc_msgSend_setIMCloudKitSyncErrors_(v5, v13, v12);

  v14 = *MEMORY[0x1E69E9840];
}

@end