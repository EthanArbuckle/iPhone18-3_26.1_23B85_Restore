@interface _UIFocusContainerGuideFallbackItemsContainer
- (UICoordinateSpace)coordinateSpace;
- (UIFocusEnvironment)parentFocusEnvironment;
- (_UIFocusContainerGuideFallbackItemsContainer)initWithParentEnvironment:(id)a3 childItems:(id)a4;
- (void)setNeedsFocusUpdate;
- (void)updateFocusIfNeeded;
@end

@implementation _UIFocusContainerGuideFallbackItemsContainer

- (_UIFocusContainerGuideFallbackItemsContainer)initWithParentEnvironment:(id)a3 childItems:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIFocusContainerGuideFallbackItemsContainer.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"parentEnvironment != nil"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v14 = [MEMORY[0x277CCA890] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"_UIFocusContainerGuideFallbackItemsContainer.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"childItems != nil"}];

LABEL_3:
  v15.receiver = self;
  v15.super_class = _UIFocusContainerGuideFallbackItemsContainer;
  v10 = [(_UIFocusContainerGuideFallbackItemsContainer *)&v15 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_parentFocusEnvironment, v7);
    objc_storeStrong(&v11->_childItems, a4);
  }

  return v11;
}

- (UICoordinateSpace)coordinateSpace
{
  v2 = [(_UIFocusContainerGuideFallbackItemsContainer *)self parentFocusEnvironment];
  v3 = [v2 focusItemContainer];
  v4 = [v3 coordinateSpace];

  return v4;
}

- (void)setNeedsFocusUpdate
{
  v3 = [UIFocusSystem focusSystemForEnvironment:self];
  [v3 requestFocusUpdateToEnvironment:self];
}

- (void)updateFocusIfNeeded
{
  v2 = [UIFocusSystem focusSystemForEnvironment:self];
  [v2 updateFocusIfNeeded];
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  WeakRetained = objc_loadWeakRetained(&self->_parentFocusEnvironment);

  return WeakRetained;
}

@end