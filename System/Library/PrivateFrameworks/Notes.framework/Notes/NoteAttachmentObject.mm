@interface NoteAttachmentObject
+ (BOOL)applyFileAttributesForAttachment:(id)attachment error:(id *)error;
+ (BOOL)migrateAttachmentRelatedFilesInContext:(id)context error:(id *)error;
+ (BOOL)migrateFileForAttachment:(id)attachment toCurrentAttachmentPathWithError:(id *)error;
+ (id)attachmentDirectoryPathForAttachmentObjectID:(id)d error:(id *)error;
+ (id)attachmentDirectoryURLForAttachmentObjectID:(id)d error:(id *)error;
- (BOOL)persistAttachmentData:(id)data error:(id *)error;
- (id)attachmentDataFileURLWithError:(id *)error;
- (id)attachmentDataWithError:(id *)error;
- (void)prepareForDeletion;
@end

@implementation NoteAttachmentObject

+ (id)attachmentDirectoryURLForAttachmentObjectID:(id)d error:(id *)error
{
  v4 = [self attachmentDirectoryPathForAttachmentObjectID:d error:error];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEBC0] fileURLWithPath:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)attachmentDirectoryPathForAttachmentObjectID:(id)d error:(id *)error
{
  dCopy = d;
  v5 = NoteContextRootDirectoryPath();
  v6 = [v5 stringByAppendingPathComponent:@"attachments"];

  uRIRepresentation = [dCopy URIRepresentation];

  absoluteString = [uRIRepresentation absoluteString];

  v9 = CFURLCreateStringByAddingPercentEscapes(*MEMORY[0x277CBECE8], absoluteString, 0, @"/", 0x8000100u);
  v10 = [v6 stringByAppendingPathComponent:v9];

  return v10;
}

- (BOOL)persistAttachmentData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v8 = NoteAttachmentObjectDataBasePath(self, error);
  if (v8 && (([v7 fileExistsAtPath:v8] & 1) != 0 || objc_msgSend(v7, "createDirectoryAtPath:withIntermediateDirectories:attributes:error:", v8, 1, 0, error)))
  {
    v9 = NoteAttachmentObjectDataPath(self, error);
    if (v9 && (![v7 fileExistsAtPath:v9] || objc_msgSend(v7, "removeItemAtPath:error:", v9, error)))
    {
      v10 = +[NoteContext fileProtectionOption];
      v11 = DataWritingOptionForFileProtectionOption(v10);
      v12 = [objc_alloc(MEMORY[0x277CBEA90]) initWithBytes:objc_msgSend(dataCopy length:{"bytes"), objc_msgSend(dataCopy, "length")}];
      v13 = [v12 writeToFile:v9 options:v11 error:error];
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

- (id)attachmentDataFileURLWithError:(id *)error
{
  v3 = NoteAttachmentObjectDataPath(self, error);
  if (v3)
  {
    v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)attachmentDataWithError:(id *)error
{
  v4 = [(NoteAttachmentObject *)self attachmentDataFileURLWithError:?];
  if (v4)
  {
    v5 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v4 options:0 error:error];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)prepareForDeletion
{
  v3 = objc_alloc_init(MEMORY[0x277CCAA00]);
  v16 = 0;
  v4 = NoteAttachmentObjectDataPath(self, &v16);
  v5 = v16;
  v15 = v5;
  v6 = NoteAttachmentObjectDataBasePath(self, &v15);
  v7 = v15;

  if (v4)
  {
    v14 = v7;
    v8 = [v3 removeItemAtPath:v4 error:&v14];
    v9 = v14;

    v7 = v9;
    if (v8)
    {
      if (v6)
      {
        goto LABEL_4;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v9 = v7;
  }

  NSLog(&cfstr_CanTRemoveAtta.isa, v4, v7);
  if (v6)
  {
LABEL_4:
    v13 = v9;
    v10 = [v3 removeItemAtPath:v6 error:&v13];
    v11 = v13;

    v9 = v11;
    if (v10)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_8:
  v11 = v9;
LABEL_9:
  NSLog(&cfstr_CanTRemoveAtta_0.isa, v6, v9);
LABEL_10:
  v12.receiver = self;
  v12.super_class = NoteAttachmentObject;
  [(NoteAttachmentObject *)&v12 prepareForDeletion];
}

+ (BOOL)migrateAttachmentRelatedFilesInContext:(id)context error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = [objc_alloc(MEMORY[0x277CBE428]) initWithEntityName:@"NoteAttachment"];
  v8 = [contextCopy executeFetchRequest:v7 error:error];
  v9 = v8;
  if (v8)
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          if (![self migrateFileForAttachment:v15 toCurrentAttachmentPathWithError:{error, v19}] || !objc_msgSend(self, "applyFileAttributesForAttachment:error:", v15, error))
          {
            v16 = 0;
            goto LABEL_15;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
        v16 = 1;
        if (v12)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v16 = 1;
    }

LABEL_15:
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

+ (BOOL)migrateFileForAttachment:(id)attachment toCurrentAttachmentPathWithError:(id *)error
{
  attachmentCopy = attachment;
  v6 = NoteAttachmentObjectDataPathBetween12A173And12A189(attachmentCopy, error);
  if (v6)
  {
    v16 = 0;
    v7 = objc_alloc_init(MEMORY[0x277CCAA00]);
    if (![v7 fileExistsAtPath:v6 isDirectory:&v16] || (v16 & 1) != 0)
    {
LABEL_4:
      LOBYTE(v8) = 1;
LABEL_15:

      goto LABEL_16;
    }

    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];

    stringByDeletingLastPathComponent = [v6 stringByDeletingLastPathComponent];
    v12 = [stringByDeletingLastPathComponent stringByAppendingPathComponent:uUIDString];

    if ([v7 moveItemAtPath:v6 toPath:v12 error:error])
    {
      v13 = NoteAttachmentObjectDataBasePath(attachmentCopy, error);
      if (v13 && [v7 createDirectoryAtPath:v13 withIntermediateDirectories:1 attributes:0 error:error])
      {
        v14 = NoteAttachmentObjectDataPath(attachmentCopy, error);

        if (v14)
        {
          v8 = [v7 moveItemAtPath:v12 toPath:v14 error:error];

          if (!v8)
          {
            goto LABEL_15;
          }

          goto LABEL_4;
        }

        v13 = 0;
      }
    }

    LOBYTE(v8) = 0;
    goto LABEL_15;
  }

  LOBYTE(v8) = 0;
LABEL_16:

  return v8;
}

+ (BOOL)applyFileAttributesForAttachment:(id)attachment error:(id *)error
{
  v22 = 0;
  v5 = NoteAttachmentObjectDataPath(attachment, &v22);
  v6 = v22;
  if (!v5)
  {
    v13 = 0;
    if (!error)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:0];
  v21 = 0;
  v8 = *MEMORY[0x277CBE7F8];
  v20 = 0;
  v9 = [v7 getResourceValue:&v21 forKey:v8 error:&v20];
  v10 = v21;
  v11 = v20;

  if (v9)
  {
    path2 = +[NoteContext fileURLProtectionOption];
    if (path2 && ([v10 isEqualToString:path2] & 1) == 0)
    {
      v19 = v11;
      v14 = [v7 setResourceValue:path2 forKey:v8 error:&v19];
      v15 = v19;

      if (v14)
      {
        v13 = 1;
      }

      else
      {
        path = [v7 path];
        NSLog(&cfstr_CanTSetDataPro.isa, path, v15);

        v13 = 0;
      }

      v11 = v15;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    path2 = [v7 path];
    NSLog(&cfstr_CanTGetDataPro.isa, path2, v11);
    v13 = 0;
  }

  v6 = v11;
  if (error)
  {
LABEL_14:
    v17 = v6;
    *error = v6;
  }

LABEL_15:

  return v13;
}

@end