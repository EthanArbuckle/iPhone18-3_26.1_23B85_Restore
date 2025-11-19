@interface UIColor
@end

@implementation UIColor

id __46__UIColor_MailUI__mailSecondaryLabelDarkColor__block_invoke(uint64_t a1, void *a2)
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277D75C80];
  v10[0] = a2;
  v3 = a2;
  v4 = [v2 traitCollectionWithUserInterfaceStyle:2];
  v10[1] = v4;
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v6 = [v2 traitCollectionWithTraitsFromCollections:v5];

  v7 = [MEMORY[0x277D75348] secondaryLabelColor];

  v8 = [v7 resolvedColorWithTraitCollection:v6];

  return v8;
}

uint64_t __62__UIColor_MailUI__mailConversationViewCollapsedCellLabelColor__block_invoke()
{
  v0 = [MEMORY[0x277D75348] _mui_mailUIBundleColorNamed:@"mailConversationViewCollapsedCellLabelColor"];
  v1 = mailConversationViewCollapsedCellLabelColor_sInstance;
  mailConversationViewCollapsedCellLabelColor_sInstance = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end