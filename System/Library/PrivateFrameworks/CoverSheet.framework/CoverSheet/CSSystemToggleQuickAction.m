@interface CSSystemToggleQuickAction
- (BOOL)isSelected;
- (id)_toggleViewModel;
- (id)accessibilityIdentifier;
- (id)actionIdentifier;
@end

@implementation CSSystemToggleQuickAction

- (id)actionIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [(CSSystemQuickAction *)self viewModel];
  v4 = [v3 title];
  v5 = [v2 stringWithFormat:@"CSSystemToggleQuickAction%@", v4];

  return v5;
}

- (id)accessibilityIdentifier
{
  v3 = [(CSSystemQuickAction *)self viewModel];
  v4 = [v3 accessibilityIdentifier];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    v7 = [(CSSystemQuickAction *)self controlIdentity];
    v8 = [v7 kind];
    v5 = [v6 stringWithFormat:@"system-orb-toggle-%@", v8];
  }

  return v5;
}

- (BOOL)isSelected
{
  v2 = [(CSSystemToggleQuickAction *)self _toggleViewModel];
  v3 = [v2 state];

  return v3;
}

- (id)_toggleViewModel
{
  v2 = [(CSSystemQuickAction *)self controlInstance];
  v3 = [v2 viewModel];

  return v3;
}

@end