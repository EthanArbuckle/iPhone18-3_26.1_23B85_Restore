@interface HUListContentConfigurationUtilities
+ (id)buttonStyleConfigurationForItem:(id)a3 isDestructive:(BOOL)a4;
+ (id)instructionsConfigurationForItem:(id)a3;
+ (id)labelConfiguration:(id)a3 forItem:(id)a4;
+ (id)labelDefaultConfigurationForItem:(id)a3;
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

+ (id)buttonStyleConfigurationForItem:(id)a3 isDestructive:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  [objc_opt_class() _setupCachedConfigurations];
  v6 = [qword_281121FD0 copy];
  v7 = [v5 latestResults];

  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v6 setText:v8];

  if (v4)
  {
    [MEMORY[0x277D75348] systemRedColor];
  }

  else
  {
    [MEMORY[0x277D75348] hf_keyColor];
  }
  v9 = ;
  v10 = [v6 textProperties];
  [v10 setColor:v9];

  return v6;
}

+ (id)labelDefaultConfigurationForItem:(id)a3
{
  v3 = a3;
  [objc_opt_class() _setupCachedConfigurations];
  v4 = objc_opt_class();
  v5 = [_MergedGlobals_630 copy];
  v6 = [v4 labelConfiguration:v5 forItem:v3];

  return v6;
}

+ (id)labelConfiguration:(id)a3 forItem:(id)a4
{
  v5 = a3;
  v6 = [a4 latestResults];
  v7 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v5 setText:v7];

  v8 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E20]];
  [v5 setSecondaryText:v8];

  v9 = [MEMORY[0x277D75348] secondaryLabelColor];
  v10 = [v5 secondaryTextProperties];
  [v10 setColor:v9];

  v11 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13E98]];
  v12 = [v6 objectForKeyedSubscript:*MEMORY[0x277D13EA0]];
  v13 = v12;
  if (v11)
  {
    [v5 setImage:v11];
  }

  else if (v12)
  {
    v14 = [MEMORY[0x277D755B8] systemImageNamed:v12];
    [v5 setImage:v14];
  }

  return v5;
}

+ (id)instructionsConfigurationForItem:(id)a3
{
  v3 = a3;
  if (qword_281121FE8 != -1)
  {
    dispatch_once(&qword_281121FE8, &__block_literal_global_4_2);
  }

  v4 = [v3 latestResults];
  v5 = [v4 objectForKeyedSubscript:@"instructionsStyle"];

  if (v5)
  {
    v6 = [v5 integerValue];
  }

  else
  {
    NSLog(&cfstr_NoInstructions.isa);
    v6 = -1;
  }

  v7 = [v3 latestResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F60]];

  v9 = [v3 latestResults];
  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  v11 = 0;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      goto LABEL_15;
    }

    if (v6 == 4)
    {
      v11 = [qword_281121FD8 copy];
      [v11 setText:v8];
      goto LABEL_21;
    }

    if (v6 != 5)
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

  switch(v6)
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