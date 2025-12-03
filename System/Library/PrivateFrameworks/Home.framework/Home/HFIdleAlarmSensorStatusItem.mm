@interface HFIdleAlarmSensorStatusItem
+ (id)statusItemClasses;
- (BOOL)shouldEncapsulateItem:(id)item;
- (id)_subclass_updateWithOptions:(id)options;
- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects;
@end

@implementation HFIdleAlarmSensorStatusItem

+ (id)statusItemClasses
{
  if (_MergedGlobals_270 != -1)
  {
    dispatch_once(&_MergedGlobals_270, &__block_literal_global_3_18);
  }

  v3 = qword_280E03108;

  return v3;
}

void __48__HFIdleAlarmSensorStatusItem_statusItemClasses__block_invoke_2()
{
  v5[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5[0] = objc_opt_class();
  v5[1] = objc_opt_class();
  v5[2] = objc_opt_class();
  v5[3] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:4];
  v2 = [v0 setWithArray:v1];
  v3 = qword_280E03108;
  qword_280E03108 = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (BOOL)shouldEncapsulateItem:(id)item
{
  itemCopy = item;
  v9.receiver = self;
  v9.super_class = HFIdleAlarmSensorStatusItem;
  if ([(HFAbstractGroupedStatusItem *)&v9 shouldEncapsulateItem:itemCopy])
  {
    latestResults = [itemCopy latestResults];
    v6 = [latestResults objectForKeyedSubscript:@"priority"];
    v7 = [v6 integerValue] == -1;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)iconDescriptorForRepresentedHomeKitObjects:(id)objects
{
  v3 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"sensor.fill"];

  return v3;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  objc_initWeak(&location, self);
  v10.receiver = self;
  v10.super_class = HFIdleAlarmSensorStatusItem;
  v5 = [(HFAbstractGroupedStatusItem *)&v10 _subclass_updateWithOptions:optionsCopy];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__HFIdleAlarmSensorStatusItem__subclass_updateWithOptions___block_invoke;
  v8[3] = &unk_277DF5A08;
  objc_copyWeak(&v9, &location);
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  objc_destroyWeak(&location);

  return v6;
}

id __59__HFIdleAlarmSensorStatusItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [v3 mutableCopy];

  v6 = [v5 objectForKeyedSubscript:@"hidden"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    v8 = [MEMORY[0x277D2C900] futureWithResult:v5];
  }

  else
  {
    v9 = [v5 objectForKeyedSubscript:@"representedHomeKitObjects"];
    if ([v9 count])
    {
      if ([v9 count] == 1)
      {
        v10 = [WeakRetained items];
        v11 = [v10 anyObject];
        v12 = [v11 latestResults];
        v13 = [v12 objectForKeyedSubscript:@"title"];

        v14 = [WeakRetained items];
        v15 = [v14 anyObject];
        v16 = [v15 latestResults];
        v17 = [v16 objectForKeyedSubscript:@"description"];

        v18 = _HFLocalizedStringWithDefaultValue(@"HFStatusTitleIdleAlarmSensors_One_Legacy", @"HFStatusTitleIdleAlarmSensors_One_Legacy", 1);
        v19 = [WeakRetained shortTitleForFormat:v18];
        [v5 setObject:v19 forKeyedSubscript:@"shortTitle"];
      }

      else
      {
        v20 = [v9 count];
        v27 = HFLocalizedStringWithFormat(@"HFStatusIdleAlarm_Multiple", @"%lu", v21, v22, v23, v24, v25, v26, v20);
        v28 = [MEMORY[0x277CCA900] newlineCharacterSet];
        v29 = [v27 componentsSeparatedByCharactersInSet:v28];

        v13 = [v29 firstObject];
        if ([v29 count] < 2)
        {
          v17 = 0;
        }

        else
        {
          v17 = [v29 lastObject];
        }
      }

      [v5 setObject:v17 forKeyedSubscript:@"description"];
      v30 = [[HFImageIconDescriptor alloc] initWithSystemImageNamed:@"sensor.fill"];
      [v5 setObject:v30 forKeyedSubscript:@"icon"];

      [v5 setObject:v13 forKeyedSubscript:@"title"];
    }

    else
    {
      [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"hidden"];
    }

    v8 = [MEMORY[0x277D2C900] futureWithResult:v5];
  }

  return v8;
}

@end