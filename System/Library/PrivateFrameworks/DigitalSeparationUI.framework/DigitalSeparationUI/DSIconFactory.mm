@interface DSIconFactory
+ (id)iconWithSize:(float)a3 contact:(id)a4;
@end

@implementation DSIconFactory

+ (id)iconWithSize:(float)a3 contact:(id)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CBDBD0];
  v6 = a4;
  v7 = [v5 alloc];
  v8 = [MEMORY[0x277CBDBD8] defaultSettings];
  v9 = [v7 initWithSettings:v8];

  v10 = [*MEMORY[0x277D76620] userInterfaceLayoutDirection] == 1;
  v11 = MEMORY[0x277CBDBE0];
  v12 = [MEMORY[0x277D759A0] mainScreen];
  [v12 scale];
  v14 = [v11 scopeWithPointSize:v10 scale:0 rightToLeft:a3 style:{a3, v13}];

  v19[0] = v6;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];

  v16 = [v9 avatarImageForContacts:v15 scope:v14];

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

@end