@interface _UIFocusMovementRequest
- (UIFocusSystem)focusSystem;
- (_UIFocusItemInfo)focusedItemInfo;
- (_UIFocusMovementInfo)movementInfo;
- (_UIFocusMovementRequest)fallbackRequest;
- (_UIFocusMovementRequest)init;
- (_UIFocusMovementRequest)initWithFocusSystem:(id)system;
- (_UIFocusSearchInfo)searchInfo;
- (id)_requestByRedirectingRequestToFocusSystem:(id)system;
@end

@implementation _UIFocusMovementRequest

- (_UIFocusMovementRequest)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMovementRequest.m" lineNumber:18 description:@"-init is not a valid initializer for this class."];

  return 0;
}

- (_UIFocusMovementRequest)initWithFocusSystem:(id)system
{
  systemCopy = system;
  if (!systemCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusMovementRequest.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];
  }

  v10.receiver = self;
  v10.super_class = _UIFocusMovementRequest;
  v6 = [(_UIFocusMovementRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_focusSystem, systemCopy);
  }

  return v7;
}

- (id)_requestByRedirectingRequestToFocusSystem:(id)system
{
  systemCopy = system;
  v5 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:systemCopy];

  objc_storeStrong(&v5->_movementInfo, self->_movementInfo);

  return v5;
}

- (_UIFocusItemInfo)focusedItemInfo
{
  focusedItemInfo = self->_focusedItemInfo;
  if (!focusedItemInfo)
  {
    focusSystem = [(_UIFocusMovementRequest *)self focusSystem];
    focusedItem = [focusSystem focusedItem];
    v6 = [_UIFocusItemInfo infoWithItem:focusedItem];
    v7 = self->_focusedItemInfo;
    self->_focusedItemInfo = v6;

    focusedItemInfo = self->_focusedItemInfo;
  }

  return focusedItemInfo;
}

- (_UIFocusMovementInfo)movementInfo
{
  movementInfo = self->_movementInfo;
  if (!movementInfo)
  {
    v4 = [[_UIFocusMovementInfo alloc] initWithHeading:0 linearHeading:0 isInitial:1 shouldLoadScrollableContainer:1 looping:0 groupFilter:0 inputType:5];
    v5 = self->_movementInfo;
    self->_movementInfo = v4;

    movementInfo = self->_movementInfo;
  }

  return movementInfo;
}

- (_UIFocusSearchInfo)searchInfo
{
  searchInfo = self->_searchInfo;
  if (!searchInfo)
  {
    v4 = +[_UIFocusSearchInfo defaultInfo];
    v5 = self->_searchInfo;
    self->_searchInfo = v4;

    searchInfo = self->_searchInfo;
  }

  return searchInfo;
}

- (_UIFocusMovementRequest)fallbackRequest
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);
  _hostFocusSystem = [WeakRetained _hostFocusSystem];

  if (_hostFocusSystem)
  {
    v5 = [(_UIFocusMovementRequest *)self _requestByRedirectingRequestToFocusSystem:_hostFocusSystem];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (UIFocusSystem)focusSystem
{
  WeakRetained = objc_loadWeakRetained(&self->_focusSystem);

  return WeakRetained;
}

@end