@interface _UIHostedFocusSystem
- (BOOL)_focusSystemIsValid;
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)_isEligibleForFocusOcclusion;
- (BOOL)containsChildOfHostEnvironment:(id)environment;
- (UIFocusEnvironment)hostEnvironment;
- (_UIHostedFocusSystemDelegate)delegate;
- (id)_hostFocusSystem;
- (id)_initWithHostEnvironment:(id)environment;
- (id)behavior;
- (void)setDelegate:(id)delegate;
@end

@implementation _UIHostedFocusSystem

- (id)_initWithHostEnvironment:(id)environment
{
  environmentCopy = environment;
  if (!environmentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHostedFocusSystem.m" lineNumber:72 description:{@"Invalid parameter not satisfying: %@", @"hostEnvironment"}];
  }

  v6 = [UIFocusSystem focusSystemForEnvironment:environmentCopy];
  behavior = [v6 behavior];
  v20.receiver = self;
  v20.super_class = _UIHostedFocusSystem;
  v8 = [(UIFocusSystem *)&v20 initWithFocusBehavior:behavior enabled:1];

  if (v8)
  {
    objc_storeWeak(&v8->_hostEnvironment, environmentCopy);
    v9 = [[_UIHostedFocusSystemItemContainer alloc] initWithHostedFocusSystem:v8];
    itemContainerProxy = v8->_itemContainerProxy;
    v8->_itemContainerProxy = v9;

    v11 = v8;
    if (qword_27F062FD8 != -1)
    {
      dispatch_once(&qword_27F062FD8, &__block_literal_global_7);
    }

    hostEnvironment = [(_UIHostedFocusSystem *)v11 hostEnvironment];
    if (!hostEnvironment)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:"void _UIHostedFocusSystemRegister(_UIHostedFocusSystem *__strong)"];
      [currentHandler2 handleFailureInFunction:v19 file:@"_UIHostedFocusSystem.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"hostEnvironment"}];
    }

    v13 = _MergedGlobals_1;
    v14 = [v13 objectForKey:hostEnvironment];
    if (v14)
    {
      v15 = v14;
      [v14 addObject:v11];
    }

    else
    {
      v15 = [MEMORY[0x277CCAA50] hashTableWithOptions:517];
      [v15 addObject:v11];
      [v13 setObject:v15 forKey:hostEnvironment];
    }
  }

  return v8;
}

- (_UIHostedFocusSystemDelegate)delegate
{
  v4.receiver = self;
  v4.super_class = _UIHostedFocusSystem;
  delegate = [(UIFocusSystem *)&v4 delegate];

  return delegate;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateProxy = [(_UIHostedFocusSystem *)self delegateProxy];
  delegate = [delegateProxy delegate];

  if (delegate != delegateCopy)
  {
    v7 = [[_UIHostedFocusSystemDelegateProxy alloc] initWithFocusSystem:self delegate:delegateCopy];
    [(_UIHostedFocusSystem *)self setDelegateProxy:v7];
    v8.receiver = self;
    v8.super_class = _UIHostedFocusSystem;
    [(UIFocusSystem *)&v8 setDelegate:v7];
  }
}

- (BOOL)containsChildOfHostEnvironment:(id)environment
{
  environmentCopy = environment;
  if (!environmentCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIHostedFocusSystem.m" lineNumber:102 description:{@"Invalid parameter not satisfying: %@", @"childEnvironment"}];
  }

  delegateProxy = [(_UIHostedFocusSystem *)self delegateProxy];
  delegate = [delegateProxy delegate];

  if (delegate)
  {
    v8 = [delegate _focusSystem:self containsChildOfHostEnvironment:environmentCopy];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)behavior
{
  _hostFocusSystem = [(_UIHostedFocusSystem *)self _hostFocusSystem];
  behavior = [_hostFocusSystem behavior];
  v5 = behavior;
  if (behavior)
  {
    behavior2 = behavior;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = _UIHostedFocusSystem;
    behavior2 = [(UIFocusSystem *)&v9 behavior];
  }

  v7 = behavior2;

  return v7;
}

- (id)_hostFocusSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_hostEnvironment);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_hostEnvironment);
    v5 = [UIFocusSystem focusSystemForEnvironment:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_focusSystemIsValid
{
  v6.receiver = self;
  v6.super_class = _UIHostedFocusSystem;
  if (![(UIFocusSystem *)&v6 _focusSystemIsValid])
  {
    return 0;
  }

  _hostFocusSystem = [(_UIHostedFocusSystem *)self _hostFocusSystem];
  _focusSystemIsValid = [_hostFocusSystem _focusSystemIsValid];

  return _focusSystemIsValid;
}

- (BOOL)_isEligibleForFocusInteraction
{
  v7.receiver = self;
  v7.super_class = _UIHostedFocusSystem;
  if (![(UIFocusSystem *)&v7 _isEligibleForFocusInteraction])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostEnvironment);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_hostEnvironment);
    IsEligibleForFocusInteraction = _UIFocusEnvironmentIsEligibleForFocusInteraction(v4);
  }

  else
  {
    IsEligibleForFocusInteraction = 0;
  }

  return IsEligibleForFocusInteraction;
}

- (BOOL)_isEligibleForFocusOcclusion
{
  v7.receiver = self;
  v7.super_class = _UIHostedFocusSystem;
  if (![(UIFocusSystem *)&v7 _isEligibleForFocusOcclusion])
  {
    return 0;
  }

  WeakRetained = objc_loadWeakRetained(&self->_hostEnvironment);
  if (WeakRetained)
  {
    v4 = objc_loadWeakRetained(&self->_hostEnvironment);
    IsEligibleForFocusOcclusion = _UIFocusEnvironmentIsEligibleForFocusOcclusion(v4, 0);
  }

  else
  {
    IsEligibleForFocusOcclusion = 0;
  }

  return IsEligibleForFocusOcclusion;
}

- (UIFocusEnvironment)hostEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_hostEnvironment);

  return WeakRetained;
}

@end