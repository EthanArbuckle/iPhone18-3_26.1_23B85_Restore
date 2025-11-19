@interface MFAttachmentPlaceholder
+ (BOOL)hasPlaceholderRepresentation:(id)a3;
+ (BOOL)isPlaceholderSerializedRepresentation:(id)a3;
+ (BOOL)writeData:(id)a3 forURL:(id)a4;
+ (id)_localStoreURLForFileData:(id)a3 contentID:(id)a4;
+ (id)_placeholderMagic;
+ (id)attachmentPlaceholderForData:(id)a3 fileName:(id)a4 type:(id)a5 contentID:(id)a6;
+ (id)attachmentPlaceholderForFileURL:(id)a3 fileName:(id)a4 fileSize:(int64_t)a5 type:(id)a6 contentID:(id)a7;
+ (id)dataForPlaceholder:(id)a3;
+ (id)placeholder;
+ (id)placeholderDirectory;
+ (id)placeholderFromSerializedRepresentation:(id)a3;
+ (id)placeholderRepresentations:(id)a3;
+ (id)serializedPlaceholderForFileName:(id)a3 fileSize:(int64_t)a4 mimeType:(id)a5 contentID:(id)a6;
+ (void)cloneFileAtURL:(id)a3 toPlaceholderURL:(id)a4;
+ (void)placeholderDirectory;
+ (void)removePlaceholder:(id)a3;
+ (void)removePlaceholderForFileURL:(id)a3;
- (BOOL)useMailDrop;
- (MFAttachmentPlaceholder)init;
- (id)description;
- (id)fileURL;
- (id)serializedRepresentation;
- (unint64_t)fileSize;
- (void)serializedRepresentation;
- (void)setFileSize:(unint64_t)a3;
@end

@implementation MFAttachmentPlaceholder

+ (id)placeholder
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (MFAttachmentPlaceholder)init
{
  v6.receiver = self;
  v6.super_class = MFAttachmentPlaceholder;
  v2 = [(MFAttachmentPlaceholder *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:3];
    jsonDictionary = v2->_jsonDictionary;
    v2->_jsonDictionary = v3;
  }

  return v2;
}

+ (id)attachmentPlaceholderForFileURL:(id)a3 fileName:(id)a4 fileSize:(int64_t)a5 type:(id)a6 contentID:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = a7;
  v15 = [MFAttachmentUtilities makeAttachmentPlaceholder:v12 fileSize:a5 mimeType:v13 contentID:v14];
  v16 = [v15 fileURL];
  v17 = [MFAttachmentUtilities securityScopeForFileURL:v16];

  v18 = [v17 startWriteAccess];
  [MFAttachmentPlaceholder cloneFileAtURL:v11 toPlaceholderURL:v18];

  [v17 stopAccess];

  return v15;
}

+ (id)attachmentPlaceholderForData:(id)a3 fileName:(id)a4 type:(id)a5 contentID:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[MFAttachmentUtilities makeAttachmentPlaceholder:fileSize:mimeType:contentID:](MFAttachmentUtilities, "makeAttachmentPlaceholder:fileSize:mimeType:contentID:", v10, [v9 length], v11, v12);
  v14 = [v13 fileURL];
  v15 = [MFAttachmentUtilities securityScopeForFileURL:v14];

  v16 = [v15 startWriteAccess];
  [MFAttachmentPlaceholder writeData:v9 forURL:v16];

  [v15 stopAccess];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MFAttachmentPlaceholder *)self fileName];
  v5 = [(MFAttachmentPlaceholder *)self fileSize];
  v6 = [(MFAttachmentPlaceholder *)self mimeType];
  v7 = [(MFAttachmentPlaceholder *)self fileURLString];
  v8 = [(MFAttachmentPlaceholder *)self contentID];
  v9 = [(MFAttachmentPlaceholder *)self useMailDrop];
  v10 = "SMTP";
  if (v9)
  {
    v10 = "MailDrop";
  }

  v11 = [v3 stringWithFormat:@"%@ %lu [%@] @ %@ : %@ [%s]", v4, v5, v6, v7, v8, v10];

  return v11;
}

- (unint64_t)fileSize
{
  v2 = [(NSMutableDictionary *)self->_jsonDictionary objectForKeyedSubscript:@"fileSize"];
  v3 = [v2 unsignedIntegerValue];

  return v3;
}

- (void)setFileSize:(unint64_t)a3
{
  jsonDictionary = self->_jsonDictionary;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  [NSMutableDictionary setValue:"setValue:forKey:" forKey:?];
}

- (id)fileURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [(MFAttachmentPlaceholder *)self fileURLString];
  v4 = [v2 URLWithString:v3];

  return v4;
}

- (BOOL)useMailDrop
{
  v2 = [(NSMutableDictionary *)self->_jsonDictionary objectForKeyedSubscript:@"mailDrop"];
  v3 = [v2 BOOLValue];

  return v3;
}

+ (id)_localStoreURLForFileData:(id)a3 contentID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() placeholderDirectory];
  v9 = [v8 stringByAppendingPathComponent:v7];
  if ([v9 length])
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
    if ([v6 length])
    {
      [a1 writeData:v6 forURL:v10];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)placeholderFromSerializedRepresentation:(id)a3
{
  v4 = a3;
  if ([a1 isPlaceholderSerializedRepresentation:v4])
  {
    v5 = [v4 subdataWithRange:{4, objc_msgSend(v4, "length") - 4}];
    if (v5)
    {
      v11 = 0;
      v6 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v5 options:0 error:&v11];
      v7 = v11;
      v8 = 0;
      if (!v7 && v6)
      {
        v8 = +[MFAttachmentPlaceholder placeholder];
        v9 = [v6 mutableCopy];
        [v8 _setJSONDictionary:v9];
      }
    }

    else
    {
      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[MFAttachmentPlaceholder placeholderFromSerializedRepresentation:];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_placeholderMagic
{
  if (_placeholderMagic_onceToken != -1)
  {
    +[MFAttachmentPlaceholder _placeholderMagic];
  }

  v3 = _placeholderMagic_placeholderMagic;

  return v3;
}

void __44__MFAttachmentPlaceholder__placeholderMagic__block_invoke()
{
  v0 = [MEMORY[0x1E695DEF0] dataWithBytes:&MFAttachmentPlaceholderMagic length:4];
  v1 = _placeholderMagic_placeholderMagic;
  _placeholderMagic_placeholderMagic = v0;
}

+ (BOOL)isPlaceholderSerializedRepresentation:(id)a3
{
  v4 = a3;
  if ([v4 length] < 0x35 || objc_msgSend(v4, "length") > 0x833)
  {
    v7 = 0;
  }

  else
  {
    v5 = [a1 _placeholderMagic];
    v6 = [v4 rangeOfData:v5 options:2 range:{0, 4}];

    v7 = v6 != 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (id)serializedRepresentation
{
  jsonDictionary = self->_jsonDictionary;
  if (jsonDictionary)
  {
    v8 = 0;
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:jsonDictionary options:0 error:&v8];
    v4 = v8;
    if (v3)
    {
      v5 = [MEMORY[0x1E695DF88] dataWithBytes:&MFAttachmentPlaceholderMagic length:4];
      [v5 appendData:v3];
    }

    else
    {
      v6 = MFLogGeneral();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        [MFAttachmentPlaceholder serializedRepresentation];
      }

      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)hasPlaceholderRepresentation:(id)a3
{
  v3 = [a3 messageBody];
  v4 = [v3 rawData];

  if ([v4 length])
  {
    v5 = [v4 length];
    v6 = [@"=FA=CA=DE{" dataUsingEncoding:4];
    v7 = [v4 rangeOfData:v6 options:0 range:{0, v5}];

    v8 = v7 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)placeholderRepresentations:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v23 = a3;
  v25 = [MEMORY[0x1E695DF70] array];
  v4 = [v23 messageBody];
  v5 = [v4 rawData];

  v24 = v5;
  if ([v5 length])
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(v5, "bytes")}];
    v22 = [v21 componentsSeparatedByString:@"=FA=CA=DE{"];
    if ([v22 count])
    {
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v6 = v22;
      v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
      if (v7)
      {
        v8 = *v27;
        do
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v27 != v8)
            {
              objc_enumerationMutation(v6);
            }

            v10 = *(*(&v26 + 1) + 8 * i);
            v11 = [v10 rangeOfString:@"}"];
            if (v11 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v12 = [v10 substringToIndex:v11 + 1];
              v13 = [v12 stringByReplacingOccurrencesOfString:@"=\n" withString:&stru_1F273A5E0];

              v14 = MEMORY[0x1E695DF88];
              v15 = [a1 _placeholderMagic];
              v16 = [v14 dataWithData:v15];

              v17 = [v13 dataUsingEncoding:4];
              [v16 appendData:v17];

              v18 = [a1 placeholderFromSerializedRepresentation:v16];
              if (v18)
              {
                [v25 addObject:v18];
              }
            }
          }

          v7 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
        }

        while (v7);
      }
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v25;
}

+ (id)dataForPlaceholder:(id)a3
{
  v3 = a3;
  v4 = [v3 fileURL];
  v5 = [MEMORY[0x1E696AC08] defaultManager];
  v6 = [v4 path];
  v7 = [v5 fileExistsAtPath:v6];

  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__MFAttachmentPlaceholder_dataForPlaceholder___block_invoke;
    aBlock[3] = &unk_1E7AA4F98;
    v8 = v4;
    v21 = v8;
    v9 = _Block_copy(aBlock);
    if (MFIsMobileMail())
    {
      v10 = v9[2](v9, 0);
    }

    else
    {
      v13 = [MEMORY[0x1E699B868] promise];
      v14 = MEMORY[0x1E69ADAE8];
      v15 = [v13 completionHandlerAdapter];
      [v14 securityScopeForPlaceholderURL:v8 completionBlock:v15];

      v16 = [v13 future];
      v10 = [v16 then:v9];
    }

    v17 = [v10 result:0];
    v12 = [v17 data];

    if (!v12)
    {
      v18 = MFLogGeneral();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        +[MFAttachmentPlaceholder dataForPlaceholder:];
      }
    }

    v11 = v21;
  }

  else
  {
    v11 = MFLogGeneral();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      +[MFAttachmentPlaceholder dataForPlaceholder:];
    }

    v12 = 0;
    v10 = 0;
  }

  return v12;
}

id __46__MFAttachmentPlaceholder_dataForPlaceholder___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MFAttachmentSecurityScope securityScopedURL:*(a1 + 32) withToken:a2];
  v3 = [MEMORY[0x1E699B7C8] futureWithResult:v2];

  return v3;
}

+ (BOOL)writeData:(id)a3 forURL:(id)a4
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v4 = [a3 writeToURL:a4 options:0x40000000 error:&v10];
  v5 = v10;
  if ((v4 & 1) == 0)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [v5 ef_publicDescription];
      [MFAttachmentPlaceholder writeData:v7 forURL:v11];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (void)cloneFileAtURL:(id)a3 toPlaceholderURL:(id)a4
{
  v22[3] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [v8 copyItemAtURL:v6 toURL:v7 error:0];

  if (v9)
  {
    v10 = [MEMORY[0x1E695DF00] date];
    v11 = *MEMORY[0x1E695DA98];
    v21[0] = *MEMORY[0x1E695DAA8];
    v21[1] = v11;
    v22[0] = v10;
    v22[1] = v10;
    v21[2] = *MEMORY[0x1E695DAF0];
    v22[2] = *MEMORY[0x1E695DAE8];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v19 = 0;
    v13 = [v7 setResourceValues:v12 error:&v19];
    v14 = v19;
    if ((v13 & 1) == 0)
    {
      v15 = MFLogGeneral();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = [v14 ef_publicDescription];
        [MFAttachmentPlaceholder cloneFileAtURL:v16 toPlaceholderURL:v20];
      }
    }
  }

  else
  {
    v17 = [MEMORY[0x1E69AD6B0] dataWithContentsOfURL:v6];
    [a1 writeData:v17 forURL:v7];
  }

  v18 = *MEMORY[0x1E69E9840];
}

+ (void)removePlaceholderForFileURL:(id)a3
{
  v3 = a3;
  if (MFIsMobileMail())
  {
    v4 = [MEMORY[0x1E696AC08] defaultManager];
    v7 = 0;
    [v4 removeItemAtURL:v3 error:&v7];
    v5 = v7;

    if (v5)
    {
      v6 = MFLogGeneral();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        +[MFAttachmentPlaceholder removePlaceholderForFileURL:];
      }
    }
  }
}

+ (void)removePlaceholder:(id)a3
{
  v4 = [a3 fileURL];
  [a1 removePlaceholderForFileURL:?];
}

+ (id)placeholderDirectory
{
  v2 = +[MailAccount defaultAccountDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"AttachmentPlaceholders"];
  v4 = [MEMORY[0x1E696AC08] defaultManager];
  if (([v4 fileExistsAtPath:v3] & 1) == 0)
  {
    v10 = 0;
    v5 = [v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v10];
    v6 = v10;
    if ((v5 & 1) == 0)
    {
      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        +[MFAttachmentPlaceholder placeholderDirectory];
      }

      v3 = 0;
    }
  }

  v8 = [v3 mf_canonicalizedAbsolutePath];

  return v8;
}

+ (id)serializedPlaceholderForFileName:(id)a3 fileSize:(int64_t)a4 mimeType:(id)a5 contentID:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  if (![v12 length])
  {
    v13 = [MEMORY[0x1E696AFB0] UUID];
    v14 = [v13 UUIDString];

    v12 = v14;
  }

  v15 = [MEMORY[0x1E695DEF0] data];
  v16 = [a1 _localStoreURLForFileData:v15 contentID:v12];

  if (v16)
  {
    v17 = +[MFAttachmentPlaceholder placeholder];
    [v17 setFileName:v10];
    [v17 setFileSize:a4];
    [v17 setMimeType:v11];
    v18 = [v16 absoluteString];
    [v17 setFileURLString:v18];

    [v17 setContentID:v12];
    v19 = [v17 serializedRepresentation];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (void)attachmentPlaceholderForFileURL:fileName:fileSize:type:contentID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)attachmentPlaceholderForData:fileName:type:contentID:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)placeholderFromSerializedRepresentation:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)serializedRepresentation
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)dataForPlaceholder:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)dataForPlaceholder:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)writeData:(void *)a1 forURL:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)cloneFileAtURL:(void *)a1 toPlaceholderURL:(uint64_t)a2 .cold.1(void *a1, uint64_t a2)
{
  *a2 = 138543362;
  *(a2 + 4) = a1;
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

+ (void)removePlaceholderForFileURL:.cold.1()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)placeholderDirectory
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_0_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

@end