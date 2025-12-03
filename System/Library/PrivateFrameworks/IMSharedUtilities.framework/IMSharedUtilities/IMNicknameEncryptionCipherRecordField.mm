@interface IMNicknameEncryptionCipherRecordField
+ (id)cipherRecordFieldWithFieldName:(id)name dataRepresentation:(id)representation error:(id *)error;
- (IMNicknameEncryptionCipherRecordField)initWithFieldName:(id)name cipherData:(id)data IV:(id)v tag:(id)tag;
- (id)dataRepresentationWithError:(id *)error;
- (id)description;
@end

@implementation IMNicknameEncryptionCipherRecordField

+ (id)cipherRecordFieldWithFieldName:(id)name dataRepresentation:(id)representation error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  representationCopy = representation;
  v9 = [MEMORY[0x1E696AE40] propertyListWithData:representationCopy options:0 format:0 error:error];
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
          if (error)
          {
            v13 = *error;
          }

          else
          {
            v13 = 0;
          }

          v24 = 138412802;
          v25 = v13;
          v26 = 2112;
          v27 = nameCopy;
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
      v17 = [IMNicknameEncryptionFieldTag tagWithDataRepresentation:v16 error:error];
      if (v17)
      {
        v18 = [v10 objectForKey:@"i"];
        v19 = [v10 objectForKey:@"d"];
        v20 = [[IMNicknameEncryptionCipherRecordField alloc] initWithFieldName:nameCopy cipherData:v19 IV:v18 tag:v17];
      }

      else
      {
        if (IMOSLoggingEnabled())
        {
          v21 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            if (error)
            {
              v22 = *error;
            }

            else
            {
              v22 = 0;
            }

            v24 = 138413058;
            v25 = v22;
            v26 = 2112;
            v27 = nameCopy;
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
        if (error)
        {
          v15 = *error;
        }

        else
        {
          v15 = 0;
        }

        v24 = 138412802;
        v25 = v15;
        v26 = 2112;
        v27 = nameCopy;
        v28 = 2112;
        v29 = representationCopy;
        _os_log_impl(&dword_1A85E5000, v14, OS_LOG_TYPE_INFO, "Failed to parse cipherField dataRepresentation -- nickname decryption failed {error: %@, fieldName: %@, dataRepresentation: %@}", &v24, 0x20u);
      }
    }

    v20 = 0;
  }

  return v20;
}

- (IMNicknameEncryptionCipherRecordField)initWithFieldName:(id)name cipherData:(id)data IV:(id)v tag:(id)tag
{
  nameCopy = name;
  dataCopy = data;
  vCopy = v;
  tagCopy = tag;
  v18.receiver = self;
  v18.super_class = IMNicknameEncryptionCipherRecordField;
  v15 = [(IMNicknameEncryptionCipherRecordField *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_fieldName, name);
    objc_storeStrong(&v16->_cipherData, data);
    objc_storeStrong(&v16->_IV, v);
    objc_storeStrong(&v16->_fieldTag, tag);
  }

  return v16;
}

- (id)dataRepresentationWithError:(id *)error
{
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = [(IMNicknameEncryptionCipherRecordField *)self IV];
  [v5 setObject:v6 forKey:@"i"];

  cipherData = [(IMNicknameEncryptionCipherRecordField *)self cipherData];
  [v5 setObject:cipherData forKey:@"d"];

  fieldTag = [(IMNicknameEncryptionCipherRecordField *)self fieldTag];
  dataRepresentation = [fieldTag dataRepresentation];
  [v5 setObject:dataRepresentation forKey:@"t"];

  v10 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:200 options:0 error:error];

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  fieldName = [(IMNicknameEncryptionCipherRecordField *)self fieldName];
  cipherData = [(IMNicknameEncryptionCipherRecordField *)self cipherData];
  v7 = [(IMNicknameEncryptionCipherRecordField *)self IV];
  fieldTag = [(IMNicknameEncryptionCipherRecordField *)self fieldTag];
  v9 = [v3 stringWithFormat:@"<%@: %p recordKey: %@, cipherData: %@, IV: %@, tag: %@>", v4, self, fieldName, cipherData, v7, fieldTag];

  return v9;
}

@end