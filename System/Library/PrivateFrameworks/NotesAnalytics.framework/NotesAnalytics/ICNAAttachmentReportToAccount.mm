@interface ICNAAttachmentReportToAccount
@end

@implementation ICNAAttachmentReportToAccount

void __54___ICNAAttachmentReportToAccount_attachmentUTISummary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [ICASAttachmentUTIItemData alloc];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v5 integerValue];

  v10 = [v8 numberWithInteger:ICNARoundTo2SigFigsInt(v9)];
  v11 = [(ICASAttachmentUTIItemData *)v7 initWithUti:v6 countOfAttachments:v10];

  [*(*(*(a1 + 32) + 8) + 40) addObject:v11];
}

@end