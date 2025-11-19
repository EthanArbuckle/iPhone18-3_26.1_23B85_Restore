@interface CMDiagramShapeCycleMapper
- (CGRect)circumscribedBounds;
- (CGRect)nodeBoundsWithIndex:(unint64_t)a3;
- (CGSize)nodeSize;
- (CGSize)sizeForNode:(id)a3 atIndex:(unint64_t)a4;
- (CMDiagramShapeCycleMapper)initWithOddDiagram:(id)a3 drawingContext:(id)a4 orientedBounds:(id)a5 identifier:(id)a6 parent:(id)a7;
- (void)mapChildrenAt:(id)a3 withState:(id)a4;
- (void)mapTransitionArrowsAt:(id)a3 index:(unsigned int)a4 withState:(id)a5;
- (void)mapTransitionPointAt:(id)a3 index:(unsigned int)a4 withState:(id)a5;
@end

@implementation CMDiagramShapeCycleMapper

- (CGRect)circumscribedBounds
{
  v3 = ODIRegularPolygonBoundsMapper(self->super.mChildCount, 0.5, -90.0);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [(CMDiagramShapeCycleMapper *)self nodeSize];
  v11 = v10 * 0.5;
  v13 = v12 * 0.5;
  if (v11 <= v13)
  {
    v11 = v13;
  }

  v14 = v11;
  v15 = -v14;
  v16 = v3;
  v17 = v5;
  v18 = v7;
  v19 = v9;

  return CGRectInset(*&v16, v15, v15);
}

- (CGSize)nodeSize
{
  v2 = *&self->mCircularArrows;
  if (v2 > 7)
  {
    if (v2 != 8)
    {
      if (v2 != 9)
      {
        goto LABEL_10;
      }

      v4 = sin(3.14159265 / self->super.mChildCount) * 0.6;
      v6 = 0.5;
LABEL_9:
      v5 = v4 * v6;
      goto LABEL_11;
    }

LABEL_8:
    v4 = sin(3.14159265 / self->super.mChildCount) * 0.6;
    v6 = 0.699999988;
    goto LABEL_9;
  }

  if (v2 == 6)
  {
    goto LABEL_8;
  }

  if (v2 != 7)
  {
LABEL_10:
    v4 = *MEMORY[0x277CBF3A8];
    v5 = *(MEMORY[0x277CBF3A8] + 8);
    goto LABEL_11;
  }

  v3 = sin(2.19911482 / self->super.mChildCount);
  v4 = v3 * 0.5 + v3 * 0.5;
  v5 = v4;
LABEL_11:
  result.height = v5;
  result.width = v4;
  return result;
}

- (CMDiagramShapeCycleMapper)initWithOddDiagram:(id)a3 drawingContext:(id)a4 orientedBounds:(id)a5 identifier:(id)a6 parent:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v23.receiver = self;
  v23.super_class = CMDiagramShapeCycleMapper;
  v17 = [(CMDiagramShapeMapper *)&v23 initWithOddDiagram:v12 drawingContext:v13 orientedBounds:v14 identifier:v15 parent:v16];
  v18 = v17;
  if (v17)
  {
    LOBYTE(v17->mScale) = 0;
    if ([v15 isEqualToString:@"cycle1"])
    {
      LOBYTE(v18->mScale) = 0;
      *&v18->mCircularArrows = 6;
      v18->mDiagramType = 251;
    }

    if ([v15 isEqualToString:@"cycle2"])
    {
      LOBYTE(v18->mScale) = 0;
      v19 = 247;
      v20 = 7;
    }

    else if ([v15 isEqualToString:@"cycle5"])
    {
      v19 = 251;
      v20 = 8;
    }

    else
    {
      if (![v15 isEqualToString:@"cycle7"])
      {
LABEL_11:
        *(&v18->super.mDefaultScale + 1) = 1065353216;
        v21 = v18;
        goto LABEL_12;
      }

      v19 = 247;
      v20 = 9;
    }

    *&v18->mCircularArrows = v20;
    v18->mDiagramType = v19;
    goto LABEL_11;
  }

LABEL_12:

  return v18;
}

- (void)mapChildrenAt:(id)a3 withState:(id)a4
{
  v22 = a3;
  v6 = a4;
  v7 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  v21 = [v7 children];

  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  CGRectGetWidth(v24);
  [(CMDiagramShapeCycleMapper *)self circumscribedBounds];
  CGRectGetWidth(v25);
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  CGRectGetWidth(v26);
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  CGRectGetHeight(v27);
  v20 = [MEMORY[0x277CCA878] transform];
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  v9 = v8;
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  [v20 translateXBy:v9 yBy:?];
  [(CMDrawingContext *)self->super.super.mDrawingContext addTransform:v20];
  [(CMDiagramShapeMapper *)self setDefaultFonSize];
  if (self->super.mChildCount)
  {
    v10 = 0;
    while (1)
    {
      v11 = [v21 objectAtIndex:v10];
      [(CMDiagramShapeCycleMapper *)self nodeBoundsWithIndex:v10];
      [CMShapeUtils transformRect:"transformRect:scale:offsetX:offsetY:" scale:? offsetX:? offsetY:?];
      v16 = [[OADOrientedBounds alloc] initWithBounds:v12, v13, v14, v15];
      v17 = v16;
      v18 = *&self->mCircularArrows - 6;
      if (v18 >= 4)
      {
        break;
      }

      v19 = [objc_alloc(*off_2799CE0A0[v18]) initWithPoint:v11 drawingContext:self->super.super.mDrawingContext orientedBounds:v16 parent:self];
      [v19 mapAt:v22 withState:v6];
      [(CMDiagramShapeCycleMapper *)self mapTransitionPointAt:v22 index:v10 withState:v6];

      if (self->super.mChildCount <= ++v10)
      {
        goto LABEL_7;
      }
    }
  }

LABEL_7:
}

- (CGSize)sizeForNode:(id)a3 atIndex:(unint64_t)a4
{
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  Width = CGRectGetWidth(v20);
  [(CMDiagramShapeCycleMapper *)self circumscribedBounds];
  v7 = CGRectGetWidth(v21);
  [(CMDiagramShapeCycleMapper *)self nodeBoundsWithIndex:a4];
  x = v22.origin.x;
  y = v22.origin.y;
  v10 = v22.size.width;
  height = v22.size.height;
  v12 = CGRectGetWidth(v22);
  v23.origin.x = x;
  v23.origin.y = y;
  v23.size.width = v10;
  v23.size.height = height;
  v13 = CGRectGetHeight(v23);
  v14 = Width / v7;
  v15 = v14;
  v16 = v12 * v15 * 0.707106781;
  v17 = v13 * v15 * 0.707106781;
  v18 = v16;
  result.height = v17;
  result.width = v18;
  return result;
}

- (CGRect)nodeBoundsWithIndex:(unint64_t)a3
{
  v4 = (2 * a3) * 3.14159265 / self->super.mChildCount + -1.57079633;
  v5 = __sincosf_stret(v4);
  [(CMDiagramShapeCycleMapper *)self nodeSize];

  v7 = TSURectWithCenterAndSize((v5.__cosval * 0.5), (v5.__sinval * 0.5), v6);
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)mapTransitionPointAt:(id)a3 index:(unsigned int)a4 withState:(id)a5
{
  v6 = *&a4;
  v22 = a3;
  v8 = a5;
  v9 = *&self->mCircularArrows;
  if (v9 == 8 || v9 == 6)
  {
    [(CMDiagramShapeCycleMapper *)self mapTransitionArrowsAt:v22 index:v6 withState:v8];
  }

  else
  {
    v11 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
    v12 = [v11 children];
    v13 = [v12 objectAtIndex:v6];
    v14 = [v13 siblingTransition];

    [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
    [(CMDiagramShapeCycleMapper *)self circumscribedBounds];
    CGRectGetWidth(v25);
    mChildCount = self->super.mChildCount;
    sin(2.19911482 / mChildCount);
    v16 = (2 * v6) | 1;
    cos(3.14159265 / mChildCount);
    v17 = v16 * 3.14159265 / mChildCount + -1.57079633;
    cosf(v17);
    [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
    CGRectGetWidth(v26);
    v18 = v16 * 3.14159265 / mChildCount + -1.57079633;
    sinf(v18);
    [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
    CGRectGetHeight(v27);
    sin(3.14159265 / self->super.mChildCount);
    TSURectWithOriginAndSize(v19);
    v20 = [OADOrientedBounds orientedBoundsWithBounds:"orientedBoundsWithBounds:rotation:flipX:flipY:" rotation:0 flipX:0 flipY:?];
    v21 = [[CMDiagramPointTransitionMapper alloc] initWithPoint:v14 drawingContext:self->super.super.mDrawingContext orientedBounds:v20 shapeType:self->mDiagramType adjustValues:0 parent:self];
    [(CMDiagramPointTransitionMapper *)v21 mapAt:v22 withState:v8];
  }
}

- (void)mapTransitionArrowsAt:(id)a3 index:(unsigned int)a4 withState:(id)a5
{
  v56 = a3;
  v55 = a5;
  v8 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  v9 = [v8 children];
  v10 = [v9 objectAtIndex:a4];
  v11 = [v10 siblingTransition];

  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  Width = CGRectGetWidth(v58);
  [(CMDiagramShapeCycleMapper *)self circumscribedBounds];
  v13 = CGRectGetWidth(v59);
  mChildCount = self->super.mChildCount;
  [(CMDiagramShapeCycleMapper *)self nodeSize];
  v16 = v15;
  v17 = a4 * 360.0 / mChildCount + -90.0;
  *&v17 = v17;
  [CMShapeUtils intersectionAngleNextToAngle:1 isAfter:v17 nodeSize:v16, v18];
  v20 = v19;
  v21 = self->super.mChildCount;
  [(CMDiagramShapeCycleMapper *)self nodeSize];
  v23 = v22;
  v24 = (a4 + 1) * 360.0 / v21 + -90.0;
  *&v24 = v24;
  [CMShapeUtils intersectionAngleNextToAngle:0 isAfter:v24 nodeSize:v23, v25];
  v27 = Width / v13;
  if (v26 < v20)
  {
    v26 = v26 + 360.0;
  }

  v28 = v26 - v20;
  v29 = (v20 + v26) * 0.5;
  v30 = (v28 * 0.7) * 0.5;
  v31 = ((v29 - v30) + 180.0) * 3.14159265 / 180.0;
  v32 = ((v29 + v30) + 180.0) * 3.14159265 / 180.0;
  v33 = v32;
  v34 = 1.0;
  if (*&self->mCircularArrows != 8)
  {
    *&v32 = sinf((v33 - v31) * 0.5);
    v34 = (((*&v32 * 0.5) + (*&v32 * 0.5)) * v27) * 0.1;
  }

  v35 = MEMORY[0x277CBEAC0];
  *&v32 = v33;
  v36 = [MEMORY[0x277CCABB0] numberWithFloat:v32];
  v37 = [MEMORY[0x277CCABB0] numberWithInt:0];
  *&v38 = v31;
  v39 = [MEMORY[0x277CCABB0] numberWithFloat:v38];
  v40 = [MEMORY[0x277CCABB0] numberWithInt:1];
  *&v41 = v34;
  v42 = [MEMORY[0x277CCABB0] numberWithFloat:v41];
  v43 = [MEMORY[0x277CCABB0] numberWithInt:2];
  v44 = [v35 dictionaryWithObjectsAndKeys:{v36, v37, v39, v40, v42, v43, 0}];

  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  v46 = v45;
  v48 = v47;
  v49 = *MEMORY[0x277CBF348];
  v50 = *(MEMORY[0x277CBF348] + 8);
  [(CMDiagramShapeCycleMapper *)self nodeSize];
  *&v51 = v51 * v27 * 0.5 + (v34 * 0.5);
  v52 = *&v51;
  v60.origin.x = v49;
  v60.origin.y = v50;
  v60.size.width = v46;
  v60.size.height = v48;
  v61 = CGRectInset(v60, v52, v52);
  v53 = [OADOrientedBounds orientedBoundsWithBounds:v61.origin.x, v61.origin.y, v61.size.width, v61.size.height];
  v54 = [[CMDiagramPointTransitionMapper alloc] initWithPoint:v11 drawingContext:self->super.super.mDrawingContext orientedBounds:v53 shapeType:self->mDiagramType adjustValues:v44 parent:self];
  [(CMDiagramPointTransitionMapper *)v54 mapAt:v56 withState:v55];
}

@end