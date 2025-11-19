@interface IMNicknameEncryptionCipherRecordField
+ (id)cipherRecordFieldWithFieldName:(id)a3 dataRepresentation:(id)a4 error:(id *)a5;
- (IMNicknameEncryptionCipherRecordField)initWithFieldName:(id)a3 cipherData:(id)a4 IV:(id)a5 tag:(id)a6;
- (id)dataRepresentationWithError:(id *)a3;
- (id)description;
@end

@implementation IMNicknameEncryptionCipherRecordField

+ (id)cipherRecordFieldWithFieldName:(id)a3 dataRepresentation:(id)a4 error:(id *)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:0 format:0 error:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKey:@"v"];
    if (v11)
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          if (a5)
          {
            v13 = *a5;
          }

          else
          {
            v13 = 0;
          }

          v24 = 138412802;
          v25 = v13;
          v26 = 2112;
          v27 = v7;
          v28 = 2112;
          v29 = v10;
          _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Unsupported cipherField version -- nickname decryption failed {error: %@, fieldName: %@, dictionaryRepresentation: %@}", &v24, 0x20u);
        }
      }

      v20 = 0;
    }

    else
    {
      v16 = [v10 objectForKey:@"t"];
      v17 = [IMNicknameEncryptionFieldTag tagWithDataRepresentation:v16 error:a5];
      if (v17)
      {
        v18 = [v10 objectForKey:@"i"];
        v19 = [v10 objectForKey:@"d"];
        v20 = [[IMNicknameEncryptionCipherRecordField alloc] initWithFieldName:v7 cipherData:v19 IV:v18 tag:v17];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            if (a5)
            {
              v22 = *a5;
            }

            else
            {
              v22 = 0;
            }

            v24 = 138413058;
            v25 = v22;
            v26 = 2112;
            v27 = v7;
            v28 = 2112;
            v29 = v16;
            v30 = 2112;
            v31 = v10;
            _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "Failed to get tag from tagData {error: %@, fieldName: %@, tagData: %@, dictionaryRepresentation: %@}", &v24, 0x2Au);
          }
        }

        v20 = 0;
      }
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        if (a5)
        {
          v15 = *a5;
        }

        else
        {
          v15 = 0;
        }

        v24 = 138412802;
        v25 = v15;
        v26 = 2112;
        v27 = v7;
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Failed to parse cipherField dataRepresentation -- nickname decryption failed {error: %@, fieldName: %@, dataRepresentation: %@}", &v24, 0x20u);
      }
    }

    v20 = 0;
  }

  return v20;
}

- (IMNicknameEncryptionCipherRecordField)initWithFieldName:(id)a3 cipherData:(id)a4 IV:(id)a5 tag:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = IMNicknameEncryptionCipherRecordField;
  v15 = [(IMNicknameEncryptionCipherRecordField *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fieldName, a3);
    objc_storeStrong(&v16->_cipherData, a4);
    objc_storeStrong(&v16->_IV, a5);
    objc_storeStrong(&v16->_fieldTag, a6);
  }

  return v16;
}

- (id)dataRepresentationWithError:(id *)a3
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(IMNicknameEncryptionCipherRecordField *)self IV];
  [v5 setObject:v6 forKey:@"i"];

  v7 = [(IMNicknameEncryptionCipherRecordField *)self cipherData];
  [v5 setObject:v7 forKey:@"d"];

  v8 = [(IMNicknameEncryptionCipherRecordField *)self fieldTag];
  v9 = [v8 dataRepresentation];
  [v5 setObject:v9 forKey:@"t"];

  v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:a3];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(IMNicknameEncryptionCipherRecordField *)self fieldName];
  v6 = [(IMNicknameEncryptionCipherRecordField *)self cipherData];
  v7 = [(IMNicknameEncryptionCipherRecordField *)self IV];
  v8 = [(IMNicknameEncryptionCipherRecordField *)self fieldTag];
  v9 = [v3 stringWithFormat:@"<%@: %p recordKey: %@, cipherData: %@, IV: %@, tag: %@>", v4, self, v5, v6, v7, v8];

  return v9;
}

@end