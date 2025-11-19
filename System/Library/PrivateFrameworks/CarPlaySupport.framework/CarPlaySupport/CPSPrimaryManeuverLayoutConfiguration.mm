@interface CPSPrimaryManeuverLayoutConfiguration
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfiguration:(id)a3;
- (id)_layoutString;
- (id)description;
@end

@implementation CPSPrimaryManeuverLayoutConfiguration

- (id)description
{
  v16 = self;
  v15 = a2;
  v6 = MEMORY[0x277CCACA8];
  v14.receiver = self;
  v14.super_class = CPSPrimaryManeuverLayoutConfiguration;
  v7 = [(CPSPrimaryManeuverLayoutConfiguration *)&v14 description];
  v8 = [(CPSPrimaryManeuverLayoutConfiguration *)v16 _layoutString];
  v9 = [(CPSPrimaryManeuverLayoutConfiguration *)v16 symbolImage];
  [(CPSPrimaryManeuverLayoutConfiguration *)v16 height];
  v10 = v2;
  v11 = [(CPSPrimaryManeuverLayoutConfiguration *)v16 attributedInstruction];
  v12 = 0;
  if (v11)
  {
    v5 = v11;
  }

  else
  {
    v13 = [(CPSPrimaryManeuverLayoutConfiguration *)v16 instruction];
    v12 = 1;
    v5 = v13;
  }

  v17 = [v6 stringWithFormat:@"%@ [layout: %@, image: %@, height: %f, instruction: %@]", v7, v8, v9, v10, v5];
  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v7);
  v3 = v17;

  return v3;
}

- (id)_layoutString
{
  v3 = [(CPSPrimaryManeuverLayoutConfiguration *)self layout];
  if (v3)
  {
    switch(v3)
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

- (BOOL)isEqual:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v5 == location[0])
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(CPSPrimaryManeuverLayoutConfiguration *)v5 isEqualToConfiguration:location[0]];
    }

    else
    {
      v6 = 0;
    }
  }

  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)isEqualToConfiguration:(id)a3
{
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(CPSPrimaryManeuverLayoutConfiguration *)v23 layout];
  v20 = 0;
  v18 = 0;
  v16 = 0;
  v14 = 0;
  v12 = 0;
  v10 = 0;
  v8 = 0;
  v6 = 0;
  v5 = 0;
  if (v4 == [location[0] layout])
  {
    [(CPSPrimaryManeuverLayoutConfiguration *)v23 height];
    [location[0] height];
    v5 = 0;
    if (BSFloatEqualToFloat())
    {
      v21 = [(CPSPrimaryManeuverLayoutConfiguration *)v23 instruction];
      v20 = 1;
      v19 = [location[0] instruction];
      v18 = 1;
      v5 = 0;
      if ([(NSString *)v21 isEqualToString:?])
      {
        v17 = [(CPSPrimaryManeuverLayoutConfiguration *)v23 attributedInstruction];
        v16 = 1;
        v15 = [location[0] attributedInstruction];
        v14 = 1;
        v5 = 0;
        if ([(NSAttributedString *)v17 isEqualToAttributedString:?])
        {
          v13 = [(CPSPrimaryManeuverLayoutConfiguration *)v23 symbolImage];
          v12 = 1;
          v11 = [location[0] symbolImage];
          v10 = 1;
          v5 = 0;
          if (([(UIImage *)v13 isEqual:?]& 1) != 0)
          {
            v9 = [(CPSPrimaryManeuverLayoutConfiguration *)v23 junctionImage];
            v8 = 1;
            v7 = [location[0] junctionImage];
            v6 = 1;
            v5 = [(UIImage *)v9 isEqual:?];
          }
        }
      }
    }
  }

  v24 = v5 & 1;
  if (v6)
  {
    MEMORY[0x277D82BD8](v7);
  }

  if (v8)
  {
    MEMORY[0x277D82BD8](v9);
  }

  if (v10)
  {
    MEMORY[0x277D82BD8](v11);
  }

  if (v12)
  {
    MEMORY[0x277D82BD8](v13);
  }

  if (v14)
  {
    MEMORY[0x277D82BD8](v15);
  }

  if (v16)
  {
    MEMORY[0x277D82BD8](v17);
  }

  if (v18)
  {
    MEMORY[0x277D82BD8](v19);
  }

  if (v20)
  {
    MEMORY[0x277D82BD8](v21);
  }

  objc_storeStrong(location, 0);
  return v24 & 1;
}

@end