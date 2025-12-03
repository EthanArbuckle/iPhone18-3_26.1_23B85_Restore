@interface ICASAttachmentSnapshotItemData
- (ICASAttachmentSnapshotItemData)initWithAttachmentID:(id)d attachmentTypeUTI:(id)i;
- (id)toDict;
@end

@implementation ICASAttachmentSnapshotItemData

- (ICASAttachmentSnapshotItemData)initWithAttachmentID:(id)d attachmentTypeUTI:(id)i
{
  dCopy = d;
  iCopy = i;
  v12.receiver = self;
  v12.super_class = ICASAttachmentSnapshotItemData;
  v9 = [(ICASAttachmentSnapshotItemData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attachmentID, d);
    objc_storeStrong(&v10->_attachmentTypeUTI, i);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"attachmentID";
  attachmentID = [(ICASAttachmentSnapshotItemData *)self attachmentID];
  if (attachmentID)
  {
    attachmentID2 = [(ICASAttachmentSnapshotItemData *)self attachmentID];
  }

  else
  {
    attachmentID2 = objc_opt_new();
  }

  v5 = attachmentID2;
  v12[1] = @"attachmentTypeUTI";
  v13[0] = attachmentID2;
  attachmentTypeUTI = [(ICASAttachmentSnapshotItemData *)self attachmentTypeUTI];
  if (attachmentTypeUTI)
  {
    attachmentTypeUTI2 = [(ICASAttachmentSnapshotItemData *)self attachmentTypeUTI];
  }

  else
  {
    attachmentTypeUTI2 = objc_opt_new();
  }

  v8 = attachmentTypeUTI2;
  v13[1] = attachmentTypeUTI2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end