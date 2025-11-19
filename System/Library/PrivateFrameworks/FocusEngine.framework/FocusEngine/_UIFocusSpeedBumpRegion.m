@interface _UIFocusSpeedBumpRegion
- (BOOL)isEqual:(id)a3;
- (_UIFocusSpeedBumpRegion)initWithFrame:(CGRect)a3 coordinateSpace:(id)a4 speedBumpEdges:(unint64_t)a5;
- (id)_focusRegionWithAdjustedFrame:(CGRect)a3 coordinateSpace:(id)a4;
- (unint64_t)_boundariesBlockingFocusMovementRequest:(id)a3;
@end

@implementation _UIFocusSpeedBumpRegion

- (_UIFocusSpeedBumpRegion)initWithFrame:(CGRect)a3 coordinateSpace:(id)a4 speedBumpEdges:(unint64_t)a5
{
  v7.receiver = self;
  v7.super_class = _UIFocusSpeedBumpRegion;
  result = [(_UIFocusRegion *)&v7 initWithFrame:a4 coordinateSpace:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (result)
  {
    result->_speedBumpEdges = a5;
  }

  return result;
}

- (id)_focusRegionWithAdjustedFrame:(CGRect)a3 coordinateSpace:(id)a4
{
  v7.receiver = self;
  v7.super_class = _UIFocusSpeedBumpRegion;
  v5 = [(_UIFocusRegion *)&v7 _focusRegionWithAdjustedFrame:a4 coordinateSpace:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v5[6] = self->_speedBumpEdges;

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = _UIFocusSpeedBumpRegion;
  if ([(_UIFocusRegion *)&v7 isEqual:v4])
  {
    v5 = self->_speedBumpEdges == v4[6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)_boundariesBlockingFocusMovementRequest:(id)a3
{
  v4 = [a3 movementInfo];
  v5 = [v4 _isInitialMovement];

  if (v5)
  {
    return 0;
  }

  return [(_UIFocusSpeedBumpRegion *)self speedBumpEdges];
}

@end