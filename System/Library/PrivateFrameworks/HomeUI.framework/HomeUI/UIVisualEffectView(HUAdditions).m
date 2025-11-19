@interface UIVisualEffectView(HUAdditions)
- (void)hu_configureEffectForIdentifier:()HUAdditions;
@end

@implementation UIVisualEffectView(HUAdditions)

- (void)hu_configureEffectForIdentifier:()HUAdditions
{
  v6 = a3;
  if ([v6 isEqualToString:@"HUSharedVisualEffectIdentifierTileOff"])
  {
    v4 = [MEMORY[0x277D75D58] hu_gridCellBackgroundOffEffects];
LABEL_5:
    v5 = v4;
    [a1 setBackgroundEffects:v4];

    goto LABEL_7;
  }

  if ([v6 isEqualToString:@"HUSharedVisualEffectIdentifierTileOn"])
  {
    v4 = [MEMORY[0x277D75D58] hu_gridCellBackgroundOnEffects];
    goto LABEL_5;
  }

  NSLog(&cfstr_UnexpectedVisu.isa, v6);
LABEL_7:
}

@end