@interface ICASAttachmentData
- (ICASAttachmentData)initWithAttachmentSummary:(id)summary;
- (id)toDict;
@end

@implementation ICASAttachmentData

- (ICASAttachmentData)initWithAttachmentSummary:(id)summary
{
  summaryCopy = summary;
  v9.receiver = self;
  v9.super_class = ICASAttachmentData;
  v6 = [(ICASAttachmentData *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_attachmentSummary, summary);
  }

  return v7;
}

- (id)toDict
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = @"attachmentSummary";
  attachmentSummary = [(ICASAttachmentData *)self attachmentSummary];
  if (attachmentSummary)
  {
    attachmentSummary2 = [(ICASAttachmentData *)self attachmentSummary];
  }

  else
  {
    attachmentSummary2 = objc_opt_new();
  }

  v5 = attachmentSummary2;
  v10[0] = attachmentSummary2;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

@end