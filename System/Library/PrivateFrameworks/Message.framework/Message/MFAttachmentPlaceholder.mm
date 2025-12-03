@interface MFAttachmentPlaceholder
+ (BOOL)hasPlaceholderRepresentation:(id)representation;
+ (BOOL)isPlaceholderSerializedRepresentation:(id)representation;
+ (BOOL)writeData:(id)data forURL:(id)l;
+ (id)_localStoreURLForFileData:(id)data contentID:(id)d;
+ (id)_placeholderMagic;
+ (id)attachmentPlaceholderForData:(id)data fileName:(id)name type:(id)type contentID:(id)d;
+ (id)attachmentPlaceholderForFileURL:(id)l fileName:(id)name fileSize:(int64_t)size type:(id)type contentID:(id)d;
+ (id)dataForPlaceholder:(id)placeholder;
+ (id)placeholder;
+ (id)placeholderDirectory;
+ (id)placeholderFromSerializedRepresentation:(id)representation;
+ (id)placeholderRepresentations:(id)representations;
+ (id)serializedPlaceholderForFileName:(id)name fileSize:(int64_t)size mimeType:(id)type contentID:(id)d;
+ (void)cloneFileAtURL:(id)l toPlaceholderURL:(id)rL;
+ (void)placeholderDirectory;
+ (void)removePlaceholder:(id)placeholder;
+ (void)removePlaceholderForFileURL:(id)l;
- (BOOL)useMailDrop;
- (MFAttachmentPlaceholder)init;
- (id)description;
- (id)fileURL;
- (id)serializedRepresentation;
- (unint64_t)fileSize;
- (void)serializedRepresentation;
- (void)setFileSize:(unint64_t)size;
@end

@implementation MFAttachmentPlaceholder

+ (id)placeholder
{
  v2 = objc_alloc_init(self);

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

+ (id)attachmentPlaceholderForFileURL:(id)l fileName:(id)name fileSize:(int64_t)size type:(id)type contentID:(id)d
{
  lCopy = l;
  nameCopy = name;
  typeCopy = type;
  dCopy = d;
  v15 = [MFAttachmentUtilities makeAttachmentPlaceholder:nameCopy fileSize:size mimeType:typeCopy contentID:dCopy];
  fileURL = [v15 fileURL];
  v17 = [MFAttachmentUtilities securityScopeForFileURL:fileURL];

  startWriteAccess = [v17 startWriteAccess];
  [MFAttachmentPlaceholder cloneFileAtURL:lCopy toPlaceholderURL:startWriteAccess];

  [v17 stopAccess];

  return v15;
}

+ (id)attachmentPlaceholderForData:(id)data fileName:(id)name type:(id)type contentID:(id)d
{
  dataCopy = data;
  nameCopy = name;
  typeCopy = type;
  dCopy = d;
  v13 = +[MFAttachmentUtilities makeAttachmentPlaceholder:fileSize:mimeType:contentID:](MFAttachmentUtilities, "makeAttachmentPlaceholder:fileSize:mimeType:contentID:", nameCopy, [dataCopy length], typeCopy, dCopy);
  fileURL = [v13 fileURL];
  v15 = [MFAttachmentUtilities securityScopeForFileURL:fileURL];

  startWriteAccess = [v15 startWriteAccess];
  [MFAttachmentPlaceholder writeData:dataCopy forURL:startWriteAccess];

  [v15 stopAccess];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  fileName = [(MFAttachmentPlaceholder *)self fileName];
  fileSize = [(MFAttachmentPlaceholder *)self fileSize];
  mimeType = [(MFAttachmentPlaceholder *)self mimeType];
  fileURLString = [(MFAttachmentPlaceholder *)self fileURLString];
  contentID = [(MFAttachmentPlaceholder *)self contentID];
  useMailDrop = [(MFAttachmentPlaceholder *)self useMailDrop];
  v10 = "SMTP";
  if (useMailDrop)
  {
    v10 = "MailDrop";
  }

  v11 = [v3 stringWithFormat:@"%@ %lu [%@] @ %@ : %@ [%s]", fileName, fileSize, mimeType, fileURLString, contentID, v10];

  return v11;
}

- (unint64_t)fileSize
{
  v2 = [(NSMutableDictionary *)self->_jsonDictionary objectForKeyedSubscript:@"fileSize"];
  unsignedIntegerValue = [v2 unsignedIntegerValue];

  return unsignedIntegerValue;
}

- (void)setFileSize:(unint64_t)size
{
  jsonDictionary = self->_jsonDictionary;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  [NSMutableDictionary setValue:"setValue:forKey:" forKey:?];
}

- (id)fileURL
{
  v2 = MEMORY[0x1E695DFF8];
  fileURLString = [(MFAttachmentPlaceholder *)self fileURLString];
  v4 = [v2 URLWithString:fileURLString];

  return v4;
}

- (BOOL)useMailDrop
{
  v2 = [(NSMutableDictionary *)self->_jsonDictionary objectForKeyedSubscript:@"mailDrop"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

+ (id)_localStoreURLForFileData:(id)data contentID:(id)d
{
  dataCopy = data;
  dCopy = d;
  placeholderDirectory = [objc_opt_class() placeholderDirectory];
  v9 = [placeholderDirectory stringByAppendingPathComponent:dCopy];
  if ([v9 length])
  {
    v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:v9];
    if ([dataCopy length])
    {
      [self writeData:dataCopy forURL:v10];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)placeholderFromSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  if ([self isPlaceholderSerializedRepresentation:representationCopy])
  {
    v5 = [representationCopy subdataWithRange:{4, objc_msgSend(representationCopy, "length") - 4}];
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

+ (BOOL)isPlaceholderSerializedRepresentation:(id)representation
{
  representationCopy = representation;
  if ([representationCopy length] < 0x35 || objc_msgSend(representationCopy, "length") > 0x833)
  {
    v7 = 0;
  }

  else
  {
    _placeholderMagic = [self _placeholderMagic];
    v6 = [representationCopy rangeOfData:_placeholderMagic options:2 range:{0, 4}];

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

+ (BOOL)hasPlaceholderRepresentation:(id)representation
{
  messageBody = [representation messageBody];
  rawData = [messageBody rawData];

  if ([rawData length])
  {
    v5 = [rawData length];
    v6 = [@"=FA=CA=DE{" dataUsingEncoding:4];
    v7 = [rawData rangeOfData:v6 options:0 range:{0, v5}];

    v8 = v7 != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)placeholderRepresentations:(id)representations
{
  v31 = *MEMORY[0x1E69E9840];
  representationsCopy = representations;
  array = [MEMORY[0x1E695DF70] array];
  messageBody = [representationsCopy messageBody];
  rawData = [messageBody rawData];

  v24 = rawData;
  if ([rawData length])
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{objc_msgSend(rawData, "bytes")}];
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
              _placeholderMagic = [self _placeholderMagic];
              v16 = [v14 dataWithData:_placeholderMagic];

              v17 = [v13 dataUsingEncoding:4];
              [v16 appendData:v17];

              v18 = [self placeholderFromSerializedRepresentation:v16];
              if (v18)
              {
                [array addObject:v18];
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

  return array;
}

+ (id)dataForPlaceholder:(id)placeholder
{
  placeholderCopy = placeholder;
  fileURL = [placeholderCopy fileURL];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  path = [fileURL path];
  v7 = [defaultManager fileExistsAtPath:path];

  if (v7)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __46__MFAttachmentPlaceholder_dataForPlaceholder___block_invoke;
    aBlock[3] = &unk_1E7AA4F98;
    v8 = fileURL;
    v21 = v8;
    v9 = _Block_copy(aBlock);
    if (MFIsMobileMail())
    {
      v10 = v9[2](v9, 0);
    }

    else
    {
      promise = [MEMORY[0x1E699B868] promise];
      v14 = MEMORY[0x1E69ADAE8];
      completionHandlerAdapter = [promise completionHandlerAdapter];
      [v14 securityScopeForPlaceholderURL:v8 completionBlock:completionHandlerAdapter];

      future = [promise future];
      v10 = [future then:v9];
    }

    v17 = [v10 result:0];
    data = [v17 data];

    if (!data)
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

    data = 0;
    v10 = 0;
  }

  return data;
}

id __46__MFAttachmentPlaceholder_dataForPlaceholder___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MFAttachmentSecurityScope securityScopedURL:*(a1 + 32) withToken:a2];
  v3 = [MEMORY[0x1E699B7C8] futureWithResult:v2];

  return v3;
}

+ (BOOL)writeData:(id)data forURL:(id)l
{
  v12 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v4 = [data writeToURL:l options:0x40000000 error:&v10];
  v5 = v10;
  if ((v4 & 1) == 0)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      ef_publicDescription = [v5 ef_publicDescription];
      [MFAttachmentPlaceholder writeData:ef_publicDescription forURL:v11];
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (void)cloneFileAtURL:(id)l toPlaceholderURL:(id)rL
{
  v22[3] = *MEMORY[0x1E69E9840];
  lCopy = l;
  rLCopy = rL;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v9 = [defaultManager copyItemAtURL:lCopy toURL:rLCopy error:0];

  if (v9)
  {
    date = [MEMORY[0x1E695DF00] date];
    v11 = *MEMORY[0x1E695DA98];
    v21[0] = *MEMORY[0x1E695DAA8];
    v21[1] = v11;
    v22[0] = date;
    v22[1] = date;
    v21[2] = *MEMORY[0x1E695DAF0];
    v22[2] = *MEMORY[0x1E695DAE8];
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
    v19 = 0;
    v13 = [rLCopy setResourceValues:v12 error:&v19];
    v14 = v19;
    if ((v13 & 1) == 0)
    {
      v15 = MFLogGeneral();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        ef_publicDescription = [v14 ef_publicDescription];
        [MFAttachmentPlaceholder cloneFileAtURL:ef_publicDescription toPlaceholderURL:v20];
      }
    }
  }

  else
  {
    v17 = [MEMORY[0x1E69AD6B0] dataWithContentsOfURL:lCopy];
    [self writeData:v17 forURL:rLCopy];
  }

  v18 = *MEMORY[0x1E69E9840];
}

+ (void)removePlaceholderForFileURL:(id)l
{
  lCopy = l;
  if (MFIsMobileMail())
  {
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v7 = 0;
    [defaultManager removeItemAtURL:lCopy error:&v7];
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

+ (void)removePlaceholder:(id)placeholder
{
  fileURL = [placeholder fileURL];
  [self removePlaceholderForFileURL:?];
}

+ (id)placeholderDirectory
{
  v2 = +[MailAccount defaultAccountDirectory];
  v3 = [v2 stringByAppendingPathComponent:@"AttachmentPlaceholders"];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (([defaultManager fileExistsAtPath:v3] & 1) == 0)
  {
    v10 = 0;
    v5 = [defaultManager createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v10];
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

  mf_canonicalizedAbsolutePath = [v3 mf_canonicalizedAbsolutePath];

  return mf_canonicalizedAbsolutePath;
}

+ (id)serializedPlaceholderForFileName:(id)name fileSize:(int64_t)size mimeType:(id)type contentID:(id)d
{
  nameCopy = name;
  typeCopy = type;
  dCopy = d;
  if (![dCopy length])
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    dCopy = uUIDString;
  }

  data = [MEMORY[0x1E695DEF0] data];
  v16 = [self _localStoreURLForFileData:data contentID:dCopy];

  if (v16)
  {
    v17 = +[MFAttachmentPlaceholder placeholder];
    [v17 setFileName:nameCopy];
    [v17 setFileSize:size];
    [v17 setMimeType:typeCopy];
    absoluteString = [v16 absoluteString];
    [v17 setFileURLString:absoluteString];

    [v17 setContentID:dCopy];
    serializedRepresentation = [v17 serializedRepresentation];
  }

  else
  {
    serializedRepresentation = 0;
  }

  return serializedRepresentation;
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