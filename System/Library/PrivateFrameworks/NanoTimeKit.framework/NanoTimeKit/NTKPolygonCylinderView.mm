@interface NTKPolygonCylinderView
- (NTKPolygonCylinderView)init;
- (void)_informFaceViewsOfRotation;
- (void)_setRotationAngle:(double)angle;
- (void)_updateTransform;
- (void)layoutSubviews;
- (void)setNumberOfSides:(unint64_t)sides;
- (void)transitionToFraction:(double)fraction fromSideAtIndex:(unint64_t)index toSideAtIndex:(unint64_t)atIndex;
- (void)transitionToSideAtIndex:(unint64_t)index;
@end

@implementation NTKPolygonCylinderView

- (NTKPolygonCylinderView)init
{
  v15.receiver = self;
  v15.super_class = NTKPolygonCylinderView;
  v2 = [(NTKPolygonCylinderView *)&v15 init];
  v3 = v2;
  if (v2)
  {
    layer = [(NTKPolygonCylinderView *)v2 layer];
    v5 = *(MEMORY[0x277CD9DE8] + 48);
    v10[2] = *(MEMORY[0x277CD9DE8] + 32);
    v10[3] = v5;
    v10[4] = *(MEMORY[0x277CD9DE8] + 64);
    v6 = *(MEMORY[0x277CD9DE8] + 80);
    v7 = *(MEMORY[0x277CD9DE8] + 16);
    v10[0] = *MEMORY[0x277CD9DE8];
    v10[1] = v7;
    v11 = v6;
    v12 = 0xBF6B4E81B4E81B4FLL;
    v8 = *(MEMORY[0x277CD9DE8] + 112);
    v13 = *(MEMORY[0x277CD9DE8] + 96);
    v14 = v8;
    [layer setSublayerTransform:v10];

    [(NTKPolygonCylinderView *)v3 _setRotationAngle:0.0];
  }

  return v3;
}

- (void)setNumberOfSides:(unint64_t)sides
{
  if ([(NTKPolygonCylinderView *)self numberOfSides]!= sides)
  {
    [(_NTKPolygonCylinderTransformView *)self->_transformView removeFromSuperview];
    v5 = [[_NTKPolygonCylinderTransformView alloc] initWithNumberOfFaces:sides];
    transformView = self->_transformView;
    self->_transformView = v5;

    v7 = self->_transformView;

    [(NTKPolygonCylinderView *)self addSubview:v7];
  }
}

- (void)transitionToSideAtIndex:(unint64_t)index
{
  [(NTKPolygonCylinderView *)self _rotationAngleForFaceIndex:index];

  [(NTKPolygonCylinderView *)self _setRotationAngle:?];
}

- (void)transitionToFraction:(double)fraction fromSideAtIndex:(unint64_t)index toSideAtIndex:(unint64_t)atIndex
{
  numberOfSides = [(NTKPolygonCylinderView *)self numberOfSides];
  if (numberOfSides - 1 == index && atIndex == 0)
  {
    atIndex = numberOfSides;
  }

  if (atIndex == numberOfSides - 1)
  {
    v10 = numberOfSides;
  }

  else
  {
    v10 = 0;
  }

  if (index)
  {
    indexCopy = index;
  }

  else
  {
    indexCopy = v10;
  }

  [(NTKPolygonCylinderView *)self _rotationAngleForFaceIndex:indexCopy];
  [(NTKPolygonCylinderView *)self _rotationAngleForFaceIndex:atIndex];
  CLKInterpolateBetweenFloatsClipped();

  [(NTKPolygonCylinderView *)self _setRotationAngle:?];
}

- (void)layoutSubviews
{
  [(NTKPolygonCylinderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = [(_NTKPolygonCylinderTransformView *)self->_transformView setBounds:?];
  transformView = self->_transformView;
  MEMORY[0x2318D8E70](v11, v4, v6, v8, v10);
  [(_NTKPolygonCylinderTransformView *)transformView setCenter:?];

  [(NTKPolygonCylinderView *)self _updateTransform];
}

- (void)_setRotationAngle:(double)angle
{
    ;
  }

  angleCopy = angle;
  self->_rotationAngle = fmodf(angleCopy, 6.2832);
  [(NTKPolygonCylinderView *)self _updateTransform];

  [(NTKPolygonCylinderView *)self _informFaceViewsOfRotation];
}

- (void)_informFaceViewsOfRotation
{
  transformView = self->_transformView;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__NTKPolygonCylinderView__informFaceViewsOfRotation__block_invoke;
  v3[3] = &unk_2787869B0;
  v3[4] = self;
  [(_NTKPolygonCylinderTransformView *)transformView enumerateFaceViewsWithBlock:v3];
}

void __52__NTKPolygonCylinderView__informFaceViewsOfRotation__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = a3;
  if (objc_opt_respondsToSelector())
  {
    [*(a1 + 32) _rotationAngleForFaceIndex:a2];
    v6 = vabdd_f64(*(*(a1 + 32) + 416), v5);
    if (v6 > 3.14159265)
    {
      v6 = 6.28318531 - v6;
    }

    [v7 setRotationFromFront:v6];
  }
}

- (void)_updateTransform
{
  [(_NTKPolygonCylinderTransformView *)self->_transformView faceDistanceToCenter];
  memset(&v8, 0, sizeof(v8));
  CATransform3DMakeTranslation(&v8, 0.0, 0.0, -v3);
  rotationAngle = self->_rotationAngle;
  v6 = v8;
  CATransform3DRotate(&v7, &v6, rotationAngle, 1.0, 0.0, 0.0);
  v8 = v7;
  layer = [(_NTKPolygonCylinderTransformView *)self->_transformView layer];
  v7 = v8;
  [layer setTransform:&v7];
}

@end