@interface HFPrimaryStateIconDescriptor
- (BOOL)isEqual:(id)a3;
- (HFPrimaryStateIconDescriptor)initWithIdentifier:(id)a3 primaryState:(int64_t)a4;
- (id)iconDescriptorByMergingWithIconDescriptor:(id)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation HFPrimaryStateIconDescriptor

- (HFPrimaryStateIconDescriptor)initWithIdentifier:(id)a3 primaryState:(int64_t)a4
{
  v14[10] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v13.receiver = self;
  v13.super_class = HFPrimaryStateIconDescriptor;
  v8 = [(HFPrimaryStateIconDescriptor *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_primaryState = a4;
    v14[0] = @"HFImageIconIdentifierAppleTVRegular";
    v14[1] = @"HFImageIconIdentifierAppleTVSmall";
    v14[2] = @"HFImageIconIdentifierServiceCarbonDioxideSensorOn";
    v14[3] = @"HFImageIconIdentifierServiceCarbonDioxideSensorOff";
    v14[4] = @"HFImageIconIdentifierServiceCarbonMonoxideSensorOn";
    v14[5] = @"HFImageIconIdentifierServiceCarbonMonoxideSensorOff";
    v14[6] = @"HFCAPackageIconIdentifierAirport";
    v14[7] = @"HFImageIconIdentifierGeneric";
    v14[8] = @"HFCAPackageIconIdentifierCarbonMonoxideSensor";
    v14[9] = @"HFCAPackageIconIdentifierCarbonDioxideSensor";
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:10];
    v9->_shouldForceLTR = [v10 containsObject:v7];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 identifier];
    v7 = [(HFPrimaryStateIconDescriptor *)self identifier];
    v8 = [v6 isEqualToString:v7];

    v9 = [v5 primaryState];
    if (v9 == [(HFPrimaryStateIconDescriptor *)self primaryState])
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(HFPrimaryStateIconDescriptor *)self identifier];
  v4 = [v3 hash];
  v5 = [(HFPrimaryStateIconDescriptor *)self primaryState];

  return v5 ^ v4;
}

- (id)iconDescriptorByMergingWithIconDescriptor:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 identifier], v5 = objc_claimAutoreleasedReturnValue(), -[HFPrimaryStateIconDescriptor identifier](self, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7))
  {
    v8 = [(HFPrimaryStateIconDescriptor *)self primaryState];
    if (v8 == [v4 primaryState])
    {
      v9 = [(HFPrimaryStateIconDescriptor *)self primaryState];
    }

    else
    {
      v9 = 2;
    }

    v11 = objc_alloc(objc_opt_class());
    v12 = [(HFPrimaryStateIconDescriptor *)self identifier];
    v10 = [v11 initWithIdentifier:v12 primaryState:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)compare:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = v4;
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:{-[HFPrimaryStateIconDescriptor primaryState](self, "primaryState")}];
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v7, "primaryState")}];
    v10 = [v8 compare:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end