@interface ICASAttachmentItemTypeData
- (ICASAttachmentItemTypeData)initWithAttachmentID:(id)d attachmentUTI:(id)i;
- (id)toDict;
@end

@implementation ICASAttachmentItemTypeData

- (ICASAttachmentItemTypeData)initWithAttachmentID:(id)d attachmentUTI:(id)i
{
  dCopy = d;
  iCopy = i;
  v12.receiver = self;
  v12.super_class = ICASAttachmentItemTypeData;
  v9 = [(ICASAttachmentItemTypeData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attachmentID, d);
    objc_storeStrong(&v10->_attachmentUTI, i);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"attachmentID";
  attachmentID = [(ICASAttachmentItemTypeData *)self attachmentID];
  if (attachmentID)
  {
    attachmentID2 = [(ICASAttachmentItemTypeData *)self attachmentID];
  }

  else
  {
    attachmentID2 = objc_opt_new();
  }

  v5 = attachmentID2;
  v12[1] = @"attachmentUTI";
  v13[0] = attachmentID2;
  attachmentUTI = [(ICASAttachmentItemTypeData *)self attachmentUTI];
  if (attachmentUTI)
  {
    attachmentUTI2 = [(ICASAttachmentItemTypeData *)self attachmentUTI];
  }

  else
  {
    attachmentUTI2 = objc_opt_new();
  }

  v8 = attachmentUTI2;
  v13[1] = attachmentUTI2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end