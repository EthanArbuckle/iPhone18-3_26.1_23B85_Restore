@interface HFColorCollection
+ (NAIdentity)na_identity;
- (BOOL)isEqual:(id)equal;
- (HFColorCollection)init;
- (HFColorCollection)initWithPrimitiveColor:(id)color;
- (HFColorCollection)initWithPrimitiveColors:(id)colors;
- (HFColorPrimitive)preferredColorPrimitive;
- (HFRGBColor)RGBColor;
- (HFTemperatureColor)temperatureColor;
- (NSString)description;
- (id)colorByAdjustingForProfile:(id)profile;
- (id)colorPrimitives;
- (unint64_t)hash;
@end

@implementation HFColorCollection

- (HFRGBColor)RGBColor
{
  hf_RGBColorRepresentation = self->_RGBColor;
  if (!hf_RGBColorRepresentation)
  {
    temperatureColor = [(HFColorCollection *)self temperatureColor];
    hf_RGBColorRepresentation = [temperatureColor hf_RGBColorRepresentation];
  }

  return hf_RGBColorRepresentation;
}

- (HFTemperatureColor)temperatureColor
{
  hf_temperatureColorRepresentation = self->_temperatureColor;
  if (!hf_temperatureColorRepresentation)
  {
    rGBColor = [(HFColorCollection *)self RGBColor];
    v5 = objc_opt_respondsToSelector();

    if (v5)
    {
      rGBColor2 = [(HFColorCollection *)self RGBColor];
      hf_temperatureColorRepresentation = [rGBColor2 hf_temperatureColorRepresentation];
    }

    else
    {
      hf_temperatureColorRepresentation = 0;
    }
  }

  return hf_temperatureColorRepresentation;
}

- (id)colorPrimitives
{
  v3 = [MEMORY[0x277CBEB58] set];
  [v3 na_safeAddObject:self->_RGBColor];
  [v3 na_safeAddObject:self->_temperatureColor];

  return v3;
}

- (HFColorPrimitive)preferredColorPrimitive
{
  temperatureColor = self->_temperatureColor;
  if (!temperatureColor)
  {
    temperatureColor = self->_RGBColor;
  }

  return temperatureColor;
}

- (HFColorCollection)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v5 = NSStringFromSelector(sel_initWithPrimitiveColors_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFColorCollection.m" lineNumber:49 description:{@"%s is unavailable; use %@ instead", "-[HFColorCollection init]", v5}];

  return 0;
}

- (HFColorCollection)initWithPrimitiveColor:(id)color
{
  v4 = [MEMORY[0x277CBEB98] setWithObject:color];
  v5 = [(HFColorCollection *)self initWithPrimitiveColors:v4];

  return v5;
}

- (HFColorCollection)initWithPrimitiveColors:(id)colors
{
  v24 = *MEMORY[0x277D85DE8];
  colorsCopy = colors;
  if (![colorsCopy count])
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFColorCollection.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"primitiveColors.count > 0"}];
  }

  v22.receiver = self;
  v22.super_class = HFColorCollection;
  v6 = [(HFColorCollection *)&v22 init];
  if (v6)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = colorsCopy;
    v7 = colorsCopy;
    v8 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
    if (!v8)
    {
      goto LABEL_20;
    }

    v9 = v8;
    v10 = *v19;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (v6->_RGBColor)
          {
            NSLog(&cfstr_FoundMultipleR.isa, v7);
            continue;
          }

          p_RGBColor = &v6->_RGBColor;
        }

        else
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            continue;
          }

          if (v6->_temperatureColor)
          {
            NSLog(&cfstr_FoundMultipleT.isa, v7);
            continue;
          }

          p_RGBColor = &v6->_temperatureColor;
        }

        objc_storeStrong(p_RGBColor, v12);
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v23 count:16];
      if (!v9)
      {
LABEL_20:

        colorsCopy = v17;
        break;
      }
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)colorByAdjustingForProfile:(id)profile
{
  profileCopy = profile;
  v5 = objc_alloc(objc_opt_class());
  colorPrimitives = [(HFColorCollection *)self colorPrimitives];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __48__HFColorCollection_colorByAdjustingForProfile___block_invoke;
  v11[3] = &unk_277DF3590;
  v12 = profileCopy;
  v7 = profileCopy;
  v8 = [colorPrimitives na_map:v11];
  v9 = [v5 initWithPrimitiveColors:v8];

  return v9;
}

+ (NAIdentity)na_identity
{
  if (_MergedGlobals_211 != -1)
  {
    dispatch_once(&_MergedGlobals_211, &__block_literal_global_28);
  }

  v3 = qword_280E02AC0;

  return v3;
}

void __32__HFColorCollection_na_identity__block_invoke_2()
{
  v0 = [MEMORY[0x277D2C908] builder];
  v1 = [v0 appendCharacteristic:&__block_literal_global_35];
  v2 = [v0 appendCharacteristic:&__block_literal_global_37_0];
  v3 = [v0 build];

  v4 = qword_280E02AC0;
  qword_280E02AC0 = v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  na_identity = [objc_opt_class() na_identity];
  LOBYTE(self) = [na_identity isObject:self equalToObject:equalCopy];

  return self;
}

- (unint64_t)hash
{
  na_identity = [objc_opt_class() na_identity];
  v4 = [na_identity hashOfObject:self];

  return v4;
}

- (NSString)description
{
  v3 = [MEMORY[0x277D2C8F8] builderWithObject:self];
  rGBColor = [(HFColorCollection *)self RGBColor];
  v5 = [v3 appendObject:rGBColor withName:@"RGBColor"];

  temperatureColor = [(HFColorCollection *)self temperatureColor];
  v7 = [v3 appendObject:temperatureColor withName:@"temperatureColor"];

  build = [v3 build];

  return build;
}

@end