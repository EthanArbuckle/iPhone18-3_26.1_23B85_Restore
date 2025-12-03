@interface ICAddAttachmentsManagerAttachmentInfo
- (BOOL)isPhoto;
- (BOOL)isVideo;
- (ICAddAttachmentsManagerAttachmentInfo)initWithFileURL:(id)l;
- (id)attachmentIfExistsForAccount:(id)account;
- (id)description;
- (unint64_t)mediaSize;
- (void)deleteTemporaryImageFileIfNecessary;
- (void)setMediaURL:(id)l;
@end

@implementation ICAddAttachmentsManagerAttachmentInfo

- (ICAddAttachmentsManagerAttachmentInfo)initWithFileURL:(id)l
{
  lCopy = l;
  v8.receiver = self;
  v8.super_class = ICAddAttachmentsManagerAttachmentInfo;
  v5 = [(ICAddAttachmentsManagerAttachmentInfo *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ICAddAttachmentsManagerAttachmentInfo *)v5 setMediaURL:lCopy];
  }

  return v6;
}

- (void)setMediaURL:(id)l
{
  lCopy = l;
  objc_storeStrong(&self->_mediaURL, l);
  v33 = 0;
  v6 = *MEMORY[0x1E695DC10];
  v32 = 0;
  v7 = [lCopy getResourceValue:&v33 forKey:v6 error:&v32];
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
    v9 = [[v10 alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];

    path = [v9 path];
    lastPathComponent = [path lastPathComponent];
    [(ICAddAttachmentsManagerAttachmentInfo *)self setTitle:lastPathComponent];
  }

  v31 = 0;
  v14 = *MEMORY[0x1E695DC68];
  v30 = 0;
  v15 = [lCopy getResourceValue:&v31 forKey:v14 error:&v30];
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

  mediaUTI = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaUTI];
  if (![mediaUTI length])
  {
LABEL_13:

    goto LABEL_14;
  }

  v20 = MEMORY[0x1E6982C40];
  mediaUTI2 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaUTI];
  v22 = [v20 typeWithIdentifier:mediaUTI2];
  v23 = [v22 conformsToType:*MEMORY[0x1E6982F10]];

  if (v23)
  {
    v24 = objc_alloc(MEMORY[0x1E6978028]);
    mediaURL = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaURL];
    mediaUTI = [v24 initWithURL:mediaURL];

    documentAttributes = [mediaUTI documentAttributes];
    v27 = [documentAttributes objectForKeyedSubscript:*MEMORY[0x1E6978110]];

    if ([v27 length])
    {
      [(ICAddAttachmentsManagerAttachmentInfo *)self setTitle:v27];
    }

    else
    {
      title = [(ICAddAttachmentsManagerAttachmentInfo *)self title];
      stringByDeletingPathExtension = [title stringByDeletingPathExtension];
      [(ICAddAttachmentsManagerAttachmentInfo *)self setTitle:stringByDeletingPathExtension];
    }

    goto LABEL_13;
  }

LABEL_14:
}

- (id)attachmentIfExistsForAccount:(id)account
{
  accountCopy = account;
  attachment = [(ICAddAttachmentsManagerAttachmentInfo *)self attachment];
  v6 = attachment;
  if (attachment)
  {
    note = [attachment note];
    account = [note account];

    v9 = v6;
    if (account != accountCopy)
    {
      v10 = MEMORY[0x1E69B7680];
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];
      managedObjectContext = [accountCopy managedObjectContext];
      v9 = [v10 newObjectWithIdentifier:uUIDString context:managedObjectContext];

      persistentStore = [accountCopy persistentStore];
      [v9 assignToPersistentStore:persistentStore];

      typeUTI = [v6 typeUTI];
      [v9 setTypeUTI:typeUTI];

      urlString = [v6 urlString];
      [v9 setUrlString:urlString];

      title = [v6 title];
      [v9 setTitle:title];

      creationDate = [v6 creationDate];
      [v9 setCreationDate:creationDate];

      modificationDate = [v6 modificationDate];
      [v9 setModificationDate:modificationDate];

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
  mediaData = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaData];

  if (mediaData)
  {
    mediaData2 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaData];
    v5 = [mediaData2 length];

    return v5;
  }

  else
  {
    mediaURL = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaURL];
    v14 = 0;
    v8 = *MEMORY[0x1E695DB50];
    v13 = 0;
    v9 = [mediaURL getResourceValue:&v14 forKey:v8 error:&v13];
    v10 = v14;
    v11 = v13;

    unsignedLongLongValue = 0;
    if (v9)
    {
      unsignedLongLongValue = [v10 unsignedLongLongValue];
    }

    return unsignedLongLongValue;
  }
}

- (BOOL)isPhoto
{
  attachment = [(ICAddAttachmentsManagerAttachmentInfo *)self attachment];
  if (attachment)
  {
    attachment2 = [(ICAddAttachmentsManagerAttachmentInfo *)self attachment];
    if ([attachment2 attachmentType] == 3)
    {
      v5 = 1;
LABEL_8:

      goto LABEL_9;
    }
  }

  v6 = MEMORY[0x1E69B7680];
  mediaUTI = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaUTI];
  if ([v6 typeUTIIsImage:mediaUTI])
  {
    v5 = 1;
  }

  else
  {
    image = [(ICAddAttachmentsManagerAttachmentInfo *)self image];
    v5 = image != 0;
  }

  if (attachment)
  {
    goto LABEL_8;
  }

LABEL_9:

  return v5;
}

- (BOOL)isVideo
{
  attachment = [(ICAddAttachmentsManagerAttachmentInfo *)self attachment];
  if (attachment)
  {
    attachment2 = [(ICAddAttachmentsManagerAttachmentInfo *)self attachment];
    if ([attachment2 attachmentType] == 5)
    {
      v5 = 1;
LABEL_5:

      goto LABEL_6;
    }
  }

  v6 = MEMORY[0x1E69B7680];
  mediaUTI = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaUTI];
  v5 = [v6 typeUTIIsPlayableMovie:mediaUTI];

  if (attachment)
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
  attachment = [(ICAddAttachmentsManagerAttachmentInfo *)self attachment];

  if (attachment)
  {
    v5 = MEMORY[0x1E696AEC0];
    attachment2 = [(ICAddAttachmentsManagerAttachmentInfo *)self attachment];
    v7 = [v5 stringWithFormat:@"%@ attachment:%@", v3, attachment2];

    v3 = v7;
  }

  title = [(ICAddAttachmentsManagerAttachmentInfo *)self title];

  if (title)
  {
    v9 = MEMORY[0x1E696AEC0];
    title2 = [(ICAddAttachmentsManagerAttachmentInfo *)self title];
    v11 = [v9 stringWithFormat:@"%@ title:%@", v3, title2];

    v3 = v11;
  }

  mediaURL = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaURL];

  if (mediaURL)
  {
    v13 = MEMORY[0x1E696AEC0];
    mediaURL2 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaURL];
    v15 = [v13 stringWithFormat:@"%@ mediaURL:%@", v3, mediaURL2];

    v3 = v15;
  }

  mediaUTI = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaUTI];

  if (mediaUTI)
  {
    v17 = MEMORY[0x1E696AEC0];
    mediaUTI2 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaUTI];
    v19 = [v17 stringWithFormat:@"%@ mediaUTI:%@", v3, mediaUTI2];

    v3 = v19;
  }

  mediaData = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaData];

  if (mediaData)
  {
    v21 = MEMORY[0x1E696AEC0];
    mediaData2 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaData];
    v23 = [v21 stringWithFormat:@"%@ mediaData:%@", v3, mediaData2];

    v3 = v23;
  }

  mediaFilenameExtension = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaFilenameExtension];

  if (mediaFilenameExtension)
  {
    v25 = MEMORY[0x1E696AEC0];
    mediaFilenameExtension2 = [(ICAddAttachmentsManagerAttachmentInfo *)self mediaFilenameExtension];
    v27 = [v25 stringWithFormat:@"%@ mediaFilenameExtension:%@", v3, mediaFilenameExtension2];

    v3 = v27;
  }

  image = [(ICAddAttachmentsManagerAttachmentInfo *)self image];

  if (image)
  {
    v29 = MEMORY[0x1E696AEC0];
    image2 = [(ICAddAttachmentsManagerAttachmentInfo *)self image];
    v31 = [v29 stringWithFormat:@"%@ attachment:%@", v3, image2];

    v3 = v31;
  }

  return v3;
}

- (void)deleteTemporaryImageFileIfNecessary
{
  v10 = *MEMORY[0x1E69E9840];
  mediaURL = [self mediaURL];
  v6 = 138412546;
  v7 = mediaURL;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1D4171000, a3, OS_LOG_TYPE_ERROR, "Failed to delete temporary image file at %@. Error: %@", &v6, 0x16u);
}

@end