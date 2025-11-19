@interface _UIFocusRegion
- (BOOL)isEqual:(id)a3;
- (CGRect)regionFrame;
- (_UIFocusRegion)initWithFrame:(CGRect)a3 coordinateSpace:(id)a4;
- (id)_descriptionBuilder;
- (id)_focusRegionWithAdjustedFrame:(CGRect)a3 coordinateSpace:(id)a4;
- (id)description;
- (unint64_t)_effectiveBoundariesBlockingFocusMovementRequest:(id)a3;
- (unint64_t)_effectiveFocusableBoundariesForHeading:(unint64_t)a3;
- (unint64_t)hash;
@end

@implementation _UIFocusRegion

- (_UIFocusRegion)initWithFrame:(CGRect)a3 coordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v11 = a4;
  if (!v11)
  {
    v15 = [MEMORY[0x277CCA890] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"_UIFocusRegion.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"coordinateSpace"}];
  }

  v16.receiver = self;
  v16.super_class = _UIFocusRegion;
  v12 = [(_UIFocusRegion *)&v16 init];
  v13 = v12;
  if (v12)
  {
    v12->_regionFrame.origin.x = x;
    v12->_regionFrame.origin.y = y;
    v12->_regionFrame.size.width = width;
    v12->_regionFrame.size.height = height;
    objc_storeStrong(&v12->_regionCoordinateSpace, a4);
  }

  return v13;
}

- (id)_focusRegionWithAdjustedFrame:(CGRect)a3 coordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  if (CGRectIsEmpty(v16))
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UIFocusRegion.m" lineNumber:223 description:{@"Invalid parameter not satisfying: %@", @"!CGRectIsEmpty(frame)"}];

    if (v10)
    {
      goto LABEL_3;
    }
  }

  else if (v10)
  {
    goto LABEL_3;
  }

  v14 = [MEMORY[0x277CCA890] currentHandler];
  [v14 handleFailureInMethod:a2 object:self file:@"_UIFocusRegion.m" lineNumber:224 description:{@"Invalid parameter not satisfying: %@", @"coordinateSpace"}];

LABEL_3:
  v11 = [objc_alloc(objc_opt_class()) initWithFrame:v10 coordinateSpace:{x, y, width, height}];

  return v11;
}

- (id)_descriptionBuilder
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  [(_UIFocusRegion *)self regionFrame];
  v8 = _UIFocusStringFromCGRect(v4, v5, v6, v7);
  v9 = [v3 appendObject:v8 withName:@"frame"];

  v10 = [(_UIFocusRegion *)self regionCoordinateSpace];

  if (v10)
  {
    v11 = [(_UIFocusRegion *)self regionCoordinateSpace];
    if (v11)
    {
      v12 = MEMORY[0x277CCACA8];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v12 stringWithFormat:@"<%@: %p>", v14, v11];
    }

    else
    {
      v15 = @"(nil)";
    }

    v17 = [v3 appendObject:v15 withName:@"coordinateSpace"];
  }

  else
  {
    v16 = [v3 appendObject:@"global" withName:@"coordinateSpace"];
  }

  return v3;
}

- (id)description
{
  v2 = [(_UIFocusRegion *)self _descriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    if ([(_UIFocusRegion *)self isMemberOfClass:objc_opt_class()])
    {
      v5 = v4;
      regionCoordinateSpace = v5->_regionCoordinateSpace;
      v7 = self->_regionCoordinateSpace;
      v8 = regionCoordinateSpace;
      v9 = v8;
      if (v7 == v8)
      {
      }

      else
      {
        if (!v7 || !v8)
        {

LABEL_13:
          v11 = 0;
          goto LABEL_14;
        }

        v10 = [(UICoordinateSpace *)v7 isEqual:v8];

        if (!v10)
        {
          goto LABEL_13;
        }
      }

      v11 = CGRectEqualToRect(self->_regionFrame, v5->_regionFrame);
LABEL_14:

      goto LABEL_15;
    }

    v11 = 0;
  }

LABEL_15:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(UICoordinateSpace *)self->_regionCoordinateSpace hash];
  v4 = vorrq_s8(vandq_s8(vcvtq_u64_f64(self->_regionFrame.origin), xmmword_24B8B9E30), vandq_s8(vcvtq_u64_f64(self->_regionFrame.size), xmmword_24B8B9E20));
  return *&vorr_s8(*v4.i8, *&vextq_s8(v4, v4, 8uLL)) ^ v3;
}

- (unint64_t)_effectiveFocusableBoundariesForHeading:(unint64_t)a3
{
  v3 = a3;
  v4 = [(_UIFocusRegion *)self _focusableBoundaries];

  return _UIEffectiveFocusRegionBoundariesForHeading(v4, v3);
}

- (unint64_t)_effectiveBoundariesBlockingFocusMovementRequest:(id)a3
{
  v4 = a3;
  v5 = [(_UIFocusRegion *)self _boundariesBlockingFocusMovementRequest:v4];
  v6 = [v4 movementInfo];

  v7 = _UIEffectiveFocusRegionBoundariesForHeading(v5, [v6 heading]);
  return v7;
}

- (CGRect)regionFrame
{
  x = self->_regionFrame.origin.x;
  y = self->_regionFrame.origin.y;
  width = self->_regionFrame.size.width;
  height = self->_regionFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end