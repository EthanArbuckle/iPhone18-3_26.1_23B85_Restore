@interface ICAddAttachmentsManagerAttachmentInfo
- (BOOL)isPhoto;
- (BOOL)isVideo;
- (ICAddAttachmentsManagerAttachmentInfo)initWithFileURL:(id)a3;
- (id)attachmentIfExistsForAccount:(id)a3;
- (id)description;
- (unint64_t)mediaSize;
- (void)deleteTemporaryImageFileIfNecessary;
- (void)setMediaURL:(id)a3;
@end

@implementation ICAddAttachmentsManagerAttachmentInfo

- (ICAddAttachmentsManagerAttachmentInfo)initWithFileURL:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = ICAddAttachmentsManagerAttachmentInfo;
  v5 = [(ICAddAttachmentsManagerAttachmentInfo *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICAddAttachmentsManagerAttachmentInfo *)v5 setMediaURL:v4];
  }

  return v6;
}

- (void)setMediaURL:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_mediaURL, a3);
  v33 = 0;
  v6 = *MEMORY[0x1E695DC10];
  v32 = 0;
  v7 = [v5 getResourceValue:&v33 forKey:v6 error:&v32];
  v8 = v33;
  if (v7)
  {
    v9 = v32;
    [(ICAddAttachmentsManagerAttachmentInfo *)self setTitle:v8];
  }

  else
  {
    v10 = MEMORY[0x1E696AF20];
    v11 = v32;
    v9 = [[v10 alloc] initWithURL:v5 resolvingAgainstBaseURL:0];

    v12 = [v9 path];
    v13 = [v12 lastPathComponent];
    [(ICAddAttachmentsManagerAttachmentInfo *)self setTitle:v13];
  }

  v31 = 0;
  v14 = *MEMORY[0x1E695DC68];
  v30 = 0;
  v15 = [v5 getResourceValue:&v31 forKey:v14 error:&v30];
  v16 = v31;
  v17 = v30;
  v18 = v17;
  if (v15)
  {
    [(ICAddAttachmentsManagerAttachmentInfo *)self setMediaUTI:v16];
  }

  else
  {
    NSLog(&cfstr_ErrorReadingAt.isa, v17);
  }

  v19 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaUTI];
  if (![v19 length])
  {
LABEL_13:

    goto LABEL_14;
  }

  v20 = MEMORY[0x1E6982C40];
  v21 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaUTI];
  v22 = [v20 typeWithIdentifier:v21];
  v23 = [v22 conformsToType:*MEMORY[0x1E6982F10]];

  if (v23)
  {
    v24 = objc_alloc(MEMORY[0x1E6978028]);
    v25 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaURL];
    v19 = [v24 initWithURL:v25];

    v26 = [v19 documentAttributes];
    v27 = [v26 objectForKeyedSubscript:*MEMORY[0x1E6978110]];

    if ([v27 length])
    {
      [(ICAddAttachmentsManagerAttachmentInfo *)self setTitle:v27];
    }

    else
    {
      v28 = [(ICAddAttachmentsManagerAttachmentInfo *)self title];
      v29 = [v28 stringByDeletingPathExtension];
      [(ICAddAttachmentsManagerAttachmentInfo *)self setTitle:v29];
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (id)attachmentIfExistsForAccount:(id)a3
{
  v4 = a3;
  v5 = [(ICAddAttachmentsManagerAttachmentInfo *)self attachment];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 note];
    v8 = [v7 account];

    v9 = v6;
    if (v8 != v4)
    {
      v10 = MEMORY[0x1E69B7680];
      v11 = [MEMORY[0x1E696AFB0] UUID];
      v12 = [v11 UUIDString];
      v13 = [v4 managedObjectContext];
      v9 = [v10 newObjectWithIdentifier:v12 context:v13];

      v14 = [v4 persistentStore];
      [v9 assignToPersistentStore:v14];

      v15 = [v6 typeUTI];
      [v9 setTypeUTI:v15];

      v16 = [v6 urlString];
      [v9 setUrlString:v16];

      v17 = [v6 title];
      [v9 setTitle:v17];

      v18 = [v6 creationDate];
      [v9 setCreationDate:v18];

      v19 = [v6 modificationDate];
      [v9 setModificationDate:v19];

      [v9 updateChangeCountWithReason:@"Created attachment"];
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (unint64_t)mediaSize
{
  v3 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaData];

  if (v3)
  {
    v4 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaData];
    v5 = [v4 length];

    return v5;
  }

  else
  {
    v7 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaURL];
    v14 = 0;
    v8 = *MEMORY[0x1E695DB50];
    v13 = 0;
    v9 = [v7 getResourceValue:&v14 forKey:v8 error:&v13];
    v10 = v14;
    v11 = v13;

    v12 = 0;
    if (v9)
    {
      v12 = [v10 unsignedLongLongValue];
    }

    return v12;
  }
}

- (BOOL)isPhoto
{
  v4 = [(ICAddAttachmentsManagerAttachmentInfo *)self attachment];
  if (v4)
  {
    v2 = [(ICAddAttachmentsManagerAttachmentInfo *)self attachment];
    if ([v2 attachmentType] == 3)
    {
      v5 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  v6 = MEMORY[0x1E69B7680];
  v7 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaUTI];
  if ([v6 typeUTIIsImage:v7])
  {
    v5 = 1;
  }

  else
  {
    v8 = [(ICAddAttachmentsManagerAttachmentInfo *)self image];
    v5 = v8 != 0;
  }

  if (v4)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (BOOL)isVideo
{
  v4 = [(ICAddAttachmentsManagerAttachmentInfo *)self attachment];
  if (v4)
  {
    v2 = [(ICAddAttachmentsManagerAttachmentInfo *)self attachment];
    if ([v2 attachmentType] == 5)
    {
      v5 = 1;
LABEL_5:

      goto LABEL_6;
    }
  }

  v6 = MEMORY[0x1E69B7680];
  v7 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaUTI];
  v5 = [v6 typeUTIIsPlayableMovie:v7];

  if (v4)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v5;
}

- (id)description
{
  v33.receiver = self;
  v33.super_class = ICAddAttachmentsManagerAttachmentInfo;
  v3 = [(ICAddAttachmentsManagerAttachmentInfo *)&v33 description];
  v4 = [(ICAddAttachmentsManagerAttachmentInfo *)self attachment];

  if (v4)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [(ICAddAttachmentsManagerAttachmentInfo *)self attachment];
    v7 = [v5 stringWithFormat:@"%@ attachment:%@", v3, v6];

    v3 = v7;
  }

  v8 = [(ICAddAttachmentsManagerAttachmentInfo *)self title];

  if (v8)
  {
    v9 = MEMORY[0x1E696AEC0];
    v10 = [(ICAddAttachmentsManagerAttachmentInfo *)self title];
    v11 = [v9 stringWithFormat:@"%@ title:%@", v3, v10];

    v3 = v11;
  }

  v12 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaURL];

  if (v12)
  {
    v13 = MEMORY[0x1E696AEC0];
    v14 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaURL];
    v15 = [v13 stringWithFormat:@"%@ mediaURL:%@", v3, v14];

    v3 = v15;
  }

  v16 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaUTI];

  if (v16)
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaUTI];
    v19 = [v17 stringWithFormat:@"%@ mediaUTI:%@", v3, v18];

    v3 = v19;
  }

  v20 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaData];

  if (v20)
  {
    v21 = MEMORY[0x1E696AEC0];
    v22 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaData];
    v23 = [v21 stringWithFormat:@"%@ mediaData:%@", v3, v22];

    v3 = v23;
  }

  v24 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaFilenameExtension];

  if (v24)
  {
    v25 = MEMORY[0x1E696AEC0];
    v26 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaFilenameExtension];
    v27 = [v25 stringWithFormat:@"%@ mediaFilenameExtension:%@", v3, v26];

    v3 = v27;
  }

  v28 = [(ICAddAttachmentsManagerAttachmentInfo *)self image];

  if (v28)
  {
    v29 = MEMORY[0x1E696AEC0];
    v30 = [(ICAddAttachmentsManagerAttachmentInfo *)self image];
    v31 = [v29 stringWithFormat:@"%@ attachment:%@", v3, v30];

    v3 = v31;
  }

  return v3;
}

- (void)deleteTemporaryImageFileIfNecessary
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = [a1 mediaURL];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1D4171000, a3, OS_LOG_TYPE_ERROR, "Failed to delete temporary image file at %@. Error: %@", &v6, 0x16u);
}

@end