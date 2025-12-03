@interface CMDiagramShapeMatrixMapper
- (CGRect)circumscribedBounds;
- (CGSize)gapSize;
- (CGSize)sizeForNode:(id)node atIndex:(unint64_t)index;
- (CMDiagramShapeMatrixMapper)initWithOddDiagram:(id)diagram drawingContext:(id)context orientedBounds:(id)bounds identifier:(id)identifier parent:(id)parent;
- (double)gapRatio;
- (unint64_t)columnCount;
- (void)mapChildrenAt:(id)at withState:(id)state;
- (void)setColumnsAndRowsCount;
@end

@implementation CMDiagramShapeMatrixMapper

- (void)setColumnsAndRowsCount
{
  if (self->mIsHorizontal)
  {
    columnCount = [(CMDiagramShapeMatrixMapper *)self columnCount];
    self->mColumnCount = columnCount;
    if (columnCount)
    {
      v4 = (columnCount + self->super.mChildCount - 1) / columnCount;
    }

    else
    {
      v4 = 0;
    }

    self->mRowCount = v4;
  }
}

- (unint64_t)columnCount
{
  mChildCount = self->super.mChildCount;
  if (!self->mIsLinear)
  {
    [(CMDiagramShapeMatrixMapper *)self circumscribedBounds];
    v5 = v4;
    v7 = v6;
    [(OADOrientedBounds *)self->super.super.super.mOrientedBounds bounds];
    x = v26.origin.x;
    y = v26.origin.y;
    width = v26.size.width;
    height = v26.size.height;
    v12 = CGRectGetWidth(v26);
    v27.origin.x = x;
    v27.origin.y = y;
    v27.size.width = width;
    v27.size.height = height;
    v13 = CGRectGetHeight(v27);
    self->mRectWidth = 0.0;
    if (mChildCount)
    {
      v14 = 0;
      v15 = v13;
      if ((mChildCount + 1) > 2)
      {
        v17 = (mChildCount + 1);
      }

      else
      {
        v17 = 2;
      }

      v18 = 0.0;
      v19 = 1;
      v16 = v12;
      v20 = v16 / v15;
      do
      {
        v21 = (v19 - 1) * 0.100000001;
        v22 = v21 + v19 * v5;
        v23 = ((v19 - 1 + mChildCount) / v19 - 1) * 0.100000001 + ((v19 - 1 + mChildCount) / v19) * v7;
        v24 = fminf((v22 / v23) / v20, 1.0) / (v21 / v5 + v19);
        if (v18 * 0.999 < v24)
        {
          self->mRectWidth = v24;
          v18 = v24;
          v14 = v19;
        }

        ++v19;
      }

      while (v17 != v19);
      return v14;
    }

    else
    {
      return 0;
    }
  }

  return mChildCount;
}

- (CGRect)circumscribedBounds
{
  v2 = 0.600000024;
  v3 = 0.0;
  v4 = 0.0;
  v5 = 1.0;
  result.size.height = v2;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGSize)gapSize
{
  [(CMDiagramShapeMatrixMapper *)self gapRatio];
  v4 = v3;
  [(CMDiagramShapeMatrixMapper *)self circumscribedBounds];
  v6 = v4 / v5;
  [(CMDiagramShapeMatrixMapper *)self gapRatio];
  v8 = v7;
  [(CMDiagramShapeMatrixMapper *)self circumscribedBounds];
  v10 = v8 / v9;
  v11 = v6;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

- (double)gapRatio
{
  result = 0.100000001;
  if (self->mHasArrows)
  {
    return 0.5;
  }

  return result;
}

- (CMDiagramShapeMatrixMapper)initWithOddDiagram:(id)diagram drawingContext:(id)context orientedBounds:(id)bounds identifier:(id)identifier parent:(id)parent
{
  diagramCopy = diagram;
  contextCopy = context;
  boundsCopy = bounds;
  identifierCopy = identifier;
  parentCopy = parent;
  v20.receiver = self;
  v20.super_class = CMDiagramShapeMatrixMapper;
  v17 = [(CMDiagramShapeMapper *)&v20 initWithOddDiagram:diagramCopy drawingContext:contextCopy orientedBounds:boundsCopy identifier:identifierCopy parent:parentCopy];
  v18 = v17;
  if (v17)
  {
    v17->mColumnCount = 0;
    v17->mRowCount = 0;
    v17->mIsSnake = 0;
    v17->mHasArrows = 0;
    v17->mIsHorizontal = 1;
    v17->mIsLinear = 0;
    v17->mRectWidth = 1.0;
    v17->mRectHeight = 1.0;
    if ([identifierCopy isEqualToString:@"default"])
    {
      v18->mIsSnake = 0;
      v18->mHasArrows = 0;
    }

    else if ([identifierCopy hasPrefix:@"bProcess"])
    {
      v18->mHasArrows = 1;
      v18->mIsSnake = 1;
    }

    else if ([identifierCopy isEqualToString:@"process1"])
    {
      v18->mHasArrows = 1;
      v18->mIsSnake = 0;
      v18->mIsLinear = 1;
    }

    [(CMDiagramShapeMatrixMapper *)v18 setColumnsAndRowsCount];
  }

  return v18;
}

- (CGSize)sizeForNode:(id)node atIndex:(unint64_t)index
{
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds:node];
  Width = CGRectGetWidth(v13);
  mRectWidth = self->mRectWidth;
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  Height = CGRectGetHeight(v14);
  v8 = Width * mRectWidth;
  v9 = Height * self->mRectHeight;
  v10 = v8;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)mapChildrenAt:(id)at withState:(id)state
{
  atCopy = at;
  stateCopy = state;
  transform = [MEMORY[0x277CCA878] transform];
  v7 = 208;
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  v9 = v8;
  [(OADOrientedBounds *)self->super.mDiagramShapeBounds bounds];
  [transform translateXBy:v9 yBy:?];
  [(CMDrawingContext *)self->super.super.mDrawingContext addTransform:transform];
  [(CMDiagramShapeMatrixMapper *)self circumscribedBounds];
  v11 = v10;
  [(CMDiagramShapeMatrixMapper *)self gapSize];
  v13 = v12;
  v15 = v14;
  mColumnCount = self->mColumnCount;
  [(CMDiagramShapeMatrixMapper *)self gapRatio];
  *&v17 = 1.0 / (v17 * (mColumnCount - 1) / v11 + mColumnCount);
  self->mRectWidth = *&v17;
  self->mRectHeight = *&v17;
  [(CMDiagramShapeMapper *)self setDefaultFonSize];
  v35 = transform;
  documentPoint = [(ODDDiagram *)self->super.super.mDiagram documentPoint];
  children = [documentPoint children];

  if (!LODWORD(self->super.mChildCount))
  {
LABEL_25:
    [(CMDrawingContext *)self->super.super.mDrawingContext restoreLastTransform];
    goto LABEL_27;
  }

  v20 = 0;
  v36 = children;
  while (1)
  {
    v21 = v20 / mColumnCount;
    v22 = v20 % mColumnCount;
    if (((v20 / mColumnCount) & 1) != 0 && self->mIsSnake)
    {
      v22 = mColumnCount + ~v22;
    }

    v23 = [children objectAtIndex:v20];
    v24 = v7;
    v25 = [CMShapeUtils internalBoundsWithBounds:*(&self->super.super.super.super.super.isa + v7) scaleBounds:(self->mRectWidth + v13 * self->mRectWidth) * v22, (self->mRectHeight + v15 * self->mRectHeight) * v21];
    v26 = [[CMDiagramPointMapper alloc] initWithPoint:v23 drawingContext:self->super.super.mDrawingContext orientedBounds:v25 parent:self];
    [(CMDiagramPointMapper *)v26 mapAt:atCopy withState:stateCopy];
    if (!self->mHasArrows)
    {
      goto LABEL_24;
    }

    siblingTransition = [v23 siblingTransition];
    if (!siblingTransition)
    {
      break;
    }

    v37 = siblingTransition;
    if (v21)
    {
      if (!v22)
      {
        v28 = !self->mIsSnake;
LABEL_15:
        v29 = 1;
        goto LABEL_16;
      }

      v28 = !self->mIsSnake;
    }

    else
    {
      v28 = 1;
      if (v22 == mColumnCount - 1)
      {
        goto LABEL_15;
      }
    }

    v29 = 0;
LABEL_16:
    TSURectWithOriginAndSize(siblingTransition);
    v30 = [CMShapeUtils internalBoundsWithBounds:*(&self->super.super.super.super.super.isa + v24) scaleBounds:?];
    v31 = v30;
    if (v29)
    {
      [v30 setFlipY:1];
    }

    if (!v28)
    {
      [v31 setFlipX:1];
    }

    v32 = [CMDiagramPointTransitionMapper alloc];
    if (v29)
    {
      v33 = 248;
    }

    else
    {
      v33 = 247;
    }

    v34 = [(CMDiagramPointTransitionMapper *)v32 initWithPoint:v37 drawingContext:self->super.super.mDrawingContext orientedBounds:v31 shapeType:v33 parent:self];
    [(CMDiagramPointTransitionMapper *)v34 mapAt:atCopy withState:stateCopy];

    children = v36;
LABEL_24:

    ++v20;
    v7 = v24;
    if (v20 >= LODWORD(self->super.mChildCount))
    {
      goto LABEL_25;
    }
  }

LABEL_27:
}

@end