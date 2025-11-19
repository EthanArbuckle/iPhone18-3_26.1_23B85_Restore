@interface HDMedicalDownloadableAttachmentEntity
+ (id)foreignKeys;
@end

@implementation HDMedicalDownloadableAttachmentEntity

+ (id)foreignKeys
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = @"account_identifier";
  v2 = [objc_alloc(MEMORY[0x277D10B38]) initWithEntityClass:objc_opt_class() property:@"identifier" deletionAction:2];
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

@end