@interface NoteAttachmentObject(ICLegacyAttachment)
- (id)cidURL;
- (id)fileURL;
- (id)identifier;
- (id)title;
- (id)typeUTI;
- (uint64_t)isDeletedOrInTrash;
- (uint64_t)isHiddenFromIndexing;
- (void)fileURL;
@end

@implementation NoteAttachmentObject(ICLegacyAttachment)

- (id)identifier
{
  contentID = [self contentID];
  ic_md5 = [contentID ic_md5];

  return ic_md5;
}

- (id)title
{
  fileURL = [self fileURL];
  lastPathComponent = [fileURL lastPathComponent];

  return lastPathComponent;
}

- (id)fileURL
{
  v5 = 0;
  v1 = [self attachmentDataFileURLWithError:&v5];
  v2 = v5;
  if (v2)
  {
    v3 = os_log_create("com.apple.notes", "HTML");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      [(NoteAttachmentObject(ICLegacyAttachment) *)v2 fileURL];
    }
  }

  return v1;
}

- (id)typeUTI
{
  fileURL = [self fileURL];
  mimeType = [self mimeType];
  v4 = [ICLegacyAttachmentUtilities typeUTIFromFileURL:fileURL mimeType:mimeType];

  return v4;
}

- (id)cidURL
{
  contentID = [self contentID];
  v3 = [contentID length];

  if (v3)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = MEMORY[0x277CCACA8];
    contentID2 = [self contentID];
    v7 = [v5 stringWithFormat:@"cid:%@", contentID2];
    v8 = [v4 URLWithString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)isDeletedOrInTrash
{
  if ([self isDeleted])
  {
    return 1;
  }

  note = [self note];
  isDeletedOrInTrash = [note isDeletedOrInTrash];

  return isDeletedOrInTrash;
}

- (uint64_t)isHiddenFromIndexing
{
  note = [self note];
  if (note)
  {
    note2 = [self note];
    isHiddenFromIndexing = [note2 isHiddenFromIndexing];
  }

  else
  {
    isHiddenFromIndexing = 1;
  }

  return isHiddenFromIndexing;
}

- (void)fileURL
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  selfCopy = self;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Error getting legacy attachment file URL: %@", &v2, 0xCu);
}

@end