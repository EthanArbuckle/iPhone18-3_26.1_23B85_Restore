@interface HFCAPackageIconDescriptor
+ (BOOL)iconDescriptorShouldAlwaysAnimate:(id)animate;
- (BOOL)isEqual:(id)equal;
- (HFCAPackageIconDescriptor)initWithPackageIdentifier:(id)identifier state:(id)state modifiers:(id)modifiers;
- (NSString)description;
- (id)iconDescriptorByMergingWithIconDescriptor:(id)descriptor;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
@end

@implementation HFCAPackageIconDescriptor

- (HFCAPackageIconDescriptor)initWithPackageIdentifier:(id)identifier state:(id)state modifiers:(id)modifiers
{
  v18[10] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  stateCopy = state;
  modifiersCopy = modifiers;
  v17.receiver = self;
  v17.super_class = HFCAPackageIconDescriptor;
  v12 = [(HFCAPackageIconDescriptor *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_packageIdentifier, identifier);
    objc_storeStrong(&v13->_state, state);
    objc_storeStrong(&v13->_iconModifiers, modifiers);
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
    v13->_shouldForceLTR = [v14 containsObject:identifierCopy];
  }

  v15 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [v5 identifier];
    identifier2 = [(HFCAPackageIconDescriptor *)self identifier];
    v7 = [identifier isEqualToString:identifier2];

    state = [v5 state];
    state2 = [(HFCAPackageIconDescriptor *)self state];

    LOBYTE(identifier) = 0;
    if (v7 && state == state2)
    {
      iconModifiers = [v5 iconModifiers];
      allKeys = [iconModifiers allKeys];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __37__HFCAPackageIconDescriptor_isEqual___block_invoke;
      v14[3] = &unk_277DF2850;
      v14[4] = self;
      v15 = v5;
      LODWORD(identifier) = [allKeys na_any:v14] ^ 1;
    }
  }

  else
  {
    LOBYTE(identifier) = 0;
  }

  return identifier;
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
  identifier = [(HFCAPackageIconDescriptor *)self identifier];
  v4 = [identifier hash];
  state = [(HFCAPackageIconDescriptor *)self state];
  v6 = [state hash];

  return v6 ^ v4;
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  packageIdentifier = [(HFCAPackageIconDescriptor *)self packageIdentifier];
  v7 = [v3 stringWithFormat:@"<%@: %p, %@>", v5, self, packageIdentifier];

  return v7;
}

- (id)iconDescriptorByMergingWithIconDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  objc_opt_class();
  v5 = descriptorCopy;
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
    state = [(HFCAPackageIconDescriptor *)self state];
    state2 = [v7 state];
    if (state == state2)
    {
      state3 = [(HFCAPackageIconDescriptor *)self state];
    }

    else
    {
      state3 = HFCAPackageStateOn;
    }

    v15 = state3;

    iconModifiers = [v7 iconModifiers];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __71__HFCAPackageIconDescriptor_iconDescriptorByMergingWithIconDescriptor___block_invoke;
    v24 = &unk_277DF2878;
    selfCopy = self;
    v26 = v7;
    v17 = [iconModifiers na_filter:&v21];

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
    state = [(HFCAPackageIconDescriptor *)self state];
    state2 = [v7 state];
    v10 = [state compare:state2];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (BOOL)iconDescriptorShouldAlwaysAnimate:(id)animate
{
  animateCopy = animate;
  v4 = HFCAPackageIconIdentifierStatesWithContinuousAnimation();
  packageIdentifier = [animateCopy packageIdentifier];
  v6 = [v4 objectForKeyedSubscript:packageIdentifier];

  if (v6)
  {
    state = [animateCopy state];
    v8 = [v6 containsObject:state];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end