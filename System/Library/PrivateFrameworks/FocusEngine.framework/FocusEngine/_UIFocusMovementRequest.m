@interface _UIFocusMovementRequest
- (UIFocusSystem)focusSystem;
- (_UIFocusItemInfo)focusedItemInfo;
- (_UIFocusMovementInfo)movementInfo;
- (_UIFocusMovementRequest)fallbackRequest;
- (_UIFocusMovementRequest)init;
- (_UIFocusMovementRequest)initWithFocusSystem:(id)a3;
- (_UIFocusSearchInfo)searchInfo;
- (id)_requestByRedirectingRequestToFocusSystem:(id)a3;
@end

@implementation _UIFocusMovementRequest

- (_UIFocusMovementRequest)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"_UIFocusMovementRequest.m" lineNumber:18 description:@"-init is not a valid initializer for this class."];

  return 0;
}

- (_UIFocusMovementRequest)initWithFocusSystem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v9 = [MEMORY[0x277CCA890] currentHandler];
    [v9 handleFailureInMethod:a2 object:self file:@"_UIFocusMovementRequest.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"focusSystem"}];
  }

  v10.receiver = self;
  v10.super_class = _UIFocusMovementRequest;
  v6 = [(_UIFocusMovementRequest *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeWeak(&v6->_focusSystem, v5);
  }

  return v7;
}

- (id)_requestByRedirectingRequestToFocusSystem:(id)a3
{
  v4 = a3;
  v5 = [[_UIFocusMovementRequest alloc] initWithFocusSystem:v4];

  objc_storeStrong(&v5->_movementInfo, self->_movementInfo);

  return v5;
}

- (_UIFocusItemInfo)focusedItemInfo
{
  focusedItemInfo = self->_focusedItemInfo;
  if (!focusedItemInfo)
  {
    v4 = [(_UIFocusMovementRequest *)self focusSystem];
    v5 = [v4 focusedItem];
    v6 = [_UIFocusItemInfo infoWithItem:v5];
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
  v4 = [WeakRetained _hostFocusSystem];

  if (v4)
  {
    v5 = [(_UIFocusMovementRequest *)self _requestByRedirectingRequestToFocusSystem:v4];
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