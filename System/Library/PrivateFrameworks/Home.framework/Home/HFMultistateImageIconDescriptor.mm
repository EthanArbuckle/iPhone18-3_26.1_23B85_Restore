@interface HFMultistateImageIconDescriptor
- (BOOL)isEqual:(id)equal;
- (HFMultistateImageIconDescriptor)initWithImageIdentifiersKeyedByPrimaryState:(id)state;
- (HFMultistateImageIconDescriptor)initWithImageIdentifiersKeyedByPrimaryState:(id)state defaultImageIdentifier:(id)identifier;
- (HFMultistateImageIconDescriptor)initWithSymbolIconConfigurationsKeyedByPrimaryState:(id)state defaultPrimaryState:(int64_t)primaryState;
- (HFMultistateImageIconDescriptor)initWithSymbolIconConfigurationsKeyedByPrimaryState:(id)state defaultSymbolIconConfiguration:(id)configuration;
- (id)iconDescriptorForPrimaryState:(int64_t)state;
- (unint64_t)hash;
@end

@implementation HFMultistateImageIconDescriptor

- (HFMultistateImageIconDescriptor)initWithImageIdentifiersKeyedByPrimaryState:(id)state
{
  stateCopy = state;
  v5 = [stateCopy objectForKeyedSubscript:&unk_2825232F8];
  v6 = [(HFMultistateImageIconDescriptor *)self initWithImageIdentifiersKeyedByPrimaryState:stateCopy defaultImageIdentifier:v5];

  return v6;
}

- (HFMultistateImageIconDescriptor)initWithImageIdentifiersKeyedByPrimaryState:(id)state defaultImageIdentifier:(id)identifier
{
  stateCopy = state;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v9 = identifierCopy;
  }

  else
  {
    NSLog(&cfstr_NoDefaultImage.isa);
    v9 = @"HFImageIconIdentifierGeneric";
  }

  v13.receiver = self;
  v13.super_class = HFMultistateImageIconDescriptor;
  v10 = [(HFImageIconDescriptor *)&v13 initWithImageIdentifier:v9];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_dictionaryKeyedByPrimaryState, state);
  }

  return v11;
}

- (HFMultistateImageIconDescriptor)initWithSymbolIconConfigurationsKeyedByPrimaryState:(id)state defaultPrimaryState:(int64_t)primaryState
{
  v6 = MEMORY[0x277CCABB0];
  stateCopy = state;
  v8 = [v6 numberWithInteger:primaryState];
  v9 = [stateCopy objectForKeyedSubscript:v8];

  v10 = [(HFMultistateImageIconDescriptor *)self initWithSymbolIconConfigurationsKeyedByPrimaryState:stateCopy defaultSymbolIconConfiguration:v9];
  return v10;
}

- (HFMultistateImageIconDescriptor)initWithSymbolIconConfigurationsKeyedByPrimaryState:(id)state defaultSymbolIconConfiguration:(id)configuration
{
  stateCopy = state;
  configurationCopy = configuration;
  systemImageName = [configurationCopy systemImageName];

  if (!systemImageName)
  {
    NSLog(&cfstr_NoDefaultSymbo.isa);
  }

  v13.receiver = self;
  v13.super_class = HFMultistateImageIconDescriptor;
  v10 = [(HFImageIconDescriptor *)&v13 initWithSymbolIconConfiguration:configurationCopy];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_dictionaryKeyedByPrimaryState, state);
  }

  return v11;
}

- (id)iconDescriptorForPrimaryState:(int64_t)state
{
  dictionaryKeyedByPrimaryState = [(HFMultistateImageIconDescriptor *)self dictionaryKeyedByPrimaryState];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:state];
  imageIdentifier2 = [dictionaryKeyedByPrimaryState objectForKeyedSubscript:v6];

  if (!imageIdentifier2)
  {
    if ([(HFImageIconDescriptor *)self isSystemImage])
    {
      v8 = [HFSymbolIconConfiguration alloc];
      imageIdentifier = [(HFImageIconDescriptor *)self imageIdentifier];
      imageSymbolConfiguration = [(HFImageIconDescriptor *)self imageSymbolConfiguration];
      imageIdentifier2 = [(HFSymbolIconConfiguration *)v8 initWithSystemImageName:imageIdentifier configuration:imageSymbolConfiguration];
    }

    else
    {
      imageIdentifier2 = [(HFImageIconDescriptor *)self imageIdentifier];
    }
  }

  if ([(HFImageIconDescriptor *)self isSystemImage])
  {
    objc_opt_class();
    v11 = imageIdentifier2;
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    if (v13)
    {
      v14 = [[HFImageIconDescriptor alloc] initWithSymbolIconConfiguration:v13];
LABEL_16:
      v13 = v14;
      goto LABEL_18;
    }
  }

  else
  {
    objc_opt_class();
    v11 = imageIdentifier2;
    if (objc_opt_isKindOfClass())
    {
      v15 = v11;
    }

    else
    {
      v15 = 0;
    }

    v13 = v15;

    if (v13)
    {
      v14 = [[HFImageIconDescriptor alloc] initWithImageIdentifier:v13];
      goto LABEL_16;
    }
  }

  v11 = 0;
LABEL_18:

  return v13;
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
      v5 = equalCopy;
      dictionaryKeyedByPrimaryState = [(HFMultistateImageIconDescriptor *)v5 dictionaryKeyedByPrimaryState];
      dictionaryKeyedByPrimaryState2 = [(HFMultistateImageIconDescriptor *)self dictionaryKeyedByPrimaryState];
      if (dictionaryKeyedByPrimaryState == dictionaryKeyedByPrimaryState2)
      {
        v10 = 1;
      }

      else
      {
        dictionaryKeyedByPrimaryState3 = [(HFMultistateImageIconDescriptor *)v5 dictionaryKeyedByPrimaryState];
        dictionaryKeyedByPrimaryState4 = [(HFMultistateImageIconDescriptor *)self dictionaryKeyedByPrimaryState];
        v10 = [dictionaryKeyedByPrimaryState3 isEqualToDictionary:dictionaryKeyedByPrimaryState4];
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  dictionaryKeyedByPrimaryState = [(HFMultistateImageIconDescriptor *)self dictionaryKeyedByPrimaryState];
  v3 = [dictionaryKeyedByPrimaryState hash];

  return v3;
}

@end