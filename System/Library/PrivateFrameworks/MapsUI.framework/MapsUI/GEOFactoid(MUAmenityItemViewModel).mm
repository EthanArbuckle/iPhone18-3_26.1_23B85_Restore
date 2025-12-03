@interface GEOFactoid(MUAmenityItemViewModel)
- (id)symbolImageForFont:()MUAmenityItemViewModel;
@end

@implementation GEOFactoid(MUAmenityItemViewModel)

- (id)symbolImageForFont:()MUAmenityItemViewModel
{
  v2 = [MEMORY[0x1E69DCAD8] configurationWithFont:?];
  symbolName = [self symbolName];
  v4 = [symbolName length];

  if (!v4 || (v5 = MEMORY[0x1E69DCAB8], [self symbolName], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "_mapsui_resolvedSymbolImageNamed:withConfiguration:", v6, v2), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
    v7 = [MEMORY[0x1E69DCAB8] _mapsui_systemImageNamed:@"checkmark" withConfiguration:v2];
  }

  return v7;
}

@end