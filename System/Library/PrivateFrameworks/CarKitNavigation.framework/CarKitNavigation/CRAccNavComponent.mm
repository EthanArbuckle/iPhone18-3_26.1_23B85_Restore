@interface CRAccNavComponent
- (CRAccNavComponent)initWithAccessoryUID:(id)d component:(id)component;
- (CRAccNavComponent)initWithCoder:(id)coder;
- (CRAccNavComponent)initWithUUID:(id)d accessoryUID:(id)iD component:(id)component;
- (NSString)configDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CRAccNavComponent

- (CRAccNavComponent)initWithAccessoryUID:(id)d component:(id)component
{
  v6 = MEMORY[0x277CCAD78];
  componentCopy = component;
  dCopy = d;
  uUID = [v6 UUID];
  v10 = [(CRAccNavComponent *)self initWithUUID:uUID accessoryUID:dCopy component:componentCopy];

  return v10;
}

- (CRAccNavComponent)initWithUUID:(id)d accessoryUID:(id)iD component:(id)component
{
  dCopy = d;
  iDCopy = iD;
  componentCopy = component;
  v17.receiver = self;
  v17.super_class = CRAccNavComponent;
  v12 = [(CRAccNavComponent *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_uuid, d);
    objc_storeStrong(&v13->_accessoryUID, iD);
    v14 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(componentCopy, "identifier")}];
    componentIdentifier = v13->_componentIdentifier;
    v13->_componentIdentifier = v14;

    objc_storeStrong(&v13->_component, component);
  }

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  uuid = [(CRAccNavComponent *)self uuid];
  uUIDString = [uuid UUIDString];
  componentIdentifier = [(CRAccNavComponent *)self componentIdentifier];
  accessoryUID = [(CRAccNavComponent *)self accessoryUID];
  v9 = [v3 stringWithFormat:@"<%@: %p %@ identifier=%@ accessory=%@>", v4, self, uUIDString, componentIdentifier, accessoryUID];

  return v9;
}

- (NSString)configDescription
{
  v54[13] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCACA8];
  component = [(CRAccNavComponent *)self component];
  v52 = [v3 stringWithFormat:@"\tmaxLength_CurrentRoadName: %lu", objc_msgSend(component, "maxLength_CurrentRoadName")];
  v54[0] = v52;
  v4 = MEMORY[0x277CCACA8];
  component2 = [(CRAccNavComponent *)self component];
  v50 = [v4 stringWithFormat:@"\tmaxLength_DestinationRoadName: %lu", objc_msgSend(component2, "maxLength_DestinationRoadName")];
  v54[1] = v50;
  v5 = MEMORY[0x277CCACA8];
  component3 = [(CRAccNavComponent *)self component];
  v48 = [v5 stringWithFormat:@"\tmaxLength_PostManeuverRoadName: %lu", objc_msgSend(component3, "maxLength_PostManeuverRoadName")];
  v54[2] = v48;
  v6 = MEMORY[0x277CCACA8];
  component4 = [(CRAccNavComponent *)self component];
  v46 = [v6 stringWithFormat:@"\tmaxLength_ManeuverDescription: %lu", objc_msgSend(component4, "maxLength_ManeuverDescription")];
  v54[3] = v46;
  v7 = MEMORY[0x277CCACA8];
  component5 = [(CRAccNavComponent *)self component];
  v44 = [v7 stringWithFormat:@"\tmaxLength_LaneGuidanceDescription: %lu", objc_msgSend(component5, "maxLength_LaneGuidanceDescription")];
  v54[4] = v44;
  v8 = MEMORY[0x277CCACA8];
  component6 = [(CRAccNavComponent *)self component];
  if ([component6 requestSourceName])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v42 = [v8 stringWithFormat:@"\trequestSourceName: %@", v9];
  v54[5] = v42;
  v10 = MEMORY[0x277CCACA8];
  component7 = [(CRAccNavComponent *)self component];
  if ([component7 requestSourceSupportsRouteGuidance])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v40 = [v10 stringWithFormat:@"\trequestSourceSupportsRouteGuidance: %@", v11];
  v54[6] = v40;
  v12 = MEMORY[0x277CCACA8];
  component8 = [(CRAccNavComponent *)self component];
  if ([component8 supportsExitInfo])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  v38 = [v12 stringWithFormat:@"\tsupportsExitInfo: %@", v13];
  v54[7] = v38;
  v14 = MEMORY[0x277CCACA8];
  component9 = [(CRAccNavComponent *)self component];
  if ([component9 supportsLaneGuidance])
  {
    v15 = @"YES";
  }

  else
  {
    v15 = @"NO";
  }

  v16 = [v14 stringWithFormat:@"\tsupportsLaneGuidance: %@", v15];
  v54[8] = v16;
  v17 = MEMORY[0x277CCACA8];
  component10 = [(CRAccNavComponent *)self component];
  if ([component10 supportsTimeZoneOffset])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  v20 = [v17 stringWithFormat:@"\tsupportsTimeZoneOffset: %@", v19];
  v54[9] = v20;
  v21 = MEMORY[0x277CCACA8];
  component11 = [(CRAccNavComponent *)self component];
  if ([component11 supportsPreconditioning])
  {
    v23 = @"YES";
  }

  else
  {
    v23 = @"NO";
  }

  v24 = [v21 stringWithFormat:@"\tsupportsPreconditioning: %@", v23];
  v54[10] = v24;
  v25 = MEMORY[0x277CCACA8];
  component12 = [(CRAccNavComponent *)self component];
  v27 = [v25 stringWithFormat:@"\tmaxCapacity_GuidanceManeuver: %lu", objc_msgSend(component12, "maxCapacity_GuidanceManeuver")];
  v54[11] = v27;
  v28 = MEMORY[0x277CCACA8];
  component13 = [(CRAccNavComponent *)self component];
  v30 = [v28 stringWithFormat:@"\tmaxCapacity_LaneGuidance: %lu", objc_msgSend(component13, "maxCapacity_LaneGuidance")];
  v54[12] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v54 count:13];

  v32 = MEMORY[0x277CCACA8];
  v33 = [v31 componentsJoinedByString:{@", \n"}];
  v34 = [v32 stringWithFormat:@"{\n%@\n}", v33];

  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uuid = [(CRAccNavComponent *)self uuid];
  v6 = NSStringFromSelector(sel_uuid);
  [coderCopy encodeObject:uuid forKey:v6];

  accessoryUID = [(CRAccNavComponent *)self accessoryUID];
  v8 = NSStringFromSelector(sel_accessoryUID);
  [coderCopy encodeObject:accessoryUID forKey:v8];

  component = [(CRAccNavComponent *)self component];
  v9 = NSStringFromSelector(sel_component);
  [coderCopy encodeObject:component forKey:v9];
}

- (CRAccNavComponent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_uuid);
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:v6];

  v8 = objc_opt_class();
  v9 = NSStringFromSelector(sel_accessoryUID);
  v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_component);
  v13 = [coderCopy decodeObjectOfClass:v11 forKey:v12];

  v14 = [(CRAccNavComponent *)self initWithUUID:v7 accessoryUID:v10 component:v13];
  return v14;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CRAccNavComponent alloc];
  uuid = [(CRAccNavComponent *)self uuid];
  accessoryUID = [(CRAccNavComponent *)self accessoryUID];
  component = [(CRAccNavComponent *)self component];
  v8 = [(CRAccNavComponent *)v4 initWithUUID:uuid accessoryUID:accessoryUID component:component];

  return v8;
}

@end