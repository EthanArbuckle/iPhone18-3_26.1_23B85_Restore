@interface DSUIUtilities
+ (BOOL)isPlaceholderForApp:(id)app;
+ (id)setUpBoldButtonForController:(id)controller title:(id)title target:(id)target selector:(SEL)selector;
+ (id)setUpLearnMoreButtonForController:(id)controller selector:(SEL)selector;
+ (id)setUpLinkButtonForController:(id)controller title:(id)title target:(id)target selector:(SEL)selector;
+ (id)valueForUnfinalizedString:(id)string;
@end

@implementation DSUIUtilities

+ (id)setUpBoldButtonForController:(id)controller title:(id)title target:(id)target selector:(SEL)selector
{
  v9 = MEMORY[0x277D37618];
  targetCopy = target;
  titleCopy = title;
  controllerCopy = controller;
  boldButton = [v9 boldButton];
  [boldButton setTitle:titleCopy forState:0];

  [boldButton addTarget:targetCopy action:selector forControlEvents:64];
  buttonTray = [controllerCopy buttonTray];

  [buttonTray addButton:boldButton];

  return boldButton;
}

+ (id)setUpLinkButtonForController:(id)controller title:(id)title target:(id)target selector:(SEL)selector
{
  v9 = MEMORY[0x277D37650];
  targetCopy = target;
  titleCopy = title;
  controllerCopy = controller;
  linkButton = [v9 linkButton];
  [linkButton setTitle:titleCopy forState:0];

  [linkButton addTarget:targetCopy action:selector forControlEvents:64];
  buttonTray = [controllerCopy buttonTray];

  [buttonTray addButton:linkButton];

  return linkButton;
}

+ (id)setUpLearnMoreButtonForController:(id)controller selector:(SEL)selector
{
  v5 = MEMORY[0x277D37638];
  controllerCopy = controller;
  accessoryButton = [v5 accessoryButton];
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v8 = @"LEARN_MORE_WITH_ICON";
  }

  else
  {
    v8 = @"LEARN_MORE";
  }

  v9 = DSUILocStringForKey(v8);
  [accessoryButton setTitle:v9 forState:0];
  [accessoryButton addTarget:controllerCopy action:selector forControlEvents:64];
  headerView = [controllerCopy headerView];

  [headerView addAccessoryButton:accessoryButton];

  return accessoryButton;
}

+ (BOOL)isPlaceholderForApp:(id)app
{
  v3 = MEMORY[0x277CC1E70];
  appCopy = app;
  v5 = [v3 alloc];
  v9 = 0;
  isPlaceholder = 1;
  v7 = [v5 initWithBundleIdentifier:appCopy allowPlaceholder:1 error:&v9];

  if (!v9)
  {
    isPlaceholder = [v7 isPlaceholder];
  }

  return isPlaceholder;
}

+ (id)valueForUnfinalizedString:(id)string
{
  stringCopy = string;
  if ([stringCopy hasSuffix:@"<no loc>"])
  {
    v4 = [stringCopy stringByReplacingOccurrencesOfString:@"<no loc>" withString:&stru_285BA4988];
  }

  else
  {
    v4 = stringCopy;
  }

  v5 = v4;

  return v5;
}

@end