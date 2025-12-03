@interface HUListContentConfigurationUtilities
+ (id)buttonStyleConfigurationForItem:(id)item isDestructive:(BOOL)destructive;
+ (id)instructionsConfigurationForItem:(id)item;
+ (id)labelConfiguration:(id)configuration forItem:(id)item;
+ (id)labelDefaultConfigurationForItem:(id)item;
+ (void)_setupCachedConfigurations;
@end

@implementation HUListContentConfigurationUtilities

+ (void)_setupCachedConfigurations
{
  if (_setupCachedConfigurations_onceToken != -1)
  {
    dispatch_once(&_setupCachedConfigurations_onceToken, &__block_literal_global_191);
  }
}

void __65__HUListContentConfigurationUtilities__setupCachedConfigurations__block_invoke()
{
  v0 = [MEMORY[0x277D756E0] cellConfiguration];
  v1 = _MergedGlobals_630;
  _MergedGlobals_630 = v0;

  v2 = [_MergedGlobals_630 copy];
  v3 = qword_281121FD0;
  qword_281121FD0 = v2;
}

+ (id)buttonStyleConfigurationForItem:(id)item isDestructive:(BOOL)destructive
{
  destructiveCopy = destructive;
  itemCopy = item;
  [objc_opt_class() _setupCachedConfigurations];
  v6 = [qword_281121FD0 copy];
  latestResults = [itemCopy latestResults];

  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v6 setText:v8];

  if (destructiveCopy)
  {
    [MEMORY[0x277D75348] systemRedColor];
  }

  else
  {
    [MEMORY[0x277D75348] hf_keyColor];
  }
  v9 = ;
  textProperties = [v6 textProperties];
  [textProperties setColor:v9];

  return v6;
}

+ (id)labelDefaultConfigurationForItem:(id)item
{
  itemCopy = item;
  [objc_opt_class() _setupCachedConfigurations];
  v4 = objc_opt_class();
  v5 = [_MergedGlobals_630 copy];
  v6 = [v4 labelConfiguration:v5 forItem:itemCopy];

  return v6;
}

+ (id)labelConfiguration:(id)configuration forItem:(id)item
{
  configurationCopy = configuration;
  latestResults = [item latestResults];
  v7 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [configurationCopy setText:v7];

  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  [configurationCopy setSecondaryText:v8];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  secondaryTextProperties = [configurationCopy secondaryTextProperties];
  [secondaryTextProperties setColor:secondaryLabelColor];

  v11 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E98]];
  v12 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13EA0]];
  v13 = v12;
  if (v11)
  {
    [configurationCopy setImage:v11];
  }

  else if (v12)
  {
    v14 = [MEMORY[0x277D755B8] systemImageNamed:v12];
    [configurationCopy setImage:v14];
  }

  return configurationCopy;
}

+ (id)instructionsConfigurationForItem:(id)item
{
  itemCopy = item;
  if (qword_281121FE8 != -1)
  {
    dispatch_once(&qword_281121FE8, &__block_literal_global_4_2);
  }

  latestResults = [itemCopy latestResults];
  v5 = [latestResults objectForKeyedSubscript:@"instructionsStyle"];

  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    NSLog(&cfstr_NoInstructions.isa);
    integerValue = -1;
  }

  latestResults2 = [itemCopy latestResults];
  v8 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  latestResults3 = [itemCopy latestResults];
  v10 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  v11 = 0;
  if (integerValue > 2)
  {
    if (integerValue == 3)
    {
      goto LABEL_15;
    }

    if (integerValue == 4)
    {
      v11 = [qword_281121FD8 copy];
      [v11 setText:v8];
      goto LABEL_21;
    }

    if (integerValue != 5)
    {
      goto LABEL_22;
    }

    v12 = [qword_281121FD8 copy];
    v11 = v12;
LABEL_17:
    [v12 setSecondaryText:v10];
LABEL_21:
    [v11 directionalLayoutMargins];
    v15 = v14;
    [qword_281121FE0 directionalLayoutMargins];
    v17 = v16;
    [v11 directionalLayoutMargins];
    v19 = v18;
    [v11 directionalLayoutMargins];
    [v11 setDirectionalLayoutMargins:{v15, v17, v19}];
    goto LABEL_22;
  }

  switch(integerValue)
  {
    case 0:
      v11 = [qword_281121FD8 copy];
      [v11 setText:v8];
      v12 = v11;
      goto LABEL_17;
    case 1:
      v13 = qword_281121FE0;
      goto LABEL_19;
    case 2:
LABEL_15:
      v13 = qword_281121FD8;
LABEL_19:
      v11 = [v13 copy];
      [v11 setText:v8];
      [v11 setSecondaryText:v10];
      break;
  }

LABEL_22:

  return v11;
}

void __72__HUListContentConfigurationUtilities_instructionsConfigurationForItem___block_invoke()
{
  v0 = [MEMORY[0x277D756E0] prominentInsetGroupedHeaderConfiguration];
  v1 = qword_281121FD8;
  qword_281121FD8 = v0;

  v2 = [MEMORY[0x277D756E0] groupedHeaderConfiguration];
  v3 = qword_281121FE0;
  qword_281121FE0 = v2;
}

@end