@interface EDMessageAttachmentMetadata
+ (id)messageMetadataFromRow:(id)a3;
- (BOOL)isEqual:(id)a3;
- (EDMessageAttachmentMetadata)initWithGlobalMessageID:(int64_t)a3 name:(id)a4 mimePart:(id)a5 attachmentID:(id)a6 remoteURL:(id)a7;
- (NSString)ef_publicDescription;
- (void)setMimePartNumber:(id)a3;
@end

@implementation EDMessageAttachmentMetadata

+ (id)messageMetadataFromRow:(id)a3
{
  v3 = a3;
  v4 = MEMORY[0x1E695DFF8];
  v5 = [v3 objectForKeyedSubscript:@"remote_url"];
  v6 = [v5 stringValue];
  v18 = [v4 URLWithString:v6];

  v7 = [EDMessageAttachmentMetadata alloc];
  v8 = [v3 objectForKeyedSubscript:@"global_message_id"];
  v9 = [v8 databaseIDValue];
  v10 = [v3 objectForKeyedSubscript:@"name"];
  v11 = [v10 stringValue];
  v12 = [v3 objectForKeyedSubscript:@"mime_part_number"];
  v13 = [v12 stringValue];
  v14 = [v3 objectForKeyedSubscript:@"attachment"];
  v15 = [v14 numberValue];
  v16 = [(EDMessageAttachmentMetadata *)v7 initWithGlobalMessageID:v9 name:v11 mimePart:v13 attachmentID:v15 remoteURL:v18];

  return v16;
}

- (EDMessageAttachmentMetadata)initWithGlobalMessageID:(int64_t)a3 name:(id)a4 mimePart:(id)a5 attachmentID:(id)a6 remoteURL:(id)a7
{
  v25 = *MEMORY[0x1E69E9840];
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v22.receiver = self;
  v22.super_class = EDMessageAttachmentMetadata;
  v17 = [(EDMessageAttachmentMetadata *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_globalMessageID = a3;
    objc_storeStrong(&v17->_name, a4);
    if ([(__CFString *)v14 isEqualToString:&stru_1F45B4608])
    {
      v19 = EDAttachmentsLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v24 = a3;
        _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "Updating MIME part number to 1 for globalMessageID: %lld", buf, 0xCu);
      }

      v14 = @"1";
    }

    objc_storeStrong(&v18->_mimePartNumber, v14);
    objc_storeStrong(&v18->_attachmentID, a6);
    objc_storeStrong(&v18->_remoteURL, a7);
  }

  v20 = *MEMORY[0x1E69E9840];
  return v18;
}

- (NSString)ef_publicDescription
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"globalMessageID: %lld@", -[EDMessageAttachmentMetadata globalMessageID](self, "globalMessageID")];
  [v3 addObject:v4];

  v5 = MEMORY[0x1E696AEC0];
  v6 = [(EDMessageAttachmentMetadata *)self mimePartNumber];
  v7 = [v5 stringWithFormat:@"mimePartNumber: %@", v6];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  v9 = [(EDMessageAttachmentMetadata *)self attachmentID];
  v10 = [v8 stringWithFormat:@"attachmentID: %@", v9];
  [v3 addObject:v10];

  v11 = [MEMORY[0x1E699B7B0] currentDevice];
  LODWORD(v10) = [v11 isInternal];

  if (v10)
  {
    v12 = MEMORY[0x1E696AEC0];
    v13 = [(EDMessageAttachmentMetadata *)self name];
    v14 = [v12 stringWithFormat:@"name: %@", v13];
    [v3 addObject:v14];

    v15 = MEMORY[0x1E696AEC0];
    v16 = [(EDMessageAttachmentMetadata *)self remoteURL];
    v17 = [v15 stringWithFormat:@"remoteURL: %@", v16];
    [v3 addObject:v17];
  }

  v18 = [v3 componentsJoinedByString:@"\n"];

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 globalMessageID];
    if (v6 == [(EDMessageAttachmentMetadata *)self globalMessageID])
    {
      v7 = [v5 name];
      v8 = [(EDMessageAttachmentMetadata *)self name];
      if (EFStringsAreEqual())
      {
        v9 = [v5 mimePartNumber];
        v10 = [(EDMessageAttachmentMetadata *)self mimePartNumber];
        if (EFStringsAreEqual())
        {
          v16 = [v5 attachmentID];
          v11 = [(EDMessageAttachmentMetadata *)self attachmentID];
          if (EFObjectsAreEqual())
          {
            v15 = [v5 remoteURL];
            v12 = [(EDMessageAttachmentMetadata *)self remoteURL];
            v13 = EFObjectsAreEqual();
          }

          else
          {
            v13 = 0;
          }
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = 0;
      }
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)setMimePartNumber:(id)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(__CFString *)v4 isEqualToString:&stru_1F45B4608])
  {
    v5 = EDAttachmentsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = [(EDMessageAttachmentMetadata *)self globalMessageID];
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Updating MIME part number to 1 for globalMessageID: %lld", &v8, 0xCu);
    }

    v4 = @"1";
  }

  mimePartNumber = self->_mimePartNumber;
  self->_mimePartNumber = &v4->isa;

  v7 = *MEMORY[0x1E69E9840];
}

@end