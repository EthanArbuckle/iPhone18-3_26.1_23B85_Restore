@interface HFZoneBuilderItem
- (HFZoneBuilderItem)initWithZoneBuilder:(id)a3;
- (id)_subclass_updateWithOptions:(id)a3;
@end

@implementation HFZoneBuilderItem

- (HFZoneBuilderItem)initWithZoneBuilder:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"HFZoneBuilderItem.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"zoneBuilder"}];
  }

  v11.receiver = self;
  v11.super_class = HFZoneBuilderItem;
  v7 = [(HFZoneBuilderItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_zoneBuilder, a3);
  }

  return v8;
}

- (id)_subclass_updateWithOptions:(id)a3
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(HFMutableItemUpdateOutcome);
  v5 = [(HFZoneBuilderItem *)self zoneBuilder];
  v6 = [v5 zone];

  v7 = [(HFZoneBuilderItem *)self zoneBuilder];
  v8 = [v7 name];
  v15 = v8;
  if (v6)
  {
    [(HFMutableItemUpdateOutcome *)v4 setObject:v8 forKeyedSubscript:@"title"];
  }

  else
  {
    v16 = HFLocalizedStringWithFormat(@"HFZoneSuggestionNameFormat", @"%@", v9, v10, v11, v12, v13, v14, v8);
    [(HFMutableItemUpdateOutcome *)v4 setObject:v16 forKeyedSubscript:@"title"];
  }

  v17 = [(HFZoneBuilderItem *)self zoneBuilder];
  [(HFMutableItemUpdateOutcome *)v4 setObject:v17 forKeyedSubscript:@"zoneBuilder"];

  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [(HFMutableItemUpdateOutcome *)v4 setObject:v18 forKeyedSubscript:@"dependentHomeKitClasses"];

  v19 = [MEMORY[0x277D2C900] futureWithResult:v4];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end