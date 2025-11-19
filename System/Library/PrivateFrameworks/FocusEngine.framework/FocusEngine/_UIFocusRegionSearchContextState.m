@interface _UIFocusRegionSearchContextState
+ (id)stateWithRegionContainer:(id)a3 focusSystem:(id)a4 clippingRect:(CGRect)a5;
- (CGRect)clippingRect;
- (_UIFocusRegionSearchContextState)initWithRegionContainer:(id)a3 focusSystem:(id)a4 clippingRect:(CGRect)a5;
@end

@implementation _UIFocusRegionSearchContextState

- (_UIFocusRegionSearchContextState)initWithRegionContainer:(id)a3 focusSystem:(id)a4 clippingRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3;
  v13 = a4;
  v17.receiver = self;
  v17.super_class = _UIFocusRegionSearchContextState;
  v14 = [(_UIFocusRegionSearchContextState *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_regionContainer, a3);
    objc_storeStrong(&v15->_regionContainerFocusSystem, a4);
    v15->_clippingRect.origin.x = x;
    v15->_clippingRect.origin.y = y;
    v15->_clippingRect.size.width = width;
    v15->_clippingRect.size.height = height;
  }

  return v15;
}

+ (id)stateWithRegionContainer:(id)a3 focusSystem:(id)a4 clippingRect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a4;
  v12 = a3;
  v13 = [[a1 alloc] initWithRegionContainer:v12 focusSystem:v11 clippingRect:{x, y, width, height}];

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