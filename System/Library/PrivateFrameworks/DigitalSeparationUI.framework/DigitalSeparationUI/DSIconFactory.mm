@interface DSIconFactory
+ (id)iconWithSize:(float)size contact:(id)contact;
@end

@implementation DSIconFactory

+ (id)iconWithSize:(float)size contact:(id)contact
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBDBD0];
  contactCopy = contact;
  v7 = [v5 alloc];
  defaultSettings = [MEMORY[0x277CBDBD8] defaultSettings];
  v9 = [v7 initWithSettings:defaultSettings];

  v10 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
  v11 = MEMORY[0x277CBDBE0];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v14 = [v11 scopeWithPointSize:v10 scale:0 rightToLeft:size style:{size, v13}];

  v19[0] = contactCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];

  v16 = [v9 avatarImageForContacts:v15 scope:v14];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end