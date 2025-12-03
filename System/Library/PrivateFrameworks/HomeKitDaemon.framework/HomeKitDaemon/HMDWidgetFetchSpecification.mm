@interface HMDWidgetFetchSpecification
+ (NSSet)allHomeLockScreenWidgetKinds;
+ (NSSet)allOtherHomesSingleAccessorySecurityFetchSpecifications;
+ (NSSet)lightsFetchSpecifications;
+ (NSSet)mainHomeSecurityFetchSpecifications;
- (HMDWidgetFetchSpecification)initWithName:(id)name serviceTypes:(id)types associatedServiceTypes:(id)serviceTypes characteristicTypes:(id)characteristicTypes affectedWidgetKinds:(id)kinds;
- (id)attributeDescriptions;
@end

@implementation HMDWidgetFetchSpecification

- (id)attributeDescriptions
{
  v18[4] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  serviceTypes = [(HMDWidgetFetchSpecification *)self serviceTypes];
  v5 = [v3 initWithName:@"Service Types" value:serviceTypes];
  v18[0] = v5;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  associatedServiceTypes = [(HMDWidgetFetchSpecification *)self associatedServiceTypes];
  v8 = [v6 initWithName:@"Associated Service Types" value:associatedServiceTypes];
  v18[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  characteristicTypes = [(HMDWidgetFetchSpecification *)self characteristicTypes];
  v11 = [v9 initWithName:@"Characteristic Types" value:characteristicTypes];
  v18[2] = v11;
  v12 = objc_alloc(MEMORY[0x277D0F778]);
  affectedWidgetKinds = [(HMDWidgetFetchSpecification *)self affectedWidgetKinds];
  v14 = [v12 initWithName:@"Affected Widget Kinds" value:affectedWidgetKinds];
  v18[3] = v14;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:4];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (HMDWidgetFetchSpecification)initWithName:(id)name serviceTypes:(id)types associatedServiceTypes:(id)serviceTypes characteristicTypes:(id)characteristicTypes affectedWidgetKinds:(id)kinds
{
  v28.receiver = self;
  v28.super_class = HMDWidgetFetchSpecification;
  kindsCopy = kinds;
  characteristicTypesCopy = characteristicTypes;
  serviceTypesCopy = serviceTypes;
  typesCopy = types;
  nameCopy = name;
  v16 = [(HMDWidgetFetchSpecification *)&v28 init];
  v17 = [nameCopy copy];

  name = v16->_name;
  v16->_name = v17;

  v19 = [typesCopy copy];
  serviceTypes = v16->_serviceTypes;
  v16->_serviceTypes = v19;

  v21 = [serviceTypesCopy copy];
  associatedServiceTypes = v16->_associatedServiceTypes;
  v16->_associatedServiceTypes = v21;

  v23 = [characteristicTypesCopy copy];
  characteristicTypes = v16->_characteristicTypes;
  v16->_characteristicTypes = v23;

  v25 = [kindsCopy copy];
  affectedWidgetKinds = v16->_affectedWidgetKinds;
  v16->_affectedWidgetKinds = v25;

  return v16;
}

+ (NSSet)allOtherHomesSingleAccessorySecurityFetchSpecifications
{
  v23[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB98] setWithObject:@"com.apple.Home.widget.security.singleAccessory"];
  v19 = MEMORY[0x277CBEB98];
  v3 = [HMDWidgetFetchSpecification alloc];
  v22 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0E58]];
  v21 = [MEMORY[0x277CBEB98] set];
  v20 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF800]];
  v18 = [(HMDWidgetFetchSpecification *)v3 initWithName:@"Garage Door Openers" serviceTypes:v22 associatedServiceTypes:v21 characteristicTypes:v20 affectedWidgetKinds:v2];
  v23[0] = v18;
  v4 = [HMDWidgetFetchSpecification alloc];
  v17 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0EB0]];
  v5 = [MEMORY[0x277CBEB98] set];
  v6 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF838]];
  v7 = [(HMDWidgetFetchSpecification *)v4 initWithName:@"Locks" serviceTypes:v17 associatedServiceTypes:v5 characteristicTypes:v6 affectedWidgetKinds:v2];
  v23[1] = v7;
  v8 = [HMDWidgetFetchSpecification alloc];
  v9 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0ED8]];
  v10 = [MEMORY[0x277CBEB98] set];
  v11 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF858]];
  v12 = [(HMDWidgetFetchSpecification *)v8 initWithName:@"Security Systems" serviceTypes:v9 associatedServiceTypes:v10 characteristicTypes:v11 affectedWidgetKinds:v2];
  v23[2] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:3];
  v14 = [v19 setWithArray:v13];

  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

+ (NSSet)mainHomeSecurityFetchSpecifications
{
  v49[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v49[0] = @"com.apple.Home.widget.security.category";
  v49[1] = @"com.apple.Home.widget.summary.category";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v49 count:2];
  v39 = [v2 setWithArray:v3];

  v4 = MEMORY[0x277CBEB98];
  v48[0] = @"com.apple.Home.widget.security.category";
  v48[1] = @"com.apple.Home.widget.summary.category";
  v48[2] = @"com.apple.Home.widget.security.singleAccessory";
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:3];
  v6 = [v4 setWithArray:v5];

  v37 = MEMORY[0x277CBEB98];
  v7 = [HMDWidgetFetchSpecification alloc];
  v8 = *MEMORY[0x277CD0E58];
  v44 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0E58]];
  v43 = [MEMORY[0x277CBEB98] set];
  v42 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF800]];
  v41 = [(HMDWidgetFetchSpecification *)v7 initWithName:@"Garage Door Openers" serviceTypes:v44 associatedServiceTypes:v43 characteristicTypes:v42 affectedWidgetKinds:v6];
  v47[0] = v41;
  v9 = [HMDWidgetFetchSpecification alloc];
  v10 = MEMORY[0x277CBEB98];
  v12 = *MEMORY[0x277CD0F58];
  v46[0] = *MEMORY[0x277CD0E30];
  v11 = v46[0];
  v46[1] = v12;
  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v46 count:2];
  v36 = [v10 setWithArray:v40];
  v35 = [MEMORY[0x277CBEB98] set];
  v34 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF9E0]];
  v33 = [(HMDWidgetFetchSpecification *)v9 initWithName:@"Motorized Doors & Windows" serviceTypes:v36 associatedServiceTypes:v35 characteristicTypes:v34 affectedWidgetKinds:v39];
  v47[1] = v33;
  v13 = [HMDWidgetFetchSpecification alloc];
  v31 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0E20]];
  v14 = MEMORY[0x277CBEB98];
  v45[0] = v8;
  v45[1] = v11;
  v45[2] = v12;
  v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
  v30 = [v14 setWithArray:v32];
  v29 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF7E8]];
  v28 = [(HMDWidgetFetchSpecification *)v13 initWithName:@"Contact Sensors w/ associated Garage Doors serviceTypes:Doors associatedServiceTypes:or Windows" characteristicTypes:v31 affectedWidgetKinds:v30, v29, v6];
  v47[2] = v28;
  v15 = [HMDWidgetFetchSpecification alloc];
  v16 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0EB0]];
  v17 = [MEMORY[0x277CBEB98] set];
  v18 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF838]];
  v19 = [(HMDWidgetFetchSpecification *)v15 initWithName:@"Locks" serviceTypes:v16 associatedServiceTypes:v17 characteristicTypes:v18 affectedWidgetKinds:v6];
  v47[3] = v19;
  v20 = [HMDWidgetFetchSpecification alloc];
  v21 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0ED8]];
  v22 = [MEMORY[0x277CBEB98] set];
  v23 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF858]];
  v24 = [(HMDWidgetFetchSpecification *)v20 initWithName:@"Security Systems" serviceTypes:v21 associatedServiceTypes:v22 characteristicTypes:v23 affectedWidgetKinds:v6];
  v47[4] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:5];
  v38 = [v37 setWithArray:v25];

  v26 = *MEMORY[0x277D85DE8];

  return v38;
}

+ (NSSet)lightsFetchSpecifications
{
  v27[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v27[0] = @"com.apple.Home.widget.lights.category";
  v27[1] = @"com.apple.Home.widget.summary.category";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:2];
  v4 = [v2 setWithArray:v3];

  v22 = MEMORY[0x277CBEB98];
  v5 = [HMDWidgetFetchSpecification alloc];
  v6 = *MEMORY[0x277CD0EA0];
  v24 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CD0EA0]];
  v23 = [MEMORY[0x277CBEB98] set];
  v7 = *MEMORY[0x277CCF9F0];
  v21 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277CCF9F0]];
  v8 = [(HMDWidgetFetchSpecification *)v5 initWithName:@"Lightbulbs" serviceTypes:v24 associatedServiceTypes:v23 characteristicTypes:v21 affectedWidgetKinds:v4];
  v26[0] = v8;
  v9 = [HMDWidgetFetchSpecification alloc];
  v10 = MEMORY[0x277CBEB98];
  v11 = *MEMORY[0x277CD0F08];
  v25[0] = *MEMORY[0x277CD0ED0];
  v25[1] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  v13 = [v10 setWithArray:v12];
  v14 = [MEMORY[0x277CBEB98] setWithObject:v6];
  v15 = [MEMORY[0x277CBEB98] setWithObject:v7];
  v16 = [(HMDWidgetFetchSpecification *)v9 initWithName:@"Outlets & Switches w/ associated Lightbulbs" serviceTypes:v13 associatedServiceTypes:v14 characteristicTypes:v15 affectedWidgetKinds:v4];
  v26[1] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
  v18 = [v22 setWithArray:v17];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (NSSet)allHomeLockScreenWidgetKinds
{
  v7[6] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBEB98];
  v7[0] = @"com.apple.Home.widget.summary.category";
  v7[1] = @"com.apple.Home.widget.lights.category";
  v7[2] = @"com.apple.Home.widget.security.category";
  v7[3] = @"com.apple.Home.widget.security.singleAccessory";
  v7[4] = @"com.apple.Home.widget.climate.category";
  v7[5] = @"com.apple.Home.widget.climate.singleSensor";
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:6];
  v4 = [v2 setWithArray:v3];

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

@end