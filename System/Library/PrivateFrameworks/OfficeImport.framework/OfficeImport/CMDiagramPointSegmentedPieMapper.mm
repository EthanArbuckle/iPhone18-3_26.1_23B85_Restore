@interface CMDiagramPointSegmentedPieMapper
- (id)_arrowFillWithState:(id)state;
- (void)mapAt:(id)at withState:(id)state;
@end

@implementation CMDiagramPointSegmentedPieMapper

- (id)_arrowFillWithState:(id)state
{
  stateCopy = state;
  fill = [(CMDiagramPointMapper *)self fill];
  v6 = [CMColorProperty nsColorFromOADFill:fill state:stateCopy];

  [v6 redComponent];
  v8 = v7 * 1.2;
  if (v8 <= 1.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1.0;
  }

  [v6 greenComponent];
  v11 = v10 * 1.2;
  if (v11 <= 1.0)
  {
    v12 = v11;
  }

  else
  {
    v12 = 1.0;
  }

  [v6 blueComponent];
  v14 = v13;
  v15 = [OADRgbColor alloc];
  v16 = v14 * 1.2;
  v17 = 1.0;
  if (v14 * 1.2 <= 1.0)
  {
    v18 = v14 * 1.2;
  }

  else
  {
    v18 = 1.0;
  }

  *&v16 = v9;
  *&v17 = v12;
  *&v18 = v18;
  v19 = [(OADRgbColor *)v15 initWithRed:v16 green:v17 blue:v18];
  v20 = objc_alloc_init(OADSolidFill);
  [(OADSolidFill *)v20 setColor:v19];

  return v20;
}

- (void)mapAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  transformPresentationName = [(CMDiagramPointSegmentedPieMapper *)self transformPresentationName];
  v45 = transformPresentationName;
  if (transformPresentationName)
  {
    v7 = [(CMDiagramPointMapper *)self transformForPresentationWithName:transformPresentationName];
    v9 = v7;
    if (self->mDrawArrows || !self->mSegmentIndex)
    {
      v52 = 0u;
      *v53 = 0u;
      v51 = 0u;
      if (!v7 || ([v7 transformStruct], v8 = v53[0], v53[0] == 0.0) && (v8 = v53[1], v53[1] == 0.0))
      {
        [(OADOrientedBounds *)self->super.mOrientedBounds bounds];
        x = v54.origin.x;
        y = v54.origin.y;
        width = v54.size.width;
        height = v54.size.height;
        v14 = CGRectGetWidth(v54);
        v55.origin.x = x;
        v55.origin.y = y;
        v55.size.width = width;
        v55.size.height = height;
        v15 = (v14 + CGRectGetHeight(v55)) * 0.03;
        v16 = __sincos_stret((self->mSegmentIndex + 0.5 + self->mSegmentIndex + 0.5) * -3.14159265 / self->mSegmentCount + 1.57079633);
        v53[0] = v15 * v16.__cosval;
        v53[1] = -(v15 * v16.__sinval);
        v50[0] = v51;
        v50[1] = v52;
        v50[2] = *v53;
        [v9 setTransformStruct:v50];
      }
    }

    v48 = [CMShapeUtils transformedBoundsWithBounds:self->super.mOrientedBounds transform:v9, v8];
  }

  else
  {
    v48 = self->super.mOrientedBounds;
  }

  [(CMDiagramPointMapper *)self applyDiagramStyleToShapeProperties];
  fill = [(CMDiagramPointMapper *)self fill];
  stroke = [(CMDiagramPointMapper *)self stroke];
  v18 = MEMORY[0x277CBEAC0];
  mStartAngle = self->mStartAngle;
  *&mStartAngle = mStartAngle;
  v43 = stroke;
  v42 = [MEMORY[0x277CCABB0] numberWithFloat:mStartAngle];
  v20 = [MEMORY[0x277CCABB0] numberWithInt:0];
  mStopAngle = self->mStopAngle;
  *&mStopAngle = mStopAngle;
  v22 = [MEMORY[0x277CCABB0] numberWithFloat:mStopAngle];
  v23 = [MEMORY[0x277CCABB0] numberWithInt:1];
  v24 = [v18 dictionaryWithObjectsAndKeys:{v42, v20, v22, v23, 0}];
  v25 = stateCopy;
  [CMShapeRenderer renderCanonicalShape:250 fill:fill stroke:v43 adjustValues:v24 orientedBounds:v48 state:stateCopy drawingContext:self->super.mDrawingContext];

  if (self->mDrawArrows)
  {
    v26 = [(CMDiagramPointSegmentedPieMapper *)self _arrowFillWithState:stateCopy];
    v27 = MEMORY[0x277CBEAC0];
    v28 = self->mStartAngle;
    *&v28 = v28;
    v29 = [MEMORY[0x277CCABB0] numberWithFloat:v28];
    v30 = [MEMORY[0x277CCABB0] numberWithInt:0];
    v31 = self->mStopAngle;
    *&v31 = v31;
    v32 = [MEMORY[0x277CCABB0] numberWithFloat:v31];
    v33 = [MEMORY[0x277CCABB0] numberWithInt:1];
    v34 = [v27 dictionaryWithObjectsAndKeys:{v29, v30, v32, v33, 0}];
    [CMShapeRenderer renderCanonicalShape:251 fill:v26 stroke:0 adjustValues:v34 orientedBounds:v48 state:stateCopy drawingContext:self->super.mDrawingContext];

    v25 = stateCopy;
  }

  [(OADOrientedBounds *)v48 bounds];
  v35 = v56.origin.x;
  v36 = v56.origin.y;
  v37 = CGRectGetWidth(v56);
  v38 = __sincos_stret((self->mStartAngle + self->mStopAngle) * 0.5);
  [(CMDrawingContext *)self->super.mDrawingContext transformRectToGroup:v35 + v37 * 0.5 + v37 / 3.0 * v38.__cosval - v37 / 6.0, v36 + v37 * 0.5 - v37 / 3.0 * v38.__sinval - v37 / 6.0, v37 / 3.0, v37 / 3.0];
  v39 = [OADOrientedBounds orientedBoundsWithBounds:?];
  v40 = [OIXMLElement elementWithType:3];
  v41 = objc_alloc_init(CMDrawableStyle);
  [v39 bounds];
  [(CMDrawableStyle *)v41 addPositionProperties:?];
  [atCopy addChild:v40];
  v49.receiver = self;
  v49.super_class = CMDiagramPointSegmentedPieMapper;
  [(CMMapper *)&v49 addStyleUsingGlobalCacheTo:v40 style:v41];
  [(CMDiagramPointMapper *)self mapTextAt:v40 withBounds:v39 isCentered:1 includeChildren:1 withState:v25];
}

@end