@interface MSSaveEmail
+ (void)deletePlaceholderAttachmentForURL:(id)l completionBlock:(id)block;
+ (void)placeholderAttachmentForFileName:(id)name fileSize:(int64_t)size mimeType:(id)type contentID:(id)d completionBlock:(id)block;
+ (void)saveEmail:(id)email completionBlock:(id)block;
+ (void)saveMessageData:(id)data forAccountWithID:(id)d autosaveIdentifier:(id)identifier completionBlock:(id)block;
+ (void)securityScopeForPlaceholderURL:(id)l completionBlock:(id)block;
- (void)_saveEmail:(id)email completionBlock:(id)block;
- (void)_saveMessageData:(id)data forAccountWithID:(id)d autosaveIdentifier:(id)identifier completionBlock:(id)block;
- (void)_simulateServicesMethod:(id)method arguments:(id)arguments callback:(id)callback;
@end

@implementation MSSaveEmail

+ (void)saveMessageData:(id)data forAccountWithID:(id)d autosaveIdentifier:(id)identifier completionBlock:(id)block
{
  dataCopy = data;
  dCopy = d;
  identifierCopy = identifier;
  blockCopy = block;
  v12 = objc_alloc_init(MSSaveEmail);
  [(MSSaveEmail *)v12 _saveMessageData:dataCopy forAccountWithID:dCopy autosaveIdentifier:identifierCopy completionBlock:blockCopy];
}

+ (void)saveEmail:(id)email completionBlock:(id)block
{
  emailCopy = email;
  blockCopy = block;
  v6 = objc_alloc_init(MSSaveEmail);
  [(MSSaveEmail *)v6 _saveEmail:emailCopy completionBlock:blockCopy];
}

- (void)_saveEmail:(id)email completionBlock:(id)block
{
  v16 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  v7 = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:email requiringSecureCoding:1 error:0];
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionaryWithObject:v8 forKey:@"email"];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __42__MSSaveEmail__saveEmail_completionBlock___block_invoke;
    v12[3] = &unk_1E855E998;
    v13 = blockCopy;
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
    (*(blockCopy + 2))(blockCopy, 0, v9);
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

- (void)_saveMessageData:(id)data forAccountWithID:(id)d autosaveIdentifier:(id)identifier completionBlock:(id)block
{
  dataCopy = data;
  dCopy = d;
  identifierCopy = identifier;
  blockCopy = block;
  if (!dataCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSSaveEmail.m" lineNumber:67 description:{@"Invalid parameter not satisfying: %@", @"messageData"}];
  }

  v15 = objc_autoreleasePoolPush();
  v16 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{dataCopy, @"RFC822Data", dCopy, @"UniqueID", identifierCopy, @"autosaveidentifier", 0}];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __84__MSSaveEmail__saveMessageData_forAccountWithID_autosaveIdentifier_completionBlock___block_invoke;
  v19[3] = &unk_1E855E998;
  v17 = blockCopy;
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

- (void)_simulateServicesMethod:(id)method arguments:(id)arguments callback:(id)callback
{
  v15[1] = *MEMORY[0x1E69E9840];
  methodCopy = method;
  argumentsCopy = arguments;
  callbackCopy = callback;
  if ([methodCopy isEqualToString:@"MailSaveMessage"])
  {
    v14 = @"success";
    v15[0] = &unk_1F541F278;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    callbackCopy[2](callbackCopy, v11, 0);
  }

  else
  {
    v13.receiver = self;
    v13.super_class = MSSaveEmail;
    [(MSService *)&v13 _simulateServicesMethod:methodCopy arguments:argumentsCopy callback:callbackCopy];
  }

  v12 = *MEMORY[0x1E69E9840];
}

+ (void)placeholderAttachmentForFileName:(id)name fileSize:(int64_t)size mimeType:(id)type contentID:(id)d completionBlock:(id)block
{
  nameCopy = name;
  typeCopy = type;
  dCopy = d;
  blockCopy = block;
  if (nameCopy)
  {
    if (size)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSSaveEmail.m" lineNumber:100 description:{@"Invalid parameter not satisfying: %@", @"fileName"}];

    if (size)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"MSSaveEmail.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"fileSize"}];

LABEL_3:
  if (!dCopy)
  {
    dCopy = &stru_1F541BFA8;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = objc_alloc_init(MSSaveEmail);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  [dictionary setObject:&unk_1F541F290 forKeyedSubscript:@"MSAttachmentRequestKeyOperation"];
  [dictionary setObject:nameCopy forKeyedSubscript:@"MSAttachmentRequestKeyNameType"];
  v20 = [MEMORY[0x1E696AD98] numberWithInteger:size];
  [dictionary setObject:v20 forKeyedSubscript:@"MSAttachmentRequestKeySizeType"];

  if (typeCopy)
  {
    [dictionary setObject:typeCopy forKeyedSubscript:@"MSAttachmentRequestKeyMimeType"];
  }

  [dictionary setObject:dCopy forKeyedSubscript:@"MSAttachmentRequestKeyContentID"];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __92__MSSaveEmail_placeholderAttachmentForFileName_fileSize_mimeType_contentID_completionBlock___block_invoke;
  v24[3] = &unk_1E855E998;
  v21 = blockCopy;
  v25 = v21;
  [(MSService *)v18 _callServicesMethod:@"MSAttachmentRequest" arguments:dictionary callback:v24];

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

+ (void)deletePlaceholderAttachmentForURL:(id)l completionBlock:(id)block
{
  v18[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  blockCopy = block;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSSaveEmail.m" lineNumber:133 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc_init(MSSaveEmail);
  v17[0] = @"MSAttachmentRequestKeyOperation";
  v17[1] = @"MSAttachmentRequestKeyURL";
  v18[0] = &unk_1F541F2A8;
  v18[1] = lCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __65__MSSaveEmail_deletePlaceholderAttachmentForURL_completionBlock___block_invoke;
  v15[3] = &unk_1E855E998;
  v12 = blockCopy;
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

+ (void)securityScopeForPlaceholderURL:(id)l completionBlock:(id)block
{
  v18[2] = *MEMORY[0x1E69E9840];
  lCopy = l;
  blockCopy = block;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"MSSaveEmail.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"url"}];
  }

  v9 = objc_autoreleasePoolPush();
  v10 = objc_alloc_init(MSSaveEmail);
  v17[0] = @"MSAttachmentRequestKeyOperation";
  v17[1] = @"MSAttachmentRequestKeyURL";
  v18[0] = &unk_1F541F2C0;
  v18[1] = lCopy;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __62__MSSaveEmail_securityScopeForPlaceholderURL_completionBlock___block_invoke;
  v15[3] = &unk_1E855E998;
  v12 = blockCopy;
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