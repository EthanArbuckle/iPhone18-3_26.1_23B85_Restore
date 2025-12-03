@interface HUAccessorySceneListContentItem
- (HUAccessorySceneListContentItem)initWithContentSource:(unint64_t)source serviceLikeItem:(id)item home:(id)home;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HUAccessorySceneListContentItem

- (HUAccessorySceneListContentItem)initWithContentSource:(unint64_t)source serviceLikeItem:(id)item home:(id)home
{
  itemCopy = item;
  homeCopy = home;
  v14.receiver = self;
  v14.super_class = HUAccessorySceneListContentItem;
  v11 = [(HUAccessorySceneListContentItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_contentSource = source;
    objc_storeStrong(&v11->_serviceLikeItem, item);
    objc_storeStrong(&v12->_home, home);
  }

  return v12;
}

- (id)_subclass_updateWithOptions:(id)options
{
  contentSource = [(HUAccessorySceneListContentItem *)self contentSource];
  serviceLikeItem = [(HUAccessorySceneListContentItem *)self serviceLikeItem];
  home = [(HUAccessorySceneListContentItem *)self home];
  v7 = [HUAccessorySceneListContentItemManager computeNumberOfItemsToDisplayForContentSource:contentSource serviceLikeItem:serviceLikeItem home:home];

  v8 = [v7 flatMap:&__block_literal_global_212];

  return v8;
}

id __63__HUAccessorySceneListContentItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277D14858];
  v3 = a2;
  v4 = objc_alloc_init(v2);
  v5 = [MEMORY[0x277CBEB98] setWithObject:objc_opt_class()];
  [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x277D13DA0]];

  v6 = MEMORY[0x277CCABB0];
  v7 = [v3 unsignedIntegerValue];

  v8 = [v6 numberWithInt:v7 == 0];
  [v4 setObject:v8 forKeyedSubscript:*MEMORY[0x277D13FB8]];

  v9 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v9;
}

@end