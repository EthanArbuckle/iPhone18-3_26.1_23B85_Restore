@interface EDMessageAttachmentMetadata
+ (id)messageMetadataFromRow:(id)row;
- (BOOL)isEqual:(id)equal;
- (EDMessageAttachmentMetadata)initWithGlobalMessageID:(int64_t)d name:(id)name mimePart:(id)part attachmentID:(id)iD remoteURL:(id)l;
- (NSString)ef_publicDescription;
- (void)setMimePartNumber:(id)number;
@end

@implementation EDMessageAttachmentMetadata

+ (id)messageMetadataFromRow:(id)row
{
  rowCopy = row;
  v4 = MEMORY[0x1E695DFF8];
  v5 = [rowCopy objectForKeyedSubscript:@"remote_url"];
  stringValue = [v5 stringValue];
  v18 = [v4 URLWithString:stringValue];

  v7 = [EDMessageAttachmentMetadata alloc];
  v8 = [rowCopy objectForKeyedSubscript:@"global_message_id"];
  databaseIDValue = [v8 databaseIDValue];
  v10 = [rowCopy objectForKeyedSubscript:@"name"];
  stringValue2 = [v10 stringValue];
  v12 = [rowCopy objectForKeyedSubscript:@"mime_part_number"];
  stringValue3 = [v12 stringValue];
  v14 = [rowCopy objectForKeyedSubscript:@"attachment"];
  numberValue = [v14 numberValue];
  v16 = [(EDMessageAttachmentMetadata *)v7 initWithGlobalMessageID:databaseIDValue name:stringValue2 mimePart:stringValue3 attachmentID:numberValue remoteURL:v18];

  return v16;
}

- (EDMessageAttachmentMetadata)initWithGlobalMessageID:(int64_t)d name:(id)name mimePart:(id)part attachmentID:(id)iD remoteURL:(id)l
{
  v25 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  partCopy = part;
  iDCopy = iD;
  lCopy = l;
  v22.receiver = self;
  v22.super_class = EDMessageAttachmentMetadata;
  v17 = [(EDMessageAttachmentMetadata *)&v22 init];
  v18 = v17;
  if (v17)
  {
    v17->_globalMessageID = d;
    objc_storeStrong(&v17->_name, name);
    if ([(__CFString *)partCopy isEqualToString:&stru_1F45B4608])
    {
      v19 = EDAttachmentsLog();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        dCopy = d;
        _os_log_impl(&dword_1C61EF000, v19, OS_LOG_TYPE_DEFAULT, "Updating MIME part number to 1 for globalMessageID: %lld", buf, 0xCu);
      }

      partCopy = @"1";
    }

    objc_storeStrong(&v18->_mimePartNumber, partCopy);
    objc_storeStrong(&v18->_attachmentID, iD);
    objc_storeStrong(&v18->_remoteURL, l);
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
  mimePartNumber = [(EDMessageAttachmentMetadata *)self mimePartNumber];
  v7 = [v5 stringWithFormat:@"mimePartNumber: %@", mimePartNumber];
  [v3 addObject:v7];

  v8 = MEMORY[0x1E696AEC0];
  attachmentID = [(EDMessageAttachmentMetadata *)self attachmentID];
  v10 = [v8 stringWithFormat:@"attachmentID: %@", attachmentID];
  [v3 addObject:v10];

  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  LODWORD(v10) = [currentDevice isInternal];

  if (v10)
  {
    v12 = MEMORY[0x1E696AEC0];
    name = [(EDMessageAttachmentMetadata *)self name];
    v14 = [v12 stringWithFormat:@"name: %@", name];
    [v3 addObject:v14];

    v15 = MEMORY[0x1E696AEC0];
    remoteURL = [(EDMessageAttachmentMetadata *)self remoteURL];
    v17 = [v15 stringWithFormat:@"remoteURL: %@", remoteURL];
    [v3 addObject:v17];
  }

  v18 = [v3 componentsJoinedByString:@"\n"];

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    globalMessageID = [v5 globalMessageID];
    if (globalMessageID == [(EDMessageAttachmentMetadata *)self globalMessageID])
    {
      name = [v5 name];
      name2 = [(EDMessageAttachmentMetadata *)self name];
      if (EFStringsAreEqual())
      {
        mimePartNumber = [v5 mimePartNumber];
        mimePartNumber2 = [(EDMessageAttachmentMetadata *)self mimePartNumber];
        if (EFStringsAreEqual())
        {
          attachmentID = [v5 attachmentID];
          attachmentID2 = [(EDMessageAttachmentMetadata *)self attachmentID];
          if (EFObjectsAreEqual())
          {
            remoteURL = [v5 remoteURL];
            remoteURL2 = [(EDMessageAttachmentMetadata *)self remoteURL];
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

- (void)setMimePartNumber:(id)number
{
  v10 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  if ([(__CFString *)numberCopy isEqualToString:&stru_1F45B4608])
  {
    v5 = EDAttachmentsLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      globalMessageID = [(EDMessageAttachmentMetadata *)self globalMessageID];
      _os_log_impl(&dword_1C61EF000, v5, OS_LOG_TYPE_DEFAULT, "Updating MIME part number to 1 for globalMessageID: %lld", &v8, 0xCu);
    }

    numberCopy = @"1";
  }

  mimePartNumber = self->_mimePartNumber;
  self->_mimePartNumber = &numberCopy->isa;

  v7 = *MEMORY[0x1E69E9840];
}

@end