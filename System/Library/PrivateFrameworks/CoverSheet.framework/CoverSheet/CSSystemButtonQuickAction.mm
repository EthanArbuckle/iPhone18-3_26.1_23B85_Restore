@interface CSSystemButtonQuickAction
- (BOOL)isSelected;
- (id)_buttonViewModel;
- (id)accessibilityIdentifier;
- (id)actionIdentifier;
@end

@implementation CSSystemButtonQuickAction

- (id)actionIdentifier
{
  v2 = MEMORY[0x277CCACA8];
  viewModel = [(CSSystemQuickAction *)self viewModel];
  title = [viewModel title];
  v5 = [v2 stringWithFormat:@"CSSystemButtonQuickAction%@", title];

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
    v5 = [v6 stringWithFormat:@"system-orb-button-%@", kind];
  }

  return v5;
}

- (BOOL)isSelected
{
  _buttonViewModel = [(CSSystemButtonQuickAction *)self _buttonViewModel];
  isAnimating = [_buttonViewModel isAnimating];

  return isAnimating;
}

- (id)_buttonViewModel
{
  controlInstance = [(CSSystemQuickAction *)self controlInstance];
  viewModel = [controlInstance viewModel];

  return viewModel;
}

@end