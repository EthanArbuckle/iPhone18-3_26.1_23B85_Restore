@interface HMMTRHAPDescriptionAtEndpoint
- (HMMTRHAPDescriptionAtEndpoint)init;
- (HMMTRHAPDescriptionAtEndpoint)initWithType:(id)type serviceDescriptions:(id)descriptions;
- (HMMTRHAPDescriptionAtEndpoint)initWithType:(id)type serviceDescriptions:(id)descriptions name:(id)name partsList:(id)list fixedLabels:(id)labels;
- (id)attributeDescriptions;
@end

@implementation HMMTRHAPDescriptionAtEndpoint

- (id)attributeDescriptions
{
  v21[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  categories = [(HMMTRHAPDescriptionAtEndpoint *)self categories];
  v4 = [v3 initWithName:@"Categories" value:categories];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  serviceDescriptions = [(HMMTRHAPDescriptionAtEndpoint *)self serviceDescriptions];
  v7 = [v5 initWithName:@"ServiceDescriptions" value:serviceDescriptions];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMMTRHAPDescriptionAtEndpoint *)self name];
  v10 = [v8 initWithName:@"Name" value:name];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  partsList = [(HMMTRHAPDescriptionAtEndpoint *)self partsList];
  v13 = [v11 initWithName:@"PartsList" value:partsList];
  v21[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  fixedLabels = [(HMMTRHAPDescriptionAtEndpoint *)self fixedLabels];
  v16 = [v14 initWithName:@"FixedLabels" value:fixedLabels];
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (HMMTRHAPDescriptionAtEndpoint)initWithType:(id)type serviceDescriptions:(id)descriptions name:(id)name partsList:(id)list fixedLabels:(id)labels
{
  typeCopy = type;
  descriptionsCopy = descriptions;
  nameCopy = name;
  listCopy = list;
  labelsCopy = labels;
  v17 = [(HMMTRHAPDescriptionAtEndpoint *)self init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_categories, type);
    objc_storeStrong(&v18->_serviceDescriptions, descriptions);
    objc_storeStrong(&v18->_name, name);
    if (listCopy)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      partsList = v18->_partsList;
      v18->_partsList = v19;

      objc_storeStrong(&v18->_partsList, list);
    }

    if (labelsCopy)
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      fixedLabels = v18->_fixedLabels;
      v18->_fixedLabels = v21;

      objc_storeStrong(&v18->_fixedLabels, labels);
    }
  }

  return v18;
}

- (HMMTRHAPDescriptionAtEndpoint)initWithType:(id)type serviceDescriptions:(id)descriptions
{
  typeCopy = type;
  descriptionsCopy = descriptions;
  v9 = [(HMMTRHAPDescriptionAtEndpoint *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_categories, type);
    objc_storeStrong(&v10->_serviceDescriptions, descriptions);
  }

  return v10;
}

- (HMMTRHAPDescriptionAtEndpoint)init
{
  v8.receiver = self;
  v8.super_class = HMMTRHAPDescriptionAtEndpoint;
  v2 = [(HMMTRHAPDescriptionAtEndpoint *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    categories = v2->_categories;
    v2->_categories = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    serviceDescriptions = v2->_serviceDescriptions;
    v2->_serviceDescriptions = v5;
  }

  return v2;
}

@end