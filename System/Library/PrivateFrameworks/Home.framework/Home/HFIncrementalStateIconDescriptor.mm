@interface HFIncrementalStateIconDescriptor
- (BOOL)isEqual:(id)equal;
- (HFIncrementalStateIconDescriptor)initWithIdentifier:(id)identifier incrementalState:(id)state;
- (id)iconDescriptorByMergingWithIconDescriptor:(id)descriptor;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation HFIncrementalStateIconDescriptor

- (HFIncrementalStateIconDescriptor)initWithIdentifier:(id)identifier incrementalState:(id)state
{
  v15[10] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  stateCopy = state;
  v14.receiver = self;
  v14.super_class = HFIncrementalStateIconDescriptor;
  v9 = [(HFIncrementalStateIconDescriptor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, identifier);
    objc_storeStrong(&v10->_incrementalState, state);
    v15[0] = @"HFImageIconIdentifierAppleTVRegular";
    v15[1] = @"HFImageIconIdentifierAppleTVSmall";
    v15[2] = @"HFImageIconIdentifierServiceCarbonDioxideSensorOn";
    v15[3] = @"HFImageIconIdentifierServiceCarbonDioxideSensorOff";
    v15[4] = @"HFImageIconIdentifierServiceCarbonMonoxideSensorOn";
    v15[5] = @"HFImageIconIdentifierServiceCarbonMonoxideSensorOff";
    v15[6] = @"HFCAPackageIconIdentifierAirport";
    v15[7] = @"HFImageIconIdentifierGeneric";
    v15[8] = @"HFCAPackageIconIdentifierCarbonMonoxideSensor";
    v15[9] = @"HFCAPackageIconIdentifierCarbonDioxideSensor";
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:10];
    v10->_shouldForceLTR = [v11 containsObject:identifierCopy];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [v5 identifier];
    identifier2 = [(HFIncrementalStateIconDescriptor *)self identifier];
    v8 = [identifier isEqualToString:identifier2];

    incrementalState = [v5 incrementalState];
    incrementalState2 = [(HFIncrementalStateIconDescriptor *)self incrementalState];
    if (incrementalState != incrementalState2)
    {
      incrementalState3 = [(HFIncrementalStateIconDescriptor *)self incrementalState];
      if (incrementalState3)
      {
        incrementalState4 = [v5 incrementalState];
        incrementalState5 = [(HFIncrementalStateIconDescriptor *)self incrementalState];
        v8 &= [incrementalState4 isEqualToNumber:incrementalState5];
      }

      else
      {
        LOBYTE(v8) = 0;
      }
    }
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  identifier = [(HFIncrementalStateIconDescriptor *)self identifier];
  v4 = [identifier hash];
  incrementalState = [(HFIncrementalStateIconDescriptor *)self incrementalState];
  v6 = [incrementalState hash];

  return v6 ^ v4;
}

- (id)iconDescriptorByMergingWithIconDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([descriptorCopy identifier], v5 = objc_claimAutoreleasedReturnValue(), -[HFIncrementalStateIconDescriptor identifier](self, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7))
  {
    v8 = descriptorCopy;
    incrementalState = [(HFIncrementalStateIconDescriptor *)self incrementalState];
    v10 = incrementalState;
    if (incrementalState)
    {
      v11 = incrementalState;
    }

    else
    {
      v11 = &unk_282525500;
    }

    incrementalState2 = [(HFIncrementalStateIconDescriptor *)v8 incrementalState];
    v13 = incrementalState2;
    if (incrementalState2)
    {
      v14 = incrementalState2;
    }

    else
    {
      v14 = &unk_282525500;
    }

    if ([v11 compare:v14] == 1)
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = v8;
    }

    incrementalState3 = [(HFIncrementalStateIconDescriptor *)selfCopy incrementalState];

    if ([incrementalState3 isEqual:&unk_282525500])
    {

      incrementalState3 = 0;
    }

    v17 = objc_alloc(objc_opt_class());
    identifier = [(HFIncrementalStateIconDescriptor *)self identifier];
    v19 = [v17 initWithIdentifier:identifier incrementalState:incrementalState3];
  }

  else
  {
    v19 = 0;
  }

  return v19;
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
    incrementalState = [(HFIncrementalStateIconDescriptor *)self incrementalState];
    incrementalState2 = [v7 incrementalState];
    v10 = [incrementalState compare:incrementalState2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end