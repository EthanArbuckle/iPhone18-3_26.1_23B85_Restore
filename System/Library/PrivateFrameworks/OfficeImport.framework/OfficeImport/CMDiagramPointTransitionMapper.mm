@interface CMDiagramPointTransitionMapper
- (CMDiagramPointTransitionMapper)initWithPoint:(id)point drawingContext:(id)context orientedBounds:(id)bounds shapeType:(int)type adjustValues:(id)values parent:(id)parent;
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation CMDiagramPointTransitionMapper

- (CMDiagramPointTransitionMapper)initWithPoint:(id)point drawingContext:(id)context orientedBounds:(id)bounds shapeType:(int)type adjustValues:(id)values parent:(id)parent
{
  valuesCopy = values;
  v19.receiver = self;
  v19.super_class = CMDiagramPointTransitionMapper;
  v16 = [(CMDiagramPointMapper *)&v19 initWithPoint:point drawingContext:context orientedBounds:bounds parent:parent];
  v17 = v16;
  if (v16)
  {
    v16->mShapeType = type;
    objc_storeStrong(&v16->mAdjustValues, values);
  }

  return v17;
}

- (void)mapAt:(id)at withState:(id)state
{
  stateCopy = state;
  v5 = [(CMDiagramPointMapper *)self presentationWithName:@"sibTrans"];

  if (v5)
  {
    [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
    mShapeType = self->mShapeType;
    fill = [(CMDiagramPointMapper *)self fill];
    stroke = [(CMDiagramPointMapper *)self stroke];
    [CMShapeRenderer renderCanonicalShape:mShapeType fill:fill stroke:stroke adjustValues:self->mAdjustValues orientedBounds:self->super.mOrientedBounds state:stateCopy drawingContext:self->super.mDrawingContext];
  }
}

@end