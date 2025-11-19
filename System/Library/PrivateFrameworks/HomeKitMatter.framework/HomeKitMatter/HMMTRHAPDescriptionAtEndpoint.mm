@interface HMMTRHAPDescriptionAtEndpoint
- (HMMTRHAPDescriptionAtEndpoint)init;
- (HMMTRHAPDescriptionAtEndpoint)initWithType:(id)a3 serviceDescriptions:(id)a4;
- (HMMTRHAPDescriptionAtEndpoint)initWithType:(id)a3 serviceDescriptions:(id)a4 name:(id)a5 partsList:(id)a6 fixedLabels:(id)a7;
- (id)attributeDescriptions;
@end

@implementation HMMTRHAPDescriptionAtEndpoint

- (id)attributeDescriptions
{
  v21[5] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  v20 = [(HMMTRHAPDescriptionAtEndpoint *)self categories];
  v4 = [v3 initWithName:@"Categories" value:v20];
  v21[0] = v4;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  v6 = [(HMMTRHAPDescriptionAtEndpoint *)self serviceDescriptions];
  v7 = [v5 initWithName:@"ServiceDescriptions" value:v6];
  v21[1] = v7;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  v9 = [(HMMTRHAPDescriptionAtEndpoint *)self name];
  v10 = [v8 initWithName:@"Name" value:v9];
  v21[2] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  v12 = [(HMMTRHAPDescriptionAtEndpoint *)self partsList];
  v13 = [v11 initWithName:@"PartsList" value:v12];
  v21[3] = v13;
  v14 = objc_alloc(MEMORY[0x277D0F778]);
  v15 = [(HMMTRHAPDescriptionAtEndpoint *)self fixedLabels];
  v16 = [v14 initWithName:@"FixedLabels" value:v15];
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (HMMTRHAPDescriptionAtEndpoint)initWithType:(id)a3 serviceDescriptions:(id)a4 name:(id)a5 partsList:(id)a6 fixedLabels:(id)a7
{
  v24 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(HMMTRHAPDescriptionAtEndpoint *)self init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_categories, a3);
    objc_storeStrong(&v18->_serviceDescriptions, a4);
    objc_storeStrong(&v18->_name, a5);
    if (v15)
    {
      v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
      partsList = v18->_partsList;
      v18->_partsList = v19;

      objc_storeStrong(&v18->_partsList, a6);
    }

    if (v16)
    {
      v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
      fixedLabels = v18->_fixedLabels;
      v18->_fixedLabels = v21;

      objc_storeStrong(&v18->_fixedLabels, a7);
    }
  }

  return v18;
}

- (HMMTRHAPDescriptionAtEndpoint)initWithType:(id)a3 serviceDescriptions:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(HMMTRHAPDescriptionAtEndpoint *)self init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_categories, a3);
    objc_storeStrong(&v10->_serviceDescriptions, a4);
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