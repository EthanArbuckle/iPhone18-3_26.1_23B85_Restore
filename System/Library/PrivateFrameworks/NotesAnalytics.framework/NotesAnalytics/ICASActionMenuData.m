@interface ICASActionMenuData
- (ICASActionMenuData)initWithActionMenuUsageType:(id)a3 actionMenuContextType:(id)a4 actionMenuSelection:(id)a5;
- (id)toDict;
@end

@implementation ICASActionMenuData

- (ICASActionMenuData)initWithActionMenuUsageType:(id)a3 actionMenuContextType:(id)a4 actionMenuSelection:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = ICASActionMenuData;
  v12 = [(ICASActionMenuData *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_actionMenuUsageType, a3);
    objc_storeStrong(&v13->_actionMenuContextType, a4);
    objc_storeStrong(&v13->_actionMenuSelection, a5);
  }

  return v13;
}

- (id)toDict
{
  v16[3] = *MEMORY[0x277D85DE8];
  v15[0] = @"actionMenuUsageType";
  v3 = [(ICASActionMenuData *)self actionMenuUsageType];
  if (v3)
  {
    v4 = [(ICASActionMenuData *)self actionMenuUsageType];
  }

  else
  {
    v4 = objc_opt_new();
  }

  v5 = v4;
  v16[0] = v4;
  v15[1] = @"actionMenuContextType";
  v6 = [(ICASActionMenuData *)self actionMenuContextType];
  if (v6)
  {
    v7 = [(ICASActionMenuData *)self actionMenuContextType];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  v16[1] = v7;
  v15[2] = @"actionMenuSelection";
  v9 = [(ICASActionMenuData *)self actionMenuSelection];
  if (v9)
  {
    v10 = [(ICASActionMenuData *)self actionMenuSelection];
  }

  else
  {
    v10 = objc_opt_new();
  }

  v11 = v10;
  v16[2] = v10;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

@end