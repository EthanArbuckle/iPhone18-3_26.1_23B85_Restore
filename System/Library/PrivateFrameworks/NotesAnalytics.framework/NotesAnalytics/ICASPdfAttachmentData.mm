@interface ICASPdfAttachmentData
- (ICASPdfAttachmentData)initWithAttachmentID:(id)d hasActivity:(id)activity;
- (id)toDict;
@end

@implementation ICASPdfAttachmentData

- (ICASPdfAttachmentData)initWithAttachmentID:(id)d hasActivity:(id)activity
{
  dCopy = d;
  activityCopy = activity;
  v12.receiver = self;
  v12.super_class = ICASPdfAttachmentData;
  v9 = [(ICASPdfAttachmentData *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_attachmentID, d);
    objc_storeStrong(&v10->_hasActivity, activity);
  }

  return v10;
}

- (id)toDict
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"attachmentID";
  attachmentID = [(ICASPdfAttachmentData *)self attachmentID];
  if (attachmentID)
  {
    attachmentID2 = [(ICASPdfAttachmentData *)self attachmentID];
  }

  else
  {
    attachmentID2 = objc_opt_new();
  }

  v5 = attachmentID2;
  v12[1] = @"hasActivity";
  v13[0] = attachmentID2;
  hasActivity = [(ICASPdfAttachmentData *)self hasActivity];
  if (hasActivity)
  {
    hasActivity2 = [(ICASPdfAttachmentData *)self hasActivity];
  }

  else
  {
    hasActivity2 = objc_opt_new();
  }

  v8 = hasActivity2;
  v13[1] = hasActivity2;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

@end