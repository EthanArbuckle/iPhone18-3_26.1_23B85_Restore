@interface _UIFocusMapRect
- (BOOL)intersectsRect:(CGRect)a3;
- (BOOL)intersectsRegion:(id)a3 inSnapshot:(id)a4;
- (CGRect)frame;
- (NSString)description;
- (UICoordinateSpace)coordinateSpace;
- (_UIFocusMapRect)initWithFrame:(CGRect)a3 coordinateSpace:(id)a4;
- (id)intersectionWithRegion:(id)a3 inSnapshot:(id)a4;
@end

@implementation _UIFocusMapRect

- (_UIFocusMapRect)initWithFrame:(CGRect)a3 coordinateSpace:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = _UIFocusMapRect;
  v10 = [(_UIFocusMapRect *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_frame.origin.x = x;
    v10->_frame.origin.y = y;
    v10->_frame.size.width = width;
    v10->_frame.size.height = height;
    objc_storeWeak(&v10->_coordinateSpace, v9);
  }

  return v11;
}

- (BOOL)intersectsRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(_UIFocusMapRect *)self frame];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  if (CGRectIsNull(v32))
  {
    return 0;
  }

  v33.origin.x = v8;
  v33.origin.y = v10;
  v33.size.width = v12;
  v33.size.height = v14;
  if (CGRectIsNull(v33))
  {
    return 0;
  }

  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  v35 = CGRectStandardize(v34);
  v16 = v35.origin.x;
  v17 = v35.origin.y;
  v18 = v35.size.width;
  v19 = v35.size.height;
  v35.origin.x = v8;
  v35.origin.y = v10;
  v35.size.width = v12;
  v35.size.height = v14;
  v36 = CGRectStandardize(v35);
  v20 = v36.origin.x;
  v21 = v36.origin.y;
  v22 = v36.size.width;
  v23 = v36.size.height;
  v30 = v17;
  v31 = v16;
  v36.origin.x = v16;
  v36.origin.y = v17;
  v36.size.width = v18;
  v36.size.height = v19;
  v24 = CGRectGetMinX(v36) + 0.0001;
  v37.origin.x = v20;
  v37.origin.y = v21;
  v37.size.width = v22;
  v37.size.height = v23;
  if (v24 <= CGRectGetMaxX(v37))
  {
    v38.origin.y = v30;
    v38.origin.x = v16;
    v38.size.width = v18;
    v38.size.height = v19;
    v26 = CGRectGetMaxX(v38) + -0.0001;
    v39.origin.x = v20;
    v39.origin.y = v21;
    v39.size.width = v22;
    v39.size.height = v23;
    v25 = v26 >= CGRectGetMinX(v39);
  }

  else
  {
    v25 = 0;
  }

  v40.origin.x = v16;
  v40.origin.y = v30;
  v40.size.width = v18;
  v40.size.height = v19;
  v27 = CGRectGetMinY(v40) + 0.0001;
  v41.origin.x = v20;
  v41.origin.y = v21;
  v41.size.width = v22;
  v41.size.height = v23;
  if (v27 <= CGRectGetMaxY(v41))
  {
    v42.origin.x = v31;
    v42.origin.y = v30;
    v42.size.width = v18;
    v42.size.height = v19;
    v29 = CGRectGetMaxY(v42) + -0.0001;
    v43.origin.x = v20;
    v43.origin.y = v21;
    v43.size.width = v22;
    v43.size.height = v23;
    v28 = v29 >= CGRectGetMinY(v43);
  }

  else
  {
    v28 = 0;
  }

  return v25 && v28;
}

- (BOOL)intersectsRegion:(id)a3 inSnapshot:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [v8 coordinateSpace];
  v10 = [(_UIFocusMapRect *)self coordinateSpace];
  v11 = [v9 isEqual:v10];

  if ((v11 & 1) == 0)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"_UIFocusMapArea.m" lineNumber:39 description:@"Focus: unable to compare intersecting regions from a snapshot using a different coordinate space than the map area's coordinate space. This is a UIKit bug."];
  }

  [v8 snapshotFrameForRegion:v7];
  v12 = [(_UIFocusMapRect *)self intersectsRect:?];

  return v12;
}

- (id)intersectionWithRegion:(id)a3 inSnapshot:(id)a4
{
  v6 = a3;
  v7 = a4;
  [v7 snapshotFrameForRegion:v6];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(_UIFocusMapRect *)self frame];
  v33.origin.x = v16;
  v33.origin.y = v17;
  v33.size.width = v18;
  v33.size.height = v19;
  v28.origin.x = v9;
  v28.origin.y = v11;
  v28.size.width = v13;
  v28.size.height = v15;
  v29 = CGRectIntersection(v28, v33);
  x = v29.origin.x;
  y = v29.origin.y;
  width = v29.size.width;
  height = v29.size.height;
  v29.origin.x = v9;
  v29.origin.y = v11;
  v29.size.width = v13;
  v29.size.height = v15;
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  if (CGRectEqualToRect(v29, v34))
  {
    v24 = v6;
LABEL_3:
    v25 = v24;
    goto LABEL_8;
  }

  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  if (!CGRectIsNull(v30))
  {
    v31.origin.x = x;
    v31.origin.y = y;
    v31.size.width = width;
    v31.size.height = height;
    if (fabs(CGRectGetWidth(v31)) >= 0.0001)
    {
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      if (fabs(CGRectGetHeight(v32)) >= 0.0001)
      {
        v24 = [_UIFocusRegionEvaluator subregionFromRegion:v6 withSnapshotFrame:v7 inSnapshot:x, y, width, height];
        goto LABEL_3;
      }
    }
  }

  v25 = 0;
LABEL_8:

  return v25;
}

- (NSString)description
{
  v3 = [objc_alloc(MEMORY[0x277CF0C00]) initWithObject:self];
  v4 = _UIFocusStringFromCGRect(self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height);
  v5 = [v3 appendObject:v4 withName:@"frame"];

  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);
  v7 = [v3 appendObject:WeakRetained withName:@"coordinateSpace"];

  v8 = [v3 build];

  return v8;
}

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (UICoordinateSpace)coordinateSpace
{
  WeakRetained = objc_loadWeakRetained(&self->_coordinateSpace);

  return WeakRetained;
}

@end