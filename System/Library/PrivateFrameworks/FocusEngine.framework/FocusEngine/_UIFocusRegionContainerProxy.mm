@interface _UIFocusRegionContainerProxy
- (BOOL)_isEligibleForFocusInteraction;
- (BOOL)_isEligibleForFocusOcclusion;
- (BOOL)isEqual:(id)equal;
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (CGRect)_clippingRectInCoordinateSpace:(id)space;
- (NSArray)preferredFocusEnvironments;
- (NSString)description;
- (UIFocusEnvironment)parentFocusEnvironment;
- (_UIFocusRegionContainerProxy)initWithEnvironmentContainer:(id)container;
- (_UIFocusRegionContainerProxy)initWithOwningEnvironment:(id)environment itemContainer:(id)container;
- (id)_preferredFocusRegionCoordinateSpace;
- (unint64_t)hash;
- (void)_didUpdateFocusInContext:(id)context;
- (void)_searchForFocusRegionsInContext:(id)context;
- (void)setNeedsFocusUpdate;
- (void)updateFocusIfNeeded;
@end

@implementation _UIFocusRegionContainerProxy

- (_UIFocusRegionContainerProxy)initWithOwningEnvironment:(id)environment itemContainer:(id)container
{
  v5 = [_UIFocusEnvironmentContainerTuple tupleWithOwningEnvironment:environment itemContainer:container];
  v6 = [(_UIFocusRegionContainerProxy *)self initWithEnvironmentContainer:v5];

  return v6;
}

- (_UIFocusRegionContainerProxy)initWithEnvironmentContainer:(id)container
{
  containerCopy = container;
  if (!containerCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UIFocusRegionContainerProxy.m" lineNumber:37 description:{@"Invalid parameter not satisfying: %@", @"environmentContainer != nil"}];
  }

  v11.receiver = self;
  v11.super_class = _UIFocusRegionContainerProxy;
  v7 = [(_UIFocusRegionContainerProxy *)&v11 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_environmentContainer, container);
    *&v8->_allowsLazyLoading = 257;
    v8->_shouldCreateRegionForGuideBehavior = 1;
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  v6 = equalCopy && [equalCopy _ui_isUIFocusRegionContainerProxy] && -[_UIFocusEnvironmentContainerTuple isEqualToEnvironmentContainerTuple:](self->_environmentContainer, "isEqualToEnvironmentContainerTuple:", v5[2]);

  return v6;
}

- (unint64_t)hash
{
  environmentContainer = [(_UIFocusRegionContainerProxy *)self environmentContainer];
  v3 = [environmentContainer hash];

  return v3;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  itemContainer = [(_UIFocusEnvironmentContainerTuple *)self->_environmentContainer itemContainer];
  if (itemContainer)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"<%@: %p>", v7, itemContainer];
  }

  else
  {
    v8 = @"(nil)";
  }

  v9 = [v3 appendObject:v8 withName:@"focusItemContainer"];

  owningEnvironment = [(_UIFocusEnvironmentContainerTuple *)self->_environmentContainer owningEnvironment];
  if (owningEnvironment)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [v11 stringWithFormat:@"<%@: %p>", v13, owningEnvironment];
  }

  else
  {
    v14 = @"(nil)";
  }

  v15 = [v3 appendObject:v14 withName:@"owningEnvironment"];

  build = [v3 build];

  return build;
}

- (NSArray)preferredFocusEnvironments
{
  owningEnvironment = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  v3 = _UIFocusEnvironmentPreferredFocusEnvironments(owningEnvironment);

  return v3;
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  owningEnvironment = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  if (objc_opt_respondsToSelector())
  {
    v6 = [owningEnvironment shouldUpdateFocusInContext:contextCopy];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (void)_didUpdateFocusInContext:(id)context
{
  contextCopy = context;
  owningEnvironment = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  v5 = [UIFocusSystem focusSystemForEnvironment:owningEnvironment];
  [v5 _notifyEnvironment:owningEnvironment didUpdateFocusInContext:contextCopy];
}

- (void)setNeedsFocusUpdate
{
  _focusSystem = [(_UIFocusRegionContainerProxy *)self _focusSystem];
  owningEnvironment = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  [_focusSystem requestFocusUpdateToEnvironment:owningEnvironment];
}

- (void)updateFocusIfNeeded
{
  _focusSystem = [(_UIFocusRegionContainerProxy *)self _focusSystem];
  [_focusSystem updateFocusIfNeeded];
}

- (UIFocusEnvironment)parentFocusEnvironment
{
  owningEnvironment = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    parentFocusEnvironment = owningEnvironment;
  }

  else
  {
    parentFocusEnvironment = [owningEnvironment parentFocusEnvironment];
  }

  v4 = parentFocusEnvironment;

  return v4;
}

- (CGRect)_clippingRectInCoordinateSpace:(id)space
{
  spaceCopy = space;
  owningEnvironment = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  if (objc_opt_respondsToSelector())
  {
    [owningEnvironment _clippingRectInCoordinateSpace:spaceCopy];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
  }

  else
  {
    v7 = *MEMORY[0x277CBF398];
    v9 = *(MEMORY[0x277CBF398] + 8);
    v11 = *(MEMORY[0x277CBF398] + 16);
    v13 = *(MEMORY[0x277CBF398] + 24);
  }

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (BOOL)_isEligibleForFocusInteraction
{
  owningEnvironment = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  IsEligibleForFocusInteraction = _UIFocusEnvironmentIsEligibleForFocusInteraction(owningEnvironment);

  return IsEligibleForFocusInteraction;
}

- (BOOL)_isEligibleForFocusOcclusion
{
  owningEnvironment = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  IsEligibleForFocusOcclusion = _UIFocusEnvironmentIsEligibleForFocusOcclusion(owningEnvironment, 0);

  return IsEligibleForFocusOcclusion;
}

- (id)_preferredFocusRegionCoordinateSpace
{
  owningEnvironment = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  v3 = [UIFocusSystem focusSystemForEnvironment:owningEnvironment];
  v4 = v3;
  if (!v3)
  {
    v3 = owningEnvironment;
  }

  focusItemContainer = [v3 focusItemContainer];
  coordinateSpace = [focusItemContainer coordinateSpace];

  return coordinateSpace;
}

- (void)_searchForFocusRegionsInContext:(id)context
{
  contextCopy = context;
  shouldCreateRegionForOwningItem = [(_UIFocusRegionContainerProxy *)self shouldCreateRegionForOwningItem];
  allowsLazyLoading = [(_UIFocusRegionContainerProxy *)self allowsLazyLoading];
  shouldCreateRegionForGuideBehavior = [(_UIFocusRegionContainerProxy *)self shouldCreateRegionForGuideBehavior];
  owningEnvironment = [(_UIFocusRegionContainerProxy *)self owningEnvironment];
  v11 = owningEnvironment;
  v9 = 0x10000;
  if (!shouldCreateRegionForGuideBehavior)
  {
    v9 = 0;
  }

  v10 = 256;
  if (!allowsLazyLoading)
  {
    v10 = 0;
  }

  _UIFocusRegionSearchContextSearchForFocusRegionsInEnvironment(contextCopy, owningEnvironment, v10 | shouldCreateRegionForOwningItem | v9);
}

@end