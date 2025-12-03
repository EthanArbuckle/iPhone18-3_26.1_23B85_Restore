@interface _UIFocusRegionSearchContextState
+ (id)stateWithRegionContainer:(id)container focusSystem:(id)system clippingRect:(CGRect)rect;
- (CGRect)clippingRect;
- (_UIFocusRegionSearchContextState)initWithRegionContainer:(id)container focusSystem:(id)system clippingRect:(CGRect)rect;
@end

@implementation _UIFocusRegionSearchContextState

- (_UIFocusRegionSearchContextState)initWithRegionContainer:(id)container focusSystem:(id)system clippingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  containerCopy = container;
  systemCopy = system;
  v17.receiver = self;
  v17.super_class = _UIFocusRegionSearchContextState;
  v14 = [(_UIFocusRegionSearchContextState *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_regionContainer, container);
    objc_storeStrong(&v15->_regionContainerFocusSystem, system);
    v15->_clippingRect.origin.x = x;
    v15->_clippingRect.origin.y = y;
    v15->_clippingRect.size.width = width;
    v15->_clippingRect.size.height = height;
  }

  return v15;
}

+ (id)stateWithRegionContainer:(id)container focusSystem:(id)system clippingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  systemCopy = system;
  containerCopy = container;
  v13 = [[self alloc] initWithRegionContainer:containerCopy focusSystem:systemCopy clippingRect:{x, y, width, height}];

  return v13;
}

- (CGRect)clippingRect
{
  x = self->_clippingRect.origin.x;
  y = self->_clippingRect.origin.y;
  width = self->_clippingRect.size.width;
  height = self->_clippingRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end