@interface IMNicknameEncryptionPreKey
+ (id)generatePreKeyWithError:(id *)a3;
+ (id)preKeyWithDataRepresentation:(id)a3 error:(id *)a4;
- (IMNicknameEncryptionPreKey)initWithGeneratedData:(id)a3 derivedData:(id)a4;
- (IMNicknameFieldEncryptionKey)fieldEncryptionKey;
- (IMNicknameFieldTaggingKey)fieldTaggingKey;
- (IMNicknameRecordTaggingKey)recordTaggingKey;
@end

@implementation IMNicknameEncryptionPreKey

+ (id)generatePreKeyWithError:(id *)a3
{
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Generating new IMNicknameEncryptionPreKey", v9, 2u);
    }
  }

  v6 = [IMNicknameEncryptionHelpers _randomBytesWithLength:16 error:a3];
  if (v6)
  {
    v7 = [a1 preKeyWithDataRepresentation:v6 error:a3];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)preKeyWithDataRepresentation:(id)a3 error:(id *)a4
{
  v26[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [MEMORY[0x1E695DF88] dataWithLength:48];
  if (CCKDFParametersCreateHkdf())
  {
    if (a4)
    {
      v8 = MEMORY[0x1E696ABC0];
      v25 = *MEMORY[0x1E696A278];
      v26[0] = @"Failed to create key derivation parameters";
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:&v25 count:1];
      *a4 = [v8 errorWithDomain:@"IMNicknameEncryptionHelpersErrorDomain" code:-2000 userInfo:v9];
    }

    if (IMOSLoggingEnabled())
    {
      v10 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = *a4;
        *buf = 138412290;
        v24 = v11;
        _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Failed to create derivation parameters {error: %@}", buf, 0xCu);
      }
    }

LABEL_15:
    v19 = 0;
    goto LABEL_16;
  }

  v12 = v6;
  [v6 bytes];
  [v6 length];
  v13 = v7;
  [v7 mutableBytes];
  [v7 length];
  v14 = CCDeriveKey();
  CCKDFParametersDestroy();
  if (v14)
  {
    if (a4)
    {
      v15 = MEMORY[0x1E696ABC0];
      v21 = *MEMORY[0x1E696A278];
      v22 = @"Failed to derive encryption/signing keys";
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v22 forKeys:&v21 count:1];
      *a4 = [v15 errorWithDomain:@"IMNicknameEncryptionHelpersErrorDomain" code:-2000 userInfo:v16];
    }

    if (IMOSLoggingEnabled())
    {
      v17 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = *a4;
        *buf = 138412290;
        v24 = v18;
        _os_log_impl(&dword_1A85E5000, v17, OS_LOG_TYPE_INFO, "Failed to create preKey from data representation {error: %@}", buf, 0xCu);
      }
    }

    goto LABEL_15;
  }

  v19 = [[a1 alloc] initWithGeneratedData:v6 derivedData:v7];
LABEL_16:

  return v19;
}

- (IMNicknameEncryptionPreKey)initWithGeneratedData:(id)a3 derivedData:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = IMNicknameEncryptionPreKey;
  v9 = [(IMNicknameEncryptionPreKey *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_generatedData, a3);
    objc_storeStrong(&v10->_derivedData, a4);
  }

  return v10;
}

- (IMNicknameFieldEncryptionKey)fieldEncryptionKey
{
  v2 = [(IMNicknameEncryptionPreKey *)self _subDerivedKeyDataAtIndex:0];
  v3 = [(IMNicknameEncryptionKey *)[IMNicknameFieldEncryptionKey alloc] initWithData:v2];

  return v3;
}

- (IMNicknameFieldTaggingKey)fieldTaggingKey
{
  v2 = [(IMNicknameEncryptionPreKey *)self _subDerivedKeyDataAtIndex:1];
  v3 = [(IMNicknameEncryptionKey *)[IMNicknameFieldTaggingKey alloc] initWithData:v2];

  return v3;
}

- (IMNicknameRecordTaggingKey)recordTaggingKey
{
  v2 = [(IMNicknameEncryptionPreKey *)self _subDerivedKeyDataAtIndex:2];
  v3 = [(IMNicknameEncryptionKey *)[IMNicknameRecordTaggingKey alloc] initWithData:v2];

  return v3;
}

@end