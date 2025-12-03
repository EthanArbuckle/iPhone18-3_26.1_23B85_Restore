@interface GEOAmenityItem(MUAmenityItemViewModel)
- (id)displayTitle;
- (id)symbolImageForFont:()MUAmenityItemViewModel;
@end

@implementation GEOAmenityItem(MUAmenityItemViewModel)

- (id)displayTitle
{
  amenityTitle = [self amenityTitle];
  v3 = [amenityTitle length];

  if (v3)
  {
    [self amenityTitle];
  }

  else
  {
    MUStringForGEOAmenityType([self amenityType]);
  }
  v4 = ;

  return v4;
}

- (id)symbolImageForFont:()MUAmenityItemViewModel
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithFont:?];
  if (![self isAmenityPresent])
  {
    v8 = @"xmark";
    goto LABEL_6;
  }

  symbolImageName = [self symbolImageName];
  v4 = [symbolImageName length];

  if (!v4 || (v5 = MEMORY[0x1E69DCAB8], [self symbolImageName], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "_mapsui_resolvedSymbolImageNamed:withConfiguration:", v6, v2), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v8 = @"checkmark";
LABEL_6:
    v7 = [MEMORY[0x1E69DCAB8] _mapsui_systemImageNamed:v8 withConfiguration:v2];
  }

  return v7;
}

@end