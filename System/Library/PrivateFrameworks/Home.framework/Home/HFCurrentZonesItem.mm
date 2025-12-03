@interface HFCurrentZonesItem
- (HFCurrentZonesItem)init;
- (HFCurrentZonesItem)initWithRoom:(id)room;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFCurrentZonesItem

- (HFCurrentZonesItem)initWithRoom:(id)room
{
  roomCopy = room;
  v9.receiver = self;
  v9.super_class = HFCurrentZonesItem;
  v6 = [(HFCurrentZonesItem *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_room, room);
  }

  return v7;
}

- (HFCurrentZonesItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithRoom_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFCurrentZonesItem.m" lineNumber:30 description:{@"%s is unavailable; use %@ instead", "-[HFCurrentZonesItem init]", v5}];

  return 0;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277D2C900]);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  room = [(HFCurrentZonesItem *)self room];
  hf_allZones = [room hf_allZones];
  v8 = [hf_allZones sortedArrayUsingComparator:&__block_literal_global_77];

  if ([v8 count])
  {
    if ([v8 count] <= 1)
    {
      v9 = _HFLocalizedStringWithDefaultValue(@"HFZoneModuleCurrentZonesSingularTitle", @"HFZoneModuleCurrentZonesSingularTitle", 1);
      [dictionary setObject:v9 forKeyedSubscript:@"title"];

      firstObject = [v8 firstObject];
      name = [firstObject name];
      v12 = name;
      if (name)
      {
        v13 = name;
      }

      else
      {
        v13 = &stru_2824B1A78;
      }

      [dictionary setObject:v13 forKeyedSubscript:@"description"];

      goto LABEL_10;
    }

    v16 = _HFLocalizedStringWithDefaultValue(@"HFZoneModuleCurrentZonesPluralTitle", @"HFZoneModuleCurrentZonesPluralTitle", 1);
    [dictionary setObject:v16 forKeyedSubscript:@"title"];

    v15 = @"HFZoneModuleCurrentZonesMultipleZonesDescription";
  }

  else
  {
    v14 = _HFLocalizedStringWithDefaultValue(@"HFZoneModuleCurrentZonesSingularTitle", @"HFZoneModuleCurrentZonesSingularTitle", 1);
    [dictionary setObject:v14 forKeyedSubscript:@"title"];

    v15 = @"HFZoneModuleCurrentZonesNone";
  }

  firstObject = _HFLocalizedStringWithDefaultValue(v15, v15, 1);
  [dictionary setObject:firstObject forKeyedSubscript:@"description"];
LABEL_10:

  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  [dictionary setObject:v17 forKeyedSubscript:@"dependentHomeKitClasses"];

  [dictionary setObject:v8 forKeyedSubscript:@"HFCurrentZonesResultKey"];
  v18 = [HFItemUpdateOutcome outcomeWithResults:dictionary];
  [v4 finishWithResult:v18];

  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __50__HFCurrentZonesItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

@end