@interface CAFPointOfInterest
- (CAFPointOfInterest)initWithDictionary:(id)a3;
- (CAFPointOfInterest)initWithEntryPoints:(id)a3 location:(id)a4 locationThreshold:(unsigned int)a5 userVisibleAddress:(id)a6 userVisibleName:(id)a7;
- (NSDictionary)dictionaryRepresentation;
- (id)description;
@end

@implementation CAFPointOfInterest

- (CAFPointOfInterest)initWithDictionary:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = CAFPointOfInterest;
  v5 = [(CAFPointOfInterest *)&v21 init];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKey:@"entryPoints"];
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
    v9 = [v4 objectForKey:@"location"];
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
    v12 = [v4 objectForKey:@"locationThreshold"];
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
    v14 = [v4 objectForKey:@"userVisibleAddress"];
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
    v17 = [v4 objectForKey:@"userVisibleName"];
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

- (CAFPointOfInterest)initWithEntryPoints:(id)a3 location:(id)a4 locationThreshold:(unsigned int)a5 userVisibleAddress:(id)a6 userVisibleName:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = CAFPointOfInterest;
  v17 = [(CAFPointOfInterest *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_entryPoints, a3);
    objc_storeStrong(&v18->_location, a4);
    v18->_locationThreshold = a5;
    objc_storeStrong(&v18->_userVisibleAddress, a6);
    objc_storeStrong(&v18->_userVisibleName, a7);
  }

  return v18;
}

- (NSDictionary)dictionaryRepresentation
{
  v19[5] = *MEMORY[0x277D85DE8];
  v18[0] = @"entryPoints";
  v17 = [(CAFPointOfInterest *)self entryPoints];
  v3 = [v17 arrayRepresentation];
  v4 = v3;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEB68] null];
  }

  v16 = v3;
  v19[0] = v3;
  v18[1] = @"location";
  v5 = [(CAFPointOfInterest *)self location];
  v6 = [v5 dictionaryRepresentation];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x277CBEB68] null];
  }

  v19[1] = v7;
  v18[2] = @"locationThreshold";
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{-[CAFPointOfInterest locationThreshold](self, "locationThreshold")}];
  v19[2] = v8;
  v18[3] = @"userVisibleAddress";
  v9 = [(CAFPointOfInterest *)self userVisibleAddress];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x277CBEB68] null];
  }

  v19[3] = v10;
  v18[4] = @"userVisibleName";
  v11 = [(CAFPointOfInterest *)self userVisibleName];
  v12 = v11;
  if (!v11)
  {
    v12 = [MEMORY[0x277CBEB68] null];
  }

  v19[4] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  if (!v11)
  {
  }

  if (!v9)
  {
  }

  if (!v6)
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
  v5 = [(CAFPointOfInterest *)self entryPoints];
  v6 = [(CAFPointOfInterest *)self location];
  v7 = [(CAFPointOfInterest *)self locationThreshold];
  v8 = [(CAFPointOfInterest *)self userVisibleAddress];
  v9 = [(CAFPointOfInterest *)self userVisibleName];
  v10 = [v3 stringWithFormat:@"<%@: %p { %@: %@, %@: %@, %@: %u, %@: %@, %@: %@ }>", v4, self, @"entryPoints", v5, @"location", v6, @"locationThreshold", v7, @"userVisibleAddress", v8, @"userVisibleName", v9];

  return v10;
}

@end