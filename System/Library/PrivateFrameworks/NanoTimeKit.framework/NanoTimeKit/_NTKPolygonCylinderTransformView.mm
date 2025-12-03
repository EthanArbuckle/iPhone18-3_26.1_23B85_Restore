@interface _NTKPolygonCylinderTransformView
- (CATransform3D)_transformForFaceIndex:(SEL)index;
- (_NTKPolygonCylinderTransformView)initWithNumberOfFaces:(unint64_t)faces;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)viewForFaceAtIndex:(unint64_t)index;
- (void)enumerateFaceViewsWithBlock:(id)block;
- (void)layoutSubviews;
- (void)setBounds:(CGRect)bounds;
- (void)setView:(id)view forFaceAtIndex:(unint64_t)index;
@end

@implementation _NTKPolygonCylinderTransformView

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  v10.receiver = self;
  v10.super_class = _NTKPolygonCylinderTransformView;
  v5 = [(_NTKPolygonCylinderTransformView *)&v10 hitTest:event withEvent:test.x, test.y];
  v6 = v5;
  if (v5 == self)
  {
    v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  v8 = v7;

  return v7;
}

- (_NTKPolygonCylinderTransformView)initWithNumberOfFaces:(unint64_t)faces
{
  v11.receiver = self;
  v11.super_class = _NTKPolygonCylinderTransformView;
  v4 = [(_NTKPolygonCylinderTransformView *)&v11 init];
  if (v4)
  {
    if (faces <= 1)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ cannot have fewer than 2 faces", objc_opt_class()}];
    }

    v4->_numberOfFaces = faces;
    v5 = 6.28318531 / faces;
    if (v5 <= 1.57079633)
    {
      numberOfVisibleFaces = v4->_numberOfVisibleFaces;
      v7 = 6.28318531 / faces;
      do
      {
        ++numberOfVisibleFaces;
        v7 = v5 + v7;
      }

      while (v7 <= 1.57079633);
      v4->_numberOfVisibleFaces = numberOfVisibleFaces;
      v5 = 6.28318531 / v4->_numberOfFaces;
    }

    v4->_exteriorAngle = v5;
    v4->_interiorAngle = 3.14159265 - v5;
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    faceViews = v4->_faceViews;
    v4->_faceViews = v8;
  }

  return v4;
}

- (void)setView:(id)view forFaceAtIndex:(unint64_t)index
{
  viewCopy = view;
  faceViews = self->_faceViews;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v8 = [(NSMutableDictionary *)faceViews objectForKey:v7];

  if (v8 != viewCopy)
  {
    [v8 removeFromSuperview];
    if (viewCopy)
    {
      layer = [viewCopy layer];
      [layer setDoubleSided:0];

      [(_NTKPolygonCylinderTransformView *)self addSubview:viewCopy];
      v10 = self->_faceViews;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
      [(NSMutableDictionary *)v10 setObject:viewCopy forKey:v11];
    }

    else
    {
      v12 = self->_faceViews;
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
      [(NSMutableDictionary *)v12 removeObjectForKey:v11];
    }
  }
}

- (id)viewForFaceAtIndex:(unint64_t)index
{
  faceViews = self->_faceViews;
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:index];
  v5 = [(NSMutableDictionary *)faceViews objectForKey:v4];

  return v5;
}

- (void)enumerateFaceViewsWithBlock:(id)block
{
  blockCopy = block;
  v10 = 0;
  if (self->_numberOfFaces)
  {
    v5 = 0;
    do
    {
      faceViews = self->_faceViews;
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v5];
      v8 = [(NSMutableDictionary *)faceViews objectForKey:v7];

      if (v8)
      {
        blockCopy[2](blockCopy, v5, v8, &v10);
      }

      v9 = v10;

      if (v9 == 1)
      {
        break;
      }

      ++v5;
    }

    while (v5 < self->_numberOfFaces);
  }
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  v6.receiver = self;
  v6.super_class = _NTKPolygonCylinderTransformView;
  [(_NTKPolygonCylinderTransformView *)&v6 setBounds:bounds.origin.x, bounds.origin.y, bounds.size.width];
  v5 = self->_interiorAngle * 0.5;
  self->_faceDistanceToCenter = height * 0.5 * tanf(v5);
}

- (void)layoutSubviews
{
  bounds = [(_NTKPolygonCylinderTransformView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = MEMORY[0x2318D8E70](bounds);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50___NTKPolygonCylinderTransformView_layoutSubviews__block_invoke;
  v14[3] = &unk_2787869D8;
  *&v14[5] = v12;
  v14[6] = v13;
  v14[7] = v5;
  v14[8] = v7;
  v14[9] = v9;
  v14[10] = v11;
  v14[4] = self;
  [(_NTKPolygonCylinderTransformView *)self enumerateFaceViewsWithBlock:v14];
}

- (CATransform3D)_transformForFaceIndex:(SEL)index
{
  *&retstr->m41 = 0u;
  *&retstr->m43 = 0u;
  *&retstr->m31 = 0u;
  *&retstr->m33 = 0u;
  *&retstr->m21 = 0u;
  *&retstr->m23 = 0u;
  *&retstr->m11 = 0u;
  *&retstr->m13 = 0u;
  CATransform3DMakeRotation(retstr, -(self->_exteriorAngle * a4), 1.0, 0.0, 0.0);
  faceDistanceToCenter = self->_faceDistanceToCenter;
  v7 = *&retstr->m33;
  *&v16.m31 = *&retstr->m31;
  *&v16.m33 = v7;
  v8 = *&retstr->m43;
  *&v16.m41 = *&retstr->m41;
  *&v16.m43 = v8;
  v9 = *&retstr->m13;
  *&v16.m11 = *&retstr->m11;
  *&v16.m13 = v9;
  v10 = *&retstr->m23;
  *&v16.m21 = *&retstr->m21;
  *&v16.m23 = v10;
  result = CATransform3DTranslate(&v17, &v16, 0.0, 0.0, faceDistanceToCenter);
  v12 = *&v17.m33;
  *&retstr->m31 = *&v17.m31;
  *&retstr->m33 = v12;
  v13 = *&v17.m43;
  *&retstr->m41 = *&v17.m41;
  *&retstr->m43 = v13;
  v14 = *&v17.m13;
  *&retstr->m11 = *&v17.m11;
  *&retstr->m13 = v14;
  v15 = *&v17.m23;
  *&retstr->m21 = *&v17.m21;
  *&retstr->m23 = v15;
  return result;
}

@end