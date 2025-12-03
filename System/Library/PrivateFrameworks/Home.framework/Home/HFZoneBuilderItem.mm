@interface HFZoneBuilderItem
- (HFZoneBuilderItem)initWithZoneBuilder:(id)builder;
- (id)_subclass_updateWithOptions:(id)options;
@end

@implementation HFZoneBuilderItem

- (HFZoneBuilderItem)initWithZoneBuilder:(id)builder
{
  builderCopy = builder;
  if (!builderCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFZoneBuilderItem.m" lineNumber:20 description:{@"Invalid parameter not satisfying: %@", @"zoneBuilder"}];
  }

  v11.receiver = self;
  v11.super_class = HFZoneBuilderItem;
  v7 = [(HFZoneBuilderItem *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_zoneBuilder, builder);
  }

  return v8;
}

- (id)_subclass_updateWithOptions:(id)options
{
  v22[2] = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(HFMutableItemUpdateOutcome);
  zoneBuilder = [(HFZoneBuilderItem *)self zoneBuilder];
  v6 = [zoneBuilder zone];

  zoneBuilder2 = [(HFZoneBuilderItem *)self zoneBuilder];
  name = [zoneBuilder2 name];
  v15 = name;
  if (v6)
  {
    [(HFMutableItemUpdateOutcome *)v4 setObject:name forKeyedSubscript:@"title"];
  }

  else
  {
    v16 = HFLocalizedStringWithFormat(@"HFZoneSuggestionNameFormat", @"%@", v9, v10, v11, v12, v13, v14, name);
    [(HFMutableItemUpdateOutcome *)v4 setObject:v16 forKeyedSubscript:@"title"];
  }

  zoneBuilder3 = [(HFZoneBuilderItem *)self zoneBuilder];
  [(HFMutableItemUpdateOutcome *)v4 setObject:zoneBuilder3 forKeyedSubscript:@"zoneBuilder"];

  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  [(HFMutableItemUpdateOutcome *)v4 setObject:v18 forKeyedSubscript:@"dependentHomeKitClasses"];

  v19 = [MEMORY[0x277D2C900] futureWithResult:v4];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end