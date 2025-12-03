@interface IMNicknameEncryptionHelpers
+ (id)_decryptAndVerifyCipherFields:(id)fields withPreKey:(id)key recordTagToVerify:(id)verify error:(id *)error;
+ (id)_decryptCipherField:(id)field withFieldEncryptionKey:(id)key fieldTaggingKey:(id)taggingKey error:(id *)error;
+ (id)_decryptCipherFields:(id)fields withFieldEncryptionKey:(id)key fieldTaggingKey:(id)taggingKey error:(id *)error;
+ (id)_encryptAndTagPlainFields:(id)fields withPreKey:(id)key returningRecordTag:(id *)tag error:(id *)error;
+ (id)_encryptPlainField:(id)field withFieldEncryptionKey:(id)key fieldTaggingKey:(id)taggingKey error:(id *)error;
+ (id)_encryptPlainFields:(id)fields withFieldEncryptionKey:(id)key fieldTaggingKey:(id)taggingKey error:(id *)error;
+ (id)_fieldTagForFieldName:(id)name cipherData:(id)data IV:(id)v fieldTaggingKey:(id)key error:(id *)error;
+ (id)_hmacForData:(id)data key:(id)key;
+ (id)_performOperation:(unsigned int)operation onData:(id)data withFieldEncryptionKey:(id)key iv:(id)iv error:(id *)error;
+ (id)_randomBytesWithLength:(unint64_t)length error:(id *)error;
+ (id)_recordTagForCipherFields:(id)fields recordTaggingKey:(id)key error:(id *)error;
+ (id)_tagForData:(id)data key:(id)key error:(id *)error;
+ (id)decryptAndVerifyCipherFields:(id)fields withPreKey:(id)key recordTagToVerify:(id)verify error:(id *)error;
+ (id)encryptAndTagPlainField:(id)field withPreKey:(id)key returningFieldTag:(id *)tag error:(id *)error;
+ (id)encryptAndTagPlainFields:(id)fields withPreKey:(id)key returningRecordTag:(id *)tag error:(id *)error;
@end

@implementation IMNicknameEncryptionHelpers

+ (id)encryptAndTagPlainFields:(id)fields withPreKey:(id)key returningRecordTag:(id *)tag error:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  keyCopy = key;
  if (!error)
  {
    v35 = 0;
    error = &v35;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      allKeys = [fieldsCopy allKeys];
      *buf = 138412290;
      v37 = allKeys;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Encrypting nickname fields {plainFieldsMap.keys: %@}", buf, 0xCu);
    }
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(fieldsCopy, "count")}];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1A861C398;
  v33[3] = &unk_1E7826298;
  v14 = v13;
  v34 = v14;
  [fieldsCopy enumerateKeysAndObjectsUsingBlock:v33];
  v15 = [self _encryptAndTagPlainFields:v14 withPreKey:keyCopy returningRecordTag:tag error:error];
  v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v15, "count")}];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = v15;
  v18 = [v17 countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v18)
  {
    v19 = *v30;
    while (2)
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = *(*(&v29 + 1) + 8 * i);
        v22 = [v21 dataRepresentationWithError:error];
        if (!v22)
        {

          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = *error;
              *buf = 138412546;
              v37 = v26;
              v38 = 2112;
              v39 = fieldsCopy;
              _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Failed to encrypt nickname record {error: %@, plainFieldsMap: %@}", buf, 0x16u);
            }
          }

          v24 = 0;
          goto LABEL_21;
        }

        fieldName = [v21 fieldName];
        [v16 setObject:v22 forKey:fieldName];
      }

      v18 = [v17 countByEnumeratingWithState:&v29 objects:v40 count:16];
      if (v18)
      {
        continue;
      }

      break;
    }
  }

  v24 = v16;
LABEL_21:

  return v24;
}

+ (id)decryptAndVerifyCipherFields:(id)fields withPreKey:(id)key recordTagToVerify:(id)verify error:(id *)error
{
  v52 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  keyCopy = key;
  verifyCopy = verify;
  if (!error)
  {
    v43 = 0;
    error = &v43;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(fieldsCopy, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  allKeys = [fieldsCopy allKeys];
  v12 = [allKeys countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v12)
  {
    v13 = *v40;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(allKeys);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        v16 = [fieldsCopy objectForKey:v15];
        v17 = [IMNicknameEncryptionCipherRecordField cipherRecordFieldWithFieldName:v15 dataRepresentation:v16 error:error];
        if (!v17)
        {

          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = *error;
              *buf = 138412802;
              v46 = v28;
              v47 = 2112;
              v48 = fieldsCopy;
              v49 = 2112;
              v50 = verifyCopy;
              _os_log_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_INFO, "Failed to create cipherFields from dictionary {error: %@, cipherfieldsMap: %@, tagToVerify: %@}", buf, 0x20u);
            }
          }

          v19 = 0;
          goto LABEL_31;
        }

        [v10 addObject:v17];
      }

      v12 = [allKeys countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = [self _decryptAndVerifyCipherFields:v10 withPreKey:keyCopy recordTagToVerify:verifyCopy error:error];
  if (v18)
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v18, "count")}];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v21)
    {
      v22 = *v36;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v36 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = *(*(&v35 + 1) + 8 * j);
          plainData = [v24 plainData];
          fieldName = [v24 fieldName];
          [v19 setObject:plainData forKey:fieldName];
        }

        v21 = [v20 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v21);
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v29 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = *error;
        *buf = 138412802;
        v46 = v30;
        v47 = 2112;
        v48 = fieldsCopy;
        v49 = 2112;
        v50 = verifyCopy;
        _os_log_impl(&dword_1A85E5000, v29, OS_LOG_TYPE_INFO, "Failed to decrypt cipher fields {error: %@, cipherfieldsMap: %@, tagToVerify: %@}", buf, 0x20u);
      }
    }

    v19 = 0;
  }

LABEL_31:

  return v19;
}

+ (id)_encryptAndTagPlainFields:(id)fields withPreKey:(id)key returningRecordTag:(id *)tag error:(id *)error
{
  keyCopy = key;
  fieldsCopy = fields;
  fieldEncryptionKey = [keyCopy fieldEncryptionKey];
  fieldTaggingKey = [keyCopy fieldTaggingKey];
  v14 = [self _encryptPlainFields:fieldsCopy withFieldEncryptionKey:fieldEncryptionKey fieldTaggingKey:fieldTaggingKey error:error];

  if (v14)
  {
    recordTaggingKey = [keyCopy recordTaggingKey];
    *tag = [self _recordTagForCipherFields:v14 recordTaggingKey:recordTaggingKey error:error];
  }

  return v14;
}

+ (id)encryptAndTagPlainField:(id)field withPreKey:(id)key returningFieldTag:(id *)tag error:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  if (field)
  {
    fieldCopy = field;
    v10 = MEMORY[0x1E695DEC8];
    keyCopy = key;
    fieldCopy2 = field;
    v13 = [v10 arrayWithObjects:&fieldCopy count:1];

    fieldEncryptionKey = [keyCopy fieldEncryptionKey];
    fieldTaggingKey = [keyCopy fieldTaggingKey];

    v16 = [self _encryptPlainFields:v13 withFieldEncryptionKey:fieldEncryptionKey fieldTaggingKey:fieldTaggingKey error:error];

    if (v16 && [v16 count])
    {
      firstObject = [v16 firstObject];
      *tag = [firstObject fieldTag];

      firstObject2 = [v16 firstObject];
    }

    else
    {
      firstObject2 = 0;
    }
  }

  else
  {
    firstObject2 = 0;
  }

  return firstObject2;
}

+ (id)_decryptAndVerifyCipherFields:(id)fields withPreKey:(id)key recordTagToVerify:(id)verify error:(id *)error
{
  v31[1] = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  keyCopy = key;
  verifyCopy = verify;
  if (verifyCopy)
  {
    recordTaggingKey = [keyCopy recordTaggingKey];
    v14 = [self _recordTagForCipherFields:fieldsCopy recordTaggingKey:recordTaggingKey error:error];

    if (v14)
    {
      if ([v14 isEqualToTag:verifyCopy error:error])
      {
        fieldEncryptionKey = [keyCopy fieldEncryptionKey];
        fieldTaggingKey = [keyCopy fieldTaggingKey];
        v17 = [self _decryptCipherFields:fieldsCopy withFieldEncryptionKey:fieldEncryptionKey fieldTaggingKey:fieldTaggingKey error:error];

LABEL_20:
        goto LABEL_21;
      }

      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = *error;
          v24 = 138412802;
          v25 = v22;
          v26 = 2112;
          v27 = v14;
          v28 = 2112;
          v29 = verifyCopy;
          _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "Tag mismatch -- record decryption failed {error: %@, tag: %@, recordTagToVerify: %@}", &v24, 0x20u);
        }

LABEL_18:
      }
    }

    else if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *error;
        v24 = 138412546;
        v25 = v21;
        v26 = 2112;
        v27 = fieldsCopy;
        _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "Failed to compute record tag -- nickname decryption failed {error: %@, cipherFields: %@}", &v24, 0x16u);
      }

      goto LABEL_18;
    }

    v17 = 0;
    goto LABEL_20;
  }

  if (IMOSLoggingEnabled())
  {
    v18 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v24 = 138412290;
      v25 = fieldsCopy;
      _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Missing tag to verify -- Nickname decryption failed {cipherFields: %@}", &v24, 0xCu);
    }
  }

  if (error)
  {
    v19 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A278];
    v31[0] = @"Missing recordTagToVerify";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [v19 errorWithDomain:@"IMNicknameEncryptionHelpersErrorDomain" code:-1000 userInfo:v14];
    *error = v17 = 0;
    goto LABEL_20;
  }

  v17 = 0;
LABEL_21:

  return v17;
}

+ (id)_encryptPlainFields:(id)fields withFieldEncryptionKey:(id)key fieldTaggingKey:(id)taggingKey error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  keyCopy = key;
  taggingKeyCopy = taggingKey;
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(fieldsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = fieldsCopy;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [self _encryptPlainField:*(*(&v23 + 1) + 8 * i) withFieldEncryptionKey:keyCopy fieldTaggingKey:taggingKeyCopy error:{error, v23}];
        if (!v19)
        {

          v21 = 0;
          goto LABEL_11;
        }

        v20 = v19;
        [v13 addObject:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }
  }

  v21 = v13;
LABEL_11:

  return v21;
}

+ (id)_recordTagForCipherFields:(id)fields recordTaggingKey:(id)key error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  v9 = [fields sortedArrayUsingComparator:&unk_1F1BA5808];
  v10 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        fieldTag = [*(*(&v24 + 1) + 8 * i) fieldTag];
        dataRepresentation = [fieldTag dataRepresentation];
        [v10 appendData:dataRepresentation];
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  data = [keyCopy data];
  v19 = [self _tagForData:v10 key:data error:error];

  v20 = [IMNicknameEncryptionRecordTag tagWithDataRepresentation:v19 error:error];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  return v21;
}

+ (id)_encryptPlainField:(id)field withFieldEncryptionKey:(id)key fieldTaggingKey:(id)taggingKey error:(id *)error
{
  v31 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  keyCopy = key;
  taggingKeyCopy = taggingKey;
  v13 = [self _randomBytesWithLength:16 error:error];
  if (v13)
  {
    plainData = [fieldCopy plainData];
    v15 = [self _performOperation:0 onData:plainData withFieldEncryptionKey:keyCopy iv:v13 error:error];

    if (v15)
    {
      fieldName = [fieldCopy fieldName];
      v17 = [self _fieldTagForFieldName:fieldName cipherData:v15 IV:v13 fieldTaggingKey:taggingKeyCopy error:error];

      if (v17)
      {
        v18 = [IMNicknameEncryptionCipherRecordField alloc];
        fieldName2 = [fieldCopy fieldName];
        error = [(IMNicknameEncryptionCipherRecordField *)v18 initWithFieldName:fieldName2 cipherData:v15 IV:v13 tag:v17];
      }

      else if (error)
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = *error;
            v27 = 138412546;
            v28 = v25;
            v29 = 2112;
            v30 = fieldCopy;
            _os_log_impl(&dword_1A85E5000, v24, OS_LOG_TYPE_INFO, "Failed to compute tag -- nickname encryption failed {error: %@, plainField: %@}", &v27, 0x16u);
          }
        }

        error = 0;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = *error;
          v27 = 138412546;
          v28 = v23;
          v29 = 2112;
          v30 = fieldCopy;
          _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Failed to encrypt data -- nickname encryption failed {error: %@, plainField: %@}", &v27, 0x16u);
        }
      }

      error = 0;
    }
  }

  else if (error)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *error;
        v27 = 138412546;
        v28 = v21;
        v29 = 2112;
        v30 = fieldCopy;
        _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "Failed to generate IV -- nickname encryption failed {error: %@, plainField: %@}", &v27, 0x16u);
      }
    }

    error = 0;
  }

  return error;
}

+ (id)_decryptCipherFields:(id)fields withFieldEncryptionKey:(id)key fieldTaggingKey:(id)taggingKey error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  fieldsCopy = fields;
  keyCopy = key;
  taggingKeyCopy = taggingKey;
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(fieldsCopy, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = fieldsCopy;
  v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v15)
  {
    v16 = *v24;
    while (2)
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(v14);
        }

        v18 = [self _decryptCipherField:*(*(&v23 + 1) + 8 * i) withFieldEncryptionKey:keyCopy fieldTaggingKey:taggingKeyCopy error:{error, v23}];
        if (!v18)
        {
          if (IMOSLoggingEnabled())
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = *error;
              *buf = 138412546;
              v28 = v21;
              v29 = 2112;
              v30 = v14;
              _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "Failed to decrypt cipher field {error: %@, cipherField: %@}", buf, 0x16u);
            }
          }

          v19 = 0;
          goto LABEL_15;
        }

        [v13 addObject:v18];
      }

      v15 = [v14 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v19 = v13;
LABEL_15:

  return v19;
}

+ (id)_decryptCipherField:(id)field withFieldEncryptionKey:(id)key fieldTaggingKey:(id)taggingKey error:(id *)error
{
  v38 = *MEMORY[0x1E69E9840];
  fieldCopy = field;
  keyCopy = key;
  taggingKeyCopy = taggingKey;
  fieldName = [fieldCopy fieldName];
  cipherData = [fieldCopy cipherData];
  v15 = [fieldCopy IV];
  v16 = [self _fieldTagForFieldName:fieldName cipherData:cipherData IV:v15 fieldTaggingKey:taggingKeyCopy error:error];

  if (!v16)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = *error;
        v32 = 138412546;
        v33 = v26;
        v34 = 2112;
        v35 = fieldCopy;
        _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Failed to calculate field tag -- nickname decryption failed {error: %@, cipherField: %@}", &v32, 0x16u);
      }

      goto LABEL_12;
    }

LABEL_13:
    v24 = 0;
    goto LABEL_20;
  }

  fieldTag = [fieldCopy fieldTag];
  v18 = [v16 isEqualToTag:fieldTag error:error];

  if ((v18 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v27 = *error;
        v32 = 138412802;
        v33 = v27;
        v34 = 2112;
        v35 = v16;
        v36 = 2112;
        v37 = fieldCopy;
        _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Field tag mismatch -- nickname decryption failed {error: %@, tag: %@, cipherField: %@}", &v32, 0x20u);
      }

LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  cipherData2 = [fieldCopy cipherData];
  v20 = [fieldCopy IV];
  v21 = [self _performOperation:1 onData:cipherData2 withFieldEncryptionKey:keyCopy iv:v20 error:error];

  if (v21)
  {
    v22 = [IMNicknameEncryptionPlainRecordField alloc];
    fieldName2 = [fieldCopy fieldName];
    v24 = [(IMNicknameEncryptionPlainRecordField *)v22 initWithFieldName:fieldName2 plainData:v21];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = *error;
        v30 = [fieldCopy IV];
        v32 = 138412802;
        v33 = v29;
        v34 = 2112;
        v35 = fieldCopy;
        v36 = 2112;
        v37 = v30;
        _os_log_impl(&dword_1A85E5000, v28, OS_LOG_TYPE_INFO, "Decryption operation failed -- nickname decryption failed {error: %@, cipherField: %@, cipherField.IV: %@}", &v32, 0x20u);
      }
    }

    v24 = 0;
  }

LABEL_20:

  return v24;
}

+ (id)_performOperation:(unsigned int)operation onData:(id)data withFieldEncryptionKey:(id)key iv:(id)iv error:(id *)error
{
  v10 = *&operation;
  v51[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  keyCopy = key;
  ivCopy = iv;
  cryptorRef = 0;
  if ([ivCopy length] <= 0xF)
  {
    ivCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"IV too short {IV: %@}", ivCopy];
    v15 = MEMORY[0x1E696ABC0];
    v50 = *MEMORY[0x1E696A278];
    v51[0] = ivCopy;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v51 forKeys:&v50 count:1];
    v17 = [v15 errorWithDomain:@"IMNicknameEncryptionHelpersErrorDomain" code:-1000 userInfo:v16];

    if (IMOSLoggingEnabled())
    {
      v18 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v43 = v17;
        v44 = 1024;
        v45 = v10;
        _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "IV too short -- Failed to perform nickname crypto operation {error: %@, operation: %d}", buf, 0x12u);
      }
    }

    if (error)
    {
      v19 = v17;
      *error = v17;
    }

    goto LABEL_9;
  }

  v21 = CCCryptorCreateWithMode(v10, 4u, 0, 0, [ivCopy bytes], objc_msgSend(keyCopy, "bytes"), objc_msgSend(keyCopy, "length"), 0, 0, 0, 2u, &cryptorRef);
  if (!v21)
  {
    ivCopy = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{CCCryptorGetOutputLength(cryptorRef, objc_msgSend(dataCopy, "length"), 1)}];
    dataOutMoved = 0;
    v26 = cryptorRef;
    v27 = dataCopy;
    bytes = [dataCopy bytes];
    v29 = [dataCopy length];
    v30 = ivCopy;
    v31 = CCCryptorUpdate(v26, bytes, v29, [ivCopy mutableBytes], objc_msgSend(ivCopy, "length"), &dataOutMoved);
    [ivCopy setLength:dataOutMoved];
    if (cryptorRef)
    {
      CCCryptorRelease(cryptorRef);
    }

    if (!v31)
    {
      error = ivCopy;
      goto LABEL_10;
    }

    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Crypto operation failed {operation: %u, retval: %d}", v10, v31];
    v33 = MEMORY[0x1E696ABC0];
    v40 = *MEMORY[0x1E696A278];
    v41 = v32;
    v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
    v35 = [v33 errorWithDomain:@"IMNicknameEncryptionHelpersErrorDomain" code:-2000 userInfo:v34];

    if (IMOSLoggingEnabled())
    {
      v36 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        v43 = v35;
        v44 = 1024;
        v45 = v31;
        v46 = 1024;
        v47 = v10;
        _os_log_impl(&dword_1A85E5000, v36, OS_LOG_TYPE_INFO, "Failed to update cypher -- Failed to perform nickname crypto operation {error: %@, retval: %d, operation: %d}", buf, 0x18u);
      }
    }

    if (error)
    {
      v37 = v35;
      *error = v35;
    }

LABEL_9:
    error = 0;
LABEL_10:

    goto LABEL_11;
  }

  if (error)
  {
    ivCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create Crytpor {operation: %u, retval: %d}", v10, v21];
    v22 = MEMORY[0x1E696ABC0];
    v48 = *MEMORY[0x1E696A278];
    v49 = ivCopy;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    *error = [v22 errorWithDomain:@"IMNicknameEncryptionHelpersErrorDomain" code:-2000 userInfo:v23];

    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = *error;
        *buf = 138412802;
        v43 = v25;
        v44 = 1024;
        v45 = v21;
        v46 = 1024;
        v47 = v10;
        _os_log_impl(&dword_1A85E5000, v24, OS_LOG_TYPE_INFO, "Failed to create cypher -- Failed to perform nickname crypto operation  {error: %@, retval: %d, operation: %d}", buf, 0x18u);
      }
    }

    goto LABEL_9;
  }

LABEL_11:

  return error;
}

+ (id)_fieldTagForFieldName:(id)name cipherData:(id)data IV:(id)v fieldTaggingKey:(id)key error:(id *)error
{
  keyCopy = key;
  vCopy = v;
  dataCopy = data;
  v15 = [name dataUsingEncoding:4];
  v16 = [v15 mutableCopy];

  [v16 appendData:vCopy];
  [v16 appendData:dataCopy];

  data = [keyCopy data];

  v18 = [self _tagForData:v16 key:data error:error];

  v19 = [IMNicknameEncryptionFieldTag tagWithDataRepresentation:v18 error:error];

  return v19;
}

+ (id)_tagForData:(id)data key:(id)key error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  keyCopy = key;
  v10 = [dataCopy length];
  if (error && !v10)
  {
    v11 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A278];
    v16[0] = @"Passed empty data to tag calculation";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *error = [v11 errorWithDomain:@"IMNicknameEncryptionHelpersErrorDomain" code:-1000 userInfo:v12];
  }

  v13 = [self _hmacForData:dataCopy key:keyCopy];

  return v13;
}

+ (id)_hmacForData:(id)data key:(id)key
{
  v5 = MEMORY[0x1E695DF88];
  keyCopy = key;
  dataCopy = data;
  v8 = [[v5 alloc] initWithLength:32];
  bytes = [keyCopy bytes];
  v10 = [keyCopy length];

  bytes2 = [dataCopy bytes];
  v12 = [dataCopy length];

  CCHmac(2u, bytes, v10, bytes2, v12, [v8 mutableBytes]);

  return v8;
}

+ (id)_randomBytesWithLength:(unint64_t)length error:(id *)error
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF88] dataWithLength:?];
  Bytes = CCRandomGenerateBytes([v6 mutableBytes], length);
  if (Bytes)
  {
    bytes = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Call to CCRandomGenerateBytes faield {status: %d}", Bytes];
    v9 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A278];
    v16[0] = bytes;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = [v9 errorWithDomain:@"IMNicknameEncryptionHelpersErrorDomain" code:-2000 userInfo:v10];

    if (error)
    {
      v12 = v11;
      *error = v11;
    }

    v13 = 0;
  }

  else
  {
    v13 = v6;
  }

  return v13;
}

@end