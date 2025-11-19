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
  v1 = [a1 contentID];
  v2 = [v1 ic_md5];

  return v2;
}

- (id)title
{
  v1 = [a1 fileURL];
  v2 = [v1 lastPathComponent];

  return v2;
}

- (id)fileURL
{
  v5 = 0;
  v1 = [a1 attachmentDataFileURLWithError:&v5];
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
  v2 = [a1 fileURL];
  v3 = [a1 mimeType];
  v4 = [ICLegacyAttachmentUtilities typeUTIFromFileURL:v2 mimeType:v3];

  return v4;
}

- (id)cidURL
{
  v2 = [a1 contentID];
  v3 = [v2 length];

  if (v3)
  {
    v4 = MEMORY[0x277CBEBC0];
    v5 = MEMORY[0x277CCACA8];
    v6 = [a1 contentID];
    v7 = [v5 stringWithFormat:@"cid:%@", v6];
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
  if ([a1 isDeleted])
  {
    return 1;
  }

  v3 = [a1 note];
  v4 = [v3 isDeletedOrInTrash];

  return v4;
}

- (uint64_t)isHiddenFromIndexing
{
  v2 = [a1 note];
  if (v2)
  {
    v3 = [a1 note];
    v4 = [v3 isHiddenFromIndexing];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)fileURL
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_214D51000, a2, OS_LOG_TYPE_ERROR, "Error getting legacy attachment file URL: %@", &v2, 0xCu);
}

@end