@interface HKClinicalProvider
- (BOOL)isSupported;
- (HKClinicalProvider)init;
- (HKClinicalProvider)initWithCoder:(id)a3;
- (HKClinicalProvider)initWithExternalID:(id)a3 title:(id)a4 subtitle:(id)a5 location:(id)a6 informationURL:(id)a7 brand:(id)a8 gateways:(id)a9;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation HKClinicalProvider

- (HKClinicalProvider)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalProvider)initWithExternalID:(id)a3 title:(id)a4 subtitle:(id)a5 location:(id)a6 informationURL:(id)a7 brand:(id)a8 gateways:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v38.receiver = self;
  v38.super_class = HKClinicalProvider;
  v22 = [(HKClinicalProvider *)&v38 init];
  if (v22)
  {
    v23 = [v15 copy];
    externalID = v22->_externalID;
    v22->_externalID = v23;

    v25 = [v16 copy];
    title = v22->_title;
    v22->_title = v25;

    v27 = [v17 copy];
    subtitle = v22->_subtitle;
    v22->_subtitle = v27;

    v29 = [v18 copy];
    location = v22->_location;
    v22->_location = v29;

    v31 = [v19 copy];
    informationURL = v22->_informationURL;
    v22->_informationURL = v31;

    v33 = [v20 copy];
    brand = v22->_brand;
    v22->_brand = v33;

    if (v21)
    {
      v35 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v21 copyItems:1];
      gateways = v22->_gateways;
      v22->_gateways = v35;
    }
  }

  return v22;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = objc_opt_class();
  v5 = [(HKClinicalProvider *)self title];
  v6 = [(HKClinicalProvider *)self subtitle];
  v7 = [(HKClinicalProvider *)self externalID];
  v8 = [(HKClinicalProvider *)self gateways];
  v9 = [v3 initWithFormat:@"<%@:%p; title: %@; subtitle: %@; external-id: %@; gateway-count: %ld;>", v4, self, v5, v6, v7, objc_msgSend(v8, "count")];

  return v9;
}

- (BOOL)isSupported
{
  v2 = [(HKClinicalProvider *)self gateways];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(HKClinicalProvider *)self brand];
  [v4 encodeObject:v5 forKey:@"brand"];

  v6 = [(HKClinicalProvider *)self externalID];
  [v4 encodeObject:v6 forKey:@"externalID"];

  v7 = [(HKClinicalProvider *)self gateways];
  [v4 encodeObject:v7 forKey:@"gateways"];

  v8 = [(HKClinicalProvider *)self informationURL];
  [v4 encodeObject:v8 forKey:@"infoURL"];

  v9 = [(HKClinicalProvider *)self title];
  [v4 encodeObject:v9 forKey:@"title"];

  v10 = [(HKClinicalProvider *)self subtitle];
  [v4 encodeObject:v10 forKey:@"subtitle"];

  v11 = [(HKClinicalProvider *)self location];
  [v4 encodeObject:v11 forKey:@"location"];
}

- (HKClinicalProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"externalID"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    [v4 hrs_failWithCocoaValueNotFoundError];
    v15 = 0;
  }

  else
  {
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"infoURL"];
    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brand"];
    v14 = [v4 decodeObjectOfClasses:v5 forKey:@"gateways"];
    self = [(HKClinicalProvider *)self initWithExternalID:v6 title:v8 subtitle:v10 location:v11 informationURL:v12 brand:v13 gateways:v14];

    v15 = self;
  }

  return v15;
}

@end