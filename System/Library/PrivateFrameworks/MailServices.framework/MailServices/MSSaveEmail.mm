@interface MSSaveEmail
+ (void)deletePlaceholderAttachmentForURL:(id)a3 completionBlock:(id)a4;
+ (void)placeholderAttachmentForFileName:(id)a3 fileSize:(int64_t)a4 mimeType:(id)a5 contentID:(id)a6 completionBlock:(id)a7;
+ (void)saveEmail:(id)a3 completionBlock:(id)a4;
+ (void)saveMessageData:(id)a3 forAccountWithID:(id)a4 autosaveIdentifier:(id)a5 completionBlock:(id)a6;
+ (void)securityScopeForPlaceholderURL:(id)a3 completionBlock:(id)a4;
- (void)_saveEmail:(id)a3 completionBlock:(id)a4;
- (void)_saveMessageData:(id)a3 forAccountWithID:(id)a4 autosaveIdentifier:(id)a5 completionBlock:(id)a6;
- (void)_simulateServicesMethod:(id)a3 arguments:(id)a4 callback:(id)a5;
@end

@implementation MSSaveEmail

+ (void)saveMessageData:(id)a3 forAccountWithID:(id)a4 autosaveIdentifier:(id)a5 completionBlock:(id)a6
{
  v13 = a3;
  v9 = a4;
  v10 = a5;
  v11 = a6;
  v12 = objc_alloc_init(MSSaveEmail);
  [(MSSaveEmail *)v12 _saveMessageData:v13 forAccountWithID:v9 autosaveIdentifier:v10 completionBlock:v11];
}

+ (void)saveEmail:(id)a3 completionBlock:(id)a4
{
  v7 = a3;
  v5 = a4;
  v6 = objc_alloc_init(MSSaveEmail);
  [(MSSaveEmail *)v6 _saveEmail:v7 completionBlock:v5];
}

- (void)_saveEmail:(id)a3 completionBlock:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a3 requiringSecureCoding:1 error:0];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithObject:v8 forKey:@"email"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__MSSaveEmail__saveEmail_completionBlock___block_invoke;
    v12[3] = &unk_1E855E998;
    v13 = v6;
    [(MSService *)self _callServicesMethod:@"SaveEmail" arguments:v9 callback:v12];
  }

  else
  {
    v10 = MFLogGeneral();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v15 = [0 length];
      _os_log_impl(&dword_1D876A000, v10, OS_LOG_TYPE_DEFAULT, "#Warning Unable to unarchive model data with length %lu", buf, 0xCu);
    }

    v9 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:0];
    (*(v6 + 2))(v6, 0, v9);
  }

  objc_autoreleasePoolPop(v7);
  v11 = *MEMORY[0x1E69E9840];
}

void __42__MSSaveEmail__saveEmail_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [v7 objectForKey:@"messageid"];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)_saveMessageData:(id)a3 forAccountWithID:(id)a4 autosaveIdentifier:(id)a5 completionBlock:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"MSSaveEmail.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"messageData"}];
  }

  v15 = objc_autoreleasePoolPush();
  v16 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{v11, @"RFC822Data", v12, @"UniqueID", v13, @"autosaveidentifier", 0}];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84__MSSaveEmail__saveMessageData_forAccountWithID_autosaveIdentifier_completionBlock___block_invoke;
  v19[3] = &unk_1E855E998;
  v17 = v14;
  v20 = v17;
  [(MSService *)self _callServicesMethod:@"MailSaveMessage" arguments:v16 callback:v19];

  objc_autoreleasePoolPop(v15);
}

void __84__MSSaveEmail__saveMessageData_forAccountWithID_autosaveIdentifier_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if (v7)
  {
    v6 = [v7 objectForKey:@"success"];
    [v6 BOOLValue];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_simulateServicesMethod:(id)a3 arguments:(id)a4 callback:(id)a5
{
  v15[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 isEqualToString:@"MailSaveMessage"])
  {
    v14 = @"success";
    v15[0] = &unk_1F541F278;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10[2](v10, v11, 0);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MSSaveEmail;
    [(MSService *)&v13 _simulateServicesMethod:v8 arguments:v9 callback:v10];
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)placeholderAttachmentForFileName:(id)a3 fileSize:(int64_t)a4 mimeType:(id)a5 contentID:(id)a6 completionBlock:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (v13)
  {
    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:a1 file:@"MSSaveEmail.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"fileName"}];

    if (a4)
    {
      goto LABEL_3;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:a1 file:@"MSSaveEmail.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"fileSize"}];

LABEL_3:
  if (!v15)
  {
    v15 = &stru_1F541BFA8;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = objc_alloc_init(MSSaveEmail);
  v19 = [MEMORY[0x1E695DF90] dictionary];
  [v19 setObject:&unk_1F541F290 forKeyedSubscript:@"MSAttachmentRequestKeyOperation"];
  [v19 setObject:v13 forKeyedSubscript:@"MSAttachmentRequestKeyNameType"];
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v19 setObject:v20 forKeyedSubscript:@"MSAttachmentRequestKeySizeType"];

  if (v14)
  {
    [v19 setObject:v14 forKeyedSubscript:@"MSAttachmentRequestKeyMimeType"];
  }

  [v19 setObject:v15 forKeyedSubscript:@"MSAttachmentRequestKeyContentID"];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __92__MSSaveEmail_placeholderAttachmentForFileName_fileSize_mimeType_contentID_completionBlock___block_invoke;
  v24[3] = &unk_1E855E998;
  v21 = v16;
  v25 = v21;
  [(MSService *)v18 _callServicesMethod:@"MSAttachmentRequest" arguments:v19 callback:v24];

  objc_autoreleasePoolPop(v17);
}

void __92__MSSaveEmail_placeholderAttachmentForFileName_fileSize_mimeType_contentID_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 objectForKey:@"MSAttachmentResponse"];
    if (!v7)
    {
      v8 = MFLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1D876A000, v8, OS_LOG_TYPE_DEFAULT, "#Warning Attachment NSData failure to persist", v10, 2u);
      }
    }

    v9 = [v7 objectForKey:@"MSAttachmentResponseKeyData"];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

+ (void)deletePlaceholderAttachmentForURL:(id)a3 completionBlock:(id)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"MSSaveEmail.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc_init(MSSaveEmail);
  v17[0] = @"MSAttachmentRequestKeyOperation";
  v17[1] = @"MSAttachmentRequestKeyURL";
  v18[0] = &unk_1F541F2A8;
  v18[1] = v7;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__MSSaveEmail_deletePlaceholderAttachmentForURL_completionBlock___block_invoke;
  v15[3] = &unk_1E855E998;
  v12 = v8;
  v16 = v12;
  [(MSService *)v10 _callServicesMethod:@"MSAttachmentRequest" arguments:v11 callback:v15];

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x1E69E9840];
}

void __65__MSSaveEmail_deletePlaceholderAttachmentForURL_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 objectForKey:@"MSAttachmentResponse"];
    if (!v7)
    {
      v8 = MFLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1D876A000, v8, OS_LOG_TYPE_DEFAULT, "#Warning Attachment URL failure to remove", v10, 2u);
      }
    }

    v9 = [v7 objectForKey:@"MSAttachmentResponseKeyError"];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

+ (void)securityScopeForPlaceholderURL:(id)a3 completionBlock:(id)a4
{
  v18[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:a1 file:@"MSSaveEmail.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc_init(MSSaveEmail);
  v17[0] = @"MSAttachmentRequestKeyOperation";
  v17[1] = @"MSAttachmentRequestKeyURL";
  v18[0] = &unk_1F541F2C0;
  v18[1] = v7;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__MSSaveEmail_securityScopeForPlaceholderURL_completionBlock___block_invoke;
  v15[3] = &unk_1E855E998;
  v12 = v8;
  v16 = v12;
  [(MSService *)v10 _callServicesMethod:@"MSAttachmentRequest" arguments:v11 callback:v15];

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x1E69E9840];
}

void __62__MSSaveEmail_securityScopeForPlaceholderURL_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 objectForKey:@"MSAttachmentResponse"];
    if (!v7)
    {
      v8 = MFLogGeneral();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_1D876A000, v8, OS_LOG_TYPE_DEFAULT, "#Warning Attachment URL failure to remove", v10, 2u);
      }
    }

    v9 = [v7 objectForKey:@"MSAttachmentResponseKeyData"];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

@end