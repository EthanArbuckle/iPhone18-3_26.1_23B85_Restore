@interface CAFPointOfInterest
- (CAFPointOfInterest)initWithDictionary:(id)dictionary;
- (CAFPointOfInterest)initWithEntryPoints:(id)points location:(id)location locationThreshold:(unsigned int)threshold userVisibleAddress:(id)address userVisibleName:(id)name;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFPointOfInterest

- (CAFPointOfInterest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v21.receiver = self;
  v21.super_class = CAFPointOfInterest;
  v5 = [(CAFPointOfInterest *)&v21 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [dictionaryCopy objectForKey:@"entryPoints"];
    if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    entryPoints = v5->_entryPoints;
    v5->_entryPoints = v7;

    objc_opt_class();
    v9 = [dictionaryCopy objectForKey:@"location"];
    if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    location = v5->_location;
    v5->_location = v10;

    objc_opt_class();
    v12 = [dictionaryCopy objectForKey:@"locationThreshold"];
    if (v12 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v5->_locationThreshold = [v13 unsignedIntValue];
    objc_opt_class();
    v14 = [dictionaryCopy objectForKey:@"userVisibleAddress"];
    if (v14 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    userVisibleAddress = v5->_userVisibleAddress;
    v5->_userVisibleAddress = v15;

    objc_opt_class();
    v17 = [dictionaryCopy objectForKey:@"userVisibleName"];
    if (v17 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    userVisibleName = v5->_userVisibleName;
    v5->_userVisibleName = v18;
  }

  return v5;
}

- (CAFPointOfInterest)initWithEntryPoints:(id)points location:(id)location locationThreshold:(unsigned int)threshold userVisibleAddress:(id)address userVisibleName:(id)name
{
  pointsCopy = points;
  locationCopy = location;
  addressCopy = address;
  nameCopy = name;
  v20.receiver = self;
  v20.super_class = CAFPointOfInterest;
  v17 = [(CAFPointOfInterest *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_entryPoints, points);
    objc_storeStrong(&v18->_location, location);
    v18->_locationThreshold = threshold;
    objc_storeStrong(&v18->_userVisibleAddress, address);
    objc_storeStrong(&v18->_userVisibleName, name);
  }

  return v18;
}

- (NSDictionary)dictionaryRepresentation
{
  v19[5] = *MEMORY[0x277D85DE8];
  v18[0] = @"entryPoints";
  entryPoints = [(CAFPointOfInterest *)self entryPoints];
  arrayRepresentation = [entryPoints arrayRepresentation];
  v4 = arrayRepresentation;
  if (!arrayRepresentation)
  {
    arrayRepresentation = [MEMORY[0x277CBEB68] null];
  }

  v16 = arrayRepresentation;
  v19[0] = arrayRepresentation;
  v18[1] = @"location";
  location = [(CAFPointOfInterest *)self location];
  dictionaryRepresentation = [location dictionaryRepresentation];
  null = dictionaryRepresentation;
  if (!dictionaryRepresentation)
  {
    null = [MEMORY[0x277CBEB68] null];
  }

  v19[1] = null;
  v18[2] = @"locationThreshold";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[CAFPointOfInterest locationThreshold](self, "locationThreshold")}];
  v19[2] = v8;
  v18[3] = @"userVisibleAddress";
  userVisibleAddress = [(CAFPointOfInterest *)self userVisibleAddress];
  null2 = userVisibleAddress;
  if (!userVisibleAddress)
  {
    null2 = [MEMORY[0x277CBEB68] null];
  }

  v19[3] = null2;
  v18[4] = @"userVisibleName";
  userVisibleName = [(CAFPointOfInterest *)self userVisibleName];
  null3 = userVisibleName;
  if (!userVisibleName)
  {
    null3 = [MEMORY[0x277CBEB68] null];
  }

  v19[4] = null3;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  if (!userVisibleName)
  {
  }

  if (!userVisibleAddress)
  {
  }

  if (!dictionaryRepresentation)
  {
  }

  if (!v4)
  {
  }

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  entryPoints = [(CAFPointOfInterest *)self entryPoints];
  location = [(CAFPointOfInterest *)self location];
  locationThreshold = [(CAFPointOfInterest *)self locationThreshold];
  userVisibleAddress = [(CAFPointOfInterest *)self userVisibleAddress];
  userVisibleName = [(CAFPointOfInterest *)self userVisibleName];
  v10 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@, %@: %u, %@: %@, %@: %@ }>", v4, self, @"entryPoints", entryPoints, @"location", location, @"locationThreshold", locationThreshold, @"userVisibleAddress", userVisibleAddress, @"userVisibleName", userVisibleName];

  return v10;
}

@end