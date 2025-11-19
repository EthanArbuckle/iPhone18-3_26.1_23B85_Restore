@interface HUAccessorySceneListContentItem
- (HUAccessorySceneListContentItem)initWithContentSource:(unint64_t)a3 serviceLikeItem:(id)a4 home:(id)a5;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HUAccessorySceneListContentItem

- (HUAccessorySceneListContentItem)initWithContentSource:(unint64_t)a3 serviceLikeItem:(id)a4 home:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HUAccessorySceneListContentItem;
  v11 = [(HUAccessorySceneListContentItem *)&v14 init];
  v12 = v11;
  if (v11)
  {
    v11->_contentSource = a3;
    objc_storeStrong(&v11->_serviceLikeItem, a4);
    objc_storeStrong(&v12->_home, a5);
  }

  return v12;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v4 = [(HUAccessorySceneListContentItem *)self contentSource];
  v5 = [(HUAccessorySceneListContentItem *)self serviceLikeItem];
  v6 = [(HUAccessorySceneListContentItem *)self home];
  v7 = [HUAccessorySceneListContentItemManager computeNumberOfItemsToDisplayForContentSource:v4 serviceLikeItem:v5 home:v6];

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