@interface IMNicknameEncryptionHelpers
+ (id)_decryptAndVerifyCipherFields:(id)a3 withPreKey:(id)a4 recordTagToVerify:(id)a5 error:(id *)a6;
+ (id)_decryptCipherField:(id)a3 withFieldEncryptionKey:(id)a4 fieldTaggingKey:(id)a5 error:(id *)a6;
+ (id)_decryptCipherFields:(id)a3 withFieldEncryptionKey:(id)a4 fieldTaggingKey:(id)a5 error:(id *)a6;
+ (id)_encryptAndTagPlainFields:(id)a3 withPreKey:(id)a4 returningRecordTag:(id *)a5 error:(id *)a6;
+ (id)_encryptPlainField:(id)a3 withFieldEncryptionKey:(id)a4 fieldTaggingKey:(id)a5 error:(id *)a6;
+ (id)_encryptPlainFields:(id)a3 withFieldEncryptionKey:(id)a4 fieldTaggingKey:(id)a5 error:(id *)a6;
+ (id)_fieldTagForFieldName:(id)a3 cipherData:(id)a4 IV:(id)a5 fieldTaggingKey:(id)a6 error:(id *)a7;
+ (id)_hmacForData:(id)a3 key:(id)a4;
+ (id)_performOperation:(unsigned int)a3 onData:(id)a4 withFieldEncryptionKey:(id)a5 iv:(id)a6 error:(id *)a7;
+ (id)_randomBytesWithLength:(unint64_t)a3 error:(id *)a4;
+ (id)_recordTagForCipherFields:(id)a3 recordTaggingKey:(id)a4 error:(id *)a5;
+ (id)_tagForData:(id)a3 key:(id)a4 error:(id *)a5;
+ (id)decryptAndVerifyCipherFields:(id)a3 withPreKey:(id)a4 recordTagToVerify:(id)a5 error:(id *)a6;
+ (id)encryptAndTagPlainField:(id)a3 withPreKey:(id)a4 returningFieldTag:(id *)a5 error:(id *)a6;
+ (id)encryptAndTagPlainFields:(id)a3 withPreKey:(id)a4 returningRecordTag:(id *)a5 error:(id *)a6;
@end

@implementation IMNicknameEncryptionHelpers

+ (id)encryptAndTagPlainFields:(id)a3 withPreKey:(id)a4 returningRecordTag:(id *)a5 error:(id *)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v28 = a4;
  if (!a6)
  {
    v35 = 0;
    a6 = &v35;
  }

  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = [v10 allKeys];
      *buf = 138412290;
      v37 = v12;
      _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Encrypting nickname fields {plainFieldsMap.keys: %@}", buf, 0xCu);
    }
  }

  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = sub_1A861C398;
  v33[3] = &unk_1E7826298;
  v14 = v13;
  v34 = v14;
  [v10 enumerateKeysAndObjectsUsingBlock:v33];
  v15 = [a1 _encryptAndTagPlainFields:v14 withPreKey:v28 returningRecordTag:a5 error:a6];
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
        v22 = [v21 dataRepresentationWithError:a6];
        if (!v22)
        {

          if (IMOSLoggingEnabled())
          {
            v25 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
            {
              v26 = *a6;
              *buf = 138412546;
              v37 = v26;
              v38 = 2112;
              v39 = v10;
              _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Failed to encrypt nickname record {error: %@, plainFieldsMap: %@}", buf, 0x16u);
            }
          }

          v24 = 0;
          goto LABEL_21;
        }

        v23 = [v21 fieldName];
        [v16 setObject:v22 forKey:v23];
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

+ (id)decryptAndVerifyCipherFields:(id)a3 withPreKey:(id)a4 recordTagToVerify:(id)a5 error:(id *)a6
{
  v52 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v33 = a4;
  v34 = a5;
  if (!a6)
  {
    v43 = 0;
    a6 = &v43;
  }

  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v9, "count")}];
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v11 = [v9 allKeys];
  v12 = [v11 countByEnumeratingWithState:&v39 objects:v51 count:16];
  if (v12)
  {
    v13 = *v40;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v40 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v39 + 1) + 8 * i);
        v16 = [v9 objectForKey:v15];
        v17 = [IMNicknameEncryptionCipherRecordField cipherRecordFieldWithFieldName:v15 dataRepresentation:v16 error:a6];
        if (!v17)
        {

          if (IMOSLoggingEnabled())
          {
            v27 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
            {
              v28 = *a6;
              *buf = 138412802;
              v46 = v28;
              v47 = 2112;
              v48 = v9;
              v49 = 2112;
              v50 = v34;
              _os_log_impl(&dword_1A85E5000, v27, OS_LOG_TYPE_INFO, "Failed to create cipherFields from dictionary {error: %@, cipherfieldsMap: %@, tagToVerify: %@}", buf, 0x20u);
            }
          }

          v19 = 0;
          goto LABEL_31;
        }

        [v10 addObject:v17];
      }

      v12 = [v11 countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

  v18 = [a1 _decryptAndVerifyCipherFields:v10 withPreKey:v33 recordTagToVerify:v34 error:a6];
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
          v25 = [v24 plainData];
          v26 = [v24 fieldName];
          [v19 setObject:v25 forKey:v26];
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
        v30 = *a6;
        *buf = 138412802;
        v46 = v30;
        v47 = 2112;
        v48 = v9;
        v49 = 2112;
        v50 = v34;
        _os_log_impl(&dword_1A85E5000, v29, OS_LOG_TYPE_INFO, "Failed to decrypt cipher fields {error: %@, cipherfieldsMap: %@, tagToVerify: %@}", buf, 0x20u);
      }
    }

    v19 = 0;
  }

LABEL_31:

  return v19;
}

+ (id)_encryptAndTagPlainFields:(id)a3 withPreKey:(id)a4 returningRecordTag:(id *)a5 error:(id *)a6
{
  v10 = a4;
  v11 = a3;
  v12 = [v10 fieldEncryptionKey];
  v13 = [v10 fieldTaggingKey];
  v14 = [a1 _encryptPlainFields:v11 withFieldEncryptionKey:v12 fieldTaggingKey:v13 error:a6];

  if (v14)
  {
    v15 = [v10 recordTaggingKey];
    *a5 = [a1 _recordTagForCipherFields:v14 recordTaggingKey:v15 error:a6];
  }

  return v14;
}

+ (id)encryptAndTagPlainField:(id)a3 withPreKey:(id)a4 returningFieldTag:(id *)a5 error:(id *)a6
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v20 = a3;
    v10 = MEMORY[0x1E695DEC8];
    v11 = a4;
    v12 = a3;
    v13 = [v10 arrayWithObjects:&v20 count:1];

    v14 = [v11 fieldEncryptionKey];
    v15 = [v11 fieldTaggingKey];

    v16 = [a1 _encryptPlainFields:v13 withFieldEncryptionKey:v14 fieldTaggingKey:v15 error:a6];

    if (v16 && [v16 count])
    {
      v17 = [v16 firstObject];
      *a5 = [v17 fieldTag];

      v18 = [v16 firstObject];
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

+ (id)_decryptAndVerifyCipherFields:(id)a3 withPreKey:(id)a4 recordTagToVerify:(id)a5 error:(id *)a6
{
  v31[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    v13 = [v11 recordTaggingKey];
    v14 = [a1 _recordTagForCipherFields:v10 recordTaggingKey:v13 error:a6];

    if (v14)
    {
      if ([v14 isEqualToTag:v12 error:a6])
      {
        v15 = [v11 fieldEncryptionKey];
        v16 = [v11 fieldTaggingKey];
        v17 = [a1 _decryptCipherFields:v10 withFieldEncryptionKey:v15 fieldTaggingKey:v16 error:a6];

LABEL_20:
        goto LABEL_21;
      }

      if (IMOSLoggingEnabled())
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = *a6;
          v24 = 138412802;
          v25 = v22;
          v26 = 2112;
          v27 = v14;
          v28 = 2112;
          v29 = v12;
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
        v21 = *a6;
        v24 = 138412546;
        v25 = v21;
        v26 = 2112;
        v27 = v10;
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
      v25 = v10;
      _os_log_impl(&dword_1A85E5000, v18, OS_LOG_TYPE_INFO, "Missing tag to verify -- Nickname decryption failed {cipherFields: %@}", &v24, 0xCu);
    }
  }

  if (a6)
  {
    v19 = MEMORY[0x1E696ABC0];
    v30 = *MEMORY[0x1E696A278];
    v31[0] = @"Missing recordTagToVerify";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    [v19 errorWithDomain:@"IMNicknameEncryptionHelpersErrorDomain" code:-1000 userInfo:v14];
    *a6 = v17 = 0;
    goto LABEL_20;
  }

  v17 = 0;
LABEL_21:

  return v17;
}

+ (id)_encryptPlainFields:(id)a3 withFieldEncryptionKey:(id)a4 fieldTaggingKey:(id)a5 error:(id *)a6
{
  v28 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v10;
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

        v19 = [a1 _encryptPlainField:*(*(&v23 + 1) + 8 * i) withFieldEncryptionKey:v11 fieldTaggingKey:v12 error:{a6, v23}];
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

+ (id)_recordTagForCipherFields:(id)a3 recordTaggingKey:(id)a4 error:(id *)a5
{
  v29 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = [a3 sortedArrayUsingComparator:&unk_1F1BA5808];
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

        v16 = [*(*(&v24 + 1) + 8 * i) fieldTag];
        v17 = [v16 dataRepresentation];
        [v10 appendData:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v18 = [v8 data];
  v19 = [a1 _tagForData:v10 key:v18 error:a5];

  v20 = [IMNicknameEncryptionRecordTag tagWithDataRepresentation:v19 error:a5];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  return v21;
}

+ (id)_encryptPlainField:(id)a3 withFieldEncryptionKey:(id)a4 fieldTaggingKey:(id)a5 error:(id *)a6
{
  v31 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [a1 _randomBytesWithLength:16 error:a6];
  if (v13)
  {
    v14 = [v10 plainData];
    v15 = [a1 _performOperation:0 onData:v14 withFieldEncryptionKey:v11 iv:v13 error:a6];

    if (v15)
    {
      v16 = [v10 fieldName];
      v17 = [a1 _fieldTagForFieldName:v16 cipherData:v15 IV:v13 fieldTaggingKey:v12 error:a6];

      if (v17)
      {
        v18 = [IMNicknameEncryptionCipherRecordField alloc];
        v19 = [v10 fieldName];
        a6 = [(IMNicknameEncryptionCipherRecordField *)v18 initWithFieldName:v19 cipherData:v15 IV:v13 tag:v17];
      }

      else if (a6)
      {
        if (IMOSLoggingEnabled())
        {
          v24 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = *a6;
            v27 = 138412546;
            v28 = v25;
            v29 = 2112;
            v30 = v10;
            _os_log_impl(&dword_1A85E5000, v24, OS_LOG_TYPE_INFO, "Failed to compute tag -- nickname encryption failed {error: %@, plainField: %@}", &v27, 0x16u);
          }
        }

        a6 = 0;
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = *a6;
          v27 = 138412546;
          v28 = v23;
          v29 = 2112;
          v30 = v10;
          _os_log_impl(&dword_1A85E5000, v22, OS_LOG_TYPE_INFO, "Failed to encrypt data -- nickname encryption failed {error: %@, plainField: %@}", &v27, 0x16u);
        }
      }

      a6 = 0;
    }
  }

  else if (a6)
  {
    if (IMOSLoggingEnabled())
    {
      v20 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = *a6;
        v27 = 138412546;
        v28 = v21;
        v29 = 2112;
        v30 = v10;
        _os_log_impl(&dword_1A85E5000, v20, OS_LOG_TYPE_INFO, "Failed to generate IV -- nickname encryption failed {error: %@, plainField: %@}", &v27, 0x16u);
      }
    }

    a6 = 0;
  }

  return a6;
}

+ (id)_decryptCipherFields:(id)a3 withFieldEncryptionKey:(id)a4 fieldTaggingKey:(id)a5 error:(id *)a6
{
  v32 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v10, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v10;
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

        v18 = [a1 _decryptCipherField:*(*(&v23 + 1) + 8 * i) withFieldEncryptionKey:v11 fieldTaggingKey:v12 error:{a6, v23}];
        if (!v18)
        {
          if (IMOSLoggingEnabled())
          {
            v20 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v21 = *a6;
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

+ (id)_decryptCipherField:(id)a3 withFieldEncryptionKey:(id)a4 fieldTaggingKey:(id)a5 error:(id *)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v10 fieldName];
  v14 = [v10 cipherData];
  v15 = [v10 IV];
  v16 = [a1 _fieldTagForFieldName:v13 cipherData:v14 IV:v15 fieldTaggingKey:v12 error:a6];

  if (!v16)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = *a6;
        v32 = 138412546;
        v33 = v26;
        v34 = 2112;
        v35 = v10;
        _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Failed to calculate field tag -- nickname decryption failed {error: %@, cipherField: %@}", &v32, 0x16u);
      }

      goto LABEL_12;
    }

LABEL_13:
    v24 = 0;
    goto LABEL_20;
  }

  v17 = [v10 fieldTag];
  v18 = [v16 isEqualToTag:v17 error:a6];

  if ((v18 & 1) == 0)
  {
    if (IMOSLoggingEnabled())
    {
      v25 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v27 = *a6;
        v32 = 138412802;
        v33 = v27;
        v34 = 2112;
        v35 = v16;
        v36 = 2112;
        v37 = v10;
        _os_log_impl(&dword_1A85E5000, v25, OS_LOG_TYPE_INFO, "Field tag mismatch -- nickname decryption failed {error: %@, tag: %@, cipherField: %@}", &v32, 0x20u);
      }

LABEL_12:

      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v19 = [v10 cipherData];
  v20 = [v10 IV];
  v21 = [a1 _performOperation:1 onData:v19 withFieldEncryptionKey:v11 iv:v20 error:a6];

  if (v21)
  {
    v22 = [IMNicknameEncryptionPlainRecordField alloc];
    v23 = [v10 fieldName];
    v24 = [(IMNicknameEncryptionPlainRecordField *)v22 initWithFieldName:v23 plainData:v21];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v28 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = *a6;
        v30 = [v10 IV];
        v32 = 138412802;
        v33 = v29;
        v34 = 2112;
        v35 = v10;
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

+ (id)_performOperation:(unsigned int)a3 onData:(id)a4 withFieldEncryptionKey:(id)a5 iv:(id)a6 error:(id *)a7
{
  v10 = *&a3;
  v51[1] = *MEMORY[0x1E69E9840];
  v11 = a4;
  v12 = a5;
  v13 = a6;
  cryptorRef = 0;
  if ([v13 length] <= 0xF)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"IV too short {IV: %@}", v13];
    v15 = MEMORY[0x1E696ABC0];
    v50 = *MEMORY[0x1E696A278];
    v51[0] = v14;
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

    if (a7)
    {
      v19 = v17;
      *a7 = v17;
    }

    goto LABEL_9;
  }

  v21 = CCCryptorCreateWithMode(v10, 4u, 0, 0, [v13 bytes], objc_msgSend(v12, "bytes"), objc_msgSend(v12, "length"), 0, 0, 0, 2u, &cryptorRef);
  if (!v21)
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:{CCCryptorGetOutputLength(cryptorRef, objc_msgSend(v11, "length"), 1)}];
    dataOutMoved = 0;
    v26 = cryptorRef;
    v27 = v11;
    v28 = [v11 bytes];
    v29 = [v11 length];
    v30 = v14;
    v31 = CCCryptorUpdate(v26, v28, v29, [v14 mutableBytes], objc_msgSend(v14, "length"), &dataOutMoved);
    [v14 setLength:dataOutMoved];
    if (cryptorRef)
    {
      CCCryptorRelease(cryptorRef);
    }

    if (!v31)
    {
      a7 = v14;
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

    if (a7)
    {
      v37 = v35;
      *a7 = v35;
    }

LABEL_9:
    a7 = 0;
LABEL_10:

    goto LABEL_11;
  }

  if (a7)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to create Crytpor {operation: %u, retval: %d}", v10, v21];
    v22 = MEMORY[0x1E696ABC0];
    v48 = *MEMORY[0x1E696A278];
    v49 = v14;
    v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    *a7 = [v22 errorWithDomain:@"IMNicknameEncryptionHelpersErrorDomain" code:-2000 userInfo:v23];

    if (IMOSLoggingEnabled())
    {
      v24 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = *a7;
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

  return a7;
}

+ (id)_fieldTagForFieldName:(id)a3 cipherData:(id)a4 IV:(id)a5 fieldTaggingKey:(id)a6 error:(id *)a7
{
  v12 = a6;
  v13 = a5;
  v14 = a4;
  v15 = [a3 dataUsingEncoding:4];
  v16 = [v15 mutableCopy];

  [v16 appendData:v13];
  [v16 appendData:v14];

  v17 = [v12 data];

  v18 = [a1 _tagForData:v16 key:v17 error:a7];

  v19 = [IMNicknameEncryptionFieldTag tagWithDataRepresentation:v18 error:a7];

  return v19;
}

+ (id)_tagForData:(id)a3 key:(id)a4 error:(id *)a5
{
  v16[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = [v8 length];
  if (a5 && !v10)
  {
    v11 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A278];
    v16[0] = @"Passed empty data to tag calculation";
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *a5 = [v11 errorWithDomain:@"IMNicknameEncryptionHelpersErrorDomain" code:-1000 userInfo:v12];
  }

  v13 = [a1 _hmacForData:v8 key:v9];

  return v13;
}

+ (id)_hmacForData:(id)a3 key:(id)a4
{
  v5 = MEMORY[0x1E695DF88];
  v6 = a4;
  v7 = a3;
  v8 = [[v5 alloc] initWithLength:32];
  v9 = [v6 bytes];
  v10 = [v6 length];

  v11 = [v7 bytes];
  v12 = [v7 length];

  CCHmac(2u, v9, v10, v11, v12, [v8 mutableBytes]);

  return v8;
}

+ (id)_randomBytesWithLength:(unint64_t)a3 error:(id *)a4
{
  v16[1] = *MEMORY[0x1E69E9840];
  v6 = [MEMORY[0x1E695DF88] dataWithLength:?];
  Bytes = CCRandomGenerateBytes([v6 mutableBytes], a3);
  if (Bytes)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Call to CCRandomGenerateBytes faield {status: %d}", Bytes];
    v9 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A278];
    v16[0] = v8;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v11 = [v9 errorWithDomain:@"IMNicknameEncryptionHelpersErrorDomain" code:-2000 userInfo:v10];

    if (a4)
    {
      v12 = v11;
      *a4 = v11;
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