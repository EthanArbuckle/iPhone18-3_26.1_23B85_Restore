@interface HFMultistateImageIconDescriptor
- (BOOL)isEqual:(id)a3;
- (HFMultistateImageIconDescriptor)initWithImageIdentifiersKeyedByPrimaryState:(id)a3;
- (HFMultistateImageIconDescriptor)initWithImageIdentifiersKeyedByPrimaryState:(id)a3 defaultImageIdentifier:(id)a4;
- (HFMultistateImageIconDescriptor)initWithSymbolIconConfigurationsKeyedByPrimaryState:(id)a3 defaultPrimaryState:(int64_t)a4;
- (HFMultistateImageIconDescriptor)initWithSymbolIconConfigurationsKeyedByPrimaryState:(id)a3 defaultSymbolIconConfiguration:(id)a4;
- (id)iconDescriptorForPrimaryState:(int64_t)a3;
- (unint64_t)hash;
@end

@implementation HFMultistateImageIconDescriptor

- (HFMultistateImageIconDescriptor)initWithImageIdentifiersKeyedByPrimaryState:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:&unk_2825232F8];
  v6 = [(HFMultistateImageIconDescriptor *)self initWithImageIdentifiersKeyedByPrimaryState:v4 defaultImageIdentifier:v5];

  return v6;
}

- (HFMultistateImageIconDescriptor)initWithImageIdentifiersKeyedByPrimaryState:(id)a3 defaultImageIdentifier:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = v8;
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
    objc_storeStrong(&v10->_dictionaryKeyedByPrimaryState, a3);
  }

  return v11;
}

- (HFMultistateImageIconDescriptor)initWithSymbolIconConfigurationsKeyedByPrimaryState:(id)a3 defaultPrimaryState:(int64_t)a4
{
  v6 = MEMORY[0x277CCABB0];
  v7 = a3;
  v8 = [v6 numberWithInteger:a4];
  v9 = [v7 objectForKeyedSubscript:v8];

  v10 = [(HFMultistateImageIconDescriptor *)self initWithSymbolIconConfigurationsKeyedByPrimaryState:v7 defaultSymbolIconConfiguration:v9];
  return v10;
}

- (HFMultistateImageIconDescriptor)initWithSymbolIconConfigurationsKeyedByPrimaryState:(id)a3 defaultSymbolIconConfiguration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 systemImageName];

  if (!v9)
  {
    NSLog(&cfstr_NoDefaultSymbo.isa);
  }

  v13.receiver = self;
  v13.super_class = HFMultistateImageIconDescriptor;
  v10 = [(HFImageIconDescriptor *)&v13 initWithSymbolIconConfiguration:v8];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_dictionaryKeyedByPrimaryState, a3);
  }

  return v11;
}

- (id)iconDescriptorForPrimaryState:(int64_t)a3
{
  v5 = [(HFMultistateImageIconDescriptor *)self dictionaryKeyedByPrimaryState];
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    if ([(HFImageIconDescriptor *)self isSystemImage])
    {
      v8 = [HFSymbolIconConfiguration alloc];
      v9 = [(HFImageIconDescriptor *)self imageIdentifier];
      v10 = [(HFImageIconDescriptor *)self imageSymbolConfiguration];
      v7 = [(HFSymbolIconConfiguration *)v8 initWithSystemImageName:v9 configuration:v10];
    }

    else
    {
      v7 = [(HFImageIconDescriptor *)self imageIdentifier];
    }
  }

  if ([(HFImageIconDescriptor *)self isSystemImage])
  {
    objc_opt_class();
    v11 = v7;
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
    v11 = v7;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(HFMultistateImageIconDescriptor *)v5 dictionaryKeyedByPrimaryState];
      v7 = [(HFMultistateImageIconDescriptor *)self dictionaryKeyedByPrimaryState];
      if (v6 == v7)
      {
        v10 = 1;
      }

      else
      {
        v8 = [(HFMultistateImageIconDescriptor *)v5 dictionaryKeyedByPrimaryState];
        v9 = [(HFMultistateImageIconDescriptor *)self dictionaryKeyedByPrimaryState];
        v10 = [v8 isEqualToDictionary:v9];
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
  v2 = [(HFMultistateImageIconDescriptor *)self dictionaryKeyedByPrimaryState];
  v3 = [v2 hash];

  return v3;
}

@end