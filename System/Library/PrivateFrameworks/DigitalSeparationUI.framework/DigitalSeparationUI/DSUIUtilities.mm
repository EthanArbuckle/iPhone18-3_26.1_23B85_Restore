@interface DSUIUtilities
+ (BOOL)isPlaceholderForApp:(id)a3;
+ (id)setUpBoldButtonForController:(id)a3 title:(id)a4 target:(id)a5 selector:(SEL)a6;
+ (id)setUpLearnMoreButtonForController:(id)a3 selector:(SEL)a4;
+ (id)setUpLinkButtonForController:(id)a3 title:(id)a4 target:(id)a5 selector:(SEL)a6;
+ (id)valueForUnfinalizedString:(id)a3;
@end

@implementation DSUIUtilities

+ (id)setUpBoldButtonForController:(id)a3 title:(id)a4 target:(id)a5 selector:(SEL)a6
{
  v9 = MEMORY[0x277D37618];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 boldButton];
  [v13 setTitle:v11 forState:0];

  [v13 addTarget:v10 action:a6 forControlEvents:64];
  v14 = [v12 buttonTray];

  [v14 addButton:v13];

  return v13;
}

+ (id)setUpLinkButtonForController:(id)a3 title:(id)a4 target:(id)a5 selector:(SEL)a6
{
  v9 = MEMORY[0x277D37650];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 linkButton];
  [v13 setTitle:v11 forState:0];

  [v13 addTarget:v10 action:a6 forControlEvents:64];
  v14 = [v12 buttonTray];

  [v14 addButton:v13];

  return v13;
}

+ (id)setUpLearnMoreButtonForController:(id)a3 selector:(SEL)a4
{
  v5 = MEMORY[0x277D37638];
  v6 = a3;
  v7 = [v5 accessoryButton];
  if (+[DSFeatureFlags isNaturalUIEnabled])
  {
    v8 = @"LEARN_MORE_WITH_ICON";
  }

  else
  {
    v8 = @"LEARN_MORE";
  }

  v9 = DSUILocStringForKey(v8);
  [v7 setTitle:v9 forState:0];
  [v7 addTarget:v6 action:a4 forControlEvents:64];
  v10 = [v6 headerView];

  [v10 addAccessoryButton:v7];

  return v7;
}

+ (BOOL)isPlaceholderForApp:(id)a3
{
  v3 = MEMORY[0x277CC1E70];
  v4 = a3;
  v5 = [v3 alloc];
  v9 = 0;
  v6 = 1;
  v7 = [v5 initWithBundleIdentifier:v4 allowPlaceholder:1 error:&v9];

  if (!v9)
  {
    v6 = [v7 isPlaceholder];
  }

  return v6;
}

+ (id)valueForUnfinalizedString:(id)a3
{
  v3 = a3;
  if ([v3 hasSuffix:@"<no loc>"])
  {
    v4 = [v3 stringByReplacingOccurrencesOfString:@"<no loc>" withString:&stru_285BA4988];
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

@end