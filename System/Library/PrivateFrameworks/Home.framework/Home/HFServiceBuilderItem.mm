@interface HFServiceBuilderItem
- (HFCharacteristicValueSource)valueSource;
- (HFHomeKitObject)homeKitObject;
- (HFServiceBuilderItem)init;
- (HFServiceBuilderItem)initWithServiceBuilder:(id)builder;
- (HFServiceBuilderItem)initWithServiceBuilder:(id)builder valueSource:(id)source;
- (HMHome)home;
- (NSSet)services;
- (id)_subclass_updateWithOptions:(id)options;
- (id)accessories;
- (id)copyWithValueSource:(id)source;
- (id)copyWithZone:(_NSZone *)zone;
- (id)namingComponentForHomeKitObject;
@end

@implementation HFServiceBuilderItem

- (HFServiceBuilderItem)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithServiceBuilder_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFServiceBuilderItem.m" lineNumber:30 description:{@"%s is unavailable; use %@ instead", "-[HFServiceBuilderItem init]", v5}];

  return 0;
}

- (HFServiceBuilderItem)initWithServiceBuilder:(id)builder
{
  builderCopy = builder;
  home = [builderCopy home];
  hf_characteristicValueManager = [home hf_characteristicValueManager];
  v7 = [(HFServiceBuilderItem *)self initWithServiceBuilder:builderCopy valueSource:hf_characteristicValueManager];

  return v7;
}

- (HFServiceBuilderItem)initWithServiceBuilder:(id)builder valueSource:(id)source
{
  builderCopy = builder;
  sourceCopy = source;
  v14.receiver = self;
  v14.super_class = HFServiceBuilderItem;
  v9 = [(HFServiceBuilderItem *)&v14 init];
  if (v9)
  {
    service = [builderCopy service];
    v11 = [HFServiceItem serviceItemForService:service valueSource:sourceCopy];
    serviceItem = v9->_serviceItem;
    v9->_serviceItem = v11;

    objc_storeStrong(&v9->_serviceBuilder, builder);
  }

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  valueSource = [(HFServiceBuilderItem *)self valueSource];
  v5 = [(HFServiceBuilderItem *)self copyWithValueSource:valueSource];

  return v5;
}

- (id)copyWithValueSource:(id)source
{
  sourceCopy = source;
  v5 = objc_alloc(objc_opt_class());
  serviceBuilder = [(HFServiceBuilderItem *)self serviceBuilder];
  v7 = [v5 initWithServiceBuilder:serviceBuilder valueSource:sourceCopy];

  [v7 copyLatestResultsFromItem:self];
  return v7;
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  serviceItem = [(HFServiceBuilderItem *)self serviceItem];
  v6 = [serviceItem updateWithOptions:optionsCopy];

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HFServiceBuilderItem__subclass_updateWithOptions___block_invoke;
  v9[3] = &unk_277DF43A8;
  v9[4] = self;
  v7 = [v6 flatMap:v9];

  return v7;
}

id __52__HFServiceBuilderItem__subclass_updateWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 results];
  v4 = [(HFItemUpdateOutcome *)HFMutableItemUpdateOutcome outcomeWithResults:v3];

  v5 = [*(a1 + 32) serviceBuilder];
  v6 = [v5 room];

  v7 = [HFServiceNameComponents alloc];
  v8 = [*(a1 + 32) serviceBuilder];
  v9 = [v8 name];
  v10 = [v6 name];
  v11 = [(HFServiceNameComponents *)v7 initWithRawServiceName:v9 rawRoomName:v10];

  if (v11)
  {
    [v4 setObject:v11 forKeyedSubscript:@"serviceNameComponents"];
    v12 = [(HFServiceNameComponents *)v11 composedString];
    if (v12)
    {
      [v4 setObject:v12 forKeyedSubscript:@"title"];
    }
  }

  v13 = [v4 objectForKeyedSubscript:@"icon"];

  if (!v13)
  {
    v14 = [*(a1 + 32) serviceBuilder];
    v15 = [v14 iconDescriptor];
    [v4 setObject:v15 forKeyedSubscript:@"icon"];
  }

  v16 = [MEMORY[0x277D2C900] futureWithResult:v4];

  return v16;
}

- (HFHomeKitObject)homeKitObject
{
  serviceItem = [(HFServiceBuilderItem *)self serviceItem];
  homeKitObject = [serviceItem homeKitObject];

  return homeKitObject;
}

- (NSSet)services
{
  serviceItem = [(HFServiceBuilderItem *)self serviceItem];
  services = [serviceItem services];

  return services;
}

- (HFCharacteristicValueSource)valueSource
{
  serviceItem = [(HFServiceBuilderItem *)self serviceItem];
  valueSource = [serviceItem valueSource];

  return valueSource;
}

- (id)accessories
{
  serviceItem = [(HFServiceBuilderItem *)self serviceItem];
  accessories = [serviceItem accessories];

  return accessories;
}

- (HMHome)home
{
  serviceItem = [(HFServiceBuilderItem *)self serviceItem];
  home = [serviceItem home];

  return home;
}

- (id)namingComponentForHomeKitObject
{
  serviceItem = [(HFServiceBuilderItem *)self serviceItem];
  homeKitObject = [serviceItem homeKitObject];
  v4 = [HFNamingComponents namingComponentFromHomeKitObject:homeKitObject];

  return v4;
}

@end