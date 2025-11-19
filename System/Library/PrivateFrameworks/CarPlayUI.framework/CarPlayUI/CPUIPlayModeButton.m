@interface CPUIPlayModeButton
- (id)colorForKnobContentSelected;
- (id)colorForTouchContentSelected;
@end

@implementation CPUIPlayModeButton

- (id)colorForTouchContentSelected
{
  v2 = MEMORY[0x277D75348];
  v3 = [MEMORY[0x277D75348] labelColor];
  v4 = [v2 _focusedCarSystemColor:v3];

  return v4;
}

- (id)colorForKnobContentSelected
{
  v2 = MEMORY[0x277D75348];
  v3 = [MEMORY[0x277D75348] labelColor];
  v4 = [v2 _focusedCarSystemColor:v3];

  return v4;
}

@end