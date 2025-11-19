@interface CMDiagramPointTransitionMapper
- (CMDiagramPointTransitionMapper)initWithPoint:(id)a3 drawingContext:(id)a4 orientedBounds:(id)a5 shapeType:(int)a6 adjustValues:(id)a7 parent:(id)a8;
- (void)mapAt:(id)a3 withState:(id)a4;
@end

@implementation CMDiagramPointTransitionMapper

- (CMDiagramPointTransitionMapper)initWithPoint:(id)a3 drawingContext:(id)a4 orientedBounds:(id)a5 shapeType:(int)a6 adjustValues:(id)a7 parent:(id)a8
{
  v15 = a7;
  v19.receiver = self;
  v19.super_class = CMDiagramPointTransitionMapper;
  v16 = [(CMDiagramPointMapper *)&v19 initWithPoint:a3 drawingContext:a4 orientedBounds:a5 parent:a8];
  v17 = v16;
  if (v16)
  {
    v16->mShapeType = a6;
    objc_storeStrong(&v16->mAdjustValues, a7);
  }

  return v17;
}

- (void)mapAt:(id)a3 withState:(id)a4
{
  v9 = a4;
  v5 = [(CMDiagramPointMapper *)self presentationWithName:@"sibTrans"];

  if (v5)
  {
    [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
    mShapeType = self->mShapeType;
    v7 = [(CMDiagramPointMapper *)self fill];
    v8 = [(CMDiagramPointMapper *)self stroke];
    [CMShapeRenderer renderCanonicalShape:mShapeType fill:v7 stroke:v8 adjustValues:self->mAdjustValues orientedBounds:self->super.mOrientedBounds state:v9 drawingContext:self->super.mDrawingContext];
  }
}

@end