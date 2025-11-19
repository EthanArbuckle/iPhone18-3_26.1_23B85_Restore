@interface HFImageIconDescriptor
- (BOOL)isEqual:(id)a3;
- (HFImageIconDescriptor)imageIconDescriptorWithUpdatedImageSymbolConfiguration:(id)a3;
- (HFImageIconDescriptor)initWithDemoModeImageIdentifier:(id)a3;
- (HFImageIconDescriptor)initWithImageIdentifier:(id)a3;
- (HFImageIconDescriptor)initWithSymbolIconConfiguration:(id)a3;
- (HFImageIconDescriptor)initWithSystemImageNamed:(id)a3 configuration:(id)a4;
- (NSString)description;
- (id)iconDescriptorByMergingWithIconDescriptor:(id)a3;
- (unint64_t)hash;
@end

@implementation HFImageIconDescriptor

- (HFImageIconDescriptor)initWithImageIdentifier:(id)a3
{
  v11[10] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v10.receiver = self;
  v10.super_class = HFImageIconDescriptor;
  v6 = [(HFImageIconDescriptor *)&v10 init];
  if (v6)
  {
    v11[0] = @"HFImageIconIdentifierAppleTVRegular";
    v11[1] = @"HFImageIconIdentifierAppleTVSmall";
    v11[2] = @"HFImageIconIdentifierServiceCarbonDioxideSensorOn";
    v11[3] = @"HFImageIconIdentifierServiceCarbonDioxideSensorOff";
    v11[4] = @"HFImageIconIdentifierServiceCarbonMonoxideSensorOn";
    v11[5] = @"HFImageIconIdentifierServiceCarbonMonoxideSensorOff";
    v11[6] = @"HFCAPackageIconIdentifierAirport";
    v11[7] = @"HFImageIconIdentifierGeneric";
    v11[8] = @"HFCAPackageIconIdentifierCarbonMonoxideSensor";
    v11[9] = @"HFCAPackageIconIdentifierCarbonDioxideSensor";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:10];
    v6->_shouldForceLTR = [v7 containsObject:v5];

    objc_storeStrong(&v6->_imageIdentifier, a3);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (HFImageIconDescriptor)initWithDemoModeImageIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HFImageIconDescriptor;
  v6 = [(HFImageIconDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageIdentifier, a3);
    v7->_isDemoModeDescriptor = 1;
  }

  return v7;
}

- (HFImageIconDescriptor)initWithSystemImageNamed:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HFImageIconDescriptor;
  v9 = [(HFImageIconDescriptor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageIdentifier, a3);
    v10->_isSystemImage = 1;
    objc_storeStrong(&v10->_imageSymbolConfiguration, a4);
  }

  return v10;
}

- (HFImageIconDescriptor)initWithSymbolIconConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 systemImageName];
  v6 = [v4 configuration];

  v7 = [(HFImageIconDescriptor *)self initWithSystemImageNamed:v5 configuration:v6];
  return v7;
}

- (HFImageIconDescriptor)imageIconDescriptorWithUpdatedImageSymbolConfiguration:(id)a3
{
  v4 = a3;
  if (![(HFImageIconDescriptor *)self isSystemImage])
  {
    NSLog(&cfstr_CallWithSystem.isa);
  }

  if ([(HFImageIconDescriptor *)self isSystemImage])
  {
    v5 = objc_alloc(objc_opt_class());
    v6 = [(HFImageIconDescriptor *)self imageIdentifier];
    v7 = [v5 initWithSystemImageNamed:v6 configuration:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = [(HFImageIconDescriptor *)self imageIdentifier];
      v8 = [(HFImageIconDescriptor *)v6 imageIdentifier];
      if (![v7 isEqualToString:v8] || (v9 = -[HFImageIconDescriptor isSystemImage](self, "isSystemImage"), v9 != -[HFImageIconDescriptor isSystemImage](v6, "isSystemImage")))
      {
        v10 = 0;
LABEL_15:

        goto LABEL_16;
      }

      v11 = [(HFImageIconDescriptor *)self imageSymbolConfiguration];
      if (v11 || ([(HFImageIconDescriptor *)v6 imageSymbolConfiguration], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v12 = [(HFImageIconDescriptor *)self imageSymbolConfiguration];
        v13 = [(HFImageIconDescriptor *)v6 imageSymbolConfiguration];
        v10 = [v12 isEqualToConfiguration:v13];

        if (v11)
        {
LABEL_14:

          goto LABEL_15;
        }
      }

      else
      {
        v10 = 1;
      }

      goto LABEL_14;
    }

    v10 = 0;
  }

LABEL_16:

  return v10;
}

- (unint64_t)hash
{
  v2 = [(HFImageIconDescriptor *)self imageIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  isSystemImage = self->_isSystemImage;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [(HFImageIconDescriptor *)self imageIdentifier];
  v8 = v7;
  if (isSystemImage)
  {
    v9 = [(HFImageIconDescriptor *)self imageSymbolConfiguration];
    v10 = [v4 stringWithFormat:@"<%@: %p, %@, %@>", v6, self, v8, v9];
  }

  else
  {
    v10 = [v4 stringWithFormat:@"<%@: %p, %@>", v6, self, v7];
  }

  return v10;
}

- (id)iconDescriptorByMergingWithIconDescriptor:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 identifier];
    v6 = [(HFImageIconDescriptor *)self identifier];
    if ([v5 isEqualToString:v6])
    {
      v7 = self;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end