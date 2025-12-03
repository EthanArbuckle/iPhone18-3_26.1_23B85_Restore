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
  viewModel = [(CSSystemQuickAction *)self viewModel];
  title = [viewModel title];
  v5 = [v2 stringWithFormat:@"CSSystemToggleQuickAction%@", title];

  return v5;
}

- (id)accessibilityIdentifier
{
  viewModel = [(CSSystemQuickAction *)self viewModel];
  accessibilityIdentifier = [viewModel accessibilityIdentifier];

  if (accessibilityIdentifier)
  {
    v5 = accessibilityIdentifier;
  }

  else
  {
    v6 = MEMORY[0x277CCACA8];
    controlIdentity = [(CSSystemQuickAction *)self controlIdentity];
    kind = [controlIdentity kind];
    v5 = [v6 stringWithFormat:@"system-orb-toggle-%@", kind];
  }

  return v5;
}

- (BOOL)isSelected
{
  _toggleViewModel = [(CSSystemToggleQuickAction *)self _toggleViewModel];
  state = [_toggleViewModel state];

  return state;
}

- (id)_toggleViewModel
{
  controlInstance = [(CSSystemQuickAction *)self controlInstance];
  viewModel = [controlInstance viewModel];

  return viewModel;
}

@end