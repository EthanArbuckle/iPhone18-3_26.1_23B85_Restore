@interface HUHomeTheaterAudioItemModuleController
- (unint64_t)didSelectItem:(id)a3;
- (void)setupCell:(id)a3 forItem:(id)a4;
- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5;
@end

@implementation HUHomeTheaterAudioItemModuleController

- (void)updateCell:(id)a3 forItem:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v9 = a4;
  v21.receiver = self;
  v21.super_class = HUHomeTheaterAudioItemModuleController;
  [(HUItemModuleController *)&v21 updateCell:v8 forItem:v9 animated:v5];
  objc_opt_class();
  v10 = v8;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  v13 = [v9 latestResults];
  v14 = [v13 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v12 setTitleText:v14];

  v15 = [v9 latestResults];
  v16 = [v15 objectForKeyedSubscript:*MEMORY[0x277D140F0]];
  v17 = [v16 BOOLValue];

  if (v17)
  {
    v18 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [v18 startAnimating];
    [v12 setAccessoryView:v18];
  }

  else
  {
    [v12 setAccessoryView:0];
    v18 = [v9 latestResults];
    v19 = [v18 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
    if ([v19 BOOLValue])
    {
      v20 = 3;
    }

    else
    {
      v20 = 0;
    }

    [v12 setAccessoryType:v20];
  }
}

- (unint64_t)didSelectItem:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v7 allItems];
  v9 = [v8 containsObject:v4];

  if (v9)
  {
    [v7 selectItem:v4];
  }

  return 0;
}

- (void)setupCell:(id)a3 forItem:(id)a4
{
  v4 = a3;
  [v4 setIconDisplayStyle:1];
  v5 = +[HUIconCellContentMetrics compactMetrics];
  [v4 setContentMetrics:v5];

  [v4 setDisableContinuousIconAnimation:1];
  [v4 setIconForegroundColorFollowsTintColor:0];
  v6 = [MEMORY[0x277D75348] secondaryLabelColor];
  [v4 setIconForegroundColor:v6];
}

@end