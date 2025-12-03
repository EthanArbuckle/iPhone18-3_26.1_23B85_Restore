@interface HKClinicalProvider
- (BOOL)isSupported;
- (HKClinicalProvider)init;
- (HKClinicalProvider)initWithCoder:(id)coder;
- (HKClinicalProvider)initWithExternalID:(id)d title:(id)title subtitle:(id)subtitle location:(id)location informationURL:(id)l brand:(id)brand gateways:(id)gateways;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
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

- (HKClinicalProvider)initWithExternalID:(id)d title:(id)title subtitle:(id)subtitle location:(id)location informationURL:(id)l brand:(id)brand gateways:(id)gateways
{
  dCopy = d;
  titleCopy = title;
  subtitleCopy = subtitle;
  locationCopy = location;
  lCopy = l;
  brandCopy = brand;
  gatewaysCopy = gateways;
  v38.receiver = self;
  v38.super_class = HKClinicalProvider;
  v22 = [(HKClinicalProvider *)&v38 init];
  if (v22)
  {
    v23 = [dCopy copy];
    externalID = v22->_externalID;
    v22->_externalID = v23;

    v25 = [titleCopy copy];
    title = v22->_title;
    v22->_title = v25;

    v27 = [subtitleCopy copy];
    subtitle = v22->_subtitle;
    v22->_subtitle = v27;

    v29 = [locationCopy copy];
    location = v22->_location;
    v22->_location = v29;

    v31 = [lCopy copy];
    informationURL = v22->_informationURL;
    v22->_informationURL = v31;

    v33 = [brandCopy copy];
    brand = v22->_brand;
    v22->_brand = v33;

    if (gatewaysCopy)
    {
      v35 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:gatewaysCopy copyItems:1];
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
  title = [(HKClinicalProvider *)self title];
  subtitle = [(HKClinicalProvider *)self subtitle];
  externalID = [(HKClinicalProvider *)self externalID];
  gateways = [(HKClinicalProvider *)self gateways];
  v9 = [v3 initWithFormat:@"<%@:%p; title: %@; subtitle: %@; external-id: %@; gateway-count: %ld;>", v4, self, title, subtitle, externalID, objc_msgSend(gateways, "count")];

  return v9;
}

- (BOOL)isSupported
{
  gateways = [(HKClinicalProvider *)self gateways];
  v3 = [gateways count] != 0;

  return v3;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  brand = [(HKClinicalProvider *)self brand];
  [coderCopy encodeObject:brand forKey:@"brand"];

  externalID = [(HKClinicalProvider *)self externalID];
  [coderCopy encodeObject:externalID forKey:@"externalID"];

  gateways = [(HKClinicalProvider *)self gateways];
  [coderCopy encodeObject:gateways forKey:@"gateways"];

  informationURL = [(HKClinicalProvider *)self informationURL];
  [coderCopy encodeObject:informationURL forKey:@"infoURL"];

  title = [(HKClinicalProvider *)self title];
  [coderCopy encodeObject:title forKey:@"title"];

  subtitle = [(HKClinicalProvider *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];

  location = [(HKClinicalProvider *)self location];
  [coderCopy encodeObject:location forKey:@"location"];
}

- (HKClinicalProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [MEMORY[0x277CBEB98] hk_typesForArrayOf:objc_opt_class()];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"externalID"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
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
    [coderCopy hrs_failWithCocoaValueNotFoundError];
    selfCopy = 0;
  }

  else
  {
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"location"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"infoURL"];
    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brand"];
    v14 = [coderCopy decodeObjectOfClasses:v5 forKey:@"gateways"];
    self = [(HKClinicalProvider *)self initWithExternalID:v6 title:v8 subtitle:v10 location:v11 informationURL:v12 brand:v13 gateways:v14];

    selfCopy = self;
  }

  return selfCopy;
}

@end