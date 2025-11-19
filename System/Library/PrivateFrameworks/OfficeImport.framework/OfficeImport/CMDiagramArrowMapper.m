@interface CMDiagramArrowMapper
+ (void)initialize;
- (CGRect)circumscribedBounds;
- (CGSize)sizeForNode:(id)a3 atIndex:(unint64_t)a4;
- (CGSize)textSizeForShapeSize:(CGSize)a3;
- (CMDiagramArrowMapper)initWithOddDiagram:(id)a3 drawingContext:(id)a4 orientedBounds:(id)a5 identifier:(id)a6 parent:(id)a7;
- (void)mapChildrenAt:(id)a3 withState:(id)a4;
@end

@implementation CMDiagramArrowMapper

+ (void)initialize
{
  _MergedGlobals_25 = 0x3F8000003F000000;
  *&dword_27FC698D0 = 0x3EB333333F800000;
  qword_27FC698D8 = 0x3D4CCCCD3F266666;
  *&dword_27FC698E0 = 0x3F6666663F333333;
}

- (CGRect)circumscribedBounds
{
  mChildCount = self->super.mChildCount;
  v4 = 0.0;
  if (mChildCount == 1)
  {
    v5 = 1.0;
    v7 = 0.0;
    v6 = 1.0;
  }

  else if (mChildCount == 2)
  {
    v5 = (*(&qword_27FC698D8 + 1) + (*&dword_27FC698D0 * 2.0));
    v6 = *(&_MergedGlobals_25 + 1);
    v7 = 0.0;
  }

  else
  {
    v8.origin.x = ODIRegularPolygonBoundsMapper(mChildCount, *&self->mIsVertical, -90.0);
    *&v4 = CGRectInset(v8, (*&dword_27FC698D0 * -0.5), (*&dword_27FC698D0 * -0.5));
  }

  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v7;
  result.origin.x = v4;
  return result;
}

- (CMDiagramArrowMapper)initWithOddDiagram:(id)a3 drawingContext:(id)a4 orientedBounds:(id)a5 identifier:(id)a6 parent:(id)a7
{
  v12 = a6;
  v24.receiver = self;
  v24.super_class = CMDiagramArrowMapper;
  v13 = [(CMDiagramShapeMapper *)&v24 initWithOddDiagram:a3 drawingContext:a4 orientedBounds:a5 identifier:v12 parent:a7];
  v14 = v13;
  if (v13)
  {
    v13->super.mDefaultFontSize = 65.0;
    v13->super.mMaxMappableTreeDepth = 0;
    mChildCount = v13->super.mChildCount;
    *(&v13->super.mDefaultScale + 4) = mChildCount == 1;
    v16 = *&dword_27FC698E4;
    v17 = [v12 isEqualToString:@"arrow5"];
    v18 = tan(v16 * 3.14159265 / mChildCount);
    v19 = v18 + v18;
    if (v17)
    {
      v20 = 0;
      v21 = (*(&_MergedGlobals_25 + 1) / v19) - *&dword_27FC698D4;
    }

    else
    {
      v22 = *&_MergedGlobals_25 / v19;
      v21 = (*(&_MergedGlobals_25 + 1) / v19) - *&qword_27FC698D8;
      if (v22 > v21)
      {
        v21 = v22;
      }

      v20 = 1;
    }

    *(&v14->super.mDefaultScale + 5) = v20;
    *&v14->mIsVertical = v21 + (*&dword_27FC698D0 * 0.5);
  }

  return v14;
}

- (void)mapChildrenAt:(id)a3 withState:(id)a4
{
  v51 = a3;
  v50 = a4;
  v6 = [MEMORY[0x277CCA878] transform];
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  v8 = v7;
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  [v6 translateXBy:v8 yBy:?];
  [(CMDrawingContext *)self->super.super.mDrawingContext addTransform:v6];
  [(CMDiagramShapeMapper *)self setDefaultFonSize];
  mChildCount = self->super.mChildCount;
  v48 = v6;
  if (mChildCount == 2)
  {
    v16 = *&dword_27FC698D0;
    [(CMDiagramArrowMapper *)self circumscribedBounds];
    Width = CGRectGetWidth(v53);
    v18 = *(&qword_27FC698D8 + 1);
    [(CMDiagramArrowMapper *)self circumscribedBounds];
    v19 = CGRectGetWidth(v54);
    v20 = *(&_MergedGlobals_25 + 1);
    [(CMDiagramArrowMapper *)self circumscribedBounds];
    Height = CGRectGetHeight(v55);
    v22 = 0;
    v23 = v16 / Width;
    v24 = v18 / v19;
    *&Height = v20 / Height;
    v25 = v23 + v24;
    v26 = v23;
    v27 = 1;
    v28 = *&Height;
    do
    {
      v29 = v27;
      v30 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
      v31 = [v30 children];
      v32 = [v31 objectAtIndex:v22];

      LODWORD(v31) = *(&self->super.mDefaultScale + 5);
      v33 = [CMShapeUtils internalBoundsWithBounds:self->super.mDiagramShapeBounds scaleBounds:(v25 * v22), 0.0, v26, v28];
      v34 = v33;
      v35 = 180 * v22 - 90;
      *&v36 = v35;
      if (!v31)
      {
        *&v36 = -v35;
      }

      [v33 setRotation:v36];
      v37 = [[CMDiagramPointArrowMapper alloc] initWithPoint:v32 drawingContext:self->super.super.mDrawingContext orientedBounds:v34 parent:self];
      [(CMDiagramPointArrowMapper *)v37 mapAt:v51 withState:v50];

      v27 = 0;
      v22 = 1;
    }

    while ((v29 & 1) != 0);
  }

  else if (mChildCount == 1)
  {
    v10 = [CMShapeUtils relatvieBoundsWithAbsoluteInnerBounds:self->super.mDiagramShapeBounds parentBounds:self->super.mDiagramShapeBounds];
    [v10 setRotation:0.0];
    v11 = [CMDiagramPointArrowMapper alloc];
    v12 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
    v13 = [v12 children];
    v14 = [v13 objectAtIndex:0];
    v15 = [(CMDiagramPointArrowMapper *)v11 initWithPoint:v14 drawingContext:self->super.super.mDrawingContext orientedBounds:v10 parent:self];

    [(CMDiagramShapeMapper *)self setDefaultFonSize];
    [(CMDiagramPointArrowMapper *)v15 mapAt:v51 withState:v50];
  }

  else if (mChildCount)
  {
    v38 = 0;
    v49 = mChildCount;
    do
    {
      v39 = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
      v40 = [v39 children];
      v41 = [v40 objectAtIndex:v38];

      if (mChildCount == 2)
      {
        v42 = v38 * 360.0 / v49;
        v43 = v42 + -90.0;
      }

      else
      {
        v43 = v38 * 360.0 / v49;
      }

      cos((v43 + -90.0) * 3.14159265 / 180.0);
      [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
      CGRectGetWidth(v56);
      sin((v43 + -90.0) * 3.14159265 / 180.0);
      [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
      CGRectGetHeight(v57);
      TSURectWithOriginAndSize(v44);
      v45 = [OADOrientedBounds orientedBoundsWithBounds:"orientedBoundsWithBounds:rotation:flipX:flipY:" rotation:0 flipX:0 flipY:?];
      v46 = [[CMDiagramPointArrowMapper alloc] initWithPoint:v41 drawingContext:self->super.super.mDrawingContext orientedBounds:v45 parent:self];
      [(CMDiagramPointArrowMapper *)v46 mapAt:v51 withState:v50];

      ++v38;
    }

    while (mChildCount != v38);
  }

  v47 = v48;
  [(CMDrawingContext *)self->super.super.mDrawingContext restoreLastTransform];
}

- (CGSize)sizeForNode:(id)a3 atIndex:(unint64_t)a4
{
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds:a3];
  Width = CGRectGetWidth(v13);
  [(CMDiagramArrowMapper *)self circumscribedBounds];
  v6 = Width / CGRectGetWidth(v14);
  v7 = *&dword_27FC698E0;
  if (*(&self->super.mDefaultScale + 4))
  {
    v8 = *&dword_27FC698E0;
  }

  else
  {
    v8 = *&_MergedGlobals_25;
  }

  v9 = v8 * v6;
  if (*(&self->super.mDefaultScale + 4))
  {
    v7 = *&_MergedGlobals_25;
  }

  v10 = (v7 * v6);
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (CGSize)textSizeForShapeSize:(CGSize)a3
{
  v3 = *&dword_27FC698E0;
  if (*(&self->super.mDefaultScale + 4))
  {
    v4 = *&_MergedGlobals_25;
  }

  else
  {
    v4 = *&dword_27FC698E0;
  }

  if (!*(&self->super.mDefaultScale + 4))
  {
    v3 = *&_MergedGlobals_25;
  }

  v5 = *&dword_27FC698D0;
  if (*(&self->super.mDefaultScale + 4))
  {
    v6 = *(&_MergedGlobals_25 + 1);
  }

  else
  {
    v6 = *&dword_27FC698D0;
  }

  if (!*(&self->super.mDefaultScale + 4))
  {
    v5 = *(&_MergedGlobals_25 + 1);
  }

  v7 = a3.width * v4 / v6;
  v8 = a3.height * v3 / v5;
  v9 = v7;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

@end