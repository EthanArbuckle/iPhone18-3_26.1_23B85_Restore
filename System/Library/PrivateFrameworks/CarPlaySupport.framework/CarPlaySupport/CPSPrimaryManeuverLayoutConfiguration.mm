@interface CPSPrimaryManeuverLayoutConfiguration
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfiguration:(id)configuration;
- (id)_layoutString;
- (id)description;
@end

@implementation CPSPrimaryManeuverLayoutConfiguration

- (id)description
{
  selfCopy = self;
  v15 = a2;
  v6 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = CPSPrimaryManeuverLayoutConfiguration;
  v7 = [(CPSPrimaryManeuverLayoutConfiguration *)&v14 description];
  _layoutString = [(CPSPrimaryManeuverLayoutConfiguration *)selfCopy _layoutString];
  symbolImage = [(CPSPrimaryManeuverLayoutConfiguration *)selfCopy symbolImage];
  [(CPSPrimaryManeuverLayoutConfiguration *)selfCopy height];
  v10 = v2;
  attributedInstruction = [(CPSPrimaryManeuverLayoutConfiguration *)selfCopy attributedInstruction];
  v12 = 0;
  if (attributedInstruction)
  {
    v5 = attributedInstruction;
  }

  else
  {
    instruction = [(CPSPrimaryManeuverLayoutConfiguration *)selfCopy instruction];
    v12 = 1;
    v5 = instruction;
  }

  v17 = [v6 stringWithFormat:@"%@ [layout: %@, image: %@, height: %f, instruction: %@]", v7, _layoutString, symbolImage, v10, v5];
  if (v12)
  {
    MEMORY[0x277D82BD8](instruction);
  }

  MEMORY[0x277D82BD8](attributedInstruction);
  MEMORY[0x277D82BD8](symbolImage);
  MEMORY[0x277D82BD8](_layoutString);
  MEMORY[0x277D82BD8](v7);
  v3 = v17;

  return v3;
}

- (id)_layoutString
{
  layout = [(CPSPrimaryManeuverLayoutConfiguration *)self layout];
  if (layout)
  {
    switch(layout)
    {
      case 1uLL:
        v4 = MEMORY[0x277D82BE0](@"Full");
        break;
      case 2uLL:
        v4 = MEMORY[0x277D82BE0](@"FullWideImage");
        break;
      case 3uLL:
        v4 = MEMORY[0x277D82BE0](@"JunctionViewNoInstruction");
        break;
      case 4uLL:
        v4 = MEMORY[0x277D82BE0](@"JunctionViewNoInstructionWideImage");
        break;
      case 5uLL:
        v4 = MEMORY[0x277D82BE0](@"NoJunctionView");
        break;
      case 6uLL:
        v4 = MEMORY[0x277D82BE0](@"NoJunctionViewWideImage");
        break;
      case 7uLL:
        v4 = MEMORY[0x277D82BE0](@"FullInstructionNextToSymbol");
        break;
      case 8uLL:
        v4 = MEMORY[0x277D82BE0](@"MinimalWide");
        break;
      case 9uLL:
        v4 = MEMORY[0x277D82BE0](@"Minimal");
        break;
      default:
        v4 = MEMORY[0x277D82BE0](&stru_2855A5FC8);
        break;
    }
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](@"Undefined");
  }

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, equal);
  if (selfCopy == location[0])
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(CPSPrimaryManeuverLayoutConfiguration *)selfCopy isEqualToConfiguration:location[0]];
    }

    else
    {
      v6 = 0;
    }
  }

  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)isEqualToConfiguration:(id)configuration
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  layout = [(CPSPrimaryManeuverLayoutConfiguration *)selfCopy layout];
  v20 = 0;
  v18 = 0;
  v16 = 0;
  v14 = 0;
  v12 = 0;
  v10 = 0;
  v8 = 0;
  v6 = 0;
  v5 = 0;
  if (layout == [location[0] layout])
  {
    [(CPSPrimaryManeuverLayoutConfiguration *)selfCopy height];
    [location[0] height];
    v5 = 0;
    if (BSFloatEqualToFloat())
    {
      instruction = [(CPSPrimaryManeuverLayoutConfiguration *)selfCopy instruction];
      v20 = 1;
      instruction2 = [location[0] instruction];
      v18 = 1;
      v5 = 0;
      if ([(NSString *)instruction isEqualToString:?])
      {
        attributedInstruction = [(CPSPrimaryManeuverLayoutConfiguration *)selfCopy attributedInstruction];
        v16 = 1;
        attributedInstruction2 = [location[0] attributedInstruction];
        v14 = 1;
        v5 = 0;
        if ([(NSAttributedString *)attributedInstruction isEqualToAttributedString:?])
        {
          symbolImage = [(CPSPrimaryManeuverLayoutConfiguration *)selfCopy symbolImage];
          v12 = 1;
          symbolImage2 = [location[0] symbolImage];
          v10 = 1;
          v5 = 0;
          if (([(UIImage *)symbolImage isEqual:?]& 1) != 0)
          {
            junctionImage = [(CPSPrimaryManeuverLayoutConfiguration *)selfCopy junctionImage];
            v8 = 1;
            junctionImage2 = [location[0] junctionImage];
            v6 = 1;
            v5 = [(UIImage *)junctionImage isEqual:?];
          }
        }
      }
    }
  }

  v24 = v5 & 1;
  if (v6)
  {
    MEMORY[0x277D82BD8](junctionImage2);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](junctionImage);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](symbolImage2);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](symbolImage);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](attributedInstruction2);
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](attributedInstruction);
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](instruction2);
  }

  if (v20)
  {
    MEMORY[0x277D82BD8](instruction);
  }

  objc_storeStrong(location, 0);
  return v24 & 1;
}

@end