@interface HFPrimaryStateIconDescriptor
- (BOOL)isEqual:(id)equal;
- (HFPrimaryStateIconDescriptor)initWithIdentifier:(id)identifier primaryState:(int64_t)state;
- (id)iconDescriptorByMergingWithIconDescriptor:(id)descriptor;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation HFPrimaryStateIconDescriptor

- (HFPrimaryStateIconDescriptor)initWithIdentifier:(id)identifier primaryState:(int64_t)state
{
  v14[10] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v13.receiver = self;
  v13.super_class = HFPrimaryStateIconDescriptor;
  v8 = [(HFPrimaryStateIconDescriptor *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, identifier);
    v9->_primaryState = state;
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
    v9->_shouldForceLTR = [v10 containsObject:identifierCopy];
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [v5 identifier];
    identifier2 = [(HFPrimaryStateIconDescriptor *)self identifier];
    v8 = [identifier isEqualToString:identifier2];

    primaryState = [v5 primaryState];
    if (primaryState == [(HFPrimaryStateIconDescriptor *)self primaryState])
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
  identifier = [(HFPrimaryStateIconDescriptor *)self identifier];
  v4 = [identifier hash];
  primaryState = [(HFPrimaryStateIconDescriptor *)self primaryState];

  return primaryState ^ v4;
}

- (id)iconDescriptorByMergingWithIconDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([descriptorCopy identifier], v5 = objc_claimAutoreleasedReturnValue(), -[HFPrimaryStateIconDescriptor identifier](self, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7))
  {
    primaryState = [(HFPrimaryStateIconDescriptor *)self primaryState];
    if (primaryState == [descriptorCopy primaryState])
    {
      primaryState2 = [(HFPrimaryStateIconDescriptor *)self primaryState];
    }

    else
    {
      primaryState2 = 2;
    }

    v11 = objc_alloc(objc_opt_class());
    identifier = [(HFPrimaryStateIconDescriptor *)self identifier];
    v10 = [v11 initWithIdentifier:identifier primaryState:primaryState2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  objc_opt_class();
  v5 = compareCopy;
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