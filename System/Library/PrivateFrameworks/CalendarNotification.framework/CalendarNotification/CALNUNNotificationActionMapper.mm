@interface CALNUNNotificationActionMapper
+ (id)_calnNotificationActionFromUNNotificationAction:(id)a3;
+ (id)_unNotificationActionFromCALNNotificationAction:(id)a3;
+ (id)calnNotificationActionsFromUNNotificationActions:(id)a3;
+ (id)unNotificationActionsFromCALNNotificationActions:(id)a3;
@end

@implementation CALNUNNotificationActionMapper

+ (id)unNotificationActionsFromCALNNotificationActions:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __83__CALNUNNotificationActionMapper_unNotificationActionsFromCALNNotificationActions___block_invoke;
  v13 = &unk_278D6F160;
  v14 = v6;
  v15 = a1;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __83__CALNUNNotificationActionMapper_unNotificationActionsFromCALNNotificationActions___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _unNotificationActionFromCALNNotificationAction:a2];
  [*(a1 + 32) addObject:v3];
}

+ (id)calnNotificationActionsFromUNNotificationActions:(id)a3
{
  v4 = MEMORY[0x277CBEB18];
  v5 = a3;
  v6 = [v4 array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __83__CALNUNNotificationActionMapper_calnNotificationActionsFromUNNotificationActions___block_invoke;
  v13 = &unk_278D6F188;
  v14 = v6;
  v15 = a1;
  v7 = v6;
  [v5 enumerateObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __83__CALNUNNotificationActionMapper_calnNotificationActionsFromUNNotificationActions___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _calnNotificationActionFromUNNotificationAction:a2];
  [*(a1 + 32) addObject:v3];
}

+ (id)_unNotificationActionFromCALNNotificationAction:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v3 title];
  v6 = [v3 systemImageName];
  v7 = [v3 url];

  if (v6)
  {
    v8 = [MEMORY[0x277CE1F88] iconWithSystemImageName:v6];
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    [MEMORY[0x277CE1F80] actionWithIdentifier:v4 title:v5 url:v7 options:0 icon:v8];
  }

  else
  {
    [MEMORY[0x277CE1F80] actionWithIdentifier:v4 title:v5 options:0 icon:v8];
  }
  v9 = ;

  return v9;
}

+ (id)_calnNotificationActionFromUNNotificationAction:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  v5 = [v3 title];
  v6 = [v3 icon];
  v7 = [v6 imageName];
  v8 = [v3 url];

  v9 = [CALNNotificationAction actionWithIdentifier:v4 title:v5 systemImageName:v7 url:v8];

  return v9;
}

@end