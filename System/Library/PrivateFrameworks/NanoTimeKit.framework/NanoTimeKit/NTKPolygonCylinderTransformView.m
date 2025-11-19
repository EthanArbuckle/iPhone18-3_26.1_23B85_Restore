@interface NTKPolygonCylinderTransformView
@end

@implementation NTKPolygonCylinderTransformView

void __50___NTKPolygonCylinderTransformView_layoutSubviews__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = a3;
  [v7 setCenter:{v5, v6}];
  [v7 setBounds:{*(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)}];
  v8 = [v7 layer];

  v9 = *(a1 + 32);
  if (v9)
  {
    [v9 _transformForFaceIndex:a2];
  }

  else
  {
    memset(v10, 0, sizeof(v10));
  }

  [v8 setTransform:v10];
}

@end