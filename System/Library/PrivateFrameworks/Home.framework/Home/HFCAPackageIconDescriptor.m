@interface HFCAPackageIconDescriptor
+ (BOOL)iconDescriptorShouldAlwaysAnimate:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HFCAPackageIconDescriptor)initWithPackageIdentifier:(id)a3 state:(id)a4 modifiers:(id)a5;
- (NSString)description;
- (id)iconDescriptorByMergingWithIconDescriptor:(id)a3;
- (int64_t)compare:(id)a3;
- (unint64_t)hash;
@end

@implementation HFCAPackageIconDescriptor

- (HFCAPackageIconDescriptor)initWithPackageIdentifier:(id)a3 state:(id)a4 modifiers:(id)a5
{
  v18[10] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = HFCAPackageIconDescriptor;
  v12 = [(HFCAPackageIconDescriptor *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_packageIdentifier, a3);
    objc_storeStrong(&v13->_state, a4);
    objc_storeStrong(&v13->_iconModifiers, a5);
    v18[0] = @"HFImageIconIdentifierAppleTVRegular";
    v18[1] = @"HFImageIconIdentifierAppleTVSmall";
    v18[2] = @"HFImageIconIdentifierServiceCarbonDioxideSensorOn";
    v18[3] = @"HFImageIconIdentifierServiceCarbonDioxideSensorOff";
    v18[4] = @"HFImageIconIdentifierServiceCarbonMonoxideSensorOn";
    v18[5] = @"HFImageIconIdentifierServiceCarbonMonoxideSensorOff";
    v18[6] = @"HFCAPackageIconIdentifierAirport";
    v18[7] = @"HFImageIconIdentifierGeneric";
    v18[8] = @"HFCAPackageIconIdentifierCarbonMonoxideSensor";
    v18[9] = @"HFCAPackageIconIdentifierCarbonDioxideSensor";
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:10];
    v13->_shouldForceLTR = [v14 containsObject:v9];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v10 = [v5 identifier];
    v6 = [(HFCAPackageIconDescriptor *)self identifier];
    v7 = [v10 isEqualToString:v6];

    v8 = [v5 state];
    v9 = [(HFCAPackageIconDescriptor *)self state];

    LOBYTE(v10) = 0;
    if (v7 && v8 == v9)
    {
      v11 = [v5 iconModifiers];
      v12 = [v11 allKeys];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __37__HFCAPackageIconDescriptor_isEqual___block_invoke;
      v14[3] = &unk_277DF2850;
      v14[4] = self;
      v15 = v5;
      LODWORD(v10) = [v12 na_any:v14] ^ 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

uint64_t __37__HFCAPackageIconDescriptor_isEqual___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 iconModifiers];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [*(a1 + 40) iconModifiers];
  v8 = [v7 objectForKeyedSubscript:v4];

  v9 = v6;
  v10 = v8;
  if (v9 == v10)
  {
    v11 = 0;
  }

  else if (v9)
  {
    v11 = [v9 isEqual:v10] ^ 1;
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(HFCAPackageIconDescriptor *)self identifier];
  v4 = [v3 hash];
  v5 = [(HFCAPackageIconDescriptor *)self state];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(HFCAPackageIconDescriptor *)self packageIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, %@>", v5, self, v6];

  return v7;
}

- (id)iconDescriptorByMergingWithIconDescriptor:(id)a3
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

  if (v7 && ([v7 identifier], v8 = objc_claimAutoreleasedReturnValue(), -[HFCAPackageIconDescriptor identifier](self, "identifier"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v8, "isEqualToString:", v9), v9, v8, v10))
  {
    v11 = [(HFCAPackageIconDescriptor *)self state];
    v12 = [v7 state];
    if (v11 == v12)
    {
      v13 = [(HFCAPackageIconDescriptor *)self state];
    }

    else
    {
      v13 = HFCAPackageStateOn;
    }

    v15 = v13;

    v16 = [v7 iconModifiers];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __71__HFCAPackageIconDescriptor_iconDescriptorByMergingWithIconDescriptor___block_invoke;
    v24 = &unk_277DF2878;
    v25 = self;
    v26 = v7;
    v17 = [v16 na_filter:&v21];

    v18 = objc_alloc(objc_opt_class());
    v19 = [(HFCAPackageIconDescriptor *)self identifier:v21];
    v14 = [v18 initWithPackageIdentifier:v19 state:v15 modifiers:v17];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

uint64_t __71__HFCAPackageIconDescriptor_iconDescriptorByMergingWithIconDescriptor___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 iconModifiers];
  v6 = [v5 objectForKeyedSubscript:v4];
  v7 = [*(a1 + 40) iconModifiers];
  v8 = [v7 objectForKeyedSubscript:v4];

  v9 = v6;
  v10 = v8;
  if (v9 == v10)
  {
    v11 = 1;
  }

  else if (v9)
  {
    v11 = [v9 isEqual:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
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
    v8 = [(HFCAPackageIconDescriptor *)self state];
    v9 = [v7 state];
    v10 = [v8 compare:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)iconDescriptorShouldAlwaysAnimate:(id)a3
{
  v3 = a3;
  v4 = HFCAPackageIconIdentifierStatesWithContinuousAnimation();
  v5 = [v3 packageIdentifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v3 state];
    v8 = [v6 containsObject:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end