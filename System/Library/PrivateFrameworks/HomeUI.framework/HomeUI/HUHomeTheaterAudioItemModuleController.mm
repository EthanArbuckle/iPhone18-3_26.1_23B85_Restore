@interface HUHomeTheaterAudioItemModuleController
- (unint64_t)didSelectItem:(id)item;
- (void)setupCell:(id)cell forItem:(id)item;
- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated;
@end

@implementation HUHomeTheaterAudioItemModuleController

- (void)updateCell:(id)cell forItem:(id)item animated:(BOOL)animated
{
  animatedCopy = animated;
  cellCopy = cell;
  itemCopy = item;
  v21.receiver = self;
  v21.super_class = HUHomeTheaterAudioItemModuleController;
  [(HUItemModuleController *)&v21 updateCell:cellCopy forItem:itemCopy animated:animatedCopy];
  objc_opt_class();
  v10 = cellCopy;
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  latestResults = [itemCopy latestResults];
  v14 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [v12 setTitleText:v14];

  latestResults2 = [itemCopy latestResults];
  v16 = [latestResults2 objectForKeyedSubscript:*MEMORY[0x277D140F0]];
  bOOLValue = [v16 BOOLValue];

  if (bOOLValue)
  {
    latestResults3 = [objc_alloc(MEMORY[0x277D750E8]) initWithActivityIndicatorStyle:100];
    [latestResults3 startAnimating];
    [v12 setAccessoryView:latestResults3];
  }

  else
  {
    [v12 setAccessoryView:0];
    latestResults3 = [itemCopy latestResults];
    v19 = [latestResults3 objectForKeyedSubscript:*MEMORY[0x277D13FE8]];
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

- (unint64_t)didSelectItem:(id)item
{
  itemCopy = item;
  objc_opt_class();
  module = [(HUItemModuleController *)self module];
  if (objc_opt_isKindOfClass())
  {
    v6 = module;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  allItems = [v7 allItems];
  v9 = [allItems containsObject:itemCopy];

  if (v9)
  {
    [v7 selectItem:itemCopy];
  }

  return 0;
}

- (void)setupCell:(id)cell forItem:(id)item
{
  cellCopy = cell;
  [cellCopy setIconDisplayStyle:1];
  v5 = +[HUIconCellContentMetrics compactMetrics];
  [cellCopy setContentMetrics:v5];

  [cellCopy setDisableContinuousIconAnimation:1];
  [cellCopy setIconForegroundColorFollowsTintColor:0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  [cellCopy setIconForegroundColor:secondaryLabelColor];
}

@end