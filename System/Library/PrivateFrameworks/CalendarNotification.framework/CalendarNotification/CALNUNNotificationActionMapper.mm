@interface CALNUNNotificationActionMapper
+ (id)_calnNotificationActionFromUNNotificationAction:(id)action;
+ (id)_unNotificationActionFromCALNNotificationAction:(id)action;
+ (id)calnNotificationActionsFromUNNotificationActions:(id)actions;
+ (id)unNotificationActionsFromCALNNotificationActions:(id)actions;
@end

@implementation CALNUNNotificationActionMapper

+ (id)unNotificationActionsFromCALNNotificationActions:(id)actions
{
  v4 = MEMORY[0x277CBEB18];
  actionsCopy = actions;
  array = [v4 array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __83__CALNUNNotificationActionMapper_unNotificationActionsFromCALNNotificationActions___block_invoke;
  v13 = &unk_278D6F160;
  v14 = array;
  selfCopy = self;
  v7 = array;
  [actionsCopy enumerateObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __83__CALNUNNotificationActionMapper_unNotificationActionsFromCALNNotificationActions___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _unNotificationActionFromCALNNotificationAction:a2];
  [*(a1 + 32) addObject:v3];
}

+ (id)calnNotificationActionsFromUNNotificationActions:(id)actions
{
  v4 = MEMORY[0x277CBEB18];
  actionsCopy = actions;
  array = [v4 array];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __83__CALNUNNotificationActionMapper_calnNotificationActionsFromUNNotificationActions___block_invoke;
  v13 = &unk_278D6F188;
  v14 = array;
  selfCopy = self;
  v7 = array;
  [actionsCopy enumerateObjectsUsingBlock:&v10];

  v8 = [v7 copy];

  return v8;
}

void __83__CALNUNNotificationActionMapper_calnNotificationActionsFromUNNotificationActions___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 40) _calnNotificationActionFromUNNotificationAction:a2];
  [*(a1 + 32) addObject:v3];
}

+ (id)_unNotificationActionFromCALNNotificationAction:(id)action
{
  actionCopy = action;
  identifier = [actionCopy identifier];
  title = [actionCopy title];
  systemImageName = [actionCopy systemImageName];
  v7 = [actionCopy url];

  if (systemImageName)
  {
    v8 = [MEMORY[0x277CE1F88] iconWithSystemImageName:systemImageName];
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    [MEMORY[0x277CE1F80] actionWithIdentifier:identifier title:title url:v7 options:0 icon:v8];
  }

  else
  {
    [MEMORY[0x277CE1F80] actionWithIdentifier:identifier title:title options:0 icon:v8];
  }
  v9 = ;

  return v9;
}

+ (id)_calnNotificationActionFromUNNotificationAction:(id)action
{
  actionCopy = action;
  identifier = [actionCopy identifier];
  title = [actionCopy title];
  icon = [actionCopy icon];
  imageName = [icon imageName];
  v8 = [actionCopy url];

  v9 = [CALNNotificationAction actionWithIdentifier:identifier title:title systemImageName:imageName url:v8];

  return v9;
}

@end