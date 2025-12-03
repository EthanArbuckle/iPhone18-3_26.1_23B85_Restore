@interface HFImageIconDescriptor
- (BOOL)isEqual:(id)equal;
- (HFImageIconDescriptor)imageIconDescriptorWithUpdatedImageSymbolConfiguration:(id)configuration;
- (HFImageIconDescriptor)initWithDemoModeImageIdentifier:(id)identifier;
- (HFImageIconDescriptor)initWithImageIdentifier:(id)identifier;
- (HFImageIconDescriptor)initWithSymbolIconConfiguration:(id)configuration;
- (HFImageIconDescriptor)initWithSystemImageNamed:(id)named configuration:(id)configuration;
- (NSString)description;
- (id)iconDescriptorByMergingWithIconDescriptor:(id)descriptor;
- (unint64_t)hash;
@end

@implementation HFImageIconDescriptor

- (HFImageIconDescriptor)initWithImageIdentifier:(id)identifier
{
  v11[10] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
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
    v6->_shouldForceLTR = [v7 containsObject:identifierCopy];

    objc_storeStrong(&v6->_imageIdentifier, identifier);
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

- (HFImageIconDescriptor)initWithDemoModeImageIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = HFImageIconDescriptor;
  v6 = [(HFImageIconDescriptor *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageIdentifier, identifier);
    v7->_isDemoModeDescriptor = 1;
  }

  return v7;
}

- (HFImageIconDescriptor)initWithSystemImageNamed:(id)named configuration:(id)configuration
{
  namedCopy = named;
  configurationCopy = configuration;
  v12.receiver = self;
  v12.super_class = HFImageIconDescriptor;
  v9 = [(HFImageIconDescriptor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_imageIdentifier, named);
    v10->_isSystemImage = 1;
    objc_storeStrong(&v10->_imageSymbolConfiguration, configuration);
  }

  return v10;
}

- (HFImageIconDescriptor)initWithSymbolIconConfiguration:(id)configuration
{
  configurationCopy = configuration;
  systemImageName = [configurationCopy systemImageName];
  configuration = [configurationCopy configuration];

  v7 = [(HFImageIconDescriptor *)self initWithSystemImageNamed:systemImageName configuration:configuration];
  return v7;
}

- (HFImageIconDescriptor)imageIconDescriptorWithUpdatedImageSymbolConfiguration:(id)configuration
{
  configurationCopy = configuration;
  if (![(HFImageIconDescriptor *)self isSystemImage])
  {
    NSLog(&cfstr_CallWithSystem.isa);
  }

  if ([(HFImageIconDescriptor *)self isSystemImage])
  {
    v5 = objc_alloc(objc_opt_class());
    imageIdentifier = [(HFImageIconDescriptor *)self imageIdentifier];
    v7 = [v5 initWithSystemImageNamed:imageIdentifier configuration:configurationCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      imageIdentifier = [(HFImageIconDescriptor *)self imageIdentifier];
      imageIdentifier2 = [(HFImageIconDescriptor *)v6 imageIdentifier];
      if (![imageIdentifier isEqualToString:imageIdentifier2] || (v9 = -[HFImageIconDescriptor isSystemImage](self, "isSystemImage"), v9 != -[HFImageIconDescriptor isSystemImage](v6, "isSystemImage")))
      {
        v10 = 0;
LABEL_15:

        goto LABEL_16;
      }

      imageSymbolConfiguration = [(HFImageIconDescriptor *)self imageSymbolConfiguration];
      if (imageSymbolConfiguration || ([(HFImageIconDescriptor *)v6 imageSymbolConfiguration], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        imageSymbolConfiguration2 = [(HFImageIconDescriptor *)self imageSymbolConfiguration];
        imageSymbolConfiguration3 = [(HFImageIconDescriptor *)v6 imageSymbolConfiguration];
        v10 = [imageSymbolConfiguration2 isEqualToConfiguration:imageSymbolConfiguration3];

        if (imageSymbolConfiguration)
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
  imageIdentifier = [(HFImageIconDescriptor *)self imageIdentifier];
  v3 = [imageIdentifier hash];

  return v3;
}

- (NSString)description
{
  isSystemImage = self->_isSystemImage;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  imageIdentifier = [(HFImageIconDescriptor *)self imageIdentifier];
  v8 = imageIdentifier;
  if (isSystemImage)
  {
    imageSymbolConfiguration = [(HFImageIconDescriptor *)self imageSymbolConfiguration];
    v10 = [v4 stringWithFormat:@"<%@: %p, %@, %@>", v6, self, v8, imageSymbolConfiguration];
  }

  else
  {
    v10 = [v4 stringWithFormat:@"<%@: %p, %@>", v6, self, imageIdentifier];
  }

  return v10;
}

- (id)iconDescriptorByMergingWithIconDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [descriptorCopy identifier];
    identifier2 = [(HFImageIconDescriptor *)self identifier];
    if ([identifier isEqualToString:identifier2])
    {
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }

    v8 = selfCopy;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end