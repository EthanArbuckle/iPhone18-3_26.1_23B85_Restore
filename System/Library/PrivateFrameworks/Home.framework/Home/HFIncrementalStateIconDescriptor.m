@interface HFIncrementalStateIconDescriptor
- (BOOL)isEqual:(id)a3;
- (HFIncrementalStateIconDescriptor)initWithIdentifier:(id)a3 incrementalState:(id)a4;
- (id)iconDescriptorByMergingWithIconDescriptor:(id)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation HFIncrementalStateIconDescriptor

- (HFIncrementalStateIconDescriptor)initWithIdentifier:(id)a3 incrementalState:(id)a4
{
  v15[10] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = HFIncrementalStateIconDescriptor;
  v9 = [(HFIncrementalStateIconDescriptor *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_identifier, a3);
    objc_storeStrong(&v10->_incrementalState, a4);
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
    v10->_shouldForceLTR = [v11 containsObject:v7];
  }

  v12 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 identifier];
    v7 = [(HFIncrementalStateIconDescriptor *)self identifier];
    v8 = [v6 isEqualToString:v7];

    v9 = [v5 incrementalState];
    v10 = [(HFIncrementalStateIconDescriptor *)self incrementalState];
    if (v9 != v10)
    {
      v11 = [(HFIncrementalStateIconDescriptor *)self incrementalState];
      if (v11)
      {
        v12 = [v5 incrementalState];
        v13 = [(HFIncrementalStateIconDescriptor *)self incrementalState];
        v8 &= [v12 isEqualToNumber:v13];
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
  v3 = [(HFIncrementalStateIconDescriptor *)self identifier];
  v4 = [v3 hash];
  v5 = [(HFIncrementalStateIconDescriptor *)self incrementalState];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (id)iconDescriptorByMergingWithIconDescriptor:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v4 identifier], v5 = objc_claimAutoreleasedReturnValue(), -[HFIncrementalStateIconDescriptor identifier](self, "identifier"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v5, "isEqualToString:", v6), v6, v5, v7))
  {
    v8 = v4;
    v9 = [(HFIncrementalStateIconDescriptor *)self incrementalState];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = &unk_282525500;
    }

    v12 = [(HFIncrementalStateIconDescriptor *)v8 incrementalState];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = &unk_282525500;
    }

    if ([v11 compare:v14] == 1)
    {
      v15 = self;
    }

    else
    {
      v15 = v8;
    }

    v16 = [(HFIncrementalStateIconDescriptor *)v15 incrementalState];

    if ([v16 isEqual:&unk_282525500])
    {

      v16 = 0;
    }

    v17 = objc_alloc(objc_opt_class());
    v18 = [(HFIncrementalStateIconDescriptor *)self identifier];
    v19 = [v17 initWithIdentifier:v18 incrementalState:v16];
  }

  else
  {
    v19 = 0;
  }

  return v19;
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
    v8 = [(HFIncrementalStateIconDescriptor *)self incrementalState];
    v9 = [v7 incrementalState];
    v10 = [v8 compare:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end